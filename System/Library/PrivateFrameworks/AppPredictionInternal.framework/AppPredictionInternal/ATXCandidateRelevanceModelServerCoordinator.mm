@interface ATXCandidateRelevanceModelServerCoordinator
+ (id)sharedInstance;
+ (id)userDefaultsKeyForLastCacheUpdateDateForConfig:(id)config;
- (ATXCandidateRelevanceModelServerCoordinator)init;
- (ATXCandidateRelevanceModelServerCoordinator)initWithContextHelper:(id)helper configs:(id)configs defaults:(id)defaults;
- (id)callbackForAnchor:(id)anchor;
- (id)currentDuetEventForAnchor:(id)anchor;
- (id)exitNotificationIdentifierForAnchor:(id)anchor;
- (id)lastCacheUpdateDateForConfig:(id)config;
- (id)notificationIdentifierForAnchor:(id)anchor;
- (id)supportedAnchorsForNotifications;
- (void)dealloc;
- (void)handleAnchorNotificationForAnchor:(id)anchor;
- (void)handleLOIEntranceNotification;
- (void)handleLOIExitNotification;
- (void)handleMicrolocationVisitNotification;
- (void)registerAnchorEventNotificationsForAnchor:(id)anchor;
- (void)registerForSupportedAnchorNotificatons;
- (void)sendSuggestionsToBlendingForConfig:(id)config;
- (void)sendSuggestionsToBlendingForEachConfigIfCacheIsOlderThan:(double)than;
- (void)sendSuggestionsToBlendingForEachConfigImmediately;
- (void)setCacheUpdateDate:(id)date forConfig:(id)config;
- (void)unregisterAnchorEventListenerForAnchor:(id)anchor;
- (void)unregisterAnchorEventListeners;
@end

@implementation ATXCandidateRelevanceModelServerCoordinator

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ATXCandidateRelevanceModelServerCoordinator sharedInstance];
  }

  v3 = sharedInstance_modelServerCoordinator;

  return v3;
}

