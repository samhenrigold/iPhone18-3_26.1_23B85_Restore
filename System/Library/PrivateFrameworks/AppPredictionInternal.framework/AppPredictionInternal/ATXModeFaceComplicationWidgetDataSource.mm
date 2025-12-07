@interface ATXModeFaceComplicationWidgetDataSource
- (id)provideComplicationsForSuggestedFaceType:(int64_t)type environment:(id)environment;
@end

@implementation ATXModeFaceComplicationWidgetDataSource

- (id)provideComplicationsForSuggestedFaceType:(int64_t)type environment:(id)environment
{
  v41 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v29 = objc_alloc_init(ATXSuggestedPagesWidgetAggregator);
  v30 = environmentCopy;
  v6 = [(ATXSuggestedPagesWidgetAggregator *)v29 provideWidgetsForPageType:ATXSuggestedPageTypeFromSuggestedFaceType(type) environment:environmentCopy];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v28 = v9;
  v11 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_242];
  v12 = [v10 initWithArray:v11];

  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  complicationWidgetDescriptors = [mEMORY[0x277CEB998] complicationWidgetDescriptors];

  v26 = objc_alloc_init(MEMORY[0x277CEB568]);
  homeScreenWidgetPersonalities = [v26 homeScreenWidgetPersonalities];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __96__ATXModeFaceComplicationWidgetDataSource_provideComplicationsForSuggestedFaceType_environment___block_invoke_2;
  v37[3] = &unk_2785A16B8;
  v25 = v12;
  v38 = v25;
  v24 = homeScreenWidgetPersonalities;
  v39 = v24;
  v27 = complicationWidgetDescriptors;
  v16 = [complicationWidgetDescriptors _pas_filteredSetWithTest:v37];
  v17 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v33 + 1) + 8 * i) supportedFamilies];
        v31 = v30;
        v32 = v17;
        CHSWidgetFamilyMaskEnumerateFamilies();
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v20);
  }

  return v17;
}

uint64_t __96__ATXModeFaceComplicationWidgetDataSource_provideComplicationsForSuggestedFaceType_environment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionIdentity];
  v5 = [v4 containerBundleIdentifier];

  if ([v5 length] && objc_msgSend(*(a1 + 32), "containsObject:", v5))
  {
    v6 = objc_alloc(MEMORY[0x277CEB9B0]);
    v7 = [v3 extensionBundleIdentifier];
    v8 = [v3 kind];
    v9 = [v6 initWithExtensionBundleId:v7 kind:v8];

    v10 = [*(a1 + 40) containsObject:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __96__ATXModeFaceComplicationWidgetDataSource_provideComplicationsForSuggestedFaceType_environment___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (CHSWidgetFamilyIsAccessory())
  {
    v6 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:*(a1 + 32) widgetFamily:a2 intent:0 source:4];
    [v6 setPredictionSource:@"Widget"];
    v4 = [v6 containerBundleIdentifier];
    [ATXModeFaceComplicationUtilities complicationScoreForAppLaunch:v4 environment:*(a1 + 40)];
    [v6 setScore:v5 * 0.3];

    [*(a1 + 48) addObject:v6];
  }
}

@end