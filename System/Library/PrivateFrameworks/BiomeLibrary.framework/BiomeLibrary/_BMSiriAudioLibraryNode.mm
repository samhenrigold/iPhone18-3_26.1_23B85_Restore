@interface _BMSiriAudioLibraryNode
+ (id)CompanionContext;
+ (id)configurationForCompanionContext;
+ (id)storeConfigurationForCompanionContext;
+ (id)streamWithName:(id)name;
+ (id)syncPolicyForCompanionContext;
+ (id)validKeyPaths;
@end

@implementation _BMSiriAudioLibraryNode

+ (id)CompanionContext
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForCompanionContext = [self configurationForCompanionContext];
  v3 = +[BMSiriCompanionContext columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Audio.CompanionContext" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Audio.CompanionContext" schema:v9 configuration:configurationForCompanionContext];

  return v10;
}

+ (id)configurationForCompanionContext
{
  v17[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForCompanionContext = [self storeConfigurationForCompanionContext];
  syncPolicyForCompanionContext = [self syncPolicyForCompanionContext];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v17[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"35D8B8AF-E1A6-4DB0-ABDC-ECAF5CFF4503"];
  BYTE2(v16) = 1;
  LOWORD(v16) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.Audio.CompanionContext" eventClass:objc_opt_class() storeConfig:storeConfigurationForCompanionContext syncPolicy:syncPolicyForCompanionContext legacyNames:0 internalMetadata:0 enableSubscriptions:v16 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v17[0] spaceAttributionOwner:?];

  return v14;
}

+ (id)storeConfigurationForCompanionContext
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Audio.CompanionContext" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)syncPolicyForCompanionContext
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:2];
  v16[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v4 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v15 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v13[0] = v6;
  v14[0] = v3;
  v7 = BMDevicePlatformAsKeyString();
  v13[1] = v7;
  v14[1] = v5;
  v8 = BMDevicePlatformAsKeyString();
  v13[2] = v8;
  v14[2] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"35D8B8AF-E1A6-4DB0-ABDC-ECAF5CFF4503"];
  v11 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v9 syncUUID:v10 legacySyncID:0 eventClass:objc_opt_class()];

  return v11;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"CompanionContext"])
  {
    companionContext = [self CompanionContext];
  }

  else
  {
    companionContext = 0;
  }

  return companionContext;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSiriCompanionContext validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end