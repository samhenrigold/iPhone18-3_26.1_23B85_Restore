@interface _ATXAppInstallMonitor
+ (id)appInfoDictWithBackDate:(BOOL)date assetData:(id)data newPreInstalledAppSet:(id)set isFromNotification:(BOOL)notification newApps:(id)apps;
+ (id)newPreInstalledAppSet;
+ (id)removeIntersectionBetweenSet:(id)set set:(id)a4;
- (BOOL)restoreInProgress;
- (_ATXAppInstallMonitor)initWithAppInfoManager:(id)manager;
- (_ATXAppInstallMonitor)initWithAppInfoManager:(id)manager histogramBundleIdTable:(id)table appIconState:(id)state webClipDataStore:(id)store shouldSynchronousUpdate:(BOOL)update;
- (_ATXAppInstallMonitor)initWithAppInfoManager:(id)manager shouldSynchronousUpdate:(BOOL)update;
- (id)_appInfoDictWithBackDate:(BOOL)date isFromNotification:(BOOL)notification newApps:(id)apps;
- (id)_fetchAllAppsFromDatastore;
- (id)_fetchAllAppsWithInstallDateFromDatastore;
- (id)webClipsForRemovedApps:(id)apps;
- (void)_receivedInstallNotificationWithApps:(id)apps placeholderInstallNotification:(BOOL)notification;
- (void)_receivedUninstallNotificationWithApps:(id)apps placeholderUninstallNotification:(BOOL)notification;
- (void)dealloc;
- (void)handleInstallationOfApps:(id)apps isFromNotification:(BOOL)notification andBackdate:(BOOL)backdate;
- (void)handleUninstallationOfApps:(id)apps;
- (void)noSyncUpdateWithWaitTime:(unint64_t)time andBackdate:(BOOL)backdate;
- (void)notifyInstallationOfAppsWithInstallDictionary:(id)dictionary;
- (void)notifyUninstallationOfAppsWithBundleIdsToRemoveSet:(id)set;
- (void)receivedInstallNotification:(id)notification;
- (void)receivedStateChangeNotification:(id)notification;
- (void)receivedUninstallNotification:(id)notification;
- (void)setUpdateCompletionBlock:(id)block;
- (void)start;
- (void)stop;
- (void)synchronousUpdateAndBackdate:(BOOL)backdate;
- (void)synchronousUpdateWithUninstallWaitTime:(unint64_t)time andBackdate:(BOOL)backdate;
- (void)train;
@end

@implementation _ATXAppInstallMonitor

- (_ATXAppInstallMonitor)initWithAppInfoManager:(id)manager
{
  managerCopy = manager;
  v5 = +[ATXHistogramBundleIdTable sharedInstance];
  v6 = +[_ATXAppIconState sharedInstance];
  v7 = objc_opt_new();
  v8 = [(_ATXAppInstallMonitor *)self initWithAppInfoManager:managerCopy histogramBundleIdTable:v5 appIconState:v6 webClipDataStore:v7 shouldSynchronousUpdate:1];

  return v8;
}

- (_ATXAppInstallMonitor)initWithAppInfoManager:(id)manager shouldSynchronousUpdate:(BOOL)update
{
  updateCopy = update;
  managerCopy = manager;
  v7 = +[ATXHistogramBundleIdTable sharedInstance];
  v8 = +[_ATXAppIconState sharedInstance];
  v9 = objc_opt_new();
  v10 = [(_ATXAppInstallMonitor *)self initWithAppInfoManager:managerCopy histogramBundleIdTable:v7 appIconState:v8 webClipDataStore:v9 shouldSynchronousUpdate:updateCopy];

  return v10;
}

