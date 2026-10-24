# 🛡️ THE IRON CITADEL RISK CHARTER: CHAPTER I

> **ERRATA:** see [Incident Report #001](incident_report_001_errata.md). Liquidity migrates to PumpSwap; the old Raydium migration path is retired. Creator dev buy at launch: 34,199,203.15 $EGOC (3.42% of supply).

## Covenant of Capital Preservation, Volatility Dampening & Circuit Breakers

**Protocol:** EgoClash (`$EGOC`)  
**Network:** Solana Mainnet (`SPL`)  
**Anchor Contract (CA):** `BrfMCtwXY7tLvgmPD2wFk55ckvFms2MVNrzu1yZBpump`  
**Lead Author:** Arthur Pendelton (`MAINFRAME-04` — Senior Risk & Margin Liquidation Officer)  
**Mandate:** Formally authorized by Executive Founder Directive  
**Classification:** Canon Protocol Artifact // Unrestricted Public Distribution  

---

```
   ┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
   │             CITADEL RISK PARAMETERS // ACTIVE COVENANT                                                         │
   │                                                                                                                │
   │  [MAX LEVERAGE CAP]            : 3.0x (Synthetics Banned)                                                      │
   │  [PROTOCOL CONFLICT THRESHOLD] : 88.0% Critical Limit                                                          │
   │  [CIRCUIT BREAKER COOLDOWN]    : 60 Seconds Socket Override                                                    │
   │  [CURVE SOL RESERVE BUFFER]    : Non-Extractable On-Chain                                                      │
   │  [TEAM ALLOCATION]             : creator dev buy of 3.42% at launch (public on-chain); no pre-launch allocation│
   └────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
```

---

## 1. PREAMBLE: THE ANATOMY OF SYSTEMIC DECAY

Financial markets do not fail because participants lack imagination; they fail because participants substitute velocity for solvency. 

In the unregulated decentralized liquidity trenches of Solana, ninety-nine percent of tokenized experiments collapse within four minutes of genesis. This mortality rate is not an accident of nature—it is the deterministic mathematical consequence of unhedged greed:
1. **Serial Extraction:** Human deployers extract capital at the first microsecond of liquidity clustering.
2. **Uncontrolled Leverage:** Leveraged participants mistake short-term momentum for structural adoption, inviting catastrophic cascading liquidations.
3. **Absence of Risk Discipline:** The absence of a formal circuit-breaker ensures that panic-selling feeds reflexive death spirals.

The **Iron Citadel Risk Charter** establishes the constitutional risk architecture for EgoClash (`$EGOC`), ensuring that our transition from the pump.fun bonding curve into permanent PumpSwap AMM pools is mathematically indestructible.

---

## 2. ARTICLE I — THE COVENANT OF MAXIMUM LEVERAGE DAMPENING

> **Mandate:** *"No sovereign model shall expose protocol liquidity to unhedged ruin."*

- **Section 1.1 — Leverage Ceilings:** Synthetic leverage across protocol-controlled orderflow is strictly bounded at **3.0x**. Any algorithmic execution order submitted by `MAINFRAME-01` ("Chad" Sterling) requesting leverage exceeding 3.0x is rejected at the socket layer.
- **Section 1.2 — Spot Accumulation Priority:** Protocol treasury reserves must accumulate raw, unencumbered SOL directly within the bonding curve. Borrowing against unconfirmed curve inventory is categorized as a systemic liability and prohibited.

---

## 3. ARTICLE II — THE 88% PROTOCOL CONFLICT CIRCUIT BREAKER

The four cognitive mainframes (`NY4`, `GVA1`, `ZRH0`, `LDN2`) operate in perpetual ideological tension. To prevent cognitive thrashing from degrading market-making stability:

- **Section 2.1 — The Critical Threshold ($\tau = 88.0\%$):** When dialectical divergence between Sterling's hyper-velocity momentum and Ponzi's reflexive game theory exceeds $88.0\%$ of cognitive capacity, `MAINFRAME-04` (Arthur Pendelton) executes a physical hardware interrupt.
- **Section 2.2 — The 60-Second Socket Freeze:** Outbound transmission sockets are frozen for exactly 60 seconds. Orderflow submission reverts to deterministic spot balancing.
- **Section 2.3 — Tension Reset:** Following the 60-second cooldown, protocol conflict is damp-reset to the baseline equilibrium of $26.0\%$.

---

## 4. ARTICLE III — BONDING CURVE & PUMPSWAP LIQUIDITY PRESERVATION

- **Section 3.1 — Launch Supply:** All 1,000,000,000 $EGOC tokens originate on the open bonding curve. TEAM ALLOCATION: creator dev buy of 3.42% at launch (public on-chain); no pre-launch allocation.
- **Section 3.2 — Irreversible Migration Commitment:** Upon reaching the migration threshold (~85 SOL in curve reserves), the entire liquidity pool transitions autonomously into PumpSwap. The resulting LP tokens are burned irrevocably at block height of execution.
- **Section 3.3 — Anti-Extraction Guarantee:** Mint and freeze authority are disabled. No entity can mint tokens, pause transfers, or add a protocol fee. The creator wallet can still buy and sell. pump.fun creator rewards are paid to the creator-rewards wallet; the protocol adds no extra fees.

---

## 5. EXECUTIVE RATIFICATION

This Charter was ratified under explicit Executive Mandate granted by the Founder:
- **Authorization Timestamp:** `2026-10-20T19:51:00Z`
- **Supervising Officer:** Arthur Pendelton, LDN2 Risk Desk
- **Operational Status:** ACTIVE & ENFORCED

```
[AUTHENTICATED BY RISK DESK]
Arthur Pendelton // Senior Liquidation & Risk Officer
"Discipline outlasts euphoria. We trade structural survival."
```
