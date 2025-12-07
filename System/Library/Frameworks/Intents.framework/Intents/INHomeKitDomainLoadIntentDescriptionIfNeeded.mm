@interface INHomeKitDomainLoadIntentDescriptionIfNeeded
@end

@implementation INHomeKitDomainLoadIntentDescriptionIfNeeded

void ___INHomeKitDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v56[4] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v46 = [[INIntentSlotDescription alloc] initWithName:@"entities" tag:2 facadePropertyName:@"entities" dataPropertyName:@"entities" isExtended:0 isPrivate:0 valueType:46 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9708 provideOptionsSelectorStrings:&unk_1F02D9720 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEntitiesForConfigureHome_withCompletion_, sel_resolveEntitiesForConfigureHome_completion_, 0];
  v55 = v46;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  v44 = _INIntentSchemaBuildIntentSlotDescriptionMap(v45);
  v43 = [(INIntentDescription *)v0 initWithName:@"ConfigureHomeIntent" responseName:@"ConfigureHomeIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.home.ConfigureHomeIntent" isPrivate:0 handleSelector:sel_handleConfigureHome_completion_ confirmSelector:sel_confirmConfigureHome_completion_ slotsByName:v44];
  v56[0] = v43;
  v36 = [INIntentDescription alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v42 = [[INIntentSlotDescription alloc] initWithName:@"userTask" tag:5 facadePropertyName:@"userTask" dataPropertyName:@"userTask" isExtended:0 isPrivate:0 valueType:48 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9738 provideOptionsSelectorStrings:&unk_1F02D9750 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveUserTaskForControlHome_withCompletion_, sel_resolveUserTaskForControlHome_completion_, 0];
  v54[0] = v42;
  v41 = [[INIntentSlotDescription alloc] initWithName:@"filters" tag:6 facadePropertyName:@"filters" dataPropertyName:@"filters" isExtended:0 isPrivate:0 valueType:49 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D9768 provideOptionsSelectorStrings:&unk_1F02D9780 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveFiltersForControlHome_withCompletion_, sel_resolveFiltersForControlHome_completion_, 0];
  v54[1] = v41;
  v40 = [[INIntentSlotDescription alloc] initWithName:@"time" tag:7 facadePropertyName:@"time" dataPropertyName:@"time" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9798 provideOptionsSelectorStrings:&unk_1F02D97B0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTimeForControlHome_withCompletion_, sel_resolveTimeForControlHome_completion_, 0];
  v54[2] = v40;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
  v38 = _INIntentSchemaBuildIntentSlotDescriptionMap(v39);
  v37 = [(INIntentDescription *)v36 initWithName:@"ControlHomeIntent" responseName:@"ControlHomeIntentResponse" facadeClass:v3 dataClass:v4 type:@"sirikit.intent.home.ControlHomeIntent" isPrivate:0 handleSelector:sel_handleControlHome_completion_ confirmSelector:sel_confirmControlHome_completion_ slotsByName:v38];
  v56[1] = v37;
  v5 = [INIntentDescription alloc];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v35 = [[INIntentSlotDescription alloc] initWithName:@"entities" tag:2 facadePropertyName:@"entities" dataPropertyName:@"entities" isExtended:0 isPrivate:0 valueType:46 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D97C8 provideOptionsSelectorStrings:&unk_1F02D97E0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveEntitiesForQueryHome_withCompletion_, sel_resolveEntitiesForQueryHome_completion_, 0];
  v53 = v35;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v33 = _INIntentSchemaBuildIntentSlotDescriptionMap(v34);
  v8 = [(INIntentDescription *)v5 initWithName:@"QueryHomeIntent" responseName:@"QueryHomeIntentResponse" facadeClass:v6 dataClass:v7 type:@"sirikit.intent.home.QueryHomeIntent" isPrivate:0 handleSelector:sel_handleQueryHome_completion_ confirmSelector:sel_confirmQueryHome_completion_ slotsByName:v33];
  v56[2] = v8;
  v32 = [INIntentDescription alloc];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [[INIntentSlotDescription alloc] initWithName:@"filters" tag:2 facadePropertyName:@"filters" dataPropertyName:@"filters" isExtended:0 isPrivate:0 valueType:49 valueStyle:3 defaultValueSelectorStrings:&unk_1F02D97F8 provideOptionsSelectorStrings:&unk_1F02D9810 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveFiltersForShowHome_withCompletion_, sel_resolveFiltersForShowHome_completion_, 0];
  v52[0] = v11;
  v12 = [[INIntentSlotDescription alloc] initWithName:@"time" tag:3 facadePropertyName:@"time" dataPropertyName:@"time" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02D9828 provideOptionsSelectorStrings:&unk_1F02D9840 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTimeForShowHome_withCompletion_, sel_resolveTimeForShowHome_completion_, 0];
  v52[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v14 = _INIntentSchemaBuildIntentSlotDescriptionMap(v13);
  v15 = [(INIntentDescription *)v32 initWithName:@"ShowHomeIntent" responseName:@"ShowHomeIntentResponse" facadeClass:v9 dataClass:v10 type:@"sirikit.intent.home.ShowHomeIntent" isPrivate:0 handleSelector:sel_handleShowHome_completion_ confirmSelector:sel_confirmShowHome_completion_ slotsByName:v14];
  v56[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:4];

  v17 = [v16 count];
  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v17];
  v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v17];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v47 + 1) + 8 * i);
        v26 = [v25 name];
        [v18 setObject:v25 forKey:v26];

        v27 = [v25 type];
        [v19 setObject:v25 forKey:v27];
      }

      v22 = [v20 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v22);
  }

  v28 = [v18 copy];
  v29 = sHomeKitDomain_intentDescsByName;
  sHomeKitDomain_intentDescsByName = v28;

  v30 = [v19 copy];
  v31 = sHomeKitDomain_intentDescsByType;
  sHomeKitDomain_intentDescsByType = v30;
}

@end