- (_ATXAppInstallMonitor)initWithAppInfoManager:(id)manager histogramBundleIdTable:(id)table appIconState:(id)state webClipDataStore:(id)store shouldSynchronousUpdate:(BOOL)update
{
  updateCopy = update;
  managerCopy = manager;
  tableCopy = table;
  stateCopy = state;
  storeCopy = store;
  v30.receiver = self;
  v30.super_class = _ATXAppInstallMonitor;
  v17 = [(_ATXAppInstallMonitor *)&v30 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_appInfoManager, manager);
    objc_storeStrong(&v18->_histogramBundleIdTable, table);
    objc_storeStrong(&v18->_appIconState, state);
    objc_storeStrong(&v18->_webClipDataStore, store);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.duetexpertd._ATXAppInstallMonitor.installQueue", v19);
    installQueue = v18->_installQueue;
    v18->_installQueue = v20;

    v22 = [MEMORY[0x277CEB3C0] dictionaryWithLegacyPathForClass:objc_opt_class()];
    assetData = v18->_assetData;
    v18->_assetData = v22;

    newPreInstalledAppSet = [objc_opt_class() newPreInstalledAppSet];
    preInstalledNewSystemApps = v18->_preInstalledNewSystemApps;
    v18->_preInstalledNewSystemApps = newPreInstalledAppSet;

    allAppsWithInstallDate = [managerCopy allAppsWithInstallDate];
    v27 = [allAppsWithInstallDate count];
    if (!v27 && updateCopy)
    {
      v27 = [(_ATXAppInstallMonitor *)v18 synchronousUpdateAndBackdate:1];
    }

    v28 = __atxlog_handle_default(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppInstallMonitor initWithAppInfoManager:histogramBundleIdTable:appIconState:webClipDataStore:shouldSynchronousUpdate:];
    }
  }

  return v18;
}

- (void)start
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_receivedInstallNotification_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_receivedUninstallNotification_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
}

- (void)stop
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
}

- (void)dealloc
{
  [(_ATXAppInstallMonitor *)self stop];
  v3.receiver = self;
  v3.super_class = _ATXAppInstallMonitor;
  [(_ATXAppInstallMonitor *)&v3 dealloc];
}

- (void)train
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_default(self);
  v4 = os_signpost_id_generate(v3);

  v6 = __atxlog_handle_default(v5);
  v7 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v10 = 136446210;
    v11 = "_ATXInstallMonitor";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", &v10, 0xCu);
  }

  v8 = __atxlog_handle_default([(_ATXAppInstallMonitor *)self synchronousUpdateAndBackdate:0]);
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = 136446210;
    v11 = "_ATXInstallMonitor";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v9, OS_SIGNPOST_INTERVAL_END, v4, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", &v10, 0xCu);
  }
}

- (BOOL)restoreInProgress
{
  v2 = [MEMORY[0x277CEA468] sessionsWithSessionTypeIdentifier:*MEMORY[0x277CEA410]];
  v3 = [v2 count];
  v4 = __atxlog_handle_default(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      [_ATXAppInstallMonitor restoreInProgress];
    }
  }

  else if (v5)
  {
    [_ATXAppInstallMonitor restoreInProgress];
  }

  return v3 != 0;
}

- (void)synchronousUpdateWithUninstallWaitTime:(unint64_t)time andBackdate:(BOOL)backdate
{
  installQueue = self->_installQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76___ATXAppInstallMonitor_synchronousUpdateWithUninstallWaitTime_andBackdate___block_invoke;
  block[3] = &unk_278598C48;
  block[4] = self;
  block[5] = time;
  backdateCopy = backdate;
  dispatch_sync(installQueue, block);
}

- (void)synchronousUpdateAndBackdate:(BOOL)backdate
{
  backdateCopy = backdate;
  v5 = [(NSDictionary *)self->_assetData objectForKeyedSubscript:@"Wait time after notification before data deletion"];
  -[_ATXAppInstallMonitor synchronousUpdateWithUninstallWaitTime:andBackdate:](self, "synchronousUpdateWithUninstallWaitTime:andBackdate:", [v5 unsignedIntegerValue], backdateCopy);
}

