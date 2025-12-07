@interface WFInputActionInjectedParametersMigration
- (void)migrateWorkflow;
@end

@implementation WFInputActionInjectedParametersMigration

- (void)migrateWorkflow
{
  workflow = [(WFWorkflowMigration *)self workflow];
  v4 = [workflow objectForKeyedSubscript:@"WFWorkflowNoInputBehavior"];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_1501(v4, v5);
  v27 = [v6 mutableCopy];

  if (!v27)
  {
    [(WFWorkflowMigration *)self finish];
    goto LABEL_17;
  }

  v7 = [v27 objectForKeyedSubscript:@"Name"];
  v8 = objc_opt_class();
  v9 = WFEnforceClass_1501(v7, v8);

  if (objc_msgSend_isEqualToString_(v9))
  {
    v10 = [v27 objectForKeyedSubscript:@"Parameters"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_opt_new();
    }

    v16 = v15;

    v17 = [v16 objectForKeyedSubscript:@"ItemClass"];
    v18 = objc_opt_class();
    v19 = WFEnforceClass_1501(v17, v18);

    v20 = objc_opt_new();
    if (objc_msgSend_isEqualToString_(v19))
    {
      [v16 setObject:@"WFGenericFileContentItem" forKeyedSubscript:@"ItemClass"];
      [v20 setObject:@"Folders" forKeyedSubscript:@"WFPickingMode"];
    }

    v21 = [v16 objectForKeyedSubscript:@"AllowMultipleSelection"];
    v22 = objc_opt_class();
    v23 = WFEnforceClass_1501(v21, v22);
    bOOLValue = [v23 BOOLValue];

    if (!bOOLValue)
    {
      goto LABEL_15;
    }

    if (objc_msgSend_isEqualToString_(v19) & 1) != 0 || (objc_msgSend_isEqualToString_(v19))
    {
      v25 = @"SelectMultiple";
    }

    else if (objc_msgSend_isEqualToString_(v19))
    {
      v25 = @"WFSelectMultiplePhotos";
    }

    else if (objc_msgSend_isEqualToString_(v19))
    {
      v25 = @"WFSelectMultiple";
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v19))
      {
        goto LABEL_15;
      }

      v25 = @"WFExportSongActionSelectMultiple";
    }

    [v20 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v25];
LABEL_15:
    [v16 setObject:v20 forKeyedSubscript:@"SerializedParameters"];
    [v27 setObject:v16 forKeyedSubscript:@"Parameters"];
    workflow2 = [(WFWorkflowMigration *)self workflow];
    [workflow2 setObject:v27 forKeyedSubscript:@"WFWorkflowNoInputBehavior"];

    [(WFWorkflowMigration *)self finish];
    goto LABEL_16;
  }

  [(WFWorkflowMigration *)self finish];
LABEL_16:

LABEL_17:
}

@end