@interface _BMSiriAppSelectionLibraryNode
+ (id)Music;
+ (id)configurationForMusic;
+ (id)storeConfigurationForMusic;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSiriAppSelectionLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Music"])
  {
    music = [self Music];
  }

  else
  {
    music = 0;
  }

  return music;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSiriMusic validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForMusic
{
  v17[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForMusic = [self storeConfigurationForMusic];
  syncPolicyForMusic = [self syncPolicyForMusic];
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
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F04191E2-A706-4693-9A55-7C017291F227"];
  BYTE2(v16) = 1;
  LOWORD(v16) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.AppSelection.Music" eventClass:objc_opt_class() storeConfig:storeConfigurationForMusic syncPolicy:syncPolicyForMusic legacyNames:0 internalMetadata:0 enableSubscriptions:v16 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v17[0] spaceAttributionOwner:?];

  return v14;
}

+ (id)storeConfigurationForMusic
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:15552000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.AppSelection.Music" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Music
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForMusic = [self configurationForMusic];
  v3 = +[BMSiriMusic columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.AppSelection.Music" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.AppSelection.Music" schema:v9 configuration:configurationForMusic];

  return v10;
}

@end