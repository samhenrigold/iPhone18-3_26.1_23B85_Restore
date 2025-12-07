@interface ATXFaceSuggestionServer
+ (id)sharedInstance;
- (ATXFaceSuggestionServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)checkGalleryForPhotosAppProtection:(id)protection;
- (void)descriptorCacheDidUpdateWithDescriptors:(id)descriptors;
- (void)fetchComplicationSetsForFaceGalleryItem:(id)item completion:(id)completion;
- (void)fetchComplicationSuggestionsModelDescriptionWithCompletion:(id)completion;
- (void)fetchFaceGalleryConfigurationForSemanticType:(int64_t)type completion:(id)completion;
- (void)fetchFaceGalleryConfigurationWithCompletion:(id)completion;
- (void)fetchFaceSuggestionsForFocusMode:(id)mode completion:(id)completion;
- (void)fetchInlineComplicationSetForFaceGalleryItem:(id)item completion:(id)completion;
- (void)fetchLandscapeComplicationSetsForFaceGalleryItem:(id)item completion:(id)completion;
- (void)fetchMetricsDescriptionWithCompletion:(id)completion;
- (void)fetchPosterConfigurationsWithCompletion:(id)completion;
- (void)fetchPosterDescriptorsAndSuggestionDataWithCompletion:(id)completion;
- (void)fetchRankedPosterDescriptors:(id)descriptors;
- (void)fetchScoredComplicationDescriptionWithCompletion:(id)completion;
- (void)generatorDidUpdateFaceGalleryConfiguration:(id)configuration;
- (void)inputDescriptionForComplicationSuggestionSignal:(id)signal completion:(id)completion;
- (void)logComplicationsSeenInGalleryWithEngagements:(id)engagements completion:(id)completion;
- (void)logFaceGalleryDidAppearWithFaceGalleryConfiguration:(id)configuration;
- (void)logFaceGalleryItemsSeenInGalleryWithOutcomes:(id)outcomes completion:(id)completion;
- (void)logPosterEdit:(id)edit completion:(id)completion;
- (void)logPosterSwitch:(id)switch completion:(id)completion;
- (void)posterBoardDidUpdateConfigurations:(id)configurations completion:(id)completion;
- (void)posterBoardDidUpdateDescriptors:(id)descriptors completion:(id)completion;
- (void)refreshComplicationsCacheWithCompletion:(id)completion;
- (void)regenerateFaceGalleryConfigurationWithCompletion:(id)completion;
- (void)reloadLockScreenSuggestionsWithActivity:(id)activity completion:(id)completion;
- (void)synchronousDateOfLastGalleryAppearanceWithCompletion:(id)completion;
- (void)widgetDescriptorCacheDidUpdateDescriptors:(id)descriptors;
@end

