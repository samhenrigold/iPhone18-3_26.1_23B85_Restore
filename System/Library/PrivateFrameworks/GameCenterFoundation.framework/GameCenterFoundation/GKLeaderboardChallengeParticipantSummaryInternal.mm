@interface GKLeaderboardChallengeParticipantSummaryInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengeParticipantSummaryInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_376 != -1)
  {
    +[GKLeaderboardChallengeParticipantSummaryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_375;

  return v3;
}

void __75__GKLeaderboardChallengeParticipantSummaryInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"playerID";
  v4[1] = @"rank";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_375;
  secureCodedPropertyKeys_sSecureCodedKeys_375 = v2;
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengeParticipantSummaryInternal);
  v5 = [fragmentCopy objectForKeyedSubscript:@"player-id"];
  [(GKLeaderboardChallengeParticipantSummaryInternal *)v4 setPlayerID:v5];

  v6 = [fragmentCopy objectForKeyedSubscript:@"rank"];

  [(GKLeaderboardChallengeParticipantSummaryInternal *)v4 setRank:v6];

  return v4;
}

@end