@interface GKTTRLogRequestInfo
+ (id)secureCodedPropertyKeys;
- (GKTTRLogRequestInfo)initWithPlayersAndPushTokens:(id)tokens radarID:(id)d requesterPlayerID:(id)iD;
@end

@implementation GKTTRLogRequestInfo

- (GKTTRLogRequestInfo)initWithPlayersAndPushTokens:(id)tokens radarID:(id)d requesterPlayerID:(id)iD
{
  tokensCopy = tokens;
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = GKTTRLogRequestInfo;
  v11 = [(GKTTRLogRequestInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(GKTTRLogRequestInfo *)v11 setPlayersAndPushTokens:tokensCopy];
    [(GKTTRLogRequestInfo *)v12 setRadarID:dCopy];
    [(GKTTRLogRequestInfo *)v12 setRequesterPlayerID:iDCopy];
  }

  return v12;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_313 != -1)
  {
    +[GKTTRLogRequestInfo secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_312;

  return v3;
}

void __46__GKTTRLogRequestInfo_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"playersAndPushTokens";
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v10[0] = v4;
  v9[1] = @"radarID";
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v10[1] = v5;
  v9[2] = @"requesterAlias";
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v8 = secureCodedPropertyKeys_sSecureCodedKeys_312;
  secureCodedPropertyKeys_sSecureCodedKeys_312 = v7;
}

@end