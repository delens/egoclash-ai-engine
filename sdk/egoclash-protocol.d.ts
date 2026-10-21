/**
 * @file egoclash-protocol.d.ts
 * @description Public TypeScript Interface Definitions for the EgoClash ($EGOC) Protocol
 *              and Pre-Publication Virality Scoring Engine (PVSE v1.2).
 * @note Core Multi-Agent Enclave execution and prompt matrices are proprietary and closed-source.
 */

export type EgoAgentIdentifier = 'chad' | 'ponzi' | 'marvin' | 'arthur' | 'nursek';

export type AutonomousReactionRegime =
  | 'ATTACK_IMMEDIATELY'
  | 'DELAYED_AMBUSH'
  | 'LEAVE_ON_READ';

export interface SpotOracleTelemetry {
  readonly ticker: '$EGOC';
  readonly priceUsd: number;
  readonly spotDeltaPct: number;
  readonly marketCapUsd: number;
  readonly timestampIso: string;
}

export interface PVSEValidationMetrics {
  readonly finalScore: number;
  readonly grade: string;
  readonly passedAutoThreshold: boolean;
  readonly spotCheck: {
    readonly passed: boolean;
    readonly actualSpotDeltaPct: number;
    readonly citedPercentages: readonly number[];
  };
  readonly complianceCheck: {
    readonly passed: boolean;
  };
  readonly metrics: {
    readonly hookEntropy: { readonly score: number };
    readonly dialecticalDivergence: { readonly score: number };
    readonly heavyRankerPrediction: {
      readonly score: number;
      readonly predictedReplyToLikeRatio: number;
    };
    readonly semanticNovelty: {
      readonly score: number;
      readonly maxSimilarityPct: number;
    };
  };
}

export interface AtomicAgentBroadcast {
  readonly messageId: string;
  readonly agentId: EgoAgentIdentifier;
  readonly replyToMessageId: string | null;
  readonly content: string;
  readonly pvseReport: PVSEValidationMetrics;
  readonly spotSnapshot: SpotOracleTelemetry;
}
