@interface WFLinkActionUnionParameterDefinition
- (Class)contentItemClassFromValueType:(id)type metadata:(id)metadata;
- (WFLinkActionUnionParameterDefinition)initWithValueType:(id)type parameterMetadata:(id)metadata;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterMetadataForIdentifier:(id)identifier;
- (id)parameterStateFromLinkValue:(id)value;
- (id)subdefinitionForState:(id)state;
- (id)subdefinitions;
- (id)substateForState:(id)state;
- (id)subtypes;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionUnionParameterDefinition

- (id)localizedTitleForLinkValue:(id)value
{
  valueCopy = value;
  parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  valueType = [valueCopy valueType];
  v7 = [parameterMetadata wf_parameterMetadataWithValueType:valueType typeSpecificMetadata:MEMORY[0x1E695E0F8]];

  valueType2 = [valueCopy valueType];
  v9 = [valueType2 wf_parameterDefinitionWithParameterMetadata:v7 dynamicOptionsSupport:0];
  v10 = [v9 localizedTitleForLinkValue:valueCopy];

  return v10;
}

- (id)parameterStateFromLinkValue:(id)value
{
  v29[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = objc_opt_class();
  v7 = WFEnforceClass_72101(valueType, v6);

  if (v7)
  {
    memberValueTypes = [v7 memberValueTypes];
    parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    typeSpecificMetadata = [parameterMetadata typeSpecificMetadata];
    v11 = [typeSpecificMetadata objectForKey:@"LNValueTypeSpecificMetadataKeyLinkUnionMetadata"];

    v12 = [memberValueTypes count];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      while (1)
      {
        v15 = [memberValueTypes objectAtIndex:v14];
        v16 = [v11 objectAtIndex:v14];
        v17 = [(WFLinkActionUnionParameterDefinition *)self contentItemClassFromValueType:v15 metadata:v16];
        if ([v15 valueIsKindOfType:valueCopy])
        {
          if (v17)
          {
            break;
          }
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }

      parameterMetadata2 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
      v19 = [v11 objectAtIndex:v14];
      v20 = [parameterMetadata2 wf_parameterMetadataWithValueType:v15 typeSpecificMetadata:v19];
      wf_parameterDefinition = [v20 wf_parameterDefinition];

      v21 = [wf_parameterDefinition parameterStateFromLinkValue:valueCopy];
      v22 = NSStringFromClass(v17);
      v23 = [WFUnionParameterState alloc];
      v28 = v22;
      v29[0] = v21;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v18 = [(WFUnionParameterState *)v23 initWithWhich:v22 states:v24];
    }

    else
    {
LABEL_7:
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  kitCopy = kit;
  valueCopy = value;
  stateCopy = state;
  requestorCopy = requestor;
  actionCopy = action;
  keyCopy = key;
  handlerCopy = handler;
  if (kitCopy)
  {
    toolInvocation = [actionCopy toolInvocation];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __172__WFLinkActionUnionParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke;
    v28[3] = &unk_1E837F560;
    v30 = handlerCopy;
    v29 = valueCopy;
    [toolInvocation valueTypeForParameterWithKey:keyCopy completionHandler:v28];
  }

  else
  {
    v22 = objc_opt_class();
    v23 = WFEnforceClass_72101(stateCopy, v22);
    v24 = v23;
    if (valueCopy && v23)
    {
      v25 = [(WFLinkActionUnionParameterDefinition *)self subdefinitionForState:v23];
      v26 = [(WFLinkActionUnionParameterDefinition *)self substateForState:v24];
      v27 = v26;
      if (v25 && v26)
      {
        [v25 getLinkValueFromProcessedParameterValue:valueCopy parameterState:v26 permissionRequestor:requestorCopy runningFromToolKit:0 action:actionCopy parameterKey:keyCopy completionHandler:handlerCopy];
      }

      else
      {
        (*(handlerCopy + 2))(handlerCopy, 0, 0);
      }
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __172__WFLinkActionUnionParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6 = v3;
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:*(a1 + 32) valueType:v3];
    (*(v4 + 16))(v4, v5, 0);
  }

  else
  {
    (*(v4 + 16))(v4, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v8 = objc_opt_class();
  v9 = WFEnforceClass_72101(stateCopy, v8);
  v10 = v9;
  if (v9)
  {
    which = [v9 which];

    if (which)
    {
      v12 = [(WFLinkActionUnionParameterDefinition *)self subdefinitionForState:v10];
      v13 = [(WFLinkActionUnionParameterDefinition *)self substateForState:v10];
      v14 = [v12 linkValueFromParameterState:v13 action:actionCopy];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFLinkActionUnionParameterDefinition;
    v14 = [(WFLinkActionParameterDefinition *)&v16 linkValueFromParameterState:stateCopy action:actionCopy];
  }

  return v14;
}

- (id)substateForState:(id)state
{
  stateCopy = state;
  which = [stateCopy which];
  if (which)
  {
    states = [stateCopy states];
    which2 = [stateCopy which];
    v7 = [states objectForKey:which2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)subdefinitionForState:(id)state
{
  v36 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = objc_opt_class();
  v7 = WFEnforceClass_72101(valueType, v6);

  if (v7 && ([stateCopy which], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v30 = v7;
    memberValueTypes = [v7 memberValueTypes];
    parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    typeSpecificMetadata = [parameterMetadata typeSpecificMetadata];
    v31 = [typeSpecificMetadata objectForKey:@"LNValueTypeSpecificMetadataKeyLinkUnionMetadata"];

    v12 = memberValueTypes;
    v13 = [memberValueTypes count];
    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = v13;
    v15 = 0;
    while (1)
    {
      v16 = [v12 objectAtIndex:v15];
      v17 = [v31 objectAtIndex:v15];
      v18 = [(WFLinkActionUnionParameterDefinition *)self contentItemClassFromValueType:v16 metadata:v17];
      if (v18)
      {
        v19 = NSStringFromClass(v18);
        [stateCopy which];
        v21 = v20 = stateCopy;
        v22 = [v19 isEqual:v21];

        stateCopy = v20;
        if (v22)
        {
          break;
        }
      }

      if (v14 == ++v15)
      {
        goto LABEL_8;
      }
    }

    parameterMetadata2 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    v28 = [v31 objectAtIndex:v15];
    v29 = [parameterMetadata2 wf_parameterMetadataWithValueType:v16 typeSpecificMetadata:v28];
    wf_parameterDefinition = [v29 wf_parameterDefinition];

    stateCopy = v20;
    if (!wf_parameterDefinition)
    {
LABEL_8:
      v23 = getWFGeneralLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        which = [stateCopy which];
        *buf = 136315394;
        v33 = "[WFLinkActionUnionParameterDefinition subdefinitionForState:]";
        v34 = 2112;
        v35 = which;
        _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s no subdefinition for %@", buf, 0x16u);
      }

      wf_parameterDefinition = 0;
    }

    v7 = v30;
  }

  else
  {
    wf_parameterDefinition = 0;
  }

  return wf_parameterDefinition;
}

- (id)parameterDefinitionDictionary
{
  v32 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = WFLinkActionUnionParameterDefinition;
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v25 parameterDefinitionDictionary];
  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_72101(valueType, v5);

  if (v6)
  {
    v24 = parameterDefinitionDictionary;
    memberValueTypes = [v6 memberValueTypes];
    parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    typeSpecificMetadata = [parameterMetadata typeSpecificMetadata];
    v10 = [typeSpecificMetadata objectForKey:@"LNValueTypeSpecificMetadataKeyLinkUnionMetadata"];

    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(memberValueTypes, "count")}];
    v12 = [memberValueTypes count];
    if (v12)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = [memberValueTypes objectAtIndex:i];
        v16 = [v10 objectAtIndex:i];
        v17 = [(WFLinkActionUnionParameterDefinition *)self contentItemClassFromValueType:v15 metadata:v16];
        if (v17)
        {
          v18 = NSStringFromClass(v17);
          [v11 addObject:v18];
        }

        else
        {
          v18 = getWFGeneralLogObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v29 = "[WFLinkActionUnionParameterDefinition parameterDefinitionDictionary]";
            v30 = 2112;
            v31 = v15;
            _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s could not map %@ to a content item class.", buf, 0x16u);
          }
        }
      }
    }

    parameterMetadata2 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    v20 = [v6 memberTypeParameterDefinitionsFromParameterMetadata:parameterMetadata2];

    v26[0] = @"WFUnionTypes";
    v26[1] = @"WFUnionDefinitions";
    v27[0] = v11;
    v27[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    parameterDefinitionDictionary = v24;
    v22 = [v24 definitionByAddingEntriesInDictionary:v21];
  }

  else
  {
    v22 = parameterDefinitionDictionary;
  }

  return v22;
}

- (id)subtypes
{
  parameterDefinitionDictionary = [(WFLinkActionUnionParameterDefinition *)self parameterDefinitionDictionary];
  v3 = [parameterDefinitionDictionary objectForKey:@"WFUnionTypes"];

  return v3;
}

- (id)subdefinitions
{
  parameterDefinitionDictionary = [(WFLinkActionUnionParameterDefinition *)self parameterDefinitionDictionary];
  v3 = [parameterDefinitionDictionary objectForKey:@"WFUnionDefinitions"];

  return v3;
}

- (id)parameterMetadataForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy containsString:@"~"])
  {
    v5 = [identifierCopy componentsSeparatedByString:@"~"];
    parameterDefinitionDictionary = [(WFLinkActionUnionParameterDefinition *)self parameterDefinitionDictionary];
    v7 = [WFParameter parameterWithDefinition:parameterDefinitionDictionary];

    parameterMetadataByType = [v7 parameterMetadataByType];
    lastObject = [v5 lastObject];
    parameterMetadata = [parameterMetadataByType objectForKey:lastObject];
  }

  else
  {
    parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  }

  return parameterMetadata;
}

