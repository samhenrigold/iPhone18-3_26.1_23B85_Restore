@interface INWorkflowDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INWorkflowDomainLoadIntentResponseDescriptionIfNeeded

void ___INWorkflowDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v35[1] = *MEMORY[0x1E69E9840];
  v27 = [INIntentResponseDescription alloc];
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v28 = [[INIntentSlotDescription alloc] initWithName:@"underlyingIntent" tag:1 facadePropertyName:@"underlyingIntent" dataPropertyName:@"underlyingIntent" isExtended:0 isPrivate:0 valueType:197 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v34[0] = v28;
  v0 = [[INIntentSlotDescription alloc] initWithName:@"underlyingIntentResponse" tag:2 facadePropertyName:@"underlyingIntentResponse" dataPropertyName:@"underlyingIntentResponse" isExtended:0 isPrivate:0 valueType:197 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v34[1] = v0;
  v1 = [[INIntentSlotDescription alloc] initWithName:@"utterance" tag:3 facadePropertyName:@"utterance" dataPropertyName:@"utterance" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v34[2] = v1;
  v2 = [[INIntentSlotDescription alloc] initWithName:@"waitingForResume" tag:4 facadePropertyName:@"waitingForResume" dataPropertyName:@"waitingForResume" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v34[3] = v2;
  v3 = [[INIntentSlotDescription alloc] initWithName:@"continueRunning" tag:5 facadePropertyName:@"continueRunning" dataPropertyName:@"continueRunning" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v34[4] = v3;
  v4 = [[INIntentSlotDescription alloc] initWithName:@"step" tag:6 facadePropertyName:@"steps" dataPropertyName:@"steps" isExtended:0 isPrivate:0 valueType:199 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v34[5] = v4;
  v5 = [[INIntentSlotDescription alloc] initWithName:@"requestsIntentExecution" tag:7 facadePropertyName:@"requestsIntentExecution" dataPropertyName:@"requestsIntentExecution" isExtended:0 isPrivate:0 valueType:1 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v34[6] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:7];
  v7 = _INIntentSchemaBuildIntentSlotDescriptionMap(v6);
  v8 = [(INIntentResponseDescription *)v27 initWithName:@"RunWorkflowIntentResponse" facadeClass:v26 dataClass:v25 type:@"sirikit.intent.workflow.RunWorkflowIntentResponse" isPrivate:0 slotsByName:v7];
  v35[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];

  v10 = [v9 count];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v10];
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v10];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = [v18 name];
        [v11 setObject:v18 forKey:v19];

        v20 = [v18 type];
        [v12 setObject:v18 forKey:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  v21 = [v11 copy];
  v22 = sWorkflowDomain_intentResponseDescsByName;
  sWorkflowDomain_intentResponseDescsByName = v21;

  v23 = [v12 copy];
  v24 = sWorkflowDomain_intentResponseDescsByType;
  sWorkflowDomain_intentResponseDescsByType = v23;
}

@end