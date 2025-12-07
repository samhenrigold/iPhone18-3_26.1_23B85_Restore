@interface CADServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CADServer)initWithModules:(id)modules;
- (unint64_t)_contactsAuthorization;
- (unint64_t)_lastKnownContactsAuthorization;
- (void)_cleanupChangeTablesInDatabase:(CalDatabase *)database;
- (void)_clientConnectionDied:(id)died;
- (void)_deactivateAndExit;
- (void)_dumpState;
- (void)_exit;
- (void)_finishInitializationWithDataAvailable;
- (void)_handleDatabaseChanged;
- (void)_handleXPCConnection:(id)connection;
- (void)_migrateIfNeeded;
- (void)_protectedDataDidBecomeAvailable;
- (void)_registerActivityWithIdentifier:(const char *)identifier block:(id)block;
- (void)_registerContactsAccess;
- (void)_registerForAlarmEvents;
- (void)_registerForChangeTableCleanup;
- (void)_registerForDatabaseCleanup;
- (void)_registerForNotifications;
- (void)_registerForOccurrenceCacheUpdate;
- (void)_registerMaintenanceActivities;
- (void)_setUpSignalHandlers;
- (void)_setupBirthdayListener;
- (void)_startBirthdayListener;
- (void)_tearDownSignalHandlers;
- (void)_trimExtendAndUpdateOccurrenceCache:(BOOL)cache;
- (void)activate;
- (void)cleanupDatabase:(CalDatabase *)database;
- (void)deactivate;
- (void)dealloc;
- (void)handleDistributeChangeReport:(id)report;
- (void)handlePostChangeNote:(id)note connection:(id)connection processName:(id)name;
- (void)initiateAuthenticationForAppProtectionForClientConnection:(id)connection completion:(id)completion;
- (void)initiateReminderAuthenticationForAppProtectionForClientConnection:(id)connection completion:(id)completion;
@end

@implementation CADServer

void __38__CADServer__registerForNotifications__block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v37 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]);
  v26 = [MEMORY[0x277CCACA8] stringWithCString:string encoding:1];
  v4 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v33 = string;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_DEBUG, "Beginning XPC transaction for com.apple.notifyd.matching notification named %s", buf, 0xCu);
  }

  v25 = os_transaction_create();
  if (!strcmp(string, [*MEMORY[0x277CF7908] UTF8String]))
  {
    v7 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_INFO, "SignificantTimeChangeNotification fired", buf, 2u);
    }

    _CalTimeZoneForceUpdate();
    [*(a1 + 32) _trimExtendAndUpdateOccurrenceCache:0];
    goto LABEL_30;
  }

  if (!strcmp(string, "com.apple.mobilecal.timezonechanged"))
  {
    _CalTimeZoneForceUpdate();
    [*(a1 + 32) _trimExtendAndUpdateOccurrenceCache:0];
    v8 = CADLogHandle;
    if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v9 = "Reloading widget timeline because the timeZone or timeZoneOverride changed";
LABEL_28:
    _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    goto LABEL_29;
  }

  if (!strcmp(string, "com.apple.mobilecal.preference.notification.overlayCalendarID"))
  {
    v8 = CADLogHandle;
    if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v9 = "Reloading widget timeline because the alternate calendar (overlay calendar) changed";
    goto LABEL_28;
  }

  if (!strcmp(string, [*MEMORY[0x277CF7898] UTF8String]))
  {
    v10 = EKWeakLinkClass();
    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 performSelector:sel_sharedListener];
      if (objc_opt_respondsToSelector())
      {
        [v11 performSelector:sel_reset];
      }
    }

    goto LABEL_30;
  }

  if (!strcmp(string, "com.apple.mobilecal.preference.notification.weekStart"))
  {
    v8 = CADLogHandle;
    if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v9 = "Reloading widget timeline because of change in weekStart preference";
    goto LABEL_28;
  }

  if (!strcmp(string, "com.apple.mobile.keybagd.first_unlock"))
  {
    v22 = *(a1 + 32);
    v23 = *(v22 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__CADServer__registerForNotifications__block_invoke_83;
    block[3] = &unk_27851AAD8;
    block[4] = v22;
    dispatch_async(v23, block);
    goto LABEL_30;
  }

  if (strcmp(string, "com.apple.eventkit.preference.notification.UnselectedCalendarIdentifiersForFocusMode"))
  {
    if (strcmp(string, "com.apple.accessibility.prefers.horizontal.text"))
    {
      if (!strcmp(string, *MEMORY[0x277CEBE50]))
      {
        v5 = CADLogHandle;
        if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
        {
LABEL_55:
          [MEMORY[0x277CF7858] refreshEventWidgets];
          goto LABEL_30;
        }

        *buf = 0;
        v6 = "Reloading widget timeline because AppProtection hidden apps changed";
      }

      else
      {
        if (strcmp(string, *MEMORY[0x277CEBE60]))
        {
          goto LABEL_30;
        }

        v5 = CADLogHandle;
        if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        *buf = 0;
        v6 = "Reloading widget timeline because AppProtection locked apps changed";
      }

      _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      goto LABEL_55;
    }

    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Reloading widget timeline because AXSPrefersHorizontalTextLayout changed";
      goto LABEL_28;
    }

LABEL_29:
    [MEMORY[0x277CF7858] refreshEventWidgets];
    [MEMORY[0x277CF7858] refreshDateWidgets];
    goto LABEL_30;
  }

  CalDatabaseRequestApplicationSnapshotUpdateWithRateLimiter();
  v24 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v24, OS_LOG_TYPE_DEFAULT, "Reloading widget timeline because focus configuration changed", buf, 2u);
  }

  CalDatabaseRequestWidgetRefreshWithRateLimiter();
