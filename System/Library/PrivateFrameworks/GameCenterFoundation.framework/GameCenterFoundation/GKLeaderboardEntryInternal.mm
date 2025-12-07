@interface GKLeaderboardEntryInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardEntryInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_295 != -1)
  {
    +[GKLeaderboardEntryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_294;

  return v3;
}

void __53__GKLeaderboardEntryInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  v4[0] = @"player";
  v5[0] = objc_opt_class();
  v4[1] = @"rank";
  v5[1] = objc_opt_class();
  v4[2] = @"score";
  v5[2] = objc_opt_class();
  v4[3] = @"formattedScore";
  v5[3] = objc_opt_class();
  v4[4] = @"context";
  v5[4] = objc_opt_class();
  v4[5] = @"date";
  v5[5] = objc_opt_class();
  v4[6] = @"state";
  v5[6] = objc_opt_class();
  v4[7] = @"baseLeaderboardID";
  v5[7] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:8];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_294;
  secureCodedPropertyKeys_sSecureCodedKeys_294 = v2;
}

@end