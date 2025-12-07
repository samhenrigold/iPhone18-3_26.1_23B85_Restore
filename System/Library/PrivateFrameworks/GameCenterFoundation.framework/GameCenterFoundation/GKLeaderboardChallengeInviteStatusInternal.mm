@interface GKLeaderboardChallengeInviteStatusInternal
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeInviteStatusInternal)initWithServerRepresentation:(id)representation;
@end

@implementation GKLeaderboardChallengeInviteStatusInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_316 != -1)
  {
    +[GKLeaderboardChallengeInviteStatusInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_315;

  return v3;
}

void __69__GKLeaderboardChallengeInviteStatusInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"invitees";
  v2 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = secureCodedPropertyKeys_sSecureCodedKeys_315;
  secureCodedPropertyKeys_sSecureCodedKeys_315 = v5;
}

- (GKLeaderboardChallengeInviteStatusInternal)initWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = GKLeaderboardChallengeInviteStatusInternal;
  v5 = [(GKLeaderboardChallengeInviteStatusInternal *)&v9 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"responses"];
    v7 = [v6 _gkMapWithBlock:&__block_literal_global_325];
    [(GKLeaderboardChallengeInviteStatusInternal *)v5 setInvitees:v7];
  }

  return v5;
}

GKLeaderboardChallengeInviteeStatusInternal *__75__GKLeaderboardChallengeInviteStatusInternal_initWithServerRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardChallengeInviteeStatusInternal alloc] initWithServerFragment:v2];

  return v3;
}

@end