LABEL_30:
  v12 = CADServerLogHandle;
  if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v12, OS_LOG_TYPE_DEFAULT, "Forwarding darwin notifications to modules.", buf, 2u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [*(a1 + 32) modules];
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        [v18 receivedNotificationNamed:v26];
        v19 = CADServerLogHandle;
        if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v33 = v26;
          v34 = 2112;
          v35 = v18;
          _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_DEFAULT, "Forwarded darwin notification named: %{public}@ to module: %@.", buf, 0x16u);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v15);
  }

  v20 = CADServerLogHandle;
  if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_DEFAULT, "Finished forwarding darwin notifications to modules.", buf, 2u);
  }

  v21 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v33 = string;
    _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_DEBUG, "Ending XPC transaction for com.apple.notifyd.matching notification named %s", buf, 0xCu);
  }
}

- (CADServer)initWithModules:(id)modules
{
  v51 = *MEMORY[0x277D85DE8];
  modulesCopy = modules;
  v48.receiver = self;
  v48.super_class = CADServer;
  v5 = [(CADServer *)&v48 init];
  if (v5)
  {
    v6 = os_transaction_create();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__CADServer_initWithModules___block_invoke;
    block[3] = &unk_27851AAD8;
    v7 = v5;
    v9 = v7;
    v47 = v7;
    if (initWithModules__onceToken != -1)
    {
      dispatch_once(&initWithModules__onceToken, block);
    }

    CADLogInitIfNeeded(v7, v8);
    v10 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      p_isa = &v9->super.isa;
      _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_DEBUG, "Server launch sequence commencing.  Server: [%@]", buf, 0xCu);
    }

    objc_opt_class();
    v11 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v11 UTF8String];

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(uTF8String, v13);
    [(CADServer *)v9 setWorkQueue:v14];

    [(CADServer *)v9 _setUpSignalHandlers];
    v15 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connectionLock = v9->_connectionLock;
    v9->_connectionLock = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clientConnections = v9->_clientConnections;
    v9->_clientConnections = v17;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, DefaultCalendarChanged, *MEMORY[0x277CF7680], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, SystemLanguageChanged, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_CADDaemonStartedNotification", 0, 0, 1u);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("initDataFirstUnlockQueue", v20);
    initDataFirstUnlockQueue = v9->_initDataFirstUnlockQueue;
    v9->_initDataFirstUnlockQueue = v21;

    v23 = dispatch_queue_create("com.apple.calaccessd.xpcqueue", 0);
    xpcQueue = v9->_xpcQueue;
    v9->_xpcQueue = v23;

    mach_service = xpc_connection_create_mach_service("com.apple.calaccessd.xpc", v9->_xpcQueue, 1uLL);
    xpcConnection = v9->_xpcConnection;
    v9->_xpcConnection = mach_service;

    v27 = v9->_xpcConnection;
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __29__CADServer_initWithModules___block_invoke_6;
    v44 = &unk_27851B350;
    v28 = v9;
    v45 = v28;
    xpc_connection_set_event_handler(v27, &v41);
    v29 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v29, OS_LOG_TYPE_INFO, "25534103: Registering for notifications!", buf, 2u);
    }

    if ([MEMORY[0x277CF7850] isRunningAsSetupUser])
    {
      v30 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22430B000, v30, OS_LOG_TYPE_DEFAULT, "Not loading modules because we are running as the setup user", buf, 2u);
      }
    }

    else
    {
      [v28 setModules:modulesCopy];
    }

    v31 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v32 = dispatch_queue_create("com.apple.calaccessd.notificationqueue", v31);
    v33 = v28[1];
    v28[1] = v32;

    v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v35 = dispatch_queue_create("com.apple.calaccessd.alarm", v34);
    v36 = v28[14];
    v28[14] = v35;

    [v28 _registerMaintenanceActivities];
    v37 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.calaccessd"];
    v38 = v28[3];
    v28[3] = v37;

    [v28[3] setDelegate:v28];
    v39 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      p_isa = v28;
      _os_log_impl(&dword_22430B000, v39, OS_LOG_TYPE_DEBUG, "Server launch sequence complete.  Server: [%@]", buf, 0xCu);
    }

    [MEMORY[0x277CF77C0] addObserver:v28 selector:sel__handleDatabaseChanged name:*MEMORY[0x277CF7560]];
  }

  return v5;
}

void __29__CADServer_initWithModules___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = CADCalendarLogSubsystem;
  v3 = objc_opt_class();
  v7 = NSStringFromClass(v3);
  v4 = v7;
  v5 = os_log_create(v2, [v7 UTF8String]);
  v6 = CADServerLogHandle;
  CADServerLogHandle = v5;
}

void __29__CADServer_initWithModules___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (object_getClass(v3) == MEMORY[0x277D86450])
  {
    [*(a1 + 32) _handleXPCConnection:v3];
  }
}

- (void)dealloc
{
  [(CADServer *)self _tearDownSignalHandlers];
  [self->_NSXPCListener invalidate];
  [self->_NSXPCListener setDelegate:0];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    xpc_connection_cancel(xpcConnection);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, *MEMORY[0x277CF7680], 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, 0, @"com.apple.language.changed", 0);
  v6.receiver = self;
  v6.super_class = CADServer;
  [(CADServer *)&v6 dealloc];
}