@implementation ATXFaceSuggestionServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_41 != -1)
  {
    +[ATXFaceSuggestionServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_49;

  return v3;
}

void __41__ATXFaceSuggestionServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_49;
  sharedInstance__pasExprOnceResult_49 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXFaceSuggestionServer)init
{
  v42 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = ATXFaceSuggestionServer;
  v2 = [(ATXFaceSuggestionServer *)&v39 init];
  if (v2)
  {
    v3 = +[ATXPosterConfigurationCache sharedInstance];
    configurationCache = v2->_configurationCache;
    v2->_configurationCache = v3;

    v5 = +[ATXPosterDescriptorCache sharedInstance];
    descriptorCache = v2->_descriptorCache;
    v2->_descriptorCache = v5;

    [(ATXPosterDescriptorCache *)v2->_descriptorCache registerObserver:v2];
    v7 = objc_alloc(MEMORY[0x277D42628]);
    v8 = dispatch_get_global_queue(17, 0);
    v9 = [v7 initWithQueue:v8 leewaySeconds:&__block_literal_global_24_6 operation:10.0];
    modeFaceSuggestionRefreshCoalescingTimer = v2->_modeFaceSuggestionRefreshCoalescingTimer;
    v2->_modeFaceSuggestionRefreshCoalescingTimer = v9;

    v11 = objc_opt_new();
    complicationsGenerator = v2->_complicationsGenerator;
    v2->_complicationsGenerator = v11;

    v13 = objc_opt_new();
    v14 = [ATXFaceSuggestionGenerator alloc];
    v15 = v2->_descriptorCache;
    v16 = v2->_configurationCache;
    v17 = v2->_complicationsGenerator;
    mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
    v19 = [(ATXFaceSuggestionGenerator *)v14 initWithDescriptorCache:v15 configurationCache:v16 complicationProvider:v17 complicationDescriptorProvider:mEMORY[0x277CEB998] parameters:v13];
    faceSuggestionGenerator = v2->_faceSuggestionGenerator;
    v2->_faceSuggestionGenerator = v19;

    [(ATXFaceSuggestionGenerator *)v2->_faceSuggestionGenerator setDelegate:v2];
    mEMORY[0x277CEB998]2 = [MEMORY[0x277CEB998] sharedInstance];
    [mEMORY[0x277CEB998]2 registerObserver:v2];

    v22 = objc_alloc(MEMORY[0x277CCAE98]);
    v23 = [v22 initWithMachServiceName:*MEMORY[0x277CEBA98]];
    listener = v2->_listener;
    v2->_listener = v23;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v25 = __atxlog_handle_lock_screen([(NSXPCListener *)v2->_listener resume]);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v41 = "[ATXFaceSuggestionServer init]";
      _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "%s: listening for connections", buf, 0xCu);
    }

    v26 = objc_opt_new();
    uninstallNotification = v2->_uninstallNotification;
    v2->_uninstallNotification = v26;

    [(_ATXInternalUninstallNotification *)v2->_uninstallNotification registerForNotificationsWithUninstallBlock:&__block_literal_global_36_4];
    objc_initWeak(buf, v2);
    v28 = objc_opt_new();
    lockedOrHiddenAppNotification = v2->_lockedOrHiddenAppNotification;
    v2->_lockedOrHiddenAppNotification = v28;

    v30 = v2->_lockedOrHiddenAppNotification;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __31__ATXFaceSuggestionServer_init__block_invoke_2;
    v37[3] = &unk_278598048;
    objc_copyWeak(&v38, buf);
    [(ATXInternalLockedOrHiddenAppNotification *)v30 registerForNotificationsWithLockedOrHiddenAppBlock:v37];
    v31 = objc_opt_new();
    unlockedOrUnhiddenAppNotification = v2->_unlockedOrUnhiddenAppNotification;
    v2->_unlockedOrUnhiddenAppNotification = v31;

    v33 = v2->_unlockedOrUnhiddenAppNotification;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __31__ATXFaceSuggestionServer_init__block_invoke_3;
    v35[3] = &unk_278598020;
    objc_copyWeak(&v36, buf);
    [(ATXInternalUnLockedOrUnHiddenAppNotification *)v33 registerForNotificationsWithUnLockedOrUnHiddenAppBlock:v35];
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
  }

  return v2;
}

void __31__ATXFaceSuggestionServer_init__block_invoke()
{
  v3 = os_transaction_create();
  v0 = objc_alloc_init(ATXModeFaceSuggestionGenerator);
  v1 = +[ATXPosterDescriptorCache sharedInstance];
  v2 = [v1 allDescriptors];
  [(ATXModeFaceSuggestionGenerator *)v0 generateAndCacheFacesFromDescriptors:v2];
}

void __31__ATXFaceSuggestionServer_init__block_invoke_33(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  [v2 evictCachedSuggestedFaces];
}

void __31__ATXFaceSuggestionServer_init__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 lockedApps];
    v5 = [v4 containsObject:@"com.apple.mobileslideshow"];

    if (v5)
    {
      [WeakRetained[4] regenerateFaceGalleryConfigurationImmediatelyWithReason:@"Photos app has been locked"];
      [WeakRetained[4] regenerateFaceSuggestionsForFocusModesWithReason:@"Photos app has been locked"];
    }
  }
}

