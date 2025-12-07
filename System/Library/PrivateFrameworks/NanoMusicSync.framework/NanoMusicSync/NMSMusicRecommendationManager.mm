@interface NMSMusicRecommendationManager
+ (BOOL)_shouldComputeLibraryRecommendations;
+ (id)sharedManager;
- (BOOL)_isLibraryRecommendationExpired;
- (BOOL)_updateRecommendationsSelections;
- (BOOL)_updateWithRecommendations:(id)recommendations;
- (BOOL)hasSelectedRecommendationWithIdentifier:(id)identifier;
- (NMSMusicRecommendationManager)init;
- (id)_expirationDateForUpdateDate:(id)date withOffsetDays:(int64_t)days;
- (id)_fetchAddedDateForContainer:(id)container;
- (id)_sortedContainersBasedOnRecency;
- (void)_finishLoadingContentsWithResponse:(id)response;
- (void)_handleActiveAccountDidChangeNotification:(id)notification;
- (void)_handleCloudControllerIsCloudEnabledDidChangeNotification:(id)notification;
- (void)_handleMediaLibraryDidChangeNotification:(id)notification;
- (void)_handleMediaLibraryDynamicPropertiesDidChangeNotification:(id)notification;
- (void)_handleMusicLibraryContentsDidChangeNotification:(id)notification;
- (void)_handlePairedDeviceDidBecomeActiveNotification:(id)notification;
- (void)_handlePairingFinishedNotification:(id)notification;
- (void)_handleRecommendationSelectionsDidChangeNotification:(id)notification;
- (void)_handleRecommendationStoreContentsDidChangeNotification:(id)notification;
- (void)_handleSubscriptionStatusDidChangeNotification:(id)notification;
- (void)_invalidateLibraryRecommendationExpirationTimer;
- (void)_notifyMusicRecommendationsDidUpdateNotification;
- (void)_persistUpdatedRecommendationsWithResponse:(id)response;
- (void)_registerForPairingFinishedNotification;
- (void)_reloadLibraryRecommendations;
- (void)_reloadRecommendationContentsIfNecessary;
- (void)_reloadRecommendationsFromDefaultsWithCompletion:(id)completion;
- (void)_removePreviousCachedRecommendationsResponses;
- (void)_removePreviousRecommendationDefaults;
- (void)_scheduleNextLibraryRecommendationReloadIfNecessary;
- (void)_unregisterForPairingFinishedNotification;
- (void)dealloc;
- (void)fetchRecommendationsWithQueue:(id)queue completion:(id)completion;
- (void)persistRecommendationsSelections:(id)selections;
- (void)setWantsContentsUpdate:(BOOL)update;
@end

@implementation NMSMusicRecommendationManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[NMSMusicRecommendationManager sharedManager];
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

uint64_t __46__NMSMusicRecommendationManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager___sharedManager;
  sharedManager___sharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (NMSMusicRecommendationManager)init
{
  v13.receiver = self;
  v13.super_class = NMSMusicRecommendationManager;
  v2 = [(NMSMusicRecommendationManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoMusicSync.NMSMusicRecommendationManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleRecommendationStoreContentsDidChangeNotification_ name:@"com.apple.nanomusicsync.reco-store" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleRecommendationSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.reco-selections" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleMediaLibraryDidChangeNotification_ name:*MEMORY[0x277CD58D8] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleMediaLibraryDynamicPropertiesDidChangeNotification_ name:*MEMORY[0x277CD58E8] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleCloudControllerIsCloudEnabledDidChangeNotification_ name:*MEMORY[0x277CD5670] object:0];
    v7 = *MEMORY[0x277D2B518];
    autoupdatingSharedLibrary = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
    [defaultCenter addObserver:v2 selector:sel__handleMusicLibraryContentsDidChangeNotification_ name:v7 object:autoupdatingSharedLibrary];

    [defaultCenter addObserver:v2 selector:sel__handlePairedDeviceDidBecomeActiveNotification_ name:*MEMORY[0x277D2BC48] object:0];
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [defaultMediaLibrary beginGeneratingLibraryChangeNotifications];

    v10 = objc_alloc_init(NMSInitialCloudLibraryImportObserver);
    initialCloudLibraryImportObserver = v2->_initialCloudLibraryImportObserver;
    v2->_initialCloudLibraryImportObserver = v10;

    [(NMSMusicRecommendationManager *)v2 fetchRecommendationsWithQueue:0 completion:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [defaultMediaLibrary endGeneratingLibraryChangeNotifications];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  v6.receiver = self;
  v6.super_class = NMSMusicRecommendationManager;
  [(NMSMusicRecommendationManager *)&v6 dealloc];
}

- (void)setWantsContentsUpdate:(BOOL)update
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__NMSMusicRecommendationManager_setWantsContentsUpdate___block_invoke;
  v4[3] = &unk_27993E610;
  v4[4] = self;
  updateCopy = update;
  dispatch_async(queue, v4);
}

void *__56__NMSMusicRecommendationManager_setWantsContentsUpdate___block_invoke(void *result)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(result[4] + 56) != *(result + 40))
  {
    v1 = result;
    v2 = NMLogForCategory(5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 40))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] set wantsContentsUpdate: %@", &v5, 0xCu);
    }

    *(v1[4] + 56) = *(v1 + 40);
    [v1[4] _removeLegacyRecommendationsDefaultsIfNecessary];
    v4 = v1[4];
    if (v4[56] == 1)
    {
      [v4 _registerForPairingFinishedNotification];
    }

    else
    {
      [v4 _unregisterForPairingFinishedNotification];
    }

    return [v1[4] _reloadRecommendationContentsIfNecessary];
  }

  return result;
}

