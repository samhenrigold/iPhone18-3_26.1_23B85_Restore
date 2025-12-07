@interface INCodableNumberAttributeMetadata(Workflow)
- (WFNumberSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_parameterClass;
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
@end

@implementation INCodableNumberAttributeMetadata(Workflow)

- (WFNumberSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      if ([self type])
      {
        v10 = [[WFNumberSubstitutableState alloc] initWithNumber:v9];
      }

      else
      {
        v13 = [WFNumberStringSubstitutableState alloc];
        stringValue = [v9 stringValue];
        v10 = [(WFNumberStringSubstitutableState *)v13 initWithValue:stringValue];
      }

      goto LABEL_11;
    }

    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v18 = "WFEnforceClass";
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = v8;
      v12 = v22;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }
  }

  v16.receiver = self;
  v16.super_class = &off_1F4AFF468;
  v10 = objc_msgSendSuper2(&v16, sel_wf_parameterStateForIntentValue_parameterDefinition_, v9, v7);
LABEL_11:

  return v10;
}

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v48[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v34.receiver = self;
  v34.super_class = &off_1F4AFF468;
  v10 = objc_msgSendSuper2(&v34, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_, a3, v8, v9);
  type = [self type];
  defaultValue = [self defaultValue];
  if (defaultValue)
  {
    if ([self type])
    {
      v45 = @"DefaultValue";
      v46 = defaultValue;
      stringValue = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v14 = [v10 definitionByAddingEntriesInDictionary:stringValue];
    }

    else
    {
      v47 = @"DefaultValue";
      stringValue = [defaultValue stringValue];
      v48[0] = stringValue;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      v14 = [v10 definitionByAddingEntriesInDictionary:v15];

      v10 = v15;
    }

    v10 = v14;
  }

  v43 = @"AllowsNegativeNumbers";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "supportsNegativeNumbers")}];
  v44 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v18 = [v10 definitionByAddingEntriesInDictionary:v17];

  if (!type)
  {
    v35 = @"AllowsDecimalNumbers";
    valueType = [v8 valueType];
    v32 = MEMORY[0x1E695E110];
    if (valueType == 21)
    {
      v32 = MEMORY[0x1E695E118];
    }

    v36 = v32;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v30 = [v18 definitionByAddingEntriesInDictionary:v25];
    goto LABEL_16;
  }

  minimumValue = [self minimumValue];
  maximumValue = [self maximumValue];
  if (minimumValue)
  {
    v41 = @"MinimumValue";
    v42 = minimumValue;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v22 = [v18 definitionByAddingEntriesInDictionary:v21];

    v18 = v22;
  }

  if (maximumValue)
  {
    v39 = @"MaximumValue";
    v40 = maximumValue;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v24 = [v18 definitionByAddingEntriesInDictionary:v23];

    v18 = v24;
  }

  if (type == 1)
  {
    v37[0] = @"StepperDescription";
    v25 = [v8 localizedDisplayNameWithLocalizer:v9];
    v37[1] = @"StepperNoun";
    v38[0] = v25;
    v26 = MEMORY[0x1E696AEC0];
    v27 = [v8 localizedDisplayNameWithLocalizer:v9];
    v28 = [v26 localizedStringWithFormat:@"%@: %@", v27, @"%ld"];
    v38[1] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v30 = [v18 definitionByAddingEntriesInDictionary:v29];

    v18 = v27;
LABEL_16:

    v18 = v30;
  }

  return v18;
}

- (id)wf_parameterClass
{
  if ([self type] > 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = objc_opt_class();
  }

  return v1;
}

@end