- (void)activate
{
  v3 = CADServerLogHandle;
  if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEFAULT, "Server activation requested.", buf, 2u);
  }

  workQueue = [(CADServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__CADServer_activate__block_invoke;
  block[3] = &unk_27851AAD8;
  block[4] = self;
  dispatch_sync(workQueue, block);

  if ([MEMORY[0x277CF77B8] hasBeenUnlockedSinceBoot])
  {
    initDataFirstUnlockQueue = self->_initDataFirstUnlockQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __21__CADServer_activate__block_invoke_21;
    v7[3] = &unk_27851AAD8;
    v7[4] = self;
    dispatch_async(initDataFirstUnlockQueue, v7);
  }

  else
  {
    v6 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_INFO, "The database is inaccessible.  Will not finish initialization until it becomes accessible.", buf, 2u);
    }
  }
}

void __21__CADServer_activate__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isActive];
  v3 = CADServerLogHandle;
  v4 = os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEFAULT, "Server is already active. No activation tasks to perform as a result.", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEFAULT, "Performing server activation tasks.", buf, 2u);
    }

    xpc_connection_resume(*(*(a1 + 32) + 32));
    v5 = CADServerLogHandle;
    if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 32);
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEFAULT, "Resumed XPC connection: %@.", buf, 0xCu);
    }

    [*(*(a1 + 32) + 24) resume];
    v7 = CADServerLogHandle;
    if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 24);
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_DEFAULT, "Resumed XPC listener: %@.", buf, 0xCu);
    }

    v9 = CADServerLogHandle;
    if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_DEFAULT, "Activating modules.", buf, 2u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = a1;
    v10 = [*(a1 + 32) modules];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          [v15 activate];
          v16 = CADServerLogHandle;
          if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v15;
            _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Activated module: %@.", buf, 0xCu);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v17 = CADServerLogHandle;
    if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_DEFAULT, "Finished activating modules.", buf, 2u);
    }

    [*(v18 + 32) _registerForAlarmEvents];
    [*(v18 + 32) _registerForNotifications];
    [*(v18 + 32) setActive:1];
  }
}

- (void)deactivate
{
  v3 = CADServerLogHandle;
  if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEFAULT, "Deactivating server.", buf, 2u);
  }

  workQueue = [(CADServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__CADServer_deactivate__block_invoke;
  block[3] = &unk_27851AAD8;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

void __23__CADServer_deactivate__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isActive];
  v3 = CADServerLogHandle;
  v4 = os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEFAULT, "Performing server deactivation tasks.", buf, 2u);
    }

    [*(a1 + 32) _tearDownSignalHandlers];
    v5 = CADServerLogHandle;
    if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEFAULT, "Tore down signal handlers.", buf, 2u);
    }

    v6 = CADServerLogHandle;
    if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_DEFAULT, "Deactivating modules.", buf, 2u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [*(a1 + 32) modules];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v23;
      *&v9 = 138412290;
      v21 = v9;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          [v13 deactivate];
          v14 = CADServerLogHandle;
          if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v27 = v13;
            _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_DEFAULT, "Deactivated module: %@.", buf, 0xCu);
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v10);
    }

    v15 = CADServerLogHandle;
    if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v15, OS_LOG_TYPE_DEFAULT, "Finished deactivating modules.", buf, 2u);
    }

    [*(*(a1 + 32) + 24) suspend];
    v16 = CADServerLogHandle;
    if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(a1 + 32) + 24);
      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Suspended XPC listener: %@.", buf, 0xCu);
    }

    v18 = *(a1 + 32);
    if (v18[4])
    {
      xpc_connection_suspend(v18[4]);
      v19 = CADServerLogHandle;
      if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(*(a1 + 32) + 32);
        *buf = 138412290;
        v27 = v20;
        _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_DEFAULT, "Suspended XPC connection: %@.", buf, 0xCu);
      }

      v18 = *(a1 + 32);
    }

    [(xpc_connection_t *)v18 setActive:0];
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEFAULT, "Server is already inactive. No deactivation tasks to perform as a result.", buf, 2u);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  isRunningAsSetupUser = [MEMORY[0x277CF7850] isRunningAsSetupUser];
  if (isRunningAsSetupUser)
  {
    v9 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_ERROR, "Rejecting XPC connection because we are running as the setup user", buf, 2u);
    }
  }

  else
  {
    [(NSLock *)self->_connectionLock lock];
    v10 = [CADAuditTokenTCCPermissionChecker alloc];
    if (connectionCopy)
    {
      objc_msgSend_auditToken(connectionCopy);
    }

    else
    {
      *buf = 0u;
      v29 = 0u;
    }

    v11 = [(CADAuditTokenTCCPermissionChecker *)v10 initWithAuditToken:buf];
    v12 = [[ClientConnection alloc] initWithXPCConnection:connectionCopy tccPermissionChecker:v11];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v12);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __48__CADServer_listener_shouldAcceptNewConnection___block_invoke;
    v24[3] = &unk_27851B378;
    objc_copyWeak(&v25, buf);
    objc_copyWeak(&v26, &location);
    [connectionCopy setInterruptionHandler:v24];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __48__CADServer_listener_shouldAcceptNewConnection___block_invoke_24;
    v21[3] = &unk_27851B378;
    objc_copyWeak(&v22, buf);
    objc_copyWeak(&v23, &location);
    [connectionCopy setInvalidationHandler:v21];
    [(NSMutableSet *)self->_clientConnections addObject:v12];
    [(NSLock *)self->_connectionLock unlock];
    cadOperationProxy = [(ClientConnection *)v12 cadOperationProxy];
    v14 = GetSharedXPCInterfaceForCADInterface();
    [connectionCopy setExportedObject:cadOperationProxy];
    [connectionCopy setExportedInterface:v14];
    v15 = GetSharedXPCInterfaceForCADClientInterface();
    [connectionCopy setRemoteObjectInterface:v15];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__CADServer_listener_shouldAcceptNewConnection___block_invoke_25;
    v18[3] = &unk_27851AFA8;
    v18[4] = self;
    v16 = v12;
    v19 = v16;
    v20 = connectionCopy;
    [(CADServer *)self initiateAuthenticationForAppProtectionForClientConnection:v16 completion:v18];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  return isRunningAsSetupUser ^ 1;
}

