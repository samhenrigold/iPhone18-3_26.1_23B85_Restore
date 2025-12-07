@interface WFOutputAction
- (BOOL)getInputContentFromVariablesInParameterState:(id)state context:(id)context completionHandler:(id)handler;
- (BOOL)hasOutputFallback;
- (BOOL)outputSurfaceIsAvailable;
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (id)outputContentClasses;
- (id)outputVariableString;
- (id)runSource;
- (id)runningContext;
- (unint64_t)outputBehavior;
- (void)finishRunningWithOutput:(id)output error:(id)error;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFOutputAction

- (id)outputContentClasses
{
  v23 = *MEMORY[0x1E69E9840];
  outputVariableString = [(WFOutputAction *)self outputVariableString];
  v3 = outputVariableString;
  if (outputVariableString)
  {
    variables = [outputVariableString variables];
    v5 = [variables count];
    stringsAndVariables = [v3 stringsAndVariables];
    v7 = [stringsAndVariables count];

    if (v5 == v7)
    {
      v8 = objc_opt_new();
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      variables2 = [v3 variables];
      v10 = [variables2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(variables2);
            }

            possibleAggrandizedContentClasses = [*(*(&v17 + 1) + 8 * i) possibleAggrandizedContentClasses];
            [v8 unionOrderedSet:possibleAggrandizedContentClasses];
          }

          v11 = [variables2 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v11);
      }

      array = [v8 array];
    }

    else
    {
      v21 = objc_opt_class();
      array = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (BOOL)getInputContentFromVariablesInParameterState:(id)state context:(id)context completionHandler:(id)handler
{
  stateCopy = state;
  contextCopy = context;
  handlerCopy = handler;
  if (WFGetVariableInputContentForPreviewing(stateCopy, contextCopy, handlerCopy))
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFOutputAction;
    v11 = [(WFAction *)&v13 getInputContentFromVariablesInParameterState:stateCopy context:contextCopy completionHandler:handlerCopy];
  }

  return v11;
}

- (id)outputVariableString
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFOutput"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  variableString = [v4 variableString];

  return variableString;
}

- (BOOL)hasOutputFallback
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFNoOutputSurfaceBehavior"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  value = [v4 value];

  LOBYTE(v4) = objc_msgSend_isEqualToString_(value);
  return v4 ^ 1;
}

- (id)runningContext
{
  runningDelegate = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    runningDelegate2 = [(WFAction *)self runningDelegate];
    v6 = [runningDelegate2 currentRunningContextForAction:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)runSource
{
  runningContext = [(WFOutputAction *)self runningContext];
  runSource = [runningContext runSource];
  v4 = runSource;
  if (runSource)
  {
    v5 = runSource;
  }

  else
  {
    v5 = *MEMORY[0x1E69E1428];
  }

  v6 = v5;

  return v5;
}

- (unint64_t)outputBehavior
{
  runningContext = [(WFOutputAction *)self runningContext];
  v3 = runningContext;
  if (runningContext)
  {
    outputBehavior = [runningContext outputBehavior];
  }

  else
  {
    outputBehavior = 0;
  }

  return outputBehavior;
}

- (BOOL)outputSurfaceIsAvailable
{
  runSource = [(WFOutputAction *)self runSource];
  isEqualToString = objc_msgSend_isEqualToString_(runSource);

  return (isEqualToString & 1) != 0 || [(WFOutputAction *)self outputBehavior]!= 1;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = WFOutputAction;
  v7 = [(WFAction *)&v16 setParameterState:state forKey:keyCopy];
  if (v7)
  {
    v8 = [(WFAction *)self parameterStateForKey:@"WFResponse"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    isEqualToString = objc_msgSend_isEqualToString_(keyCopy);
    variableString = [v10 variableString];

    isEmpty = [variableString isEmpty];
    if (isEqualToString && isEmpty)
    {
      v14 = [(WFAction *)self parameterStateForKey:@"WFOutput"];
      [(WFOutputAction *)self setParameterState:v14 forKey:@"WFResponse"];
    }
  }

  return v7;
}

- (void)finishRunningWithOutput:(id)output error:(id)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (error)
  {

    [(WFAction *)self finishRunningWithError:error];
  }

  else
  {
    [(WFAction *)self setOutput:output];
    v5 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A588];
    v6 = WFLocalizedString(@"User requested shortcut exit.");
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = [v5 errorWithDomain:@"WFActionErrorDomain" code:4 userInfo:v7];

    [(WFAction *)self finishRunningWithError:v8];
  }
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = [(WFAction *)self parameterValueForKey:@"WFNoOutputSurfaceBehavior" ofClass:objc_opt_class()];
  if (-[WFOutputAction outputSurfaceIsAvailable](self, "outputSurfaceIsAvailable") || ![inputCopy numberOfItems])
  {
    selfCopy2 = self;
    v9 = inputCopy;
  }

  else
  {
    if (objc_msgSend_isEqualToString_(v5))
    {
      v6 = [(WFAction *)self parameterValueForKey:@"WFResponse" ofClass:objc_opt_class()];
      if (!v6)
      {
        [(WFOutputAction *)self finishRunningWithOutput:0 error:0];
        goto LABEL_13;
      }

      userInterface = [(WFAction *)self userInterface];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __45__WFOutputAction_runAsynchronouslyWithInput___block_invoke;
      v15[3] = &unk_1E837E5E0;
      v15[4] = self;
      WFShowResult(v6, userInterface, 1, v15);
LABEL_10:

LABEL_13:
      goto LABEL_14;
    }

    if (objc_msgSend_isEqualToString_(v5))
    {
      v10 = +[WFActionRegistry sharedRegistry];
      v6 = [v10 createActionWithIdentifier:@"is.workflow.actions.setclipboard" serializedParameters:0];

      userInterface = [(WFAction *)self userInterface];
      runningDelegate = [(WFAction *)self runningDelegate];
      variableSource = [(WFAction *)self variableSource];
      workQueue = [(WFAction *)self workQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __45__WFOutputAction_runAsynchronouslyWithInput___block_invoke_2;
      v14[3] = &unk_1E837E750;
      v14[4] = self;
      [v6 runWithInput:inputCopy userInterface:userInterface runningDelegate:runningDelegate variableSource:variableSource workQueue:workQueue completionHandler:v14];

      goto LABEL_10;
    }

    selfCopy2 = self;
    v9 = 0;
  }

  [(WFOutputAction *)selfCopy2 finishRunningWithOutput:v9 error:0];
LABEL_14:
}

@end