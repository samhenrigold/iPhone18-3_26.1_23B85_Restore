@interface WFWorkflowImportQuestion
- (WFAction)action;
- (WFParameter)parameter;
- (WFWorkflowImportQuestion)initWithAction:(id)action parameter:(id)parameter question:(id)question defaultState:(id)state;
- (WFWorkflowImportQuestion)initWithSerializedRepresentation:(id)representation workflowActions:(id)actions;
- (id)serializedRepresentationWithWorkflowActions:(id)actions;
@end

@implementation WFWorkflowImportQuestion

- (WFParameter)parameter
{
  WeakRetained = objc_loadWeakRetained(&self->_parameter);

  return WeakRetained;
}

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (id)serializedRepresentationWithWorkflowActions:(id)actions
{
  actionsCopy = actions;
  action = [(WFWorkflowImportQuestion *)self action];
  parameter = [(WFWorkflowImportQuestion *)self parameter];
  v7 = parameter;
  v8 = 0;
  if (action && parameter)
  {
    v9 = [actionsCopy indexOfObject:action];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v10 = v9;
      v8 = objc_opt_new();
      [v8 setObject:@"Parameter" forKey:@"Category"];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      [v8 setObject:v11 forKey:@"ActionIndex"];

      v12 = [v7 key];
      [v8 setObject:v12 forKey:@"ParameterKey"];

      question = [(WFWorkflowImportQuestion *)self question];
      [v8 setValue:question forKey:@"Text"];

      defaultState = [(WFWorkflowImportQuestion *)self defaultState];
      serializedRepresentation = [defaultState serializedRepresentation];
      [v8 setValue:serializedRepresentation forKey:@"DefaultValue"];
    }
  }

  return v8;
}

- (WFWorkflowImportQuestion)initWithSerializedRepresentation:(id)representation workflowActions:(id)actions
{
  v33[2] = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  representationCopy = representation;
  v8 = [representationCopy objectForKey:@"Category"];
  v9 = objc_opt_class();
  v10 = WFEnforceClass_74017(v8, v9);

  v11 = [representationCopy objectForKey:@"ActionIndex"];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_74017(v11, v12);

  v14 = [representationCopy objectForKey:@"ParameterKey"];
  v15 = objc_opt_class();
  v16 = WFEnforceClass_74017(v14, v15);

  v17 = [representationCopy objectForKey:@"Text"];
  v18 = objc_opt_class();
  v19 = WFEnforceClass_74017(v17, v18);

  v20 = [representationCopy objectForKey:@"DefaultValue"];

  isEqualToString = objc_msgSend_isEqualToString_(v10);
  v22 = 0;
  if (v16 && v13 && isEqualToString)
  {
    unsignedIntegerValue = [v13 unsignedIntegerValue];
    if (unsignedIntegerValue >= [actionsCopy count])
    {
      v22 = 0;
    }

    else
    {
      selfCopy = self;
      v24 = [actionsCopy objectAtIndex:{objc_msgSend(v13, "unsignedIntegerValue")}];
      v25 = [v24 parameterForKey:v16];
      if (v25)
      {
        v31 = v24;
        v33[0] = @"Hidden";
        v33[1] = @"NotSupported";
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
        importQuestionBehavior = [v25 importQuestionBehavior];
        v28 = [v26 containsObject:importQuestionBehavior];

        if (v28)
        {
          v29 = 0;
          v24 = v31;
        }

        else
        {
          v24 = v31;
          v29 = [v31 createStateForParameter:v25 fromSerializedRepresentation:v20];
        }

        v22 = [[WFWorkflowImportQuestion alloc] initWithAction:v24 parameter:v25 question:v19 defaultState:v29];
      }

      else
      {
        v22 = 0;
      }

      self = selfCopy;
    }
  }

  return v22;
}

- (WFWorkflowImportQuestion)initWithAction:(id)action parameter:(id)parameter question:(id)question defaultState:(id)state
{
  v32 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  parameterCopy = parameter;
  questionCopy = question;
  stateCopy = state;
  parameters = [actionCopy parameters];
  if ([parameters containsObject:parameterCopy])
  {
    v15 = 0;
  }

  else
  {
    v16 = [actionCopy visibleParametersWithProcessing:0];
    v17 = [v16 containsObject:parameterCopy];

    v15 = v17 ^ 1;
  }

  if (!actionCopy || !parameterCopy || v15)
  {
    v23 = getWFEditorLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "[WFWorkflowImportQuestion initWithAction:parameter:question:defaultState:]";
      v28 = 2114;
      v29 = parameterCopy;
      v30 = 2114;
      v31 = actionCopy;
      _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s Import Question unable to find parameter %{public}@ on action %{public}@", buf, 0x20u);
    }

    v19 = 0;
    goto LABEL_12;
  }

  v25.receiver = self;
  v25.super_class = WFWorkflowImportQuestion;
  v18 = [(WFWorkflowImportQuestion *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_action, actionCopy);
    objc_storeWeak(&v19->_parameter, parameterCopy);
    v20 = [questionCopy copy];
    question = v19->_question;
    v19->_question = v20;

    v22 = stateCopy;
    self = v19->_defaultState;
    v19->_defaultState = v22;
LABEL_12:
  }

  return v19;
}

@end