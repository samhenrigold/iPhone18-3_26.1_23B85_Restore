@interface ATXAppIntentMonitor
- (ATXAppIntentMonitor)initWithAppLaunchHistogramManager:(id)manager appInfoManager:(id)infoManager appActionLaunchSequenceManager:(id)sequenceManager dataStore:(id)store;
- (ATXAppIntentMonitor)initWithAppLaunchHistogramManager:(id)manager appInfoManager:(id)infoManager appActionLaunchSequenceManager:(id)sequenceManager intentStream:(id)stream activityStream:(id)activityStream menuItemStream:(id)itemStream toolKitActionStream:(id)actionStream dataStore:(id)self0 predictionContextBuilder:(id)self1 userDefaults:(id)self2 safariIntentFilter:(id)self3;
- (BOOL)_isAllowedDaemonDonationBundleId:(id)id;
- (BOOL)shouldAcceptMessageDonation:(id)donation;
- (BOOL)shouldProcessIntentDonationsForSessionStartDate:(id)date;
- (BOOL)shouldProcessNSUADonationsForSessionStartDate:(id)date;
- (id)_appActionLaunchSequenceManager;
- (id)fetchIntentEventsForAppSessionWithBundleId:(id)id startDate:(id)date endDate:(id)endDate;
- (void)_displayDonationOnLockscreenWithAction:(id)action;
- (void)_handleCompletedIntentForForSourceItemID:(id)d atxIntentSource:(int64_t)source;
- (void)_handleDonationImmediatelyForBundleId:(id)id sourceItemID:(id)d completedSuccessfully:(BOOL)successfully isDonatedBySiri:(BOOL)siri isAllowedDaemonDonationBundleId:(BOOL)bundleId;
- (void)_listenToActivityStream;
- (void)_listenToIntentStream;
- (void)_listenToLinkActionStream;
- (void)_logIntentPredictionsForIntentEvent:(id)event context:(id)context;
- (void)_respondToIntentStreamChangingWithIntent:(id)intent;
- (void)_respondToLinkActionStreamChangingWithInvocation:(id)invocation;
- (void)_updateActionPredictionHistogramsForIntentEvent:(id)event weight:(float)weight context:(id)context;
- (void)dealloc;
- (void)handleAppRegistrationForBundleIds:(id)ids;
- (void)processIntentDonationsDuringAppSessionForBundleId:(id)id startDate:(id)date endDate:(id)endDate globals:(id)globals;
- (void)processWeightedIntentDonations:(id)donations forBundleId:(id)id startDate:(id)date endDate:(id)endDate globals:(id)globals;
- (void)removeDonationFromLockscreenForAction:(id)action;
- (void)start;
- (void)stop;
- (void)updateActionPredictionPipelineForAppSession:(id)session startDate:(id)date endDate:(id)endDate;
- (void)updateActionPredictionPipelineForIntentEvent:(id)event weight:(float)weight appSessionStartDate:(id)date appSessionEndDate:(id)endDate;
- (void)updateActionPredictionPipelineForIntentEvent:(id)event weight:(float)weight appSessionStartDate:(id)date appSessionEndDate:(id)endDate context:(id)context;
- (void)updateActionPredictionSlotResolutionForIntentEvent:(id)event weight:(float)weight prevLocationUUID:(id)d locationUUID:(id)iD currentMotionType:(int64_t)type appSessionStartDate:(id)date appSessionEndDate:(id)endDate geohash:(int64_t)self0 coarseGeohash:(int64_t)self1;
@end

@implementation ATXAppIntentMonitor

- (ATXAppIntentMonitor)initWithAppLaunchHistogramManager:(id)manager appInfoManager:(id)infoManager appActionLaunchSequenceManager:(id)sequenceManager dataStore:(id)store
{
  storeCopy = store;
  sequenceManagerCopy = sequenceManager;
  infoManagerCopy = infoManager;
  managerCopy = manager;
  v21 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v20 = objc_opt_new();
  v14 = +[ATXPredictionContextBuilder sharedInstance];
  v15 = objc_alloc(MEMORY[0x277CBEBD0]);
  v16 = [v15 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v17 = objc_opt_new();
  v18 = [(ATXAppIntentMonitor *)self initWithAppLaunchHistogramManager:managerCopy appInfoManager:infoManagerCopy appActionLaunchSequenceManager:sequenceManagerCopy intentStream:v21 activityStream:v12 menuItemStream:v13 toolKitActionStream:v20 dataStore:storeCopy predictionContextBuilder:v14 userDefaults:v16 safariIntentFilter:v17];

  return v18;
}

- (ATXAppIntentMonitor)initWithAppLaunchHistogramManager:(id)manager appInfoManager:(id)infoManager appActionLaunchSequenceManager:(id)sequenceManager intentStream:(id)stream activityStream:(id)activityStream menuItemStream:(id)itemStream toolKitActionStream:(id)actionStream dataStore:(id)self0 predictionContextBuilder:(id)self1 userDefaults:(id)self2 safariIntentFilter:(id)self3
{
  v68[2] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  infoManagerCopy = infoManager;
  sequenceManagerCopy = sequenceManager;
  streamCopy = stream;
  activityStreamCopy = activityStream;
  itemStreamCopy = itemStream;
  actionStreamCopy = actionStream;
  storeCopy = store;
  builderCopy = builder;
  defaultsCopy = defaults;
  filterCopy = filter;
  v66.receiver = self;
  v66.super_class = ATXAppIntentMonitor;
  v18 = [(ATXAppIntentMonitor *)&v66 init];
  if (v18)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.duetexpertcenter.AppPredictionExpert.AppIntentHistory", v19);
    appIntentHistoryQueue = v18->_appIntentHistoryQueue;
    v18->_appIntentHistoryQueue = v20;

    if (!managerCopy)
    {
      v23 = __atxlog_handle_default(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        [ATXAppIntentMonitor initWithAppLaunchHistogramManager:appInfoManager:appActionLaunchSequenceManager:intentStream:activityStream:menuItemStream:toolKitActionStream:dataStore:predictionContextBuilder:userDefaults:safariIntentFilter:];
      }
    }

    objc_storeStrong(&v18->_appLaunchHistogramManager, manager);
    objc_storeStrong(&v18->_dataStore, store);
    v24 = [objc_alloc(MEMORY[0x277CEB408]) initWithIntentStream:streamCopy activityStream:activityStreamCopy menuItemStream:itemStreamCopy toolKitActionStream:actionStreamCopy];
    combinedIntentStream = v18->_combinedIntentStream;
    v18->_combinedIntentStream = v24;

    objc_storeStrong(&v18->_appInfoManager, infoManager);
    objc_storeStrong(&v18->_appActionLaunchSequenceManager, sequenceManager);
    objc_storeStrong(&v18->_predictionContextBuilder, builder);
    objc_storeStrong(&v18->_userDefaults, defaults);
    objc_initWeak(&location, v18);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __233__ATXAppIntentMonitor_initWithAppLaunchHistogramManager_appInfoManager_appActionLaunchSequenceManager_intentStream_activityStream_menuItemStream_toolKitActionStream_dataStore_predictionContextBuilder_userDefaults_safariIntentFilter___block_invoke;
    aBlock[3] = &unk_278596D78;
    objc_copyWeak(&v64, &location);
    v26 = _Block_copy(aBlock);
    v27 = objc_opt_new();
    appRegistrationListener = v18->_appRegistrationListener;
    v18->_appRegistrationListener = v27;

    [(ATXInternalAppRegistrationNotification *)v18->_appRegistrationListener registerForNotificationsWithRegisterBlock:v26];
    objc_storeStrong(&v18->_safariIntentQualityFilter, filter);
    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_attr_make_with_qos_class(v29, QOS_CLASS_BACKGROUND, -1);

    v31 = dispatch_queue_create("com.apple.duetexpertcenter.AppPredictionExpert.IntentDonations", v30);
    donationQueue = v18->_donationQueue;
    v18->_donationQueue = v31;

    v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v34 = dispatch_queue_attr_make_with_qos_class(v33, QOS_CLASS_UTILITY, -1);
    v35 = dispatch_queue_create("com.apple.duetexpertcenter.AppPredictionExpert.AppIntentDonations", v34);
    donationQueueLinkActions = v18->_donationQueueLinkActions;
    v18->_donationQueueLinkActions = v35;

    v37 = [MEMORY[0x277D41DA0] propertyWithName:@"category" possibleValues:&unk_283A57EA8];
    v38 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"ab"];
    v39 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"bundleId"];
    v40 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"activityType"];
    v41 = objc_alloc(MEMORY[0x277D41DB8]);
    v68[0] = v37;
    v68[1] = v38;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
    v43 = [v41 initWithFeatureId:@"ActionPredictions" event:@"action_donated" registerProperties:v42];
    donatedActionsTracker = v18->_donatedActionsTracker;
    v18->_donatedActionsTracker = v43;

    v45 = objc_alloc(MEMORY[0x277D41D98]);
    v67[0] = v39;
    v67[1] = v40;
    v67[2] = v38;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
    v47 = [v45 initWithFeatureId:@"ActionPredictions" event:@"donation_in_cache" registerProperties:v46];
    donatedActionInCacheTracker = v18->_donatedActionInCacheTracker;
    v18->_donatedActionInCacheTracker = v47;

    objc_destroyWeak(&v64);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __233__ATXAppIntentMonitor_initWithAppLaunchHistogramManager_appInfoManager_appActionLaunchSequenceManager_intentStream_activityStream_menuItemStream_toolKitActionStream_dataStore_predictionContextBuilder_userDefaults_safariIntentFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleAppRegistrationForBundleIds:v3];
}