- (void)_registerForPairingFinishedNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handlePairingFinishedNotification_ name:*MEMORY[0x277D2BC68] object:0];

  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
}

- (void)_unregisterForPairingFinishedNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D2BC68] object:0];
}

- (void)fetchRecommendationsWithQueue:(id)queue completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v9 = NMLogForCategory(5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x25F865990](completionCopy);
    *buf = 138412802;
    v21 = uUID;
    v22 = 2112;
    v23 = queueCopy;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "[Recommendation] Will fetch recommendations for request: %@, queue: %@, completion: %@", buf, 0x20u);
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke;
  v15[3] = &unk_27993E978;
  v16 = queueCopy;
  selfCopy = self;
  v18 = uUID;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = uUID;
  v14 = queueCopy;
  dispatch_async(queue, v15);
}

void __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = dispatch_get_global_queue(21, 0);
  }

  v4 = v3;
  v5 = *(a1 + 40);
  if (*(v5 + 40) == 1)
  {
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      *buf = 138412290;
      v38 = v7;
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "[Recommendation] Will return existing recommendations for request: %@", buf, 0xCu);
    }

    if (*(a1 + 56))
    {
      v8 = [*(*(a1 + 40) + 8) copy];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_79;
      block[3] = &unk_27993E8A8;
      v34 = *(a1 + 48);
      v9 = *(a1 + 56);
      v35 = v8;
      v36 = v9;
      v10 = v8;
      dispatch_async(v4, block);
    }
  }

  else
  {
    v11 = *(v5 + 32) == 0;
    v12 = NMLogForCategory(5);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v15 = *(a1 + 48);
        *buf = 138412290;
        v38 = v15;
        _os_log_impl(&dword_25B27B000, v12, OS_LOG_TYPE_DEFAULT, "[Recommendation] Initial fetch started for request: %@", buf, 0xCu);
      }

      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      objc_initWeak(buf, *(a1 + 40));
      v17 = *(a1 + 40);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_80;
      v29[3] = &unk_27993E950;
      v30 = *(a1 + 48);
      objc_copyWeak(&v32, buf);
      v18 = v16;
      v31 = v18;
      [v17 _reloadRecommendationsFromDefaultsWithCompletion:v29];
      v19 = *(a1 + 40);
      v20 = *(v19 + 32);
      *(v19 + 32) = v18;
      v21 = v18;

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v13)
      {
        v14 = *(a1 + 48);
        *buf = 138412290;
        v38 = v14;
        _os_log_impl(&dword_25B27B000, v12, OS_LOG_TYPE_DEFAULT, "[Recommendation] Will wait for initial fetch to complete for request: %@", buf, 0xCu);
      }
    }

    if (*(a1 + 56))
    {
      v22 = *(a1 + 40);
      v23 = *(v22 + 32);
      v24 = *(v22 + 16);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_82;
      v25[3] = &unk_27993E978;
      v25[4] = v22;
      v26 = v4;
      v27 = *(a1 + 48);
      v28 = *(a1 + 56);
      dispatch_group_notify(v23, v24, v25);
    }
  }
}

