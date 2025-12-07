@interface TILanguageModelLoaderManager
+ (id)knownClients;
+ (id)modelLocalesForInputModes:(id)modes;
+ (id)recipientRecords;
+ (id)sharedLanguageModelLoaderForModelLocaleIdentifier:(id)identifier isMultilingualModel:(BOOL)model customResourcePaths:(id)paths dynamicResourcePath:(id)path mobileAssets:(id)assets usesLinguisticContext:(BOOL)context isMultiLingualModeEnabled:(BOOL)enabled validEnglishTransformerMultilingualConfig:(BOOL)self0 isSiriMode:(BOOL)self1 trialParameters:(id)self2 isInlineCompletionEnabled:(BOOL)self3;
+ (shared_ptr<KB::LanguageModel>)modelForLocale:(id)locale isMultilingualModel:(BOOL)model languageLocales:(id)locales adaptationContext:(id)context staticResourcePaths:(id)paths dynamicResourcePath:(id)path isMultiLingualModeEnabled:(BOOL)enabled isSiriMode:(BOOL)self0 validEnglishTransformerMultilingualConfig:(BOOL)self1 trialParameters:(id)self2 inlineCompletionPrecision:(int)self3 isInlineCompletionEnabled:(BOOL)self4;
+ (shared_ptr<KB::LanguageModel>)stubForModelLocale:(id)locale isMultilingualModel:(BOOL)model languageLocales:(id)locales adaptationContext:(id)context staticResourcePaths:(id)paths dynamicResourcePath:(id)path isMultiLingualModeEnabled:(BOOL)enabled isSiriMode:(BOOL)self0 isInlineCompletionEnabled:(BOOL)self1;
+ (void)clearDynamicResourcesAtPath:(id)path;
+ (void)contactStoreDidChange:(id)change;
+ (void)dropResourcesExcludingInputModes:(id)modes;
+ (void)flushDynamicResourcesForInputModes:(id)modes;
+ (void)performMaintenance;
+ (void)resetClientAndRecipientCache;
+ (void)startObservingContactStore;
+ (void)unwireAllLanguageModelMemory;
+ (void)wireAllLanguageModelMemory;
@end

@implementation TILanguageModelLoaderManager

+ (void)wireAllLanguageModelMemory
{
  v13 = *MEMORY[0x277D85DE8];
  allKeys = [__sharedInstances allKeys];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = [__sharedInstances objectForKey:*(*(&v8 + 1) + 8 * v6)];
        [v7 wireLanguageModelMemory];

        ++v6;
      }

      while (v4 != v6);
      v4 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

+ (id)recipientRecords
{
  if (+[TILanguageModelLoaderManager recipientRecords]::dispatchOnce != -1)
  {
    dispatch_once(&+[TILanguageModelLoaderManager recipientRecords]::dispatchOnce, &__block_literal_global_3);
  }

  v3 = +[TILanguageModelLoaderManager recipientRecords]::__recipientRecords;

  return v3;
}

+ (void)contactStoreDidChange:(id)change
{
  changeCopy = change;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = +[TILanguageModelLoaderManager recipientRecords];
    [v5 removeAllObjects];
  }

  else
  {
    [self performSelectorOnMainThread:a2 withObject:changeCopy waitUntilDone:1];
  }
}

+ (void)startObservingContactStore
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contactStoreDidChange_ name:*MEMORY[0x277CBD140] object:0];
}

+ (id)modelLocalesForInputModes:(id)modes
{
  v19 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = modesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        preferredModelLocaleIdentifier = [v10 preferredModelLocaleIdentifier];
        v12 = [preferredModelLocaleIdentifier mutableCopy];

        if ([v10 isSiriMode])
        {
          [v12 appendString:@"_SiriMode"];
        }

        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)unwireAllLanguageModelMemory
{
  v13 = *MEMORY[0x277D85DE8];
  allKeys = [__sharedInstances allKeys];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = [__sharedInstances objectForKey:*(*(&v8 + 1) + 8 * v6)];
        [v7 unwireLanguageModelMemory];

        ++v6;
      }

      while (v4 != v6);
      v4 = [allKeys countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

+ (void)performMaintenance
{
  v2 = +[TIKeyboardAssertionManager sharedAssertionManager];
  [v2 retainBackgroundActivityAssertion];

  KB::LanguageModel::perform_maintenance(&__block_literal_global_22);
}

void __50__TILanguageModelLoaderManager_performMaintenance__block_invoke()
{
  v0 = +[TIKeyboardAssertionManager sharedAssertionManager];
  [v0 releaseBackgroundActivityAssertion];
}

+ (void)flushDynamicResourcesForInputModes:(id)modes
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [TILanguageModelLoaderManager modelLocalesForInputModes:modes];
  allKeys = [__sharedInstances allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [allKeys countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    v9 = MEMORY[0x277D86220];
    *&v6 = 136315394;
    v13 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v3 containsObject:{v11, v13}])
        {
          v12 = [__sharedInstances objectForKey:v11];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v19 = "+[TILanguageModelLoaderManager flushDynamicResourcesForInputModes:]";
            v20 = 2112;
            v21 = v11;
            _os_log_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEFAULT, "%s  Flushing dynamic learning caches for model %@", buf, 0x16u);
          }

          [v12 flushDynamicLearningCaches];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }
}