- (void)dealloc
{
  [(ATXAppIntentMonitor *)self stop];
  v3.receiver = self;
  v3.super_class = ATXAppIntentMonitor;
  [(ATXAppIntentMonitor *)&v3 dealloc];
}

- (void)handleAppRegistrationForBundleIds:(id)ids
{
  v14 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [idsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(idsCopy);
        }

        [(_ATXDataStore *)self->_dataStore regenerateSlotSetKeyForBundleId:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [idsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_listenToActivityStream
{
  v3 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"ATXAppIntentMonitor.NSUA" targetQueue:self->_donationQueue];
  nsuaScheduler = self->_nsuaScheduler;
  self->_nsuaScheduler = v3;

  v11 = BiomeLibrary();
  v5 = [v11 App];
  activity = [v5 Activity];
  atx_DSLPublisher = [activity atx_DSLPublisher];
  v8 = [atx_DSLPublisher subscribeOn:self->_nsuaScheduler];
  v9 = [v8 sinkWithCompletion:&__block_literal_global_102 receiveInput:&__block_literal_global_75];
  nsuaSink = self->_nsuaSink;
  self->_nsuaSink = v9;
}

void __46__ATXAppIntentMonitor__listenToActivityStream__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__ATXAppIntentMonitor__listenToActivityStream__block_invoke_cold_1(v2);
    }
  }
}

void __46__ATXAppIntentMonitor__listenToActivityStream__block_invoke_72(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "Donation Processing - NSUA Received. No further processing until the end of the current app session.", v2, 2u);
  }
}

- (void)_listenToIntentStream
{
  objc_initWeak(&location, self);
  v3 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"ATXAppIntentMonitor.Intent" targetQueue:self->_donationQueue];
  intentScheduler = self->_intentScheduler;
  self->_intentScheduler = v3;

  v5 = BiomeLibrary();
  v6 = [v5 App];
  intent = [v6 Intent];
  atx_DSLPublisher = [intent atx_DSLPublisher];
  v9 = [atx_DSLPublisher subscribeOn:self->_intentScheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__ATXAppIntentMonitor__listenToIntentStream__block_invoke_81;
  v12[3] = &unk_2785977D8;
  objc_copyWeak(&v13, &location);
  v10 = [v9 sinkWithCompletion:&__block_literal_global_80 receiveInput:v12];
  intentSink = self->_intentSink;
  self->_intentSink = v10;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __44__ATXAppIntentMonitor__listenToIntentStream__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__ATXAppIntentMonitor__listenToIntentStream__block_invoke_cold_1(v2);
    }
  }
}

void __44__ATXAppIntentMonitor__listenToIntentStream__block_invoke_81(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 eventBody];
    if (v5)
    {
      v6 = os_transaction_create();
      v7 = __atxlog_handle_default(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v5 bundleID];
        *buf = 138412546;
        v16 = v8;
        v17 = 2048;
        v18 = 0x4014000000000000;
        _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Donation Processing - Intent received for %@. Waiting %.02f seconds before responding.", buf, 0x16u);
      }

      v9 = MEMORY[0x277D425A0];
      v10 = WeakRetained[9];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __44__ATXAppIntentMonitor__listenToIntentStream__block_invoke_84;
      v12[3] = &unk_278597828;
      v12[4] = WeakRetained;
      v13 = v5;
      v14 = v6;
      v11 = v6;
      [v9 runAsyncOnQueue:v10 afterDelaySeconds:v12 block:5.0];
    }

    else
    {
      v11 = __atxlog_handle_default(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __44__ATXAppIntentMonitor__listenToIntentStream__block_invoke_81_cold_1();
      }
    }
  }
}

- (void)_listenToLinkActionStream
{
  objc_initWeak(&location, self);
  v3 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"ATXAppIntentMonitor.Link" targetQueue:self->_donationQueueLinkActions];
  linkActionScheduler = self->_linkActionScheduler;
  self->_linkActionScheduler = v3;

  v5 = BiomeLibrary();
  v6 = [v5 App];
  intents = [v6 Intents];
  transcript = [intents Transcript];
  atx_DSLPublisher = [transcript atx_DSLPublisher];
  v10 = [atx_DSLPublisher subscribeOn:self->_linkActionScheduler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__ATXAppIntentMonitor__listenToLinkActionStream__block_invoke_91;
  v13[3] = &unk_2785977D8;
  objc_copyWeak(&v14, &location);
  v11 = [v10 sinkWithCompletion:&__block_literal_global_90_0 receiveInput:v13];
  linkActionSink = self->_linkActionSink;
  self->_linkActionSink = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __48__ATXAppIntentMonitor__listenToLinkActionStream__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_action_prediction(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __48__ATXAppIntentMonitor__listenToLinkActionStream__block_invoke_cold_1(v2);
    }
  }
}

