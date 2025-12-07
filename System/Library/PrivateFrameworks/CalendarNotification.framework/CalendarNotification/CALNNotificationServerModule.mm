@interface CALNNotificationServerModule
+ (id)_createNotificationStorageAtPath:(id)path protected:(BOOL)protected;
+ (id)_notificationStoragePathWithName:(id)name;
+ (id)_protectedCalendarNotificationStorage;
+ (id)_protectedTriggeredEventNotificationDataStorage;
+ (id)_timeToLeaveRefreshStorage;
+ (id)_timeToLeaveRefreshStoragePathWithName:(id)name;
+ (id)_triggeredEventNotificationDataStoragePathWithName:(id)name;
+ (id)_unprotectedCalendarNotificationStorage;
+ (id)_unprotectedTriggeredEventNotificationDataStorage;
+ (void)_migrateNotificationFiles;
+ (void)_migrateNotificationFilesFromDirectory:(id)directory toDirectory:(id)toDirectory;
+ (void)_setProtectedClassForStorageAtPath:(id)path;
- (CALNNotificationServerModule)init;
- (id)_createCalendarNotificationServerWithUserNotificationCenterFactory:(id)factory storage:(id)storage eventStoreProvider:(id)provider alarmEngineMonitor:(id)monitor travelEngine:(id)engine timeToLeaveRefreshMonitor:(id)refreshMonitor timeToLeaveRefreshStorage:(id)refreshStorage;
- (id)_createNotificationServerWithUserNotificationCenter:(id)center storage:(id)storage eventStoreProvider:(id)provider alarmEngineMonitor:(id)monitor travelEngine:(id)engine timeToLeaveRefreshMonitor:(id)refreshMonitor timeToLeaveRefreshStorage:(id)refreshStorage;
- (id)_createNotificationSourcesWithNotificationManager:(id)manager eventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider alarmEngineMonitor:(id)monitor travelEngine:(id)engine timeToLeaveRefreshMonitor:(id)refreshMonitor timeToLeaveRefreshStorage:(id)storage;
- (void)_registerSettingsCaptureHandlers;
- (void)_reloadNotificationRecords:(id)records forNotificationServer:(id)server;
- (void)_reloadNotificationsAfterFirstUnlock;
- (void)_reloadNotificationsFromUnprotectedStorage:(id)storage intoProtectedStorage:(id)protectedStorage withStorageWrapper:(id)wrapper forNotificationServer:(id)server;
- (void)_reloadTriggeredEventNotificationData;
- (void)_updateLocaleReloadIfDifferent:(BOOL)different;
- (void)_updateSourceClientIdentifiersIfNeeded;
- (void)activate;
- (void)deactivate;
- (void)didRegisterForAlarms;
- (void)protectedDataDidBecomeAvailable;
- (void)receivedAlarmNamed:(id)named;
- (void)receivedNotificationNamed:(id)named;
- (void)refreshEventStoreInResponseToDatabaseChangeNotification:(id)notification;
- (void)updateIconsToNewVersionIfNeeded;
@end

@implementation CALNNotificationServerModule

