@interface GKBaseLeaderboardChallengeInternal
+ (id)secureCodedPropertyKeys;
- (void)updateWithServerResponse:(id)response;
@end

@implementation GKBaseLeaderboardChallengeInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_104 != -1)
  {
    +[GKBaseLeaderboardChallengeInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_103;

  return v3;
}

void __61__GKBaseLeaderboardChallengeInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
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
  v8[4] = @"startDate";
  v9[4] = objc_opt_class();
  v8[5] = @"endDate";
  v9[5] = objc_opt_class();
  v8[6] = @"scheduledEndDate";
  v9[6] = objc_opt_class();
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:7];
  v6 = secureCodedPropertyKeys_sSecureCodedKeys_103;
  secureCodedPropertyKeys_sSecureCodedKeys_103 = v5;
}

- (void)updateWithServerResponse:(id)response
{
  responseCopy = response;
  v5 = [responseCopy objectForKeyedSubscript:@"challenge-id"];
  [(GKBaseLeaderboardChallengeInternal *)self setChallengeID:v5];

  v6 = [responseCopy objectForKeyedSubscript:@"challenge-vendor-id"];
  [(GKBaseLeaderboardChallengeInternal *)self setChallengeVendorID:v6];

  v7 = [responseCopy objectForKeyedSubscript:@"bundle-id"];
  [(GKBaseLeaderboardChallengeInternal *)self setBundleID:v7];

  v8 = [responseCopy objectForKeyedSubscript:@"bundle-ids"];
  [(GKBaseLeaderboardChallengeInternal *)self setBundleIDs:v8];

  v9 = MEMORY[0x277CBEAA8];
  v10 = [responseCopy objectForKeyedSubscript:@"start-timestamp"];
  v11 = [v9 _gkDateFromServerTimestamp:v10];
  [(GKBaseLeaderboardChallengeInternal *)self setStartDate:v11];

  v12 = MEMORY[0x277CBEAA8];
  v13 = [responseCopy objectForKeyedSubscript:@"end-timestamp"];
  v14 = [v12 _gkDateFromServerTimestamp:v13];
  [(GKBaseLeaderboardChallengeInternal *)self setEndDate:v14];

  v15 = MEMORY[0x277CBEAA8];
  v17 = [responseCopy objectForKeyedSubscript:@"scheduled-end-timestamp"];

  v16 = [v15 _gkDateFromServerTimestamp:v17];
  [(GKBaseLeaderboardChallengeInternal *)self setScheduledEndDate:v16];
}

@end