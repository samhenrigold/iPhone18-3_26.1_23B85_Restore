@interface _BMMessagesSearchLibraryNode
+ (id)Event;
+ (id)configurationForEvent;
+ (id)storeConfigurationForEvent;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMMessagesSearchLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Event"])
  {
    event = [self Event];
  }

  else
  {
    event = 0;
  }

  return event;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMessagesSearchEvent validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForEvent
{
  storeConfigurationForEvent = [self storeConfigurationForEvent];
  syncPolicyForEvent = [self syncPolicyForEvent];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E1134E73-674F-4CC4-BBB1-32D44F1BF6E9"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Messages.Search.Event" eventClass:objc_opt_class() storeConfig:storeConfigurationForEvent syncPolicy:syncPolicyForEvent legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEvent
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Messages.Search.Event" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)Event
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForEvent = [self configurationForEvent];
  v3 = +[BMMessagesSearchEvent columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Messages.Search.Event" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Messages.Search.Event" schema:v9 configuration:configurationForEvent];

  return v10;
}

@end