- (CALNNotificationServerModule)init
{
  v51[5] = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = CALNNotificationServerModule;
  v2 = [(CALNNotificationServerModule *)&v50 init];
  if (v2)
  {
    v3 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Creating notification server module", &buf, 2u);
    }

    +[CALNNotificationServerModule _migrateNotificationFiles];
    hasBeenUnlockedSinceBoot = [MEMORY[0x277CF77B8] hasBeenUnlockedSinceBoot];
    v4 = [CALNNotificationStorageWrapper alloc];
    v5 = objc_opt_class();
    if (hasBeenUnlockedSinceBoot)
    {
      [v5 _protectedCalendarNotificationStorage];
    }

    else
    {
      [v5 _unprotectedCalendarNotificationStorage];
    }
    v6 = ;
    v7 = [(CALNNotificationStorageWrapper *)v4 initWithWrappedStorage:v6];
    calendarStorageWrapper = v2->_calendarStorageWrapper;
    v2->_calendarStorageWrapper = v7;

    objc_initWeak(&buf, v2);
    v9 = objc_alloc(MEMORY[0x277CC5A20]);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __36__CALNNotificationServerModule_init__block_invoke;
    v47[3] = &unk_278D6F978;
    objc_copyWeak(&v48, &buf);
    v10 = [v9 initWithCreationBlock:v47];
    eventStoreProvider = v2->_eventStoreProvider;
    v2->_eventStoreProvider = v10;

    v12 = [[CALNInboxNotificationMonitor alloc] initWithEventStoreProvider:v2->_eventStoreProvider];
    inboxNotificationMonitor = v2->_inboxNotificationMonitor;
    v2->_inboxNotificationMonitor = v12;

    v14 = objc_alloc_init(_EKAlarmEngine);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [[CALNEKAlarmEngineMonitor alloc] initWithAlarmEngine:v14 notificationCenter:defaultCenter];
    v44 = v14;
    v45 = defaultCenter;
    mEMORY[0x277CC5A18] = [MEMORY[0x277CC5A18] shared];
    LODWORD(defaultCenter) = [mEMORY[0x277CC5A18] syntheticTravelAdvisoriesEnabled];

    v18 = off_278D6EAC8;
    if (!defaultCenter)
    {
      v18 = off_278D6E8F0;
    }

    sharedInstance = [(__objc2_class *)*v18 sharedInstance];
    v20 = [[EKTravelEngine alloc] initWithRouteHypothesizerProvider:sharedInstance];
    v21 = [[CALNEKTravelEngine alloc] initWithTravelEngine:v20];
    _timeToLeaveRefreshStorage = [objc_opt_class() _timeToLeaveRefreshStorage];
    v42 = sharedInstance;
    v43 = v20;
    v23 = [[CALNDefaultTimeToLeaveRefreshMonitor alloc] initWithStorage:_timeToLeaveRefreshStorage];
    v24 = +[CALNUNUserNotificationCenterFactory sharedInstance];
    v25 = +[CALNUNIconProvider sharedInstance];
    iconProvider = v2->_iconProvider;
    v2->_iconProvider = v25;

    v27 = [(CALNNotificationServerModule *)v2 _createCalendarNotificationServerWithUserNotificationCenterFactory:v24 storage:v2->_calendarStorageWrapper eventStoreProvider:v2->_eventStoreProvider alarmEngineMonitor:v16 travelEngine:v21 timeToLeaveRefreshMonitor:v23 timeToLeaveRefreshStorage:_timeToLeaveRefreshStorage];
    v28 = v27;
    notificationSources = [v28 notificationSources];
    objc_storeStrong(&v2->_calendarNotificationServer, v27);
    v30 = [CALNNotificationSourceRefresher alloc];
    inboxNotificationMonitor = [(CALNNotificationServerModule *)v2 inboxNotificationMonitor];
    v32 = [(CALNNotificationSourceRefresher *)v30 initWithSources:notificationSources notificationMonitor:inboxNotificationMonitor notificationManager:v28];
    notificationSourceRefresher = v2->_notificationSourceRefresher;
    v2->_notificationSourceRefresher = v32;

    v34 = [CALNCalendarAppBadgeUpdater alloc];
    inboxNotificationMonitor2 = [(CALNNotificationServerModule *)v2 inboxNotificationMonitor];
    v36 = [(CALNCalendarAppBadgeUpdater *)v34 initWithInboxNotificationMonitor:inboxNotificationMonitor2];
    calendarAppBadgeUpdater = v2->_calendarAppBadgeUpdater;
    v2->_calendarAppBadgeUpdater = v36;

    v38 = v2->_inboxNotificationMonitor;
    v51[0] = v2->_calendarNotificationServer;
    v51[1] = v38;
    v51[2] = v16;
    v51[3] = v21;
    v51[4] = v23;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:5];
    modules = v2->_modules;
    v2->_modules = v39;

    if (hasBeenUnlockedSinceBoot)
    {
      [(CALNNotificationServerModule *)v2 _reloadTriggeredEventNotificationData];
      [(CALNTriggeredEventNotificationSource *)v2->_triggeredEventNotificationSource updateSnoozeOptionsForPostedNotifications];
    }

    [(CALNNotificationServerModule *)v2 _updateLocaleReloadIfDifferent:hasBeenUnlockedSinceBoot];
    [(CALNNotificationServerModule *)v2 _registerSettingsCaptureHandlers];

    objc_destroyWeak(&v48);
    objc_destroyWeak(&buf);
  }

  return v2;
}

id __36__CALNNotificationServerModule_init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:256 path:0 changeTrackingClientId:0 enablePropertyModificationLogging:1 allowDelegateSources:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeWeak(WeakRetained + 2, v2);
  }

  return v2;
}

- (void)updateIconsToNewVersionIfNeeded
{
  v3 = [CALNNotificationIconUpdater alloc];
  _protectedCalendarNotificationStorage = [objc_opt_class() _protectedCalendarNotificationStorage];
  iconProvider = [(CALNNotificationServerModule *)self iconProvider];
  calendarNotificationServer = [(CALNNotificationServerModule *)self calendarNotificationServer];
  v7 = [(CALNNotificationIconUpdater *)v3 initWithProtectedNotificationStorage:_protectedCalendarNotificationStorage iconIdentifierProvider:iconProvider notificationManager:calendarNotificationServer];

  [(CALNNotificationIconUpdater *)v7 updateNotificationIconsIfNeeded];
}

- (id)_createCalendarNotificationServerWithUserNotificationCenterFactory:(id)factory storage:(id)storage eventStoreProvider:(id)provider alarmEngineMonitor:(id)monitor travelEngine:(id)engine timeToLeaveRefreshMonitor:(id)refreshMonitor timeToLeaveRefreshStorage:(id)refreshStorage
{
  refreshStorageCopy = refreshStorage;
  refreshMonitorCopy = refreshMonitor;
  engineCopy = engine;
  monitorCopy = monitor;
  providerCopy = provider;
  storageCopy = storage;
  factoryCopy = factory;
  v23 = [CALNUNUserNotificationCenter alloc];
  v24 = [(CALNUNUserNotificationCenter *)v23 initWithBundleIdentifier:*MEMORY[0x277CF78A0] userNotificationCenterFactory:factoryCopy storage:storageCopy iconProvider:self->_iconProvider];

  v25 = [(CALNNotificationServerModule *)self _createNotificationServerWithUserNotificationCenter:v24 storage:storageCopy eventStoreProvider:providerCopy alarmEngineMonitor:monitorCopy travelEngine:engineCopy timeToLeaveRefreshMonitor:refreshMonitorCopy timeToLeaveRefreshStorage:refreshStorageCopy];

  return v25;
}

