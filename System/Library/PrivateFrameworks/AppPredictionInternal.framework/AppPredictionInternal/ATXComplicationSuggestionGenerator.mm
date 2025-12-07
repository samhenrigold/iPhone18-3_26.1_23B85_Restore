@interface ATXComplicationSuggestionGenerator
- (ATXComplicationSet)inlineSet;
- (ATXComplicationSuggestionGenerator)init;
- (BOOL)_complicationIsAlreadyAdded:(id)added alreadyAddedComplications:(id)complications;
- (BOOL)_layoutIsValidGivenComplications:(id)complications allowedComplicationPersonalities:(id)personalities;
- (BOOL)_shouldAddComplication:(id)complication andFilterFromAppsDisabledByAppProtection:(id)protection;
- (id)_circularComplicationFromComplications:(id)complications;
- (id)_complicationsFromFallbackSet:(id)set complicationDescriptors:(id)descriptors alreadyAddedDescriptors:(id)addedDescriptors andFilterFromAppsDisabledByAppProtection:(id)protection;
- (id)_getComplicationsOfFamily:(int64_t)family descriptors:(id)descriptors alreadyAddedDescriptors:(id)addedDescriptors presetComplications:(id)complications limit:(unint64_t)limit;
- (id)_inlineSetDescriptors_ShouldRefresh:(BOOL)refresh;
- (id)_landscapeModularFallbackSets;
- (id)_landscapeModularSetDescriptors_ShouldRefresh:(BOOL)refresh widgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id;
- (id)_modularDescriptors_ShouldRefresh:(BOOL)refresh widgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id;
- (id)_modularFallbackSets;
- (id)_modularLayoutTypesGivenRecentsLayoutType:(int64_t)type;
- (id)_presetLandscapeComplicationsFromPortraitSet:(id)set;
- (id)_recentInlineComplications;
- (id)_recentLandscapeComplicationsWithPresetDictionary:(id)dictionary;
- (id)_recentsComplications_unusedComplications:(id)complications;
- (id)_recentsSet_unusedComplications:(id)complications;
- (id)_rectangularComplicationFromComplications:(id)complications;
- (id)_scoredInlineComplicationDescriptors;
- (id)_scoredModularComplicationDescriptorsWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id;
- (id)_setWithDesiredLayout:(int64_t)layout complicationDescriptors:(id)descriptors unusedRecentsComplications:(id)complications alreadyAddedComplications:(id)addedComplications;
- (id)descriptionForScoredSet:(id)set;
- (id)inputDescriptionForComplicationSuggestionSignal:(id)signal;
- (id)landscapeModularSetsDictsWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id portraitSets:(id)sets;
- (id)landscapeModularSetsWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id presetPortraitComplications:(id)complications;
- (id)modularSetsWithDesiredLayouts:(id)layouts unusedRecentComplications:(id)complications alreadyAddedComplications:(id)addedComplications widgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id;
- (id)modularSetsWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id;
- (id)scoredComplicationsDescription;
- (int64_t)_layoutTypeForSet:(id)set;
- (void)refreshComplicationCache;
- (void)scoredComplicationsDescription;
@end

@implementation ATXComplicationSuggestionGenerator

- (ATXComplicationSuggestionGenerator)init
{
  v14.receiver = self;
  v14.super_class = ATXComplicationSuggestionGenerator;
  v2 = [(ATXComplicationSuggestionGenerator *)&v14 init];
  if (v2)
  {
    mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
    descriptorCache = v2->_descriptorCache;
    v2->_descriptorCache = mEMORY[0x277CEB998];

    v5 = objc_opt_new();
    complicationSuggestionCache = v2->_complicationSuggestionCache;
    v2->_complicationSuggestionCache = v5;

    v7 = objc_opt_new();
    complicationScorer = v2->_complicationScorer;
    v2->_complicationScorer = v7;

    v9 = +[ATXComplicationSuggestionParameters sharedInstance];
    parameters = v2->_parameters;
    v2->_parameters = v9;

    v11 = +[ATXPosterConfigurationCache sharedInstance];
    posterConfigurationCache = v2->_posterConfigurationCache;
    v2->_posterConfigurationCache = v11;
  }

  return v2;
}

- (void)refreshComplicationCache
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not load accessory widget descriptors for complication refresh: %@", &v2, 0xCu);
}

- (id)_recentsSet_unusedComplications:(id)complications
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(ATXComplicationSuggestionGenerator *)self _recentsComplications_unusedComplications:complications];
  v4 = v3;
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * i) setSource:1];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v9 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_recentsComplications_unusedComplications:(id)complications
{
  v70 = *MEMORY[0x277D85DE8];
  complicationsCopy = complications;
  modularComplicationWidgetDescriptors = [(ATXWidgetDescriptorCache *)self->_descriptorCache modularComplicationWidgetDescriptors];
  v45 = [modularComplicationWidgetDescriptors _pas_mappedSetWithTransform:&__block_literal_global_109];
  configurations = [(ATXPosterConfigurationCache *)self->_posterConfigurationCache configurations];
  v5 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v6 = configurations;
  v7 = [v6 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v63;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v63 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v62 + 1) + 8 * v10);
      if ([v11 isSelected])
      {
        complications = [v11 complications];
        if ([(ATXComplicationSuggestionGenerator *)self _layoutIsValidGivenComplications:complications allowedComplicationPersonalities:v45])
        {
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __80__ATXComplicationSuggestionGenerator__recentsComplications_unusedComplications___block_invoke_2;
          v60[3] = &unk_27859CFB8;
          v60[4] = self;
          v61 = v5;
          v13 = [complications _pas_mappedArrayWithTransform:v60];

          if (v13)
          {
            goto LABEL_26;
          }

          goto LABEL_13;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v62 objects:v69 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_13:
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v57;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v57 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v56 + 1) + 8 * i);
        if (([v19 isSelected] & 1) == 0)
        {
          complications2 = [v19 complications];
          if ([(ATXComplicationSuggestionGenerator *)self _layoutIsValidGivenComplications:complications2 allowedComplicationPersonalities:v45])
          {
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __80__ATXComplicationSuggestionGenerator__recentsComplications_unusedComplications___block_invoke_3;
            v54[3] = &unk_27859CFB8;
            v54[4] = self;
            v55 = v5;
            v13 = [complications2 _pas_mappedArrayWithTransform:v54];

            goto LABEL_25;
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v56 objects:v68 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_25:

LABEL_26:
  v38 = v5;
  v21 = objc_alloc(MEMORY[0x277CBEB98]);
  v37 = v13;
  if (v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  v23 = [v21 initWithArray:v22];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v6;
  v42 = [obj countByEnumeratingWithState:&v50 objects:v67 count:16];
  if (v42)
  {
    v41 = *v51;
    do
    {
      v24 = 0;
      do
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v24;
        v25 = *(*(&v50 + 1) + 8 * v24);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        complications3 = [v25 complications];
        v27 = [complications3 countByEnumeratingWithState:&v46 objects:v66 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v47;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v47 != v29)
              {
                objc_enumerationMutation(complications3);
              }

              v31 = *(*(&v46 + 1) + 8 * j);
              v32 = objc_alloc(MEMORY[0x277CEB9B0]);
              extensionBundleIdentifier = [v31 extensionBundleIdentifier];
              kind = [v31 kind];
              v35 = [v32 initWithExtensionBundleId:extensionBundleIdentifier kind:kind];

              if (([v23 containsObject:v31] & 1) == 0 && objc_msgSend(v45, "containsObject:", v35))
              {
                [complicationsCopy addObject:v31];
              }
            }

            v28 = [complications3 countByEnumeratingWithState:&v46 objects:v66 count:16];
          }

          while (v28);
        }

        v24 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v50 objects:v67 count:16];
    }

    while (v42);
  }

  return v37;
}

