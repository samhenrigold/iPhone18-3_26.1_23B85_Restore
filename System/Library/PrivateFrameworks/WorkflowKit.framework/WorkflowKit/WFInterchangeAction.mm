@interface WFInterchangeAction
- (BOOL)callbackIsCurrentlyDisabled;
- (BOOL)inputPassthrough;
- (BOOL)inputRequired;
- (BOOL)inputsMultipleItems;
- (BOOL)isDiscontinued;
- (BOOL)mappedValueIsTrue:(id)true forContentMapping:(id)mapping;
- (BOOL)outputsMultipleItems;
- (BOOL)requiresCallback;
- (BOOL)shouldSuppressCallback;
- (BOOL)visibleForUse:(int64_t)use;
- (WFInterchangeAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (WFInterchangeAction)initWithInterchangeAction:(id)action identifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (id)app;
- (id)appDescriptor;
- (id)appDescriptorFromWFInterchangeApp:(id)app;
- (id)description;
- (id)descriptionDefinition;
- (id)disabledPlatformsForInterchangeActionWithIdentifier:(id)identifier;
- (id)inputContentClasses;
- (id)inputParameterKey;
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedKeywordsWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)outputContentClasses;
- (id)parameterSummary;
- (id)requiredResources;
- (id)specifiedInputContentClasses;
- (id)specifiedOutputContentClasses;
- (id)userInterfaceTypes;
- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFInterchangeAction

- (id)disabledPlatformsForInterchangeActionWithIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (identifierCopy)
  {
    v7 = identifierCopy;
    if (v7 == @"com.apple.iBooks.openin" || (v8 = v7, isEqualToString = objc_msgSend_isEqualToString_(v7), v8, isEqualToString))
    {
      v13[0] = @"Watch";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFInterchangeAction.m" lineNumber:409 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v10 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v10;
}

- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler
{
  errorHandlerCopy = errorHandler;
  handlerCopy = handler;
  interfaceCopy = interface;
  parametersCopy = parameters;
  inputCopy = input;
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  [interchangeAction performActionWithInput:inputCopy parameters:parametersCopy userInterface:interfaceCopy successHandler:handlerCopy errorHandler:errorHandlerCopy];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  if ([(WFInterchangeAction *)self requiresCallback])
  {
    runningDelegate = [(WFAction *)self runningDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      runningDelegate2 = [(WFAction *)self runningDelegate];
      v8 = [runningDelegate2 currentRunningContextForAction:self];

      LOBYTE(runningDelegate2) = [v8 isShortcutsApp];
      if ((runningDelegate2 & 1) == 0)
      {
LABEL_4:
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:2 userInfo:0];
        [(WFAction *)self finishRunningWithError:v9];
        goto LABEL_9;
      }
    }

    else
    {
      mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
      applicationOrNil = [mEMORY[0x1E6996CA8] applicationOrNil];

      if (!applicationOrNil)
      {
        goto LABEL_4;
      }
    }
  }

  processedParameters = [(WFAction *)self processedParameters];
  v9 = [processedParameters mutableCopy];

  if ([(WFInterchangeAction *)self shouldSuppressCallback])
  {
    [v9 setObject:MEMORY[0x1E695E118] forKey:@"DisableCallback"];
  }

  userInterface = [(WFAction *)self userInterface];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__WFInterchangeAction_runAsynchronouslyWithInput___block_invoke;
  v15[3] = &unk_1E837E5B8;
  v15[4] = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__WFInterchangeAction_runAsynchronouslyWithInput___block_invoke_2;
  v14[3] = &unk_1E837E5E0;
  v14[4] = self;
  [(WFInterchangeAction *)self performActionWithInput:inputCopy parameters:v9 userInterface:userInterface successHandler:v15 errorHandler:v14];

LABEL_9:
}

void __50__WFInterchangeAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7 = v5;
  if (!a3)
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = [MEMORY[0x1E696ABC0] userCancelledError];
  if (v7)
  {
LABEL_5:
    [*(a1 + 32) setOutput:v7];
  }

LABEL_6:
  [*(a1 + 32) finishRunningWithError:v6];
}

