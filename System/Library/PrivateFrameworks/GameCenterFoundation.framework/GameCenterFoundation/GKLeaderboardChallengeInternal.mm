@interface GKLeaderboardChallengeInternal
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeInternal)initWithServerRepresentation:(id)representation;
@end

@implementation GKLeaderboardChallengeInternal

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__GKLeaderboardChallengeInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_194 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_194, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_193;

  return v2;
}

void __57__GKLeaderboardChallengeInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v17[9] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v13.receiver = *(a1 + 32);
  v13.super_class = &OBJC_METACLASS___GKLeaderboardChallengeInternal;
  v2 = objc_msgSendSuper2(&v13, sel_secureCodedPropertyKeys);
  v3 = [v1 dictionaryWithDictionary:v2];

  v16[0] = @"leaderboardID";
  v17[0] = objc_opt_class();
  v16[1] = @"attemptLimit";
  v17[1] = objc_opt_class();
  v16[2] = @"state";
  v17[2] = objc_opt_class();
  v16[3] = @"creatorPlayerID";
  v17[3] = objc_opt_class();
  v16[4] = @"scheduledDuration";
  v17[4] = objc_opt_class();
  v16[5] = @"challengeDefinitionID";
  v17[5] = objc_opt_class();
  v16[6] = @"durationCode";
  v17[6] = objc_opt_class();
  v16[7] = @"participants";
  v4 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v6 = [v4 setWithArray:v5];
  v17[7] = v6;
  v16[8] = @"invitees";
  v7 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = [v7 setWithArray:v8];
  v17[8] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:9];
  [v3 addEntriesFromDictionary:v10];

  v11 = [v3 copy];
  v12 = secureCodedPropertyKeys_sSecureCodedKeys_193;
  secureCodedPropertyKeys_sSecureCodedKeys_193 = v11;
}

- (GKLeaderboardChallengeInternal)initWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v22.receiver = self;
  v22.super_class = GKLeaderboardChallengeInternal;
  v5 = [(GKLeaderboardChallengeInternal *)&v22 init];
  v6 = v5;
  if (v5)
  {
    [(GKBaseLeaderboardChallengeInternal *)v5 updateWithServerResponse:representationCopy];
    v7 = [representationCopy objectForKeyedSubscript:@"leaderboard-id"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_283AFD1E0;
    }

    [(GKLeaderboardChallengeInternal *)v6 setLeaderboardID:v9];

    v10 = [representationCopy objectForKeyedSubscript:@"attempt-limit"];
    [(GKLeaderboardChallengeInternal *)v6 setAttemptLimit:v10];

    v11 = [representationCopy objectForKeyedSubscript:@"state"];
    [(GKLeaderboardChallengeInternal *)v6 setState:v11];

    v12 = [representationCopy objectForKeyedSubscript:@"creator-player-id"];
    [(GKLeaderboardChallengeInternal *)v6 setCreatorPlayerID:v12];

    v13 = [representationCopy objectForKeyedSubscript:@"scheduled-duration"];
    [v13 doubleValue];
    [(GKLeaderboardChallengeInternal *)v6 setScheduledDuration:v14 / 1000.0];

    v15 = [representationCopy objectForKeyedSubscript:@"challenge-vendor-id"];
    [(GKLeaderboardChallengeInternal *)v6 setChallengeDefinitionID:v15];

    v16 = [representationCopy objectForKeyedSubscript:@"durationCode"];
    [(GKLeaderboardChallengeInternal *)v6 setDurationCode:v16];

    v17 = [representationCopy objectForKeyedSubscript:@"participants"];
    v18 = [v17 _gkMapWithBlock:&__block_literal_global_246];
    [(GKLeaderboardChallengeInternal *)v6 setParticipants:v18];

    v19 = [representationCopy objectForKeyedSubscript:@"invited-players"];
    v20 = [v19 _gkMapWithBlock:&__block_literal_global_251];
    [(GKLeaderboardChallengeInternal *)v6 setInvitees:v20];
  }

  return v6;
}

GKLeaderboardChallengeParticipantInternal *__63__GKLeaderboardChallengeInternal_initWithServerRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardChallengeParticipantInternal alloc] initWithServerFragment:v2];

  return v3;
}

GKLeaderboardChallengeInviteeInternal *__63__GKLeaderboardChallengeInternal_initWithServerRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardChallengeInviteeInternal alloc] initWithServerFragment:v2];

  return v3;
}

@end