id __80__ATXComplicationSuggestionGenerator__recentsComplications_unusedComplications___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB9B0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 extensionBundleIdentifier];
  v6 = [v3 kind];

  v7 = [v4 initWithExtensionBundleId:v5 kind:v6];

  return v7;
}

id __80__ATXComplicationSuggestionGenerator__recentsComplications_unusedComplications___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldAddComplication:v3 andFilterFromAppsDisabledByAppProtection:*(a1 + 40)])
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __80__ATXComplicationSuggestionGenerator__recentsComplications_unusedComplications___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldAddComplication:v3 andFilterFromAppsDisabledByAppProtection:*(a1 + 40)])
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_recentInlineComplications
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = objc_opt_new();
  v22 = objc_opt_new();
  inlineComplicationWidgetDescriptors = [(ATXWidgetDescriptorCache *)self->_descriptorCache inlineComplicationWidgetDescriptors];
  v21 = [inlineComplicationWidgetDescriptors _pas_mappedSetWithTransform:&__block_literal_global_31_0];
  selfCopy = self;
  configurations = [(ATXPosterConfigurationCache *)self->_posterConfigurationCache configurations];
  v20 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = configurations;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        inlineComplication = [v9 inlineComplication];
        v11 = [inlineComplication copy];

        v12 = objc_alloc(MEMORY[0x277CEB9B0]);
        extensionBundleIdentifier = [v11 extensionBundleIdentifier];
        kind = [v11 kind];
        v15 = [v12 initWithExtensionBundleId:extensionBundleIdentifier kind:kind];

        if (v11 && ([v22 containsObject:v11] & 1) == 0 && objc_msgSend(v21, "containsObject:", v15) && -[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](selfCopy, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v11, v20))
        {
          if ([v9 isSelected])
          {
            [v18 insertObject:v11 atIndex:0];
          }

          else
          {
            [v18 addObject:v11];
          }

          [v11 setSource:1];
          [v22 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  return v18;
}

id __64__ATXComplicationSuggestionGenerator__recentInlineComplications__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB9B0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 extensionBundleIdentifier];
  v6 = [v3 kind];

  v7 = [v4 initWithExtensionBundleId:v5 kind:v6];

  return v7;
}

- (id)_recentLandscapeComplicationsWithPresetDictionary:(id)dictionary
{
  v71 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = *MEMORY[0x277CEB1E0];
  v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CEB1E0]];
  complications = [v5 complications];
  v7 = [complications mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v54 = v9;

  v10 = *MEMORY[0x277CEB1E8];
  v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CEB1E8]];
  complications2 = [v11 complications];
  v13 = [complications2 mutableCopy];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = objc_opt_new();
  }

  v53 = v15;

  v16 = *MEMORY[0x277CEB1F0];
  v17 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CEB1F0]];
  complications3 = [v17 complications];
  v19 = [complications3 mutableCopy];
  v20 = v19;
  v46 = v4;
  v47 = dictionaryCopy;
  v45 = v16;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = objc_opt_new();
  }

  v52 = v21;

  v59 = objc_opt_new();
  landscapeModularComplicationWidgetDescriptors = [(ATXWidgetDescriptorCache *)self->_descriptorCache landscapeModularComplicationWidgetDescriptors];
  v58 = [landscapeModularComplicationWidgetDescriptors _pas_mappedSetWithTransform:&__block_literal_global_33];
  configurations = [(ATXPosterConfigurationCache *)self->_posterConfigurationCache configurations];
  v56 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = configurations;
  v50 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v50)
  {
    v49 = *v65;
    do
    {
      v23 = 0;
      do
      {
        if (*v65 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v23;
        v24 = *(*(&v64 + 1) + 8 * v23);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v55 = v24;
        landscapeComplications = [v24 landscapeComplications];
        v26 = [landscapeComplications countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v61;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v61 != v28)
              {
                objc_enumerationMutation(landscapeComplications);
              }

              v30 = *(*(&v60 + 1) + 8 * i);
              [v30 setSource:1];
              v31 = objc_alloc(MEMORY[0x277CEB9B0]);
              extensionBundleIdentifier = [v30 extensionBundleIdentifier];
              kind = [v30 kind];
              v34 = [v31 initWithExtensionBundleId:extensionBundleIdentifier kind:kind];

              if (v30 && ([v59 containsObject:v30] & 1) == 0 && objc_msgSend(v58, "containsObject:", v34) && -[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](self, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v30, v56))
              {
                widgetFamily = [v30 widgetFamily];
                if (widgetFamily == 1)
                {
                  if (![v55 isSelected])
                  {
                    v39 = v52;
                    goto LABEL_40;
                  }

                  v37 = v52;
                }

                else
                {
                  v36 = widgetFamily;
                  if (widgetFamily != 11)
                  {
                    if (widgetFamily == 10)
                    {
                      if ([v55 isSelected])
                      {
                        v37 = v54;
                        goto LABEL_33;
                      }

                      v39 = v54;
LABEL_40:
                      [v39 addObject:v30];
                    }

                    else
                    {
                      v38 = __atxlog_handle_lock_screen(widgetFamily);
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        [(ATXComplicationSuggestionGenerator *)v68 _recentLandscapeComplicationsWithPresetDictionary:v36];
                      }
                    }

LABEL_41:
                    [v59 addObject:v30];
                    goto LABEL_42;
                  }

                  if (![v55 isSelected])
                  {
                    v39 = v53;
                    goto LABEL_40;
                  }

                  v37 = v53;
                }

LABEL_33:
                [v37 insertObject:v30 atIndex:0];
                goto LABEL_41;
              }

LABEL_42:
            }

            v27 = [landscapeComplications countByEnumeratingWithState:&v60 objects:v69 count:16];
          }

          while (v27);
        }

        v23 = v51 + 1;
      }

      while (v51 + 1 != v50);
      v50 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v50);
  }

  v40 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v52];
  [v47 setObject:v40 forKeyedSubscript:v45];

  v41 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v53];
  [v47 setObject:v41 forKeyedSubscript:v10];

  v42 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v54];
  [v47 setObject:v42 forKeyedSubscript:v46];

  return v47;
}

id __88__ATXComplicationSuggestionGenerator__recentLandscapeComplicationsWithPresetDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB9B0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 extensionBundleIdentifier];
  v6 = [v3 kind];

  v7 = [v4 initWithExtensionBundleId:v5 kind:v6];

  return v7;
}

- (id)modularSetsWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id
{
  v37 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  if ([(ATXComplicationSuggestionParameters *)self->_parameters alwaysUseFallbackSets])
  {
    _modularFallbackSets = [(ATXComplicationSuggestionGenerator *)self _modularFallbackSets];
  }

  else
  {
    v27 = objc_opt_new();
    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v14 = [(ATXComplicationSuggestionGenerator *)self _recentsSet_unusedComplications:v13];
    v29 = dataCopy;
    if (v14)
    {
      [v27 addObject:v14];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      complications = [v14 complications];
      v16 = [complications countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(complications);
            }

            [v12 addObject:{*(*(&v30 + 1) + 8 * i), v27}];
          }

          v17 = [complications countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v17);
      }

      dataCopy = v29;
    }

    v20 = [(ATXComplicationSuggestionGenerator *)self _modularLayoutTypesGivenRecentsLayoutType:[(ATXComplicationSuggestionGenerator *)self _layoutTypeForSet:v14, v27]];
    v21 = [(ATXComplicationSuggestionGenerator *)self modularSetsWithDesiredLayouts:v20 unusedRecentComplications:v13 alreadyAddedComplications:v12 widgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy];
    v22 = [v21 count];
    v23 = __atxlog_handle_lock_screen(v22);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v24)
      {
        *buf = 138412290;
        v35 = v21;
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "Received modular sets: %@. Returning.", buf, 0xCu);
      }

      v25 = v28;
      [v28 addObjectsFromArray:v21];
      _modularFallbackSets = v28;
    }

    else
    {
      if (v24)
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "No modular sets receiving. Returning fallback sets.", buf, 2u);
      }

      _modularFallbackSets = [(ATXComplicationSuggestionGenerator *)self _modularFallbackSets];
      v25 = v28;
    }

    dataCopy = v29;
  }

  return _modularFallbackSets;
}

