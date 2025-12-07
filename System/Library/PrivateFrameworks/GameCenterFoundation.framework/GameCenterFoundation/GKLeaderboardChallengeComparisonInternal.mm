@interface GKLeaderboardChallengeComparisonInternal
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeComparisonInternal)initWithServerRepresentation:(id)representation;
@end

@implementation GKLeaderboardChallengeComparisonInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_601 != -1)
  {
    +[GKLeaderboardChallengeComparisonInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_600;

  return v3;
}

void __67__GKLeaderboardChallengeComparisonInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"completedChallengeCount";
  v5[0] = objc_opt_class();
  v4[1] = @"completedChallengeGameCount";
  v5[1] = objc_opt_class();
  v4[2] = @"completedChallenges";
  v5[2] = objc_opt_class();
  v4[3] = @"wonChallenges";
  v5[3] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_600;
  secureCodedPropertyKeys_sSecureCodedKeys_600 = v2;
}

- (GKLeaderboardChallengeComparisonInternal)initWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = GKLeaderboardChallengeComparisonInternal;
  v5 = [(GKLeaderboardChallengeComparisonInternal *)&v13 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"challenges-count"];
    [(GKLeaderboardChallengeComparisonInternal *)v5 setCompletedChallengeCount:v6];

    v7 = [representationCopy objectForKeyedSubscript:@"challenge-games-count"];
    [(GKLeaderboardChallengeComparisonInternal *)v5 setCompletedChallengeGameCount:v7];

    v8 = [representationCopy objectForKeyedSubscript:@"completed-challenges"];
    v9 = [GKLeaderboardChallengeDetailsPageInternal initWithServerFragment:v8];
    [(GKLeaderboardChallengeComparisonInternal *)v5 setCompletedChallenges:v9];

    v10 = [representationCopy objectForKeyedSubscript:@"wins"];
    v11 = [GKLeaderboardChallengeWinComparisonPageInternal initWithServerFragment:v10];
    [(GKLeaderboardChallengeComparisonInternal *)v5 setWonChallenges:v11];
  }

  return v5;
}

@end