- (BOOL)mappedValueIsTrue:(id)true forContentMapping:(id)mapping
{
  trueCopy = true;
  mappingCopy = mapping;
  if (objc_opt_respondsToSelector())
  {
    stringValue = [trueCopy stringValue];
  }

  else
  {
    stringValue = trueCopy;
  }

  v8 = stringValue;
  valueMapping = [mappingCopy valueMapping];
  v10 = [valueMapping objectForKey:v8];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = trueCopy;
  }

  v13 = v12;

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v13 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)callbackIsCurrentlyDisabled
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(WFInterchangeAction *)self shouldSuppressCallback])
  {
    return 1;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  inputMapping = [interchangeAction inputMapping];

  v6 = [inputMapping countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(inputMapping);
      }

      v10 = *(*(&v22 + 1) + 8 * v9);
      destinationType = [v10 destinationType];
      if (!objc_msgSend_isEqualToString_(destinationType))
      {
        goto LABEL_12;
      }

      sourceType = [v10 sourceType];
      isEqualToString = objc_msgSend_isEqualToString_(sourceType);

      if (isEqualToString)
      {
        break;
      }

LABEL_13:
      if (v7 == ++v9)
      {
        v7 = [inputMapping countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    processedParameters = [(WFAction *)self processedParameters];

    if (processedParameters)
    {
      destinationType = [(WFAction *)self processedParameters];
      sourceKey = [v10 sourceKey];
      v20 = [destinationType objectForKey:sourceKey];
      v3 = [(WFInterchangeAction *)self mappedValueIsTrue:v20 forContentMapping:v10];

LABEL_18:
      goto LABEL_19;
    }

    sourceKey2 = [v10 sourceKey];
    v16 = [(WFAction *)self parameterStateForKey:sourceKey2];
    v17 = objc_opt_class();
    destinationType = WFEnforceClass_1501(v16, v17);

    value = [destinationType value];

    if (value)
    {
      sourceKey = [destinationType value];
      v3 = [(WFInterchangeAction *)self mappedValueIsTrue:sourceKey forContentMapping:v10];
      goto LABEL_18;
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_15:
  v3 = 0;
LABEL_19:

  return v3;
}

- (BOOL)shouldSuppressCallback
{
  mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
  provider = [mEMORY[0x1E6996CA8] provider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  workflow = [(WFAction *)self workflow];
  actions = [workflow actions];

  v8 = [actions indexOfObject:self];
  v9 = v8 == [actions count] - 1;

  return v9;
}

- (BOOL)requiresCallback
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    interchangeAction2 = [(WFInterchangeAction *)self interchangeAction];
    if ([interchangeAction2 isCallbackAction])
    {
      v5 = ![(WFInterchangeAction *)self callbackIsCurrentlyDisabled];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)outputsMultipleItems
{
  if ([(WFInterchangeAction *)self inputPassthrough])
  {

    return [(WFInterchangeAction *)self inputsMultipleItems];
  }

  else
  {
    interchangeAction = [(WFInterchangeAction *)self interchangeAction];
    outputsMultipleItems = [interchangeAction outputsMultipleItems];

    return outputsMultipleItems;
  }
}

- (BOOL)inputsMultipleItems
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  inputsMultipleItems = [interchangeAction inputsMultipleItems];

  return inputsMultipleItems;
}

- (id)outputContentClasses
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  outputContentClasses = [interchangeAction outputContentClasses];

  if ([outputContentClasses count])
  {
    inputContentClasses = outputContentClasses;
  }

  else
  {
    inputContentClasses = [(WFInterchangeAction *)self inputContentClasses];
  }

  v6 = inputContentClasses;

  return v6;
}

- (id)specifiedOutputContentClasses
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  outputContentClasses = [interchangeAction outputContentClasses];

  if ([outputContentClasses count])
  {
    specifiedInputContentClasses = outputContentClasses;
  }

  else
  {
    specifiedInputContentClasses = [(WFInterchangeAction *)self specifiedInputContentClasses];
  }

  v6 = specifiedInputContentClasses;

  return v6;
}

- (id)inputContentClasses
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = 360;
  contentClasses = self->_contentClasses;
  if (!contentClasses)
  {
    interchangeAction = [(WFInterchangeAction *)self interchangeAction];
    skipItemClassesSupportingInput = [interchangeAction skipItemClassesSupportingInput];

    if (skipItemClassesSupportingInput)
    {
      interchangeAction2 = [(WFInterchangeAction *)self interchangeAction];
      inputContentClasses = [interchangeAction2 inputContentClasses];
      v9 = [inputContentClasses copy];
      v10 = self->_contentClasses;
      self->_contentClasses = v9;
    }

    else
    {
      v29 = 360;
      interchangeAction2 = objc_opt_new();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      interchangeAction3 = [(WFInterchangeAction *)self interchangeAction];
      inputContentClasses2 = [interchangeAction3 inputContentClasses];

      v13 = [inputContentClasses2 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v37;
        v30 = *v37;
        v31 = inputContentClasses2;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v37 != v15)
            {
              objc_enumerationMutation(inputContentClasses2);
            }

            v17 = *(*(&v36 + 1) + 8 * i);
            if (v17 == objc_opt_class() || v17 == objc_opt_class() || v17 == objc_opt_class() || v17 == objc_opt_class())
            {
              [interchangeAction2 addObject:{v17, v29}];
            }

            else
            {
              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              ownedTypes = [v17 ownedTypes];
              v19 = [ownedTypes countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v33;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v33 != v21)
                    {
                      objc_enumerationMutation(ownedTypes);
                    }

                    v23 = *(*(&v32 + 1) + 8 * j);
                    mEMORY[0x1E6996D68] = [MEMORY[0x1E6996D68] sharedRegistry];
                    v25 = [mEMORY[0x1E6996D68] contentItemClassesSupportingType:v23];
                    [interchangeAction2 unionSet:v25];
                  }

                  v20 = [ownedTypes countByEnumeratingWithState:&v32 objects:v40 count:16];
                }

                while (v20);
              }

              v15 = v30;
              inputContentClasses2 = v31;
            }
          }

          v14 = [inputContentClasses2 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v14);
      }

      array = [interchangeAction2 array];
      v3 = v29;
      v27 = *(&self->super.super.isa + v29);
      *(&self->super.super.isa + v29) = array;
    }

    contentClasses = *(&self->super.super.isa + v3);
  }

  return contentClasses;
}