- (id)modularSetsWithDesiredLayouts:(id)layouts unusedRecentComplications:(id)complications alreadyAddedComplications:(id)addedComplications widgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id
{
  v42 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  complicationsCopy = complications;
  addedComplicationsCopy = addedComplications;
  v17 = [(ATXComplicationSuggestionGenerator *)self _modularDescriptors_ShouldRefresh:0 widgetDescriptorsAdditionalData:data aggregatedAppLaunchData:launchData bundleIdToCompanionBundleId:id];
  v18 = objc_opt_new();
  if ([layoutsCopy count])
  {
    v19 = [layoutsCopy objectAtIndexedSubscript:0];
    v20 = -[ATXComplicationSuggestionGenerator _setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:](self, "_setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:", [v19 longValue], v17, complicationsCopy, addedComplicationsCopy);

    v22 = __atxlog_handle_lock_screen(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v20;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Set 1 complications: %@", buf, 0xCu);
    }

    if ([v20 count])
    {
      v23 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v20];
      [v18 addObject:v23];
      if ([layoutsCopy count] > 1)
      {
        v25 = [layoutsCopy objectAtIndexedSubscript:1];
        v26 = -[ATXComplicationSuggestionGenerator _setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:](self, "_setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:", [v25 longValue], v17, complicationsCopy, addedComplicationsCopy);

        v28 = __atxlog_handle_lock_screen(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v26;
          _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "Set 2 complications: %@", buf, 0xCu);
        }

        if ([v26 count])
        {
          v29 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v26];
          [v18 addObject:v29];
          if ([layoutsCopy count] > 2)
          {
            v38 = v29;
            v30 = [layoutsCopy objectAtIndexedSubscript:2];
            v39 = -[ATXComplicationSuggestionGenerator _setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:](self, "_setWithDesiredLayout:complicationDescriptors:unusedRecentsComplications:alreadyAddedComplications:", [v30 longValue], v17, complicationsCopy, addedComplicationsCopy);

            v32 = __atxlog_handle_lock_screen(v31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v41 = v26;
              _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "Set 3 complications: %@", buf, 0xCu);
            }

            if ([v39 count])
            {
              v37 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v39];
              [v18 addObject:?];
              v33 = [layoutsCopy count];
              v29 = v38;
              if (v33 >= 4)
              {
                v34 = __atxlog_handle_lock_screen(v33);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  [ATXComplicationSuggestionGenerator modularSetsWithDesiredLayouts:v34 unusedRecentComplications:? alreadyAddedComplications:? widgetDescriptorsAdditionalData:? aggregatedAppLaunchData:? bundleIdToCompanionBundleId:?];
                }
              }

              v24 = v18;
            }

            else
            {
              v35 = __atxlog_handle_lock_screen(0);
              v29 = v38;
              v37 = v35;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "Showing fallback sets since we couldn't fill Set 3", buf, 2u);
              }

              v24 = 0;
            }
          }

          else
          {
            v24 = v18;
          }
        }

        else
        {
          v29 = __atxlog_handle_lock_screen(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "Showing fallback sets since we couldn't fill Set 2", buf, 2u);
          }

          v24 = 0;
        }
      }

      else
      {
        v24 = v18;
      }
    }

    else
    {
      v23 = __atxlog_handle_lock_screen(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "Showing fallback sets since we couldn't fill Set 1", buf, 2u);
      }

      v24 = 0;
    }
  }

  else
  {
    v24 = v18;
  }

  return v24;
}

- (id)_modularDescriptors_ShouldRefresh:(BOOL)refresh widgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id
{
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  fetchModularSetComplicationDescriptors = [(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache fetchModularSetComplicationDescriptors];
  v14 = fetchModularSetComplicationDescriptors;
  if (refresh || ![fetchModularSetComplicationDescriptors count])
  {
    modularComplicationWidgetDescriptors = [(ATXWidgetDescriptorCache *)self->_descriptorCache modularComplicationWidgetDescriptors];
    v15 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer complicationDescriptorsForModularSetGivenComplicationDescriptors:modularComplicationWidgetDescriptors widgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy];
    v17 = [(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache writeComplicationsModularSetCache:v15];
    if ((v17 & 1) == 0)
    {
      v18 = __atxlog_handle_lock_screen(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Error while writing complication cache for set 2", v20, 2u);
      }
    }
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

- (id)_scoredModularComplicationDescriptorsWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id
{
  descriptorCache = self->_descriptorCache;
  idCopy = id;
  launchDataCopy = launchData;
  dataCopy = data;
  modularComplicationWidgetDescriptors = [(ATXWidgetDescriptorCache *)descriptorCache modularComplicationWidgetDescriptors];
  v13 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer scoredComplicationDescriptorsForModularSetGivenComplicationDescriptors:modularComplicationWidgetDescriptors widgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy checkEligibility:0];

  return v13;
}

- (id)landscapeModularSetsDictsWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id portraitSets:(id)sets
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  setsCopy = sets;
  v13 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = setsCopy;
  v14 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [(ATXComplicationSuggestionGenerator *)self _presetLandscapeComplicationsFromPortraitSet:*(*(&v24 + 1) + 8 * i)];
        v19 = [v18 mutableCopy];
        v20 = [(ATXComplicationSuggestionGenerator *)self landscapeModularSetsWithWidgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy presetPortraitComplications:v19];

        [v13 addObject:v20];
      }

      v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  return v13;
}

- (id)landscapeModularSetsWithWidgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id presetPortraitComplications:(id)complications
{
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  complicationsCopy = complications;
  v14 = objc_autoreleasePoolPush();
  if ([(ATXComplicationSuggestionParameters *)self->_parameters alwaysUseFallbackSets])
  {
    _landscapeModularFallbackSets = [(ATXComplicationSuggestionGenerator *)self _landscapeModularFallbackSets];
    goto LABEL_14;
  }

  v51 = v14;
  v16 = objc_opt_new();
  v57 = [(ATXComplicationSuggestionGenerator *)self _landscapeModularSetDescriptors_ShouldRefresh:0 widgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy];
  v55 = dataCopy;
  v56 = objc_opt_new();
  v53 = idCopy;
  v54 = launchDataCopy;
  v52 = complicationsCopy;
  if (complicationsCopy)
  {
    v17 = [(ATXComplicationSuggestionGenerator *)self _recentLandscapeComplicationsWithPresetDictionary:complicationsCopy];
  }

  else
  {
    v18 = objc_opt_new();
    v17 = [(ATXComplicationSuggestionGenerator *)self _recentLandscapeComplicationsWithPresetDictionary:v18];
  }

  v19 = objc_alloc(MEMORY[0x277CEB418]);
  v20 = *MEMORY[0x277CEB1F0];
  v49 = *MEMORY[0x277CEB1F0];
  v21 = [v17 objectForKeyedSubscript:*MEMORY[0x277CEB1F0]];
  complications = [v21 complications];
  v23 = [(ATXComplicationSuggestionGenerator *)self _getComplicationsOfFamily:1 descriptors:v57 alreadyAddedDescriptors:v56 presetComplications:complications limit:2];
  v24 = [v19 initWithComplications:v23];
  [v16 setObject:v24 forKeyedSubscript:v20];

  v25 = objc_alloc(MEMORY[0x277CEB418]);
  v26 = *MEMORY[0x277CEB1E8];
  v27 = [v17 objectForKeyedSubscript:*MEMORY[0x277CEB1E8]];
  complications2 = [v27 complications];
  [(ATXComplicationSuggestionGenerator *)self _getComplicationsOfFamily:11 descriptors:v57 alreadyAddedDescriptors:v56 presetComplications:complications2 limit:2];
  v30 = v29 = v16;
  v31 = [v25 initWithComplications:v30];
  v48 = v26;
  [v29 setObject:v31 forKeyedSubscript:v26];

  v32 = objc_alloc(MEMORY[0x277CEB418]);
  v33 = *MEMORY[0x277CEB1E0];
  v50 = v17;
  v34 = [v17 objectForKeyedSubscript:*MEMORY[0x277CEB1E0]];
  complications3 = [v34 complications];
  v36 = [(ATXComplicationSuggestionGenerator *)self _getComplicationsOfFamily:10 descriptors:v57 alreadyAddedDescriptors:v56 presetComplications:complications3 limit:4];
  v37 = [v32 initWithComplications:v36];
  [v29 setObject:v37 forKeyedSubscript:v33];

  v38 = v29;
  v39 = [v29 objectForKeyedSubscript:v49];
  complications4 = [v39 complications];
  if ([complications4 count] != 2)
  {
    goto LABEL_11;
  }

  v41 = [v29 objectForKeyedSubscript:v48];
  complications5 = [v41 complications];
  if ([complications5 count] != 2)
  {

LABEL_11:
    goto LABEL_12;
  }

  v43 = [v29 objectForKeyedSubscript:v33];
  complications6 = [v43 complications];
  v45 = [complications6 count];

  v38 = v29;
  if (v45 != 4)
  {
LABEL_12:
    _landscapeModularFallbackSets2 = [(ATXComplicationSuggestionGenerator *)self _landscapeModularFallbackSets];
    goto LABEL_13;
  }

  _landscapeModularFallbackSets2 = [v29 copy];
LABEL_13:
  _landscapeModularFallbackSets = _landscapeModularFallbackSets2;
  launchDataCopy = v54;
  dataCopy = v55;
  complicationsCopy = v52;
  idCopy = v53;

  v14 = v51;
LABEL_14:
  objc_autoreleasePoolPop(v14);

  return _landscapeModularFallbackSets;
}

- (id)_landscapeModularSetDescriptors_ShouldRefresh:(BOOL)refresh widgetDescriptorsAdditionalData:(id)data aggregatedAppLaunchData:(id)launchData bundleIdToCompanionBundleId:(id)id
{
  dataCopy = data;
  launchDataCopy = launchData;
  idCopy = id;
  fetchLandscapeModularSetComplicationDescriptors = [(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache fetchLandscapeModularSetComplicationDescriptors];
  v14 = fetchLandscapeModularSetComplicationDescriptors;
  if (refresh || ![fetchLandscapeModularSetComplicationDescriptors count])
  {
    landscapeModularComplicationWidgetDescriptors = [(ATXWidgetDescriptorCache *)self->_descriptorCache landscapeModularComplicationWidgetDescriptors];
    v15 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer complicationDescriptorsForModularSetGivenComplicationDescriptors:landscapeModularComplicationWidgetDescriptors widgetDescriptorsAdditionalData:dataCopy aggregatedAppLaunchData:launchDataCopy bundleIdToCompanionBundleId:idCopy];
    v17 = [(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache writeComplicationsInlineSetCache:v15];
    if ((v17 & 1) == 0)
    {
      v18 = __atxlog_handle_lock_screen(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Error while writing complication cache for inline set", v20, 2u);
      }
    }
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

- (id)_getComplicationsOfFamily:(int64_t)family descriptors:(id)descriptors alreadyAddedDescriptors:(id)addedDescriptors presetComplications:(id)complications limit:(unint64_t)limit
{
  v54 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  addedDescriptorsCopy = addedDescriptors;
  complicationsCopy = complications;
  v38 = objc_opt_new();
  v42 = objc_opt_new();
  v40 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = complicationsCopy;
  v13 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v49 != v15)
      {
        objc_enumerationMutation(obj);
      }

      if (!limit)
      {
        goto LABEL_21;
      }

      v17 = *(*(&v48 + 1) + 8 * v16);
      widgetDescriptor = [v17 widgetDescriptor];
      if (([addedDescriptorsCopy containsObject:widgetDescriptor] & 1) == 0)
      {
        break;
      }

LABEL_19:

      if (v14 == ++v16)
      {
        v14 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }
    }

    containerBundleIdentifier = [v17 containerBundleIdentifier];
    if (containerBundleIdentifier)
    {
      extensionBundleIdentifier = containerBundleIdentifier;
    }

    else
    {
      extensionBundleIdentifier = [v17 extensionBundleIdentifier];
      if (!extensionBundleIdentifier)
      {
        v21 = 1;
        goto LABEL_14;
      }
    }

    if ([v42 containsObject:extensionBundleIdentifier])
    {
LABEL_18:

      goto LABEL_19;
    }

    v21 = 0;
LABEL_14:
    if ([(ATXComplicationSuggestionGenerator *)self _shouldAddComplication:v17 andFilterFromAppsDisabledByAppProtection:v40])
    {
      [v38 addObject:v17];
      [addedDescriptorsCopy addObject:widgetDescriptor];
      if ((v21 & 1) == 0)
      {
        [v42 addObject:extensionBundleIdentifier];
      }

      --limit;
    }

    goto LABEL_18;
  }

LABEL_21:

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v22 = descriptorsCopy;
  v23 = [v22 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v45;
    v37 = v22;
LABEL_23:
    v26 = 0;
    while (1)
    {
      if (*v45 != v25)
      {
        objc_enumerationMutation(v22);
      }

      if (!limit)
      {
        goto LABEL_45;
      }

      v27 = *(*(&v44 + 1) + 8 * v26);
      if (([addedDescriptorsCopy containsObject:v27] & 1) == 0)
      {
        break;
      }

LABEL_43:
      if (v24 == ++v26)
      {
        v24 = [v22 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v24)
        {
          goto LABEL_23;
        }

        goto LABEL_45;
      }
    }

    extensionIdentity = [v27 extensionIdentity];
    containerBundleIdentifier2 = [extensionIdentity containerBundleIdentifier];
    if (containerBundleIdentifier2)
    {
      extensionBundleIdentifier2 = containerBundleIdentifier2;
    }

    else
    {
      extensionBundleIdentifier2 = [v27 extensionBundleIdentifier];

      if (!extensionBundleIdentifier2)
      {
        v31 = 1;
        goto LABEL_34;
      }
    }

    if ([v42 containsObject:{extensionBundleIdentifier2, v37}])
    {
LABEL_42:

      goto LABEL_43;
    }

    v31 = 0;
LABEL_34:
    [v27 disfavoredFamiliesForLocation:{1, v37}];
    [v27 supportedFamilies];
    v32 = CHSWidgetFamilyMaskContainsFamily();
    if (v32 && (v32 = CHSWidgetFamilyMaskContainsFamily(), (v32 & 1) == 0))
    {
      v33 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v27 widgetFamily:family intent:0 source:2];
      [v38 addObject:v33];
      [addedDescriptorsCopy addObject:v27];
      if ((v31 & 1) == 0)
      {
        [v42 addObject:extensionBundleIdentifier2];
      }

      --limit;
      v22 = v37;
    }

    else
    {
      v33 = __atxlog_handle_lock_screen(v32);
      v22 = v37;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, "Incorrect complication descriptor received", buf, 2u);
      }
    }

    goto LABEL_42;
  }