- (id)_createNotificationServerWithUserNotificationCenter:(id)center storage:(id)storage eventStoreProvider:(id)provider alarmEngineMonitor:(id)monitor travelEngine:(id)engine timeToLeaveRefreshMonitor:(id)refreshMonitor timeToLeaveRefreshStorage:(id)refreshStorage
{
  refreshStorageCopy = refreshStorage;
  refreshMonitorCopy = refreshMonitor;
  engineCopy = engine;
  monitorCopy = monitor;
  providerCopy = provider;
  storageCopy = storage;
  centerCopy = center;
  inboxNotificationMonitor = [(CALNNotificationServerModule *)self inboxNotificationMonitor];
  v21 = +[CALNCalAnalyticsHandler sharedInstance];
  v22 = objc_alloc_init(MEMORY[0x277CF77B8]);
  v23 = [[CALNNotificationServer alloc] initWithUserNotificationCenter:centerCopy storage:storageCopy analyticsHandler:v21 deviceLockObserver:v22];

  v24 = [(CALNNotificationServerModule *)self _createNotificationSourcesWithNotificationManager:v23 eventStoreProvider:providerCopy inboxNotificationProvider:inboxNotificationMonitor alarmEngineMonitor:monitorCopy travelEngine:engineCopy timeToLeaveRefreshMonitor:refreshMonitorCopy timeToLeaveRefreshStorage:refreshStorageCopy];

  [(CALNNotificationServer *)v23 setNotificationSources:v24];

  return v23;
}

