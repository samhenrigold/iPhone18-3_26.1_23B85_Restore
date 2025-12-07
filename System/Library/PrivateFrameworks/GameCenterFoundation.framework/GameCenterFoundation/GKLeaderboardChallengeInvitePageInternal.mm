@interface GKLeaderboardChallengeInvitePageInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengeInvitePageInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_342 != -1)
  {
    +[GKLeaderboardChallengeInvitePageInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_341;

  return v3;
}

void __67__GKLeaderboardChallengeInvitePageInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"invites";
  v2 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];
  v8[1] = @"nextURL";
  v9[0] = v4;
  v9[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = secureCodedPropertyKeys_sSecureCodedKeys_341;
  secureCodedPropertyKeys_sSecureCodedKeys_341 = v5;
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengeInvitePageInternal);
  v5 = [fragmentCopy objectForKeyedSubscript:@"result"];
  v6 = [v5 _gkMapWithBlock:&__block_literal_global_356];
  [(GKLeaderboardChallengeInvitePageInternal *)v4 setInvites:v6];

  v7 = [fragmentCopy objectForKeyedSubscript:@"next-url"];

  [(GKLeaderboardChallengeInvitePageInternal *)v4 setNextURL:v7];

  return v4;
}

@end