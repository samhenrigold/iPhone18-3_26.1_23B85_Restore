@interface WFLinkActionPersonParameterDefinition
- (Class)parameterClass;
- (WFLinkActionPersonParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValues:(id)values;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkArrayValuesFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor completionHandler:(id)handler;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
- (void)getPeopleFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor completionHandler:(id)handler;
@end

@implementation WFLinkActionPersonParameterDefinition

- (id)parameterStateFromLinkValue:(id)value
{
  v25 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (!value)
  {
    v15 = 0;
    goto LABEL_13;
  }

  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [valueType objectIsMemberOfType:value];

  if ((v6 & 1) == 0)
  {
    v10 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      *buf = 136315650;
      v20 = "[WFLinkActionPersonParameterDefinition parameterStateFromLinkValue:]";
      v21 = 2114;
      v22 = value;
      v23 = 2114;
      v24 = valueType2;
    }

    goto LABEL_11;
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

  if ((isKindOfClass & 1) == 0)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v11 = [MEMORY[0x1E6996D00] cnContactWithINPerson:v7];
  v12 = [objc_alloc(MEMORY[0x1E6996D10]) initWithContact:v11];
  v13 = [WFContactSubstitutableState alloc];
  v18 = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v15 = [(WFMultipleValueParameterState *)v13 initWithParameterStates:v14];

LABEL_12:
LABEL_13:

  return v15;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValues:(id)values
{
  valuesCopy = values;
  if (valuesCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = valuesCopy;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [v5 if_compactMap:&__block_literal_global_19780];
    v7 = [(WFMultipleValueParameterState *)[WFContactSubstitutableState alloc] initWithParameterStates:v6];
    serializedRepresentation = [(WFContactSubstitutableState *)v7 serializedRepresentation];
  }

  else
  {
    serializedRepresentation = 0;
  }

  return serializedRepresentation;
}

id __107__WFLinkActionPersonParameterDefinition_defaultSerializedRepresentationFromParameterMetadataDefaultValues___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    v4 = v2;
    v2 = 0;
    goto LABEL_7;
  }

  v3 = [MEMORY[0x1E6996D00] cnContactWithINPerson:v2];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x1E6996D10]) initWithContact:v3];
LABEL_7:

    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (void)getPeopleFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  requestorCopy = requestor;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (valueCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v13 = valueCopy;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if (isKindOfClass)
    {
      v15 = objc_alloc(MEMORY[0x1E6996F20]);
      v16 = [objc_alloc(MEMORY[0x1E6996D10]) initWithContact:valueCopy];
      v28[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v18 = [v15 initWithEntries:v17];
    }

    else
    {
      v16 = valueCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      v18 = v19;
    }

    if (v18)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __131__WFLinkActionPersonParameterDefinition_getPeopleFromProcessedParameterValue_parameterState_permissionRequestor_completionHandler___block_invoke;
      v22[3] = &unk_1E83765B0;
      v23 = v11;
      [v18 getRecipientsWithPermissionRequestor:requestorCopy completionHandler:v22];
    }

    else
    {
      v20 = getWFActionsLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v25 = "[WFLinkActionPersonParameterDefinition getPeopleFromProcessedParameterValue:parameterState:permissionRequestor:completionHandler:]";
        v26 = 2112;
        v27 = objc_opt_class();
        v21 = v27;
        _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s Expected WFProcessedContacts as processed parameter type for Person, but got %@ instead", buf, 0x16u);
      }

      v11[2](v11, 0, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)getLinkArrayValuesFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __140__WFLinkActionPersonParameterDefinition_getLinkArrayValuesFromProcessedParameterValue_parameterState_permissionRequestor_completionHandler___block_invoke;
  v12[3] = &unk_1E837F020;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(WFLinkActionPersonParameterDefinition *)self getPeopleFromProcessedParameterValue:value parameterState:state permissionRequestor:requestor completionHandler:v12];
}

void __140__WFLinkActionPersonParameterDefinition_getLinkArrayValuesFromProcessedParameterValue_parameterState_permissionRequestor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __140__WFLinkActionPersonParameterDefinition_getLinkArrayValuesFromProcessedParameterValue_parameterState_permissionRequestor_completionHandler___block_invoke_194;
    v8[3] = &unk_1E8376588;
    v8[4] = *(a1 + 32);
    v5 = a3;
    v6 = [a2 if_map:v8];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = a3;
    v7 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[WFLinkActionPersonParameterDefinition getLinkArrayValuesFromProcessedParameterValue:parameterState:permissionRequestor:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Could not make INPerson from processedContacts.", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

id __140__WFLinkActionPersonParameterDefinition_getLinkArrayValuesFromProcessedParameterValue_parameterState_permissionRequestor_completionHandler___block_invoke_194(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69ACA90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) valueType];
  v7 = [v5 initWithValue:v4 valueType:v6];

  return v7;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __173__WFLinkActionPersonParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke;
  v15[3] = &unk_1E837F020;
  v15[4] = self;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(WFLinkActionPersonParameterDefinition *)self getPeopleFromProcessedParameterValue:value parameterState:state permissionRequestor:requestor completionHandler:v15];
}

