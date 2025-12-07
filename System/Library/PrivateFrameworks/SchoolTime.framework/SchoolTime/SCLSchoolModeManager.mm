@interface SCLSchoolModeManager
- (BOOL)isEligibleDevice:(id)device;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SCLSchoolModeManager)initWithConfiguration:(id)configuration;
- (id)activityCriteria;
- (id)descriptionBuilderForNRDevice:(id)device;
- (id)eligiblePairedDevices;
- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)hints;
- (void)_handleActivityStarted:(id)started;
- (void)_updateActivityRegistration;
- (void)clientProxy:(id)proxy didConnectWithPairingID:(id)d;
- (void)clientProxyDidInvalidate:(id)invalidate;
- (void)createControllerForDevice:(id)device;
- (void)dealloc;
- (void)handleDevicePairedNotification:(id)notification;
- (void)handleDeviceUnpairedNotification:(id)notification;
- (void)loadPairedDevices;
- (void)removeCoordinator:(id)coordinator;
- (void)start;
@end

@implementation SCLSchoolModeManager

- (SCLSchoolModeManager)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v31.receiver = self;
  v31.super_class = SCLSchoolModeManager;
  v5 = [(SCLSchoolModeManager *)&v31 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    coordinatorMap = v5->_coordinatorMap;
    v5->_coordinatorMap = strongToStrongObjectsMapTable;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clients = v5->_clients;
    v5->_clients = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v13 = dispatch_queue_attr_make_initially_inactive(v12);

    workloop = [configurationCopy workloop];
    v15 = dispatch_queue_create_with_target_V2("com.apple.schooltime.manager", v13, workloop);
    queue = v5->_queue;
    v5->_queue = v15;

    if ([(SCLSchoolModeManagerConfiguration *)v5->_configuration managesSchoolTimeSession])
    {
      v17 = [[SCLSuppressSchoolModeAssertionManager alloc] initWithTargetQueue:v5->_queue];
      supppressionManager = v5->_supppressionManager;
      v5->_supppressionManager = v17;
    }

    v19 = [[SCLInterruptBehaviorResolver alloc] initWithTargetQueue:v5->_queue];
    interruptBehaviorResolver = v5->_interruptBehaviorResolver;
    v5->_interruptBehaviorResolver = v19;

    v21 = [SCLTransportService alloc];
    v22 = v5->_queue;
    service = [configurationCopy service];
    v24 = [(SCLTransportService *)v21 initWithTargetQueue:v22 service:service];
    transportService = v5->_transportService;
    v5->_transportService = v24;

    v26 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.schooltime.schedule"];
    listener = v5->_listener;
    v5->_listener = v26;

    [(NSXPCListener *)v5->_listener _setQueue:v5->_queue];
    [(NSXPCListener *)v5->_listener setDelegate:v5];
    objc_initWeak(&location, v5);
    objc_copyWeak(&v29, &location);
    v5->_stateHandle = os_state_add_handler();
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v5;
}

uint64_t __46__SCLSchoolModeManager_initWithConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateDataWithHints:a2];

  return v4;
}

- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)hints
{
  configuration = [(SCLSchoolModeManager *)self configuration];
  deviceRegistry = [configuration deviceRegistry];
  v6 = [deviceRegistry getAllDevicesWithArchivedAltAccountDevicesMatching:&__block_literal_global_11];

  v7 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__SCLSchoolModeManager_stateDataWithHints___block_invoke_2;
  v13[3] = &unk_279B6CA50;
  v14 = v7;
  selfCopy = self;
  v16 = v6;
  v8 = v6;
  v9 = v7;
  [v9 appendBodySectionWithName:0 multilinePrefix:0 block:v13];
  build = [v9 build];
  v11 = SCLSStateDataWithTitleDescriptionAndHints(@"SCLSchoolModeManager", build);

  return v11;
}