void __48__CADServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 identity];
      v7 = [v6 pid];
      v8 = [v3 identity];
      v9 = [v8 clientName];
      v10[0] = 67109378;
      v10[1] = v7;
      v11 = 2112;
      v12 = v9;
      _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_ERROR, "Connection from process %i (%@) was interrupted unexpectedly", v10, 0x12u);
    }

    [v3 releaseProxy];
    if (WeakRetained)
    {
      [WeakRetained _clientConnectionDied:v3];
    }
  }
}

void __48__CADServer_listener_shouldAcceptNewConnection___block_invoke_24(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      v6 = [v3 identity];
      v7 = [v6 pid];
      v8 = [v3 identity];
      v9 = [v8 clientName];
      v10[0] = 67109378;
      v10[1] = v7;
      v11 = 2112;
      v12 = v9;
      _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_INFO, "Client disconnected: %i (%@)", v10, 0x12u);
    }

    [v3 releaseProxy];
    if (WeakRetained)
    {
      [WeakRetained _clientConnectionDied:v3];
    }
  }
}

void __48__CADServer_listener_shouldAcceptNewConnection___block_invoke_25(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__CADServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v3[3] = &unk_27851AAD8;
  v4 = *(a1 + 48);
  [v1 initiateReminderAuthenticationForAppProtectionForClientConnection:v2 completion:v3];
}

- (void)_handleDatabaseChanged
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_connectionLock lock];
  v3 = [(NSMutableSet *)self->_clientConnections copy];
  [(NSLock *)self->_connectionLock unlock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) handleDatabaseChanged];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_clientConnectionDied:(id)died
{
  connectionLock = self->_connectionLock;
  diedCopy = died;
  [(NSLock *)connectionLock lock];
  [(NSMutableSet *)self->_clientConnections removeObject:diedCopy];

  v6 = self->_connectionLock;

  [(NSLock *)v6 unlock];
}

- (void)_handleXPCConnection:(id)connection
{
  v13 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  pid = xpc_connection_get_pid(connectionCopy);
  memset(buffer, 0, sizeof(buffer));
  if (proc_name(pid, buffer, 0x100u))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
  }

  else
  {
    v6 = 0;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __34__CADServer__handleXPCConnection___block_invoke;
  handler[3] = &unk_27851B3A0;
  handler[4] = self;
  v10 = connectionCopy;
  v11 = v6;
  v7 = v6;
  v8 = connectionCopy;
  xpc_connection_set_event_handler(v8, handler);
  xpc_connection_resume(v8);
}

void __34__CADServer__handleXPCConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 != MEMORY[0x277D863F0] && v3 != MEMORY[0x277D863F8])
  {
    xdict = v3;
    Class = object_getClass(v3);
    v4 = xdict;
    if (Class == MEMORY[0x277D86468])
    {
      string = xpc_dictionary_get_string(xdict, "function");
      v8 = strlen(string);
      if (!strncmp(string, "postchangenote", v8))
      {
        [*(a1 + 32) handlePostChangeNote:xdict connection:*(a1 + 40) processName:*(a1 + 48)];
      }

      else
      {
        v9 = strncmp(string, "distribute_change_report", v8);
        v4 = xdict;
        if (v9)
        {
          goto LABEL_11;
        }

        [*(a1 + 32) handleDistributeChangeReport:xdict];
      }

      v4 = xdict;
    }
  }

LABEL_11:
}

- (void)handlePostChangeNote:(id)note connection:(id)connection processName:(id)name
{
  xdict = note;
  nameCopy = name;
  connectionCopy = connection;
  int64 = xpc_dictionary_get_int64(xdict, "changeType");
  xpc_dictionary_get_int64(xdict, "changeReason");
  string = xpc_dictionary_get_string(xdict, "clientName");
  if (string)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  }

  else
  {
    v11 = 0;
  }

  v12 = xpc_dictionary_get_string(xdict, "databasePath");
  if (!v12)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
  if (!v13)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_14;
  }

  v14 = [MEMORY[0x277CF7518] changeTrackingForDatabaseWithPath:v13];
  if (v14)
  {
    v15 = xpc_dictionary_get_value(xdict, "changes");
    v16 = xpc_dictionary_get_value(xdict, "deletes");
    v17 = v16;
    if (v15 && v16)
    {
      ArrayOfRecordIDsFromXPCArray = createArrayOfRecordIDsFromXPCArray(v15);
      cf = createArrayOfRecordIDsFromXPCArray(v17);
      [v14 addChangeset:ArrayOfRecordIDsFromXPCArray deletes:cf clientID:0 changeType:int64];
      CFRelease(ArrayOfRecordIDsFromXPCArray);
      CFRelease(cf);
    }

    else
    {
      [v14 clearAllChangesets];
    }
  }

LABEL_14:
  xpc_dictionary_get_BOOL(xdict, "postnotificationsynchronously");
  _CalDatabasePostDBOrSyncStatusChangeNotification();

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_BOOL(reply, "notificationwasposted", 1);
  xpc_connection_send_message(connectionCopy, reply);
}

