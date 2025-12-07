@interface _BMActivityLibraryNode
+ (id)Level;
+ (id)configurationForLevel;
+ (id)storeConfigurationForLevel;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMActivityLibraryNode

+ (id)storeConfigurationForLevel
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:100000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Activity.Level" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Level
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForLevel = [self configurationForLevel];
  v3 = +[BMActivityLevel columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Activity.Level" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Activity.Level" schema:v9 configuration:configurationForLevel];

  return v10;
}

+ (id)configurationForLevel
{
  storeConfigurationForLevel = [self storeConfigurationForLevel];
  syncPolicyForLevel = [self syncPolicyForLevel];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"867963E1-D220-4C90-A75A-50F26902B44B"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Activity.Level" eventClass:objc_opt_class() storeConfig:storeConfigurationForLevel syncPolicy:syncPolicyForLevel legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Level"])
  {
    level = [self Level];
  }

  else
  {
    level = 0;
  }

  return level;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMActivityLevel validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end