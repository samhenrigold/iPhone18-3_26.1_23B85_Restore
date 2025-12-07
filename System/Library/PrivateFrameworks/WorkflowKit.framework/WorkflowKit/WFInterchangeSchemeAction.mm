@interface WFInterchangeSchemeAction
- (BOOL)isCallbackAction;
- (NSString)formatString;
- (WFInterchangeScheme)scheme;
- (WFInterchangeSchemeAction)initWithDefinition:(id)definition scheme:(id)scheme;
- (id)defersCompletionUntilReturn;
- (id)formatKeys;
- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation WFInterchangeSchemeAction

- (WFInterchangeScheme)scheme
{
  WeakRetained = objc_loadWeakRetained(&self->_scheme);

  return WeakRetained;
}

- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler
{
  v45 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  parametersCopy = parameters;
  interfaceCopy = interface;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v12 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  selfCopy = self;
  outputMapping = [(WFInterchangeActionDefinition *)self outputMapping];
  v14 = [outputMapping countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(outputMapping);
        }

        v18 = *(*(&v40 + 1) + 8 * i);
        sourceType = [v18 sourceType];
        isEqualToString = objc_msgSend_isEqualToString_(sourceType);

        if (isEqualToString)
        {
          sourceKey = [v18 sourceKey];
          v22 = MEMORY[0x1E696AEC0];
          destinationKey = [v18 destinationKey];
          v24 = [v22 stringWithFormat:@"%@", destinationKey];
          [v12 setObject:v24 forKey:sourceKey];
        }
      }

      v15 = [outputMapping countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v15);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __105__WFInterchangeSchemeAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke;
  v35[3] = &unk_1E837DB88;
  v35[4] = selfCopy;
  v36 = interfaceCopy;
  v38 = errorHandlerCopy;
  v39 = handlerCopy;
  v37 = v12;
  v25 = v12;
  v26 = handlerCopy;
  v27 = interfaceCopy;
  v28 = errorHandlerCopy;
  [(WFInterchangeActionDefinition *)selfCopy processInput:inputCopy parameters:parametersCopy completionHandler:v35];
}

void __105__WFInterchangeSchemeAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5, void *a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    v13[2](v13);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v38 = a4;
    v40 = v13;
    v39 = a1;
    v15 = [*(a1 + 32) formatString];
    v16 = [v15 mutableCopy];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = [v11 keyEnumerator];
    v18 = [v17 allObjects];

    v19 = [v18 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v48;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v48 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v47 + 1) + 8 * i);
          v24 = [v11 objectForKey:v23];
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[[%@]]", v23];
          [v16 replaceOccurrencesOfString:v25 withString:v24 options:0 range:{0, objc_msgSend(v16, "length")}];
        }

        v20 = [v18 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v20);
    }

    v26 = [MEMORY[0x1E695DFF8] URLWithString:v16];
    v27 = [v26 URLByAddingValuesFromQueryDictionary:v12];

    v36 = [*(v39 + 32) scheme];
    v37 = *(v39 + 40);
    v28 = [*(v39 + 32) scheme];
    v29 = [v28 app];
    v30 = [v29 bundleIdentifier];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __105__WFInterchangeSchemeAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_2;
    v44[3] = &unk_1E837DB38;
    v13 = v40;
    v31 = v40;
    v44[4] = *(v39 + 32);
    v45 = v31;
    v46 = *(v39 + 64);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __105__WFInterchangeSchemeAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_4;
    v41[3] = &unk_1E837DB60;
    v42 = v31;
    v43 = *(v39 + 56);
    v32 = [WFInterchangeURLRequest requestWithURL:v27 scheme:v36 userInterface:v37 bundleIdentifier:v30 successHandler:v44 failureHandler:v41];

    if ([*(v39 + 48) count])
    {
      v33 = [MEMORY[0x1E695DFF8] dc_queryStringWithQueryDictionary:*(v39 + 48) addingPercentEscapes:0];
      [v32 setSuccessURLQueryString:v33];
    }

    if ((v38 & 1) != 0 || ([*(v39 + 32) isCallbackAction] & 1) == 0)
    {
      [v32 setCallbackRequest:0];
    }

    v34 = [*(v39 + 32) defersCompletionUntilReturn];
    if (v34 || ([v32 isCallbackRequest] & 1) == 0)
    {
      [v32 setDeferCompletionUntilReturn:{objc_msgSend(v34, "BOOLValue")}];
    }

    v35 = +[WFInterchangeManager sharedManager];
    [v35 performRequest:v32];

    v14 = 0;
  }
}

