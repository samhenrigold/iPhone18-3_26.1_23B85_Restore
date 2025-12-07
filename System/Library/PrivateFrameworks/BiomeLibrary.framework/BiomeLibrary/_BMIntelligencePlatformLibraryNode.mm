@interface _BMIntelligencePlatformLibraryNode
+ (id)FeatureStore;
+ (id)MessageTerms;
+ (id)configurationForFeatureStore;
+ (id)configurationForMessageTerms;
+ (id)storeConfigurationForFeatureStore;
+ (id)storeConfigurationForMessageTerms;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMIntelligencePlatformLibraryNode

+ (id)sublibraries
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = [self ECR];
  entityTagging = [self EntityTagging];
  v8[1] = entityTagging;
  views = [self Views];
  v8[2] = views;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

+ (id)configurationForFeatureStore
{
  storeConfigurationForFeatureStore = [self storeConfigurationForFeatureStore];
  syncPolicyForFeatureStore = [self syncPolicyForFeatureStore];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D21A8DB8-7D87-4F3E-B63F-1B173B7907E9"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"IntelligencePlatform.FeatureStore" eventClass:objc_opt_class() storeConfig:storeConfigurationForFeatureStore syncPolicy:syncPolicyForFeatureStore legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForFeatureStore
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"IntelligencePlatform.FeatureStore" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForMessageTerms
{
  storeConfigurationForMessageTerms = [self storeConfigurationForMessageTerms];
  syncPolicyForMessageTerms = [self syncPolicyForMessageTerms];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F5873872-1331-4952-9DCA-0E8CC6266734"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"IntelligencePlatform.MessageTerms" eventClass:objc_opt_class() storeConfig:storeConfigurationForMessageTerms syncPolicy:syncPolicyForMessageTerms legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)MessageTerms
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForMessageTerms = [self configurationForMessageTerms];
  v3 = +[BMIntelligencePlatformMessageTerms columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"IntelligencePlatform.MessageTerms" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"IntelligencePlatform.MessageTerms" schema:v9 configuration:configurationForMessageTerms];

  return v10;
}

+ (id)storeConfigurationForMessageTerms
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"IntelligencePlatform.MessageTerms" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)FeatureStore
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForFeatureStore = [self configurationForFeatureStore];
  v3 = +[BMIntelligencePlatformFeatureStore columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"IntelligencePlatform.FeatureStore" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"IntelligencePlatform.FeatureStore" schema:v9 configuration:configurationForFeatureStore];

  return v10;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"FeatureStore"])
  {
    featureStore = [self FeatureStore];
LABEL_5:
    v6 = featureStore;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"MessageTerms"])
  {
    featureStore = [self MessageTerms];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMIntelligencePlatformFeatureStore validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMIntelligencePlatformMessageTerms validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

@end