- (void)noSyncUpdateWithWaitTime:(unint64_t)time andBackdate:(BOOL)backdate
{
  backdateCopy = backdate;
  v7 = objc_autoreleasePoolPush();
  _fetchAllAppsWithInstallDateFromDatastore = [(_ATXAppInstallMonitor *)self _fetchAllAppsWithInstallDateFromDatastore];
  _fetchAllApps = [(_ATXAppInstallMonitor *)self _fetchAllApps];
  v10 = [_fetchAllApps mutableCopy];
  v11 = [_ATXAppInstallMonitor removeIntersectionBetweenSet:v10 set:_fetchAllAppsWithInstallDateFromDatastore];
  allObjects = [v10 allObjects];
  [(_ATXAppInstallMonitor *)self handleInstallationOfApps:allObjects isFromNotification:0 andBackdate:backdateCopy];

  restoreInProgress = [(_ATXAppInstallMonitor *)self restoreInProgress];
  if (restoreInProgress)
  {
    v14 = __atxlog_handle_default(restoreInProgress);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppInstallMonitor noSyncUpdateWithWaitTime:andBackdate:];
    }

    updateCompletionBlock = self->_updateCompletionBlock;
    if (updateCompletionBlock)
    {
      updateCompletionBlock[2]();
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62___ATXAppInstallMonitor_noSyncUpdateWithWaitTime_andBackdate___block_invoke;
    aBlock[3] = &unk_278598C70;
    aBlock[4] = self;
    v16 = _Block_copy(aBlock);
    if (time && (v17 = [_fetchAllAppsWithInstallDateFromDatastore count]) != 0)
    {
      v18 = __atxlog_handle_default(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Requesting async app removal", buf, 2u);
      }

      v19 = MEMORY[0x277D425A0];
      installQueue = self->_installQueue;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __62___ATXAppInstallMonitor_noSyncUpdateWithWaitTime_andBackdate___block_invoke_54;
      v25[3] = &unk_278596F88;
      v27 = v16;
      v26 = _fetchAllAppsWithInstallDateFromDatastore;
      [v19 runAsyncOnQueue:installQueue afterDelaySeconds:v25 block:time];
    }

    else if ([_fetchAllAppsWithInstallDateFromDatastore count])
    {
      (*(v16 + 2))(v16, _fetchAllAppsWithInstallDateFromDatastore, _fetchAllApps);
    }

    v24 = self->_updateCompletionBlock;
    if (v24)
    {
      v24[2](v24, v21, v22, v23);
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)receivedStateChangeNotification:(id)notification
{
  v3 = __atxlog_handle_default(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "app install monitor got LS state change notification", v4, 2u);
  }

  ATXUpdatePredictionsImmediatelyWithReason(17);
}

- (void)receivedInstallNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"bundleIDs"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = [v6 copy];
    v9 = [userInfo objectForKeyedSubscript:@"isPlaceholder"];
    bOOLValue = [v9 BOOLValue];

    v11 = [v8 count];
    if (v11)
    {
      v12 = __atxlog_handle_default(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "applications installed: %@", &v13, 0xCu);
      }

      [(_ATXAppInstallMonitor *)self _receivedInstallNotificationWithApps:v8 placeholderInstallNotification:bOOLValue];
    }
  }

  else
  {
    v8 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(_ATXAppInstallMonitor *)notificationCopy receivedInstallNotification:v8];
    }
  }
}