+ (void)dropResourcesExcludingInputModes:(id)modes
{
  v24 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  allKeys = [__sharedInstances allKeys];
  v14 = modesCopy;
  v5 = [TILanguageModelLoaderManager modelLocalesForInputModes:modesCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = allKeys;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v5 containsObject:v12] & 1) == 0)
        {
          v13 = [__sharedInstances objectForKey:v12];
          [v13 flushDynamicLearningCaches];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v20 = "+[TILanguageModelLoaderManager dropResourcesExcludingInputModes:]";
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEFAULT, "%s  Dropping loader for model %@", buf, 0x16u);
          }

          [__sharedInstances removeObjectForKey:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v8);
  }
}

void __58__TILanguageModelLoaderManager_flushDynamicLearningCaches__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "+[TILanguageModelLoaderManager flushDynamicLearningCaches]_block_invoke";
    v7 = 2112;
    v8 = a2;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Flushing dynamic learning caches for %@", &v5, 0x16u);
  }

  [v4 flushDynamicLearningCaches];
}

void __58__TILanguageModelLoaderManager_clearDynamicLearningCaches__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "+[TILanguageModelLoaderManager clearDynamicLearningCaches]_block_invoke";
    v7 = 2112;
    v8 = a2;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Clearing caches for input mode %@", &v5, 0x16u);
  }

  [v4 clearDynamicLearningCaches];
}

+ (void)clearDynamicResourcesAtPath:(id)path
{
  pathCopy = path;
  v4 = __sharedInstances;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__TILanguageModelLoaderManager_clearDynamicResourcesAtPath___block_invoke;
  v14[3] = &unk_2787307F8;
  v5 = pathCopy;
  v15 = v5;
  v6 = [v4 keysOfEntriesPassingTest:v14];
  v7 = __sharedInstances;
  allObjects = [v6 allObjects];
  [v7 removeObjectsForKeys:allObjects];

  v9 = +[TILanguageModelLoaderManager knownClients];
  [v9 removeAllObjects];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__TILanguageModelLoaderManager_clearDynamicResourcesAtPath___block_invoke_2;
  v12[3] = &unk_278730820;
  v13 = v5;
  v11 = v5;
  KB::LanguageModel::clear_dynamic_learning_bundles(v10, v12);
}

uint64_t __60__TILanguageModelLoaderManager_clearDynamicResourcesAtPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 dynamicResourcePath];
  if (v5 == *(a1 + 32))
  {
    isEqualToString = 1;
  }

  else
  {
    v6 = [v4 dynamicResourcePath];
    isEqualToString = objc_msgSend_isEqualToString_(v6);
  }

  return isEqualToString;
}

void __60__TILanguageModelLoaderManager_clearDynamicResourcesAtPath___block_invoke_2(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (!v4)
    {
      return;
    }

    v5 = *(a1 + 32);
    v9 = 136315394;
    v10 = "+[TILanguageModelLoaderManager clearDynamicResourcesAtPath:]_block_invoke_2";
    v11 = 2112;
    v12 = v5;
    v6 = MEMORY[0x277D86220];
    v7 = "%s  Removed dynamic resource bundles at %@";
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v8 = *(a1 + 32);
    v9 = 136315394;
    v10 = "+[TILanguageModelLoaderManager clearDynamicResourcesAtPath:]_block_invoke";
    v11 = 2112;
    v12 = v8;
    v6 = MEMORY[0x277D86220];
    v7 = "%s  Could remove dynamic resource bundles at %@";
  }

  _os_log_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEFAULT, v7, &v9, 0x16u);
}