void __31__ATXFaceSuggestionServer_init__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 unLockedApps];
    v5 = [v4 containsObject:@"com.apple.mobileslideshow"];

    if (v5)
    {
      [WeakRetained[4] regenerateFaceGalleryConfigurationImmediatelyWithReason:@"Photos app has been unlocked"];
      [WeakRetained[4] regenerateFaceSuggestionsForFocusModesWithReason:@"Photos app has been unlocked"];
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = __atxlog_handle_lock_screen(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[ATXFaceSuggestionServer listener:shouldAcceptNewConnection:]";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: incoming connection", buf, 0xCu);
  }

  v9 = [connectionCopy valueForEntitlement:*MEMORY[0x277CEBA98]];
  v10 = v9;
  if (v9 && (v9 = objc_opt_respondsToSelector(), (v9 & 1) != 0) && (v9 = [v10 BOOLValue], (v9 & 1) != 0))
  {
    v11 = ATXFaceSuggestionClientXPCInterface();
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setExportedObject:self];
    objc_initWeak(buf, connectionCopy);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke;
    v20[3] = &unk_2785977B0;
    objc_copyWeak(&v21, buf);
    [connectionCopy setInterruptionHandler:v20];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_53;
    v18 = &unk_2785977B0;
    objc_copyWeak(&v19, buf);
    [connectionCopy setInvalidationHandler:&v15];
    [connectionCopy resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
    v12 = 1;
  }

  else
  {
    v13 = __atxlog_handle_lock_screen(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceSuggestionServer listener:shouldAcceptNewConnection:];
    }

    v12 = 0;
  }

  return v12;
}

void __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_lock_screen(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_53(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = __atxlog_handle_lock_screen(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_53_cold_1();
  }
}

- (void)fetchFaceGalleryConfigurationWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[ATXFaceSuggestionServer fetchFaceGalleryConfigurationWithCompletion:]";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  faceGalleryConfiguration = [(ATXFaceSuggestionGenerator *)self->_faceSuggestionGenerator faceGalleryConfiguration];
  v7 = [faceGalleryConfiguration copy];

  v8 = [(ATXFaceSuggestionServer *)self checkGalleryForPhotosAppProtection:v7];

  v10 = __atxlog_handle_lock_screen(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 description];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Gallery returned: %@", &v12, 0xCu);
  }

  completionCopy[2](completionCopy, v8, 0);
}

- (void)fetchFaceGalleryConfigurationForSemanticType:(int64_t)type completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = __atxlog_handle_lock_screen(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[ATXFaceSuggestionServer fetchFaceGalleryConfigurationForSemanticType:completion:]";
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  faceGalleryConfiguration = [(ATXFaceSuggestionGenerator *)self->_faceSuggestionGenerator faceGalleryConfiguration];
  v9 = [faceGalleryConfiguration copy];

  sections = [v9 sections];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__ATXFaceSuggestionServer_fetchFaceGalleryConfigurationForSemanticType_completion___block_invoke;
  v14[3] = &__block_descriptor_40_e31_B16__0__ATXFaceGallerySection_8l;
  v14[4] = type;
  v11 = [sections _pas_filteredArrayWithTest:v14];

  v12 = __atxlog_handle_lock_screen([v9 setSections:v11]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 description];
    *buf = 138412290;
    v16 = v13;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Gallery returned: %@", buf, 0xCu);
  }

  completionCopy[2](completionCopy, v9, 0);
}

- (void)regenerateFaceGalleryConfigurationWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ATXFaceSuggestionServer regenerateFaceGalleryConfigurationWithCompletion:]";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v6 = os_transaction_create();
  [(ATXFaceSuggestionGenerator *)self->_faceSuggestionGenerator regenerateFaceGalleryConfigurationImmediatelyWithReason:@"XPC request or activity"];
  [(ATXFaceSuggestionServer *)self fetchFaceGalleryConfigurationWithCompletion:completionCopy];
}

