@interface WFAddNewReminderActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFAddNewReminderActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.addnewreminder", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    v30 = *v33;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * v6);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKey:actionIdentifierKey];

        if (objc_msgSend_isEqualToString_(v9))
        {
          v10 = v4;
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v7 objectForKeyedSubscript:actionParametersKey];

          v13 = [v12 objectForKeyedSubscript:@"WFCalendarItemAlert"];

          if (v13)
          {
            [v12 removeObjectForKey:@"WFCalendarItemAlert"];
          }

          v14 = [v12 objectForKey:@"WFAlertTrigger"];
          if (!v14)
          {
            goto LABEL_23;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 setObject:@"Alert" forKey:@"WFAlertEnabled"];
            v15 = v14;
            if (objc_msgSend_isEqualToString_(v15))
            {
              v16 = [v12 objectForKey:@"WFAlertLocationProximity"];
              if (!v16)
              {
                goto LABEL_15;
              }

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v18 = v16;
              if ((isKindOfClass & 1) == 0)
              {
                goto LABEL_16;
              }

              if (objc_msgSend_isEqualToString_(v16))
              {
LABEL_15:
                v18 = @"When I Arrive";
                goto LABEL_16;
              }

              isEqualToString = objc_msgSend_isEqualToString_(v16);
              v18 = @"When I Leave";
              if (isEqualToString)
              {
LABEL_16:
                [v12 setObject:v18 forKey:@"WFAlertCondition"];
              }

              v19 = [v12 objectForKey:@"WFAlertLocationRadius"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v39[0] = @"Value";
                v37[0] = @"Magnitude";
                stringValue = [v19 stringValue];
                v37[1] = @"Unit";
                v38[0] = stringValue;
                v38[1] = @"m";
                [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
                v20 = v29 = v16;
                v39[1] = @"WFSerializationType";
                v40[0] = v20;
                v40[1] = @"WFQuantityFieldValue";
                v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];

                v16 = v29;
                [v12 setObject:v21 forKey:@"WFAlertLocationRadius"];
              }

LABEL_22:
              v36[0] = @"WFAlertLocationRadius";
              v36[1] = @"WFAlertLocationProximity";
              v36[2] = @"WFAlertTrigger";
              v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
              [v12 removeObjectsForKeys:v25];

LABEL_23:
              v4 = v10;
              v5 = v30;
              goto LABEL_24;
            }

            if (!objc_msgSend_isEqualToString_(v15))
            {
              goto LABEL_22;
            }

            v22 = v12;
            v23 = @"At Time";
            v24 = @"WFAlertCondition";
          }

          else
          {
            v15 = [v12 objectForKey:@"WFAlertTrigger"];
            v22 = v12;
            v23 = v15;
            v24 = @"WFAlertEnabled";
          }

          [v22 setObject:v23 forKey:v24];
          goto LABEL_22;
        }

LABEL_24:

        ++v6;
      }

      while (v4 != v6);
      v27 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
      v4 = v27;
    }

    while (v27);
  }

  [(WFWorkflowMigration *)self finish];
}

@end