- (id)specifiedInputContentClasses
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  inputContentClasses = [interchangeAction inputContentClasses];

  return inputContentClasses;
}

- (id)inputParameterKey
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  inputParameterSourceKey = [interchangeAction inputParameterSourceKey];

  return inputParameterSourceKey;
}

- (BOOL)inputPassthrough
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  outputContentClasses = [interchangeAction outputContentClasses];
  v4 = [outputContentClasses count] == 0;

  return v4;
}

- (BOOL)inputRequired
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  inputRequired = [interchangeAction inputRequired];

  return inputRequired;
}

- (id)app
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  v3 = [interchangeAction app];

  return v3;
}

- (id)userInterfaceTypes
{
  v8[1] = *MEMORY[0x1E69E9840];
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8[0] = *MEMORY[0x1E6997170];
    userInterfaceTypes = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = WFInterchangeAction;
    userInterfaceTypes = [(WFAction *)&v7 userInterfaceTypes];
  }

  return userInterfaceTypes;
}

- (id)requiredResources
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  requiredResourceNames = [interchangeAction requiredResourceNames];

  interchangeAction2 = [(WFInterchangeAction *)self interchangeAction];
  definition = [interchangeAction2 definition];
  v8 = [definition objectForKey:@"RequiredResources"];

  v9 = v8;
  if (!v8)
  {
    if (requiredResourceNames)
    {
      v29 = requiredResourceNames;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = requiredResourceNames;
      v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v32;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v32 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v31 + 1) + 8 * i);
            if ((objc_msgSend_isEqualToString_(v14) & 1) == 0)
            {
              v15 = v3;
              v16 = objc_opt_new();
              [v16 setObject:v14 forKey:@"WFResourceClass"];
              interchangeAction3 = [(WFInterchangeAction *)self interchangeAction];
              v18 = [interchangeAction3 app];
              identifier = [v18 identifier];
              [v16 setObject:identifier forKey:@"AppIdentifier"];

              interchangeAction4 = [(WFInterchangeAction *)self interchangeAction];
              objc_opt_class();
              LOBYTE(identifier) = objc_opt_isKindOfClass();

              if (identifier)
              {
                interchangeAction5 = [(WFInterchangeAction *)self interchangeAction];
                scheme = [interchangeAction5 scheme];
                v22Scheme = [scheme scheme];
                [v16 setObject:v22Scheme forKey:@"UtilizedScheme"];
              }

              v3 = v15;
              [v15 addObject:v16];
            }
          }

          v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v11);
      }

      v8 = 0;
      requiredResourceNames = v29;
    }

    interchangeAction6 = [(WFInterchangeAction *)self interchangeAction];
    objc_opt_class();
    objc_opt_isKindOfClass();

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [v3 addObject:v26];

    v9 = v3;
  }

  v27 = v9;

  return v27;
}