uint64_t __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_79(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Calling completion handler with existing recommendations for request: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

void __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_80(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Initial fetch complete for request: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 40) = 1;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_82(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_2;
  block[3] = &unk_27993E8A8;
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8 = v2;
  v9 = v4;
  v5 = v2;
  dispatch_async(v3, block);
}

uint64_t __74__NMSMusicRecommendationManager_fetchRecommendationsWithQueue_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Calling completion handler with newly fetched recommendations for request: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (BOOL)hasSelectedRecommendationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NMSyncDefaults sharedDefaults];
  musicRecommendationDict = [v4 musicRecommendationDict];
  v6 = [musicRecommendationDict objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)persistRecommendationsSelections:(id)selections
{
  v24 = *MEMORY[0x277D85DE8];
  selectionsCopy = selections;
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = selectionsCopy;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] Persisting recommendation selections for: %@", buf, 0xCu);
  }

  v5 = +[NMSyncDefaults sharedDefaults];
  musicRecommendationDict = [v5 musicRecommendationDict];
  v7 = [musicRecommendationDict mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = selectionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isSelected", v17)}];
        identifier = [v13 identifier];
        [v7 setObject:v14 forKeyedSubscript:identifier];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  [v5 setMusicRecommendationDict:v16];
}

- (void)_handleSubscriptionStatusDidChangeNotification:(id)notification
{
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_INFO, "[Recommendation] _handleSubscriptionStatusDidChangeNotification", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NMSMusicRecommendationManager__handleSubscriptionStatusDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

void __80__NMSMusicRecommendationManager__handleSubscriptionStatusDidChangeNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[NMSSubscriptionManager sharedManager];
  v3 = [v2 hasCapability:1];

  if ((v3 & 1) == 0)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = +[NMSSubscriptionManager sharedManager];
      *buf = 134217984;
      v9 = [v5 subscriptionCapabilities];
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] Subscription capabilities changed to %lu. Removing recommendations defaults.", buf, 0xCu);
    }

    [*(a1 + 32) _removePreviousRecommendationDefaults];
    [*(a1 + 32) _removePreviousCachedRecommendationsResponses];
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__NMSMusicRecommendationManager__handleSubscriptionStatusDidChangeNotification___block_invoke_86;
    v7[3] = &unk_27993E9A0;
    v7[4] = v6;
    [v6 _reloadRecommendationsFromDefaultsWithCompletion:v7];
  }
}

id *__80__NMSMusicRecommendationManager__handleSubscriptionStatusDidChangeNotification___block_invoke_86(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleActiveAccountDidChangeNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__NMSMusicRecommendationManager__handleActiveAccountDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __75__NMSMusicRecommendationManager__handleActiveAccountDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Active account is changed. Removing recommendations defaults of previous account.", buf, 2u);
  }

  [*(a1 + 32) _removePreviousRecommendationDefaults];
  [*(a1 + 32) _removePreviousCachedRecommendationsResponses];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__NMSMusicRecommendationManager__handleActiveAccountDidChangeNotification___block_invoke_87;
  v5[3] = &unk_27993E9A0;
  v5[4] = v3;
  return [v3 _reloadRecommendationsFromDefaultsWithCompletion:v5];
}

id *__75__NMSMusicRecommendationManager__handleActiveAccountDidChangeNotification___block_invoke_87(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handlePairingFinishedNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NMSMusicRecommendationManager__handlePairingFinishedNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __68__NMSMusicRecommendationManager__handlePairingFinishedNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Pairing finished. Reloading recommendations.", v4, 2u);
  }

  return [*(a1 + 32) _reloadRecommendationContentsIfNecessary];
}

- (void)_handleRecommendationStoreContentsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__NMSMusicRecommendationManager__handleRecommendationStoreContentsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __89__NMSMusicRecommendationManager__handleRecommendationStoreContentsDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = NMLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "[Recommendation] Recommendation store contents did change. Reloading recommendations.", buf, 2u);
    }

    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __89__NMSMusicRecommendationManager__handleRecommendationStoreContentsDidChangeNotification___block_invoke_88;
    v7[3] = &unk_27993E9A0;
    v7[4] = v6;
    [v6 _reloadRecommendationsFromDefaultsWithCompletion:v7];
  }
}

id *__89__NMSMusicRecommendationManager__handleRecommendationStoreContentsDidChangeNotification___block_invoke_88(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleRecommendationSelectionsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__NMSMusicRecommendationManager__handleRecommendationSelectionsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void *__86__NMSMusicRecommendationManager__handleRecommendationSelectionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Recommendation selections did change.", buf, 2u);
  }

  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:@"IsInProcessNotification"];
  v5 = [v4 BOOLValue];

  result = [*(a1 + 40) _updateRecommendationsSelections];
  if ((v5 & 1) != 0 || result)
  {
    v7 = +[NMSyncDefaults sharedDefaults];
    [v7 setLastUserPinningChangeDateForBundleID:@"com.apple.NanoMusic"];

    v8 = NMLogForCategory(12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "Music: Set last user pinning change date, due to change in recommendation selections.", v9, 2u);
    }

    return [*(a1 + 40) _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleMediaLibraryDidChangeNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__NMSMusicRecommendationManager__handleMediaLibraryDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __74__NMSMusicRecommendationManager__handleMediaLibraryDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Media Library did change. Reloading recommendations.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__NMSMusicRecommendationManager__handleMediaLibraryDidChangeNotification___block_invoke_89;
  v5[3] = &unk_27993E9A0;
  v5[4] = v3;
  return [v3 _reloadRecommendationsFromDefaultsWithCompletion:v5];
}

