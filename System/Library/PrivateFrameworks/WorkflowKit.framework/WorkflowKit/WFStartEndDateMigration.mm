@interface WFStartEndDateMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFStartEndDateMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"128") == 3)
  {
    if (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.getstartdate", migrationCopy))
    {
      HasActionsWithIdentifier = 1;
    }

    else
    {
      HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.getenddate", migrationCopy);
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
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKey:actionIdentifierKey];

        v10 = @"Start Date";
        if ((objc_msgSend_isEqualToString_(v9) & 1) != 0 || (v10 = @"End Date", objc_msgSend_isEqualToString_(v9)))
        {
          actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v7 setObject:@"is.workflow.actions.properties.calendarevents" forKeyedSubscript:actionIdentifierKey2];

          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v13 = [v7 objectForKey:actionParametersKey];

          [v13 setObject:v10 forKey:@"WFContentItemPropertyName"];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
}

@end