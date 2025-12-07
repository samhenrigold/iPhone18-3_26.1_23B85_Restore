@interface WFVoiceMemosActionIdentifiersMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFVoiceMemosActionIdentifiersMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1200"))
  {
    if (WFWorkflowHasActionsWithIdentifier(@"com.apple.VoiceMemos.PlayRecording", migrationCopy))
    {
      HasActionsWithIdentifier = 1;
    }

    else
    {
      HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"com.apple.VoiceMemos.CreateRecording", migrationCopy);
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
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKeyedSubscript:actionIdentifierKey];

        if (objc_msgSend_isEqualToString_(v9))
        {
          v10 = @"com.apple.VoiceMemos.PlaybackVoiceMemoIntent";
          v11 = @"PlaybackVoiceMemoIntent";
        }

        else
        {
          if (!objc_msgSend_isEqualToString_(v9))
          {
            goto LABEL_11;
          }

          v10 = @"com.apple.VoiceMemos.RecordVoiceMemoIntent";
          v11 = @"RecordVoiceMemoIntent";
        }

        actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
        [v7 setObject:v10 forKeyedSubscript:actionIdentifierKey2];

        actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
        v14 = [v7 objectForKeyedSubscript:actionParametersKey];
        v15 = [v14 objectForKeyedSubscript:@"AppIntentDescriptor"];
        [v15 setObject:v11 forKeyedSubscript:@"AppIntentIdentifier"];

LABEL_11:
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
}

@end