@interface GKLeaderboardInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation GKLeaderboardInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_25 != -1)
  {
    +[GKLeaderboardInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_25;

  return v3;
}

void __48__GKLeaderboardInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v16[28] = *MEMORY[0x277D85DE8];
  v15[0] = @"baseLeaderboardID";
  v16[0] = objc_opt_class();
  v15[1] = @"context";
  v16[1] = objc_opt_class();
  v15[2] = @"creator";
  v16[2] = objc_opt_class();
  v15[3] = @"duration";
  v16[3] = objc_opt_class();
  v15[4] = @"friendRank";
  v16[4] = objc_opt_class();
  v15[5] = @"friendRankCount";
  v16[5] = objc_opt_class();
  v15[6] = @"groupIdentifier";
  v16[6] = objc_opt_class();
  v15[7] = @"icons";
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  v16[7] = v5;
  v15[8] = @"ascResourceID";
  v16[8] = objc_opt_class();
  v15[9] = @"identifier";
  v16[9] = objc_opt_class();
  v15[10] = @"lastSubmittedDate";
  v16[10] = objc_opt_class();
  v15[11] = @"leaderboardSetIdentifier";
  v16[11] = objc_opt_class();
  v15[12] = @"maxRank";
  v16[12] = objc_opt_class();
  v15[13] = @"nextStartDate";
  v16[13] = objc_opt_class();
  v15[14] = @"overallRank";
  v16[14] = objc_opt_class();
  v15[15] = @"overallRankCount";
  v16[15] = objc_opt_class();
  v15[16] = @"playerScore";
  v16[16] = objc_opt_class();
  v15[17] = @"recordID";
  v16[17] = objc_opt_class();
  v15[18] = @"releaseState";
  v16[18] = objc_opt_class();
  v15[19] = @"scores";
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v16[19] = v9;
  v15[20] = @"startDate";
  v16[20] = objc_opt_class();
  v15[21] = @"title";
  v16[21] = objc_opt_class();
  v15[22] = @"type";
  v16[22] = objc_opt_class();
  v15[23] = @"supportsChallenges";
  v16[23] = objc_opt_class();
  v15[24] = @"activityIdentifier";
  v16[24] = objc_opt_class();
  v15[25] = @"activityProperties";
  v10 = MEMORY[0x277CBEB98];
  v11 = +[GKInternalRepresentation secureCodedJsonTypes];
  v12 = [v10 setWithSet:v11];
  v16[25] = v12;
  v15[26] = @"leaderboardDescription";
  v16[26] = objc_opt_class();
  v15[27] = @"visibility";
  v16[27] = objc_opt_class();
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:28];
  v14 = secureCodedPropertyKeys_sSecureCodedKeys_25;
  secureCodedPropertyKeys_sSecureCodedKeys_25 = v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(GKLeaderboardInternal *)self identifier];
    identifier2 = [v5 identifier];
    if (identifier == identifier2)
    {
      v8 = 1;
    }

    else
    {
      v8 = [identifier isEqualToString:identifier2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(GKLeaderboardInternal *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end