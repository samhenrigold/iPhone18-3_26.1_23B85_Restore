@interface _BMIntelligenceEngineInteractionLibraryNode
+ (id)Donation;
+ (id)configurationForDonation;
+ (id)storeConfigurationForDonation;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMIntelligenceEngineInteractionLibraryNode

+ (id)configurationForDonation
{
  v32[7] = *MEMORY[0x1E69E9840];
  storeConfigurationForDonation = [self storeConfigurationForDonation];
  syncPolicyForDonation = [self syncPolicyForDonation];
  v3 = objc_alloc(MEMORY[0x1E698F330]);
  v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(candidateInteractions argumentArray:$g, $g.candidateId.identifier == $uninstalled AND $g.candidateId.type.app != NULL).@count > 0 OR SUBQUERY(tupleInteraction.candidateIds, $g, $g.identifier == $uninstalled AND $g.type.app != NULL).@count > 0", 0];
  v28 = [v3 initWithIdentifier:@"app-uninstall" predicate:v29];
  v32[0] = v28;
  v4 = objc_alloc(MEMORY[0x1E698F330]);
  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(candidateInteractions argumentArray:$g, NOT ($g.candidateId.identifier IN $installed) AND $g.candidateId.type.app != NULL).@count > 0 OR SUBQUERY(tupleInteraction.candidateIds, $g, NOT ($g.identifier IN $installed) AND $g.type.app != NULL).@count > 0", 0];
  v26 = [v4 initWithIdentifier:@"app-uninstall-nightly" predicate:v27];
  v32[1] = v26;
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(candidateInteractions argumentArray:$g, $g.candidateId.identifier IN $deleted AND $g.candidateId.type.person != NULL).@count > 0 OR SUBQUERY(tupleInteraction.candidateIds, $g, $g.identifier IN $deleted AND $g.type.person != NULL).@count > 0", 0];
  v6 = [v5 initWithIdentifier:@"contact-deleted" predicate:v25];
  v32[2] = v6;
  v7 = objc_alloc(MEMORY[0x1E698F330]);
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v9 = [v7 initWithIdentifier:@"delete-siri-dictation-history" predicate:v8];
  v32[3] = v9;
  v10 = objc_alloc(MEMORY[0x1E698F330]);
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v12 = [v10 initWithIdentifier:@"disable-siri" predicate:v11];
  v32[4] = v12;
  v13 = objc_alloc(MEMORY[0x1E698F330]);
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"FALSEPREDICATE" argumentArray:0];
  v15 = [v13 initWithIdentifier:@"intent-deletion" predicate:v14];
  v32[5] = v15;
  v16 = objc_alloc(MEMORY[0x1E698F330]);
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(ANY candidateInteractions.candidateId.identifier IN $disabledApps AND candidateInteractions.candidateId.type.app != nil) OR (ANY tupleInteraction.candidateIds.identifier IN $disabledApps AND tupleInteraction.candidateIds.type.app != nil)" argumentArray:0];
  v18 = [v16 initWithIdentifier:@"learn-from-this-app" predicate:v17];
  v32[6] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:7];

  v20 = MEMORY[0x1E698F338];
  v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A5D4D71C-2E3F-47ED-8772-1C04D0A6E738"];
  BYTE2(v24) = 1;
  LOWORD(v24) = 1;
  v22 = [v20 _libraryStreamConfigurationWithUUID:v21 streamIdentifier:@"IntelligenceEngine.Interaction.Donation" eventClass:objc_opt_class() storeConfig:storeConfigurationForDonation syncPolicy:syncPolicyForDonation legacyNames:0 internalMetadata:0 enableSubscriptions:v24 enableSubscriptionSubstream:0 enableTombstoneSubstream:v19 allowedClients:@"com.apple.intelligenceflowd" pruningTriggers:? spaceAttributionOwner:?];

  return v22;
}

+ (id)Donation
{
  v15 = *MEMORY[0x1E69E9840];
  configurationForDonation = [self configurationForDonation];
  v3 = +[BMIntelligenceEngineInteraction columns];
  v4 = BMEventTimestampSQLColumn();
  v12 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v13 = v5;
  v6 = BMEventClassNameSQLColumn();
  v14 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v12, v13}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"IntelligenceEngine.Interaction.Donation" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"IntelligenceEngine.Interaction.Donation" schema:v9 configuration:configurationForDonation];

  return v10;
}

+ (id)storeConfigurationForDonation
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:5242880 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:31536000.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"IntelligenceEngine.Interaction.Donation" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Donation"])
  {
    donation = [self Donation];
  }

  else
  {
    donation = 0;
  }

  return donation;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMIntelligenceEngineInteraction validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end