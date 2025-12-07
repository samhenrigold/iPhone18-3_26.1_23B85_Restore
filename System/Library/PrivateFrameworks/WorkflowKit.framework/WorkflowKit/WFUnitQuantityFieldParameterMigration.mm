@interface WFUnitQuantityFieldParameterMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFUnitQuantityFieldParameterMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"996"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.searchlocalbusinesses", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  selfCopy = self;
  v33 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  actions = [(WFWorkflowMigration *)self actions];
  v4 = [actions countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = @"is.workflow.actions.searchlocalbusinesses";
    v7 = *v25;
    v22 = selfCopy;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(actions);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        actionIdentifierKey = [(WFWorkflowMigration *)selfCopy actionIdentifierKey];
        v11 = [v9 objectForKeyedSubscript:actionIdentifierKey];

        if (objc_msgSend_isEqualToString_(v11))
        {
          actionParametersKey = [(WFWorkflowMigration *)selfCopy actionParametersKey];
          v13 = [v9 objectForKeyedSubscript:actionParametersKey];

          v14 = [v13 objectForKey:@"WFSearchRadius"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (v14 && (isKindOfClass & 1) != 0)
          {
            v23 = [v13 objectForKeyedSubscript:@"WFSearchRadius"];
            v28[0] = @"Magnitude";
            v28[1] = @"Unit";
            v29[0] = v23;
            v29[1] = @"km";
            v30[0] = @"Value";
            v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
            v30[1] = @"WFSerializationType";
            v31[0] = v16;
            v31[1] = @"WFQuantityFieldValue";
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
            v17 = v7;
            v18 = v5;
            v19 = v6;
            v21 = v20 = actions;

            selfCopy = v22;
            [v13 setObject:v21 forKey:@"WFSearchRadius"];

            actions = v20;
            v6 = v19;
            v5 = v18;
            v7 = v17;
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [actions countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)selfCopy finish];
}

@end