@interface GKLeaderboardChallengeCompletedSummaryInternal
+ (id)secureCodedPropertyKeys;
- (GKLeaderboardChallengeCompletedSummaryInternal)initWithServerRepresentation:(id)representation;
@end

@implementation GKLeaderboardChallengeCompletedSummaryInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_670 != -1)
  {
    +[GKLeaderboardChallengeCompletedSummaryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_669;

  return v3;
}

void __73__GKLeaderboardChallengeCompletedSummaryInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v12[0] = @"totalCount";
  v13[0] = objc_opt_class();
  v12[1] = @"totalGames";
  v13[1] = objc_opt_class();
  v12[2] = @"totalFriends";
  v13[2] = objc_opt_class();
  v12[3] = @"gameCounts";
  v2 = MEMORY[0x277CBEB98];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v4 = [v2 setWithArray:v3];
  v13[3] = v4;
  v12[4] = @"playerCounts";
  v5 = MEMORY[0x277CBEB98];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v5 setWithArray:v6];
  v13[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];
  v9 = secureCodedPropertyKeys_sSecureCodedKeys_669;
  secureCodedPropertyKeys_sSecureCodedKeys_669 = v8;
}

- (GKLeaderboardChallengeCompletedSummaryInternal)initWithServerRepresentation:(id)representation
{
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = GKLeaderboardChallengeCompletedSummaryInternal;
  v5 = [(GKLeaderboardChallengeCompletedSummaryInternal *)&v14 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"total-count"];
    [(GKLeaderboardChallengeCompletedSummaryInternal *)v5 setTotalCount:v6];

    v7 = [representationCopy objectForKeyedSubscript:@"total-games"];
    [(GKLeaderboardChallengeCompletedSummaryInternal *)v5 setTotalGames:v7];

    v8 = [representationCopy objectForKeyedSubscript:@"total-friends"];
    [(GKLeaderboardChallengeCompletedSummaryInternal *)v5 setTotalFriends:v8];

    v9 = [representationCopy objectForKeyedSubscript:@"by-games"];
    v10 = [v9 _gkMapWithBlock:&__block_literal_global_702];
    [(GKLeaderboardChallengeCompletedSummaryInternal *)v5 setGameCounts:v10];

    v11 = [representationCopy objectForKeyedSubscript:@"by-players"];
    v12 = [v11 _gkMapWithBlock:&__block_literal_global_707];
    [(GKLeaderboardChallengeCompletedSummaryInternal *)v5 setPlayerCounts:v12];
  }

  return v5;
}

@end