- (id)_createNotificationSourcesWithNotificationManager:(id)manager eventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider alarmEngineMonitor:(id)monitor travelEngine:(id)engine timeToLeaveRefreshMonitor:(id)refreshMonitor timeToLeaveRefreshStorage:(id)storage
{
  v90[9] = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  refreshMonitorCopy = refreshMonitor;
  engineCopy = engine;
  monitorCopy = monitor;
  notificationProviderCopy = notificationProvider;
  providerCopy = provider;
  managerCopy = manager;
  v18 = +[CALNDefaultEKCalendarNotificationReferenceProvider sharedInstance];
  v89 = +[CALNUNIconProvider sharedInstance];
  v87 = +[CALNNullRemoteMutator sharedInstance];
  v88 = +[CALNDataAccessExpressSharedConnection sharedConnection];
  v19 = +[CALNEKUIEventRepresentationProvider sharedInstance];
  v85 = +[CALNEKUIEventRepresentationProvider sharedInstance];
  mEMORY[0x277CF7808] = [MEMORY[0x277CF7808] sharedInstance];
  v21 = [CALNEventInvitationNotificationEKDataSource alloc];
  calendarPreferences = [MEMORY[0x277CC59D8] calendarPreferences];
  v80 = [(CALNEventInvitationNotificationEKDataSource *)v21 initWithEventStoreProvider:providerCopy inboxNotificationProvider:notificationProviderCopy notificationReferenceProvider:v18 remoteMutator:v87 dataSourceEventRepresentationProvider:v19 preferences:calendarPreferences];

  v77 = [[CALNEventInvitationNotificationSource alloc] initWithDataSource:v80 notificationManager:managerCopy iconIdentifierProvider:v89 dateProvider:mEMORY[0x277CF7808]];
  v23 = [CALNEventInvitationResponseNotificationEKDataSource alloc];
  calendarPreferences2 = [MEMORY[0x277CC59D8] calendarPreferences];
  v86 = v19;
  v79 = [(CALNEventInvitationResponseNotificationEKDataSource *)v23 initWithEventStoreProvider:providerCopy inboxNotificationProvider:notificationProviderCopy notificationReferenceProvider:v18 dataSourceEventRepresentationProvider:v19 preferences:calendarPreferences2];

  v72 = [[CALNEventInvitationResponseNotificationSource alloc] initWithDataSource:v79 notificationManager:managerCopy iconIdentifierProvider:v89 dateProvider:mEMORY[0x277CF7808]];
  v25 = [CALNEventCanceledNotificationEKDataSource alloc];
  calendarPreferences3 = [MEMORY[0x277CC59D8] calendarPreferences];
  v78 = [(CALNEventCanceledNotificationEKDataSource *)v25 initWithEventStoreProvider:providerCopy inboxNotificationProvider:notificationProviderCopy notificationReferenceProvider:v18 remoteMutator:v87 dataSourceEventRepresentationProvider:v19 preferences:calendarPreferences3];

  v68 = [[CALNEventCanceledNotificationSource alloc] initWithDataSource:v78 notificationManager:managerCopy iconIdentifierProvider:v89 dateProvider:mEMORY[0x277CF7808]];
  v76 = +[CALNCLCoreLocationProvider sharedInstance];
  v74 = +[CALNEKTTLEventTracker sharedInstance];
  v75 = +[CALNEKFoundInAppsEventTracker sharedInstance];
  v73 = +[CALNEKSuggestionsServiceLogger sharedInstance];
  v71 = +[CALNGEORouteHypothesizerProvider sharedInstance];
  v70 = +[CALNEKDebugPreferences sharedInstance];
  v27 = [CALNTriggeredEventNotificationMailtoURLProvider alloc];
  v28 = +[CALNMSMailAccounts sharedInstance];
  v69 = [(CALNTriggeredEventNotificationMailtoURLProvider *)v27 initWithMailAccounts:v28];

  v82 = [[CALNTriggeredEventNotificationEKDataSource alloc] initWithEventStoreProvider:providerCopy remoteMutator:v87 dataSourceEventRepresentationProvider:v19 coreLocationProvider:v76 ttlEventTracker:v74 alarmEngineMonitor:monitorCopy travelEngine:engineCopy foundInAppsEventTracker:v75 suggestionsServiceLogger:v73 routeHypothesizerProvider:v71 timeToLeaveRefreshMonitor:refreshMonitorCopy debugPreferences:v70 mailtoURLProvider:v69];
  v65 = objc_alloc_init(CALNDefaultTravelAdvisoryAuthority);
  v58 = [[CALNDefaultTriggeredEventNotificationTriggerHelper alloc] initWithTravelAdvisoryAuthority:v65 dateProvider:mEMORY[0x277CF7808] eventStoreProvider:self->_eventStoreProvider];
  v57 = [[CALNDefaultTriggeredEventNotificationTransitionProvider alloc] initWithTravelAdvisoryAuthority:v65 dateProvider:mEMORY[0x277CF7808]];
  v63 = objc_alloc_init(CALNCUIKTravelAdvisoryDescriptionGenerator);
  v56 = [[CALNDefaultTriggeredEventNotificationBodyDescriptionProvider alloc] initWithTravelAdvisoryDescriptionGenerator:v63 dateProvider:mEMORY[0x277CF7808]];
  v61 = [objc_alloc(MEMORY[0x277CC5AF0]) initWithDateProvider:mEMORY[0x277CF7808]];
  v54 = [[CALNEKTravelAdvisoryTimelinessAuthority alloc] initWithTravelAdvisoryTimelinessAuthority:v61];
  _unprotectedTriggeredEventNotificationDataStorage = [objc_opt_class() _unprotectedTriggeredEventNotificationDataStorage];
  v29 = [CALNDefaultAppURLHandler alloc];
  v30 = +[CALNLaunchServicesURLHandler sharedInstance];
  v52 = [(CALNDefaultAppURLHandler *)v29 initWithFallbackHandler:v30];

  v51 = +[CALNDefaultTriggeredEventNotificationMapItemURLProvider sharedInstance];
  v59 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v59, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  v55 = [[CALNXPCActivityScheduler alloc] initWithActivityIdentifier:@"com.apple.calendar.notification.snoozeRefresh" otherCriteria:v59];
  v84 = mEMORY[0x277CF7808];
  v31 = [[CALNSchedulingSnoozeUpdateTimer alloc] initWithDateProvider:mEMORY[0x277CF7808] scheduler:v55];
  snoozeUpdateTimer = self->_snoozeUpdateTimer;
  self->_snoozeUpdateTimer = v31;

  v33 = [[CALNTriggeredEventNotificationSource alloc] initWithDataSource:v82 notificationManager:managerCopy iconIdentifierProvider:v89 sourceEventRepresentationProvider:v85 triggerHelper:v58 transitionProvider:v57 bodyDescriptionProvider:v56 travelAdvisoryTimelinessAuthority:v54 dateProvider:mEMORY[0x277CF7808] notificationDataStorage:_unprotectedTriggeredEventNotificationDataStorage urlHandler:v52 mapItemURLProvider:v51 timeToLeaveRefreshStorage:storageCopy snoozeUpdateTimer:self->_snoozeUpdateTimer];
  triggeredEventNotificationSource = self->_triggeredEventNotificationSource;
  self->_triggeredEventNotificationSource = v33;

  v35 = [CALNSharedCalendarInvitationNotificationEKDataSource alloc];
  calendarPreferences4 = [MEMORY[0x277CC59D8] calendarPreferences];
  v67 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)v35 initWithEventStoreProvider:providerCopy inboxNotificationProvider:notificationProviderCopy notificationReferenceProvider:v18 dataAccessExpressConnection:v88 preferences:calendarPreferences4];

  v49 = [[CALNSharedCalendarInvitationNotificationSource alloc] initWithDataSource:v67 notificationManager:managerCopy iconIdentifierProvider:v89 sourceEventRepresentationProvider:v85];
  v37 = [CALNSharedCalendarInvitationResponseNotificationEKDataSource alloc];
  calendarPreferences5 = [MEMORY[0x277CC59D8] calendarPreferences];
  v50 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)v37 initWithEventStoreProvider:providerCopy inboxNotificationProvider:notificationProviderCopy notificationReferenceProvider:v18 preferences:calendarPreferences5];

  v39 = [[CALNSharedCalendarInvitationResponseNotificationSource alloc] initWithDataSource:v50 notificationManager:managerCopy iconIdentifierProvider:v89 sourceEventRepresentationProvider:v85];
  v40 = [CALNCalendarResourceChangedNotificationEKDataSource alloc];
  calendarPreferences6 = [MEMORY[0x277CC59D8] calendarPreferences];
  v42 = [(CALNCalendarResourceChangedNotificationEKDataSource *)v40 initWithEventStoreProvider:providerCopy inboxNotificationProvider:notificationProviderCopy notificationReferenceProvider:v18 preferences:calendarPreferences6];

  v43 = [[CALNCalendarResourceChangedNotificationSource alloc] initWithDataSource:v42 notificationManager:managerCopy iconIdentifierProvider:v89 sourceEventRepresentationProvider:v85 dateProvider:mEMORY[0x277CF7808]];
  v44 = [[CALNSuggestedEventNotificationEKDataSource alloc] initWithEventStoreProvider:providerCopy inboxNotificationProvider:notificationProviderCopy notificationReferenceProvider:v18];

  v45 = [[CALNSuggestedEventNotificationSource alloc] initWithDataSource:v44 notificationManager:managerCopy iconIdentifierProvider:v89];
  v46 = [[CALNFakeNotificationSource alloc] initWithNotificationManager:managerCopy iconIdentifierProvider:v89 sourceIdentifierSuffix:@"calendar"];

  v90[0] = v77;
  v90[1] = v72;
  v47 = self->_triggeredEventNotificationSource;
  v90[2] = v68;
  v90[3] = v47;
  v90[4] = v49;
  v90[5] = v39;
  v90[6] = v43;
  v90[7] = v45;
  v90[8] = v46;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:9];

  return v83;
}