void __105__WFInterchangeSchemeAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2;
  (*(*(a1 + 40) + 16))();
  v20 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = a1;
  v5 = [*(a1 + 32) outputMapping];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 destinationType];
        isEqualToString = objc_msgSend_isEqualToString_(v12);

        if (isEqualToString)
        {
          v14 = [v11 sourceKey];
          v15 = [v4 objectForKey:v14];

          if (v15)
          {
            v16 = [v11 contentItemClasses];
            v17 = [v16 array];

            [v20 addObject:v15];
            v8 = v17;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v20 numberOfItems])
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __105__WFInterchangeSchemeAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_3;
    v21[3] = &unk_1E837DB10;
    v22 = *(v18 + 48);
    v23 = a3;
    [v20 generateCollectionByCoercingToItemClasses:v8 completionHandler:v21];
  }

  else
  {
    (*(*(v18 + 48) + 16))();
  }
}

void __105__WFInterchangeSchemeAction_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

- (id)defersCompletionUntilReturn
{
  definition = [(WFInterchangeActionDefinition *)self definition];
  v3 = [definition objectForKey:@"DeferCompletion"];

  return v3;
}

- (BOOL)isCallbackAction
{
  scheme = [(WFInterchangeSchemeAction *)self scheme];
  if ([scheme isCallbackScheme])
  {
    definition = [(WFInterchangeActionDefinition *)self definition];
    v5 = [definition objectForKey:@"CallbackUnsupported"];
    v6 = [v5 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)formatKeys
{
  formatString = [(WFInterchangeSchemeAction *)self formatString];
  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\[\\[(.*?)\\]\\]" options:0 error:0];
  v4 = [v3 matchesInString:formatString options:0 range:{0, objc_msgSend(formatString, "length")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__WFInterchangeSchemeAction_formatKeys__block_invoke;
  v8[3] = &unk_1E837DAD8;
  v9 = formatString;
  v5 = formatString;
  v6 = [v4 if_map:v8];

  return v6;
}

uint64_t __39__WFInterchangeSchemeAction_formatKeys__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 rangeAtIndex:1];

  return [v2 substringWithRange:{v4, v3}];
}

- (NSString)formatString
{
  definition = [(WFInterchangeActionDefinition *)self definition];
  v4 = [definition objectForKey:@"Format"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    definition2 = v4;
    if (definition2)
    {
LABEL_3:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = definition2;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      definition2 = [(WFInterchangeActionDefinition *)self definition];
      v9 = [definition2 objectForKey:@"Format"];
      goto LABEL_16;
    }

    v7 = v4;
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
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    definition2 = [v10 objectForKey:@"Phone"];

    if (definition2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_15:
  v9 = v6;
LABEL_16:
  v11 = v9;

  return v11;
}

- (WFInterchangeSchemeAction)initWithDefinition:(id)definition scheme:(id)scheme
{
  schemeCopy = scheme;
  definitionCopy = definition;
  v8 = [schemeCopy app];
  v9 = [(WFInterchangeActionDefinition *)self initWithDefinition:definitionCopy app:v8];

  if (v9)
  {
    objc_storeWeak(&v9->_scheme, schemeCopy);
    v10 = v9;
  }

  return v9;
}

@end