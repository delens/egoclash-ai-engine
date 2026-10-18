// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title EgoClash ($EGOC) — Official ERC-20 Smart Contract (Base / Ethereum)
 * @notice 1,000,000,000 Fixed Supply • 0/0 Buy & Sell Tax • No Mint • No Blacklist
 * @dev Verifiable standard contract with immutable supply and renounceable ownership.
 */
contract EgoClashERC20 {
    string public constant name = "EgoClash";
    string public constant symbol = "EGOC";
    uint8 public constant decimals = 18;
    uint256 public constant totalSupply = 1_000_000_000 * 10 ** uint256(decimals);

    address public owner;
    bool public limitsInEffect = true;
    uint256 public constant maxWalletDuringLaunch = (totalSupply * 3) / 100; // Max 3% per wallet nei primi minuti anti-bot

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;
    mapping(address => bool) public isExemptFromLimit;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event OwnershipRenounced(address indexed previousOwner);
    event LaunchLimitsRemoved();

    modifier onlyOwner() {
        require(msg.sender == owner, "EGOC: Caller is not the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
        isExemptFromLimit[msg.sender] = true;
        isExemptFromLimit[address(this)] = true;

        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }

    function approve(address spender, uint256 amount) external returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transfer(address to, uint256 amount) external returns (bool) {
        return _transfer(msg.sender, to, amount);
    }

    function transferFrom(address from, address to, uint256 amount) external returns (bool) {
        uint256 currentAllowance = allowance[from][msg.sender];
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "EGO: Insufficient allowance");
            unchecked {
                allowance[from][msg.sender] = currentAllowance - amount;
            }
        }
        return _transfer(from, to, amount);
    }

    function _transfer(address from, address to, uint256 amount) internal returns (bool) {
        require(from != address(0) && to != address(0), "EGO: Zero address");
        uint256 fromBalance = balanceOf[from];
        require(fromBalance >= amount, "EGO: Transfer amount exceeds balance");

        if (limitsInEffect && !isExemptFromLimit[to]) {
            require(
                balanceOf[to] + amount <= maxWalletDuringLaunch,
                "EGO: Exceeds 3% anti-snipe max wallet during initial launch window"
            );
        }

        unchecked {
            balanceOf[from] = fromBalance - amount;
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);
        return true;
    }

    /**
     * @notice Esenta l'indirizzo della piscina Uniswap/Aerodrome dal limite del 3%
     */
    function setExempt(address account, bool exempt) external onlyOwner {
        isExemptFromLimit[account] = exempt;
    }

    /**
     * @notice Rimuove i limiti iniziali anti-bot e rinuncia per sempre alla proprietà (100% Trustless)
     */
    function removeLimitsAndRenounce() external onlyOwner {
        limitsInEffect = false;
        emit LaunchLimitsRemoved();

        address oldOwner = owner;
        owner = address(0);
        emit OwnershipRenounced(oldOwner);
    }
}