- (void)activate
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  modules = [(CALNNotificationServerModule *)self modules];
  v4 = [modules countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(modules);
        }

        [*(*(&v8 + 1) + 8 * v7++) activate];
      }

      while (v5 != v7);
      v5 = [modules countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  if ([MEMORY[0x277CF77B8] hasBeenUnlockedSinceBoot])
  {
    [(CALNNotificationServerModule *)self _updateSourceClientIdentifiersIfNeeded];
  }
}

- (void)deactivate
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  modules = [(CALNNotificationServerModule *)self modules];
  v3 = [modules countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(modules);
        }

        [*(*(&v7 + 1) + 8 * v6++) deactivate];
      }

      while (v4 != v6);
      v4 = [modules countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)receivedNotificationNamed:(id)named
{
  v18 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v5 = os_transaction_create();
  if ([namedCopy isEqualToString:*MEMORY[0x277CF7560]])
  {
    [(CALNNotificationServerModule *)self refreshEventStoreInResponseToDatabaseChangeNotification:namedCopy];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  modules = [(CALNNotificationServerModule *)self modules];
  v7 = [modules countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(modules);
        }

        [*(*(&v13 + 1) + 8 * v10++) receivedNotificationNamed:namedCopy];
      }

      while (v8 != v10);
      v8 = [modules countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([namedCopy isEqualToString:*MEMORY[0x277CF7908]])
  {
    notificationSourceRefresher = [(CALNNotificationServerModule *)self notificationSourceRefresher];
    [notificationSourceRefresher refreshNotifications];

    snoozeUpdateTimer = [(CALNNotificationServerModule *)self snoozeUpdateTimer];
    [snoozeUpdateTimer significantTimeChange];
LABEL_16:

    goto LABEL_17;
  }

  if (([namedCopy isEqualToString:*MEMORY[0x277CC5928]] & 1) != 0 || (objc_msgSend(namedCopy, "isEqualToString:", *MEMORY[0x277CC5970]) & 1) != 0 || objc_msgSend(namedCopy, "isEqualToString:", *MEMORY[0x277CF7578]))
  {
    snoozeUpdateTimer = [(CALNNotificationServerModule *)self notificationSourceRefresher];
    [snoozeUpdateTimer refreshNotifications];
    goto LABEL_16;
  }

LABEL_17:
}

- (void)refreshEventStoreInResponseToDatabaseChangeNotification:(id)notification
{
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_lastCreatedEventStore);
  if (WeakRetained)
  {
    eventStore = [(EKEphemeralCacheEventStoreProvider *)self->_eventStoreProvider eventStore];
    v7 = +[CALNLogSubsystem calendar];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (eventStore == WeakRetained)
    {
      if (v8)
      {
        *v10 = 0;
        _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Got a database changed notification and we have an EKEventStore. Letting the event store handle the notification first.", v10, 2u);
      }

      [WeakRetained handleExternalDatabaseChangeNotification:notificationCopy];
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Missed refreshing EKEventStore in response to handling database change notification; continuing without refreshing.", buf, 2u);
      }
    }
  }

  else
  {
    eventStore = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(eventStore, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_242909000, eventStore, OS_LOG_TYPE_DEFAULT, "Not refreshing EKEventStore before handling database change notification because we don't have an EKEventStore right now.", v9, 2u);
    }
  }
}

- (void)_registerSettingsCaptureHandlers
{
  CADStatsRegisterCollectionCallback();
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.calendar.notifications.stateCaptureQ", v2);

  CalAddStateCaptureBlock();
}

void __64__CALNNotificationServerModule__registerSettingsCaptureHandlers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = a2;
  v4 = [v2 userNotificationCenter];
  [v4 collectSettingsStats:v3];
}

id __64__CALNNotificationServerModule__registerSettingsCaptureHandlers__block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(*(a1 + 32) + 32) userNotificationCenter];
  [v3 collectSettingsStats:v2];

  return v2;
}

- (void)_updateLocaleReloadIfDifferent:(BOOL)different
{
  differentCopy = different;
  v19 = *MEMORY[0x277D85DE8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  mEMORY[0x277CF77A8] = [MEMORY[0x277CF77A8] shared];
  v8 = [mEMORY[0x277CF77A8] objectForKey:@"NotificationsLastLocale"];

  if (([localeIdentifier isEqualToString:v8] & 1) == 0)
  {
    if (differentCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__CALNNotificationServerModule__updateLocaleReloadIfDifferent___block_invoke;
      block[3] = &unk_278D6F318;
      v12 = v8;
      v13 = localeIdentifier;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], block);

      mEMORY[0x277CF77A8]2 = v12;
    }

    else
    {
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v16 = v8;
        v17 = 2114;
        v18 = localeIdentifier;
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Updating locale from %{public}@ to %{public}@", buf, 0x16u);
      }

      mEMORY[0x277CF77A8]2 = [MEMORY[0x277CF77A8] shared];
      [mEMORY[0x277CF77A8]2 setObject:localeIdentifier forKey:@"NotificationsLastLocale"];
    }
  }
}