- (void)handleDistributeChangeReport:(id)report
{
  v27 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  length = 0;
  data = xpc_dictionary_get_data(reportCopy, "report", &length);
  if (data)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:data length:length freeWhenDone:0];
    v21 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v21];
    v7 = v21;
    if (v6)
    {
      string = xpc_dictionary_get_string(reportCopy, "databasePath");
      if (string)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        if (v9)
        {
          int64 = xpc_dictionary_get_int64(reportCopy, "auxDBID");
          v24[0] = v9;
          v23[0] = @"path";
          v23[1] = @"auxDBID";
          v11 = [MEMORY[0x277CCABB0] numberWithLongLong:int64];
          v23[2] = @"report";
          v24[1] = v11;
          v24[2] = v6;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

          LocalCenter = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(LocalCenter, *MEMORY[0x277CF7558], 0, v12, 1u);
        }

        else
        {
          v20 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_ERROR, "Invalid database path", buf, 2u);
          }
        }

        goto LABEL_16;
      }

      v19 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v16 = "No database path with change report";
        v17 = v19;
        v18 = 2;
        goto LABEL_12;
      }
    }

    else
    {
      v15 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v7;
        v16 = "Failed to deserialize report: %@";
        v17 = v15;
        v18 = 12;
LABEL_12:
        _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  v14 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_ERROR, "No change report found to distribute", buf, 2u);
  }

LABEL_17:
}

- (void)_finishInitializationWithDataAvailable
{
  if (self->_initializationFinished)
  {
    v2 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22430B000, v2, OS_LOG_TYPE_DEFAULT, "Initialization already finished; not doing it again", v5, 2u);
    }
  }

  else
  {
    self->_initializationFinished = 1;
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_DEFAULT, "Finishing initialization with data available", buf, 2u);
    }

    [(CADServer *)self _migrateIfNeeded];
    [(CADServer *)self _setupBirthdayListener];
  }
}

- (void)_protectedDataDidBecomeAvailable
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_INFO, "Protected data is now available.", buf, 2u);
  }

  [(CADServer *)self _finishInitializationWithDataAvailable];
  [(NSLock *)self->_connectionLock lock];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_clientConnections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v18 + 1) + 8 * v8++) clearCachedAuthorizationStatus];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  [(NSLock *)self->_connectionLock unlock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  modules = [(CADServer *)self modules];
  v10 = [modules countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(modules);
        }

        [*(*(&v14 + 1) + 8 * v13++) protectedDataDidBecomeAvailable];
      }

      while (v11 != v13);
      v11 = [modules countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v11);
  }
}

- (void)_migrateIfNeeded
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_UTILITY, 0);

  v3 = dispatch_queue_create("migrationQ", attr);
  dispatch_async(v3, &__block_literal_global_24);
}

- (void)initiateAuthenticationForAppProtectionForClientConnection:(id)connection completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  permissionValidator = [connectionCopy permissionValidator];
  if (([permissionValidator hasCalendarTCCBypassEntitlement] & 1) == 0)
  {

    goto LABEL_6;
  }

  permissionValidator2 = [connectionCopy permissionValidator];
  testingAccessLevelGranted = [permissionValidator2 testingAccessLevelGranted];

  if (testingAccessLevelGranted)
  {
LABEL_6:
    completionCopy[2](completionCopy);
    goto LABEL_9;
  }

  v10 = +[CADDefaultAppProtectionGuard shared];
  v11 = *MEMORY[0x277CF78A0];
  identity = [connectionCopy identity];
  v13 = identity;
  if (identity)
  {
    objc_msgSend_auditToken(identity);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__CADServer_initiateAuthenticationForAppProtectionForClientConnection_completion___block_invoke;
  v14[3] = &unk_278519DC8;
  v15 = completionCopy;
  [v10 initiateAuthenticationForApplicationWithBundleIdentifier:v11 onBehalfOfProcessWithAuditToken:v16 accessGrantedByEntitlement:0 completion:v14];

LABEL_9:
}

- (void)initiateReminderAuthenticationForAppProtectionForClientConnection:(id)connection completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  permissionValidator = [connectionCopy permissionValidator];
  allowsIntegrations = [permissionValidator allowsIntegrations];

  permissionValidator2 = [connectionCopy permissionValidator];
  if ([permissionValidator2 isFirstPartyCalendarApp])
  {

LABEL_3:
    completionCopy[2](completionCopy);
    goto LABEL_10;
  }

  permissionValidator3 = [connectionCopy permissionValidator];
  isCalendarWidgetExtension = [permissionValidator3 isCalendarWidgetExtension];

  if (!allowsIntegrations || isCalendarWidgetExtension)
  {
    goto LABEL_3;
  }

  v12 = +[CADDefaultAppProtectionGuard shared];
  v13 = *MEMORY[0x277CF7A98];
  identity = [connectionCopy identity];
  v15 = identity;
  if (identity)
  {
    objc_msgSend_auditToken(identity);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__CADServer_initiateReminderAuthenticationForAppProtectionForClientConnection_completion___block_invoke;
  v16[3] = &unk_278519DC8;
  v17 = completionCopy;
  [v12 initiateAuthenticationForApplicationWithBundleIdentifier:v13 onBehalfOfProcessWithAuditToken:v18 accessGrantedByEntitlement:1 completion:v16];

LABEL_10:
}

