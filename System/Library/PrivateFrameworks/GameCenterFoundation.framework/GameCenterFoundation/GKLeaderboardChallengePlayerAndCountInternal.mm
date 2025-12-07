@interface GKLeaderboardChallengePlayerAndCountInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengePlayerAndCountInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_660 != -1)
  {
    +[GKLeaderboardChallengePlayerAndCountInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_659;

  return v3;
}

void __71__GKLeaderboardChallengePlayerAndCountInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"playerID";
  v4[1] = @"count";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_659;
  secureCodedPropertyKeys_sSecureCodedKeys_659 = v2;
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengePlayerAndCountInternal);
  v5 = [fragmentCopy objectForKeyedSubscript:@"player-id"];
  [(GKLeaderboardChallengePlayerAndCountInternal *)v4 setPlayerID:v5];

  v6 = [fragmentCopy objectForKeyedSubscript:@"count"];

  [(GKLeaderboardChallengePlayerAndCountInternal *)v4 setCount:v6];

  return v4;
}

@end