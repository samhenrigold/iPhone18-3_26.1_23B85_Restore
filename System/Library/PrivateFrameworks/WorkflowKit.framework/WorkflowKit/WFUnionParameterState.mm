@interface WFUnionParameterState
- (BOOL)isEqual:(id)equal;
- (NSArray)containedVariables;
- (NSString)description;
- (WFPropertyListObject)serializedRepresentation;
- (WFUnionParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFUnionParameterState)initWithWhich:(id)which states:(id)states;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFUnionParameterState

- (NSArray)containedVariables
{
  states = [(WFUnionParameterState *)self states];
  allValues = [states allValues];
  v4 = [allValues valueForKeyPath:@"@unionOfArrays.containedVariables"];

  return v4;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  states = [(WFUnionParameterState *)self states];
  which = [(WFUnionParameterState *)self which];
  v12 = [states objectForKeyedSubscript:which];

  if (v12)
  {
    [v12 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }

  else
  {
    (*(valueHandlerCopy + 2))(valueHandlerCopy, 0, 0);
  }
}

- (unint64_t)hash
{
  which = [(WFUnionParameterState *)self which];
  v4 = [which hash];
  states = [(WFUnionParameterState *)self states];
  v6 = [states hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      which = [(WFUnionParameterState *)equalCopy which];
      which2 = [(WFUnionParameterState *)self which];
      if (objc_msgSend_isEqualToString_(which))
      {
        v7 = 0;
      }

      else
      {
        states = [(WFUnionParameterState *)equalCopy states];
        states2 = [(WFUnionParameterState *)self states];
        v7 = [states isEqualToDictionary:states2];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFPropertyListObject)serializedRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  states = [(WFUnionParameterState *)self states];
  v5 = [states countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(states);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        states2 = [(WFUnionParameterState *)self states];
        v11 = [states2 objectForKey:v9];
        serializedRepresentation = [v11 serializedRepresentation];
        [dictionary setObject:serializedRepresentation forKey:v9];
      }

      v6 = [states countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  v20[0] = @"which";
  which = [(WFUnionParameterState *)self which];
  v20[1] = @"states";
  v21[0] = which;
  v21[1] = dictionary;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

  return v14;
}

- (WFUnionParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v41 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  v10 = objc_opt_class();
  v11 = WFEnforceClass_1501(representationCopy, v10);
  v12 = objc_opt_class();
  v13 = WFEnforceClass_1501(parameterCopy, v12);
  v14 = v13;
  if (v11)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    selfCopy2 = 0;
  }

  else
  {
    v31 = parameterCopy;
    selfCopy = self;
    v33 = representationCopy;
    v29 = [v11 objectForKey:@"which"];
    v30 = v11;
    v17 = [v11 objectForKey:@"states"];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v36 + 1) + 8 * i);
          v24 = [v18 objectForKey:v23];
          v25 = [v14 subdefinitionForType:v23];
          if (v25)
          {
            v26 = [WFParameter parameterWithDefinition:v25];
            v27 = [objc_alloc(objc_msgSend(v26 "singleStateClass"))];
            [dictionary setObject:v27 forKey:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v20);
    }

    self = [(WFUnionParameterState *)selfCopy initWithWhich:v29 states:dictionary];
    selfCopy2 = self;
    representationCopy = v33;
    v11 = v30;
    parameterCopy = v31;
  }

  return selfCopy2;
}

- (WFUnionParameterState)initWithWhich:(id)which states:(id)states
{
  whichCopy = which;
  statesCopy = states;
  if (!whichCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFUnionParameterState.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"which"}];
  }

  v17.receiver = self;
  v17.super_class = WFUnionParameterState;
  v9 = [(WFUnionParameterState *)&v17 init];
  if (v9)
  {
    v10 = [whichCopy copy];
    which = v9->_which;
    v9->_which = v10;

    if (statesCopy)
    {
      v12 = [statesCopy copy];
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    states = v9->_states;
    v9->_states = v12;

    v14 = v9;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  which = [(WFUnionParameterState *)self which];
  states = [(WFUnionParameterState *)self states];
  v7 = [v3 stringWithFormat:@"%@ {\n    which: %@\n    %@}", v4, which, states];

  return v7;
}

@end