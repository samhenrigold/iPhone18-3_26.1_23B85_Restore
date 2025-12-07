@interface ATXModeFaceComplicationAppDataSource
- (id)provideComplicationsForSuggestedFaceType:(int64_t)type environment:(id)environment;
@end

@implementation ATXModeFaceComplicationAppDataSource

- (id)provideComplicationsForSuggestedFaceType:(int64_t)type environment:(id)environment
{
  v41 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v28 = objc_alloc_init(ATXSuggestedPagesAppAggregator);
  v6 = [(ATXSuggestedPagesAppAggregator *)v28 provideAppsForSuggestedPageType:ATXSuggestedPageTypeFromSuggestedFaceType(type) candidateApps:0 environment:environmentCopy];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v27 = v9;
  v11 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_129];
  v12 = [v10 initWithArray:v11];

  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  complicationWidgetDescriptors = [mEMORY[0x277CEB998] complicationWidgetDescriptors];

  v26 = objc_alloc_init(MEMORY[0x277CEB568]);
  homeScreenWidgetPersonalities = [v26 homeScreenWidgetPersonalities];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __93__ATXModeFaceComplicationAppDataSource_provideComplicationsForSuggestedFaceType_environment___block_invoke_2;
  v36[3] = &unk_27859DFD0;
  v25 = v12;
  v37 = v25;
  v16 = environmentCopy;
  v38 = v16;
  v24 = homeScreenWidgetPersonalities;
  v39 = v24;
  v17 = [complicationWidgetDescriptors _pas_filteredSetWithTest:v36];
  v18 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v32 + 1) + 8 * i) supportedFamilies];
        v30 = v16;
        v31 = v18;
        CHSWidgetFamilyMaskEnumerateFamilies();
      }

      v20 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v20);
  }

  return v18;
}

uint64_t __93__ATXModeFaceComplicationAppDataSource_provideComplicationsForSuggestedFaceType_environment___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionIdentity];
  v5 = [v4 containerBundleIdentifier];

  if ([v5 length] && objc_msgSend(a1[4], "containsObject:", v5) && (objc_msgSend(a1[5], "appLaunchCounts"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", v5), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "uniqueDaysLaunched"), v7, v6, v8 >= 0xA))
  {
    v11 = objc_alloc(MEMORY[0x277CEB9B0]);
    v12 = [v3 extensionBundleIdentifier];
    v13 = [v3 kind];
    v14 = [v11 initWithExtensionBundleId:v12 kind:v13];

    v9 = [a1[6] containsObject:v14];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __93__ATXModeFaceComplicationAppDataSource_provideComplicationsForSuggestedFaceType_environment___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (CHSWidgetFamilyIsAccessory())
  {
    v6 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:*(a1 + 32) widgetFamily:a2 intent:0 source:4];
    [v6 setPredictionSource:@"App"];
    v4 = [v6 containerBundleIdentifier];
    [ATXModeFaceComplicationUtilities complicationScoreForAppLaunch:v4 environment:*(a1 + 40)];
    [v6 setScore:v5 * 0.2];

    [*(a1 + 48) addObject:v6];
  }
}

@end