- (void)_setUpSignalHandlers
{
  signal(15, 1);
  signal(3, 1);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  v4 = [objc_alloc(MEMORY[0x277CF7830]) initWithSignal:15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __33__CADServer__setUpSignalHandlers__block_invoke;
  v14[3] = &unk_27851B3C8;
  objc_copyWeak(&v15, &location);
  [v4 setFireBlock:v14];
  [v3 addObject:v4];
  v5 = [objc_alloc(MEMORY[0x277CF7830]) initWithSignal:3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __33__CADServer__setUpSignalHandlers__block_invoke_61;
  v12[3] = &unk_27851B3C8;
  objc_copyWeak(&v13, &location);
  [v5 setFireBlock:v12];
  [v3 addObject:v5];
  v6 = [objc_alloc(MEMORY[0x277CF7830]) initWithSignal:29];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __33__CADServer__setUpSignalHandlers__block_invoke_62;
  v10 = &unk_27851B3C8;
  objc_copyWeak(&v11, &location);
  [v6 setFireBlock:&v7];
  [v3 addObject:{v6, v7, v8, v9, v10}];
  objc_storeStrong(&self->_signalSensors, v3);
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_66];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

void __33__CADServer__setUpSignalHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_22430B000, v2, OS_LOG_TYPE_DEBUG, "Received SIGTERM", v3, 2u);
  }

  [WeakRetained _deactivateAndExit];
}

void __33__CADServer__setUpSignalHandlers__block_invoke_61(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_22430B000, v2, OS_LOG_TYPE_DEBUG, "Received SIGQUIT", v3, 2u);
  }

  [WeakRetained _deactivateAndExit];
}

void __33__CADServer__setUpSignalHandlers__block_invoke_62(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_22430B000, v2, OS_LOG_TYPE_DEBUG, "Received SIGINFO.", v3, 2u);
  }

  [WeakRetained _dumpState];
}

void __33__CADServer__setUpSignalHandlers__block_invoke_63(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEBUG, "Starting sensor: [%@]", &v5, 0xCu);
  }

  [v2 startSensor];
  v4 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_DEBUG, "Started sensor: [%@]", &v5, 0xCu);
  }
}

- (void)_tearDownSignalHandlers
{
  [(NSArray *)self->_signalSensors enumerateObjectsUsingBlock:&__block_literal_global_68_0];
  signalSensors = self->_signalSensors;
  self->_signalSensors = 0;
}

void __36__CADServer__tearDownSignalHandlers__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEBUG, "Stopping sensor: [%@]", &v4, 0xCu);
  }

  [v2 stopSensor];
}

- (void)_trimExtendAndUpdateOccurrenceCache:(BOOL)cache
{
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_INFO, "25534103: Trim and extend caches", buf, 2u);
  }

  CalDatabaseEnumerateDatabases();
}

void __49__CADServer__trimExtendAndUpdateOccurrenceCache___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = CalDatabaseCopyEventOccurrenceCache();
  if (v2)
  {
    v3 = v2;
    CalEventOccurrenceCacheTrimExtendAndUpdate();

    CFRelease(v3);
  }
}

- (void)_registerForNotifications
{
  v3 = CADServerLogHandle;
  if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEFAULT, "Registering for notifications", buf, 2u);
  }

  notificationQueue = self->_notificationQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __38__CADServer__registerForNotifications__block_invoke;
  handler[3] = &unk_27851B350;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", notificationQueue, handler);
}

- (void)_registerForAlarmEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = CADServerLogHandle;
  if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEFAULT, "Registering for alarm events.", buf, 2u);
  }

  v4 = *MEMORY[0x277CF7880];
  alarmQueue = [(CADServer *)self alarmQueue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __36__CADServer__registerForAlarmEvents__block_invoke;
  handler[3] = &unk_27851B350;
  handler[4] = self;
  xpc_set_event_stream_handler(v4, alarmQueue, handler);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  modules = [(CADServer *)self modules];
  v7 = [modules countByEnumeratingWithState:&v11 objects:v17 count:16];
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

        [*(*(&v11 + 1) + 8 * v10++) didRegisterForAlarms];
      }

      while (v8 != v10);
      v8 = [modules countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v8);
  }
}

void __36__CADServer__registerForAlarmEvents__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = os_transaction_create();
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(v3, *MEMORY[0x277D86430])}];
  if (_block_invoke_onceToken != -1)
  {
    __36__CADServer__registerForAlarmEvents__block_invoke_cold_1();
  }

  v6 = [_block_invoke_dateFormatter stringFromDate:v4];
  v7 = CADServerLogHandle;
  if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = v5;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_DEFAULT, "Alarm triggered with name: %{public}@. Triggered date: %{public}@.", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [*(a1 + 32) modules];
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
        [v13 receivedAlarmNamed:v5];
        v14 = CADServerLogHandle;
        if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v23 = v5;
          v24 = 2112;
          v25 = v13;
          _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_DEFAULT, "Forwarded alarm named: %@ to module: %@.", buf, 0x16u);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

uint64_t __36__CADServer__registerForAlarmEvents__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _block_invoke_dateFormatter;
  _block_invoke_dateFormatter = v0;

  v2 = _block_invoke_dateFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
}

- (void)_registerMaintenanceActivities
{
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_INFO, "Registering maintenance activities.", v4, 2u);
  }

  [(CADServer *)self _registerForDatabaseCleanup];
  [(CADServer *)self _registerForAnalyticsCollection];
  [(CADServer *)self _registerForAttachmentCleanup];
  [(CADServer *)self _registerForChangeTableCleanup];
  [(CADServer *)self _registerForConferenceURLRenewal];
  [(CADServer *)self _registerForOccurrenceCacheUpdate];
}

- (void)_registerActivityWithIdentifier:(const char *)identifier block:(id)block
{
  blockCopy = block;
  v6 = *MEMORY[0x277D86238];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__CADServer__registerActivityWithIdentifier_block___block_invoke;
  v8[3] = &unk_27851B430;
  v9 = blockCopy;
  identifierCopy = identifier;
  v7 = blockCopy;
  xpc_activity_register(identifier, v6, v8);
}