uint64_t __43__SCLSchoolModeManager_stateDataWithHints___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) coordinatorMap];
  v4 = [v3 objectEnumerator];
  v5 = [v4 allObjects];
  [v2 appendArraySection:v5 withName:@"coordinators" skipIfEmpty:0];

  v6 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 8) allObjects];
  [v6 appendArraySection:v7 withName:@"clients" skipIfEmpty:0];

  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__SCLSchoolModeManager_stateDataWithHints___block_invoke_3;
  v11[3] = &unk_279B6CB80;
  v9 = *(a1 + 32);
  v11[4] = *(a1 + 40);
  return [v9 appendArraySection:v8 withName:@"devices" skipIfEmpty:0 objectTransformer:v11];
}

id __43__SCLSchoolModeManager_stateDataWithHints___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) descriptionBuilderForNRDevice:a2];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilderForNRDevice:(id)device
{
  v3 = MEMORY[0x277CF0C00];
  deviceCopy = device;
  v5 = [v3 builderWithObject:deviceCopy];
  pairingID = [deviceCopy pairingID];
  v7 = [v5 appendObject:pairingID withName:@"pairingID"];

  v8 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB60]];
  v9 = [v5 appendBool:v8 != 0 withName:@"hasPairingStorePath"];

  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB28]];
  v11 = [v5 appendBool:objc_msgSend(v10 withName:{"BOOLValue"), @"isAltAccount"}];

  v12 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB30]];

  v13 = [v5 appendBool:objc_msgSend(v12 withName:{"BOOLValue"), @"isArchived"}];

  return v5;
}

- (void)start
{
  v3 = _os_activity_create(&dword_264829000, "Start School Mode Manager", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v5 = scl_framework_log(v4);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Start School Mode Manager", &unk_26485B361, buf, 2u);
  }

  queue = [(SCLSchoolModeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SCLSchoolModeManager_start__block_invoke;
  block[3] = &unk_279B6C568;
  block[4] = self;
  v7 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  dispatch_async(queue, v7);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleDevicePairedNotification_ name:*MEMORY[0x277D2BC68] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleDeviceUnpairedNotification_ name:*MEMORY[0x277D2BC78] object:0];

  queue2 = [(SCLSchoolModeManager *)self queue];
  dispatch_activate(queue2);

  listener = [(SCLSchoolModeManager *)self listener];
  [listener resume];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SCLServerStartNotification", 0, 0, 0);
  os_activity_scope_leave(&state);
}

void __29__SCLSchoolModeManager_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) supppressionManager];
  [v2 activate];

  v3 = [*(a1 + 32) interruptBehaviorResolver];
  [v3 activate];

  [*(a1 + 32) loadPairedDevices];
  v4 = [*(a1 + 32) transportService];
  [v4 start];

  v5 = scl_framework_log([*(a1 + 32) _updateActivityRegistration]);
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Start School Mode Manager", &unk_26485B361, v6, 2u);
  }
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = SCLSchoolModeManager;
  [(SCLSchoolModeManager *)&v3 dealloc];
}

- (void)loadPairedDevices
{
  v17 = *MEMORY[0x277D85DE8];
  eligiblePairedDevices = [(SCLSchoolModeManager *)self eligiblePairedDevices];
  v4 = scl_pairing_log(eligiblePairedDevices);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = eligiblePairedDevices;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "Loading devices %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = eligiblePairedDevices;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SCLSchoolModeManager *)self createControllerForDevice:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)eligiblePairedDevices
{
  configuration = [(SCLSchoolModeManager *)self configuration];
  deviceRegistry = [configuration deviceRegistry];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SCLSchoolModeManager_eligiblePairedDevices__block_invoke;
  v7[3] = &unk_279B6CBA8;
  v7[4] = self;
  v5 = [deviceRegistry getAllDevicesWithArchivedAltAccountDevicesMatching:v7];

  return v5;
}

uint64_t __45__SCLSchoolModeManager_eligiblePairedDevices__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) isEligibleDevice:v3];
  v5 = scl_pairing_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 pairingID];
    v7 = [v3 valueForProperty:*MEMORY[0x277D2BB60]];
    v8 = [v3 valueForProperty:*MEMORY[0x277D2BB28]];
    v9 = [v8 BOOLValue];
    v10 = [v3 valueForProperty:*MEMORY[0x277D2BB30]];
    v12 = 134219266;
    v13 = v3;
    v14 = 2112;
    v15 = v6;
    v16 = 1024;
    v17 = v7 != 0;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = [v10 BOOLValue];
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&dword_264829000, v5, OS_LOG_TYPE_DEFAULT, "<NRDevice %p; pairingID=%@; hasPairingPath=%{BOOL}d; isAltAccount=%{BOOL}d; isArchived=%{BOOL}d> isEligible:%{BOOL}d", &v12, 0x2Eu);
  }

  return v4;
}

