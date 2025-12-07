@interface WFRecordAudioTimeIntervalMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFRecordAudioTimeIntervalMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1113.1"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.recordaudio", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  [(WFWorkflowMigration *)self enumerateActionsWithIdentifier:@"is.workflow.actions.recordaudio" usingBlock:&__block_literal_global_35611];

  [(WFWorkflowMigration *)self finish];
}

void __53__WFRecordAudioTimeIntervalMigration_migrateWorkflow__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"WFRecordingTimeInterval"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [WFQuantityParameterState alloc];
    v6 = [[WFNumberStringSubstitutableState alloc] initWithValue:&stru_1F4A1C408];
    v7 = [(WFQuantityParameterState *)v5 initWithMagnitudeState:v6 unitString:@"sec"];
LABEL_5:
    v10 = v7;

    v11 = [v10 serializedRepresentation];
    [v3 setObject:v11 forKeyedSubscript:@"WFRecordingTimeInterval"];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
    v9 = v8;
    v23[0] = @"sec";
    v23[1] = @"min";
    v23[2] = @"hr";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    v7 = [WFDurationQuantityFieldParameter stateForDuration:v6 possibleUnits:v9];
    goto LABEL_5;
  }

  v12 = v4;
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

  v10 = v13;

  v14 = [v10 objectForKeyedSubscript:@"WFSerializationType"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v11 = v15;

  if ((objc_msgSend_isEqualToString_(v11) & 1) == 0 && objc_msgSend_isEqualToString_(v11))
  {
    v16 = [v10 objectForKeyedSubscript:@"Value"];
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = objc_opt_new();
    [v19 setValue:v18 forKey:@"Magnitude"];

    [v19 setValue:@"sec" forKey:@"Unit"];
    v21[0] = @"WFSerializationType";
    v21[1] = @"Value";
    v22[0] = @"WFQuantityFieldValue";
    v22[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v3 setObject:v20 forKeyedSubscript:@"WFRecordingTimeInterval"];
  }

LABEL_6:
}

@end