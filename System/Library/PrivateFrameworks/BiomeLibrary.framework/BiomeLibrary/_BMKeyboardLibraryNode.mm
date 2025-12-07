@interface _BMKeyboardLibraryNode
+ (id)TokenFrequency;
+ (id)configurationForTokenFrequency;
+ (id)storeConfigurationForTokenFrequency;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMKeyboardLibraryNode

+ (id)TokenFrequency
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForTokenFrequency = [self configurationForTokenFrequency];
  v3 = +[BMKeyboardTokenFrequency columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Keyboard.TokenFrequency" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Keyboard.TokenFrequency" schema:v9 configuration:configurationForTokenFrequency];

  return v10;
}

+ (id)storeConfigurationForTokenFrequency
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Keyboard.TokenFrequency" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForTokenFrequency
{
  v14[1] = *MEMORY[0x1E69E9840];
  storeConfigurationForTokenFrequency = [self storeConfigurationForTokenFrequency];
  syncPolicyForTokenFrequency = [self syncPolicyForTokenFrequency];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"reset-keyboard-dictionary" predicate:v6];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v9 = MEMORY[0x1E698F338];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BEABFE23-3CF1-4646-BD17-7437ED3ABF9B"];
  BYTE2(v13) = 1;
  LOWORD(v13) = 1;
  v11 = [v9 _libraryStreamConfigurationWithUUID:v10 streamIdentifier:@"Keyboard.TokenFrequency" eventClass:objc_opt_class() storeConfig:storeConfigurationForTokenFrequency syncPolicy:syncPolicyForTokenFrequency legacyNames:0 internalMetadata:0 enableSubscriptions:v13 enableSubscriptionSubstream:0 enableTombstoneSubstream:v8 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v11;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"TokenFrequency"])
  {
    tokenFrequency = [self TokenFrequency];
  }

  else
  {
    tokenFrequency = 0;
  }

  return tokenFrequency;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMKeyboardTokenFrequency validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end