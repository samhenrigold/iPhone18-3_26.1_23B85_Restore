@interface WFNumberSubstitutableState
+ (id)serializedRepresentationFromNumber:(id)number;
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (NSNumber)number;
- (WFNumberSubstitutableState)initWithNumber:(id)number;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFNumberSubstitutableState

- (NSNumber)number
{
  value = [(WFVariableSubstitutableParameterState *)self value];
  number = [value number];

  return number;
}

- (WFNumberSubstitutableState)initWithNumber:(id)number
{
  v4 = [WFNumberWrapper wrapperWithNumber:number];
  v5 = [(WFVariableSubstitutableParameterState *)self initWithValue:v4];

  return v5;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    v13.receiver = self;
    v13.super_class = WFNumberSubstitutableState;
    [(WFVariableSubstitutableParameterState *)&v13 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }

  else
  {
    number = [(WFNumberSubstitutableState *)self number];
    valueHandlerCopy[2](valueHandlerCopy, number, 0);
  }
}

+ (id)serializedRepresentationFromNumber:(id)number
{
  v4 = [WFNumberWrapper wrapperWithNumber:number];
  v5 = [self serializedRepresentationFromValue:v4];

  return v5;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFNumberSubstitutableState.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFNumberWrapper class]]"}];
  }

  number = [valueCopy number];
  v7 = number;
  if (number)
  {
    v8 = number;
  }

  else
  {
    v8 = &stru_1F4A1C408;
  }

  v9 = v8;

  return v8;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v21 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [WFNumberWrapper wrapperWithNumber:0];
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = representationCopy;
  if (v8)
  {
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v6 = [WFNumberWrapper wrapperWithNumber:v9];

      goto LABEL_10;
    }

    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315906;
      v14 = "WFEnforceClass";
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v7;
      v11 = v18;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v13, 0x2Au);
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

@end