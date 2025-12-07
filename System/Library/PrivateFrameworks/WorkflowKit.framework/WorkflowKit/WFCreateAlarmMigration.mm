@interface WFCreateAlarmMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFCreateAlarmMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.alarm.create", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v72 = *MEMORY[0x1E69E9840];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v2 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v57;
    *&v3 = 136315906;
    v42 = v3;
    v48 = *v57;
    do
    {
      v6 = 0;
      v43 = v4;
      do
      {
        if (*v57 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v6;
        v7 = *(*(&v56 + 1) + 8 * v6);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKeyedSubscript:actionIdentifierKey];
        isEqualToString = objc_msgSend_isEqualToString_(v9);

        if (isEqualToString)
        {
          actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v7 setObject:@"com.apple.mobiletimer-framework.MobileTimerIntents.MTCreateAlarmIntent" forKeyedSubscript:actionIdentifierKey2];

          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v13 = [v7 objectForKeyedSubscript:actionParametersKey];

          v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
          v15 = [v13 objectForKeyedSubscript:@"WFTime"];

          if (v15)
          {
            v16 = [v13 objectForKeyedSubscript:@"WFTime"];
            [v14 setObject:v16 forKey:@"dateComponents"];
          }

          v49 = v14;
          v17 = [v13 objectForKeyedSubscript:@"WFLabel"];

          if (v17)
          {
            v18 = [v13 objectForKeyedSubscript:@"WFLabel"];
            [v14 setObject:v18 forKey:@"label"];
          }

          v19 = [v13 objectForKeyedSubscript:@"WFFrequency"];

          v5 = v48;
          if (v19)
          {
            v46 = v13;
            v47 = v7;
            v20 = [v13 objectForKeyedSubscript:@"WFFrequency"];
            v21 = objc_opt_class();
            v22 = v20;
            if (v22 && (objc_opt_isKindOfClass() & 1) == 0)
            {
              v24 = getWFGeneralLogObject();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
              {
                v25 = objc_opt_class();
                *buf = v42;
                v65 = "WFEnforceClass";
                v66 = 2114;
                v67 = v22;
                v68 = 2114;
                v69 = v25;
                v70 = 2114;
                v71 = v21;
                v26 = v25;
                _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
              }

              v23 = 0;
            }

            else
            {
              v23 = v22;
            }

            v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v23, "count")}];
            v45 = objc_alloc_init(MEMORY[0x1E696AB78]);
            weekdaySymbols = [v45 weekdaySymbols];
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v29 = v23;
            v30 = [v29 countByEnumeratingWithState:&v52 objects:v62 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v53;
              do
              {
                v33 = 0;
                do
                {
                  if (*v53 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = softLinkSAAlarmDayOfWeekForString(*(*(&v52 + 1) + 8 * v33));
                  v35 = 0;
                  if (v34 <= 4)
                  {
                    if (v34 > 2)
                    {
                      if (v34 == 3)
                      {
                        v35 = 1;
                        v36 = 1;
                      }

                      else
                      {
                        v35 = 2;
                        v36 = 2;
                      }
                    }

                    else
                    {
                      if (v34 < 2)
                      {
                        goto LABEL_41;
                      }

                      if (v34 != 2)
                      {
                        v37 = 0;
                        goto LABEL_40;
                      }

                      v36 = 64;
                    }

                    goto LABEL_39;
                  }

                  if (v34 <= 6)
                  {
                    if (v34 == 5)
                    {
                      v35 = 3;
                      v36 = 4;
                    }

                    else
                    {
                      v35 = 4;
                      v36 = 8;
                    }

                    goto LABEL_39;
                  }

                  if (v34 == 7)
                  {
                    v35 = 5;
                    v36 = 16;
                    goto LABEL_39;
                  }

                  v37 = 0;
                  if (v34 == 8)
                  {
                    v35 = 6;
                    v36 = 32;
LABEL_39:
                    v37 = [weekdaySymbols objectAtIndexedSubscript:v35];
                    v35 = v36;
                  }

LABEL_40:
                  v60[0] = @"displayString";
                  v60[1] = @"value";
                  v61[0] = v37;
                  v38 = [MEMORY[0x1E696AD98] numberWithInteger:v35];
                  v61[1] = v38;
                  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
                  [v27 addObject:v39];

LABEL_41:
                  ++v33;
                }

                while (v31 != v33);
                v40 = [v29 countByEnumeratingWithState:&v52 objects:v62 count:16];
                v31 = v40;
              }

              while (v40);
            }

            [v49 setObject:v27 forKey:@"repeatSchedule"];
            v7 = v47;
            v5 = v48;
            v4 = v43;
            v13 = v46;
          }

          if ([v49 count])
          {
            actionParametersKey2 = [(WFWorkflowMigration *)self actionParametersKey];
            [v7 setObject:v49 forKeyedSubscript:actionParametersKey2];
          }
        }

        v6 = v51 + 1;
      }

      while (v51 + 1 != v4);
      v4 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
}

@end