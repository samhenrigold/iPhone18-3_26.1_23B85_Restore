@interface GKLeaderboardSummaryInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardSummaryInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_30 != -1)
  {
    +[GKLeaderboardSummaryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_30;

  return v3;
}

void __55__GKLeaderboardSummaryInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[17] = *MEMORY[0x277D85DE8];
  v4[0] = @"baseLeaderboardID";
  v5[0] = objc_opt_class();
  v4[1] = @"leaderboardID";
  v5[1] = objc_opt_class();
  v4[2] = @"timeScope";
  v5[2] = objc_opt_class();
  v4[3] = @"groupID";
  v5[3] = objc_opt_class();
  v4[4] = @"title";
  v5[4] = objc_opt_class();
  v4[5] = @"type";
  v5[5] = objc_opt_class();
  v4[6] = @"formattedScoreValue";
  v5[6] = objc_opt_class();
  v4[7] = @"context";
  v5[7] = objc_opt_class();
  v4[8] = @"status";
  v5[8] = objc_opt_class();
  v4[9] = @"startDate";
  v5[9] = objc_opt_class();
  v4[10] = @"duration";
  v5[10] = objc_opt_class();
  v4[11] = @"nextStartDate";
  v5[11] = objc_opt_class();
  v4[12] = @"scoreValue";
  v5[12] = objc_opt_class();
  v4[13] = @"rank";
  v5[13] = objc_opt_class();
  v4[14] = @"totalEntries";
  v5[14] = objc_opt_class();
  v4[15] = @"friendRank";
  v5[15] = objc_opt_class();
  v4[16] = @"totalFriendEntries";
  v5[16] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:17];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_30;
  secureCodedPropertyKeys_sSecureCodedKeys_30 = v2;
}

@end