LABEL_45:

  v34 = [v38 copy];

  return v34;
}

- (id)_presetLandscapeComplicationsFromPortraitSet:(id)set
{
  v28 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v21 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  complications = [setCopy complications];
  v8 = [complications countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(complications);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        widgetFamily = [v12 widgetFamily];
        if (widgetFamily == 1)
        {
          v15 = v6;
          goto LABEL_12;
        }

        v14 = widgetFamily;
        if (widgetFamily == 11)
        {
          v15 = v5;
          goto LABEL_12;
        }

        if (widgetFamily == 10)
        {
          v15 = v4;
LABEL_12:
          [v15 addObject:v12];
          continue;
        }

        v16 = __atxlog_handle_lock_screen(widgetFamily);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(ATXComplicationSuggestionGenerator *)v26 _recentLandscapeComplicationsWithPresetDictionary:v14];
        }
      }

      v9 = [complications countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v17 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v6];
  [v21 setObject:v17 forKeyedSubscript:*MEMORY[0x277CEB1F0]];

  v18 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v5];
  [v21 setObject:v18 forKeyedSubscript:*MEMORY[0x277CEB1E8]];

  v19 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v4];
  [v21 setObject:v19 forKeyedSubscript:*MEMORY[0x277CEB1E0]];

  return v21;
}

- (ATXComplicationSet)inlineSet
{
  v51 = *MEMORY[0x277D85DE8];
  v38 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v3 = objc_opt_new();
  selfCopy = self;
  _recentInlineComplications = [(ATXComplicationSuggestionGenerator *)self _recentInlineComplications];
  v5 = _recentInlineComplications;
  if (_recentInlineComplications)
  {
    v6 = [_recentInlineComplications count];
    if (v6 >= 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 subarrayWithRange:{0, v7}];
    v9 = [v8 mutableCopy];

    v3 = v9;
  }

  v10 = [v3 count];
  if (v10 != 3)
  {
    v11 = v10;
    v35 = v5;
    v12 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = v3;
    v13 = v3;
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v45 + 1) + 8 * i);
          containerBundleIdentifier = [v18 containerBundleIdentifier];
          if (containerBundleIdentifier)
          {
            containerBundleIdentifier2 = [v18 containerBundleIdentifier];
            [v12 addObject:containerBundleIdentifier2];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v15);
    }

    [(ATXComplicationSuggestionGenerator *)selfCopy _inlineSetDescriptors_ShouldRefresh:0];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v44 = 0u;
    v21 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 3 - v11;
      v24 = *v42;
LABEL_18:
      v25 = 0;
      while (1)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(obj);
        }

        if (!v23)
        {
          break;
        }

        v26 = *(*(&v41 + 1) + 8 * v25);
        extensionIdentity = [v26 extensionIdentity];
        containerBundleIdentifier3 = [extensionIdentity containerBundleIdentifier];
        if (containerBundleIdentifier3)
        {
          extensionBundleIdentifier = containerBundleIdentifier3;
        }

        else
        {
          extensionBundleIdentifier = [v26 extensionBundleIdentifier];

          if (!extensionBundleIdentifier)
          {
            v30 = 1;
LABEL_28:
            [v26 disfavoredFamiliesForLocation:1];
            [v26 supportedFamilies];
            v31 = CHSWidgetFamilyMaskContainsFamily();
            if (v31 && (v31 = CHSWidgetFamilyMaskContainsFamily(), (v31 & 1) == 0))
            {
              v32 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v26 widgetFamily:12 intent:0 source:2];
              if ([(ATXComplicationSuggestionGenerator *)selfCopy _shouldAddComplication:v32 andFilterFromAppsDisabledByAppProtection:v38])
              {
                [v13 addObject:v32];
                if ((v30 & 1) == 0)
                {
                  [v12 addObject:extensionBundleIdentifier];
                }

                --v23;
              }
            }

            else
            {
              v32 = __atxlog_handle_lock_screen(v31);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "Non inline complication descriptor received", buf, 2u);
              }
            }

            goto LABEL_37;
          }
        }

        if (([v12 containsObject:extensionBundleIdentifier] & 1) == 0)
        {
          v30 = 0;
          goto LABEL_28;
        }

LABEL_37:

        if (v22 == ++v25)
        {
          v22 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v22)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }

    v5 = v35;
    v3 = v36;
  }

  if (v3)
  {
    v33 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v3];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)_inlineSetDescriptors_ShouldRefresh:(BOOL)refresh
{
  fetchInlineSetComplicationDescriptors = [(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache fetchInlineSetComplicationDescriptors];
  v6 = fetchInlineSetComplicationDescriptors;
  if (refresh || ![fetchInlineSetComplicationDescriptors count])
  {
    inlineComplicationWidgetDescriptors = [(ATXWidgetDescriptorCache *)self->_descriptorCache inlineComplicationWidgetDescriptors];
    v7 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer complicationDescriptorsForInlineSetGivenComplicationDescriptors:inlineComplicationWidgetDescriptors];
    v9 = [(ATXComplicationSuggestionCache *)self->_complicationSuggestionCache writeComplicationsInlineSetCache:v7];
    if ((v9 & 1) == 0)
    {
      v10 = __atxlog_handle_lock_screen(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Error while writing complication cache for inline set", v12, 2u);
      }
    }
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)_scoredInlineComplicationDescriptors
{
  inlineComplicationWidgetDescriptors = [(ATXWidgetDescriptorCache *)self->_descriptorCache inlineComplicationWidgetDescriptors];
  v4 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer scoredComplicationDescriptorsForInlineSetGivenComplicationDescriptors:inlineComplicationWidgetDescriptors];

  return v4;
}

- (id)scoredComplicationsDescription
{
  v3 = objc_opt_new();
  [v3 appendString:@"Modular Set Scores:\n"];
  descriptorCache = self->_descriptorCache;
  v19 = 0;
  v5 = [(ATXWidgetDescriptorCache *)descriptorCache fetchAccessoryWidgetDescriptorMetadataWithError:&v19];
  v6 = v19;
  v7 = v6;
  v8 = v5;
  if (!v5)
  {
    v9 = __atxlog_handle_lock_screen(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXComplicationSuggestionGenerator *)v7 scoredComplicationsDescription];
    }

    v8 = MEMORY[0x277CBEC10];
  }

  v10 = objc_alloc_init(MEMORY[0x277CEB388]);
  rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v10 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

  allKeys = [rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps allKeys];
  v13 = [_TtC21AppPredictionInternal26ATXCompanionBundleIdMapper generateMappingForAppBundleIds:allKeys];
  v14 = [(ATXComplicationSuggestionGenerator *)self _scoredModularComplicationDescriptorsWithWidgetDescriptorsAdditionalData:v8 aggregatedAppLaunchData:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps bundleIdToCompanionBundleId:v13];
  v15 = [(ATXComplicationSuggestionGenerator *)self descriptionForScoredSet:v14];

  [v3 appendString:v15];
  [v3 appendString:@"\nInline Set Scores:\n"];
  _scoredInlineComplicationDescriptors = [(ATXComplicationSuggestionGenerator *)self _scoredInlineComplicationDescriptors];
  v17 = [(ATXComplicationSuggestionGenerator *)self descriptionForScoredSet:_scoredInlineComplicationDescriptors];

  [v3 appendString:v17];

  return v3;
}

