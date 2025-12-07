@interface ATXFaceSuggestionGenerator
- (ATXFaceGalleryConfiguration)faceGalleryConfiguration;
- (ATXFaceSuggestionGenerator)initWithDescriptorCache:(id)cache configurationCache:(id)configurationCache complicationProvider:(id)provider complicationDescriptorProvider:(id)descriptorProvider parameters:(id)parameters;
- (ATXFaceSuggestionGeneratorDelegate)delegate;
- (BOOL)shouldUseDayZeroCuration;
- (id)_createLayoutGeneratorWithDayZero:(BOOL)zero locale:(id)locale;
- (void)_generateFaceGalleryConfigurationNotifyingWithGuardedData:(id)data;
- (void)configurationCacheDidUpdateWithNewConfigurations:(id)configurations oldConfigurations:(id)oldConfigurations;
- (void)regenerateFaceGalleryConfigurationCoalescedWithReason:(id)reason;
- (void)regenerateFaceGalleryConfigurationImmediatelyWithReason:(id)reason;
- (void)regenerateFaceSuggestionsForFocusModesWithReason:(id)reason;
@end

@implementation ATXFaceSuggestionGenerator

- (ATXFaceSuggestionGenerator)initWithDescriptorCache:(id)cache configurationCache:(id)configurationCache complicationProvider:(id)provider complicationDescriptorProvider:(id)descriptorProvider parameters:(id)parameters
{
  cacheCopy = cache;
  configurationCacheCopy = configurationCache;
  providerCopy = provider;
  descriptorProviderCopy = descriptorProvider;
  parametersCopy = parameters;
  v36.receiver = self;
  v36.super_class = ATXFaceSuggestionGenerator;
  v17 = [(ATXFaceSuggestionGenerator *)&v36 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_descriptorCache, cache);
    [(ATXPosterDescriptorCache *)v18->_descriptorCache registerObserver:v18];
    objc_storeStrong(&v18->_configurationCache, configurationCache);
    [(ATXPosterConfigurationCache *)v18->_configurationCache registerObserver:v18];
    objc_storeStrong(&v18->_complicationProvider, provider);
    objc_storeStrong(&v18->_complicationDescriptorProvider, descriptorProvider);
    objc_storeStrong(&v18->_parameters, parameters);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.proactive.ATXFaceSuggestionGenerator", v19);

    v21 = objc_alloc(MEMORY[0x277D42610]);
    v22 = objc_opt_new();
    v23 = [v21 initWithGuardedData:v22 serialQueue:v20];
    lock = v18->_lock;
    v18->_lock = v23;

    objc_initWeak(&location, v18);
    v25 = objc_alloc(MEMORY[0x277D42628]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __136__ATXFaceSuggestionGenerator_initWithDescriptorCache_configurationCache_complicationProvider_complicationDescriptorProvider_parameters___block_invoke;
    v33[3] = &unk_2785977B0;
    objc_copyWeak(&v34, &location);
    v26 = [v25 initWithQueue:v20 operation:v33];
    regenerationCoalescingTimer = v18->_regenerationCoalescingTimer;
    v18->_regenerationCoalescingTimer = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("com.apple.proactive.ATXFaceSuggestionGenerator.Output", v28);
    outputQueue = v18->_outputQueue;
    v18->_outputQueue = v29;

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __136__ATXFaceSuggestionGenerator_initWithDescriptorCache_configurationCache_complicationProvider_complicationDescriptorProvider_parameters___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = __atxlog_handle_lock_screen(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "running coalesced regeneration operation", v5, 2u);
    }

    v4 = [v2[6] guardedDataAssertingLockContext];
    [v2 _generateFaceGalleryConfigurationNotifyingWithGuardedData:v4];
  }
}

- (ATXFaceGalleryConfiguration)faceGalleryConfiguration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__54;
  v10 = __Block_byref_object_dispose__54;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ATXFaceSuggestionGenerator_faceGalleryConfiguration__block_invoke;
  v5[3] = &unk_27859D530;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__ATXFaceSuggestionGenerator_faceGalleryConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = v3[1];
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    v7 = __atxlog_handle_lock_screen(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      v15 = 136315394;
      v16 = "[ATXFaceSuggestionGenerator faceGalleryConfiguration]_block_invoke";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: returning in-memory configuration: %@", &v15, 0x16u);
    }

