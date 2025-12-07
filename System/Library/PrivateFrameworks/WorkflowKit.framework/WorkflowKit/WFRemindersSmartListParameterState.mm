@interface WFRemindersSmartListParameterState
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (id)legacySerializedRepresentation;
@end

@implementation WFRemindersSmartListParameterState

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v24[1] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  v11 = representationCopy;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v23 = @"identifier";
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.reminders.smartlist.%@", v11];
    v24[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

    if (v13)
    {
      v14 = v11;
      v11 = v13;
    }

    else
    {
      v17 = getWFActionsLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "+[WFRemindersSmartListParameterState valueFromSerializedRepresentation:variableProvider:parameter:]";
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEFAULT, "%s Found unexpected Reminders Smart List: %{public}@", buf, 0x16u);
      }

      v14 = v11;
      v11 = 0;
    }
  }

  else
  {

    v14 = 0;
  }

  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS___WFRemindersSmartListParameterState;
  v15 = objc_msgSendSuper2(&v18, sel_valueFromSerializedRepresentation_variableProvider_parameter_, v11, providerCopy, parameterCopy);

  return v15;
}

- (id)legacySerializedRepresentation
{
  value = [(WFVariableSubstitutableParameterState *)self value];
  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2Value = [value value];
    if (v2Value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3Value = [v2Value value];
      if (v3Value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        identifier = [v3Value identifier];
        instanceIdentifier = [identifier instanceIdentifier];

        if (instanceIdentifier)
        {
          v7 = [instanceIdentifier componentsSeparatedByString:@"."];
          lastObject = [v7 lastObject];
        }

        else
        {
          lastObject = 0;
        }
      }

      else
      {
        lastObject = 0;
      }
    }

    else
    {
      lastObject = 0;
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

@end