id *__74__NMSMusicRecommendationManager__handleMediaLibraryDidChangeNotification___block_invoke_89(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleMediaLibraryDynamicPropertiesDidChangeNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NMSMusicRecommendationManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __91__NMSMusicRecommendationManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Media Library dynamic properties did change. Reloading recommendations.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __91__NMSMusicRecommendationManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke_90;
  v5[3] = &unk_27993E9A0;
  v5[4] = v3;
  return [v3 _reloadRecommendationsFromDefaultsWithCompletion:v5];
}

id *__91__NMSMusicRecommendationManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke_90(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleCloudControllerIsCloudEnabledDidChangeNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NMSMusicRecommendationManager__handleCloudControllerIsCloudEnabledDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __91__NMSMusicRecommendationManager__handleCloudControllerIsCloudEnabledDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Is Cloud Enabled did change. Reloading recommendations.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __91__NMSMusicRecommendationManager__handleCloudControllerIsCloudEnabledDidChangeNotification___block_invoke_91;
  v5[3] = &unk_27993E9A0;
  v5[4] = v3;
  return [v3 _reloadRecommendationsFromDefaultsWithCompletion:v5];
}

id *__91__NMSMusicRecommendationManager__handleCloudControllerIsCloudEnabledDidChangeNotification___block_invoke_91(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_handleMusicLibraryContentsDidChangeNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMusicRecommendationManager__handleMusicLibraryContentsDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __82__NMSMusicRecommendationManager__handleMusicLibraryContentsDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Media library updated. Reloading recommendations.", v4, 2u);
  }

  return [*(a1 + 32) _reloadRecommendationContentsIfNecessary];
}

- (void)_handlePairedDeviceDidBecomeActiveNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NMSMusicRecommendationManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __80__NMSMusicRecommendationManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] Paired device became active. Reloading recommendations.", buf, 2u);
  }

  [*(a1 + 32) _reloadRecommendationContentsIfNecessary];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__NMSMusicRecommendationManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke_92;
  v5[3] = &unk_27993E9A0;
  v5[4] = v3;
  return [v3 _reloadRecommendationsFromDefaultsWithCompletion:v5];
}

id *__80__NMSMusicRecommendationManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke_92(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _notifyMusicRecommendationsDidUpdateNotification];
  }

  return result;
}

- (void)_reloadRecommendationContentsIfNecessary
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_wantsContentsUpdate)
  {
    if ([objc_opt_class() _shouldComputeLibraryRecommendations])
    {
      initialCloudLibraryImportObserver = self->_initialCloudLibraryImportObserver;
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __73__NMSMusicRecommendationManager__reloadRecommendationContentsIfNecessary__block_invoke;
      v4[3] = &unk_27993DD20;
      v4[4] = self;
      [(NMSInitialCloudLibraryImportObserver *)initialCloudLibraryImportObserver performBlockWhenLibraryIsReady:v4];
    }
  }
}

void __73__NMSMusicRecommendationManager__reloadRecommendationContentsIfNecessary__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NMSMusicRecommendationManager__reloadRecommendationContentsIfNecessary__block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = v1;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_INHERIT_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v2, v3);
}

- (void)_reloadRecommendationsFromDefaultsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  v5 = self->_queue;
  activeAccount = [MEMORY[0x277D7FCA0] activeAccount];
  accountDSID = [activeAccount accountDSID];

  if ([accountDSID length])
  {
    v8 = +[NMSyncDefaults sharedDefaults];
    cachedRecommendationsData = [v8 cachedRecommendationsData];
  }

  else
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] Not using cached store recommendations since we no longer have an active account.", buf, 2u);
    }

    cachedRecommendationsData = 0;
  }

  v10 = objc_alloc_init(NMSMusicRecommendationsRequest);
  [(NMSMusicRecommendationsRequest *)v10 setUseCachedDataOnly:1];
  [(NMSMusicRecommendationsRequest *)v10 setCachedData:cachedRecommendationsData];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__NMSMusicRecommendationManager__reloadRecommendationsFromDefaultsWithCompletion___block_invoke;
  v13[3] = &unk_27993E9F0;
  v11 = v5;
  v14 = v11;
  objc_copyWeak(&v16, &location);
  v12 = completionCopy;
  v15 = v12;
  [(NMSMusicRecommendationsRequest *)v10 performWithResponseHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __82__NMSMusicRecommendationManager__reloadRecommendationsFromDefaultsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMusicRecommendationManager__reloadRecommendationsFromDefaultsWithCompletion___block_invoke_2;
  block[3] = &unk_27993E9C8;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void __82__NMSMusicRecommendationManager__reloadRecommendationsFromDefaultsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) recommendations];
    v3 = [v2 array];
    v4 = [WeakRetained _updateWithRecommendations:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (void)_notifyMusicRecommendationsDidUpdateNotification
{
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[Recommendation] Notifying clients about updated recommendations.", v5, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NMSMusicRecommendationsDidUpdateNotification" object:self];
}