- (BOOL)isEligibleDevice:(id)device
{
  deviceCopy = device;
  configuration = [(SCLSchoolModeManager *)self configuration];
  v6 = SCLIsNRDeviceEligibleForSchoolTime(deviceCopy, [configuration allowsNonTinkerPairing]);

  return v6;
}

- (void)createControllerForDevice:(id)device
{
  v60 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_alloc_init(SCLSchoolModeCoordinatorConfiguration);
  [(SCLSchoolModeCoordinatorConfiguration *)v5 setNRDevice:deviceCopy];
  pairingID = [deviceCopy pairingID];
  v7 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB60]];
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v9 = [v8 URLByAppendingPathComponent:@"SchoolTime"];

  [(SCLSchoolModeCoordinatorConfiguration *)v5 setDirectoryURL:v9];
  [(SCLSchoolModeCoordinatorConfiguration *)v5 setSendsRemoteScheduleSettings:1];
  [(SCLSchoolModeCoordinatorConfiguration *)v5 setSendsRemoteHistoryItems:0];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB28]];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v56 = v7;
    v57 = pairingID;
    array = [MEMORY[0x277CBEB18] array];
    configuration = [(SCLSchoolModeManager *)self configuration];
    service = [configuration service];
    v16 = [service linkedDevicesWithRelationship:2];

    if (v16)
    {
      [array addObjectsFromArray:v16];
    }

    v54 = v16;
    configuration2 = [(SCLSchoolModeManager *)self configuration];
    service2 = [configuration2 service];
    devices = [service2 devices];

    if (devices)
    {
      [array addObjectsFromArray:devices];
    }

    v53 = devices;
    v55 = v9;
    configuration3 = [(SCLSchoolModeManager *)self configuration];
    deviceRegistry = [configuration3 deviceRegistry];
    v22 = [deviceRegistry deviceForNRDevice:deviceCopy fromIDSDevices:array];

    v24 = deviceCopy;
    if (!v22)
    {
      v25 = scl_pairing_log(v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [SCLSchoolModeManager createControllerForDevice:];
      }

      v24 = deviceCopy;
    }

    v51 = v24;
    v52 = array;
    [(SCLSchoolModeCoordinatorConfiguration *)v5 setIdsDevice:v22];
    v26 = [SCLTransportController alloc];
    configuration4 = [(SCLSchoolModeManager *)self configuration];
    deviceRegistry2 = [configuration4 deviceRegistry];
    configuration5 = [(SCLSchoolModeManager *)self configuration];
    service3 = [configuration5 service];
    uniqueIDOverride = [v22 uniqueIDOverride];
    v32 = [(SCLTransportController *)v26 initWithNRDevice:v24 deviceRegistry:deviceRegistry2 service:service3 deviceIdentifier:uniqueIDOverride];

    [(SCLSchoolModeCoordinatorConfiguration *)v5 setTransportController:v32];
    v9 = v55;
    v33 = [v55 URLByAppendingPathComponent:@"UnlockHistory.sqlite3"];
    v34 = [[SCLUnlockHistoryPersistentStore alloc] initWithURL:v33];
    [(SCLSchoolModeCoordinatorConfiguration *)v5 setHistoryStore:v34];

    deviceCopy = v51;
    v7 = v56;
    pairingID = v57;
  }

  else
  {
    v35 = scl_pairing_log(v12);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [SCLSchoolModeManager createControllerForDevice:v35];
    }

    [(SCLSchoolModeCoordinatorConfiguration *)v5 setSendsRemoteHistoryItems:0];
    [(SCLSchoolModeCoordinatorConfiguration *)v5 setSendsRemoteScheduleSettings:0];
    [(SCLSchoolModeCoordinatorConfiguration *)v5 setManuallyManagedOnly:1];
  }

  configuration6 = [(SCLSchoolModeManager *)self configuration];
  managesSchoolTimeSession = [configuration6 managesSchoolTimeSession];

  if (managesSchoolTimeSession)
  {
    v38 = [SCLSchoolModeServer alloc];
    queue = [(SCLSchoolModeManager *)self queue];
    supppressionManager = [(SCLSchoolModeManager *)self supppressionManager];
    v41 = v9;
    v42 = objc_opt_new();
    v43 = [(SCLSchoolModeServer *)v38 initWithQueue:queue suppressionManager:supppressionManager wakeScheduler:v42];

    v9 = v41;
    [(SCLSchoolModeCoordinatorConfiguration *)v5 setServer:v43];
    interruptBehaviorResolver = [(SCLSchoolModeManager *)self interruptBehaviorResolver];
    [(SCLSchoolModeServer *)v43 addObserver:interruptBehaviorResolver];
  }

  transportController = [(SCLSchoolModeCoordinatorConfiguration *)v5 transportController];

  if (transportController)
  {
    transportService = [(SCLSchoolModeManager *)self transportService];
    transportController2 = [(SCLSchoolModeCoordinatorConfiguration *)v5 transportController];
    [transportService addTransportController:transportController2];
  }

  queue2 = [(SCLSchoolModeManager *)self queue];
  [(SCLSchoolModeCoordinatorConfiguration *)v5 setTargetQueue:queue2];

  v49 = [[SCLSchoolModeCoordinator alloc] initWithConfiguration:v5];
  v50 = scl_pairing_log([(NSMapTable *)self->_coordinatorMap setObject:v49 forKey:pairingID]);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = pairingID;
    _os_log_impl(&dword_264829000, v50, OS_LOG_TYPE_DEFAULT, "Created pairing for pairingID %@", buf, 0xCu);
  }
}

