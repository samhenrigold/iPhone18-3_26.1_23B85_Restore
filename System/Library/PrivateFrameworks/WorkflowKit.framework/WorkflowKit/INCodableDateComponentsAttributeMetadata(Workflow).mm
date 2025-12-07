@interface INCodableDateComponentsAttributeMetadata(Workflow)
- (WFDateFieldParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
@end

@implementation INCodableDateComponentsAttributeMetadata(Workflow)

- (WFDateFieldParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
      v11 = [v9 _intents_readableTitleWithLocalizer:v10 metadata:self];

      v12 = [[WFVariableString alloc] initWithString:v11];
      v13 = [(WFVariableStringParameterState *)[WFDateFieldParameterState alloc] initWithVariableString:v12];

      goto LABEL_8;
    }

    v14 = getWFGeneralLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "WFEnforceClass";
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v8;
      v15 = v23;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }
  }

  v17.receiver = self;
  v17.super_class = &off_1F4AFD808;
  v13 = objc_msgSendSuper2(&v17, sel_wf_parameterStateForIntentValue_parameterDefinition_, v9, v7);
LABEL_8:

  return v13;
}

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = &off_1F4AFD808;
  v2 = objc_msgSendSuper2(&v9, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_);
  type = [self type];
  if (type <= 2 && (v4 = *off_1E8375DE0[type]) != 0)
  {
    v5 = v4;
    v10 = @"HintDateMode";
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v2 definitionByAddingEntriesInDictionary:v6];
  }

  else
  {
    v7 = v2;
  }

  return v7;
}

@end