+ (id)sharedLanguageModelLoaderForModelLocaleIdentifier:(id)identifier isMultilingualModel:(BOOL)model customResourcePaths:(id)paths dynamicResourcePath:(id)path mobileAssets:(id)assets usesLinguisticContext:(BOOL)context isMultiLingualModeEnabled:(BOOL)enabled validEnglishTransformerMultilingualConfig:(BOOL)self0 isSiriMode:(BOOL)self1 trialParameters:(id)self2 isInlineCompletionEnabled:(BOOL)self3
{
  contextCopy = context;
  modelCopy = model;
  identifierCopy = identifier;
  pathsCopy = paths;
  pathCopy = path;
  assetsCopy = assets;
  parametersCopy = parameters;
  if (__sharedInstances)
  {
    if (mode)
    {
LABEL_3:
      v22 = [identifierCopy stringByAppendingString:@"_SiriMode"];
      goto LABEL_6;
    }
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = __sharedInstances;
    __sharedInstances = v23;

    +[TILanguageModelLoaderManager startObservingContactStore];
    if (mode)
    {
      goto LABEL_3;
    }
  }

  v22 = identifierCopy;
LABEL_6:
  v25 = v22;
  v26 = [__sharedInstances objectForKey:v22];
  if (inline_completion_precision_point_override_1 == 1)
  {
    v27 = inline_completion_precision_point_override_0;
  }

  else if (_os_feature_enabled_impl())
  {
    v27 = 80;
  }

  else if (_os_feature_enabled_impl())
  {
    v27 = 70;
  }

  else
  {
    v27 = 90;
  }

  v64 = v27;
  v66 = parametersCopy;
  v62 = pathsCopy;
  v63 = identifierCopy;
  v61 = v25;
  if (pathsCopy)
  {
    if (v26)
    {
      v28 = MEMORY[0x277CBEB98];
      customResourcePaths = [v26 customResourcePaths];
      v30 = [v28 setWithArray:customResourcePaths];
      v31 = [MEMORY[0x277CBEB98] setWithArray:pathsCopy];
      v32 = [v30 isEqualToSet:v31];

      v33 = v32 ^ 1;
    }

    else
    {
      v33 = 1;
    }

    v60 = v33;
  }

  else
  {
    v60 = 0;
  }

  dynamicResourcePath = [v26 dynamicResourcePath];
  if (dynamicResourcePath == pathCopy)
  {
    v37 = 0;
  }

  else
  {
    dynamicResourcePath2 = [v26 dynamicResourcePath];
    isEqualToString = objc_msgSend_isEqualToString_(dynamicResourcePath2);

    v37 = isEqualToString ^ 1;
  }

  mobileAssets = [v26 mobileAssets];
  if (mobileAssets == assetsCopy)
  {
    v41 = 0;
  }

  else
  {
    mobileAssets2 = [v26 mobileAssets];
    v40 = [mobileAssets2 isEqualToArray:assetsCopy];

    v41 = v40 ^ 1;
  }

  v42 = contextCopy;
  if (v26)
  {
    v43 = [v26 usesLinguisticContext] ^ contextCopy;
  }

  else
  {
    v43 = 1;
  }

  trialParameters = [v26 trialParameters];
  v45 = trialParameters;
  if (v66)
  {
    v46 = [trialParameters isEqualToDictionary:v66];
  }

  else
  {
    v46 = trialParameters == 0;
  }

  if (v26)
  {
    v47 = [v26 inlineCompletionPrecision] != v64;
  }

  else
  {
    v47 = 1;
  }

  if (modelCopy)
  {
    _os_feature_enabled_impl();
  }

  if ((v26 == 0) | (v37 | v41 | v43 | v60) & 1 | ((v46 & 1) == 0) | v47)
  {
    v48 = [TILanguageModelLoader alloc];
    BYTE4(v59) = completionEnabled;
    LODWORD(v59) = v64;
    v49 = v66;
    BYTE2(v58) = config;
    BYTE1(v58) = mode;
    LOBYTE(v58) = enabled;
    v51 = v62;
    v50 = v63;
    v52 = pathCopy;
    v53 = pathCopy;
    v54 = assetsCopy;
    v55 = [TILanguageModelLoader initWithModelLocaleIdentifier:v48 isMultilingualModel:"initWithModelLocaleIdentifier:isMultilingualModel:customResourcePaths:dynamicResourcePath:mobileAssets:usesLinguisticContext:isMultiLingualModeEnabled:isSiriMode:validEnglishTransformerMultilingualConfig:trialParameters:inlineCompletionPrecision:isInlineCompletionEnabled:" customResourcePaths:v63 dynamicResourcePath:modelCopy mobileAssets:v62 usesLinguisticContext:v53 isMultiLingualModeEnabled:assetsCopy isSiriMode:v42 validEnglishTransformerMultilingualConfig:v58 trialParameters:v66 inlineCompletionPrecision:v59 isInlineCompletionEnabled:?];

    v56 = v61;
    [__sharedInstances setObject:v55 forKey:v61];
    v26 = v55;
  }

  else
  {
    v51 = v62;
    v50 = v63;
    v52 = pathCopy;
    v54 = assetsCopy;
    v49 = v66;
    v56 = v61;
  }

  return v26;
}