void __48__ATXAppIntentMonitor__listenToLinkActionStream__block_invoke_91(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = __atxlog_handle_action_prediction(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Donation Processing - Got Link action in publisher", buf, 2u);
    }

    v7 = [v3 eventBody];
    v8 = [v7 executionUUID];

    if (v8)
    {
      v10 = [v7 predictions];
      v11 = [v10 count];

      if (!v11)
      {
LABEL_19:

        goto LABEL_20;
      }

      v12 = os_transaction_create();
      v13 = MEMORY[0x277CEB7F8];
      v14 = [v7 bundleID];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = &stru_2839A6058;
      }

      v17 = [v7 action];
      v18 = [v17 identifier];
      v19 = [v13 isActionEligibleForAnySettingsSuggestionsWithBundleIdentifier:v16 actionIdentifier:v18];

      if (v19)
      {
        v21 = __atxlog_handle_settings_actions(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "Posting distributed notification about settings action recents refresh", buf, 2u);
        }

        v22 = [MEMORY[0x277CCA9A0] defaultCenter];
        [v22 postNotificationName:*MEMORY[0x277CEB268] object:0];
      }

      v23 = __atxlog_handle_action_prediction(v20);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v7 bundleID];
        *buf = 138412546;
        v32 = v24;
        v33 = 2048;
        v34 = 0x4014000000000000;
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "Donation Processing - Link action received for %@. Waiting %.02f seconds before responding.", buf, 0x16u);
      }

      v25 = MEMORY[0x277D425A0];
      v26 = v5[9];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __48__ATXAppIntentMonitor__listenToLinkActionStream__block_invoke_98;
      v28[3] = &unk_278597828;
      v28[4] = v5;
      v29 = v7;
      v30 = v12;
      v27 = v12;
      [v25 runAsyncOnQueue:v26 afterDelaySeconds:v28 block:5.0];
    }

    else
    {
      v27 = __atxlog_handle_action_prediction(v9);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __48__ATXAppIntentMonitor__listenToLinkActionStream__block_invoke_91_cold_1();
      }
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)_handleDonationImmediatelyForBundleId:(id)id sourceItemID:(id)d completedSuccessfully:(BOOL)successfully isDonatedBySiri:(BOOL)siri isAllowedDaemonDonationBundleId:(BOOL)bundleId
{
  bundleIdCopy = bundleId;
  siriCopy = siri;
  successfullyCopy = successfully;
  dCopy = d;
  v12 = dCopy;
  if (successfullyCopy && siriCopy || bundleIdCopy)
  {
    v13 = __atxlog_handle_default(dCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_INFO, "Donation Processing - Received either a completed Siri intent, or a donation from an allowed daemon donation.", v14, 2u);
    }

    if (v12)
    {
      [(ATXAppIntentMonitor *)self _handleCompletedIntentForForSourceItemID:v12 atxIntentSource:!siriCopy];
    }
  }
}

- (void)_respondToIntentStreamChangingWithIntent:(id)intent
{
  intentCopy = intent;
  bundleID = [intentCopy bundleID];
  v5 = bundleID;
  v6 = &stru_2839A6058;
  if (bundleID)
  {
    v6 = bundleID;
  }

  v7 = v6;

  donatedBySiri = [intentCopy donatedBySiri];
  v9 = [(ATXAppIntentMonitor *)self _isAllowedDaemonDonationBundleId:v7];
  v10 = v9;
  if ((donatedBySiri & 1) != 0 || v9)
  {
    itemID = [intentCopy itemID];
    -[ATXAppIntentMonitor _handleDonationImmediatelyForBundleId:sourceItemID:completedSuccessfully:isDonatedBySiri:isAllowedDaemonDonationBundleId:](self, "_handleDonationImmediatelyForBundleId:sourceItemID:completedSuccessfully:isDonatedBySiri:isAllowedDaemonDonationBundleId:", v7, itemID, [intentCopy handlingStatus] == 4, donatedBySiri, v10);
  }
}

- (void)_respondToLinkActionStreamChangingWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  bundleID = [invocationCopy bundleID];
  v5 = bundleID;
  v6 = &stru_2839A6058;
  if (bundleID)
  {
    v6 = bundleID;
  }

  v7 = v6;

  source = [invocationCopy source];
  v9 = [(ATXAppIntentMonitor *)self _isAllowedDaemonDonationBundleId:v7];
  v10 = v9;
  if (source == 3 || v9)
  {
    executionUUID = [invocationCopy executionUUID];
    uUIDString = [executionUUID UUIDString];
    [(ATXAppIntentMonitor *)self _handleDonationImmediatelyForBundleId:v7 sourceItemID:uUIDString completedSuccessfully:1 isDonatedBySiri:source == 3 isAllowedDaemonDonationBundleId:v10];
  }
}

- (void)_handleCompletedIntentForForSourceItemID:(id)d atxIntentSource:(int64_t)source
{
  v5 = [(ATXCombinedIntentStream *)self->_combinedIntentStream getIntentEventForSourceItemID:d forSource:source];
  v7 = v5;
  if (v5)
  {
    LODWORD(v6) = 1.0;
    v8 = v5;
    v5 = [(ATXAppIntentMonitor *)self updateActionPredictionPipelineForIntentEvent:v5 weight:0 appSessionStartDate:0 appSessionEndDate:v6];
    v7 = v8;
  }

  MEMORY[0x2821F96F8](v5, v7);
}

- (BOOL)_isAllowedDaemonDonationBundleId:(id)id
{
  idCopy = id;
  v4 = +[_ATXGlobals sharedInstance];
  whitelistedDonationDaemonBundleIds = [v4 whitelistedDonationDaemonBundleIds];
  v6 = [whitelistedDonationDaemonBundleIds containsObject:idCopy];

  return v6;
}

- (void)_displayDonationOnLockscreenWithAction:(id)action
{
  actionCopy = action;
  keyExistsAndHasValidFormat = 0;
  v4 = *MEMORY[0x277CEBD00];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"displayDonationsOnLockscreen", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat);
  v12 = 0;
  v6 = CFPreferencesGetAppBooleanValue(@"displayLastDonationOnCoverSheet", v4, &v12);
  if (AppBooleanValue)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = +[ATXActionNotificationServer sharedInstance];
    [v8 removeAllActionPredictionNotificationsAndTrackEvent:1 recordFeedback:0];
    v9 = __atxlog_handle_default([v8 postDemoOrDebugNotificationForATXAction:actionCopy]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Posting notification for DEVELOPER switch", v10, 2u);
    }
  }
}