- (void)_reloadLibraryRecommendations
{
  v32 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _isLibraryRecommendationExpired = [(NMSMusicRecommendationManager *)self _isLibraryRecommendationExpired];
  v4 = NMLogForCategory(5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (_isLibraryRecommendationExpired)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] evaluating library music recommendations.", buf, 2u);
    }

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    _sortedContainersBasedOnRecency = [(NMSMusicRecommendationManager *)self _sortedContainersBasedOnRecency];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [_sortedContainersBasedOnRecency countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(_sortedContainersBasedOnRecency);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          type = [v13 type];
          v15 = array;
          if (type)
          {
            if (type != 1)
            {
              continue;
            }

            v15 = array2;
          }

          persistentID = [v13 persistentID];
          [v15 addObject:persistentID];
        }

        v10 = [_sortedContainersBasedOnRecency countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v17 = [array count];
    if (v17 + [array2 count])
    {
      v18 = +[NMSyncDefaults sharedDefaults];
      [v18 beginBatchUpdates];
      v21 = [array copy];
      [v18 setLibraryRecommendationPlaylists:v21];

      v22 = [array2 copy];
      [v18 setLibraryRecommendationAlbums:v22];

      date = [MEMORY[0x277CBEAA8] date];
      v24 = [(NMSMusicRecommendationManager *)self _expirationDateForUpdateDate:date withOffsetDays:3];
      [v18 setLibraryRecommendationExpirationDate:v24];

      [v18 endBatchUpdates];
      [(NMSMusicRecommendationManager *)self _scheduleNextLibraryRecommendationReloadIfNecessary];
    }

    else
    {
      v18 = NMLogForCategory(5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "[Recommendation] Library music recommendations are empty, skipping persisting.", buf, 2u);
      }
    }
  }

  else
  {
    if (v5)
    {
      v19 = +[NMSyncDefaults sharedDefaults];
      libraryRecommendationExpirationDate = [v19 libraryRecommendationExpirationDate];
      *buf = 138543362;
      v31 = libraryRecommendationExpirationDate;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] NOT evaluating library music recommendations; expiration date is: %{public}@.", buf, 0xCu);
    }

    [(NMSMusicRecommendationManager *)self _scheduleNextLibraryRecommendationReloadIfNecessary];
  }
}