- (void)handleDevicePairedNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SCLSchoolModeManager_handleDevicePairedNotification___block_invoke;
  v7[3] = &unk_279B6C5D8;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __55__SCLSchoolModeManager_handleDevicePairedNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = _os_activity_create(&dword_264829000, "Handle Device Paired", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v21.opaque[0] = 0;
  v21.opaque[1] = 0;
  os_activity_scope_enter(v2, &v21);
  v4 = scl_pairing_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "Device paired: %@", buf, 0xCu);
  }

  v6 = (a1 + 32);
  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x277D2BC38]];

  v9 = [v8 pairingID];
  if (!v9)
  {
    v14 = scl_pairing_log(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __55__SCLSchoolModeManager_handleDevicePairedNotification___block_invoke_cold_2(v6, v14, v15, v16, v17, v18, v19, v20);
    }

    goto LABEL_9;
  }

  v10 = [*(a1 + 40) coordinatorMap];
  v11 = [v10 objectForKey:v9];
  v12 = v11 == 0;

  if (!v12)
  {
    v14 = scl_pairing_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __55__SCLSchoolModeManager_handleDevicePairedNotification___block_invoke_cold_1();
    }

LABEL_9:

    goto LABEL_13;
  }

  if ([*(a1 + 40) isEligibleDevice:v8])
  {
    [*(a1 + 40) createControllerForDevice:v8];
  }

  [*(a1 + 40) _updateActivityRegistration];
LABEL_13:

  os_activity_scope_leave(&v21);
}