- (void)removeDonationFromLockscreenForAction:(id)action
{
  actionCopy = action;
  keyExistsAndHasValidFormat = 0;
  v4 = *MEMORY[0x277CEBD00];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"displayDonationsOnLockscreen", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat);
  v8 = 0;
  if (!(AppBooleanValue | CFPreferencesGetAppBooleanValue(@"displayLastDonationOnCoverSheet", v4, &v8)))
  {
    v6 = +[ATXActionNotificationServer sharedInstance];
    [v6 removeActionPredictionNotificationsMatchingAction:actionCopy];
  }
}

- (id)fetchIntentEventsForAppSessionWithBundleId:(id)id startDate:(id)date endDate:(id)endDate
{
  idCopy = id;
  endDateCopy = endDate;
  v10 = [(ATXAppIntentMonitor *)self adjustedStartDateForOneSecondFlooringWithAppSessionStartDate:date];
  v11 = [(ATXAppIntentMonitor *)self adjustedEndDateForOneSecondFlooringWithAppSessionEndDate:endDateCopy];

  v13 = __atxlog_handle_action_prediction(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ATXAppIntentMonitor fetchIntentEventsForAppSessionWithBundleId:startDate:endDate:];
  }

  v14 = [(ATXCombinedIntentStream *)self->_combinedIntentStream getCombinedIntentEventsBetweenStartDate:v10 endDate:v11 ascending:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__ATXAppIntentMonitor_fetchIntentEventsForAppSessionWithBundleId_startDate_endDate___block_invoke;
  v18[3] = &unk_27859C198;
  v19 = idCopy;
  v15 = idCopy;
  v16 = [v14 _pas_filteredArrayWithTest:v18];

  return v16;
}

uint64_t __84__ATXAppIntentMonitor_fetchIntentEventsForAppSessionWithBundleId_startDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 action];
  v5 = [v4 actionType];

  if (v5 != 7)
  {
    v7 = *(a1 + 32);
    v8 = [v3 intentType];
    if (![_ATXActionUtils isNSUAType:v8])
    {
      if ([*(a1 + 32) isEqualToString:@"com.apple.mobilephone"])
      {
      }

      else
      {
        v9 = [*(a1 + 32) isEqualToString:@"com.apple.facetime"];

        if ((v9 & 1) == 0)
        {
LABEL_9:
          v10 = [v3 bundleId];
          v6 = [v10 isEqualToString:v7];

          goto LABEL_10;
        }
      }

      v8 = v7;
      v7 = @"com.apple.InCallService";
    }

    goto LABEL_9;
  }

  v6 = 1;
LABEL_10:

  return v6;
}

- (BOOL)shouldProcessIntentDonationsForSessionStartDate:(id)date
{
  dateCopy = date;
  v5 = BiomeLibrary();
  v6 = [v5 App];
  intent = [v6 Intent];
  atx_dateOfLastEvent = [intent atx_dateOfLastEvent];

  v9 = BiomeLibrary();
  v10 = [v9 App];
  intents = [v10 Intents];
  transcript = [intents Transcript];
  atx_dateOfLastEvent2 = [transcript atx_dateOfLastEvent];

  v14 = ATXMaxDate(atx_dateOfLastEvent, atx_dateOfLastEvent2);
  if (v14)
  {
    v15 = [(ATXAppIntentMonitor *)self adjustedStartDateForOneSecondFlooringWithAppSessionStartDate:dateCopy];
    v16 = [(ATXAppIntentMonitor *)self sessionStartedBeforeDonationForStartDate:v15 latestDonationDate:v14];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)shouldProcessNSUADonationsForSessionStartDate:(id)date
{
  dateCopy = date;
  v5 = BiomeLibrary();
  v6 = [v5 App];
  activity = [v6 Activity];
  atx_dateOfLastEvent = [activity atx_dateOfLastEvent];

  if (atx_dateOfLastEvent)
  {
    v9 = [(ATXAppIntentMonitor *)self adjustedStartDateForOneSecondFlooringWithAppSessionStartDate:dateCopy];
    v10 = [(ATXAppIntentMonitor *)self sessionStartedBeforeDonationForStartDate:v9 latestDonationDate:atx_dateOfLastEvent];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)processWeightedIntentDonations:(id)donations forBundleId:(id)id startDate:(id)date endDate:(id)endDate globals:(id)globals
{
  v39 = *MEMORY[0x277D85DE8];
  donationsCopy = donations;
  idCopy = id;
  dateCopy = date;
  endDateCopy = endDate;
  globalsCopy = globals;
  v14 = [donationsCopy count];
  v15 = __atxlog_handle_default(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ATXAppIntentMonitor processWeightedIntentDonations:forBundleId:startDate:endDate:globals:];
  }

  if (v14)
  {
    v17 = 0;
    *&v16 = 138412546;
    v30 = v16;
    do
    {
      v18 = objc_autoreleasePoolPush();
      v19 = [donationsCopy objectAtIndexedSubscript:v17];
      v20 = v19;
      if (v19)
      {
        v21 = __atxlog_handle_default(v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          intentType = [v20 intentType];
          startDate = [v20 startDate];
          *buf = v30;
          v36 = intentType;
          v37 = 2112;
          v38 = startDate;
          _os_log_debug_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEBUG, "Donation Processing - Intent Event: %@ at Date:%@", buf, 0x16u);
        }

        donationWeighingScheme = [globalsCopy donationWeighingScheme];
        [globalsCopy donationWeighingStrength];
        [_ATXActionUtils calculateWeightWith:donationWeighingScheme strength:v14 docLength:?];
        v24 = v23;
        intentType2 = [v20 intentType];
        v26 = [_ATXActionUtils isNSUAType:intentType2];

        if (v26)
        {
          [globalsCopy nsuaDonationWeight];
          v27 = v28 * v24;
          v24 = v27;
        }

        *&v27 = v24;
        [(ATXAppIntentMonitor *)self updateActionPredictionPipelineForIntentEvent:v20 weight:dateCopy appSessionStartDate:endDateCopy appSessionEndDate:v27, v30];
      }

      objc_autoreleasePoolPop(v18);
      ++v17;
    }

    while (v14 != v17);
  }
}