void __51__CADServer__registerActivityWithIdentifier_block___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = *(a1 + 40);
    v7 = v4;
    v8 = [v5 stringWithUTF8String:v6];
    *buf = 138412290;
    v43 = v8;
    _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_INFO, "Beginning XPC transaction for activity with identifier: [%@].", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.calendarDaemon.registerActivity.%s", *(a1 + 40)];
  [v9 UTF8String];
  v10 = os_transaction_create();

  state = xpc_activity_get_state(v3);
  v12 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = *(a1 + 40);
    v15 = v12;
    v16 = [v13 stringWithUTF8String:v14];
    v17 = _CADStringFromXPCActivityState(state);
    *buf = 138412546;
    v43 = v16;
    v44 = 2112;
    v45 = v17;
    _os_log_impl(&dword_22430B000, v15, OS_LOG_TYPE_INFO, "Activity with identifier: [%@] is in [%@] state.", buf, 0x16u);
  }

  if (state == 2)
  {
    v24 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v25 = MEMORY[0x277CCACA8];
      v26 = *(a1 + 40);
      v27 = v24;
      v28 = [v25 stringWithUTF8String:v26];
      *buf = 138412290;
      v43 = v28;
      _os_log_impl(&dword_22430B000, v27, OS_LOG_TYPE_INFO, "Running activity with identifier: [%@].", buf, 0xCu);
    }

    if (![MEMORY[0x277CF7850] isRunningAsSetupUser])
    {
      (*(*(a1 + 32) + 16))();
      v34 = CADLogHandle;
      if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v35 = MEMORY[0x277CCACA8];
      v36 = *(a1 + 40);
      v18 = v34;
      v22 = [v35 stringWithUTF8String:v36];
      *buf = 138412290;
      v43 = v22;
      _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_INFO, "Finished running activity with identifier: [%@].", buf, 0xCu);
      goto LABEL_18;
    }

    v29 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v29, OS_LOG_TYPE_ERROR, "Skipping activity because we are running as the setup user", buf, 2u);
    }
  }

  else
  {
    if (!state)
    {
      v18 = xpc_activity_copy_criteria(v3);
      v19 = CADLogHandle;
      if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
      {
LABEL_19:

        goto LABEL_20;
      }

      v20 = MEMORY[0x277CCACA8];
      v21 = *(a1 + 40);
      v22 = v19;
      v23 = [v20 stringWithUTF8String:v21];
      *buf = 138412546;
      v43 = v18;
      v44 = 2112;
      v45 = v23;
      _os_log_impl(&dword_22430B000, v22, OS_LOG_TYPE_INFO, "Criteria: %@. Identifier: %@.", buf, 0x16u);

LABEL_18:
      goto LABEL_19;
    }

    v30 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v31 = v30;
      v32 = _CADStringFromXPCActivityState(state);
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 40)];
      *buf = 138412546;
      v43 = v32;
      v44 = 2112;
      v45 = v33;
      _os_log_impl(&dword_22430B000, v31, OS_LOG_TYPE_INFO, "Will not process activity state [%@]. Identifier: [%@].", buf, 0x16u);
    }
  }

LABEL_20:
  v37 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    v38 = MEMORY[0x277CCACA8];
    v39 = *(a1 + 40);
    v40 = v37;
    v41 = [v38 stringWithUTF8String:v39];
    *buf = 138412290;
    v43 = v41;
    _os_log_impl(&dword_22430B000, v40, OS_LOG_TYPE_INFO, "Ending XPC transaction for activity with identifier: [%@].", buf, 0xCu);
  }
}

- (void)_registerForDatabaseCleanup
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__CADServer__registerForDatabaseCleanup__block_invoke;
  v2[3] = &unk_27851AAD8;
  v2[4] = self;
  [(CADServer *)self _registerActivityWithIdentifier:"com.apple.calendar.daemon.databasecleanup" block:v2];
}

void __40__CADServer__registerForDatabaseCleanup__block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCreateWithOptions();
  if (v2)
  {
    v3 = v2;
    CalDatabaseSetChangeLoggingEnabled();
    [*(a1 + 32) cleanupDatabase:v3];

    CFRelease(v3);
  }

  else
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_ERROR, "WARNING: Database is nil. Cannot perform identity orphan cleanup as a result.", v5, 2u);
    }
  }
}

void __42__CADServer__registerForAttachmentCleanup__block_invoke()
{
  v0 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v0, OS_LOG_TYPE_DEFAULT, "Cleaning up orphaned attachments", buf, 2u);
  }

  +[LocalAttachmentCleanUpSupport cleanUpOrphanedFiles];
  v1 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_22430B000, v1, OS_LOG_TYPE_DEFAULT, "Finished cleaning up orphaned attachments", v2, 2u);
  }
}

- (void)_registerForChangeTableCleanup
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__CADServer__registerForChangeTableCleanup__block_invoke;
  v2[3] = &unk_27851AAD8;
  v2[4] = self;
  [(CADServer *)self _registerActivityWithIdentifier:"com.apple.calendar.daemon.changetablecleanup" block:v2];
}

void __43__CADServer__registerForChangeTableCleanup__block_invoke(uint64_t a1)
{
  v2 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up change tables", buf, 2u);
  }

  v3 = CalDatabaseCreateWithOptions();
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) _cleanupChangeTablesInDatabase:v3];
    CFRelease(v4);
    v5 = CADLogHandle;
    if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v12 = 0;
    v6 = "Finished cleaning up change tables";
    v7 = &v12;
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v10 = CADLogHandle;
    if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v11 = 0;
    v6 = "WARNING: Database is nil. Cannot clean up change tables as a result.";
    v7 = &v11;
    v8 = v10;
    v9 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_22430B000, v8, v9, v6, v7, 2u);
}