- (void)_receivedInstallNotificationWithApps:(id)apps placeholderInstallNotification:(BOOL)notification
{
  notificationCopy = notification;
  v43 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  [ATXInternalAppRegistrationNotification postNotificationWithInstallDictionary:appsCopy];
  v7 = [MEMORY[0x277CBEB58] setWithArray:appsCopy];
  _fetchAllAppsWithInstallDateFromDatastore = [(_ATXAppInstallMonitor *)self _fetchAllAppsWithInstallDateFromDatastore];
  [v7 minusSet:_fetchAllAppsWithInstallDateFromDatastore];
  v9 = [v7 count];
  if (notificationCopy)
  {
    if (v9)
    {
      v28 = _fetchAllAppsWithInstallDateFromDatastore;
      v10 = __atxlog_handle_default(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v39 = v7;
        v40 = 1024;
        v41 = 1;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Applications Installed: %@; isPlaceholder: %{BOOL}u", buf, 0x12u);
      }

      allObjects2 = objc_opt_new();
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v12 = appsCopy;
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v29 + 1) + 8 * i);
            if ([MEMORY[0x277CEB3B8] isInstallingForBundle:v17])
            {
              [allObjects2 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v14);
      }

      if ([allObjects2 count])
      {
        allObjects = [v7 allObjects];
        v19 = [(_ATXAppInstallMonitor *)self _appInfoDictWithBackDate:0 isFromNotification:1 newApps:allObjects];

        [ATXInternalAppsInstallStartNotification postNotificationWithInstallStartDictionary:v19];
      }

      _fetchAllAppsWithInstallDateFromDatastore = v28;
    }

    else
    {
      allObjects2 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v21 = appsCopy;
      v22 = [v21 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v34;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v33 + 1) + 8 * j);
            if ([MEMORY[0x277CEB3B8] isOffloadedForBundle:v26])
            {
              [allObjects2 addObject:v26];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v23);
      }

      if ([allObjects2 count])
      {
        v27 = __atxlog_handle_default([ATXInternalOffloadAppsNotification postNotificationWithOffloadSet:allObjects2]);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "app install monitor got app offload notification", buf, 2u);
        }
      }
    }

LABEL_34:

    goto LABEL_35;
  }

  if (v9)
  {
    v20 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v7;
      v40 = 1024;
      v41 = 0;
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "Applications Installed: %@; isPlaceholder: %{BOOL}u", buf, 0x12u);
    }

    allObjects2 = [v7 allObjects];
    [(_ATXAppInstallMonitor *)self handleInstallationOfApps:allObjects2 isFromNotification:1 andBackdate:0];
    goto LABEL_34;
  }

LABEL_35:
}

- (void)receivedUninstallNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"bundleIDs"];
  v6 = [v5 copy];

  v7 = [userInfo objectForKeyedSubscript:@"isPlaceholder"];
  bOOLValue = [v7 BOOLValue];

  if (v6)
  {
    v10 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "applications uninstalled: %@", &v11, 0xCu);
    }

    [(_ATXAppInstallMonitor *)self _receivedUninstallNotificationWithApps:v6 placeholderUninstallNotification:bOOLValue];
  }
}

- (void)_receivedUninstallNotificationWithApps:(id)apps placeholderUninstallNotification:(BOOL)notification
{
  if (!notification)
  {
    [(_ATXAppInstallMonitor *)self handleUninstallationOfApps:apps];
  }
}

+ (id)newPreInstalledAppSet
{
  isiPad = [MEMORY[0x277D42590] isiPad];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  if (isiPad)
  {
    v5 = [v4 initWithObjects:{@"com.apple.games", @"com.apple.Preview", @"com.apple.mobilephone", @"com.apple.journal", 0}];
  }

  else
  {
    v5 = [v4 initWithObjects:{@"com.apple.games", @"com.apple.Preview", 0, v8, v9}];
  }

  v6 = v5;
  objc_autoreleasePoolPop(v3);
  return v6;
}

- (id)_appInfoDictWithBackDate:(BOOL)date isFromNotification:(BOOL)notification newApps:(id)apps
{
  notificationCopy = notification;
  dateCopy = date;
  appsCopy = apps;
  v9 = [objc_opt_class() appInfoDictWithBackDate:dateCopy assetData:self->_assetData newPreInstalledAppSet:self->_preInstalledNewSystemApps isFromNotification:notificationCopy newApps:appsCopy];

  return v9;
}

