@interface WFLinkStartWorkoutAction
- (id)parameterOverrides;
- (id)parameterSummary;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFLinkStartWorkoutAction

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = [(WFAction *)self parameterValueForKey:@"workoutStyle" ofClass:objc_opt_class()];
  if (v5)
  {
    [(WFLinkAction *)self runAsynchronouslyWithLinkAction:v5];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFLinkStartWorkoutAction;
    [(WFLinkAction *)&v6 runAsynchronouslyWithInput:inputCopy];
  }
}

- (id)parameterOverrides
{
  v16[1] = *MEMORY[0x1E69E9840];
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  actionConfiguration = [metadata actionConfiguration];

  if (actionConfiguration)
  {
    v4 = 0;
  }

  else
  {
    v15 = @"workoutStyle";
    v5 = [WFParameterDefinition alloc];
    v13[0] = @"Class";
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v13[1] = @"DisallowedVariableTypes";
    v14[0] = v7;
    v12 = @"Variable";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v14[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v10 = [(WFParameterDefinition *)v5 initWithDictionary:v9];
    v16[0] = v10;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  return v4;
}

- (id)parameterSummary
{
  v2 = [WFActionParameterSummary alloc];
  v3 = WFLocalizedStringResourceWithKey(@"Start ${workoutStyle} Workout", @"Start ${workoutStyle} Workout");
  v4 = [(WFActionParameterSummary *)v2 initWithString:v3];

  return v4;
}

- (void)initializeParameters
{
  v7.receiver = self;
  v7.super_class = WFLinkStartWorkoutAction;
  [(WFLinkAction *)&v7 initializeParameters];
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  actionConfiguration = [metadata actionConfiguration];

  if (!actionConfiguration)
  {
    v5 = [(WFAction *)self parameterForKey:@"workoutStyle"];
    [v5 setAction:self];
    parameters = [(WFAction *)self parameters];
    [parameters enumerateObjectsUsingBlock:&__block_literal_global_15931];
  }
}

void __48__WFLinkStartWorkoutAction_initializeParameters__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v2 setHidden:1];
  }
}

@end