- (id)_sortedContainersBasedOnRecency
{
  v77[5] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  autoupdatingSharedLibrary = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
  v4 = MEMORY[0x277D2B5A8];
  v5 = MEMORY[0x277CBEC28];
  v6 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4C0] equalToValue:MEMORY[0x277CBEC28]];
  v77[0] = v6;
  v7 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4B0] equalToValue:MEMORY[0x277CBEC38]];
  v77[1] = v7;
  v8 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4F0] equalToValue:v5];
  v77[2] = v8;
  v9 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4E8] equalToValue:v5];
  v77[3] = v9;
  v10 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B4B8] equalToValue:v5];
  v77[4] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:5];
  v12 = [v4 predicateMatchingPredicates:v11];

  v56 = v12;
  v13 = [MEMORY[0x277D2B5C8] unrestrictedQueryWithLibrary:autoupdatingSharedLibrary predicate:v12 orderingTerms:0];
  v14 = *MEMORY[0x277D2B4A8];
  v76[0] = *MEMORY[0x277D2B4D8];
  v76[1] = v14;
  v15 = *MEMORY[0x277D2B4E0];
  v76[2] = *MEMORY[0x277D2B4A0];
  v76[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:4];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke;
  v69[3] = &unk_27993EA18;
  v17 = autoupdatingSharedLibrary;
  v70 = v17;
  v18 = array;
  v71 = v18;
  v55 = v13;
  [v13 enumeratePersistentIDsAndProperties:v16 usingBlock:v69];

  v19 = [MEMORY[0x277CBEB58] set];
  v53 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B580] equalToValue:&unk_286C8D718];
  v20 = [MEMORY[0x277D2B620] unrestrictedQueryWithLibrary:v17 predicate:? orderingTerms:?];
  v75 = *MEMORY[0x277D2B530];
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke_107;
  v67[3] = &unk_27993EA40;
  v22 = v19;
  v68 = v22;
  v52 = v20;
  [v20 enumeratePersistentIDsAndProperties:v21 usingBlock:v67];

  v51 = [MEMORY[0x277D2B5D0] predicateWithProperty:*MEMORY[0x277D2B490] values:v22];
  v23 = [MEMORY[0x277D2B5A0] unrestrictedAllItemsQueryWithlibrary:v17 predicate:? orderingTerms:?];
  v24 = *MEMORY[0x277D2B478];
  v74[0] = *MEMORY[0x277D2B480];
  v74[1] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke_2;
  v65[3] = &unk_27993EA40;
  v26 = array2;
  v66 = v26;
  v50 = v23;
  [v23 enumeratePersistentIDsAndProperties:v25 usingBlock:v65];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v27 = v18;
  v28 = [v27 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v62;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v62 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v61 + 1) + 8 * i);
        v33 = [(NMSMusicRecommendationManager *)self _fetchAddedDateForContainer:v32];
        [v32 setAddedDate:v33];
      }

      v29 = [v27 countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v29);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v34 = v26;
  v35 = [v34 countByEnumeratingWithState:&v57 objects:v72 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v58;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v58 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v57 + 1) + 8 * j);
        v40 = [(NMSMusicRecommendationManager *)self _fetchAddedDateForContainer:v39];
        [v39 setAddedDate:v40];
      }

      v36 = [v34 countByEnumeratingWithState:&v57 objects:v72 count:16];
    }

    while (v36);
  }

  v41 = [MEMORY[0x277CBEB18] arrayWithArray:v27];
  [v41 addObjectsFromArray:v34];
  [v41 sortUsingComparator:&__block_literal_global_112];
  v42 = [v41 count];
  v43 = +[NMSyncDefaults sharedDefaults];
  minimumNumberOfRecentMusicModelObjects = [v43 minimumNumberOfRecentMusicModelObjects];
  unsignedIntegerValue = [minimumNumberOfRecentMusicModelObjects unsignedIntegerValue];

  if (v42 >= unsignedIntegerValue)
  {
    v46 = unsignedIntegerValue;
  }

  else
  {
    v46 = v42;
  }

  v47 = [v41 subarrayWithRange:{0, v46}];

  return v47;
}

void __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[3] || (v6 = [objc_alloc(MEMORY[0x277D2B5C8]) initWithPersistentID:a2 inLibrary:*(a1 + 32)], objc_msgSend(MEMORY[0x277D2B620], "containerQueryWithContainer:", v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasEntities"), v7, v6, v8))
  {
    v9 = [NMSContainer alloc];
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v11 = [(NMSContainer *)v9 initWithPersistentID:v10 name:*a3 type:0];

    [(NMSContainer *)v11 setPlayedDate:a3[1]];
    [(NMSContainer *)v11 setAddedDate:a3[2]];
    [*(a1 + 40) addObject:v11];
  }
}

void __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [NMSContainer alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v8 = [(NMSContainer *)v6 initWithPersistentID:v7 name:*a3 type:1];

  [(NMSContainer *)v8 setPlayedDate:a3[1]];
  [*(a1 + 32) addObject:v8];
}

uint64_t __64__NMSMusicRecommendationManager__sortedContainersBasedOnRecency__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 addedDate];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v5 playedDate];

  [v9 doubleValue];
  v11 = v10;

  if (v8 >= v11)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v4 addedDate];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v4 playedDate];

  [v16 doubleValue];
  v18 = v17;

  if (v15 >= v18)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  if (v12 < v19)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)_fetchAddedDateForContainer:(id)container
{
  v26[1] = *MEMORY[0x277D85DE8];
  containerCopy = container;
  type = [containerCopy type];
  v5 = MEMORY[0x277D2B538];
  if (type)
  {
    v5 = MEMORY[0x277D2B530];
  }

  v6 = *v5;
  v7 = MEMORY[0x277D2B5C0];
  persistentID = [containerCopy persistentID];
  v9 = [v7 predicateWithProperty:v6 value:persistentID comparison:1];

  v10 = MEMORY[0x277D2B620];
  autoupdatingSharedLibrary = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
  v12 = [v10 unrestrictedAllItemsQueryWithlibrary:autoupdatingSharedLibrary predicate:v9 orderingTerms:0];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  addedDate = [containerCopy addedDate];
  v14 = addedDate;
  v15 = &unk_286C8D730;
  if (addedDate)
  {
    v15 = addedDate;
  }

  v25 = v15;

  v26[0] = *MEMORY[0x277D2B540];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__NMSMusicRecommendationManager__fetchAddedDateForContainer___block_invoke;
  v19[3] = &unk_27993EA88;
  v19[4] = &v20;
  [v12 enumeratePersistentIDsAndProperties:v16 usingBlock:v19];

  v17 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v17;
}