+ (id)appInfoDictWithBackDate:(BOOL)date assetData:(id)data newPreInstalledAppSet:(id)set isFromNotification:(BOOL)notification newApps:(id)apps
{
  notificationCopy = notification;
  v66 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  setCopy = set;
  appsCopy = apps;
  v51 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v10 = appsCopy;
  v11 = [v10 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = 0x277CEB000uLL;
    v54 = *v58;
    *&v12 = 138412546;
    v48 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v58 != v54)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v57 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        v18 = __atxlog_handle_app_install(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = v16;
          _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXAppInstallMonitor: Adding install date for recently installed app: %@", buf, 0xCu);
        }

        v19 = [*(v14 + 952) isAppClipForBundleId:v16];
        if (v19)
        {
          v20 = __atxlog_handle_app_install(v19);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            goto LABEL_46;
          }

          *buf = 138412290;
          v62 = v16;
          v21 = v20;
          v22 = "ATXAppInstallMonitor: Not adding app clip to appInfoDict: %@";
LABEL_14:
          _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_INFO, v22, buf, 0xCu);
          goto LABEL_46;
        }

        v23 = [*(v14 + 952) isLaunchProhibitedForBundle:v16];
        if (v23)
        {
          v20 = __atxlog_handle_app_install(v23);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            goto LABEL_46;
          }

          *buf = 138412290;
          v62 = v16;
          v21 = v20;
          v22 = "ATXAppInstallMonitor: Launch prohibited for bundle: %@";
          goto LABEL_14;
        }

        v24 = [*(v14 + 952) registrationDateForBundle:v16];
        v25 = __atxlog_handle_app_install(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v62 = v24;
          v63 = 2112;
          v64 = v16;
          _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "ATXAppInstallMonitor: LS install date: %{public}@ for: %@", buf, 0x16u);
        }

        if (!v24 && notificationCopy)
        {
          v27 = __atxlog_handle_app_install(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            [_ATXAppInstallMonitor appInfoDictWithBackDate:v56 assetData:v27 newPreInstalledAppSet:? isFromNotification:? newApps:?];
          }

          v24 = objc_opt_new();
        }

        if (date || [*(v14 + 952) isRestoreInstallTypeForBundle:v16])
        {
          v28 = [dataCopy objectForKeyedSubscript:{@"Backdate time for backup restore apps", v48}];
          if (dataCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v29 = -[NSObject dateByAddingTimeInterval:](v24, "dateByAddingTimeInterval:", -[v28 integerValue]);
          }

          else
          {
            v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:1.0];
          }

          v20 = v29;

          v31 = __atxlog_handle_app_install(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v48;
            v62 = v16;
            v63 = 2114;
            v64 = v20;
            _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "ATXAppInstallMonitor: Backdating install date for: %@ to: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v20 = v24;
        }

        v32 = v10;
        appDirectoryAppCategoryMappings = [objc_opt_class() appDirectoryAppCategoryMappings];
        v34 = [appDirectoryAppCategoryMappings count];
        v35 = MEMORY[0x277CBEB98];
        if (v34)
        {
          allKeys = [appDirectoryAppCategoryMappings allKeys];
          v37 = [v35 setWithArray:allKeys];
        }

        else
        {
          v37 = objc_opt_new();
        }

        v38 = [setCopy containsObject:{v16, v48}];
        v39 = [v37 containsObject:v16];
        v40 = [MEMORY[0x277CEB3B8] isAppleOwnedIncludingInternalOrSystemAppForBundleId:v16] ^ 1 | v38;
        if (!notificationCopy)
        {
          v10 = v32;
          if (v40)
          {
            goto LABEL_45;
          }

          v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:1.0];

          v43 = __atxlog_handle_app_install(v46);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }

          *buf = 138412290;
          v62 = v16;
          v44 = v43;
          v45 = "ATXAppInstallMonitor: No LS notification: Backdating install date for system or internal app that is not new in in the current OS version - %@";
          goto LABEL_43;
        }

        v10 = v32;
        if ((v40 | v39))
        {
          goto LABEL_45;
        }

        v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:1.0];

        v43 = __atxlog_handle_app_install(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = v16;
          v44 = v43;
          v45 = "ATXAppInstallMonitor: LS notification: Backdating install date for system or internal app that is not approved or new in the current OS version - %@";
LABEL_43:
          _os_log_impl(&dword_2263AA000, v44, OS_LOG_TYPE_DEFAULT, v45, buf, 0xCu);
        }

LABEL_44:

        v20 = v41;
LABEL_45:
        [v51 setObject:v20 forKeyedSubscript:v16];

        v14 = 0x277CEB000;
LABEL_46:

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v13);
  }

  return v51;
}