- (void)handleDeviceUnpairedNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SCLSchoolModeManager_handleDeviceUnpairedNotification___block_invoke;
  v7[3] = &unk_279B6C5D8;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __57__SCLSchoolModeManager_handleDeviceUnpairedNotification___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v37 = _os_activity_create(&dword_264829000, "Handle Device Unpaired", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v37, &state);
  v2 = [*(a1 + 32) userInfo];
  v39 = [v2 objectForKey:*MEMORY[0x277D2BC38]];

  v3 = [v39 pairingID];
  v40 = v3;
  if (v3)
  {
    v4 = scl_pairing_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) userInfo];
      *buf = 138543618;
      v53 = v40;
      v54 = 2112;
      v55 = v5;
      _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "Device unpaired: %{public}@ - %@", buf, 0x16u);
    }

    v6 = [*(a1 + 40) coordinatorMap];
    v38 = [v6 objectForKey:v40];

    if (v38)
    {
      [*(a1 + 40) removeCoordinator:?];
    }

    else
    {
      v15 = scl_pairing_log(v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v53 = v40;
        _os_log_impl(&dword_264829000, v15, OS_LOG_TYPE_DEFAULT, "No coordinator was found for pairingID %{public}@; attempting to manually remove unpaired coordinators", buf, 0xCu);
      }

      v16 = MEMORY[0x277CBEB58];
      v17 = [*(a1 + 40) coordinatorMap];
      v18 = [v17 keyEnumerator];
      v19 = [v18 allObjects];
      v20 = [v16 setWithArray:v19];

      [*(a1 + 40) eligiblePairedDevices];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v21 = v46 = 0u;
      v22 = [v21 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v22)
      {
        v23 = *v46;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v46 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v45 + 1) + 8 * i);
            v26 = [v25 pairingID];
            if (v26)
            {
              [v20 removeObject:v26];
            }

            else
            {
              v27 = scl_pairing_log(0);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v53 = v25;
                _os_log_error_impl(&dword_264829000, v27, OS_LOG_TYPE_ERROR, "%@ is missing a pairingID", buf, 0xCu);
              }
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v22);
      }

      v28 = [v20 count];
      if (v28)
      {
        v29 = scl_pairing_log(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          __57__SCLSchoolModeManager_handleDeviceUnpairedNotification___block_invoke_cold_1();
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v30 = v20;
        v31 = [v30 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v31)
        {
          v32 = *v42;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v42 != v32)
              {
                objc_enumerationMutation(v30);
              }

              v34 = *(*(&v41 + 1) + 8 * j);
              v35 = [*(a1 + 40) coordinatorMap];
              v36 = [v35 objectForKey:v34];

              [*(a1 + 40) removeCoordinator:v36];
            }

            v31 = [v30 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v31);
        }
      }
    }

    [*(a1 + 40) _updateActivityRegistration];
  }

  else
  {
    v8 = scl_pairing_log(0);
    v38 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__SCLSchoolModeManager_handleDeviceUnpairedNotification___block_invoke_cold_2((a1 + 32), v8, v9, v10, v11, v12, v13, v14);
    }
  }

  os_activity_scope_leave(&state);
}

