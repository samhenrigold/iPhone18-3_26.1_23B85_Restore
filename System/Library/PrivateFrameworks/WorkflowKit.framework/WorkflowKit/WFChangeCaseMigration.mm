@interface WFChangeCaseMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFChangeCaseMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"142") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.text.changecase", migrationCopy);
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
  actions = [(WFWorkflowMigration *)self actions];
  v4 = [actions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKeyedSubscript:actionIdentifierKey];
        isEqualToString = objc_msgSend_isEqualToString_(v10);

        if (isEqualToString)
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v13 = [v8 objectForKey:actionParametersKey];

          v14 = [v13 objectForKeyedSubscript:@"WFCaseType"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v13 objectForKeyedSubscript:@"WFCaseType"];
            v16 = objc_msgSend_isEqualToString_(v15);

            if (v16)
            {
              [v13 setObject:@"Capitalize Every Word" forKeyedSubscript:@"WFCaseType"];
            }
          }

          else
          {
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [actions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
}

@end