LABEL_10:

    goto LABEL_11;
  }

  v9 = __atxlog_handle_lock_screen(v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[ATXFaceSuggestionGenerator faceGalleryConfiguration]_block_invoke";
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: no in-memory configuration, generating new configuration", &v15, 0xCu);
  }

  v10 = [*(a1 + 32) _generateFaceGalleryConfigurationNotifyingWithGuardedData:v4];
  if (v4[1])
  {
    v11 = __atxlog_handle_lock_screen(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v4[1];
      v15 = 136315394;
      v16 = "[ATXFaceSuggestionGenerator faceGalleryConfiguration]_block_invoke";
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "%s: generated new configuration: %@", &v15, 0x16u);
    }

    v13 = *(*(a1 + 40) + 8);
    v14 = v4[1];
    v7 = *(v13 + 40);
    *(v13 + 40) = v14;
    goto LABEL_10;
  }

LABEL_11:
}

- (void)regenerateFaceGalleryConfigurationCoalescedWithReason:(id)reason
{
  v10 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = __atxlog_handle_lock_screen(reasonCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[ATXFaceSuggestionGenerator regenerateFaceGalleryConfigurationCoalescedWithReason:]";
    v8 = 2112;
    v9 = reasonCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: requesting coalesced face gallery regeneration for reason: %@", &v6, 0x16u);
  }

  [(_PASSimpleCoalescingTimer *)self->_regenerationCoalescingTimer runAfterDelaySeconds:0 coalescingBehavior:2.0];
}

- (void)regenerateFaceGalleryConfigurationImmediatelyWithReason:(id)reason
{
  v12 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = __atxlog_handle_lock_screen(reasonCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[ATXFaceSuggestionGenerator regenerateFaceGalleryConfigurationImmediatelyWithReason:]";
    v10 = 2112;
    v11 = reasonCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: requesting immediate face gallery regeneration for reason: %@", buf, 0x16u);
  }

  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__ATXFaceSuggestionGenerator_regenerateFaceGalleryConfigurationImmediatelyWithReason___block_invoke;
  v7[3] = &unk_27859D558;
  v7[4] = self;
  [(_PASQueueLock *)lock runWithLockAcquired:v7];
}

- (void)regenerateFaceSuggestionsForFocusModesWithReason:(id)reason
{
  v12 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v4 = __atxlog_handle_lock_screen(reasonCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[ATXFaceSuggestionGenerator regenerateFaceSuggestionsForFocusModesWithReason:]";
    v10 = 2112;
    v11 = reasonCopy;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: requesting immediate face suggestions regeneration for Focus Modes with reason: %@", &v8, 0x16u);
  }

  v5 = objc_alloc_init(ATXModeFaceSuggestionGenerator);
  v6 = +[ATXPosterDescriptorCache sharedInstance];
  allDescriptors = [v6 allDescriptors];
  [(ATXModeFaceSuggestionGenerator *)v5 generateAndCacheFacesFromDescriptors:allDescriptors];
}