- (void)processIntentDonationsDuringAppSessionForBundleId:(id)id startDate:(id)date endDate:(id)endDate globals:(id)globals
{
  v66 = *MEMORY[0x277D85DE8];
  idCopy = id;
  dateCopy = date;
  endDateCopy = endDate;
  globalsCopy = globals;
  if ([(ATXAppIntentMonitor *)self shouldProcessIntentDonationsForSessionStartDate:dateCopy]|| (v11 = [(ATXAppIntentMonitor *)self shouldProcessNSUADonationsForSessionStartDate:dateCopy], (v11 & 1) != 0))
  {
    v12 = [(ATXAppIntentMonitor *)self fetchIntentEventsForAppSessionWithBundleId:idCopy startDate:dateCopy endDate:endDateCopy];
    v13 = [v12 count];
    v14 = __atxlog_handle_default(v13);
    v15 = v14;
    if (!v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "Donation Processing - Didn't find any Intent events for query.", buf, 2u);
      }

      goto LABEL_32;
    }

    selfCopy = self;
    v41 = dateCopy;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ATXAppIntentMonitor processIntentDonationsDuringAppSessionForBundleId:v12 startDate:? endDate:? globals:?];
    }

    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v39 = v12;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v59;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v59 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v58 + 1) + 8 * i);
          action = [v22 action];

          if (action)
          {
            action2 = [v22 action];
            actionType = [action2 actionType];
          }

          else
          {
            intentType = [v22 intentType];
            v27 = [_ATXActionUtils isNSUAType:intentType];

            actionType = v27;
          }

          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:actionType];
          [v15 addObject:v28];

          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:actionType];
          [v16 addObject:v29];
        }

        v19 = [v17 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v19);
    }

    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v54 = 0u;
    v30 = v16;
    v31 = [v30 countByEnumeratingWithState:&v54 objects:v62 count:16];
    obj = v30;
    if (v31)
    {
      v32 = v31;
      v30 = 0;
      v33 = *v55;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v55 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v54 + 1) + 8 * j);
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __99__ATXAppIntentMonitor_processIntentDonationsDuringAppSessionForBundleId_startDate_endDate_globals___block_invoke;
          v51[3] = &unk_27859C1C0;
          v52 = v15;
          v53 = v35;
          v36 = [v17 _pas_filteredArrayWithIndexedTest:v51];
          if ([v35 unsignedIntValue] == 7)
          {
            v37 = v36;

            v30 = v37;
          }

          else
          {
            [(ATXAppIntentMonitor *)selfCopy processWeightedIntentDonations:v36 forBundleId:idCopy startDate:v41 endDate:endDateCopy globals:globalsCopy];
          }
        }

        v32 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v32);

      if (!v30)
      {
        goto LABEL_29;
      }

      v38 = MEMORY[0x277CEB8D8];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __99__ATXAppIntentMonitor_processIntentDonationsDuringAppSessionForBundleId_startDate_endDate_globals___block_invoke_2;
      v46[3] = &unk_27859C1E8;
      v46[4] = selfCopy;
      v47 = idCopy;
      v48 = v41;
      v49 = endDateCopy;
      v50 = globalsCopy;
      [v38 sanitizeTitleForToolKitIntents:v30 withCompletion:v46];
    }

LABEL_29:
    dateCopy = v41;
    v12 = v39;
LABEL_32:

    goto LABEL_33;
  }

  v12 = __atxlog_handle_default(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v65 = idCopy;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "Donation Processing - == Don't need to process intent donations for %@ since no intents were received recently. ==", buf, 0xCu);
  }

LABEL_33:
}

uint64_t __99__ATXAppIntentMonitor_processIntentDonationsDuringAppSessionForBundleId_startDate_endDate_globals___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:?];
  v3 = [v2 isEqual:*(a1 + 40)];

  return v3;
}

- (void)updateActionPredictionPipelineForAppSession:(id)session startDate:(id)date endDate:(id)endDate
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dateCopy = date;
  endDateCopy = endDate;
  v11 = os_transaction_create();
  v12 = +[_ATXGlobals sharedInstance];
  v13 = [(ATXAppIntentMonitor *)self _isAllowedDaemonDonationBundleId:sessionCopy];
  v14 = v13;
  v15 = __atxlog_handle_default(v13);
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = sessionCopy;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Donation Processing - Skipping back-query for %@ app session because it was an allowed app.", &v17, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = sessionCopy;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "Donation Processing - %@ is not an allowed bundle. Continuing with processing steps...", &v17, 0xCu);
    }

    [(ATXAppIntentMonitor *)self processIntentDonationsDuringAppSessionForBundleId:sessionCopy startDate:dateCopy endDate:endDateCopy globals:v12];
  }
}

- (BOOL)shouldAcceptMessageDonation:(id)donation
{
  donationCopy = donation;
  intentType = [donationCopy intentType];
  v6 = [intentType isEqualToString:@"INSendMessageIntent"];

  if (v6)
  {
    action = [donationCopy action];

    if (!action)
    {
      goto LABEL_16;
    }

    action2 = [donationCopy action];
    intent = [action2 intent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [_ATXActionUtils recipientFromMessageIntent:intent];
      if (v10)
      {
        v11 = v10;
        v12 = [(_ATXDataStore *)self->_dataStore lastMessageToRecipient:v10];
        startDate = [donationCopy startDate];
        v14 = [_ATXActionUtils shouldPredictRecipient:v11 withDate:startDate andRecipientDate:v12];

        if (v14)
        {
          dataStore = self->_dataStore;
          startDate2 = [donationCopy startDate];
          [(_ATXDataStore *)dataStore updateOrInsertMessageRecipient:v11 dateMessaged:startDate2];
        }

        else
        {
          v19 = __atxlog_handle_default(v15);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [ATXAppIntentMonitor shouldAcceptMessageDonation:];
          }
        }

        if (v14)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v18 = __atxlog_handle_default(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [ATXAppIntentMonitor shouldAcceptMessageDonation:];
        }
      }

LABEL_16:
      v20 = 0;
      goto LABEL_17;
    }
  }

LABEL_15:
  v20 = 1;
LABEL_17:

  return v20;
}

- (void)updateActionPredictionPipelineForIntentEvent:(id)event weight:(float)weight appSessionStartDate:(id)date appSessionEndDate:(id)endDate
{
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  predictionContextForCurrentContext = [(ATXPredictionContextBuilderProtocol *)self->_predictionContextBuilder predictionContextForCurrentContext];
  if (predictionContextForCurrentContext)
  {
    *&v14 = weight;
    [(ATXAppIntentMonitor *)self updateActionPredictionPipelineForIntentEvent:eventCopy weight:dateCopy appSessionStartDate:endDateCopy appSessionEndDate:predictionContextForCurrentContext context:v14];
  }

  else
  {
    v15 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXAppIntentMonitor updateActionPredictionPipelineForIntentEvent:weight:appSessionStartDate:appSessionEndDate:];
    }
  }
}