- (id)inputDescriptionForComplicationSuggestionSignal:(id)signal
{
  descriptorCache = self->_descriptorCache;
  signalCopy = signal;
  complicationWidgetDescriptors = [(ATXWidgetDescriptorCache *)descriptorCache complicationWidgetDescriptors];
  v7 = [(ATXComplicationSuggestionScorer *)self->_complicationScorer inputDescriptionForSignal:signalCopy complicationDescriptors:complicationWidgetDescriptors];

  return v7;
}

- (id)descriptionForScoredSet:(id)set
{
  v33 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v4 = objc_opt_new();
  v27 = setCopy;
  [setCopy keysSortedByValueUsingComparator:&__block_literal_global_45];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = &unk_283A56078;
    v24 = v4;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v27 objectForKeyedSubscript:v10];
        v12 = [v11 isEqual:v8];

        if ((v12 & 1) == 0)
        {
          v13 = MEMORY[0x277CCACA8];
          extensionIdentity = [v10 extensionIdentity];
          containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
          extensionBundleIdentifier = [v10 extensionBundleIdentifier];
          kind = [v10 kind];
          [v10 supportedFamilies];
          CHSWidgetFamilyMaskDescription();
          v17 = v6;
          v18 = v8;
          v20 = v19 = v7;
          v21 = [v27 objectForKeyedSubscript:v10];
          v22 = [v13 stringWithFormat:@"\nContainer: %@\nExtension: %@\nKind: %@\nFamilies:%@\nScore: %@\n", containerBundleIdentifier, extensionBundleIdentifier, kind, v20, v21];

          v7 = v19;
          v8 = v18;
          v6 = v17;

          v4 = v24;
          [v24 appendString:v22];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  [v4 appendString:@"--------------------------------------------"];

  return v4;
}

- (int64_t)_layoutTypeForSet:(id)set
{
  setCopy = set;
  v4 = setCopy;
  if (!setCopy)
  {
    v17 = 0;
    goto LABEL_22;
  }

  complications = [setCopy complications];
  v6 = [complications count];

  complications2 = [v4 complications];
  complications6 = complications2;
  if (v6 != 4)
  {
    v18 = [complications2 count];

    complications3 = [v4 complications];
    complications6 = complications3;
    if (v18 == 3)
    {
      v9 = [complications3 objectAtIndexedSubscript:0];
      if ([v9 widgetFamily] == 11)
      {
        complications4 = [v4 complications];
        v11 = [complications4 objectAtIndexedSubscript:1];
        if ([v11 widgetFamily] == 10)
        {
          complications5 = [v4 complications];
          v21 = [complications5 objectAtIndexedSubscript:2];
          widgetFamily = [v21 widgetFamily];

          if (widgetFamily == 10)
          {
            v17 = 3;
            goto LABEL_22;
          }

LABEL_21:
          v17 = 4;
          goto LABEL_22;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v23 = [complications3 count];

      if (v23 != 2)
      {
        goto LABEL_21;
      }

      complications6 = [v4 complications];
      v9 = [complications6 objectAtIndexedSubscript:0];
      if ([v9 widgetFamily] == 11)
      {
        complications7 = [v4 complications];
        v17 = 1;
        v25 = [complications7 objectAtIndexedSubscript:1];
        widgetFamily2 = [v25 widgetFamily];

        if (widgetFamily2 == 11)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  v9 = [complications2 objectAtIndexedSubscript:0];
  if ([v9 widgetFamily] != 10)
  {
    goto LABEL_20;
  }

  complications4 = [v4 complications];
  v11 = [complications4 objectAtIndexedSubscript:1];
  if ([v11 widgetFamily] != 10)
  {
LABEL_19:

    goto LABEL_20;
  }

  complications8 = [v4 complications];
  v13 = [complications8 objectAtIndexedSubscript:2];
  if ([v13 widgetFamily] != 10)
  {

    goto LABEL_19;
  }

  complications9 = [v4 complications];
  v15 = [complications9 objectAtIndexedSubscript:3];
  widgetFamily3 = [v15 widgetFamily];

  if (widgetFamily3 != 10)
  {
    goto LABEL_21;
  }

  v17 = 2;
LABEL_22:

  return v17;
}

- (id)_modularLayoutTypesGivenRecentsLayoutType:(int64_t)type
{
  if (type > 4)
  {
    return &unk_283A58010;
  }

  else
  {
    return qword_27859CFD8[type];
  }
}

- (id)_modularFallbackSets
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  landscapeModularComplicationWidgetDescriptors = [(ATXWidgetDescriptorCache *)self->_descriptorCache landscapeModularComplicationWidgetDescriptors];
  v5 = objc_opt_new();
  v6 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  fallbackSetsForSet1 = [(ATXComplicationSuggestionParameters *)self->_parameters fallbackSetsForSet1];
  v8 = fallbackSetsForSet1;
  if (fallbackSetsForSet1)
  {
    v9 = [fallbackSetsForSet1 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(fallbackSetsForSet1, "count"))}];
    v10 = [(ATXComplicationSuggestionGenerator *)self _complicationsFromFallbackSet:v9 complicationDescriptors:landscapeModularComplicationWidgetDescriptors alreadyAddedDescriptors:v5 andFilterFromAppsDisabledByAppProtection:v6];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v10];
      [v3 addObject:v11];
    }
  }

  fallbackSetsForSet2 = [(ATXComplicationSuggestionParameters *)self->_parameters fallbackSetsForSet2];
  v13 = fallbackSetsForSet2;
  if (fallbackSetsForSet2)
  {
    v14 = [fallbackSetsForSet2 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(fallbackSetsForSet2, "count"))}];
    v15 = [(ATXComplicationSuggestionGenerator *)self _complicationsFromFallbackSet:v14 complicationDescriptors:landscapeModularComplicationWidgetDescriptors alreadyAddedDescriptors:v5 andFilterFromAppsDisabledByAppProtection:v6];

    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v15];
      [v3 addObject:v16];
    }
  }

  fallbackSetsForSet3 = [(ATXComplicationSuggestionParameters *)self->_parameters fallbackSetsForSet3];
  v18 = fallbackSetsForSet3;
  if (fallbackSetsForSet3)
  {
    v19 = [fallbackSetsForSet3 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(fallbackSetsForSet3, "count"))}];
    v20 = [(ATXComplicationSuggestionGenerator *)self _complicationsFromFallbackSet:v19 complicationDescriptors:landscapeModularComplicationWidgetDescriptors alreadyAddedDescriptors:v5 andFilterFromAppsDisabledByAppProtection:v6];

    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v20];
      [v3 addObject:v21];
    }
  }

  v23 = __atxlog_handle_lock_screen(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v3;
    _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "Fallback Sets: %@", &v26, 0xCu);
  }

  v24 = [v3 copy];

  return v24;
}

- (id)_landscapeModularFallbackSets
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  landscapeModularComplicationWidgetDescriptors = [(ATXWidgetDescriptorCache *)self->_descriptorCache landscapeModularComplicationWidgetDescriptors];
  v6 = objc_opt_new();
  fallbackSetForLandscape = [(ATXComplicationSuggestionParameters *)self->_parameters fallbackSetForLandscape];
  v8 = fallbackSetForLandscape;
  if (fallbackSetForLandscape)
  {
    v9 = [fallbackSetForLandscape objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(fallbackSetForLandscape, "count"))}];
    v29 = v6;
    v30 = landscapeModularComplicationWidgetDescriptors;
    v31 = v4;
    v10 = [(ATXComplicationSuggestionGenerator *)self _complicationsFromFallbackSet:v9 complicationDescriptors:landscapeModularComplicationWidgetDescriptors alreadyAddedDescriptors:v6 andFilterFromAppsDisabledByAppProtection:v4];

    v11 = objc_opt_new();
    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          widgetFamily = [v19 widgetFamily];
          v21 = v11;
          if (widgetFamily != 10)
          {
            widgetFamily2 = [v19 widgetFamily];
            v21 = v12;
            if (widgetFamily2 != 11)
            {
              widgetFamily3 = [v19 widgetFamily];
              v21 = v13;
              if (widgetFamily3 != 1)
              {
                continue;
              }
            }
          }

          [v21 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    v24 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v11];
    [v3 setObject:v24 forKeyedSubscript:*MEMORY[0x277CEB1E0]];

    v25 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v12];
    [v3 setObject:v25 forKeyedSubscript:*MEMORY[0x277CEB1E8]];

    v26 = [objc_alloc(MEMORY[0x277CEB418]) initWithComplications:v13];
    [v3 setObject:v26 forKeyedSubscript:*MEMORY[0x277CEB1F0]];

    landscapeModularComplicationWidgetDescriptors = v30;
    v4 = v31;
    v6 = v29;
  }

  v27 = [v3 copy];

  return v27;
}

