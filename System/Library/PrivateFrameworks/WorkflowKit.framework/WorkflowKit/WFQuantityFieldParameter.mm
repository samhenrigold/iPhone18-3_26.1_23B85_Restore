@interface WFQuantityFieldParameter
- (WFQuantityFieldParameter)initWithDefinition:(id)definition;
- (id)defaultSerializedRepresentation;
- (id)defaultUnit;
- (void)setPossibleUnits:(id)units;
@end

@implementation WFQuantityFieldParameter

- (id)defaultSerializedRepresentation
{
  v10.receiver = self;
  v10.super_class = WFQuantityFieldParameter;
  defaultSerializedRepresentation = [(WFParameter *)&v10 defaultSerializedRepresentation];
  if (defaultSerializedRepresentation)
  {
    v4 = [(WFVariableSubstitutableParameterState *)[WFNumberStringSubstitutableState alloc] initWithSerializedRepresentation:defaultSerializedRepresentation variableProvider:0 parameter:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = [WFQuantityParameterState alloc];
  defaultUnit = [(WFQuantityFieldParameter *)self defaultUnit];
  v7 = [(WFQuantityParameterState *)v5 initWithMagnitudeState:v4 unitString:defaultUnit];
  serializedRepresentation = [(WFQuantityParameterState *)v7 serializedRepresentation];

  return serializedRepresentation;
}

- (id)defaultUnit
{
  possibleUnits = [(WFQuantityFieldParameter *)self possibleUnits];
  firstObject = [possibleUnits firstObject];

  return firstObject;
}

- (void)setPossibleUnits:(id)units
{
  v4 = [units copy];
  possibleUnits = self->_possibleUnits;
  self->_possibleUnits = v4;

  [(WFParameter *)self attributesDidChange];
}

- (WFQuantityFieldParameter)initWithDefinition:(id)definition
{
  v25 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  v16.receiver = self;
  v16.super_class = WFQuantityFieldParameter;
  v5 = [(WFNumberFieldParameter *)&v16 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"PossibleUnits"];
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

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_possibleUnits, v13);

    v14 = v5;
  }

  return v5;
}

@end