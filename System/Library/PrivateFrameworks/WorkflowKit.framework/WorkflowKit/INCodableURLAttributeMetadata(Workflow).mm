@interface INCodableURLAttributeMetadata(Workflow)
- (WFURLStringParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
@end

@implementation INCodableURLAttributeMetadata(Workflow)

- (WFURLStringParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
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
      v10 = [WFVariableString alloc];
      absoluteString = [v9 absoluteString];
      v12 = [(WFVariableString *)v10 initWithString:absoluteString];

      v13 = [(WFVariableStringParameterState *)[WFURLStringParameterState alloc] initWithVariableString:v12];
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
  v17.super_class = &off_1F4B058F8;
  v13 = objc_msgSendSuper2(&v17, sel_wf_parameterStateForIntentValue_parameterDefinition_, v9, v7);
LABEL_8:

  return v13;
}

@end