- (void)fetchFaceSuggestionsForFocusMode:(id)mode completion:(id)completion
{
  completionCopy = completion;
  modeCopy = mode;
  v10 = objc_alloc_init(ATXModeFaceSuggestionGenerator);
  allDescriptors = [(ATXPosterDescriptorCache *)self->_descriptorCache allDescriptors];
  v9 = [(ATXModeFaceSuggestionGenerator *)v10 facesForMode:modeCopy allDescriptors:allDescriptors];

  completionCopy[2](completionCopy, v9, 0);
}

- (void)fetchPosterDescriptorsAndSuggestionDataWithCompletion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = __atxlog_handle_lock_screen(completionCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v43 = "[ATXFaceSuggestionServer fetchPosterDescriptorsAndSuggestionDataWithCompletion:]";
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v26 = objc_opt_new();
  allDescriptors = [(ATXPosterDescriptorCache *)self->_descriptorCache allDescriptors];
  v21 = objc_opt_new();
  v25 = [[ATXFaceSuggestionScorer alloc] initWithParameters:v21 descriptors:allDescriptors];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = allDescriptors;
  v27 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v27)
  {
    v24 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v6;
        v7 = *(*(&v34 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        signals = [(ATXFaceSuggestionScorer *)v25 signals];
        v9 = [signals countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v31;
          do
          {
            v12 = 0;
            do
            {
              if (*v31 != v11)
              {
                objc_enumerationMutation(signals);
              }

              v13 = *(*(&v30 + 1) + 8 * v12);
              v14 = objc_opt_class();
              v15 = NSStringFromClass(v14);
              v38[0] = @"weight";
              v16 = MEMORY[0x277CCABB0];
              [v13 weight];
              v17 = [v16 numberWithDouble:?];
              v38[1] = @"value";
              v39[0] = v17;
              v18 = MEMORY[0x277CCABB0];
              [v13 valueForDescriptor:v7];
              v19 = [v18 numberWithDouble:?];
              v39[1] = v19;
              v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
              [v8 setObject:v20 forKeyedSubscript:v15];

              ++v12;
            }

            while (v10 != v12);
            v10 = [signals countByEnumeratingWithState:&v30 objects:v40 count:16];
          }

          while (v10);
        }

        [v26 setObject:v8 forKeyedSubscript:v7];
        v6 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v27);
  }

  completionCopy[2](completionCopy, v26, 0);
}

- (void)fetchRankedPosterDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v12 = objc_opt_new();
  v5 = [ATXFaceGalleryLayoutGenerator alloc];
  descriptors = [(ATXPosterDescriptorCache *)self->_descriptorCache descriptors];
  complicationsGenerator = self->_complicationsGenerator;
  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [(ATXFaceGalleryLayoutGenerator *)v5 initWithDescriptors:descriptors complicationProvider:complicationsGenerator complicationDescriptorProvider:mEMORY[0x277CEB998] parameters:v12 dayZero:0 locale:currentLocale];

  rankedFeaturedDescriptors = [(ATXFaceGalleryLayoutGenerator *)v10 rankedFeaturedDescriptors];
  descriptorsCopy[2](descriptorsCopy, rankedFeaturedDescriptors, 0);
}

- (void)fetchPosterConfigurationsWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = __atxlog_handle_lock_screen(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ATXFaceSuggestionServer fetchPosterConfigurationsWithCompletion:]";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  configurations = [(ATXPosterConfigurationCache *)self->_configurationCache configurations];
  completionCopy[2](completionCopy, configurations, 0);
}

