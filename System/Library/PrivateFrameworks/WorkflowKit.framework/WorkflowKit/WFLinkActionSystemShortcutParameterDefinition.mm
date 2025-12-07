@interface WFLinkActionSystemShortcutParameterDefinition
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionSystemShortcutParameterDefinition

- (id)parameterStateFromLinkValue:(id)value
{
  v13 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  value = [valueCopy value];
  if (value)
  {
    v5 = [MEMORY[0x1E69E09F8] systemActionWithValue:valueCopy];
    if (v5)
    {
      v6 = [(WFVariableSubstitutableParameterState *)[WFSystemShortcutPickerParameterState alloc] initWithValue:v5];
    }

    else
    {
      v7 = getWFGeneralLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "[WFLinkActionSystemShortcutParameterDefinition parameterStateFromLinkValue:]";
        v11 = 2112;
        v12 = valueCopy;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Could not get system action from link value: %@", &v9, 0x16u);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (valueCopy)
  {
    objc_opt_class();
    v12 = objc_opt_isKindOfClass() & 1;
    if (v12)
    {
      v13 = valueCopy;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if (v12)
    {
      asLNValue = [valueCopy asLNValue];
      (v11)[2](v11, asLNValue, 0);
    }

    else
    {
      v16 = getWFGeneralLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136315394;
        v18 = "[WFLinkActionSystemShortcutParameterDefinition getLinkValueFromProcessedParameterValue:parameterState:permissionRequestor:runningFromToolKit:action:parameterKey:completionHandler:]";
        v19 = 2112;
        v20 = valueCopy;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_DEBUG, "%s Could not get system action from processed parameter value: %@", &v17, 0x16u);
      }

      v11[2](v11, 0, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v7 = stateCopy;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    value = [v7 value];
    asLNValue = [value asLNValue];
  }

  else
  {
    asLNValue = 0;
  }

  return asLNValue;
}

@end