- (void)_generateFaceGalleryConfigurationNotifyingWithGuardedData:(id)data
{
  v55 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  sel_getName(a2);
  v46 = os_transaction_create();
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = __atxlog_handle_lock_screen(currentLocale);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v52 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
    v53 = 2112;
    v54 = currentLocale;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: using locale: %@", buf, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x277CBEBD0]);
  v45 = [v8 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v9 = [v45 integerForKey:*MEMORY[0x277CEBDB8]];
  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  v50 = 0;
  v11 = [mEMORY[0x277CEB998] fetchAccessoryWidgetDescriptorMetadataWithError:&v50];
  v12 = v50;

  if (!v11)
  {
    v14 = __atxlog_handle_lock_screen(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ATXFaceSuggestionGenerator *)v12 _generateFaceGalleryConfigurationNotifyingWithGuardedData:v14];
    }

    v11 = MEMORY[0x277CBEC10];
  }

  v44 = v12;
  v15 = objc_alloc_init(MEMORY[0x277CEB388]);
  rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v15 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

  allKeys = [rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps allKeys];
  v18 = [_TtC21AppPredictionInternal26ATXCompanionBundleIdMapper generateMappingForAppBundleIds:allKeys];

  if (!v9)
  {
    shouldUseDayZeroCuration = [(ATXFaceSuggestionGenerator *)self shouldUseDayZeroCuration];
    v26 = __atxlog_handle_lock_screen(shouldUseDayZeroCuration);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (shouldUseDayZeroCuration)
    {
      if (v27)
      {
        *buf = 136315138;
        v52 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
        v28 = "%s: day zero criteria met, using day zero curation";
LABEL_21:
        _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
      }
    }

    else if (v27)
    {
      *buf = 136315138;
      v52 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
      v28 = "%s: day zero criteria not met, generating personalized layout";
      goto LABEL_21;
    }

    selfCopy3 = self;
    v30 = shouldUseDayZeroCuration;
    goto LABEL_25;
  }

  v20 = __atxlog_handle_lock_screen(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v52 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
    v53 = 2048;
    v54 = v9;
    _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "%s: using face gallery source override: %zd", buf, 0x16u);
  }

  switch(v9)
  {
    case 1:
      selfCopy3 = self;
      v30 = 0;
      break;
    case 2:
      selfCopy3 = self;
      v30 = 1;
      break;
    case 3:
      shouldUseDayZeroCuration2 = [(ATXFaceSuggestionGenerator *)self shouldUseDayZeroCuration];
      v22 = __atxlog_handle_lock_screen(shouldUseDayZeroCuration2);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (shouldUseDayZeroCuration2)
      {
        if (v23)
        {
          *buf = 136315138;
          v52 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
          v24 = "%s: day zero criteria met, using day zero curation for demo mode";
LABEL_34:
          _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
        }
      }

      else if (v23)
      {
        *buf = 136315138;
        v52 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
        v24 = "%s: day zero criteria not met, generating personalized layout for demo mode";
        goto LABEL_34;
      }

      v31 = [(ATXFaceSuggestionGenerator *)self _createLayoutGeneratorWithDayZero:shouldUseDayZeroCuration2 locale:currentLocale];
      v33 = [[ATXFaceGalleryFileReader alloc] initWithSource:0];
      v40 = [v31 generatedConfigurationWithWidgetDescriptorsAdditionalData:v11 aggregatedAppLaunchData:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps bundleIdToCompanionBundleId:v18];
      configuration = [(ATXFaceGalleryFileReader *)v33 configuration];
      v42 = [v40 configurationByApplyingConfiguration:configuration];
      v43 = dataCopy[1];
      dataCopy[1] = v42;

      goto LABEL_26;
    default:
      goto LABEL_27;
  }

LABEL_25:
  v31 = [(ATXFaceSuggestionGenerator *)selfCopy3 _createLayoutGeneratorWithDayZero:v30 locale:currentLocale];
  v32 = [v31 generatedConfigurationWithWidgetDescriptorsAdditionalData:v11 aggregatedAppLaunchData:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps bundleIdToCompanionBundleId:v18];
  v33 = dataCopy[1];
  dataCopy[1] = v32;
LABEL_26:

LABEL_27:
  v34 = [dataCopy[1] copy];
  if (!v34)
  {
    v35 = __atxlog_handle_lock_screen(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v52 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
      _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "%s: no configuration generated, creating blank configuration", buf, 0xCu);
    }

    v36 = objc_alloc(MEMORY[0x277CEB518]);
    v34 = [v36 initWithSections:MEMORY[0x277CBEBF8] source:1 locale:currentLocale dayZero:0];
  }

  outputQueue = self->_outputQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ATXFaceSuggestionGenerator__generateFaceGalleryConfigurationNotifyingWithGuardedData___block_invoke;
  block[3] = &unk_278597828;
  block[4] = self;
  v48 = v34;
  v49 = v46;
  v38 = v46;
  v39 = v34;
  dispatch_async(outputQueue, block);
}

id __88__ATXFaceSuggestionGenerator__generateFaceGalleryConfigurationNotifyingWithGuardedData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 generatorDidUpdateFaceGalleryConfiguration:*(a1 + 40)];

  return objc_opt_self();
}