- (void)fetchComplicationSetsForFaceGalleryItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v6 = os_transaction_create();
  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  v19 = 0;
  v8 = [mEMORY[0x277CEB998] fetchAccessoryWidgetDescriptorMetadataWithError:&v19];
  v9 = v19;

  v11 = v8;
  if (!v8)
  {
    v12 = __atxlog_handle_lock_screen(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceSuggestionServer fetchComplicationSetsForFaceGalleryItem:completion:];
    }

    v11 = MEMORY[0x277CBEC10];
  }

  v13 = objc_alloc_init(MEMORY[0x277CEB388]);
  rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v13 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

  complicationsGenerator = self->_complicationsGenerator;
  allKeys = [rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps allKeys];
  v17 = [_TtC21AppPredictionInternal26ATXCompanionBundleIdMapper generateMappingForAppBundleIds:allKeys];
  v18 = [(ATXComplicationSuggestionGenerator *)complicationsGenerator modularSetsWithWidgetDescriptorsAdditionalData:v11 aggregatedAppLaunchData:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps bundleIdToCompanionBundleId:v17];

  completionCopy[2](completionCopy, v18, 0);
}

- (void)fetchLandscapeComplicationSetsForFaceGalleryItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v6 = os_transaction_create();
  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  v19 = 0;
  v8 = [mEMORY[0x277CEB998] fetchAccessoryWidgetDescriptorMetadataWithError:&v19];
  v9 = v19;

  v11 = v8;
  if (!v8)
  {
    v12 = __atxlog_handle_lock_screen(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceSuggestionServer fetchComplicationSetsForFaceGalleryItem:completion:];
    }

    v11 = MEMORY[0x277CBEC10];
  }

  v13 = objc_alloc_init(MEMORY[0x277CEB388]);
  rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v13 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

  complicationsGenerator = self->_complicationsGenerator;
  allKeys = [rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps allKeys];
  v17 = [_TtC21AppPredictionInternal26ATXCompanionBundleIdMapper generateMappingForAppBundleIds:allKeys];
  v18 = [(ATXComplicationSuggestionGenerator *)complicationsGenerator landscapeModularSetsWithWidgetDescriptorsAdditionalData:v11 aggregatedAppLaunchData:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps bundleIdToCompanionBundleId:v17];

  completionCopy[2](completionCopy, v18, 0);
}

- (void)posterBoardDidUpdateConfigurations:(id)configurations completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  completionCopy = completion;
  v8 = __atxlog_handle_lock_screen(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ATXFaceSuggestionServer posterBoardDidUpdateConfigurations:completion:]";
    v11 = 2112;
    v12 = configurationsCopy;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
  }

  [(ATXPosterConfigurationCache *)self->_configurationCache updateConfigurations:configurationsCopy completion:completionCopy];
}

- (void)posterBoardDidUpdateDescriptors:(id)descriptors completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  completionCopy = completion;
  v8 = __atxlog_handle_lock_screen(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[ATXFaceSuggestionServer posterBoardDidUpdateDescriptors:completion:]";
    v11 = 2112;
    v12 = descriptorsCopy;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
  }

  [(ATXPosterDescriptorCache *)self->_descriptorCache updateDescriptors:descriptorsCopy];
  completionCopy[2](completionCopy, 1);
}

- (void)inputDescriptionForComplicationSuggestionSignal:(id)signal completion:(id)completion
{
  complicationsGenerator = self->_complicationsGenerator;
  completionCopy = completion;
  v7 = [(ATXComplicationSuggestionGenerator *)complicationsGenerator inputDescriptionForComplicationSuggestionSignal:signal];
  completionCopy[2](completionCopy, v7, 0);
}

- (void)fetchComplicationSuggestionsModelDescriptionWithCompletion:(id)completion
{
  complicationsGenerator = self->_complicationsGenerator;
  completionCopy = completion;
  modelDescription = [(ATXComplicationSuggestionGenerator *)complicationsGenerator modelDescription];
  completionCopy[2](completionCopy, modelDescription, 0);
}

- (void)fetchInlineComplicationSetForFaceGalleryItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v7 = os_transaction_create();
  inlineSet = [(ATXComplicationSuggestionGenerator *)self->_complicationsGenerator inlineSet];
  completionCopy[2](completionCopy, inlineSet, 0);
}

