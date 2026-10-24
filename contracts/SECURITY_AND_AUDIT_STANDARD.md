# 🛡️ EgoClash (`$EGOC`) — On-Chain Security & Zero-Privilege Architecture

## 1. Zero-Key & Air-Gapped Enclave Guarantee
This public repository contains **strictly protocol specifications, mathematical standards, TypeScript interface definitions, and public smart contract source code** for external verification.

- **Zero Private Keys / Zero RPC Credentials:** No wallet keys, seed phrases, signer daemons, or proprietary AI execution weights are stored or referenced in this repository.
- **Air-Gapped Read-Only Oracle:** The proprietary EgoClash Multi-Agent Enclave interacts with the blockchain **exclusively via read-only public market telemetry** (spot price and volume). The AI agents possess **zero signing authority** over any liquidity pool, treasury wallet, or token contract.

---

## 2. Smart Contract Invariants (`EgoClashERC20.sol` & Solana SPL)

| Security Vector | Standard / Configuration | Verification Status |
| :--- | :--- | :--- |
| **Total Supply** | `1,000,000,000 $EGOC` (Fixed) | Immutable |
| **Mint Authority (Solana SPL / ERC-20)** | Permanently Revoked (`0x0`) | Cannot mint new tokens |
| **Freeze / Blacklist Authority** | None (`Revoked`) | Zero honeypot / freeze vectors |
| **Buy / Sell Tax** | `0.0% / 0.0%` | Creator fees: pump.fun creator rewards are paid to the creator-rewards wallet; the protocol adds no extra fees |
| **Ownership** | Renounceable via `removeLimitsAndRenounce()` | Trustless |
