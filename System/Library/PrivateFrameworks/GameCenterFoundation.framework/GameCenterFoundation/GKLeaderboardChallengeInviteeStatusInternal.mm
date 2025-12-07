@interface GKLeaderboardChallengeInviteeStatusInternal
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeInviteeStatusInternal)initWithServerFragment:(id)fragment;
@end

@implementation GKLeaderboardChallengeInviteeStatusInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_306 != -1)
  {
    +[GKLeaderboardChallengeInviteeStatusInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_305;

  return v3;
}

void __70__GKLeaderboardChallengeInviteeStatusInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"status";
  v4[1] = @"playerID";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_305;
  secureCodedPropertyKeys_sSecureCodedKeys_305 = v2;
}

- (GKLeaderboardChallengeInviteeStatusInternal)initWithServerFragment:(id)fragment
{
  fragmentCopy = fragment;
  v9.receiver = self;
  v9.super_class = GKLeaderboardChallengeInviteeStatusInternal;
  v5 = [(GKLeaderboardChallengeInviteeStatusInternal *)&v9 init];
  if (v5)
  {
    v6 = [fragmentCopy objectForKeyedSubscript:@"status"];
    [(GKLeaderboardChallengeInviteeStatusInternal *)v5 setStatus:v6];

    v7 = [fragmentCopy objectForKeyedSubscript:@"player-id"];
    [(GKLeaderboardChallengeInviteeStatusInternal *)v5 setPlayerID:v7];
  }

  return v5;
}

@end