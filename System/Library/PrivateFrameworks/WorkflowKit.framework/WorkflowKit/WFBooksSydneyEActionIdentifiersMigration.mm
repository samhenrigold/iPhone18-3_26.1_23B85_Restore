@interface WFBooksSydneyEActionIdentifiersMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFBooksSydneyEActionIdentifiersMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1400"))
  {
    if (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.OpenRecentBookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.PlayRecentAudiobookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.OpenRecentBookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.PlayRecentAudiobookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.OpenBookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.PlayAudiobookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.OpenBookIntent", migrationCopy))
    {
      HasActionsWithIdentifier = 1;
    }

    else
    {
      HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.PlayAudiobookIntent", migrationCopy);
    }
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v25 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v8 = [v6 objectForKeyedSubscript:actionIdentifierKey];

        if ((objc_msgSend_isEqualToString_(v8) & 1) != 0 || (objc_msgSend_isEqualToString_(v8) & 1) != 0 || (objc_msgSend_isEqualToString_(v8) & 1) != 0 || objc_msgSend_isEqualToString_(v8))
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v10 = [v6 objectForKeyedSubscript:actionParametersKey];
          v11 = [v10 objectForKeyedSubscript:@"target"];

          if (v11)
          {
            actionParametersKey2 = [(WFWorkflowMigration *)self actionParametersKey];
            v13 = [v6 objectForKeyedSubscript:actionParametersKey2];
            [v13 setObject:@"specific" forKeyedSubscript:@"mode"];
          }
        }

        if (objc_msgSend_isEqualToString_(v8) & 1) != 0 || (objc_msgSend_isEqualToString_(v8))
        {
          v14 = @"com.apple.iBooks.OpenBookIntent";
          v15 = @"OpenBookIntent";
LABEL_15:
          actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v6 setObject:v14 forKeyedSubscript:actionIdentifierKey2];

          actionParametersKey3 = [(WFWorkflowMigration *)self actionParametersKey];
          v18 = [v6 objectForKeyedSubscript:actionParametersKey3];
          v19 = [v18 objectForKeyedSubscript:@"AppIntentDescriptor"];
          [v19 setObject:v15 forKeyedSubscript:@"AppIntentIdentifier"];

          actionParametersKey4 = [(WFWorkflowMigration *)self actionParametersKey];
          v21 = [v6 objectForKeyedSubscript:actionParametersKey4];
          v22 = [v21 objectForKeyedSubscript:@"AppIntentDescriptor"];
          [v22 setObject:@"com.apple.iBooks" forKeyedSubscript:@"BundleIdentifier"];

          goto LABEL_16;
        }

        if ((objc_msgSend_isEqualToString_(v8) & 1) != 0 || objc_msgSend_isEqualToString_(v8))
        {
          v14 = @"com.apple.iBooks.PlayAudiobookIntent";
          v15 = @"PlayAudiobookIntent";
          goto LABEL_15;
        }

LABEL_16:

        ++v5;
      }

      while (v4 != v5);
      v23 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v4 = v23;
    }

    while (v23);
  }

  [(WFWorkflowMigration *)self finish];
}

@end