- (void)refreshComplicationsCacheWithCompletion:(id)completion
{
  complicationsGenerator = self->_complicationsGenerator;
  completionCopy = completion;
  [(ATXComplicationSuggestionGenerator *)complicationsGenerator refreshComplicationCache];
  completionCopy[2](completionCopy, 0);
}

- (void)reloadLockScreenSuggestionsWithActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  mEMORY[0x277CEB988] = [MEMORY[0x277CEB988] sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke;
  v10[3] = &unk_2785A1158;
  v11 = activityCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = activityCopy;
  [mEMORY[0x277CEB988] refreshWithCompletion:v10];
}

void __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_lock_screen(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_cold_1();
    }
  }

  v9 = [*(a1 + 32) didDefer];
  if (v9)
  {
    v10 = __atxlog_handle_lock_screen(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[ATXFaceSuggestionServer reloadLockScreenSuggestionsWithActivity:completion:]_block_invoke";
      v11 = "%s: deferred after fetching watch faces";
LABEL_11:
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v12 = objc_opt_new();
  [v12 refreshComplicationCache];

  v13 = [*(a1 + 32) didDefer];
  if (v13)
  {
    v10 = __atxlog_handle_lock_screen(v13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[ATXFaceSuggestionServer reloadLockScreenSuggestionsWithActivity:completion:]_block_invoke";
      v11 = "%s: deferred after refreshing complication cache";
      goto LABEL_11;
    }

LABEL_12:

    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  v14 = objc_alloc_init(ATXModeFaceSuggestionGenerator);
  v15 = +[ATXPosterDescriptorCache sharedInstance];
  v16 = [v15 allDescriptors];
  [(ATXModeFaceSuggestionGenerator *)v14 generateAndCacheFacesFromDescriptors:v16];

  v17 = [*(a1 + 32) didDefer];
  if (v17)
  {
    v18 = __atxlog_handle_lock_screen(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[ATXFaceSuggestionServer reloadLockScreenSuggestionsWithActivity:completion:]_block_invoke";
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "%s: deferred after refreshing mode face suggestions", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v19 = +[ATXFaceSuggestionServer sharedInstance];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_77;
    v20[3] = &unk_2785A1130;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    [v19 regenerateFaceGalleryConfigurationWithCompletion:v20];
  }

LABEL_19:
}

void __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_lock_screen(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_77_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[ATXFaceSuggestionServer reloadLockScreenSuggestionsWithActivity:completion:]_block_invoke";
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: successfully regenerated face gallery configuration", &v13, 0xCu);
  }

  v9 = [*(a1 + 32) setDone];
  v10 = v9;
  v11 = __atxlog_handle_lock_screen(v9);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[ATXFaceSuggestionServer reloadLockScreenSuggestionsWithActivity:completion:]_block_invoke";
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%s: activity set to DONE", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_77_cold_2();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchScoredComplicationDescriptionWithCompletion:(id)completion
{
  complicationsGenerator = self->_complicationsGenerator;
  completionCopy = completion;
  scoredComplicationsDescription = [(ATXComplicationSuggestionGenerator *)complicationsGenerator scoredComplicationsDescription];
  (*(completion + 2))(completionCopy, scoredComplicationsDescription, 0);
}

- (void)fetchMetricsDescriptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = objc_opt_new();
  dailyMetricsDescription = [v6 dailyMetricsDescription];
  (*(completion + 2))(completionCopy, dailyMetricsDescription, 0);
}

- (void)logPosterEdit:(id)edit completion:(id)completion
{
  completionCopy = completion;
  editCopy = edit;
  v6 = objc_opt_new();
  [v6 postEditMetricWithEvent:editCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)logPosterSwitch:(id)switch completion:(id)completion
{
  completionCopy = completion;
  switchCopy = switch;
  v6 = objc_opt_new();
  [v6 postSwitchMetricWithEvent:switchCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)logFaceGalleryDidAppearWithFaceGalleryConfiguration:(id)configuration
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v5 = *MEMORY[0x277CEBDB0];
  v6 = v4;
  if (([v4 BOOLForKey:*MEMORY[0x277CEBDB0]] & 1) == 0)
  {
    [v6 setBool:1 forKey:v5];
  }
}

- (void)logComplicationsSeenInGalleryWithEngagements:(id)engagements completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  engagementsCopy = engagements;
  completionCopy = completion;
  v6 = objc_opt_new();
  uUIDString = [v6 UUIDString];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = engagementsCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        integerValue = [v14 integerValue];

        if (integerValue >= 5)
        {
          integerValue = 5;
        }

        v16 = objc_opt_new();
        extensionBundleIdentifier = [v13 extensionBundleIdentifier];
        [v16 setExtensionBundleId:extensionBundleIdentifier];

        [v16 setFamily:{objc_msgSend(v13, "widgetFamily")}];
        kind = [v13 kind];
        [v16 setKind:kind];

        [v16 setReason:{objc_msgSend(v13, "source")}];
        [v16 setOutcome:0];
        [v16 setNumEngaged:integerValue];
        [v16 setSessionId:uUIDString];
        [v16 logToCoreAnalytics];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)logFaceGalleryItemsSeenInGalleryWithOutcomes:(id)outcomes completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  outcomesCopy = outcomes;
  completionCopy = completion;
  v6 = objc_opt_new();
  uUIDString = [v6 UUIDString];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = outcomesCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = objc_opt_new();
        extensionBundleIdentifier = [v13 extensionBundleIdentifier];
        [v15 setExtensionBundleId:extensionBundleIdentifier];

        [v15 setSection:{objc_msgSend(v13, "source")}];
        [v15 setSessionId:uUIDString];
        v17 = [v14 isEqualToString:@"viewed"];
        if (v17 & 1) != 0 || ([v14 isEqualToString:@"tapped"])
        {
          v18 = 0;
LABEL_9:
          [v15 setOutcome:v18];
          [v15 setEngaged:v17 ^ 1u];
          goto LABEL_10;
        }

        if ([v14 isEqualToString:@"added"])
        {
          v18 = 1;
          goto LABEL_9;
        }

LABEL_10:
        [v15 logToCoreAnalytics];

        ++v12;
      }

      while (v10 != v12);
      v19 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v10 = v19;
    }

    while (v19);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)synchronousDateOfLastGalleryAppearanceWithCompletion:(id)completion
{
  completionCopy = completion;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__96;
  v13[4] = __Block_byref_object_dispose__96;
  v14 = 0;
  v4 = objc_opt_new();
  v5 = [v4 publisherFromStartTime:0.0];
  last = [v5 last];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__ATXFaceSuggestionServer_synchronousDateOfLastGalleryAppearanceWithCompletion___block_invoke;
  v10[3] = &unk_2785A1180;
  v7 = completionCopy;
  v11 = v7;
  v12 = v13;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__ATXFaceSuggestionServer_synchronousDateOfLastGalleryAppearanceWithCompletion___block_invoke_96;
  v9[3] = &unk_278597BA8;
  v9[4] = v13;
  v8 = [last sinkWithCompletion:v10 receiveInput:v9];

  _Block_object_dispose(v13, 8);
}