void __63__CALNNotificationServerModule__updateLocaleReloadIfDifferent___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10 = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_242909000, v2, OS_LOG_TYPE_DEFAULT, "Reloading notifications because locale changed from %{public}@ to %{public}@", &v10, 0x16u);
  }

  v5 = +[CALNNotificationServerModule _protectedCalendarNotificationStorage];
  v6 = *(a1 + 48);
  v7 = [v5 notificationRecords];
  v8 = [*(a1 + 48) calendarNotificationServer];
  [v6 _reloadNotificationRecords:v7 forNotificationServer:v8];

  v9 = [MEMORY[0x277CF77A8] shared];
  [v9 setObject:*(a1 + 40) forKey:@"NotificationsLastLocale"];
}

- (void)_reloadTriggeredEventNotificationData
{
  v3 = +[CALNNotificationServerModule _unprotectedTriggeredEventNotificationDataStorage];
  v4 = +[CALNNotificationServerModule _protectedTriggeredEventNotificationDataStorage];
  v5 = [(CALNTriggeredEventNotificationSource *)self->_triggeredEventNotificationSource migrateToStorage:v4];
  v6 = +[CALNLogSubsystem calendar];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Reloaded triggered event notification data after first unlock", buf, 2u);
    }

    [v3 removeNotificationData];
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Already reloaded triggered event notification data after first unlock; not doing it again", v8, 2u);
    }
  }
}

- (void)_reloadNotificationsAfterFirstUnlock
{
  v3 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Reloading calendar notifications after first unlock", v8, 2u);
  }

  calendarNotificationServer = [(CALNNotificationServerModule *)self calendarNotificationServer];
  _unprotectedCalendarNotificationStorage = [objc_opt_class() _unprotectedCalendarNotificationStorage];
  _protectedCalendarNotificationStorage = [objc_opt_class() _protectedCalendarNotificationStorage];
  calendarStorageWrapper = [(CALNNotificationServerModule *)self calendarStorageWrapper];
  [(CALNNotificationServerModule *)self _reloadNotificationsFromUnprotectedStorage:_unprotectedCalendarNotificationStorage intoProtectedStorage:_protectedCalendarNotificationStorage withStorageWrapper:calendarStorageWrapper forNotificationServer:calendarNotificationServer];
}

- (void)_reloadNotificationsFromUnprotectedStorage:(id)storage intoProtectedStorage:(id)protectedStorage withStorageWrapper:(id)wrapper forNotificationServer:(id)server
{
  serverCopy = server;
  storageCopy = storage;
  [wrapper setWrappedStorage:protectedStorage];
  notificationRecords = [storageCopy notificationRecords];
  [(CALNNotificationServerModule *)self _reloadNotificationRecords:notificationRecords forNotificationServer:serverCopy];

  [(CALNNotificationServerModule *)self _removeNotificationsFromUnprotectedStorage:storageCopy];
}

- (void)didRegisterForAlarms
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  modules = [(CALNNotificationServerModule *)self modules];
  v3 = [modules countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(modules);
        }

        [*(*(&v7 + 1) + 8 * v6++) didRegisterForAlarms];
      }

      while (v4 != v6);
      v4 = [modules countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)receivedAlarmNamed:(id)named
{
  v16 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v5 = os_transaction_create();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  modules = [(CALNNotificationServerModule *)self modules];
  v7 = [modules countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(modules);
        }

        [*(*(&v11 + 1) + 8 * v10++) receivedAlarmNamed:namedCopy];
      }

      while (v8 != v10);
      v8 = [modules countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)protectedDataDidBecomeAvailable
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  +[CALNNotificationUtilities createSentinelFileIfNeeded];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  modules = [(CALNNotificationServerModule *)self modules];
  v5 = [modules countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(modules);
        }

        [*(*(&v9 + 1) + 8 * v8++) protectedDataDidBecomeAvailable];
      }

      while (v6 != v8);
      v6 = [modules countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(CALNNotificationServerModule *)self _reloadTriggeredEventNotificationData];
  [(CALNNotificationServerModule *)self _reloadNotificationsAfterFirstUnlock];
  [(CALNNotificationServerModule *)self _updateSourceClientIdentifiersIfNeeded];
  [(CALNNotificationServerModule *)self updateIconsToNewVersionIfNeeded];
}

- (void)_updateSourceClientIdentifiersIfNeeded
{
  mEMORY[0x277CF77A8] = [MEMORY[0x277CF77A8] shared];
  v4 = [mEMORY[0x277CF77A8] integerForKey:@"NotificationSourceClientIdentifierVersion"];

  if (v4 != 1)
  {
    mEMORY[0x277CF77A8]2 = [MEMORY[0x277CF77A8] shared];
    [mEMORY[0x277CF77A8]2 setInteger:1 forKey:@"NotificationSourceClientIdentifierVersion"];

    notificationSourceRefresher = [(CALNNotificationServerModule *)self notificationSourceRefresher];
    [notificationSourceRefresher refreshNotifications];
  }
}