uint64_t __61__ATXCandidateRelevanceModelServerCoordinator_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ATXCandidateRelevanceModelServerCoordinator);
  v1 = sharedInstance_modelServerCoordinator;
  sharedInstance_modelServerCoordinator = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ATXCandidateRelevanceModelServerCoordinator)init
{
  v3 = objc_opt_new();
  v5 = allRelevanceModelConfigs(v3, v4);
  v6 = objc_alloc(MEMORY[0x277CBEBD0]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v8 = [(ATXCandidateRelevanceModelServerCoordinator *)self initWithContextHelper:v3 configs:v5 defaults:v7];

  return v8;
}

- (ATXCandidateRelevanceModelServerCoordinator)initWithContextHelper:(id)helper configs:(id)configs defaults:(id)defaults
{
  helperCopy = helper;
  configsCopy = configs;
  defaultsCopy = defaults;
  v20.receiver = self;
  v20.super_class = ATXCandidateRelevanceModelServerCoordinator;
  v12 = [(ATXCandidateRelevanceModelServerCoordinator *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contextHelper, helper);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("ATXCandidateRelevanceModelServerCoordinator.updateQueue", v14);
    updateQueue = v13->_updateQueue;
    v13->_updateQueue = v15;

    objc_storeStrong(&v13->_configs, configs);
    objc_storeStrong(&v13->_defaults, defaults);
    v17 = [[ATXTimeBucketedRateLimiter alloc] initWithMaxCount:5 perPeriod:600.0];
    rateLimiter = v13->_rateLimiter;
    v13->_rateLimiter = v17;
  }

  return v13;
}

- (void)dealloc
{
  [(ATXCandidateRelevanceModelServerCoordinator *)self unregisterAnchorEventListeners];
  v3.receiver = self;
  v3.super_class = ATXCandidateRelevanceModelServerCoordinator;
  [(ATXCandidateRelevanceModelServerCoordinator *)&v3 dealloc];
}

- (void)registerForSupportedAnchorNotificatons
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  supportedAnchorsForNotifications = [(ATXCandidateRelevanceModelServerCoordinator *)self supportedAnchorsForNotifications];
  v4 = [supportedAnchorsForNotifications countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(supportedAnchorsForNotifications);
        }

        [(ATXCandidateRelevanceModelServerCoordinator *)self registerAnchorEventNotificationsForAnchor:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [supportedAnchorsForNotifications countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)supportedAnchorsForNotifications
{
  v14[10] = *MEMORY[0x277D85DE8];
  v13 = objc_opt_new();
  v14[0] = v13;
  v2 = objc_opt_new();
  v14[1] = v2;
  v3 = objc_opt_new();
  v14[2] = v3;
  v4 = objc_opt_new();
  v14[3] = v4;
  v5 = objc_opt_new();
  v14[4] = v5;
  v6 = objc_opt_new();
  v14[5] = v6;
  v7 = objc_opt_new();
  v14[6] = v7;
  v8 = objc_opt_new();
  v14[7] = v8;
  v9 = objc_opt_new();
  v14[8] = v9;
  v10 = objc_opt_new();
  v14[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:10];

  return v11;
}

- (void)registerAnchorEventNotificationsForAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = __atxlog_handle_relevance_model(anchorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXCandidateRelevanceModelServerCoordinator registerAnchorEventNotificationsForAnchor:];
  }

  usesContextStoreForRealTimeNotifications = [objc_opt_class() usesContextStoreForRealTimeNotifications];
  v7 = objc_opt_class();
  v8 = v7;
  if (usesContextStoreForRealTimeNotifications)
  {
    v9 = [(ATXCandidateRelevanceModelServerCoordinator *)self callbackForAnchor:anchorCopy];
    v10 = [(ATXCandidateRelevanceModelServerCoordinator *)self notificationIdentifierForAnchor:anchorCopy];
    context = [(ATXCoreDuetContextHelper *)self->_contextHelper context];
    [v8 registerWithContextStoreForAnchorEntranceWithCallback:v9 notificationId:v10 registrationPersistenceContext:context];

    anchorType = [objc_opt_class() anchorType];
    if (anchorType == 18)
    {
      invalidationPredicateForContextStoreRegistration = [objc_opt_class() invalidationPredicateForContextStoreRegistration];

      if (invalidationPredicateForContextStoreRegistration)
      {
        v14 = __atxlog_handle_relevance_model(anchorType);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [ATXCandidateRelevanceModelServerCoordinator registerAnchorEventNotificationsForAnchor:];
        }

        v15 = objc_opt_class();
        v16 = [(ATXCandidateRelevanceModelServerCoordinator *)self callbackForAnchor:anchorCopy];
        v17 = [(ATXCandidateRelevanceModelServerCoordinator *)self exitNotificationIdentifierForAnchor:anchorCopy];
        context2 = [(ATXCoreDuetContextHelper *)self->_contextHelper context];
        [v15 registerWithContextStoreForAnchorExitWithCallback:v16 notificationId:v17 registrationPersistenceContext:context2];
      }
    }

    goto LABEL_19;
  }

  if ([v7 anchorType] == 19)
  {
    objc_initWeak(&location, self);
    mEMORY[0x277CEBC98] = [MEMORY[0x277CEBC98] sharedInstance];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __89__ATXCandidateRelevanceModelServerCoordinator_registerAnchorEventNotificationsForAnchor___block_invoke;
    v28[3] = &unk_278596D20;
    objc_copyWeak(&v29, &location);
    v20 = [mEMORY[0x277CEBC98] subscribeWithCallback:v28 onQueue:self->_updateQueue];
    microLocationSchedulerToken = self->_microLocationSchedulerToken;
    self->_microLocationSchedulerToken = v20;

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    goto LABEL_19;
  }

  anchorType2 = [objc_opt_class() anchorType];
  v23 = objc_opt_class();
  if (anchorType2 == 7)
  {
    v24 = sel_handleLOIEntranceNotification;
LABEL_15:
    anchorType = [v23 registerForNotificationsWithoutUsingContextStoreForObserver:self enterSelector:v24 exitSelector:0];
    goto LABEL_19;
  }

  anchorType3 = [v23 anchorType];
  if (anchorType3 == 8)
  {
    v23 = objc_opt_class();
    v24 = sel_handleLOIExitNotification;
    goto LABEL_15;
  }

  v26 = __atxlog_handle_relevance_model(anchorType3);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    [ATXCandidateRelevanceModelServerCoordinator registerAnchorEventNotificationsForAnchor:];
  }

