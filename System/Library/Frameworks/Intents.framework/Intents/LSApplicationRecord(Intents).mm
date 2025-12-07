@interface LSApplicationRecord(Intents)
- (id)in_counterpartIdentifiers;
- (id)in_documentTypes;
- (id)in_supportedIntents;
@end

@implementation LSApplicationRecord(Intents)

- (id)in_supportedIntents
{
  v34 = *MEMORY[0x1E69E9840];
  applicationExtensionRecords = [self applicationExtensionRecords];
  allObjects = [applicationExtensionRecords allObjects];
  v4 = [allObjects if_objectsPassingTest:&__block_literal_global_104604];
  v5 = [v4 mutableCopy];

  bundleIdentifier = [self bundleIdentifier];
  LOBYTE(allObjects) = [bundleIdentifier hasPrefix:@"com.apple.shortcuts"];

  if (allObjects)
  {
    v7 = @"com.apple.WorkflowKit.ShortcutsIntents";
  }

  else
  {
    bundleIdentifier2 = [self bundleIdentifier];
    v9 = [bundleIdentifier2 isEqualToString:@"com.apple.mobiletimer"];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = @"com.apple.mobiletimer-framework.MobileTimerIntents";
  }

  v10 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v7 error:0];
  [v5 if_addObjectIfNonNil:v10];

LABEL_6:
  v28 = [MEMORY[0x1E695DFA8] set];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        if_extensionAttributesDictionary = [v17 if_extensionAttributesDictionary];
        v19 = [if_extensionAttributesDictionary objectForKeyedSubscript:@"IntentsSupported"];
        if ([v19 count])
        {
          extensionPointRecord = [v17 extensionPointRecord];
          identifier = [extensionPointRecord identifier];

          v22 = [MEMORY[0x1E695DFD8] setWithArray:v19];
          [dictionary setObject:v22 forKeyedSubscript:identifier];

          [v28 addObjectsFromArray:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v23 = MEMORY[0x1E695DFA8];
  supportedIntents = [v27 supportedIntents];
  v25 = [v23 setWithArray:supportedIntents];

  [v25 unionSet:v28];

  return v25;
}

- (id)in_counterpartIdentifiers
{
  counterpartIdentifiers = [self counterpartIdentifiers];

  if (counterpartIdentifiers)
  {
    v3 = MEMORY[0x1E695DFD8];
    counterpartIdentifiers2 = [self counterpartIdentifiers];
    v5 = [v3 setWithArray:counterpartIdentifiers2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)in_documentTypes
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.maps.directionsrequest", @"com.appcubby.launchpro.lcpbackup", 0}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  claimRecords = [self claimRecords];
  v5 = [claimRecords countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(claimRecords);
        }

        typeIdentifiers = [*(*(&v11 + 1) + 8 * i) typeIdentifiers];
        [v2 addObjectsFromArray:typeIdentifiers];
      }

      v6 = [claimRecords countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v2 minusSet:v3];

  return v2;
}

@end