void __173__WFLinkActionPersonParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(a1 + 40);
    v8 = objc_alloc(MEMORY[0x1E69ACA90]);
    v9 = [v5 firstObject];
    v10 = [*(a1 + 32) valueType];
    v11 = [v8 initWithValue:v9 valueType:v10];
    (*(v7 + 16))(v7, v11, v6);
  }

  else
  {
    v12 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[WFLinkActionPersonParameterDefinition getLinkValueFromProcessedParameterValue:parameterState:permissionRequestor:runningFromToolKit:action:parameterKey:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Could not make INPerson from processedContacts.", &v13, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  v32 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  actionCopy = action;
  v8 = stateCopy;
  if (v8)
  {
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_10;
    }

    v10 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  value = [v12 value];

  firstObject = [value firstObject];
  parameterState = [firstObject parameterState];

  if (!parameterState || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v19 = 0;
    goto LABEL_29;
  }

  v9 = parameterState;

LABEL_10:
  type = [v9 type];
  iNPersonRepresentation = 0;
  if (type > 1)
  {
    if (type != 2)
    {
      if (type == 3)
      {
        iNPersonRepresentation = getWFAppIntentsLogObject();
        if (os_log_type_enabled(iNPersonRepresentation, OS_LOG_TYPE_FAULT))
        {
          v30 = 136315138;
          v31 = "[WFLinkActionPersonParameterDefinition linkValueFromParameterState:action:]";
          _os_log_impl(&dword_1CA256000, iNPersonRepresentation, OS_LOG_TYPE_FAULT, "%s Custom handles are not supported", &v30, 0xCu);
        }

        v19 = 0;
        goto LABEL_28;
      }

      if (type == 4)
      {
        v18 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          v30 = 136315138;
          v31 = "[WFLinkActionPersonParameterDefinition linkValueFromParameterState:action:]";
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s Message groups are not supported", &v30, 0xCu);
        }

        iNPersonRepresentation = 0;
      }

      goto LABEL_27;
    }

    v26 = objc_alloc(MEMORY[0x1E696E948]);
    emailAddress = [v9 emailAddress];
    address = [emailAddress address];
    v23 = v26;
    v24 = address;
    v25 = 1;
LABEL_22:
    v27 = [v23 initWithValue:v24 type:v25];

    iNPersonRepresentation = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v27 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
    goto LABEL_27;
  }

  if (!type)
  {
    contact = [v9 contact];
    iNPersonRepresentation = [contact INPersonRepresentation];

    goto LABEL_27;
  }

  if (type == 1)
  {
    v20 = objc_alloc(MEMORY[0x1E696E948]);
    emailAddress = [v9 phoneNumber];
    address = [emailAddress string];
    v23 = v20;
    v24 = address;
    v25 = 2;
    goto LABEL_22;
  }

LABEL_27:
  v19 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:iNPersonRepresentation];
LABEL_28:

LABEL_29:

  return v19;
}

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

  displayName = [v5 displayName];

  return displayName;
}

- (Class)parameterClass
{
  v17 = *MEMORY[0x1E69E9840];
  parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  typeSpecificMetadata = [parameterMetadata typeSpecificMetadata];
  v4 = [typeSpecificMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC5F0]];

  if ([v4 length] && (objc_msgSend_isEqualToString_(v4) & 1) == 0 && (objc_msgSend_isEqualToString_(v4) & 1) == 0 && (objc_msgSend_isEqualToString_(v4) & 1) == 0 && (objc_msgSend_isEqualToString_(v4) & 1) == 0)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v4);
    v8 = getWFAppIntentsLogObject();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (isEqualToString)
    {
      if (v9)
      {
        v13 = 136315138;
        v14 = "[WFLinkActionPersonParameterDefinition parameterClass]";
        v10 = "%s username parameterMode is not implemented yet.";
        v11 = v8;
        v12 = 12;
LABEL_14:
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, v10, &v13, v12);
      }
    }

    else if (v9)
    {
      v13 = 136315394;
      v14 = "[WFLinkActionPersonParameterDefinition parameterClass]";
      v15 = 2112;
      v16 = v4;
      v10 = "%s Unhandled parameterMode %@ for Person parameter definition.";
      v11 = v8;
      v12 = 22;
      goto LABEL_14;
    }
  }

  v5 = objc_opt_class();

  return v5;
}

- (WFLinkActionPersonParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC888];
  metadataCopy = metadata;
  personValueType = [v4 personValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionPersonParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:personValueType parameterMetadata:metadataCopy];

  return v7;
}

@end