- (id)appDescriptor
{
  appDescriptor = self->_appDescriptor;
  if (!appDescriptor)
  {
    interchangeAction = [(WFInterchangeAction *)self interchangeAction];
    v5 = [interchangeAction app];
    v6 = [(WFInterchangeAction *)self appDescriptorFromWFInterchangeApp:v5];

    v7 = objc_alloc(MEMORY[0x1E69635F8]);
    interchangeAction2 = [(WFInterchangeAction *)self interchangeAction];
    v9 = [interchangeAction2 app];
    bundleIdentifier = [v9 bundleIdentifier];
    v11 = [v7 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

    if (!v11)
    {
      goto LABEL_5;
    }

    mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
    v13 = [mEMORY[0x1E696E748] resolvedAppMatchingDescriptor:v6];
    v14 = self->_appDescriptor;
    self->_appDescriptor = v13;

    appDescriptor = self->_appDescriptor;
  }

  v6 = appDescriptor;
LABEL_5:

  return v6;
}

- (id)appDescriptorFromWFInterchangeApp:(id)app
{
  v3 = MEMORY[0x1E696E720];
  appCopy = app;
  v5 = [v3 alloc];
  localizedName = [appCopy localizedName];
  bundleIdentifier = [appCopy bundleIdentifier];

  v8 = [v5 initWithLocalizedName:localizedName bundleIdentifier:bundleIdentifier extensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 supportedIntents:0 bundleURL:0 documentTypes:0];

  return v8;
}

- (BOOL)visibleForUse:(int64_t)use
{
  if (use)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = WFInterchangeAction;
  if (![(WFAction *)&v7 visibleForUse:?])
  {
    return 0;
  }

  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  isDiscoverable = [interchangeAction isDiscoverable];

  return isDiscoverable;
}

- (BOOL)isDiscontinued
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  isDiscontinued = [interchangeAction isDiscontinued];

  return isDiscontinued;
}

- (id)localizedKeywordsWithContext:(id)context
{
  contextCopy = context;
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  keywords = [interchangeAction keywords];

  if (keywords)
  {
    v7 = [contextCopy localize:keywords];
    v8 = [v7 componentsSeparatedByString:@"|"];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)descriptionDefinition
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  descriptionDefinition = [interchangeAction descriptionDefinition];

  return descriptionDefinition;
}

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  v6 = [interchangeAction localizedSubcategoryWithContext:contextCopy];

  return v6;
}

- (id)parameterSummary
{
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  parameterSummaryDefinition = [interchangeAction parameterSummaryDefinition];

  return parameterSummaryDefinition;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  interchangeAction = [(WFInterchangeAction *)self interchangeAction];
  v6 = [interchangeAction localizedNameWithContext:contextCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = WFLocalizedStringResourceWithKey(@"Unknown Action", @"Unknown Action");
    v7 = [contextCopy localize:v8];
  }

  return v7;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = WFInterchangeAction;
  v3 = [(WFAction *)&v7 description];
  v4 = [(WFInterchangeAction *)self app];
  v5 = [v3 stringByAppendingFormat:@": %@", v4];

  return v5;
}

- (WFInterchangeAction)initWithInterchangeAction:(id)action identifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  v47[2] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  identifierCopy = identifier;
  definitionCopy = definition;
  parametersCopy = parameters;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFInterchangeAction.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v39 = parametersCopy;
  v40 = identifierCopy;
  if (!definitionCopy)
  {
    v15 = [WFActionDefinition alloc];
    definitionCopy = [(WFActionDefinition *)v15 initWithDictionary:MEMORY[0x1E695E0F8]];
  }

  v46[0] = @"AppDefinition";
  v44 = *MEMORY[0x1E69E0908];
  v16 = [actionCopy app];
  identifier = [v16 identifier];
  v45 = identifier;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v46[1] = @"ICActionIdentifier";
  v47[0] = v18;
  identifier2 = [actionCopy identifier];
  v47[1] = identifier2;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v21 = [(WFActionDefinition *)definitionCopy definitionByAddingEntriesInDictionary:v20];

  v22 = [v21 objectForKey:@"Parameters"];

  if (v22)
  {
    v23 = v39;
  }

  else
  {
    inputMapping = [actionCopy inputMapping];
    v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sourceType = %@", @"Parameter"];
    v26 = [inputMapping filteredArrayUsingPredicate:v25];

    if ([v26 count])
    {
      v27 = [v26 if_compactMap:&__block_literal_global_67484];
      v42 = @"Parameters";
      v43 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v29 = [v21 definitionByAddingEntriesInDictionary:v28];

      v21 = v29;
    }

    v23 = v39;
  }

  identifier3 = [actionCopy identifier];
  v31 = [(WFInterchangeAction *)self disabledPlatformsForInterchangeActionWithIdentifier:identifier3];

  v32 = WFInjectDisabledPlatformsInActionDefinition(v31, v21);

  v41.receiver = self;
  v41.super_class = WFInterchangeAction;
  v33 = [(WFAction *)&v41 initWithIdentifier:v40 definition:v32 serializedParameters:v23];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_interchangeAction, action);
    v35 = v34;
  }

  return v34;
}