- (void)updateActionPredictionPipelineForIntentEvent:(id)event weight:(float)weight appSessionStartDate:(id)date appSessionEndDate:(id)endDate context:(id)context
{
  v72 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  contextCopy = context;
  action = [eventCopy action];
  if ([(ATXSafariIntentEventQualityFilter *)self->_safariIntentQualityFilter shouldAcceptSafariDonation:eventCopy])
  {
    if (action)
    {
      [(ATXAppIntentMonitor *)self _displayDonationOnLockscreenWithAction:action];
      [(ATXAppIntentMonitor *)self removeDonationFromLockscreenForAction:action];
      if (![(ATXAppIntentMonitor *)self shouldAcceptMessageDonation:eventCopy]|| ![_ATXActionUtils shouldAcceptAudioOrVideoCallIntent:action])
      {
        goto LABEL_27;
      }
    }

    else if (![(ATXAppIntentMonitor *)self shouldAcceptMessageDonation:eventCopy])
    {
      goto LABEL_27;
    }

    actionUUID = [action actionUUID];
    if (actionUUID && (v18 = actionUUID, v19 = self->_dataStore, [action actionUUID], v20 = objc_claimAutoreleasedReturnValue(), LODWORD(v19) = -[_ATXDataStore alogContainsActionUUID:](v19, "alogContainsActionUUID:", v20), v20, v18, v19))
    {
      intent = [action intent];
      if (intent)
      {
        intent2 = [action intent];
        intentDescription = [intent2 intentDescription];
      }

      else
      {
        userActivityString = [action userActivityString];
        intent2 = userActivityString;
        v51 = &stru_2839A6058;
        if (userActivityString)
        {
          v51 = userActivityString;
        }

        intentDescription = v51;
      }

      v49 = intentDescription;

      v53 = __atxlog_handle_default(v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        bundleId = [action bundleId];
        actionUUID2 = [action actionUUID];
        v56 = [actionUUID2 description];
        *buf = 138412803;
        v67 = bundleId;
        v68 = 2117;
        v69 = v49;
        v70 = 2112;
        v71 = v56;
        _os_log_impl(&dword_2263AA000, v53, OS_LOG_TYPE_DEFAULT, "Donation Processing - Tried to add duplicate entry to alog table for BundleId: %@ of Action Type: %{sensitive}@ with UUID: %@", buf, 0x20u);
      }
    }

    else
    {
      dataStore = self->_dataStore;
      intentType = [eventCopy intentType];
      if ([(_ATXDataStore *)dataStore containsActionType:intentType])
      {
      }

      else
      {
        v27 = self->_dataStore;
        bundleId2 = [eventCopy bundleId];
        v29 = [(_ATXDataStore *)v27 totalNumberOfActionTypesForBundleId:bundleId2];
        intValue = [v29 intValue];
        v30 = +[_ATXGlobals sharedInstance];
        maxNumberOfActionTypesPerApp = [v30 maxNumberOfActionTypesPerApp];

        if (intValue >= maxNumberOfActionTypesPerApp)
        {
          v49 = __atxlog_handle_default(v31);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            [ATXAppIntentMonitor updateActionPredictionPipelineForIntentEvent:eventCopy weight:? appSessionStartDate:? appSessionEndDate:? context:?];
          }

          goto LABEL_26;
        }
      }

      *&v26 = weight;
      [(ATXAppIntentMonitor *)self _updateActionPredictionHistogramsForIntentEvent:eventCopy weight:contextCopy context:v26];
      locationMotionContext = [contextCopy locationMotionContext];
      previousLOI = [locationMotionContext previousLOI];

      locationMotionContext2 = [contextCopy locationMotionContext];
      currentLOI = [locationMotionContext2 currentLOI];

      v63 = previousLOI;
      uuid = [previousLOI uuid];
      v61 = currentLOI;
      uuid2 = [currentLOI uuid];
      locationMotionContext3 = [contextCopy locationMotionContext];
      motionType = [locationMotionContext3 motionType];
      locationMotionContext4 = [contextCopy locationMotionContext];
      geohash = [locationMotionContext4 geohash];
      locationMotionContext5 = [contextCopy locationMotionContext];
      coarseGeohash = [locationMotionContext5 coarseGeohash];
      *&v41 = weight;
      [(ATXAppIntentMonitor *)self updateActionPredictionSlotResolutionForIntentEvent:eventCopy weight:uuid prevLocationUUID:uuid2 locationUUID:motionType currentMotionType:dateCopy appSessionStartDate:endDateCopy appSessionEndDate:v41 geohash:geohash coarseGeohash:coarseGeohash];

      [(ATXAppIntentMonitor *)self _logIntentPredictionsForIntentEvent:eventCopy context:contextCopy];
      v42 = +[_ATXAppPredictor sharedInstance];
      abGroupIdentifiers = [v42 abGroupIdentifiers];
      v44 = [abGroupIdentifiers objectAtIndexedSubscript:16];

      actionType = [action actionType];
      donatedActionsTracker = self->_donatedActionsTracker;
      if (actionType == 1)
      {
        v65 = @"nsua";
        v47 = &v65;
      }

      else
      {
        v64 = @"intent";
        v47 = &v64;
      }

      v47[1] = v44;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      [(PETScalarEventTracker *)donatedActionsTracker trackEventWithPropertyValues:v48];

      v49 = v63;
    }

LABEL_26:
  }

LABEL_27:
}

