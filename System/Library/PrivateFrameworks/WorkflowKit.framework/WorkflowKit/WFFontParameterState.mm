@interface WFFontParameterState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
@end

@implementation WFFontParameterState

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v21 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v6 = objc_opt_class();
  v7 = representationCopy;
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315906;
      v14 = "WFEnforceClass";
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v6;
      v10 = v18;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v13, 0x2Au);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if ([v8 count])
  {
    v11 = [WFFontDescriptor descriptorWithSerializedRepresentation:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (valueCopy)
    {
LABEL_3:
      serializedRepresentation = [valueCopy serializedRepresentation];
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFontParameterState.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFFontDescriptor class]]"}];

    if (valueCopy)
    {
      goto LABEL_3;
    }
  }

  serializedRepresentation = 0;
LABEL_6:

  return serializedRepresentation;
}

@end