- (void)_registerForOccurrenceCacheUpdate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__CADServer__registerForOccurrenceCacheUpdate__block_invoke;
  v2[3] = &unk_27851AAD8;
  v2[4] = self;
  [(CADServer *)self _registerActivityWithIdentifier:"com.apple.calendar.daemon.occurrencecacheupdate" block:v2];
}

- (void)cleanupDatabase:(CalDatabase *)database
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    databaseCopy = database;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_INFO, "Performing database cleanup. Database: %@", &v5, 0xCu);
  }

  CalDatabaseCleanUpDeclinedEvents();
  CalIdentityGarbageCollectOrphans();
  CalDatabaseCleanupDanglers();
}

- (void)_cleanupChangeTablesInDatabase:(CalDatabase *)database
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = +[CADIdleChangeTrackingCleanupInfo serverIdleChangeTrackingCleanupInfo];
  v5 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    databaseCopy = database;
    _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_INFO, "Performing idle change-tracking client cleanup. Idle change tracking cleanup info: %@. Database: %@.", &v6, 0x16u);
  }

  [v4 languishPeriod];
  [v4 numberOfChanges];
  CFAbsoluteTimeGetCurrent();
  CalDatabasePurgeIdlePersistentChangeTrackingClients();
}

- (unint64_t)_lastKnownContactsAuthorization
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"CADLastKnownContactsAuthorization"];

  return v3;
}

- (unint64_t)_contactsAuthorization
{
  v2 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  [*MEMORY[0x277CF78A0] UTF8String];
  v3 = tcc_identity_create();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("contactsAuthQueue", v4);

  v6 = tcc_server_create();
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  tcc_server_message_get_authorization_records_by_identity();
  v7 = v12[3];
  _Block_object_dispose(v9, 8);

  _Block_object_dispose(&v11, 8);
  return v7;
}

void __35__CADServer__contactsAuthorization__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = tcc_authorization_record_get_authorization_right();
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(*(a1 + 32) + 8) + 24);
      v12 = 134217984;
      v13 = v7;
      v8 = "Contacts authorization is %llu";
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&dword_22430B000, v9, v10, v8, &v12, 0xCu);
    }
  }

  else if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v11 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = a3;
      v8 = "Error getting contacts authorization: %@";
      v9 = v11;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }
}

- (void)_registerContactsAccess
{
  v2 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  [v2 requestAccessForEntityType:0 completionHandler:&__block_literal_global_119];
}

- (void)_setupBirthdayListener
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (MGGetBoolAnswer())
  {
    _contactsAuthorization = [(CADServer *)self _contactsAuthorization];
    v4 = _contactsAuthorization;
    if (_contactsAuthorization == 2)
    {
      [(CADServer *)self _startBirthdayListener];
      if ([(CADServer *)self _lastKnownContactsAuthorization]!= 2)
      {
        +[CADBirthdayListener reset];
      }
    }

    else
    {
      if (_contactsAuthorization == 1)
      {
        v5 = *MEMORY[0x277D6C100];
        v15 = *MEMORY[0x277CF78A0];
        v16 = v5;
        v6 = MEMORY[0x277CBEA60];
        v7 = v5;
        v8 = [v6 arrayWithObjects:&v15 count:1];
        v17[0] = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

        v10 = _CFXPCCreateXPCObjectFromCFObject();
        v11 = tcc_events_filter_create_with_criteria();
        v12 = dispatch_queue_create("com.apple.calaccessd.tccQ", 0);
        tccQueue = self->_tccQueue;
        self->_tccQueue = v12;

        tcc_events_subscribe();
        return;
      }

      [(CADServer *)self _registerContactsAccess];
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setInteger:v4 forKey:@"CADLastKnownContactsAuthorization"];
  }

  else
  {

    [(CADServer *)self _startBirthdayListener];
  }
}

uint64_t __35__CADServer__setupBirthdayListener__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  authorization_right = tcc_authorization_record_get_authorization_right();
  v5 = *(a1 + 32);
  if (authorization_right == 2)
  {
    [v5 _startBirthdayListener];
  }

  else
  {
    [v5 _registerContactsAccess];
  }

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 setInteger:authorization_right forKey:@"CADLastKnownContactsAuthorization"];

  return MEMORY[0x2821D0B00]("com.apple.calaccessd");
}

- (void)_startBirthdayListener
{
  v2 = dispatch_time(0, 3000000000);
  v3 = MEMORY[0x277D85CD0];

  dispatch_after(v2, v3, &__block_literal_global_129);
}

- (void)_deactivateAndExit
{
  [(CADServer *)self deactivate];

  [(CADServer *)self _exit];
}

- (void)_exit
{
  workQueue = [(CADServer *)self workQueue];
  dispatch_sync(workQueue, &__block_literal_global_131);
}

uint64_t __18__CADServer__exit__block_invoke()
{
  v0 = CADServerLogHandle;
  if (os_log_type_enabled(CADServerLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_22430B000, v0, OS_LOG_TYPE_DEFAULT, "Exiting", v2, 2u);
  }

  return xpc_transaction_exit_clean();
}

- (void)_dumpState
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEBUG, "Dumping server state to the system log", buf, 2u);
  }

  NSLog(&cfstr_DumpingCalacce.isa);
  if ([(NSMutableSet *)self->_clientConnections count])
  {
    NSLog(&cfstr_LdConnectionS.isa, [(NSMutableSet *)self->_clientConnections count]);
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_clientConnections;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) dumpState];
        }

        while (v6 != v8);
        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    NSLog(&cfstr_NoConnections.isa);
  }
}

@end