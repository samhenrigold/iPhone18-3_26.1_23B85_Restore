@interface _BMAssetDeliveryUAFLibraryNode
+ (id)DailyStatus;
+ (id)configurationForDailyStatus;
+ (id)storeConfigurationForDailyStatus;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAssetDeliveryUAFLibraryNode

+ (id)DailyStatus
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForDailyStatus = [self configurationForDailyStatus];
  v3 = +[BMAssetDeliveryDailyStatus columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"AssetDelivery.UAF.DailyStatus" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"AssetDelivery.UAF.DailyStatus" schema:v9 configuration:configurationForDailyStatus];

  return v10;
}

+ (id)configurationForDailyStatus
{
  storeConfigurationForDailyStatus = [self storeConfigurationForDailyStatus];
  syncPolicyForDailyStatus = [self syncPolicyForDailyStatus];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"6BC437ED-3E06-4ECC-9114-B5E3AA2EDE09"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"AssetDelivery.UAF.DailyStatus" eventClass:objc_opt_class() storeConfig:storeConfigurationForDailyStatus syncPolicy:syncPolicyForDailyStatus legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDailyStatus
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:1209600.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"AssetDelivery.UAF.DailyStatus" domain:1 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"DailyStatus"])
  {
    dailyStatus = [self DailyStatus];
  }

  else
  {
    dailyStatus = 0;
  }

  return dailyStatus;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAssetDeliveryDailyStatus validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end