- (BOOL)shouldUseDayZeroCuration
{
  v9 = *MEMORY[0x277D85DE8];
  configurations = [(ATXPosterConfigurationCache *)self->_configurationCache configurations];
  v3 = [configurations count];
  if (v3 == 1)
  {
    v4 = [MEMORY[0x277CEB448] isDayZeroByFirstAppLaunchDateWithThresholdDateFromDaysAgo:7];
  }

  else
  {
    v5 = __atxlog_handle_lock_screen(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[ATXFaceSuggestionGenerator shouldUseDayZeroCuration]";
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: day zero criteria not met- multiple poster configurations exist", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (id)_createLayoutGeneratorWithDayZero:(BOOL)zero locale:(id)locale
{
  zeroCopy = zero;
  localeCopy = locale;
  v7 = [ATXFaceGalleryLayoutGenerator alloc];
  descriptors = [(ATXPosterDescriptorCache *)self->_descriptorCache descriptors];
  v9 = [(ATXFaceGalleryLayoutGenerator *)v7 initWithDescriptors:descriptors complicationProvider:self->_complicationProvider complicationDescriptorProvider:self->_complicationDescriptorProvider parameters:self->_parameters dayZero:zeroCopy locale:localeCopy];

  return v9;
}

- (void)configurationCacheDidUpdateWithNewConfigurations:(id)configurations oldConfigurations:(id)oldConfigurations
{
  v55 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  oldConfigurationsCopy = oldConfigurations;
  if (!oldConfigurationsCopy)
  {
    goto LABEL_25;
  }

  selfCopy = self;
  v40 = configurationsCopy;
  v8 = objc_opt_new();
  v42 = objc_opt_new();
  v9 = objc_opt_new();
  v41 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v39 = oldConfigurationsCopy;
  v10 = oldConfigurationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v47 + 1) + 8 * i);
        extensionBundleIdentifier = [v15 extensionBundleIdentifier];
        [v42 addObject:extensionBundleIdentifier];

        complications = [v15 complications];
        v18 = [complications _pas_mappedArrayWithTransform:&__block_literal_global_118];
        [v8 addObjectsFromArray:v18];

        inlineComplication = [v15 inlineComplication];

        if (inlineComplication)
        {
          inlineComplication2 = [v15 inlineComplication];
          v21 = personalityStringFromComplication(inlineComplication2);
          [v8 addObject:v21];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = v40;
  v23 = [v22 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v43 + 1) + 8 * j);
        extensionBundleIdentifier2 = [v27 extensionBundleIdentifier];
        [v41 addObject:extensionBundleIdentifier2];

        complications2 = [v27 complications];
        v30 = [complications2 _pas_mappedArrayWithTransform:&__block_literal_global_47_0];
        [v9 addObjectsFromArray:v30];

        inlineComplication3 = [v27 inlineComplication];

        if (inlineComplication3)
        {
          inlineComplication4 = [v27 inlineComplication];
          v33 = personalityStringFromComplication(inlineComplication4);
          [v9 addObject:v33];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v24);
  }

  v34 = [v8 isEqualToSet:v9];
  v35 = [v42 isEqualToSet:v41];

  oldConfigurationsCopy = v39;
  configurationsCopy = v40;
  self = selfCopy;
  if (v35 && (v34 & 1) != 0)
  {
    v37 = __atxlog_handle_lock_screen(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v52 = "[ATXFaceSuggestionGenerator configurationCacheDidUpdateWithNewConfigurations:oldConfigurations:]";
      _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "%s: not regenerating, no significant changes to poster configurations", buf, 0xCu);
    }
  }

  else
  {
LABEL_25:
    [(ATXFaceSuggestionGenerator *)self regenerateFaceGalleryConfigurationCoalescedWithReason:@"poster configurations had significant changes"];
  }
}

- (ATXFaceSuggestionGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_generateFaceGalleryConfigurationNotifyingWithGuardedData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[ATXFaceSuggestionGenerator _generateFaceGalleryConfigurationNotifyingWithGuardedData:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: unable to fetch accessory widget descriptors: %@; using empty dictionary", &v2, 0x16u);
}

@end