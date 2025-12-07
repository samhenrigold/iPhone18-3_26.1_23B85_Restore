@interface WFLinkActionAttributedStringParameterDefinition
- (WFLinkActionAttributedStringParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionAttributedStringParameterDefinition

- (id)localizedTitleForLinkValue:(id)value
{
  value = [value value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = value;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  string = [v5 string];

  return string;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  stateCopy = state;
  requestorCopy = requestor;
  actionCopy = action;
  keyCopy = key;
  handlerCopy = handler;
  v20 = valueCopy;
  if (!v20)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v22 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v22];
      v24 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v23];
      handlerCopy[2](handlerCopy, v24, 0);

LABEL_8:
      goto LABEL_10;
    }

    v22 = v22;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __183__WFLinkActionAttributedStringParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke;
      v25[3] = &unk_1E837D748;
      v25[4] = self;
      v26 = handlerCopy;
      [v22 getRichTextRepresentation:v25];

      goto LABEL_8;
    }

LABEL_9:

    handlerCopy[2](handlerCopy, 0, 0);
    goto LABEL_10;
  }

  v21 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v20];
  handlerCopy[2](handlerCopy, v21, 0);

LABEL_10:
}

void __183__WFLinkActionAttributedStringParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v10 = v5;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E69ACA90]);
    v8 = [*(a1 + 32) valueType];
    v9 = [v7 initWithValue:v10 valueType:v8];
    (*(v6 + 16))(v6, v9, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v8 = stateCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    variableString = [v8 variableString];
    stringByRemovingVariables = [variableString stringByRemovingVariables];

    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringByRemovingVariables];
    v12 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)parameterStateFromLinkValue:(id)value
{
  v24 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (!value)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [valueType objectIsMemberOfType:value];

  if ((v6 & 1) == 0)
  {
    v15 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v18 = 136315650;
      v19 = "[WFLinkActionAttributedStringParameterDefinition parameterStateFromLinkValue:]";
      v20 = 2114;
      v21 = value;
      v22 = 2114;
      v23 = valueType2;
    }

    goto LABEL_12;
  }

  v7 = value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = 0;
  if (isKindOfClass)
  {
    v12 = [WFVariableString alloc];
    string = [v7 string];
    v14 = [(WFVariableString *)v12 initWithString:string];

    v11 = [[WFVariableStringParameterState alloc] initWithVariableString:v14];
  }

LABEL_13:

  return v11;
}

- (id)parameterDefinitionDictionary
{
  v9[4] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = WFLinkActionAttributedStringParameterDefinition;
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v7 parameterDefinitionDictionary];
  v3 = *MEMORY[0x1E69E12D0];
  v8[0] = @"TextAlignment";
  v8[1] = @"Multiline";
  v9[0] = v3;
  v9[1] = MEMORY[0x1E695E118];
  v8[2] = @"ProcessIntoContentItems";
  v8[3] = @"PrefersAttributedString";
  v9[2] = MEMORY[0x1E695E118];
  v9[3] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];
  v5 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v4];

  return v5;
}

- (WFLinkActionAttributedStringParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC938];
  metadataCopy = metadata;
  attributedStringValueType = [v4 attributedStringValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionAttributedStringParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:attributedStringValueType parameterMetadata:metadataCopy];

  return v7;
}

@end