LABEL_19:
  v27 = __atxlog_handle_relevance_model(anchorType);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [ATXCandidateRelevanceModelServerCoordinator registerAnchorEventNotificationsForAnchor:];
  }
}

void __89__ATXCandidateRelevanceModelServerCoordinator_registerAnchorEventNotificationsForAnchor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleMicrolocationVisitNotification];
    WeakRetained = v2;
  }
}

- (id)callbackForAnchor:(id)anchor
{
  anchorCopy = anchor;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__ATXCandidateRelevanceModelServerCoordinator_callbackForAnchor___block_invoke;
  v9[3] = &unk_278596D48;
  v9[4] = self;
  v10 = anchorCopy;
  v5 = anchorCopy;
  objc_copyWeak(&v11, &location);
  v6 = _Block_copy(v9);
  v7 = _Block_copy(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __65__ATXCandidateRelevanceModelServerCoordinator_callbackForAnchor___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_relevance_model(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 40);
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - (%@) Anchor Event notification received, %@. Generating new predictions.", &v9, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && [objc_opt_class() shouldProcessContextStoreNotification])
  {
    [WeakRetained handleAnchorNotificationForAnchor:*(a1 + 40)];
  }
}

- (void)unregisterAnchorEventListeners
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  supportedAnchorsForNotifications = [(ATXCandidateRelevanceModelServerCoordinator *)self supportedAnchorsForNotifications];
  v4 = [supportedAnchorsForNotifications countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(supportedAnchorsForNotifications);
        }

        [(ATXCandidateRelevanceModelServerCoordinator *)self unregisterAnchorEventListenerForAnchor:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [supportedAnchorsForNotifications countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)unregisterAnchorEventListenerForAnchor:(id)anchor
{
  anchorCopy = anchor;
  if (([objc_opt_class() usesContextStoreForRealTimeNotifications] & 1) == 0)
  {
    anchorType = [objc_opt_class() anchorType];
    if (anchorType == 8 || (anchorType = [objc_opt_class() anchorType], anchorType == 7))
    {
      v6 = __atxlog_handle_relevance_model(anchorType);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [ATXCandidateRelevanceModelServerCoordinator unregisterAnchorEventListenerForAnchor:];
      }

      v7 = [objc_opt_class() unregisterForNotificationsWithoutUsingContextStoreForObserver:self];
      v8 = __atxlog_handle_relevance_model(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [ATXCandidateRelevanceModelServerCoordinator unregisterAnchorEventListenerForAnchor:];
      }
    }

    if ([objc_opt_class() anchorType] == 19)
    {
      v9 = __atxlog_handle_relevance_model(19);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ATXCandidateRelevanceModelServerCoordinator unregisterAnchorEventListenerForAnchor:];
      }

      if (self->_microLocationSchedulerToken)
      {
        mEMORY[0x277CEBC98] = [MEMORY[0x277CEBC98] sharedInstance];
        [mEMORY[0x277CEBC98] unSubscribeWithToken:self->_microLocationSchedulerToken];

        microLocationSchedulerToken = self->_microLocationSchedulerToken;
        self->_microLocationSchedulerToken = 0;
      }

      v13 = __atxlog_handle_relevance_model(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ATXCandidateRelevanceModelServerCoordinator unregisterAnchorEventListenerForAnchor:];
      }
    }
  }
}