uint64_t __48__TILanguageModelLoaderManager_recipientRecords__block_invoke()
{
  v0 = [[TILRUDictionary alloc] initWithMaximumCapacity:10];
  v1 = +[TILanguageModelLoaderManager recipientRecords]::__recipientRecords;
  +[TILanguageModelLoaderManager recipientRecords]::__recipientRecords = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)knownClients
{
  if (+[TILanguageModelLoaderManager knownClients]::dispatchOnce != -1)
  {
    dispatch_once(&+[TILanguageModelLoaderManager knownClients]::dispatchOnce, &__block_literal_global_7454);
  }

  v3 = +[TILanguageModelLoaderManager knownClients]::__knownClients;

  return v3;
}

uint64_t __44__TILanguageModelLoaderManager_knownClients__block_invoke()
{
  v0 = [[TILRUDictionary alloc] initWithMaximumCapacity:10];
  v1 = +[TILanguageModelLoaderManager knownClients]::__knownClients;
  +[TILanguageModelLoaderManager knownClients]::__knownClients = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (shared_ptr<KB::LanguageModel>)stubForModelLocale:(id)locale isMultilingualModel:(BOOL)model languageLocales:(id)locales adaptationContext:(id)context staticResourcePaths:(id)paths dynamicResourcePath:(id)path isMultiLingualModeEnabled:(BOOL)enabled isSiriMode:(BOOL)self0 isInlineCompletionEnabled:(BOOL)self1
{
  pathCopy = path;
  pathsCopy = paths;
  contextCopy = context;
  localesCopy = locales;
  localeCopy = locale;
  appContext = [contextCopy appContext];
  recipientContext = [contextCopy recipientContext];

  KB::LanguageModelConfig::LanguageModelConfig(&v23, localeCopy, model, localesCopy, pathsCopy, pathCopy, appContext, recipientContext, 0, !enabled, mode, 1, 1, 90, completionEnabled);
  operator new();
}

+ (shared_ptr<KB::LanguageModel>)modelForLocale:(id)locale isMultilingualModel:(BOOL)model languageLocales:(id)locales adaptationContext:(id)context staticResourcePaths:(id)paths dynamicResourcePath:(id)path isMultiLingualModeEnabled:(BOOL)enabled isSiriMode:(BOOL)self0 validEnglishTransformerMultilingualConfig:(BOOL)self1 trialParameters:(id)self2 inlineCompletionPrecision:(int)self3 isInlineCompletionEnabled:(BOOL)self4
{
  parametersCopy = parameters;
  pathCopy = path;
  pathsCopy = paths;
  contextCopy = context;
  localesCopy = locales;
  localeCopy = locale;
  appContext = [contextCopy appContext];
  recipientContext = [contextCopy recipientContext];
  isOnline = [contextCopy isOnline];

  KB::LanguageModelConfig::LanguageModelConfig(&v29, localeCopy, model, localesCopy, pathsCopy, pathCopy, appContext, recipientContext, parametersCopy, !enabled, mode, isOnline ^ 1, !config, precision, completionEnabled);
  operator new();
}

+ (void)resetClientAndRecipientCache
{
  v2 = +[TILanguageModelLoaderManager knownClients];
  [v2 removeAllObjects];

  v3 = +[TILanguageModelLoaderManager recipientRecords];
  [v3 removeAllObjects];
}

@end