void __61__NMSMusicRecommendationManager__fetchAddedDateForContainer___block_invoke(uint64_t a1, uint64_t a2, id *a3)
{
  [*(*(*(a1 + 32) + 8) + 40) doubleValue];
  v6 = v5;
  [*a3 doubleValue];
  if (v6 < v7)
  {
    v8 = *a3;
    v9 = (*(*(a1 + 32) + 8) + 40);

    objc_storeStrong(v9, v8);
  }
}

+ (BOOL)_shouldComputeLibraryRecommendations
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  isPaired = [mEMORY[0x277D2BCF8] isPaired];

  return isPaired;
}

- (void)_finishLoadingContentsWithResponse:(id)response
{
  responseCopy = response;
  recommendations = [responseCopy recommendations];
  array = [recommendations array];
  v7 = [(NMSMusicRecommendationManager *)self _updateWithRecommendations:array];

  [(NMSMusicRecommendationManager *)self _persistUpdatedRecommendationsWithResponse:responseCopy];
  if (v7)
  {

    [(NMSMusicRecommendationManager *)self _notifyMusicRecommendationsDidUpdateNotification];
  }
}

- (BOOL)_updateWithRecommendations:(id)recommendations
{
  v28 = *MEMORY[0x277D85DE8];
  recommendationsCopy = recommendations;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[NMSyncDefaults sharedDefaults];
  musicRecommendationDict = [v5 musicRecommendationDict];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = recommendationsCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        identifier = [v12 identifier];
        v14 = [musicRecommendationDict objectForKeyedSubscript:identifier];

        if (v14)
        {
          [v12 setSelected:{objc_msgSend(v14, "BOOLValue")}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  v15 = [(NSArray *)self->_recommendations isEqualToArray:v7];
  if (!v15)
  {
    v16 = [v7 copy];
    recommendations = self->_recommendations;
    self->_recommendations = v16;

    v18 = NMLogForCategory(5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_recommendations;
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "[Recommendation] Recommendations contents updated: %@", buf, 0xCu);
    }

    [(NMSMusicRecommendationManager *)self persistRecommendationsSelections:self->_recommendations];
  }

  return !v15;
}

- (BOOL)_updateRecommendationsSelections
{
  v26 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[NMSyncDefaults sharedDefaults];
  musicRecommendationDict = [v3 musicRecommendationDict];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_recommendations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
    v18 = v6 != 0;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        identifier = [v12 identifier];
        v14 = [musicRecommendationDict objectForKeyedSubscript:identifier];

        if (v14)
        {
          bOOLValue = [v14 BOOLValue];
        }

        else
        {
          bOOLValue = 1;
        }

        v9 |= bOOLValue ^ [v12 isSelected];
        [v12 setSelected:bOOLValue];
      }

      v8 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);

    if ((v9 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_17;
    }

    v5 = NMLogForCategory(5);
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      recommendations = self->_recommendations;
      *buf = 138412290;
      v24 = recommendations;
      _os_log_impl(&dword_25B27B000, &v5->super, OS_LOG_TYPE_DEFAULT, "[Recommendation] Recommendations selections updated: %@", buf, 0xCu);
    }

    v7 = v18;
  }

LABEL_17:
  return v7;
}

- (void)_persistUpdatedRecommendationsWithResponse:(id)response
{
  v25 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dispatch_assert_queue_V2(self->_queue);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_recommendations;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "isSelected", v20)}];
        identifier = [v11 identifier];
        [dictionary setObject:v12 forKeyedSubscript:identifier];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  cachedData = [responseCopy cachedData];
  if ([cachedData length] >= 0x55731)
  {
    v15 = NMLogForCategory(5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(NMSMusicRecommendationManager *)cachedData _persistUpdatedRecommendationsWithResponse:v15];
    }

    data = [MEMORY[0x277CBEA90] data];

    cachedData = data;
  }

  v17 = +[NMSyncDefaults sharedDefaults];
  [v17 beginBatchUpdates];
  v18 = [dictionary copy];
  [v17 setMusicRecommendationDict:v18];

  [v17 setCachedRecommendationsData:cachedData];
  date = [MEMORY[0x277CBEAA8] date];
  [v17 setCatalogRecommendationsLastUpdateDate:date];

  [v17 endBatchUpdates];
}

