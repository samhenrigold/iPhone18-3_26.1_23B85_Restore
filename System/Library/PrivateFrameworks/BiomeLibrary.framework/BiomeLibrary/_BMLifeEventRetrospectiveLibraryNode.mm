@interface _BMLifeEventRetrospectiveLibraryNode
+ (id)Activity;
+ (id)configurationForActivity;
+ (id)storeConfigurationForActivity;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMLifeEventRetrospectiveLibraryNode

+ (id)Activity
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForActivity = [self configurationForActivity];
  v3 = +[BMLifeEventRetrospectiveActivity columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"LifeEvent.Retrospective.Activity" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"LifeEvent.Retrospective.Activity" schema:v9 configuration:configurationForActivity];

  return v10;
}

+ (id)configurationForActivity
{
  storeConfigurationForActivity = [self storeConfigurationForActivity];
  syncPolicyForActivity = [self syncPolicyForActivity];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"CE967C7D-D830-4B66-A025-C9DFCAC73A4B"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"LifeEvent.Retrospective.Activity" eventClass:objc_opt_class() storeConfig:storeConfigurationForActivity syncPolicy:syncPolicyForActivity legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForActivity
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"LifeEvent.Retrospective.Activity" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Activity"])
  {
    activity = [self Activity];
  }

  else
  {
    activity = 0;
  }

  return activity;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMLifeEventRetrospectiveActivity validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end