@interface WFBooleanSubstitutableState
+ (Class)processingValueClass;
- (WFBooleanSubstitutableState)initWithBoolValue:(BOOL)value;
- (WFBooleanSubstitutableState)initWithNumberSubstitutableState:(id)state;
- (id)numberSubstitutableState;
@end

@implementation WFBooleanSubstitutableState

+ (Class)processingValueClass
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v3 = objc_opt_class();

  return v3;
}

- (WFBooleanSubstitutableState)initWithNumberSubstitutableState:(id)state
{
  stateCopy = state;
  variable = [stateCopy variable];
  if (variable)
  {
    v6 = [(WFVariableSubstitutableParameterState *)self initWithVariable:variable];
  }

  else
  {
    value = [stateCopy value];
    v6 = [(WFVariableSubstitutableParameterState *)self initWithValue:value];
  }

  return v6;
}

- (id)numberSubstitutableState
{
  variable = [(WFVariableSubstitutableParameterState *)self variable];
  v4 = [WFNumberSubstitutableState alloc];
  v5 = v4;
  if (variable)
  {
    v6 = [(WFVariableSubstitutableParameterState *)v4 initWithVariable:variable];
  }

  else
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    v6 = [(WFVariableSubstitutableParameterState *)v5 initWithValue:value];
  }

  return v6;
}

- (WFBooleanSubstitutableState)initWithBoolValue:(BOOL)value
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:value];
  v5 = [(WFNumberSubstitutableState *)self initWithNumber:v4];

  return v5;
}

@end