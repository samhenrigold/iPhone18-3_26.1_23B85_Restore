@interface APOdmlSettings
+ (void)prewarmModelWithPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType;
- (APOdmlSettings)initWithPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType;
- (NSString)experimentID;
- (NSString)odmlNamespace;
- (NSString)treatmentID;
- (id)serverRequestDictionary;
- (int)deploymentID;
- (int)odmlVersion;
@end

@implementation APOdmlSettings

+ (void)prewarmModelWithPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_260EE6304;
  v4[3] = &unk_279AC6358;
  v4[4] = type;
  v4[5] = managerType;
  if (qword_280CCF610 != -1)
  {
    dispatch_once(&qword_280CCF610, v4);
  }
}

- (APOdmlSettings)initWithPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType
{
  v10.receiver = self;
  v10.super_class = APOdmlSettings;
  v6 = [(APOdmlSettings *)&v10 init];
  if (v6)
  {
    v7 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
    [APOdmlSettings prewarmModelWithPlacementType:type assetManagerType:managerType];
    v8 = +[APOdmlAllowList sharedInstance];
    v6->_assetManagerType = managerType;
    v6->_placementType = type;
  }

  return v6;
}

- (int)deploymentID
{
  v3 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
  v4 = [v3 assetManagerForPlacementType:-[APOdmlSettings placementType](self assetManagerType:{"placementType"), -[APOdmlSettings assetManagerType](self, "assetManagerType")}];
  deploymentID = [v4 deploymentID];

  return deploymentID;
}

- (NSString)experimentID
{
  v3 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
  v4 = [v3 assetManagerForPlacementType:-[APOdmlSettings placementType](self assetManagerType:{"placementType"), -[APOdmlSettings assetManagerType](self, "assetManagerType")}];
  experimentID = [v4 experimentID];

  return experimentID;
}

- (NSString)treatmentID
{
  v3 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
  v4 = [v3 assetManagerForPlacementType:-[APOdmlSettings placementType](self assetManagerType:{"placementType"), -[APOdmlSettings assetManagerType](self, "assetManagerType")}];
  treatmentID = [v4 treatmentID];

  return treatmentID;
}

- (NSString)odmlNamespace
{
  v3 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
  v4 = [v3 assetManagerForPlacementType:-[APOdmlSettings placementType](self assetManagerType:{"placementType"), -[APOdmlSettings assetManagerType](self, "assetManagerType")}];
  odmlNamespace = [v4 odmlNamespace];

  return odmlNamespace;
}

- (int)odmlVersion
{
  v3 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
  v4 = [v3 assetManagerForPlacementType:-[APOdmlSettings placementType](self assetManagerType:{"placementType"), -[APOdmlSettings assetManagerType](self, "assetManagerType")}];
  odmlVersion = [v4 odmlVersion];

  return odmlVersion;
}

- (id)serverRequestDictionary
{
  v12[6] = *MEMORY[0x277D85DE8];
  experimentID = [(APOdmlSettings *)self experimentID];
  if (experimentID)
  {
    v4 = experimentID;
  }

  else
  {
    v4 = &stru_2873677E0;
  }

  treatmentID = [(APOdmlSettings *)self treatmentID];
  if (treatmentID)
  {
    v6 = treatmentID;
  }

  else
  {
    v6 = &stru_2873677E0;
  }

  v11[0] = @"supportedODMLVersion";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[APOdmlSettings odmlVersion](self, "odmlVersion")}];
  v12[0] = v7;
  v12[1] = v4;
  v11[1] = @"experimentID";
  v11[2] = @"treatmentID";
  v12[2] = v6;
  v11[3] = @"deploymentID";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[APOdmlSettings deploymentID](self, "deploymentID")}];
  v12[3] = v8;
  v12[4] = MEMORY[0x277CBEC28];
  v11[4] = @"inAllocation";
  v11[5] = @"clientExclusive";
  v12[5] = MEMORY[0x277CBEC28];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

@end