- (id)notificationIdentifierForAnchor:(id)anchor
{
  v3 = MEMORY[0x277CCACA8];
  anchorCopy = anchor;
  v5 = [v3 alloc];
  anchorTypeString = [anchorCopy anchorTypeString];

  v7 = [v5 initWithFormat:@"com.apple.duetexpertd.ATXCandidateRelevanceModelServerCoordinator.%@", anchorTypeString];

  return v7;
}

- (id)exitNotificationIdentifierForAnchor:(id)anchor
{
  v3 = MEMORY[0x277CCACA8];
  anchorCopy = anchor;
  v5 = [v3 alloc];
  anchorTypeString = [anchorCopy anchorTypeString];

  v7 = [v5 initWithFormat:@"com.apple.duetexpertd.ATXCandidateRelevanceModelServerCoordinator.invalidation.%@", anchorTypeString];

  return v7;
}

- (void)handleLOIEntranceNotification
{
  v3 = objc_opt_new();
  [(ATXCandidateRelevanceModelServerCoordinator *)self handleAnchorNotificationForAnchor:v3];
}

- (void)handleLOIExitNotification
{
  v3 = objc_opt_new();
  [(ATXCandidateRelevanceModelServerCoordinator *)self handleAnchorNotificationForAnchor:v3];
}