- (void)_reloadNotificationRecords:(id)records forNotificationServer:(id)server
{
  v44 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  serverCopy = server;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = recordsCopy;
  v7 = [recordsCopy countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v34;
    v11 = 0x278D6E000uLL;
    *&v8 = 138412546;
    v29 = v8;
    v30 = serverCopy;
    do
    {
      v12 = 0;
      v31 = v9;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * v12);
        sourceIdentifier = [v13 sourceIdentifier];
        v15 = [serverCopy notificationSourceForSourceIdentifier:sourceIdentifier];

        if (v15)
        {
          defaultCategory = [v13 mutableCopy];
          sourceClientIdentifier = [v13 sourceClientIdentifier];
          v18 = [v15 contentForNotificationWithSourceClientIdentifier:sourceClientIdentifier];
          [defaultCategory setContent:v18];

          v19 = [defaultCategory copy];
          [serverCopy updateRecord:v19];

          calendar = [*(v11 + 2344) calendar];
          if (os_log_type_enabled(calendar, OS_LOG_TYPE_DEFAULT))
          {
            sourceIdentifier2 = [defaultCategory sourceIdentifier];
            sourceClientIdentifier2 = [defaultCategory sourceClientIdentifier];
            content = [defaultCategory content];
            [content title];
            v24 = v11;
            v26 = v25 = v10;
            *buf = 138543874;
            v38 = sourceIdentifier2;
            v39 = 2114;
            v40 = sourceClientIdentifier2;
            v41 = 2112;
            v42 = v26;
            _os_log_impl(&dword_242909000, calendar, OS_LOG_TYPE_DEFAULT, "Reloaded notification record with source identifier = %{public}@, source client identifier = %{public}@, title = %@", buf, 0x20u);

            v10 = v25;
            v11 = v24;
            serverCopy = v30;

            v9 = v31;
          }
        }

        else
        {
          defaultCategory = [*(v11 + 2344) defaultCategory];
          if (os_log_type_enabled(defaultCategory, OS_LOG_TYPE_ERROR))
          {
            sourceClientIdentifier3 = [v13 sourceClientIdentifier];
            sourceIdentifier3 = [v13 sourceIdentifier];
            *buf = v29;
            v38 = sourceClientIdentifier3;
            v39 = 2114;
            v40 = sourceIdentifier3;
            _os_log_error_impl(&dword_242909000, defaultCategory, OS_LOG_TYPE_ERROR, "Cannot reload notification with sourceClientIdentifier = %@. Failed to find notification source with sourceIdentifier = %{public}@.", buf, 0x16u);
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v9);
  }
}

+ (id)_notificationStoragePathWithName:(id)name
{
  nameCopy = name;
  v4 = CALNDefaultCalendarDirectory();
  v5 = [v4 stringByAppendingPathComponent:nameCopy];

  return v5;
}

+ (id)_createNotificationStorageAtPath:(id)path protected:(BOOL)protected
{
  v4 = [CALNPersistentNotificationStorage persistentNotificationStorageWithPath:path isProtectedStorage:protected];
  v5 = _createNotificationStorageAtPath_protected__storage;
  _createNotificationStorageAtPath_protected__storage = v4;

  v6 = _createNotificationStorageAtPath_protected__storage;

  return v6;
}

+ (void)_setProtectedClassForStorageAtPath:(id)path
{
  v11[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = *MEMORY[0x277CCA1B0];
  v11[0] = *MEMORY[0x277CCA1A0];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = 0;
  v6 = [defaultManager setAttributes:v5 ofItemAtPath:pathCopy error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CALNNotificationServerModule *)pathCopy _setProtectedClassForStorageAtPath:v8];
    }
  }
}

+ (id)_unprotectedCalendarNotificationStorage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CALNNotificationServerModule__unprotectedCalendarNotificationStorage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_unprotectedCalendarNotificationStorage_onceToken != -1)
  {
    dispatch_once(&_unprotectedCalendarNotificationStorage_onceToken, block);
  }

  v2 = _unprotectedCalendarNotificationStorage_storage;

  return v2;
}

void __71__CALNNotificationServerModule__unprotectedCalendarNotificationStorage__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _notificationStoragePathWithName:@"Notifications.Calendar.Unprotected"];
  v2 = [*(a1 + 32) _createNotificationStorageAtPath:v4 protected:0];
  v3 = _unprotectedCalendarNotificationStorage_storage;
  _unprotectedCalendarNotificationStorage_storage = v2;
}

+ (id)_protectedCalendarNotificationStorage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CALNNotificationServerModule__protectedCalendarNotificationStorage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_protectedCalendarNotificationStorage_onceToken != -1)
  {
    dispatch_once(&_protectedCalendarNotificationStorage_onceToken, block);
  }

  v2 = _protectedCalendarNotificationStorage_storage;

  return v2;
}

void __69__CALNNotificationServerModule__protectedCalendarNotificationStorage__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _notificationStoragePathWithName:@"Notifications.Calendar.Protected"];
  v2 = [*(a1 + 32) _createNotificationStorageAtPath:v4 protected:1];
  v3 = _protectedCalendarNotificationStorage_storage;
  _protectedCalendarNotificationStorage_storage = v2;

  [*(a1 + 32) _setProtectedClassForStorageAtPath:v4];
}

+ (id)_unprotectedTriggeredEventNotificationDataStorage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CALNNotificationServerModule__unprotectedTriggeredEventNotificationDataStorage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_unprotectedTriggeredEventNotificationDataStorage_onceToken != -1)
  {
    dispatch_once(&_unprotectedTriggeredEventNotificationDataStorage_onceToken, block);
  }

  v2 = _unprotectedTriggeredEventNotificationDataStorage_storage;

  return v2;
}