- (void)_updateActionPredictionHistogramsForIntentEvent:(id)event weight:(float)weight context:(id)context
{
  v97 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  contextCopy = context;
  dateInterval = [eventCopy dateInterval];
  startDate = [dateInterval startDate];

  v12 = MEMORY[0x277CEB2C8];
  bundleId = [eventCopy bundleId];
  intentType = [eventCopy intentType];
  v15 = [v12 getActionKeyForBundleId:bundleId actionType:intentType];

  if ([v15 isEqualToString:*MEMORY[0x277CEB1D8]])
  {
    action = [eventCopy action];
    userActivityString = [action userActivityString];

    if (userActivityString)
    {
      v18 = [_ATXActionUtils markTodayInTitleAndUserActivityString:eventCopy withActionKey:v15];

      eventCopy = v18;
    }
  }

  userContext = [contextCopy userContext];
  lastAppActionLaunch = [userContext lastAppActionLaunch];

  if (lastAppActionLaunch)
  {
    appActionLaunchSequenceManager = self->_appActionLaunchSequenceManager;
    userContext2 = [contextCopy userContext];
    lastAppActionLaunch2 = [userContext2 lastAppActionLaunch];
    v24 = [(_ATXAppLaunchSequenceManager *)appActionLaunchSequenceManager launchSequenceForAppAction:lastAppActionLaunch2];
    [v24 addSubsequentLaunch:v15];
  }

  userContext3 = [contextCopy userContext];
  secondMostRecentAppLaunch = [userContext3 secondMostRecentAppLaunch];

  if (secondMostRecentAppLaunch)
  {
    v27 = MEMORY[0x277CCACA8];
    userContext4 = [contextCopy userContext];
    secondMostRecentAppLaunch2 = [userContext4 secondMostRecentAppLaunch];
    v30 = [v27 stringWithFormat:@"%@:#AppLaunched", secondMostRecentAppLaunch2];

    v31 = [(_ATXAppLaunchSequenceManager *)self->_appActionLaunchSequenceManager launchSequenceForAppAction:v30];
    [v31 addSubsequentLaunch:v15];
  }

  [(_ATXAppInfoManager *)self->_appInfoManager addLaunchForAppAction:v15 date:startDate];
  v32 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:14];
  *&v33 = weight;
  [v32 addLaunchWithBundleId:v15 date:startDate timeZone:0 weight:v33];

  v34 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:16];
  bundleId2 = [eventCopy bundleId];
  *&v36 = weight;
  [v34 addLaunchWithBundleId:bundleId2 date:startDate timeZone:0 weight:v36];

  v37 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:17];
  *&v38 = weight;
  [v37 addLaunchWithBundleId:v15 date:startDate timeZone:0 weight:v38];

  v39 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:19];
  bundleId3 = [eventCopy bundleId];
  *&v41 = weight;
  [v39 addLaunchWithBundleId:bundleId3 date:startDate timeZone:0 weight:v41];

  v42 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:20];
  *&v43 = weight;
  [v42 addLaunchWithBundleId:v15 date:startDate timeZone:0 weight:v43];

  v44 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:22];
  bundleId4 = [eventCopy bundleId];
  *&v46 = weight;
  [v44 addLaunchWithBundleId:bundleId4 date:startDate timeZone:0 weight:v46];

  userContext5 = [contextCopy userContext];
  lastUnlockDate = [userContext5 lastUnlockDate];

  if (lastUnlockDate)
  {
    [startDate timeIntervalSinceDate:lastUnlockDate];
    if (v49 >= 0.0)
    {
      if (v49 >= 3600.0)
      {
        v50 = 3599.0;
      }

      else
      {
        v50 = v49;
      }

      v51 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:23];
      *&v52 = weight;
      [v51 addLaunchWithBundleId:v15 elapsedTime:v50 weight:v52];

      v53 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:25];
      bundleId5 = [eventCopy bundleId];
      *&v55 = weight;
      [v53 addLaunchWithBundleId:bundleId5 elapsedTime:v50 weight:v55];
    }
  }

  deviceStateContext = [contextCopy deviceStateContext];
  inAirplaneMode = [deviceStateContext inAirplaneMode];

  if (inAirplaneMode)
  {
    v58 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:26];
    *&v59 = weight;
    [v58 addLaunchWithBundleId:v15 date:startDate timeZone:0 weight:v59];

    v60 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager histogramForLaunchType:28];
    bundleId6 = [eventCopy bundleId];
    *&v62 = weight;
    [v60 addLaunchWithBundleId:bundleId6 date:startDate timeZone:0 weight:v62];
  }

  v90 = lastUnlockDate;
  deviceStateContext2 = [contextCopy deviceStateContext];
  wifiSSID = [deviceStateContext2 wifiSSID];

  if ([wifiSSID length])
  {
    v65 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:29];
    *&v66 = weight;
    [v65 addLaunchWithBundleId:v15 date:startDate category:wifiSSID weight:v66];

    v67 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:31];
    bundleId7 = [eventCopy bundleId];
    *&v69 = weight;
    [v67 addLaunchWithBundleId:bundleId7 date:startDate category:wifiSSID weight:v69];
  }

  v70 = MEMORY[0x277D41C30];
  locationMotionContext = [contextCopy locationMotionContext];
  v72 = [v70 getMotionStringFromMotionType:{objc_msgSend(locationMotionContext, "motionType")}];

  v73 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:38];
  *&v74 = weight;
  [v73 addLaunchWithBundleId:v15 date:startDate category:v72 weight:v74];

  v75 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:39];
  bundleId8 = [eventCopy bundleId];
  *&v77 = weight;
  [v75 addLaunchWithBundleId:bundleId8 date:startDate category:v72 weight:v77];

  v78 = [_ATXActionUtils partOfWeekStringForDate:startDate];
  v79 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:40];
  *&v80 = weight;
  [v79 addLaunchWithBundleId:v15 date:startDate category:v78 weight:v80];

  ambientLightContext = [contextCopy ambientLightContext];
  ambientLightType = [ambientLightContext ambientLightType];

  if (ambientLightType != 7)
  {
    v84 = [(_ATXAppLaunchHistogramManager *)self->_appLaunchHistogramManager categoricalHistogramForLaunchType:41];
    v85 = [MEMORY[0x277CCABB0] numberWithInt:ambientLightType];
    stringValue = [v85 stringValue];
    *&v87 = weight;
    [v84 addLaunchWithBundleId:v15 date:startDate category:stringValue weight:v87];
  }

  v88 = __atxlog_handle_default(v83);
  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
  {
    startDate2 = [eventCopy startDate];
    *buf = 138412802;
    v92 = v15;
    v93 = 2112;
    v94 = startDate2;
    v95 = 2048;
    weightCopy = weight;
    _os_log_debug_impl(&dword_2263AA000, v88, OS_LOG_TYPE_DEBUG, "Donation Processing - Finished Updating Histograms for Action Event: %@ with Date: %@ with Weight: %f", buf, 0x20u);
  }
}

- (void)updateActionPredictionSlotResolutionForIntentEvent:(id)event weight:(float)weight prevLocationUUID:(id)d locationUUID:(id)iD currentMotionType:(int64_t)type appSessionStartDate:(id)date appSessionEndDate:(id)endDate geohash:(int64_t)self0 coarseGeohash:(int64_t)self1
{
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  endDateCopy = endDate;
  action = [eventCopy action];
  if (action)
  {
    v24 = [_ATXActionUtils slotSetsForAction:action];
    dataStore = self->_dataStore;
    v36 = v24;
    intentType = [eventCopy intentType];
    bundleId = [eventCopy bundleId];
    startDate = [eventCopy startDate];
    actionUUID = [action actionUUID];
    v29 = iDCopy;
    v30 = actionUUID;
    v37 = dateCopy;
    v34 = dateCopy;
    v31 = v29;
    [(_ATXDataStore *)dataStore writeActionType:intentType bundleId:bundleId date:startDate action:action slotSets:v36 timeZone:0 prevLocationUUID:weight locationUUID:dCopy weight:v29 actionUUID:actionUUID motionType:type appSessionStartDate:v34 appSessionEndDate:endDateCopy geohash:geohash coarseGeohash:coarseGeohash];

    v33 = __atxlog_handle_default(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = action;
      _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, "Donation Processing - Finished Updating Slot Resolution Database for Action: %@", buf, 0xCu);
    }

    iDCopy = v31;
    dateCopy = v37;
  }
}

