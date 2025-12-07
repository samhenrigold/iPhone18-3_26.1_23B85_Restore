@interface GKLeaderboardChallengeWinComparisonInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengeWinComparisonInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_549 != -1)
  {
    +[GKLeaderboardChallengeWinComparisonInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_548;

  return v3;
}

void __70__GKLeaderboardChallengeWinComparisonInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"bundleID";
  v5[0] = objc_opt_class();
  v4[1] = @"playerWinCount";
  v5[1] = objc_opt_class();
  v4[2] = @"otherPlayerWinCount";
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_548;
  secureCodedPropertyKeys_sSecureCodedKeys_548 = v2;
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengeWinComparisonInternal);
  v5 = [fragmentCopy objectForKeyedSubscript:@"bundle-id"];
  [(GKLeaderboardChallengeWinComparisonInternal *)v4 setBundleID:v5];

  v6 = [fragmentCopy objectForKeyedSubscript:@"player-win-count"];
  [(GKLeaderboardChallengeWinComparisonInternal *)v4 setPlayerWinCount:v6];

  v7 = [fragmentCopy objectForKeyedSubscript:@"compare-to-player-win-count"];

  [(GKLeaderboardChallengeWinComparisonInternal *)v4 setOtherPlayerWinCount:v7];

  return v4;
}

@end