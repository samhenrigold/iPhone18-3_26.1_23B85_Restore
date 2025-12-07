@interface _BMActivitySchedulerLibraryNode
+ (id)ActivityProfile;
+ (id)configurationForActivityProfile;
+ (id)storeConfigurationForActivityProfile;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMActivitySchedulerLibraryNode

+ (id)sublibraries
{
  v5[1] = *MEMORY[0x1E69E9840];
  dependency = [self Dependency];
  v5[0] = dependency;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)ActivityProfile
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForActivityProfile = [self configurationForActivityProfile];
  v3 = +[BMActivitySchedulerActivityProfile columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ActivityScheduler.ActivityProfile" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ActivityScheduler.ActivityProfile" schema:v9 configuration:configurationForActivityProfile];

  return v10;
}

+ (id)configurationForActivityProfile
{
  storeConfigurationForActivityProfile = [self storeConfigurationForActivityProfile];
  syncPolicyForActivityProfile = [self syncPolicyForActivityProfile];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"296F6267-B80B-43C2-A029-A875E83E0E1F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ActivityScheduler.ActivityProfile" eventClass:objc_opt_class() storeConfig:storeConfigurationForActivityProfile syncPolicy:syncPolicyForActivityProfile legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForActivityProfile
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ActivityScheduler.ActivityProfile" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"ActivityProfile"])
  {
    activityProfile = [self ActivityProfile];
  }

  else
  {
    activityProfile = 0;
  }

  return activityProfile;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMActivitySchedulerActivityProfile validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end