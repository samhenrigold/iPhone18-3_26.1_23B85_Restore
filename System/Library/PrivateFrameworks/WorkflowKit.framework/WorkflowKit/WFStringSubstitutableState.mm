@interface WFStringSubstitutableState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
@end

@implementation WFStringSubstitutableState

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFStringSubstitutableState.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[NSString class]]"}];
  }

  return valueCopy;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v20 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v6 = objc_opt_class();
  v7 = representationCopy;
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v12 = 136315906;
      v13 = "WFEnforceClass";
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v6;
      v10 = v17;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v12, 0x2Au);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

@end