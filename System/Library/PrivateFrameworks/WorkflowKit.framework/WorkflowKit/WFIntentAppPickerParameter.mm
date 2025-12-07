@interface WFIntentAppPickerParameter
- (WFIntentAppPickerParameter)initWithDefinition:(id)definition;
- (void)possibleStatesDidChange;
@end

@implementation WFIntentAppPickerParameter

- (void)possibleStatesDidChange
{
  v3.receiver = self;
  v3.super_class = WFIntentAppPickerParameter;
  [(WFDynamicEnumerationParameter *)&v3 possibleStatesDidChange];
  [(WFDynamicEnumerationParameter *)self defaultSerializedRepresentationDidChange];
}

- (WFIntentAppPickerParameter)initWithDefinition:(id)definition
{
  v25 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  v16.receiver = self;
  v16.super_class = WFIntentAppPickerParameter;
  v5 = [(WFDynamicEnumerationParameter *)&v16 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"IntentName"];
    v7 = objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = getWFGeneralLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = objc_opt_class();
        *buf = 136315906;
        v18 = "WFEnforceClass";
        v19 = 2114;
        v20 = v8;
        v21 = 2114;
        v22 = v11;
        v23 = 2114;
        v24 = v7;
        v12 = v11;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    intentName = v5->_intentName;
    v5->_intentName = v9;

    v14 = v5;
  }

  return v5;
}

@end