- (void)removeCoordinator:(id)coordinator
{
  v33 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  configuration = [coordinatorCopy configuration];
  nRDevice = [configuration NRDevice];
  pairingID = [nRDevice pairingID];

  if (pairingID)
  {
LABEL_2:
    coordinatorMap = [(SCLSchoolModeManager *)self coordinatorMap];
    [coordinatorMap removeObjectForKey:pairingID];

    v11 = scl_pairing_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = pairingID;
      _os_log_impl(&dword_264829000, v11, OS_LOG_TYPE_DEFAULT, "Removing coordinator for pairingID %{public}@", buf, 0xCu);
    }

    configuration2 = [coordinatorCopy configuration];
    transportController = [configuration2 transportController];

    if (transportController)
    {
      transportService = [(SCLSchoolModeManager *)self transportService];
      [transportService removeTransportController:transportController];
    }
  }

  else
  {
    v15 = scl_pairing_log(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SCLSchoolModeManager *)coordinatorCopy removeCoordinator:v15];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    coordinatorMap2 = [(SCLSchoolModeManager *)self coordinatorMap];
    keyEnumerator = [coordinatorMap2 keyEnumerator];

    v18 = [keyEnumerator countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
LABEL_11:
      v21 = 0;
      while (1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v22 = *(*(&v26 + 1) + 8 * v21);
        coordinatorMap3 = [(SCLSchoolModeManager *)self coordinatorMap];
        v24 = [coordinatorMap3 objectForKey:v22];

        if (v24 == coordinatorCopy)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = [keyEnumerator countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v19)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      pairingID = v22;

      if (pairingID)
      {
        goto LABEL_2;
      }
    }

    else
    {
LABEL_17:
    }

    pairingID = scl_pairing_log(v25);
    if (os_log_type_enabled(pairingID, OS_LOG_TYPE_FAULT))
    {
      [(SCLSchoolModeManager *)coordinatorCopy removeCoordinator:pairingID];
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  queue = [(SCLSchoolModeManager *)self queue];
  dispatch_assert_queue_V2(queue);

  queue2 = [(SCLSchoolModeManager *)self queue];
  [connectionCopy _setQueue:queue2];

  v8 = [[SCLSchoolModeClientProxy alloc] initWithConnection:connectionCopy];
  [(SCLSchoolModeClientProxy *)v8 setDelegate:self];
  clients = [(SCLSchoolModeManager *)self clients];
  [clients addObject:v8];

  [connectionCopy resume];
  return 1;
}

- (void)clientProxyDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  queue = [(SCLSchoolModeManager *)self queue];
  dispatch_assert_queue_V2(queue);

  coordinator = [invalidateCopy coordinator];
  [coordinator removeClient:invalidateCopy];
  clients = [(SCLSchoolModeManager *)self clients];
  [clients removeObject:invalidateCopy];
}

- (void)clientProxy:(id)proxy didConnectWithPairingID:(id)d
{
  proxyCopy = proxy;
  dCopy = d;
  queue = [(SCLSchoolModeManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (dCopy)
  {
    coordinatorMap = [(SCLSchoolModeManager *)self coordinatorMap];
    nextObject = [coordinatorMap objectForKey:dCopy];

    if (!nextObject)
    {
      v12 = SCLAutoUpdatingPairingID();
      v13 = [dCopy isEqual:v12];

      if (!v13)
      {
        goto LABEL_9;
      }

      coordinatorMap2 = [(SCLSchoolModeManager *)self coordinatorMap];
      objectEnumerator = [coordinatorMap2 objectEnumerator];
      nextObject = [objectEnumerator nextObject];

      coordinatorMap3 = [(SCLSchoolModeManager *)self coordinatorMap];
      v18 = [coordinatorMap3 count];

      if (v18 >= 2)
      {
        v19 = scl_pairing_log(v14);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [SCLSchoolModeManager clientProxy:nextObject didConnectWithPairingID:v19];
        }
      }

      if (!nextObject)
      {
LABEL_9:
        v20 = scl_pairing_log(v14);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [SCLSchoolModeManager clientProxy:didConnectWithPairingID:];
        }

        nextObject = 0;
      }
    }

    [nextObject addClient:proxyCopy];
  }

  else
  {
    nextObject = scl_framework_log(v9);
    if (os_log_type_enabled(nextObject, OS_LOG_TYPE_ERROR))
    {
      [(SCLSchoolModeManager *)nextObject clientProxy:v21 didConnectWithPairingID:v22, v23, v24, v25, v26, v27];
    }
  }
}

- (id)activityCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  v3 = *MEMORY[0x277D86298];
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86250], *MEMORY[0x277D86298]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], v3);
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);

  return v2;
}