- (void)_removePreviousRecommendationDefaults
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_wantsContentsUpdate)
  {
    v16 = +[NMSyncDefaults sharedDefaults];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = self->_recommendations;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          identifier = [v9 identifier];
          v11 = [identifier isEqualToString:NMSRecommendationRecentMusicIdentifier];

          if (v11)
          {
            v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isSelected")}];
            identifier2 = [v9 identifier];
            [dictionary setObject:v12 forKeyedSubscript:identifier2];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    [v16 beginBatchUpdates];
    v14 = [dictionary copy];
    [v16 setMusicRecommendationDict:v14];

    [v16 setCachedRecommendationsData:0];
    [v16 setCatalogRecommendationsLastUpdateDate:0];
    [v16 setLibraryRecommendationExpirationDate:0];
    [v16 endBatchUpdates];
    v15 = [[NMSMutableMediaSyncInfo alloc] initWithTarget:3];
    [(NMSMutableMediaSyncInfo *)v15 synchronize];
  }
}

- (void)_removePreviousCachedRecommendationsResponses
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_25B27B000, log, OS_LOG_TYPE_ERROR, "[Recommendation] Failed to remove data from disk at url: %@ due to read error: %@", &v3, 0x16u);
}

- (void)_scheduleNextLibraryRecommendationReloadIfNecessary
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_wantsContentsUpdate)
  {
    [(NMSMusicRecommendationManager *)self _invalidateLibraryRecommendationExpirationTimer];
    v3 = +[NMSyncDefaults sharedDefaults];
    libraryRecommendationExpirationDate = [v3 libraryRecommendationExpirationDate];

    date = [MEMORY[0x277CBEAA8] date];
    [libraryRecommendationExpirationDate timeIntervalSinceDate:date];
    v7 = v6;

    v8 = NMLogForCategory(5);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 <= 0.0)
    {
      if (v9)
      {
        *buf = 138412290;
        v18 = libraryRecommendationExpirationDate;
        _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Reload) Skipped scheduling library reload with expiration date: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v9)
      {
        *buf = 138412546;
        v18 = libraryRecommendationExpirationDate;
        v19 = 2048;
        v20 = v7;
        _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Reload) Scheduling library expiration timer with date: %@ (in %f seconds)", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
      libraryRecommendationExpirationTimer = self->_libraryRecommendationExpirationTimer;
      self->_libraryRecommendationExpirationTimer = v10;

      v12 = self->_libraryRecommendationExpirationTimer;
      v13 = dispatch_walltime(0, (v7 * 1000000000.0));
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0xDF8475800uLL);
      v14 = self->_libraryRecommendationExpirationTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __84__NMSMusicRecommendationManager__scheduleNextLibraryRecommendationReloadIfNecessary__block_invoke;
      handler[3] = &unk_27993DC58;
      objc_copyWeak(&v16, buf);
      dispatch_source_set_event_handler(v14, handler);
      dispatch_resume(self->_libraryRecommendationExpirationTimer);
      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }
  }
}

void __84__NMSMusicRecommendationManager__scheduleNextLibraryRecommendationReloadIfNecessary__block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Reload) Expiration timer fired.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _invalidateLibraryRecommendationExpirationTimer];
    [v4 _reloadRecommendationContentsIfNecessary];
  }
}

- (void)_invalidateLibraryRecommendationExpirationTimer
{
  dispatch_assert_queue_V2(self->_queue);
  libraryRecommendationExpirationTimer = self->_libraryRecommendationExpirationTimer;
  if (libraryRecommendationExpirationTimer)
  {
    dispatch_source_cancel(libraryRecommendationExpirationTimer);
    v4 = self->_libraryRecommendationExpirationTimer;
    self->_libraryRecommendationExpirationTimer = 0;
  }
}

- (BOOL)_isLibraryRecommendationExpired
{
  v2 = +[NMSyncDefaults sharedDefaults];
  libraryRecommendationExpirationDate = [v2 libraryRecommendationExpirationDate];

  if (libraryRecommendationExpirationDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v5 = [libraryRecommendationExpirationDate compare:date] == -1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_expirationDateForUpdateDate:(id)date withOffsetDays:(int64_t)days
{
  v5 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v5 currentCalendar];
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:days];
  v9 = [currentCalendar dateByAddingComponents:v8 toDate:dateCopy options:2];

  return v9;
}

- (void)_persistUpdatedRecommendationsWithResponse:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 length];
  v4 = [MEMORY[0x277D7FB30] sharedAccountStore];
  v5 = [v4 activeStoreAccountWithError:0];
  v6 = [v5 ic_storefront];
  v7 = 134218242;
  v8 = v3;
  v9 = 2112;
  v10 = v6;
  _os_log_fault_impl(&dword_25B27B000, a2, OS_LOG_TYPE_FAULT, "[Recommendation] Response exceeds expected size - response data length: %lu, storefront: %@", &v7, 0x16u);
}

@end