- (void)_logIntentPredictionsForIntentEvent:(id)event context:(id)context
{
  v63 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  contextCopy = context;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  v10 = [v9 actionPredictionsForConsumerSubType:17 limit:0x7FFFFFFFLL];
  action = [eventCopy action];
  v12 = action;
  if (v10)
  {
    v13 = action == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    mEMORY[0x277CEB7E0] = __atxlog_handle_default(action);
    if (os_log_type_enabled(mEMORY[0x277CEB7E0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, mEMORY[0x277CEB7E0], OS_LOG_TYPE_INFO, "Donation Processing - No response or performedAction Found", buf, 2u);
    }
  }

  else
  {
    selfCopy = self;
    v54 = v9;
    v55 = v8;
    mEMORY[0x277CEB7E0] = [MEMORY[0x277CEB7E0] sharedInstance];
    [mEMORY[0x277CEB7E0] recentActions];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v15 = v59 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v57;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v57 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [_ATXActionUtils isContainmentBetweenAction:v12 other:*(*(&v56 + 1) + 8 * i)];
          if (v20)
          {
            v31 = __atxlog_handle_default(v20);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_INFO, "Donation Processing - Donated action corresponds to a recently engaged action. Skipping Metric Logging and Shadow Logging.", buf, 2u);
            }

            v8 = v55;
            goto LABEL_44;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v56 objects:v62 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v51 = contextCopy;
    v52 = eventCopy;

    v21 = 0;
    while (1)
    {
      v22 = +[_ATXGlobals sharedInstance];
      maximumSpotlightPredictions = [v22 maximumSpotlightPredictions];

      actions = [v10 actions];
      v25 = [actions count];

      v26 = maximumSpotlightPredictions;
      if (v25 < maximumSpotlightPredictions)
      {
        v26 = v25;
      }

      if (v21 >= v26)
      {
        break;
      }

      actions2 = [v10 actions];
      v28 = [actions2 objectAtIndexedSubscript:v21];
      v29 = [_ATXActionUtils isContainmentBetweenAction:v12 other:v28];

      ++v21;
      if (v29)
      {
        v30 = v21;
        goto LABEL_26;
      }
    }

    v30 = 0.0;
LABEL_26:
    _bundleIdForDisplay = [v12 _bundleIdForDisplay];
    actionKey = [v12 actionKey];
    if (actionKey)
    {
      actionKey2 = [v12 actionKey];
      v35 = [_ATXActionUtils getActionTypeFromActionKey:actionKey2];
    }

    else
    {
      v35 = 0;
    }

    v36 = +[_ATXAppPredictor sharedInstance];
    abGroupIdentifiers = [v36 abGroupIdentifiers];
    v38 = [abGroupIdentifiers objectAtIndexedSubscript:16];

    if (_bundleIdForDisplay && v35 && v38)
    {
      donatedActionInCacheTracker = selfCopy->_donatedActionInCacheTracker;
      v61[0] = _bundleIdForDisplay;
      v61[1] = v35;
      v61[2] = v38;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
      [(PETDistributionEventTracker *)donatedActionInCacheTracker trackEventWithPropertyValues:v40 value:v30];
    }

    v41 = +[_ATXGlobals sharedInstance];
    [v41 actionPredictionShadowLogSamplingRate];
    v43 = v42;

    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      v44 = +[_ATXGlobals sharedInstance];
      [v44 actionPredictionInternalBuildShadowLogSamplingRate];
      v43 = v45;
    }

    contextCopy = v51;
    eventCopy = v52;
    v8 = v55;
    v46 = objc_opt_new();
    [v10 updateConsumerSubType:17 engagedAction:v12 shownActions:MEMORY[0x277CBEBF8] feedbackStage:7 explicitlyDismissedActions:0 searchedActionType:4 engagedAppString:0 uiFeedbackDate:v46];

    v47 = [_ATXAggregateLogger yesWithProbability:v43];
    LODWORD(v46) = v47;
    v48 = __atxlog_handle_default(v47);
    v49 = v48;
    if (v46)
    {
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        [ATXAppIntentMonitor _logIntentPredictionsForIntentEvent:context:];
      }

      [ATXActionSessionLog performSessionLoggingWithActionResponse:v10 engagementType:9 context:v51 isShadowLog:1 forTestingMode:0];
    }

    else
    {
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v49, OS_LOG_TYPE_INFO, "Donation Processing - Skipping Action Shadow Session Log", buf, 2u);
      }
    }

    +[ATXAppPredictionDataHarvesterConstants actionPredictionSessionDataHarvestSamplingRate];
    v9 = v54;
    if ([_ATXAggregateLogger yesWithProbability:v50])
    {
      [ATXActionSessionLog harvestActionPredictionDataForResponse:v10];
    }

LABEL_44:
  }

  objc_autoreleasePoolPop(v8);
}

- (void)start
{
  userContext = [MEMORY[0x277CFE318] userContext];
  context = self->_context;
  self->_context = userContext;

  [(ATXAppIntentMonitor *)self _listenToIntentStream];
  [(ATXAppIntentMonitor *)self _listenToLinkActionStream];

  [(ATXAppIntentMonitor *)self _listenToActivityStream];
}

- (void)stop
{
  [(BPSSink *)self->_intentSink cancel];
  intentSink = self->_intentSink;
  self->_intentSink = 0;

  intentScheduler = self->_intentScheduler;
  self->_intentScheduler = 0;

  [(BPSSink *)self->_linkActionSink cancel];
  linkActionSink = self->_linkActionSink;
  self->_linkActionSink = 0;

  linkActionScheduler = self->_linkActionScheduler;
  self->_linkActionScheduler = 0;

  [(BPSSink *)self->_nsuaSink cancel];
  nsuaSink = self->_nsuaSink;
  self->_nsuaSink = 0;

  nsuaScheduler = self->_nsuaScheduler;
  self->_nsuaScheduler = 0;

  context = self->_context;
  self->_context = 0;
}

- (id)_appActionLaunchSequenceManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__47;
  v10 = __Block_byref_object_dispose__47;
  v11 = 0;
  appIntentHistoryQueue = self->_appIntentHistoryQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ATXAppIntentMonitor__appActionLaunchSequenceManager__block_invoke;
  v5[3] = &unk_2785980E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(appIntentHistoryQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__ATXAppIntentMonitor__listenToActivityStream__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Could not subscribe to activity stream: %@", v4, v5, v6, v7);
}

void __44__ATXAppIntentMonitor__listenToIntentStream__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Could not subscribe to intent stream: %@", v4, v5, v6, v7);
}

void __48__ATXAppIntentMonitor__listenToLinkActionStream__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Could not subscribe to link action transcript stream: %@", v4, v5, v6, v7);
}

- (void)fetchIntentEventsForAppSessionWithBundleId:startDate:endDate:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEBUG, "Donation Processing - Intent Query Start Date: %@, End date: %@", v2, 0x16u);
}

- (void)processIntentDonationsDuringAppSessionForBundleId:(void *)a1 startDate:endDate:globals:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "Donation Processing - Processing %lu Intent Events", v3, v4, v5, v6);
}

- (void)shouldAcceptMessageDonation:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "Donation Processing - Filtering INSendMessageIntent because you messaged the recipient on %@", v1, 0xCu);
}

- (void)updateActionPredictionPipelineForIntentEvent:(void *)a1 weight:appSessionStartDate:appSessionEndDate:context:.cold.1(void *a1)
{
  v1 = [a1 bundleId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "Donation Processing - Skipping processing this action because the upper limit for the number of actionTypes stored for %@ has been reached", v4, v5, v6, v7);
}

@end