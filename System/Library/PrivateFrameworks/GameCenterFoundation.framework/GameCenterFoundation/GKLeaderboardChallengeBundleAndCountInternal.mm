@interface GKLeaderboardChallengeBundleAndCountInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengeBundleAndCountInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_642 != -1)
  {
    +[GKLeaderboardChallengeBundleAndCountInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_641;

  return v3;
}

void __71__GKLeaderboardChallengeBundleAndCountInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"bundleID";
  v4[1] = @"count";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_641;
  secureCodedPropertyKeys_sSecureCodedKeys_641 = v2;
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengeBundleAndCountInternal);
  v5 = [fragmentCopy objectForKeyedSubscript:@"bundle-id"];
  [(GKLeaderboardChallengeBundleAndCountInternal *)v4 setBundleID:v5];

  v6 = [fragmentCopy objectForKeyedSubscript:@"count"];

  [(GKLeaderboardChallengeBundleAndCountInternal *)v4 setCount:v6];

  return v4;
}

@end