- (void)handleInstallationOfApps:(id)apps isFromNotification:(BOOL)notification andBackdate:(BOOL)backdate
{
  v8 = [(_ATXAppInstallMonitor *)self _appInfoDictWithBackDate:backdate isFromNotification:notification newApps:apps];
  allKeys = [v8 allKeys];
  v7 = [allKeys count];

  if (v7)
  {
    [(_ATXAppInstallMonitor *)self notifyInstallationOfAppsWithInstallDictionary:v8];
  }
}

- (void)handleUninstallationOfApps:(id)apps
{
  v13 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v5 = [(_ATXAppInstallMonitor *)self webClipsForRemovedApps:appsCopy];
  v6 = __atxlog_handle_default(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = appsCopy;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Removing data for uninstalled app(s): %@ and app clip(s): %@", &v9, 0x16u);
  }

  v7 = [appsCopy arrayByAddingObjectsFromArray:v5];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
  if ([appsCopy count])
  {
    [(_ATXAppInstallMonitor *)self notifyUninstallationOfAppsWithBundleIdsToRemoveSet:v8];
  }
}

- (void)notifyInstallationOfAppsWithInstallDictionary:(id)dictionary
{
  v8 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = __atxlog_handle_app_install(dictionaryCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = dictionaryCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXAppInstallMonitor: Received app install notification: %@", &v6, 0xCu);
  }

  [_ATXInternalInstallNotification postNotificationWithInstallDictionary:dictionaryCopy];
  [(_ATXAppInfoManager *)self->_appInfoManager handleAppInstallWithInstallDict:dictionaryCopy];
  ATXUpdatePredictionsImmediatelyWithReason(16);
}

- (void)notifyUninstallationOfAppsWithBundleIdsToRemoveSet:(id)set
{
  histogramBundleIdTable = self->_histogramBundleIdTable;
  setCopy = set;
  [_ATXInternalUninstallNotification postNotificationWithUninstallSet:setCopy histogramBundleIdTable:histogramBundleIdTable];
  [(_ATXAppInfoManager *)self->_appInfoManager handleAppUninstallWithUninstalledAppSet:setCopy];

  v7 = __atxlog_handle_default(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "App install monitor got app uninstall notification", v8, 2u);
  }

  ATXUpdatePredictionsImmediatelyWithReason(16);
}

- (id)webClipsForRemovedApps:(id)apps
{
  v19 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = appsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ATXWebClipDataStore *)self->_webClipDataStore webClipBundleIdsForAppClip:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)_fetchAllAppsFromDatastore
{
  allApps = [(_ATXAppInfoManager *)self->_appInfoManager allApps];
  v3 = [allApps mutableCopy];

  return v3;
}

- (id)_fetchAllAppsWithInstallDateFromDatastore
{
  allAppsWithInstallDate = [(_ATXAppInfoManager *)self->_appInfoManager allAppsWithInstallDate];
  v3 = [allAppsWithInstallDate mutableCopy];

  return v3;
}

+ (id)removeIntersectionBetweenSet:(id)set set:(id)a4
{
  setCopy = set;
  v6 = a4;
  v7 = setCopy;
  v8 = v6;
  v9 = [v8 count];
  v10 = v8;
  v11 = v7;
  if (v9 < [v7 count])
  {

    v10 = v7;
    v11 = v8;
  }

  v12 = [v11 mutableCopy];
  [v12 intersectSet:v10];
  [v7 minusSet:v12];
  [v8 minusSet:v12];

  return v12;
}

- (void)setUpdateCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  updateCompletionBlock = self->_updateCompletionBlock;
  self->_updateCompletionBlock = v4;

  MEMORY[0x2821F96F8](v4, updateCompletionBlock);
}

- (void)receivedInstallNotification:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Invalid value for kLSNotificationBundleIDsKey in install notification: %@", &v2, 0xCu);
}

+ (void)appInfoDictWithBackDate:(os_log_t)log assetData:newPreInstalledAppSet:isFromNotification:newApps:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "ATXAppInstallMonitor: LS app registration date shouldn't be nil, falling back to now", buf, 2u);
}

@end