@interface WFFolderActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFFolderActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"2035") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.folder", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  actions = [(WFWorkflowMigration *)self actions];
  v4 = [actions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKey:actionIdentifierKey];

        if (objc_msgSend_isEqualToString_(v10))
        {
          actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v8 setObject:@"is.workflow.actions.file" forKeyedSubscript:actionIdentifierKey2];

          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v13 = [v8 objectForKeyedSubscript:actionParametersKey];

          v14 = [v13 objectForKeyedSubscript:@"WFFolder"];
          [v13 setObject:v14 forKeyedSubscript:@"WFFile"];
          [v13 removeObjectForKey:@"WFFolder"];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [actions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
}

@end