@interface WFRoundNumberActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFRoundNumberActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.round", migrationCopy);
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
  v49 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = @"is.workflow.actions.round";
    v6 = *v43;
    v39 = *v43;
    do
    {
      v7 = 0;
      v38 = v4;
      do
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v42 + 1) + 8 * v7);
        actionIdentifierKey = [(WFWorkflowMigration *)selfCopy actionIdentifierKey];
        v10 = [v8 objectForKey:actionIdentifierKey];

        if (objc_msgSend_isEqualToString_(v10))
        {
          actionParametersKey = [(WFWorkflowMigration *)selfCopy actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:actionParametersKey];

          v41 = [v12 objectForKeyedSubscript:@"WFRoundType"];
          isEqualToString = objc_msgSend_isEqualToString_(v41);
          v14 = isEqualToString;
          v46[0] = &unk_1F4A9A5D0;
          v46[1] = &unk_1F4A9A5E8;
          v15 = @"Tenths";
          if (isEqualToString)
          {
            v15 = @"Tens Place";
          }

          v47[0] = @"Ones Place";
          v47[1] = v15;
          v16 = @"Hundredths";
          if (isEqualToString)
          {
            v16 = @"Hundreds Place";
          }

          v46[2] = &unk_1F4A9A600;
          v46[3] = &unk_1F4A9A618;
          v17 = @"Thousandths";
          if (isEqualToString)
          {
            v17 = @"Thousands";
          }

          v47[2] = v16;
          v47[3] = v17;
          v18 = @"Ten Thousandths";
          if (isEqualToString)
          {
            v18 = @"Ten Thousands";
          }

          v46[4] = &unk_1F4A9A630;
          v46[5] = &unk_1F4A9A648;
          v19 = @"Hundred Thousandths";
          if (isEqualToString)
          {
            v19 = @"Hundred Thousands";
          }

          v47[4] = v18;
          v47[5] = v19;
          v20 = @"Millionths";
          if (isEqualToString)
          {
            v20 = @"Millions";
          }

          v46[6] = &unk_1F4A9A660;
          v46[7] = &unk_1F4A9A678;
          v21 = @"Ten Millionths";
          if (isEqualToString)
          {
            v21 = @"10 ^";
          }

          v47[6] = v20;
          v47[7] = v21;
          v22 = @"Hundred Millionths";
          if (isEqualToString)
          {
            v22 = @"10 ^";
          }

          v46[8] = &unk_1F4A9A690;
          v46[9] = &unk_1F4A9A6A8;
          v23 = @"Billionths";
          if (isEqualToString)
          {
            v23 = @"10 ^";
          }

          v47[8] = v22;
          v47[9] = v23;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:10];
          v25 = [v12 objectForKey:@"WFRoundType"];

          if (v25)
          {
LABEL_28:
            v27 = [v12 objectForKey:@"WFRoundDecimalPlaces"];
            if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v12 setObject:v27 forKey:@"WFRoundTo"];
            }

            else
            {
              v28 = selfCopy;
              v29 = v5;

              v30 = [v12 objectForKey:@"WFRoundDecimalPlaces"];
              integerValue = [v30 integerValue];
              if (integerValue >= 0)
              {
                v32 = integerValue;
              }

              else
              {
                v32 = -integerValue;
              }

              v33 = [MEMORY[0x1E696AD98] numberWithInteger:v32];
              v27 = [v24 objectForKey:v33];

              if (v27 && (objc_msgSend_isEqualToString_(v27) & 1) == 0)
              {
                [v12 setObject:v27 forKey:@"WFRoundTo"];
              }

              else
              {
                [v12 setObject:@"10 ^" forKey:@"WFRoundTo"];
                if (v14)
                {
                  v34 = v32;
                }

                else
                {
                  v34 = -v32;
                }

                v35 = [MEMORY[0x1E696AD98] numberWithInteger:v34];
                [v12 setObject:v35 forKey:@"TenToThePowerOf"];
              }

              v5 = v29;
              selfCopy = v28;
              v4 = v38;
            }

            v36 = [v12 objectForKey:@"WFRoundType"];

            if (v36)
            {
              [v12 removeObjectForKey:@"WFRoundType"];
            }

            v37 = [v12 objectForKey:@"WFRoundDecimalPlaces"];

            if (v37)
            {
              [v12 removeObjectForKey:@"WFRoundDecimalPlaces"];
            }
          }

          else
          {
            v26 = [v12 objectForKey:@"WFRoundDecimalPlaces"];

            if (v26)
            {
              v14 = 1;
              goto LABEL_28;
            }
          }

          v6 = v39;
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)selfCopy finish];
}

@end