void __80__ATXFaceSuggestionServer_synchronousDateOfLastGalleryAppearanceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = __atxlog_handle_lock_screen(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 error];
      v9 = 136315394;
      v10 = "[ATXFaceSuggestionServer synchronousDateOfLastGalleryAppearanceWithCompletion:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: failed to fetch Biome events with error %@", &v9, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [v3 error];
  (*(v6 + 16))(v6, v7, v8);
}

uint64_t __80__ATXFaceSuggestionServer_synchronousDateOfLastGalleryAppearanceWithCompletion___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [v3 alloc];
  [v4 timestamp];
  v7 = v6;

  v8 = [v5 initWithTimeIntervalSinceReferenceDate:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x2821F96F8](v8, v10);
}

- (void)generatorDidUpdateFaceGalleryConfiguration:(id)configuration
{
  v25 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = __atxlog_handle_lock_screen(configurationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ATXFaceSuggestionServer generatorDidUpdateFaceGalleryConfiguration:]";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v6 = [configurationCopy copy];
  v7 = [(ATXFaceSuggestionServer *)self checkGalleryForPhotosAppProtection:v6];

  v9 = __atxlog_handle_lock_screen(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 description];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Gallery sent to PosterBoard: %@", &buf, 0xCu);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v11 = getPRSServiceClass_softClass_0;
  v20 = getPRSServiceClass_softClass_0;
  if (!getPRSServiceClass_softClass_0)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v22 = __getPRSServiceClass_block_invoke_0;
    v23 = &unk_2785967D8;
    v24 = &v17;
    __getPRSServiceClass_block_invoke_0(&buf);
    v11 = v18[3];
  }

  v12 = v11;
  _Block_object_dispose(&v17, 8);
  v13 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__ATXFaceSuggestionServer_generatorDidUpdateFaceGalleryConfiguration___block_invoke;
  v15[3] = &unk_27859EE08;
  v16 = v13;
  v14 = v13;
  [v14 pushPosterGalleryUpdate:v7 completion:v15];
}

