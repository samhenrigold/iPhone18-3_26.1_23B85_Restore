@interface WFSaveFileMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFSaveFileMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1106"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.documentpicker.save", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKey:actionIdentifierKey];

        if (objc_msgSend_isEqualToString_(v9))
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v11 = [v7 objectForKeyedSubscript:actionParametersKey];

          v12 = [v11 objectForKeyedSubscript:@"WFFileStorageService"];
          if (v12)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          isEqualToString = objc_msgSend_isEqualToString_(v14);
          if (isEqualToString)
          {
            actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
            [v7 setObject:@"is.workflow.actions.dropbox.savefile" forKey:actionIdentifierKey2];
          }

          [v11 removeObjectForKey:@"WFFileStorageService"];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
}

@end