id __92__WFInterchangeAction_initWithInterchangeAction_identifier_definition_serializedParameters___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 parameterUI];
  v14 = @"Key";
  v4 = [v2 sourceKey];
  v15[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v6 = [v3 definitionByAddingEntriesInDictionary:v5];

  v7 = [v2 parameterDefault];

  if (v7)
  {
    v12 = @"DefaultValue";
    v8 = [v2 parameterDefault];
    v13 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [v6 definitionByAddingEntriesInDictionary:v9];

    v6 = v10;
  }

  return v6;
}

- (WFInterchangeAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  v73 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  definitionCopy = definition;
  parametersCopy = parameters;
  v8 = [definitionCopy objectForKey:@"AppDefinition"];
  v9 = objc_opt_class();
  v10 = WFEnforceClass_1501(v8, v9);

  v52 = v10;
  v11 = [v10 objectForKey:*MEMORY[0x1E69E0908]];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_1501(v11, v12);

  v54 = definitionCopy;
  v14 = [definitionCopy objectForKey:@"ICActionIdentifier"];
  v15 = objc_opt_class();
  v16 = WFEnforceClass_1501(v14, v15);

  if (v13)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v48 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Interchange actions created from the bundled action must include an app identifier and Interchange action identifier" userInfo:0];
    objc_exception_throw(v48);
  }

  v18 = +[WFInterchangeAppRegistry sharedRegistry];
  v51 = v13;
  v19 = [v18 appWithIdentifier:v13];

  v20 = v19;
  v21 = v16;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v57 = v20;
  schemes = [v20 schemes];
  v50 = [schemes countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v50)
  {
    v23 = *v67;
    v49 = *v67;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v67 != v23)
        {
          objc_enumerationMutation(schemes);
        }

        v25 = *(*(&v66 + 1) + 8 * i);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        actions = [v25 actions];
        v27 = [actions countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v63;
          while (2)
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v63 != v29)
              {
                objc_enumerationMutation(actions);
              }

              v31 = *(*(&v62 + 1) + 8 * j);
              identifier = [v31 identifier];
              isEqualToString = objc_msgSend_isEqualToString_(identifier);

              if (isEqualToString)
              {
                v41 = v31;

                goto LABEL_31;
              }
            }

            v28 = [actions countByEnumeratingWithState:&v62 objects:v71 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        v23 = v49;
      }

      v50 = [schemes countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v50);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  schemes = [v57 documentActions];
  v34 = [schemes countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v59;
    while (2)
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v59 != v36)
        {
          objc_enumerationMutation(schemes);
        }

        v38 = *(*(&v58 + 1) + 8 * k);
        identifier2 = [v38 identifier];
        v40 = objc_msgSend_isEqualToString_(identifier2);

        if (v40)
        {
          v41 = v38;
          goto LABEL_31;
        }
      }

      v35 = [schemes countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v41 = 0;
LABEL_31:

  if (v41)
  {
    v42 = identifierCopy;
    v44 = parametersCopy;
    v43 = v54;
    selfCopy = [(WFInterchangeAction *)self initWithInterchangeAction:v41 identifier:identifierCopy definition:v54 serializedParameters:parametersCopy];
    v46 = selfCopy;
  }

  else
  {
    v46 = 0;
    selfCopy = self;
    v42 = identifierCopy;
    v44 = parametersCopy;
    v43 = v54;
  }

  return v46;
}

@end