- (id)_setWithDesiredLayout:(int64_t)layout complicationDescriptors:(id)descriptors unusedRecentsComplications:(id)complications alreadyAddedComplications:(id)addedComplications
{
  descriptorsCopy = descriptors;
  complicationsCopy = complications;
  addedComplicationsCopy = addedComplications;
  v30 = +[ATXLockscreenBlacklist appsLockedOrHiddenByAppProtection];
  v11 = objc_opt_new();
  v12 = 0;
  v13 = &unk_283A58040;
  if (layout <= 1)
  {
    if (!layout)
    {
      goto LABEL_47;
    }

    if (layout == 1)
    {
      v13 = &unk_283A58088;
    }
  }

  else
  {
    switch(layout)
    {
      case 4:
        goto LABEL_47;
      case 3:
        v13 = &unk_283A58070;
        break;
      case 2:
        v13 = &unk_283A58058;
        break;
    }
  }

  v14 = [descriptorsCopy count];
  if (!v14)
  {
LABEL_42:
    v27 = __atxlog_handle_lock_screen(v14);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "Not enough complications available on device to fill layout", buf, 2u);
    }

    v12 = 0;
    goto LABEL_47;
  }

  v29 = v11;
  v31 = addedComplicationsCopy;
  v15 = 0;
  v16 = 0;
  v17 = 4;
  do
  {
    v18 = [descriptorsCopy objectAtIndexedSubscript:v16];
    v19 = v18;
    if (!v17)
    {

      addedComplicationsCopy = v31;
      v11 = v29;
      goto LABEL_46;
    }

    [v18 supportedFamilies];
    [v19 disfavoredFamiliesForLocation:1];
    v20 = [v13 objectAtIndexedSubscript:v15];
    unsignedIntValue = [v20 unsignedIntValue];

    if (unsignedIntValue == 1)
    {
      v22 = [(ATXComplicationSuggestionGenerator *)self _rectangularComplicationFromComplications:complicationsCopy];
      [v22 setSource:1];
      if (v22)
      {
        if (([v31 containsObject:v22] & 1) != 0 || !-[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](self, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v22, v30))
        {
          goto LABEL_24;
        }

        [v29 addObject:v22];
        [v31 addObject:v22];
        v17 -= 2;
LABEL_23:
        ++v15;
LABEL_24:
        [complicationsCopy removeObject:v22];

        goto LABEL_40;
      }

      if (CHSWidgetFamilyMaskContainsFamily() && (CHSWidgetFamilyMaskContainsFamily() & 1) == 0)
      {
        v25 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v19 widgetFamily:11 intent:0 source:2];
        v26 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v19 widgetFamily:10 intent:0 source:2];
        if (([v31 containsObject:v25] & 1) == 0 && (objc_msgSend(v31, "containsObject:", v26) & 1) == 0 && -[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](self, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v25, v30))
        {
          [v29 addObject:v25];
          [v31 addObject:v25];
          v17 -= 2;
          goto LABEL_37;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v23 = [v13 objectAtIndexedSubscript:v15];
      unsignedIntValue2 = [v23 unsignedIntValue];

      if (unsignedIntValue2)
      {
        goto LABEL_40;
      }

      v22 = [(ATXComplicationSuggestionGenerator *)self _circularComplicationFromComplications:complicationsCopy];
      [v22 setSource:1];
      if (v22)
      {
        if (([v31 containsObject:v22] & 1) != 0 || !-[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](self, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v22, v30))
        {
          goto LABEL_24;
        }

        [v29 addObject:v22];
        [v31 addObject:v22];
        --v17;
        goto LABEL_23;
      }

      if (CHSWidgetFamilyMaskContainsFamily() && (CHSWidgetFamilyMaskContainsFamily() & 1) == 0)
      {
        v25 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v19 widgetFamily:10 intent:0 source:2];
        v26 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v19 widgetFamily:11 intent:0 source:2];
        if (([v31 containsObject:v25] & 1) == 0 && (objc_msgSend(v31, "containsObject:", v26) & 1) == 0 && -[ATXComplicationSuggestionGenerator _shouldAddComplication:andFilterFromAppsDisabledByAppProtection:](self, "_shouldAddComplication:andFilterFromAppsDisabledByAppProtection:", v25, v30))
        {
          [v29 addObject:v25];
          [v31 addObject:v25];
          --v17;
LABEL_37:
          ++v15;
        }

LABEL_38:
      }
    }

    ++v16;
LABEL_40:

    v14 = [descriptorsCopy count];
  }

  while (v16 < v14);
  addedComplicationsCopy = v31;
  v11 = v29;
  if (v17)
  {
    goto LABEL_42;
  }

LABEL_46:
  v12 = v11;
LABEL_47:

  return v12;
}

