@interface GKLeaderboardChallengeInviteInternal
+ (id)initWithServerFragment:(id)fragment;
+ (id)secureCodedPropertyKeys;
@end

@implementation GKLeaderboardChallengeInviteInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_332 != -1)
  {
    +[GKLeaderboardChallengeInviteInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_331;

  return v3;
}

void __63__GKLeaderboardChallengeInviteInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v8[0] = @"challengeID";
  v9[0] = objc_opt_class();
  v8[1] = @"challengeVendorID";
  v9[1] = objc_opt_class();
  v8[2] = @"bundleID";
  v9[2] = objc_opt_class();
  v8[3] = @"bundleIDs";
  v2 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];
  v9[3] = v4;
  v8[4] = @"fromPlayerID";
  v9[4] = objc_opt_class();
  v8[5] = @"invitedDate";
  v9[5] = objc_opt_class();
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v6 = secureCodedPropertyKeys_sSecureCodedKeys_331;
  secureCodedPropertyKeys_sSecureCodedKeys_331 = v5;
}

+ (id)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = objc_alloc_init(GKLeaderboardChallengeInviteInternal);
  v5 = [fragmentCopy objectForKeyedSubscript:@"challenge-id"];
  [(GKLeaderboardChallengeInviteInternal *)v4 setChallengeID:v5];

  v6 = [fragmentCopy objectForKeyedSubscript:@"challenge-vendor-id"];
  [(GKLeaderboardChallengeInviteInternal *)v4 setChallengeVendorID:v6];

  v7 = [fragmentCopy objectForKeyedSubscript:@"bundle-id"];
  [(GKLeaderboardChallengeInviteInternal *)v4 setBundleID:v7];

  v8 = [fragmentCopy objectForKeyedSubscript:@"bundle-ids"];
  [(GKLeaderboardChallengeInviteInternal *)v4 setBundleIDs:v8];

  v9 = [fragmentCopy objectForKeyedSubscript:@"from-player-id"];
  [(GKLeaderboardChallengeInviteInternal *)v4 setFromPlayerID:v9];

  v10 = MEMORY[0x277CBEAA8];
  v11 = [fragmentCopy objectForKeyedSubscript:@"invited-timestamp"];

  v12 = [v10 _gkDateFromServerTimestamp:v11];
  [(GKLeaderboardChallengeInviteInternal *)v4 setInvitedDate:v12];

  return v4;
}

@end