void __81__CALNNotificationServerModule__unprotectedTriggeredEventNotificationDataStorage__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _triggeredEventNotificationDataStoragePathWithName:@"Notifications.Calendar.TriggeredEvent.NotificationData.Unprotected"];
  v2 = [*(a1 + 32) _createTriggeredEventNotificationDataStorageAtPath:v4 protected:0];
  v3 = _unprotectedTriggeredEventNotificationDataStorage_storage;
  _unprotectedTriggeredEventNotificationDataStorage_storage = v2;
}

+ (id)_protectedTriggeredEventNotificationDataStorage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CALNNotificationServerModule__protectedTriggeredEventNotificationDataStorage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_protectedTriggeredEventNotificationDataStorage_onceToken != -1)
  {
    dispatch_once(&_protectedTriggeredEventNotificationDataStorage_onceToken, block);
  }

  v2 = _protectedTriggeredEventNotificationDataStorage_storage;

  return v2;
}

void __79__CALNNotificationServerModule__protectedTriggeredEventNotificationDataStorage__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _triggeredEventNotificationDataStoragePathWithName:@"Notifications.Calendar.TriggeredEvent.NotificationData"];
  v2 = [*(a1 + 32) _createTriggeredEventNotificationDataStorageAtPath:v4 protected:1];
  v3 = _protectedTriggeredEventNotificationDataStorage_storage;
  _protectedTriggeredEventNotificationDataStorage_storage = v2;

  [*(a1 + 32) _setProtectedClassForStorageAtPath:v4];
}

+ (id)_triggeredEventNotificationDataStoragePathWithName:(id)name
{
  nameCopy = name;
  v4 = CALNDefaultCalendarDirectory();
  v5 = [v4 stringByAppendingPathComponent:nameCopy];

  return v5;
}

+ (id)_timeToLeaveRefreshStorage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CALNNotificationServerModule__timeToLeaveRefreshStorage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_timeToLeaveRefreshStorage_onceToken != -1)
  {
    dispatch_once(&_timeToLeaveRefreshStorage_onceToken, block);
  }

  v2 = _timeToLeaveRefreshStorage_storage;

  return v2;
}

void __58__CALNNotificationServerModule__timeToLeaveRefreshStorage__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _timeToLeaveRefreshStoragePathWithName:@"Notifications.Calendar.TriggeredEvent.TimeToLeaveRefresh"];
  v2 = [*(a1 + 32) _createTimeToLeaveRefreshStorageAtPath:v4];
  v3 = _timeToLeaveRefreshStorage_storage;
  _timeToLeaveRefreshStorage_storage = v2;
}

+ (id)_timeToLeaveRefreshStoragePathWithName:(id)name
{
  nameCopy = name;
  v4 = CALNDefaultCalendarDirectory();
  v5 = [v4 stringByAppendingPathComponent:nameCopy];

  return v5;
}

+ (void)_migrateNotificationFiles
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = CALNOldCalendarDirectory();
  if (v3)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = 0;
    if ([defaultManager fileExistsAtPath:v3 isDirectory:&v6]&& (v6 & 1) != 0)
    {
      v5 = CALNDefaultCalendarDirectory();
      [self _migrateNotificationFilesFromDirectory:v3 toDirectory:v5];
    }

    else
    {
      v5 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v8 = v3;
        _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_INFO, "Migration not required because folder %@ doesn't exist or isn't a directory.", buf, 0xCu);
      }
    }
  }

  else
  {
    defaultManager = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_DEBUG))
    {
      +[(CALNNotificationServerModule *)defaultManager];
    }
  }
}

+ (void)_migrateNotificationFilesFromDirectory:(id)directory toDirectory:(id)toDirectory
{
  v37 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  toDirectoryCopy = toDirectory;
  _filesToMigrate = [self _filesToMigrate];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = _filesToMigrate;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v29;
    *&v11 = 138543618;
    v22 = v11;
    v24 = *v29;
    v25 = v9;
    v23 = toDirectoryCopy;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [toDirectoryCopy stringByAppendingPathComponent:{v15, v22}];
        if ([defaultManager fileExistsAtPath:v16])
        {
          v17 = +[CALNLogSubsystem calendar];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v33 = v15;
            _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, "Not attempting to migrate file %{public}@ because it already exists in the destination directory", buf, 0xCu);
          }
        }

        else
        {
          v17 = [directoryCopy stringByAppendingPathComponent:v15];
          if ([defaultManager fileExistsAtPath:v17])
          {
            v27 = 0;
            v18 = [defaultManager moveItemAtPath:v17 toPath:v16 error:&v27];
            v19 = v27;
            v20 = +[CALNLogSubsystem calendar];
            v21 = v20;
            if (v18)
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v33 = v15;
                _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, "Successfully moved file %{public}@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v33 = v15;
              v34 = 2112;
              v35 = v19;
              _os_log_error_impl(&dword_242909000, v21, OS_LOG_TYPE_ERROR, "Error moving file %{public}@: %@", buf, 0x16u);
            }

            toDirectoryCopy = v23;
            v13 = v24;
            v9 = v25;
          }

          else
          {
            v19 = +[CALNLogSubsystem calendar];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v33 = v15;
              _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Not attempting to migrate file %{public}@ because it doesn't exist in the source directory", buf, 0xCu);
            }
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v12);
  }
}

+ (void)_setProtectedClassForStorageAtPath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Failed to set data class protection for path %{public}@", &v2, 0xCu);
}

@end