- (id)_rectangularComplicationFromComplications:(id)complications
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  complicationsCopy = complications;
  v4 = [complicationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(complicationsCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 widgetFamily] == 11)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [complicationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_circularComplicationFromComplications:(id)complications
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  complicationsCopy = complications;
  v4 = [complicationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(complicationsCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 widgetFamily] == 10)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [complicationsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_complicationsFromFallbackSet:(id)set complicationDescriptors:(id)descriptors alreadyAddedDescriptors:(id)addedDescriptors andFilterFromAppsDisabledByAppProtection:(id)protection
{
  v85 = *MEMORY[0x277D85DE8];
  setCopy = set;
  descriptorsCopy = descriptors;
  addedDescriptorsCopy = addedDescriptors;
  protectionCopy = protection;
  if (!setCopy)
  {
    v46 = 0;
    goto LABEL_64;
  }

  v12 = MEMORY[0x277CBEB18];
  allObjects = [descriptorsCopy allObjects];
  v14 = [v12 arrayWithArray:allObjects];

  v54 = v14;
  [v14 shuffle];
  v15 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = setCopy;
  v59 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (!v59)
  {
    goto LABEL_55;
  }

  v58 = *v77;
  v57 = *MEMORY[0x277CEB1E0];
  v52 = *MEMORY[0x277CEB1E8];
  v51 = *MEMORY[0x277CEB1F0];
  v55 = descriptorsCopy;
  v56 = setCopy;
  v63 = v15;
  v64 = addedDescriptorsCopy;
LABEL_4:
  v16 = 0;
  while (1)
  {
    if (*v77 != v58)
    {
      objc_enumerationMutation(obj);
    }

    v17 = [*(*(&v76 + 1) + 8 * v16) componentsSeparatedByString:@":"];
    v18 = [v17 count];
    if (v18 != 3)
    {
      v19 = __atxlog_handle_lock_screen(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [v17 count];
        *buf = 134217984;
        v83 = v47;
        _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Complication set is invalid. Components count: %lu", buf, 0xCu);
      }

      goto LABEL_62;
    }

    v19 = [v17 objectAtIndexedSubscript:0];
    v67 = [v17 objectAtIndexedSubscript:1];
    if ([MEMORY[0x277D42590] isiPad] && -[NSObject isEqualToString:](v19, "isEqualToString:", @"com.apple.Fitness.FitnessWidget"))
    {

      v67 = @"MentalHealthLauncherComplication";
      v19 = @"com.apple.Health.HealthMentalHealthWidgetExtension";
    }

    v20 = [v17 objectAtIndexedSubscript:2];
    v21 = [v20 isEqualToString:v57];

    v60 = v16;
    v61 = v17;
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = 10;
LABEL_17:
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v28 = descriptorsCopy;
    v29 = [v28 countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v29)
    {
      v30 = v29;
      v62 = 0;
      v31 = *v73;
      while (1)
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v73 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v72 + 1) + 8 * i);
          [v33 disfavoredFamiliesForLocation:1];
          extensionBundleIdentifier = [v33 extensionBundleIdentifier];
          if ([extensionBundleIdentifier isEqualToString:v19])
          {
            kind = [v33 kind];
            if ([kind isEqualToString:v67] && (objc_msgSend(v33, "supportedFamilies"), (CHSWidgetFamilyMaskContainsFamily() & 1) != 0))
            {
              v36 = CHSWidgetFamilyMaskContainsFamily();

              if (v36)
              {
                continue;
              }

              if ([v64 containsObject:v33])
              {
                goto LABEL_33;
              }

              extensionBundleIdentifier = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v33 widgetFamily:v22 intent:0 source:3];
              if ([(ATXComplicationSuggestionGenerator *)self _shouldAddComplication:extensionBundleIdentifier andFilterFromAppsDisabledByAppProtection:protectionCopy])
              {
                [v63 addObject:extensionBundleIdentifier];
                [v64 addObject:v33];
                v62 = 1;
              }
            }

            else
            {
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v72 objects:v81 count:16];
        if (!v30)
        {
LABEL_33:

          addedDescriptorsCopy = v64;
          if (v62)
          {
            goto LABEL_53;
          }

          goto LABEL_36;
        }
      }
    }

LABEL_36:
    v38 = __atxlog_handle_lock_screen(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_DEFAULT, "Fallback complication not found while searching descriptors. Filling in a random one.", buf, 2u);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v39 = v54;
    v40 = [v39 countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v69;
      while (2)
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v69 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v68 + 1) + 8 * j);
          if (([addedDescriptorsCopy containsObject:v44] & 1) == 0)
          {
            [v44 disfavoredFamiliesForLocation:1];
            [v44 supportedFamilies];
            if (CHSWidgetFamilyMaskContainsFamily())
            {
              if ((CHSWidgetFamilyMaskContainsFamily() & 1) == 0)
              {
                v45 = [objc_alloc(MEMORY[0x277CEB410]) initWithWidgetDescriptor:v44 widgetFamily:v22 intent:0 source:3];
                if ([(ATXComplicationSuggestionGenerator *)self _shouldAddComplication:v45 andFilterFromAppsDisabledByAppProtection:protectionCopy])
                {
                  [v63 addObject:v45];
                  [addedDescriptorsCopy addObject:v44];

                  goto LABEL_52;
                }
              }
            }
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v68 objects:v80 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

LABEL_52:

LABEL_53:
    v16 = v60 + 1;
    descriptorsCopy = v55;
    setCopy = v56;
    v15 = v63;
    if (v60 + 1 == v59)
    {
      v59 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
      if (!v59)
      {
LABEL_55:

        v46 = v15;
        goto LABEL_63;
      }

      goto LABEL_4;
    }
  }

  v23 = [v17 objectAtIndexedSubscript:2];
  v24 = [v23 isEqualToString:v52];

  if (v24)
  {
    v22 = 11;
    goto LABEL_17;
  }

  v25 = [v17 objectAtIndexedSubscript:2];
  v26 = [v25 isEqualToString:v51];

  if (v26)
  {
    v22 = 1;
    goto LABEL_17;
  }

  v48 = __atxlog_handle_lock_screen(v27);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [v17 objectAtIndexedSubscript:2];
    *buf = 138412290;
    v83 = v49;
    _os_log_impl(&dword_2263AA000, v48, OS_LOG_TYPE_DEFAULT, "Unknown complication family: %@", buf, 0xCu);
  }

LABEL_62:
  v46 = 0;
LABEL_63:

LABEL_64:

  return v46;
}

- (BOOL)_layoutIsValidGivenComplications:(id)complications allowedComplicationPersonalities:(id)personalities
{
  v28 = *MEMORY[0x277D85DE8];
  complicationsCopy = complications;
  personalitiesCopy = personalities;
  v7 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = complicationsCopy;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    v11 = 4;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277CEB9B0]);
        extensionBundleIdentifier = [v13 extensionBundleIdentifier];
        kind = [v13 kind];
        v17 = [v14 initWithExtensionBundleId:extensionBundleIdentifier kind:kind];

        if (![personalitiesCopy containsObject:v17] || -[ATXComplicationSuggestionGenerator _complicationIsAlreadyAdded:alreadyAddedComplications:](self, "_complicationIsAlreadyAdded:alreadyAddedComplications:", v13, v7))
        {
LABEL_15:

          v19 = 0;
          goto LABEL_17;
        }

        if ([v13 widgetFamily] == 10)
        {
          v18 = -1;
        }

        else
        {
          if ([v13 widgetFamily] != 11)
          {
            goto LABEL_15;
          }

          v18 = -2;
        }

        v11 += v18;
        [v7 addObject:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      v19 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 1;
    v11 = 4;
  }

LABEL_17:

  if (v11)
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)_complicationIsAlreadyAdded:(id)added alreadyAddedComplications:(id)complications
{
  v22 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  complicationsCopy = complications;
  v7 = [complicationsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(complicationsCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([addedCopy isEqual:{v10, v17}])
        {
          intent = [addedCopy intent];
          if (intent)
          {
          }

          else
          {
            intent2 = [v10 intent];

            if (!intent2)
            {
              goto LABEL_14;
            }
          }

          intent3 = [addedCopy intent];
          intent4 = [v10 intent];
          v15 = [intent3 atx_isEqualToIntent:intent4];

          if (v15)
          {
LABEL_14:
            LOBYTE(v7) = 1;
            goto LABEL_15;
          }
        }
      }

      v7 = [complicationsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v7;
}

- (BOOL)_shouldAddComplication:(id)complication andFilterFromAppsDisabledByAppProtection:(id)protection
{
  v20 = *MEMORY[0x277D85DE8];
  complicationCopy = complication;
  protectionCopy = protection;
  containerBundleIdentifier = [complicationCopy containerBundleIdentifier];
  if (containerBundleIdentifier && (v8 = containerBundleIdentifier, [complicationCopy containerBundleIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(protectionCopy, "containsObject:", v9), v9, v8, v10))
  {
    v12 = __atxlog_handle_home_screen(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      containerBundleIdentifier2 = [complicationCopy containerBundleIdentifier];
      v16 = 138412546;
      v17 = complicationCopy;
      v18 = 2112;
      v19 = containerBundleIdentifier2;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXComplicationSuggestionGenerator: Complication: %@ is not eligible for suggestion. Reason: %@ is locked or hidden by user preference.", &v16, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)_recentLandscapeComplicationsWithPresetDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  v4 = NSStringFromWidgetFamily();
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_4_1(&dword_2263AA000, v5, v6, "Unexpected complication type, %@");
}

- (void)scoredComplicationsDescription
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not load accessory widget descriptors for scored complications description: %@", &v2, 0xCu);
}

@end