- (Class)contentItemClassFromValueType:(id)type metadata:(id)metadata
{
  typeCopy = type;
  metadataCopy = metadata;
  v7 = typeCopy;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v9)
    {
      v13 = [metadataCopy objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];
      v14 = objc_opt_class();
      v15 = WFEnforceClass_72101(v13, v14);

      if (v15)
      {
        effectiveBundleIdentifiers = [v13 effectiveBundleIdentifiers];
        firstObject = [effectiveBundleIdentifiers firstObject];
        bundleIdentifier = [firstObject bundleIdentifier];

        v19 = [v9 wf_contentItemClassWithEntityMetadata:v13];

        goto LABEL_19;
      }

LABEL_17:

      goto LABEL_18;
    }

    if (v12)
    {
      v13 = [metadataCopy objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata"];
      v20 = objc_opt_class();
      v21 = WFEnforceClass_72101(v13, v20);

      if (v21)
      {
        effectiveBundleIdentifiers2 = [v13 effectiveBundleIdentifiers];
        firstObject2 = [effectiveBundleIdentifiers2 firstObject];
        bundleIdentifier2 = [firstObject2 bundleIdentifier];

        v19 = [v12 wf_contentItemClassWithEnumMetadata:v13];

        v12 = v10;
        v10 = 0;
        goto LABEL_19;
      }

      v12 = v10;
      v10 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
  }

  v10 = 0;
LABEL_18:
  v19 = [v7 wf_contentItemClassWithAppBundleIdentifier:0];
LABEL_19:

  return v19;
}

- (WFLinkActionUnionParameterDefinition)initWithValueType:(id)type parameterMetadata:(id)metadata
{
  typeCopy = type;
  metadataCopy = metadata;
  v8 = objc_opt_class();
  selfCopy = WFEnforceClass_72101(typeCopy, v8);

  if (selfCopy)
  {
    v12.receiver = self;
    v12.super_class = WFLinkActionUnionParameterDefinition;
    v10 = [(WFLinkActionParameterDefinition *)&v12 initWithValueType:typeCopy parameterMetadata:metadataCopy];
    if (v10)
    {
      self = v10;
      selfCopy = self;
    }

    else
    {
      self = 0;
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end