- (void)handleMicrolocationVisitNotification
{
  v3 = objc_opt_new();
  v4 = [(ATXCandidateRelevanceModelServerCoordinator *)self currentDuetEventForAnchor:v3];

  if (v4)
  {
    v5 = [(NSUserDefaults *)self->_defaults stringForKey:@"ATXCandidateRelevanceModelServer-ATXMicrolocationAnchorLastIdentifierKey"];
    if (v5 && ([v4 identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", v5), v6, v7))
    {
      v9 = __atxlog_handle_anchor(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Received a high confidence anchor event, but ignoring since it's the same event as what we received last time.", v13, 2u);
      }
    }

    else
    {
      defaults = self->_defaults;
      identifier = [v4 identifier];
      [(NSUserDefaults *)defaults setValue:identifier forKey:@"ATXCandidateRelevanceModelServer-ATXMicrolocationAnchorLastIdentifierKey"];

      v12 = objc_opt_new();
      [(ATXCandidateRelevanceModelServerCoordinator *)self handleAnchorNotificationForAnchor:v12];
    }
  }
}

- (id)currentDuetEventForAnchor:(id)anchor
{
  v3 = [objc_alloc(objc_msgSend(objc_msgSend(objc_opt_class() "supportedDuetDataProviderClass")];

  return v3;
}

- (void)handleAnchorNotificationForAnchor:(id)anchor
{
  v13 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  v5 = __atxlog_handle_relevance_model(anchorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    anchorTypeString = [anchorCopy anchorTypeString];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = anchorTypeString;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - %@ Anchor notification received. Updating suggestions immediately.", &v9, 0x16u);
  }

  [(ATXCandidateRelevanceModelServerCoordinator *)self sendSuggestionsToBlendingForEachConfigImmediately];
}

- (void)sendSuggestionsToBlendingForEachConfigImmediately
{
  v11 = *MEMORY[0x277D85DE8];
  tryToIncrementCountAndReturnSuccess = [(ATXTimeBucketedRateLimiter *)self->_rateLimiter tryToIncrementCountAndReturnSuccess];
  if (tryToIncrementCountAndReturnSuccess)
  {
    updateQueue = self->_updateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__ATXCandidateRelevanceModelServerCoordinator_sendSuggestionsToBlendingForEachConfigImmediately__block_invoke;
    block[3] = &unk_278596BB8;
    block[4] = self;
    dispatch_sync(updateQueue, block);
  }

  else
  {
    v5 = __atxlog_handle_relevance_model(tryToIncrementCountAndReturnSuccess);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - Encountered rate limit. Not updating predictions immediately.", buf, 0xCu);
    }
  }
}

- (void)sendSuggestionsToBlendingForEachConfigIfCacheIsOlderThan:(double)than
{
  v43 = *MEMORY[0x277D85DE8];
  v30 = os_transaction_create();
  v5 = __atxlog_handle_relevance_model(v30);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412290;
    v37 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - Beginning model serving for all configs.", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = self->_configs;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    v12 = 0x277CBE000uLL;
    selfCopy = self;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [(ATXCandidateRelevanceModelServerCoordinator *)self lastCacheUpdateDateForConfig:v14];
        timeIntervalSinceNow = [v15 timeIntervalSinceNow];
        v18 = -v17;
        if (v15)
        {
          v19 = v18 <= than;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          v21 = __atxlog_handle_relevance_model(timeIntervalSinceNow);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            clientModel = [v14 clientModel];
            [clientModel clientModelId];
            v25 = v10;
            v26 = v11;
            v27 = v8;
            v29 = v28 = v12;
            *buf = 138412802;
            v37 = v23;
            v38 = 2048;
            v39 = v18;
            v40 = 2112;
            v41 = v29;
            _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "%@ - Skipping model serving due to recent cache update %f seconds ago for model id %@", buf, 0x20u);

            v12 = v28;
            v8 = v27;
            v11 = v26;
            v10 = v25;
            self = selfCopy;
          }
        }

        else
        {
          v20 = [*(v12 + 2728) now];
          [(ATXCandidateRelevanceModelServerCoordinator *)self setCacheUpdateDate:v20 forConfig:v14];

          [(ATXCandidateRelevanceModelServerCoordinator *)self sendSuggestionsToBlendingForConfig:v14];
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v10);
  }
}

- (void)sendSuggestionsToBlendingForConfig:(id)config
{
  configCopy = config;
  v4 = [[ATXCandidateRelevanceModelServer alloc] initWithConfig:configCopy];

  [(ATXCandidateRelevanceModelServer *)v4 sendSuggestionsToBlending];
}

+ (id)userDefaultsKeyForLastCacheUpdateDateForConfig:(id)config
{
  configCopy = config;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  clientModel = [configCopy clientModel];

  clientModelId = [clientModel clientModelId];
  v8 = [@"ATXCandidateRelevanceModelServerCoordinator-ClientModelLastCacheUpdateDate" stringByAppendingFormat:@"-%@-%@", v5, clientModelId];

  return v8;
}

- (id)lastCacheUpdateDateForConfig:(id)config
{
  configCopy = config;
  v5 = [objc_opt_class() userDefaultsKeyForLastCacheUpdateDateForConfig:configCopy];

  v6 = [(NSUserDefaults *)self->_defaults objectForKey:v5];

  return v6;
}

- (void)setCacheUpdateDate:(id)date forConfig:(id)config
{
  configCopy = config;
  dateCopy = date;
  v8 = [objc_opt_class() userDefaultsKeyForLastCacheUpdateDateForConfig:configCopy];

  [(NSUserDefaults *)self->_defaults setObject:dateCopy forKey:v8];
}

- (void)registerAnchorEventNotificationsForAnchor:.cold.1()
{
  OUTLINED_FUNCTION_3_6();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - (%@) Setting up Anchor Event listener.", v4, v5, v6, v7);
}

- (void)registerAnchorEventNotificationsForAnchor:.cold.2()
{
  OUTLINED_FUNCTION_3_6();
  v6 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_12();
  v5 = v1;
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "%@ - (%@) Tried to register for real-time notifications, but the Anchor doesn't support the ContextStore and it's not another known anchor.", v4, 0x16u);
}

- (void)registerAnchorEventNotificationsForAnchor:.cold.3()
{
  OUTLINED_FUNCTION_3_6();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - (%@) Setting up Anchor Event invalidation listener.", v4, v5, v6, v7);
}

- (void)registerAnchorEventNotificationsForAnchor:.cold.4()
{
  OUTLINED_FUNCTION_3_6();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - (%@) Done registering.", v4, v5, v6, v7);
}

- (void)unregisterAnchorEventListenerForAnchor:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - (%@) Unregistering Anchor Event listener.", v4, v5, v6, v7);
}

- (void)unregisterAnchorEventListenerForAnchor:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - (%@) Done unregistering.", v4, v5, v6, v7);
}

@end