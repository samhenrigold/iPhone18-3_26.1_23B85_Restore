@interface _BMDiagnosticsLibraryNode
+ (id)Panic;
+ (id)configurationForPanic;
+ (id)storeConfigurationForPanic;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMDiagnosticsLibraryNode

+ (id)Panic
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForPanic = [self configurationForPanic];
  v3 = +[BMDiagnosticsPanic columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Diagnostics.Panic" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Diagnostics.Panic" schema:v9 configuration:configurationForPanic];

  return v10;
}

+ (id)configurationForPanic
{
  storeConfigurationForPanic = [self storeConfigurationForPanic];
  syncPolicyForPanic = [self syncPolicyForPanic];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1351C836-CA23-426C-9C02-8D0A0DBB176B"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Diagnostics.Panic" eventClass:objc_opt_class() storeConfig:storeConfigurationForPanic syncPolicy:syncPolicyForPanic legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPanic
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:1209600.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Diagnostics.Panic" domain:1 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Panic"])
  {
    panic = [self Panic];
  }

  else
  {
    panic = 0;
  }

  return panic;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMDiagnosticsPanic validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end