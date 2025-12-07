@interface _BMMessagesSharedWithYouLibraryNode
+ (id)Feedback;
+ (id)configurationForFeedback;
+ (id)storeConfigurationForFeedback;
+ (id)streamWithName:(id)name;
+ (id)syncPolicyForFeedback;
+ (id)validKeyPaths;
@end

@implementation _BMMessagesSharedWithYouLibraryNode

+ (id)Feedback
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForFeedback = [self configurationForFeedback];
  v3 = +[BMMessagesSharedWithYouFeedback columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Messages.SharedWithYou.Feedback" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Messages.SharedWithYou.Feedback" schema:v9 configuration:configurationForFeedback];

  return v10;
}

+ (id)configurationForFeedback
{
  storeConfigurationForFeedback = [self storeConfigurationForFeedback];
  syncPolicyForFeedback = [self syncPolicyForFeedback];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"851C3B0D-34A4-4E50-BF8F-209CBCAF12E4"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Messages.SharedWithYou.Feedback" eventClass:objc_opt_class() storeConfig:storeConfigurationForFeedback syncPolicy:syncPolicyForFeedback legacyNames:&unk_1EF3EB970 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.MobileSMS" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForFeedback
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:7340032 maxStreamSize:10000 maxEventCount:2592000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Messages.SharedWithYou.Feedback" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)syncPolicyForFeedback
{
  v21[1] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v21[0] = v16;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v15 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v20 = v15;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v4 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:2];
  v19 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v17[0] = v6;
  v18[0] = v2;
  v7 = BMDevicePlatformAsKeyString();
  v17[1] = v7;
  v18[1] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v17[2] = v8;
  v18[2] = v3;
  v9 = BMDevicePlatformAsKeyString();
  v17[3] = v9;
  v18[3] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v17[4] = v10;
  v18[4] = v5;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"851C3B0D-34A4-4E50-BF8F-209CBCAF12E4"];
  v13 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v11 syncUUID:v12 legacySyncID:@"restricted/feedbackSocialHighlights" eventClass:objc_opt_class()];

  return v13;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Feedback"])
  {
    feedback = [self Feedback];
  }

  else
  {
    feedback = 0;
  }

  return feedback;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMessagesSharedWithYouFeedback validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end