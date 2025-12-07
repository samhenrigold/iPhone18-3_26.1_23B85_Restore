@interface WFCurrentDateActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (NSDateFormatter)dateFormatter;
- (void)migrateWorkflow;
@end

@implementation WFCurrentDateActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"128") == 3)
  {
    if (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.currentdate", migrationCopy))
    {
      HasActionsWithIdentifier = 1;
    }

    else
    {
      HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.date", migrationCopy);
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
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v24 = *v26;
    v5 = @"WFDateActionDate";
    do
    {
      for (i = 0; i != v4; ++i)
      {
        v7 = v5;
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKey:actionIdentifierKey];

        if ((objc_msgSend_isEqualToString_(v10) & 1) != 0 || objc_msgSend_isEqualToString_(v10) && (-[WFWorkflowMigration actionParametersKey](self, "actionParametersKey"), v14 = objc_claimAutoreleasedReturnValue(), [v8 objectForKeyedSubscript:v14], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKeyedSubscript:", v5), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, !v16))
        {
          actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v8 setObject:@"is.workflow.actions.date" forKeyedSubscript:actionIdentifierKey2];

          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v13 = [v8 objectForKeyedSubscript:actionParametersKey];

          [v13 setObject:@"Current Date" forKeyedSubscript:@"WFDateActionMode"];
        }

        else
        {
          v5 = v7;
          if (!objc_msgSend_isEqualToString_(v10))
          {
            goto LABEL_14;
          }

          actionParametersKey2 = [(WFWorkflowMigration *)self actionParametersKey];
          v13 = [v8 objectForKey:actionParametersKey2];

          [v13 setObject:@"Specified Date" forKeyedSubscript:@"WFDateActionMode"];
          v18 = [v13 objectForKeyedSubscript:v7];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            dateFormatter = [(WFCurrentDateActionMigration *)self dateFormatter];
            v21 = [v13 objectForKeyedSubscript:v7];
            v22 = [dateFormatter stringFromDate:v21];
            [v13 setObject:v22 forKeyedSubscript:v7];
          }
        }

        v5 = v7;
LABEL_14:
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
}

- (NSDateFormatter)dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_dateFormatter;
    self->_dateFormatter = v4;

    [(NSDateFormatter *)self->_dateFormatter setDateStyle:2];
    [(NSDateFormatter *)self->_dateFormatter setTimeStyle:1];
    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

@end