- (void)_updateActivityRegistration
{
  v27 = *MEMORY[0x277D85DE8];
  coordinatorMap = [(SCLSchoolModeManager *)self coordinatorMap];
  v4 = [coordinatorMap count];

  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    coordinatorMap2 = [(SCLSchoolModeManager *)self coordinatorMap];
    objectEnumerator = [coordinatorMap2 objectEnumerator];

    v8 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      v9 = *v21;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          configuration = [*(*(&v20 + 1) + 8 * i) configuration];
          isManuallyManagedOnly = [configuration isManuallyManagedOnly];

          v10 &= isManuallyManagedOnly ^ 1;
        }

        v8 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v8);

      if ((v10 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    activityCriteria = [(SCLSchoolModeManager *)self activityCriteria];
    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__SCLSchoolModeManager__updateActivityRegistration__block_invoke;
    v17[3] = &unk_279B6CAB8;
    v16 = activityCriteria;
    v18 = v16;
    objc_copyWeak(&v19, buf);
    xpc_activity_register("com.apple.schooltime.database.maintenance", *MEMORY[0x277D86238], v17);
    objc_destroyWeak(&v19);

    objc_destroyWeak(buf);
    return;
  }

LABEL_10:
  v14 = scl_persistence_log(v5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "com.apple.schooltime.database.maintenance";
    _os_log_impl(&dword_264829000, v14, OS_LOG_TYPE_DEFAULT, "No tinker-paired devices available. Unregistering %s", buf, 0xCu);
  }

  xpc_activity_unregister("com.apple.schooltime.database.maintenance");
}

void __51__SCLSchoolModeManager__updateActivityRegistration__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (xpc_activity_get_state(v3))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handleActivityStarted:v3];
  }

  else
  {
    v5 = scl_persistence_log(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_264829000, v5, OS_LOG_TYPE_DEFAULT, "Checked in with activity %@", &v9, 0xCu);
    }

    v6 = xpc_activity_copy_criteria(v3);
    v7 = scl_persistence_log(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "using old criteria", &v9, 2u);
      }
    }

    else
    {
      if (v8)
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "Old criteria doesn't exist - setting new criteria", &v9, 2u);
      }

      xpc_activity_set_criteria(v3, *(a1 + 32));
    }
  }
}

- (void)_handleActivityStarted:(id)started
{
  v17 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  v5 = _os_activity_create(&dword_264829000, "Database Maintenance", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = scl_persistence_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = startedCopy;
    _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "Performing database maintenance: %@", buf, 0xCu);
  }

  v8 = xpc_activity_set_state(startedCopy, 4);
  if (!v8)
  {
    v9 = scl_persistence_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCLSchoolModeManager _handleActivityStarted:v9];
    }
  }

  queue = [(SCLSchoolModeManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__SCLSchoolModeManager__handleActivityStarted___block_invoke;
  v12[3] = &unk_279B6C5D8;
  v12[4] = self;
  v13 = startedCopy;
  v11 = startedCopy;
  dispatch_async(queue, v12);

  os_activity_scope_leave(&state);
}

void __47__SCLSchoolModeManager__handleActivityStarted___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) coordinatorMap];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v7++) purgeOldHistoryItems];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = scl_persistence_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_DEFAULT, "Completed database maintenance", v12, 2u);
  }

  v10 = xpc_activity_set_state(*(a1 + 40), 5);
  if (!v10)
  {
    v11 = scl_persistence_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __47__SCLSchoolModeManager__handleActivityStarted___block_invoke_cold_1(v11);
    }
  }
}

- (void)createControllerForDevice:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_264829000, v0, OS_LOG_TYPE_FAULT, "No linked IDS device for NRDevice with pairingID %@", v1, 0xCu);
}

void __55__SCLSchoolModeManager_handleDevicePairedNotification___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_1_0(&dword_264829000, a2, a3, "Missing pairingID for device paired notification %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __57__SCLSchoolModeManager_handleDeviceUnpairedNotification___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_1_0(&dword_264829000, a2, a3, "Missing pairingID for device unpaired notification %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)removeCoordinator:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 configuration];
  v4 = [v3 NRDevice];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "%@ is missing a pairingID - %@", v5, 0x16u);
}

- (void)removeCoordinator:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = [a2 coordinatorMap];
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(&dword_264829000, a3, OS_LOG_TYPE_FAULT, "Coordinator %@ is not in the coordinator map: %@", v5, 0x16u);
}

- (void)clientProxy:(void *)a1 didConnectWithPairingID:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 configuration];
  v4 = [v3 NRDevice];
  v5 = [v4 pairingID];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "AutoUpdatingPairingID used when multiple pairings are present. Linking to %@", v6, 0xCu);
}

@end