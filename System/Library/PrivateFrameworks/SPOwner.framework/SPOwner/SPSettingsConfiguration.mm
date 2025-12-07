@interface SPSettingsConfiguration
- (NSDate)beaconZoneCreationDate;
- (NSDate)lastKeyRollDate;
- (NSNumber)beaconZoneCreationErrorCode;
- (NSSet)serviceDisabledReasons;
- (NSString)serviceState;
- (SPBeaconManagerXPCProtocol)proxy;
- (SPSettingsConfiguration)init;
- (id)serviceSettingsChangedNotificationToken;
- (id)serviceSettingsConfiguration;
- (void)_invalidate;
- (void)beginRefreshingServiceStateWithBlock:(id)block;
- (void)dealloc;
- (void)setServiceState:(id)state completion:(id)completion;
@end

@implementation SPSettingsConfiguration

- (NSDate)beaconZoneCreationDate
{
  sharedDefaults = [(SPSettingsConfiguration *)self sharedDefaults];
  v3 = [sharedDefaults objectForKey:@"SPBeaconZoneCreationDateKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)beaconZoneCreationErrorCode
{
  sharedDefaults = [(SPSettingsConfiguration *)self sharedDefaults];
  v3 = [sharedDefaults objectForKey:@"SPBeaconZoneCreationDateKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)lastKeyRollDate
{
  sharedDefaults = [(SPSettingsConfiguration *)self sharedDefaults];
  v3 = [sharedDefaults objectForKey:@"SPLastKeyRollDateKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)serviceSettingsConfiguration
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/db/searchparty/daemon/savedConfiguration.plist" isDirectory:1];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v2 error:0];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v3 objectForKeyedSubscript:{@"configurations", 0}];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:@"source"];
          if ([v10 isEqualToString:@"serviceSettings"])
          {
            v11 = v9;

            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SPSettingsConfiguration)init
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SPSettingsConfiguration;
  v2 = [(SPSettingsConfiguration *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchpartyd.settingsconfiguration", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v6;

    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606B50];
    v9 = [objc_alloc(MEMORY[0x277D07BA0]) initWithMachServiceName:@"com.apple.icloud.searchpartyd.beaconmanager" options:0 remoteObjectInterface:v8 interruptionHandler:0 invalidationHandler:0];
    serviceDescription = v2->_serviceDescription;
    v2->_serviceDescription = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"systemgroup.com.apple.icloud.searchpartyd.sharedsettings"];
    sharedDefaults = v2->_sharedDefaults;
    v2->_sharedDefaults = v11;

    v14 = LogCategory_ServiceState(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v2;
      _os_log_impl(&dword_2643D0000, v14, OS_LOG_TYPE_DEFAULT, "SPSettingsConfiguration: Created %@", buf, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_ServiceState(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPSettingsConfiguration: Dealloc %@", buf, 0xCu);
  }

  [(SPSettingsConfiguration *)self _invalidate];
  v4.receiver = self;
  v4.super_class = SPSettingsConfiguration;
  [(SPSettingsConfiguration *)&v4 dealloc];
}

- (void)_invalidate
{
  session = [(SPSettingsConfiguration *)self session];
  [session invalidate];

  [(SPSettingsConfiguration *)self setSession:0];
  serviceSettingsChangedNotificationToken = [(SPSettingsConfiguration *)self serviceSettingsChangedNotificationToken];
  [(SPSettingsConfiguration *)self setServiceSettingsChangedNotificationToken:0];
  if (serviceSettingsChangedNotificationToken)
  {
    [(SPSettingsConfiguration *)self fm_removeNotificationBlockObserver:serviceSettingsChangedNotificationToken];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.icloud.searchparty.ServiceSettingsChanged", 0);
}

- (void)beginRefreshingServiceStateWithBlock:(id)block
{
  blockCopy = block;
  serviceSettingsChangedNotificationToken = [(SPSettingsConfiguration *)self serviceSettingsChangedNotificationToken];

  if (serviceSettingsChangedNotificationToken)
  {
    v7 = LogCategory_ServiceState(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "beginRefreshingServiceStateWithBlock: already started.", buf, 2u);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SPSettingsConfiguration_beginRefreshingServiceStateWithBlock___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__SPSettingsConfiguration_beginRefreshingServiceStateWithBlock___block_invoke_2;
    aBlock[3] = &unk_279B59398;
    aBlock[4] = self;
    v19 = blockCopy;
    v8 = _Block_copy(aBlock);
    v9 = SPServiceSettingsChangedLocalNotification;
    notificationQueue = [(SPSettingsConfiguration *)self notificationQueue];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __64__SPSettingsConfiguration_beginRefreshingServiceStateWithBlock___block_invoke_3;
    v16 = &unk_279B5A7B0;
    v17 = v8;
    v11 = v8;
    v12 = [(SPSettingsConfiguration *)self fm_addNotificationBlockObserverForName:v9 object:self queue:notificationQueue usingBlock:&v13];
    [(SPSettingsConfiguration *)self setServiceSettingsChangedNotificationToken:v12, v13, v14, v15, v16];

    v11[2](v11);
  }
}

void __64__SPSettingsConfiguration_beginRefreshingServiceStateWithBlock___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, serviceSettingsChangedTrampoline, @"com.apple.icloud.searchparty.ServiceSettingsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void __64__SPSettingsConfiguration_beginRefreshingServiceStateWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) serviceState];
  v3 = [*(a1 + 32) serviceDisabledReasons];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)setServiceState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(SPSettingsConfiguration *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SPSettingsConfiguration_setServiceState_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = stateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = stateCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __54__SPSettingsConfiguration_setServiceState_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 setServiceState:*(a1 + 32) completion:*(a1 + 40)];
}

- (NSString)serviceState
{
  sharedDefaults = [(SPSettingsConfiguration *)self sharedDefaults];
  v3 = [sharedDefaults stringForKey:@"SPSettingsServiceStateKey"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"SPServiceStateEnabled";
  }

  v6 = v5;

  return &v5->isa;
}

- (NSSet)serviceDisabledReasons
{
  v2 = MEMORY[0x277CBEB98];
  sharedDefaults = [(SPSettingsConfiguration *)self sharedDefaults];
  v4 = [sharedDefaults arrayForKey:@"SPSettingsServiceDisabledReasonsKey"];
  v5 = [v2 setWithArray:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

- (SPBeaconManagerXPCProtocol)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  queue = [(SPSettingsConfiguration *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(SPSettingsConfiguration *)self session];

  if (!session)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    serviceDescription = [(SPSettingsConfiguration *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:serviceDescription];
    [(SPSettingsConfiguration *)self setSession:v7];

    v9 = LogCategory_ServiceState(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      serviceDescription2 = [(SPSettingsConfiguration *)self serviceDescription];
      machService = [serviceDescription2 machService];
      v16 = 138412290;
      v17 = machService;
      _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "SPSettingsConfiguration: Establishing XPC connection to %@", &v16, 0xCu);
    }

    session2 = [(SPSettingsConfiguration *)self session];
    [session2 resume];
  }

  session3 = [(SPSettingsConfiguration *)self session];
  proxy = [session3 proxy];

  return proxy;
}

- (id)serviceSettingsChangedNotificationToken
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceSettingsChangedNotificationToken);

  return WeakRetained;
}

@end