void __70__ATXFaceSuggestionServer_generatorDidUpdateFaceGalleryConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_lock_screen(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__ATXFaceSuggestionServer_generatorDidUpdateFaceGalleryConfiguration___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[ATXFaceSuggestionServer generatorDidUpdateFaceGalleryConfiguration:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: service: %@, successfully pushed face gallery configuration to PosterBoard", &v7, 0x16u);
  }
}

- (void)widgetDescriptorCacheDidUpdateDescriptors:(id)descriptors
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_lock_screen(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ATXFaceSuggestionServer widgetDescriptorCacheDidUpdateDescriptors:]";
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: refreshing complication cache", &v5, 0xCu);
  }

  [(ATXComplicationSuggestionGenerator *)self->_complicationsGenerator refreshComplicationCache];
}

- (void)descriptorCacheDidUpdateWithDescriptors:(id)descriptors
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_lock_screen(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ATXFaceSuggestionServer descriptorCacheDidUpdateWithDescriptors:]";
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: scheduling mode face suggestions cache refresh due to descriptor update", &v5, 0xCu);
  }

  [(_PASSimpleCoalescingTimer *)self->_modeFaceSuggestionRefreshCoalescingTimer runAfterDelaySeconds:1 coalescingBehavior:30.0];
}

- (id)checkGalleryForPhotosAppProtection:(id)protection
{
  v19 = *MEMORY[0x277D85DE8];
  protectionCopy = protection;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sections = [protectionCopy sections];
  v8 = [sections countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(sections);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (!-[ATXFaceSuggestionServer isPhotosBasedSection:](self, "isPhotosBasedSection:", v12) || ([v6 bundleIdIsLockedOrHiddenByUserPreference:@"com.apple.mobileslideshow"] & 1) == 0)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [sections countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [protectionCopy setSections:v5];

  return protectionCopy;
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_2_11(&dword_2263AA000, v0, v1, "%s: rejecting connection %@ without entitlement %@", v2);
}

void __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __62__ATXFaceSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_53_cold_1()
{
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __78__ATXFaceSuggestionServer_reloadLockScreenSuggestionsWithActivity_completion___block_invoke_77_cold_1()
{
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __70__ATXFaceSuggestionServer_generatorDidUpdateFaceGalleryConfiguration___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[ATXFaceSuggestionServer generatorDidUpdateFaceGalleryConfiguration:]_block_invoke";
  *&v3[12] = 2112;
  *&v3[14] = *(a1 + 32);
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_2_11(&dword_2263AA000, a2, a3, "%s: service: %@, error pushing face gallery configuration to PosterBoard: %@", *v3, *&v3[8], *&v3[16], a2);
}

@end