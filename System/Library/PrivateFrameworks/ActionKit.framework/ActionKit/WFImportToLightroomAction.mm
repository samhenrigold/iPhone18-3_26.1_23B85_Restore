@interface WFImportToLightroomAction
- (id)contentDestinationWithError:(id *)error;
- (id)generatedIntentWithIdentifier:(id)identifier input:(id)input processedParameters:(id)parameters error:(id *)error;
- (void)initializeParameters;
- (void)resolveSlot:(id)slot withProcessedValue:(id)value parameter:(id)parameter input:(id)input completion:(id)completion;
@end

@implementation WFImportToLightroomAction

- (id)contentDestinationWithError:(id *)error
{
  v3 = MEMORY[0x277CFC238];
  appDescriptor = [(WFHandleIntentAction *)self appDescriptor];
  v5 = [v3 locationWithAppDescriptor:appDescriptor];

  return v5;
}

- (void)resolveSlot:(id)slot withProcessedValue:(id)value parameter:(id)parameter input:(id)input completion:(id)completion
{
  v32[3] = *MEMORY[0x277D85DE8];
  slotCopy = slot;
  valueCopy = value;
  parameterCopy = parameter;
  inputCopy = input;
  completionCopy = completion;
  wf_slotName = [slotCopy wf_slotName];
  v18 = [wf_slotName isEqualToString:@"fileURLs"];

  if (v18)
  {
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __87__WFImportToLightroomAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke;
    v30[3] = &unk_278C1EE80;
    v31 = completionCopy;
    [inputCopy generateCollectionByCoercingToItemClasses:v19 completionHandler:v30];
  }

  else
  {
    wf_slotName2 = [slotCopy wf_slotName];
    v21 = [wf_slotName2 isEqualToString:@"preset"];

    if (v21)
    {
      v22 = valueCopy;
      identifier = [v22 identifier];

      if (!identifier)
      {
        v28 = +[WFLightroomPresetPickerParameter presetsByGroup];
        v24 = [(WFImportToLightroomAction *)self parameterValueForKey:@"presetGroup" ofClass:objc_opt_class()];
        v25 = [v28 objectForKeyedSubscript:v24];
        displayString = [v22 displayString];
        v27 = [v25 objectMatchingKey:@"displayString" value:displayString];

        v22 = v27;
      }

      (*(completionCopy + 2))(completionCopy, v22, 0);
    }

    else
    {
      v29.receiver = self;
      v29.super_class = WFImportToLightroomAction;
      [(WFHandleIntentAction *)&v29 resolveSlot:slotCopy withProcessedValue:valueCopy parameter:parameterCopy input:inputCopy completion:completionCopy];
    }
  }
}

void __87__WFImportToLightroomAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  if ([v8 numberOfItems])
  {
    v7 = [v8 items];
    [v7 if_mapAsynchronously:&__block_literal_global_17457 completionHandler:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __87__WFImportToLightroomAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v5 supportedTypes];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v18 = v6;
    v10 = *v22;
    v11 = *MEMORY[0x277CE1E48];
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [MEMORY[0x277D79F68] typeWithUTType:{v11, v18}];
        v15 = [v13 conformsToType:v14];

        if (v15)
        {
          v16 = v13;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v16 = 0;
LABEL_11:
    v6 = v18;
  }

  else
  {
    v16 = 0;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__WFImportToLightroomAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke_3;
  v19[3] = &unk_278C211F8;
  v20 = v6;
  v17 = v6;
  [v5 getFileRepresentation:v19 forType:v16];
}

void __87__WFImportToLightroomAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 fileURL];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFImportToLightroomAction;
  [(WFHandleCustomIntentAction *)&v4 initializeParameters];
  v3 = [(WFImportToLightroomAction *)self parameterForKey:@"preset"];
  [v3 setAction:self];
}

- (id)generatedIntentWithIdentifier:(id)identifier input:(id)input processedParameters:(id)parameters error:(id *)error
{
  v8.receiver = self;
  v8.super_class = WFImportToLightroomAction;
  v6 = [(WFHandleCustomIntentAction *)&v8 generatedIntentWithIdentifier:identifier input:input processedParameters:parameters error:error];
  [v6 _setShouldForwardToAppOnSuccess:1];

  return v6;
}

@end