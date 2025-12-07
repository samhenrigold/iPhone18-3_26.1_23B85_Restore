@interface SCLSchoolModeCoordinator
- (BOOL)applySchedule:(id)schedule forInitialSync:(BOOL)sync error:(id *)error;
- (BOOL)setActive:(BOOL)active options:(unint64_t)options error:(id *)error;
- (SCLScheduleSettings)scheduleSettings;
- (SCLSchoolModeCoordinator)initWithConfiguration:(id)configuration;
- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)hints;
- (void)_checkIfClassCDataIsAvailable;
- (void)_classCDataIsAvailable;
- (void)_createSchoolTimeDirectoryIfNeeded;
- (void)_lock_loadPersistentSchedule;
- (void)_lock_updatePersistentSettingsWithBlock:(id)block;
- (void)_noteHistoryDidUpdate;
- (void)_persistSettings:(id)settings;
- (void)_registerForFirstUnlockIfNeeded;
- (void)_requestRemoteScheduleSettingsIfNeeded;
- (void)_updateClientsWithSchedule:(id)schedule notify:(BOOL)notify;
- (void)activateSettingsSyncCoordinatorWithSettings:(id)settings;
- (void)addClient:(id)client;
- (void)addUnlockHistoryItem:(id)item completion:(id)completion;
- (void)dealloc;
- (void)deleteHistoryWithCompletion:(id)completion;
- (void)fetchRecentUnlockHistoryItemsWithCompletion:(id)completion;
- (void)purgeOldHistoryItems;
- (void)removeClient:(id)client;
- (void)server:(id)server didUpdateState:(id)state fromState:(id)fromState;
- (void)transportController:(id)controller didReceiveSchedule:(id)schedule forInitialSync:(BOOL)sync;
- (void)transportController:(id)controller didReceiveUnlockHistoryItem:(id)item;
@end

@implementation SCLSchoolModeCoordinator

- (SCLSchoolModeCoordinator)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = SCLSchoolModeCoordinator;
  v5 = [(SCLSchoolModeCoordinator *)&v25 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clients = v5->_clients;
    v5->_clients = v8;

    directoryURL = [(SCLSchoolModeCoordinatorConfiguration *)v5->_configuration directoryURL];
    directoryURL = v5->_directoryURL;
    v5->_directoryURL = directoryURL;

    v12 = [(NSURL *)v5->_directoryURL URLByAppendingPathComponent:@"ScheduleSettings.dat"];
    scheduleURL = v5->_scheduleURL;
    v5->_scheduleURL = v12;

    v14 = [[SCLState alloc] initWithActiveState:0 scheduleEnabled:0 inSchedule:0];
    currentState = v5->_currentState;
    v5->_currentState = v14;

    v16 = [[SCLActiveDurationAnalyticsSource alloc] initWithInitialState:v5->_currentState];
    activeDurationAnalyticsSource = v5->_activeDurationAnalyticsSource;
    v5->_activeDurationAnalyticsSource = v16;

    server = [configurationCopy server];
    v19 = server;
    if (server)
    {
      [server addObserver:v5];
    }

    transportController = [(SCLSchoolModeCoordinatorConfiguration *)v5->_configuration transportController];
    [transportController setDelegate:v5];

    [(SCLSchoolModeCoordinator *)v5 _createSchoolTimeDirectoryIfNeeded];
    [(SCLSchoolModeCoordinator *)v5 _registerForFirstUnlockIfNeeded];
    objc_initWeak(&location, v5);
    targetQueue = [configurationCopy targetQueue];
    objc_copyWeak(&v23, &location);
    v5->_stateHandle = os_state_add_handler();

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v5;
}

uint64_t __50__SCLSchoolModeCoordinator_initWithConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateDataWithHints:a2];

  return v4;
}

- (void)dealloc
{
  _configuration = [(SCLSchoolModeCoordinator *)self _configuration];
  server = [_configuration server];

  [server removeObserver:self];
  [server invalidate];
  firstUnlockToken = self->_firstUnlockToken;
  if (firstUnlockToken != -1)
  {
    notify_cancel(firstUnlockToken);
  }

  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }

  v6.receiver = self;
  v6.super_class = SCLSchoolModeCoordinator;
  [(SCLSchoolModeCoordinator *)&v6 dealloc];
}

- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)hints
{
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  v6 = [MEMORY[0x277CF0C00] builderWithObject:self];
  configuration2 = [(SCLSchoolModeCoordinator *)self configuration];
  nRDevice = [configuration2 NRDevice];
  pairingID = [nRDevice pairingID];
  v10 = [v6 appendObject:pairingID withName:@"pairingID"];

  configuration3 = [(SCLSchoolModeCoordinator *)self configuration];
  idsDevice = [configuration3 idsDevice];
  uniqueIDOverride = [idsDevice uniqueIDOverride];
  v14 = [v6 appendObject:uniqueIDOverride withName:@"IDSDeviceID"];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__SCLSchoolModeCoordinator_stateDataWithHints___block_invoke;
  v20[3] = &unk_279B6C5D8;
  v21 = v6;
  selfCopy = self;
  v15 = v6;
  [v15 appendBodySectionWithName:0 multilinePrefix:0 block:v20];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"SCLSchooolModeCoordinator %p", self];
  build = [v15 build];
  v18 = SCLSStateDataWithTitleDescriptionAndHints(v16, build);

  return v18;
}

void __47__SCLSchoolModeCoordinator_stateDataWithHints___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) persistentSettings];
  v4 = [v3 scheduleSettings];
  v5 = [v2 appendObject:v4 withName:@"schedule"];

  v6 = [*(a1 + 40) configuration];
  v7 = [v6 server];

  if (v7)
  {
    v8 = *(a1 + 32);
    v12 = [*(a1 + 40) configuration];
    v9 = [v12 server];
    v10 = [v9 currentState];
    v11 = [v8 appendObject:v10 withName:@"serverState"];
  }
}

- (void)_createSchoolTimeDirectoryIfNeeded
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_264829000, v0, OS_LOG_TYPE_DEBUG, "Directory at %@ already existed: %@", v1, 0x16u);
}

- (void)_lock_loadPersistentSchedule
{
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  scheduleURL = [(SCLSchoolModeCoordinator *)self scheduleURL];
  v26 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:scheduleURL options:0 error:&v26];
  v7 = v26;
  v8 = v7;
  if (!v6)
  {
    domain = [v7 domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]])
    {
      code = [v8 code];

      if (code == 260)
      {
        v20 = scl_persistence_log(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [SCLSchoolModeCoordinator _lock_loadPersistentSchedule];
        }

        configuration2 = [(SCLSchoolModeCoordinator *)self configuration];
        sendsRemoteScheduleSettings = [configuration2 sendsRemoteScheduleSettings];

        if (sendsRemoteScheduleSettings)
        {
          [(SCLSchoolModeCoordinator *)self _requestRemoteScheduleSettingsIfNeeded];
        }

LABEL_22:
        v13 = v8;
LABEL_24:
        v16 = objc_alloc_init(SCLPersistentSettings);
        goto LABEL_25;
      }
    }

    else
    {
    }

    v23 = scl_persistence_log(v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SCLSchoolModeCoordinator _lock_loadPersistentSchedule];
    }

    goto LABEL_22;
  }

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v25 = v8;
  v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v11 fromData:v6 error:&v25];
  v13 = v25;

  if (v13)
  {
    v15 = scl_persistence_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SCLSchoolModeCoordinator _lock_loadPersistentSchedule];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = objc_alloc_init(SCLPersistentSettings);
    [(SCLPersistentSettings *)v16 setScheduleSettings:v12];
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_24;
  }

  v16 = v12;
LABEL_16:

  if (!v16)
  {
    goto LABEL_24;
  }

LABEL_25:
  persistentSettings = self->_persistentSettings;
  self->_persistentSettings = v16;
}

- (void)_requestRemoteScheduleSettingsIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  directoryURL = [(SCLSchoolModeCoordinator *)self directoryURL];
  path = [directoryURL path];

  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  nRDevice = [configuration NRDevice];
  pairingID = [nRDevice pairingID];

  v8 = _CFPreferencesCopyValueWithContainer();
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v9);
      CFRelease(v9);
      if (Value)
      {
        transportController = scl_framework_log(v8);
        if (os_log_type_enabled(transportController, OS_LOG_TYPE_DEBUG))
        {
          [SCLSchoolModeCoordinator _requestRemoteScheduleSettingsIfNeeded];
        }

        goto LABEL_10;
      }
    }

    else
    {
      CFRelease(v9);
    }
  }

  v13 = scl_framework_log(v8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = pairingID;
    _os_log_impl(&dword_264829000, v13, OS_LOG_TYPE_DEFAULT, "Requesting remote settings for pairingID %@", &v14, 0xCu);
  }

  _CFPreferencesSetValueWithContainer();
  transportController = [(SCLSchoolModeCoordinator *)self transportController];
  [transportController requestRemoteSettings];
LABEL_10:
}

- (void)_classCDataIsAvailable
{
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  v6 = scl_framework_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_INFO, "Class C Data is available", v16, 2u);
  }

  self->_hasReceivedFirstUnlock = 1;
  firstUnlockToken = self->_firstUnlockToken;
  if (firstUnlockToken != -1)
  {
    notify_cancel(firstUnlockToken);
    self->_firstUnlockToken = -1;
  }

  [(SCLSchoolModeCoordinator *)self _lock_loadPersistentSchedule];
  configuration2 = [(SCLSchoolModeCoordinator *)self configuration];
  historyStore = [configuration2 historyStore];
  [historyStore loadStore];

  persistentSettings = [(SCLSchoolModeCoordinator *)self persistentSettings];
  configuration3 = [(SCLSchoolModeCoordinator *)self configuration];
  server = [configuration3 server];

  scheduleSettings = [persistentSettings scheduleSettings];
  configuration4 = [(SCLSchoolModeCoordinator *)self configuration];
  sendsRemoteScheduleSettings = [configuration4 sendsRemoteScheduleSettings];

  if (sendsRemoteScheduleSettings)
  {
    [(SCLSchoolModeCoordinator *)self activateSettingsSyncCoordinatorWithSettings:scheduleSettings];
  }

  [(SCLSchoolModeCoordinator *)self _updateClientsWithSchedule:scheduleSettings notify:0];
  [server startWithScheduleSettings:scheduleSettings shouldStartManuallyActive:{objc_msgSend(persistentSettings, "isManualSchoolModeEnabled")}];
  self->_ready = 1;
}

- (void)activateSettingsSyncCoordinatorWithSettings:(id)settings
{
  settingsCopy = settings;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  nRDevice = [configuration NRDevice];
  pairingID = [nRDevice pairingID];

  configuration2 = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration2 targetQueue];

  v9 = [[SCLSettingsSyncCoordinator alloc] initWithFileURL:self->_directoryURL pairingID:pairingID schedule:settingsCopy queue:targetQueue];
  settingsSyncCoordinator = self->_settingsSyncCoordinator;
  self->_settingsSyncCoordinator = v9;

  configuration3 = [(SCLSchoolModeCoordinator *)self configuration];
  transportController = [configuration3 transportController];
  [transportController setSettingsSyncCoordinator:self->_settingsSyncCoordinator];

  v13 = self->_settingsSyncCoordinator;
  configuration4 = [(SCLSchoolModeCoordinator *)self configuration];
  transportController2 = [configuration4 transportController];
  [(SCLSettingsSyncCoordinator *)v13 setTransport:transportController2];

  [(SCLSettingsSyncCoordinator *)self->_settingsSyncCoordinator activate];
}

- (void)_checkIfClassCDataIsAvailable
{
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  if (!self->_hasReceivedFirstUnlock)
  {
    v5 = MKBDeviceUnlockedSinceBoot();
    if ((v5 & 0x80000000) != 0)
    {
      v9 = scl_framework_log(v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SCLSchoolModeCoordinator *)v9 _checkIfClassCDataIsAvailable];
      }
    }

    else
    {
      v6 = v5;
      v7 = scl_framework_log(v5);
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [(SCLSchoolModeCoordinator *)v8 _checkIfClassCDataIsAvailable];
        }

        [(SCLSchoolModeCoordinator *)self _classCDataIsAvailable];
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_264829000, v8, OS_LOG_TYPE_DEFAULT, "Waiting for first unlock.", v10, 2u);
        }
      }
    }
  }
}

- (void)_registerForFirstUnlockIfNeeded
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_264829000, log, OS_LOG_TYPE_ERROR, "Could not register for first unlock notifications: %@", buf, 0xCu);
}

void __59__SCLSchoolModeCoordinator__registerForFirstUnlockIfNeeded__block_invoke(uint64_t a1)
{
  v2 = scl_framework_log(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = scl_framework_log(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SchoolTimeMobileKeybagUnlock", &unk_26485B361, buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SCLSchoolModeCoordinator__registerForFirstUnlockIfNeeded__block_invoke_41;
  block[3] = &unk_279B6C568;
  v8 = WeakRetained;
  v14 = v8;
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(*(a1 + 32), v9);
  v11 = scl_framework_log(v10);
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v12, OS_SIGNPOST_INTERVAL_END, v3, "SchoolTimeMobileKeybagUnlock", &unk_26485B361, buf, 2u);
  }
}

void __59__SCLSchoolModeCoordinator__registerForFirstUnlockIfNeeded__block_invoke_41(uint64_t a1)
{
  v2 = scl_framework_log(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = scl_framework_log(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SchoolTimeClassCAvailable", &unk_26485B361, buf, 2u);
  }

  v7 = scl_framework_log([*(a1 + 32) _classCDataIsAvailable]);
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v8, OS_SIGNPOST_INTERVAL_END, v3, "SchoolTimeClassCAvailable", &unk_26485B361, v9, 2u);
  }
}

- (void)addClient:(id)client
{
  clientCopy = client;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  [clientCopy setCoordinator:self];
  [(SCLSchoolModeCoordinator *)self _checkIfClassCDataIsAvailable];
  clients = [(SCLSchoolModeCoordinator *)self clients];
  [clients addObject:clientCopy];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  [clientCopy setCoordinator:0];
  clients = [(SCLSchoolModeCoordinator *)self clients];
  [clients removeObject:clientCopy];
}

- (BOOL)applySchedule:(id)schedule forInitialSync:(BOOL)sync error:(id *)error
{
  syncCopy = sync;
  v42[1] = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  v11 = [scheduleCopy copy];
  if (self->_hasReceivedFirstUnlock)
  {
    if (syncCopy && (-[SCLPersistentSettings scheduleSettings](self->_persistentSettings, "scheduleSettings"), v12 = objc_claimAutoreleasedReturnValue(), [v12 schedule], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isMemberOfClass:", objc_opt_class()), v13, v12, (v14 & 1) == 0))
    {
      if (error)
      {
        v30 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277CCA450];
        v40 = @"Cannot overwrite existing schedule for initial sync.";
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v27 = v30;
        v28 = 7;
        goto LABEL_17;
      }
    }

    else
    {
      schedule = [v11 schedule];
      isValid = [schedule isValid];

      if (isValid)
      {
        v18 = scl_persistence_log(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [SCLSchoolModeCoordinator applySchedule:forInitialSync:error:];
        }

        v32 = MEMORY[0x277D85DD0];
        v33 = 3221225472;
        v34 = __63__SCLSchoolModeCoordinator_applySchedule_forInitialSync_error___block_invoke;
        v35 = &unk_279B6C810;
        v19 = v11;
        v36 = v19;
        [(SCLSchoolModeCoordinator *)self _lock_updatePersistentSettingsWithBlock:&v32];
        v20 = [(SCLSchoolModeCoordinator *)self server:v32];
        [v20 applySchedule:v19];

        configuration2 = [(SCLSchoolModeCoordinator *)self configuration];
        sendsRemoteScheduleSettings = [configuration2 sendsRemoteScheduleSettings];

        if (sendsRemoteScheduleSettings && !syncCopy)
        {
          settingsSyncCoordinator = [(SCLSchoolModeCoordinator *)self settingsSyncCoordinator];
          [settingsSyncCoordinator applySchedule:v19];
        }

        v24 = 1;
        [(SCLSchoolModeCoordinator *)self _updateClientsWithSchedule:v19 notify:1];
        v25 = v36;
        goto LABEL_18;
      }

      if (error)
      {
        v29 = MEMORY[0x277CCA9B8];
        v37 = *MEMORY[0x277CCA450];
        v38 = @"The schedule is invalid";
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v27 = v29;
        v28 = 3;
        goto LABEL_17;
      }
    }

LABEL_19:
    v24 = 0;
    goto LABEL_20;
  }

  if (!error)
  {
    goto LABEL_19;
  }

  v26 = MEMORY[0x277CCA9B8];
  v41 = *MEMORY[0x277CCA450];
  v42[0] = @"Schedule cannot be set before first unlock.";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v27 = v26;
  v28 = 6;
LABEL_17:
  [v27 errorWithDomain:@"com.apple.schooltime" code:v28 userInfo:v25];
  *error = v24 = 0;
LABEL_18:

LABEL_20:
  return v24;
}

- (void)_updateClientsWithSchedule:(id)schedule notify:(BOOL)notify
{
  notifyCopy = notify;
  v21 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  clients = [(SCLSchoolModeCoordinator *)self clients];
  v10 = [clients copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) didUpdateScheduleSettings:scheduleCopy notify:{notifyCopy, v16}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)addUnlockHistoryItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  historyStore = [(SCLSchoolModeCoordinator *)self historyStore];
  v10 = [historyStore insertItem:itemCopy];

  completionCopy[2](completionCopy, v10, 0);
  [(SCLSchoolModeCoordinator *)self _noteHistoryDidUpdate];
  configuration2 = [(SCLSchoolModeCoordinator *)self configuration];
  LODWORD(historyStore) = [configuration2 sendsRemoteHistoryItems];

  if (historyStore)
  {
    transportController = [(SCLSchoolModeCoordinator *)self transportController];
    [transportController addUnlockHistoryItem:itemCopy];
  }
}

- (void)fetchRecentUnlockHistoryItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  historyStore = [(SCLSchoolModeCoordinator *)self historyStore];
  recentHistoryItems = [historyStore recentHistoryItems];

  if (recentHistoryItems)
  {
    v9 = recentHistoryItems;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;
  completionCopy[2](completionCopy);
}

- (BOOL)setActive:(BOOL)active options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  activeCopy = active;
  v20[1] = *MEMORY[0x277D85DE8];
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  server = [(SCLSchoolModeCoordinator *)self server];
  currentState = [server currentState];

  if ((optionsCopy & 1) != 0 && activeCopy && ([currentState isInSchedule] & 1) == 0)
  {
    if (!error)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"Activation was rejected because Schooltime is no longer in schedule.";
    nRDevice = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.schooltime" code:8 userInfo:nRDevice];
    *error = v16 = 0;
  }

  else
  {
    server2 = [(SCLSchoolModeCoordinator *)self server];
    [server2 setActive:activeCopy];

    configuration2 = [(SCLSchoolModeCoordinator *)self configuration];
    nRDevice = [configuration2 NRDevice];

    v16 = 1;
    if (activeCopy && nRDevice && ![currentState activeState] && (objc_msgSend(currentState, "isInSchedule") & 1) == 0)
    {
      nRDevice = nRDevice;
      v18 = currentState;
      AnalyticsSendEventLazy();
    }
  }

LABEL_12:
  return v16;
}

id __52__SCLSchoolModeCoordinator_setActive_options_error___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"isAltAccount";
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) valueForProperty:*MEMORY[0x277D2BB28]];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "BOOLValue")}];
  v8[1] = @"scheduleEnabled";
  v9[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isScheduleEnabled")}];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (void)deleteHistoryWithCompletion:(id)completion
{
  completionCopy = completion;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  historyStore = [(SCLSchoolModeCoordinator *)self historyStore];
  v10 = 0;
  v8 = [historyStore deleteHistory:&v10];
  v9 = v10;

  completionCopy[2](completionCopy, v8, v9);
  [(SCLSchoolModeCoordinator *)self _noteHistoryDidUpdate];
}

- (void)purgeOldHistoryItems
{
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  historyStore = [(SCLSchoolModeCoordinator *)self historyStore];
  [historyStore purgeOldItems];
}

- (void)_noteHistoryDidUpdate
{
  v16 = *MEMORY[0x277D85DE8];
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  v5 = [(NSMutableSet *)self->_clients copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) unlockHistoryDidChange];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_lock_updatePersistentSettingsWithBlock:(id)block
{
  blockCopy = block;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  persistentSettings = [(SCLSchoolModeCoordinator *)self persistentSettings];
  v8 = [persistentSettings copy];

  blockCopy[2](blockCopy, v8);
  persistentSettings2 = [(SCLSchoolModeCoordinator *)self persistentSettings];
  LOBYTE(persistentSettings) = [(SCLPersistentSettings *)v8 isEqual:persistentSettings2];

  if ((persistentSettings & 1) == 0)
  {
    [(SCLSchoolModeCoordinator *)self _persistSettings:v8];
  }

  persistentSettings = self->_persistentSettings;
  self->_persistentSettings = v8;
}

- (void)_persistSettings:(id)settings
{
  settingsCopy = settings;
  v15 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:settingsCopy requiringSecureCoding:1 error:&v15];
  v6 = v15;
  v7 = scl_persistence_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SCLSchoolModeCoordinator *)settingsCopy _persistSettings:v7];
  }

  if (!v5)
  {
    v13 = scl_persistence_log(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SCLSchoolModeCoordinator _persistSettings:];
    }

    v11 = v6;
    goto LABEL_10;
  }

  scheduleURL = self->_scheduleURL;
  v14 = v6;
  v10 = [v5 writeToURL:scheduleURL options:1073741825 error:&v14];
  v11 = v14;

  if ((v10 & 1) == 0)
  {
    v13 = scl_persistence_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SCLSchoolModeCoordinator _persistSettings:];
    }

LABEL_10:
  }
}

- (void)server:(id)server didUpdateState:(id)state fromState:(id)fromState
{
  v82 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  fromStateCopy = fromState;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  objc_storeStrong(&self->_currentState, state);
  clients = [(SCLSchoolModeCoordinator *)self clients];
  v13 = [clients copy];

  pendingUnlockItem = [(SCLSchoolModeCoordinator *)self pendingUnlockItem];
  if (pendingUnlockItem)
  {
  }

  else if (SCLIsStateTransitionStartOfUnlockPeriod(fromStateCopy, stateCopy))
  {
    date = [MEMORY[0x277CBEAA8] date];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    scheduleSettings = [(SCLPersistentSettings *)self->_persistentSettings scheduleSettings];
    v18 = [scheduleSettings recurrenceForActiveScheduleOnOrAfterDate:date calendar:currentCalendar];
    v19 = v18;
    if (v18)
    {
      timeInterval = [v18 timeInterval];
      startTime = [timeInterval startTime];

      [v19 timeInterval];
      v22 = v65 = scheduleSettings;
      endTime = [v22 endTime];

      v24 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:date duration:0.0];
      [MEMORY[0x277CBEBB0] localTimeZone];
      v25 = v63 = date;
      v26 = [SCLUnlockHistoryItem alloc];
      v62 = v19;
      v27 = startTime;
      v28 = startTime;
      v29 = endTime;
      v30 = [(SCLUnlockHistoryItem *)v26 initWithInterval:v24 calendar:currentCalendar timeZone:v25 startTime:v28 endTime:endTime];
      v31 = currentCalendar;
      v32 = v30;
      [(SCLSchoolModeCoordinator *)self setPendingUnlockItem:v30];

      currentCalendar = v31;
      date = v63;

      scheduleSettings = v65;
      v19 = v62;
    }

    else
    {
      v50 = scl_framework_log(0);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        [scheduleSettings schedule];
        v59 = v58 = date;
        [v59 recurrences];
        v67 = scheduleSettings;
        v61 = v60 = currentCalendar;
        *buf = 138412802;
        v77 = v58;
        v78 = 2112;
        v79 = v60;
        v80 = 2112;
        v81 = v61;
        _os_log_fault_impl(&dword_264829000, v50, OS_LOG_TYPE_FAULT, "Failed to find active schedule recurrence for unlock period at date %@ in calendar %@: %@", buf, 0x20u);

        date = v58;
        currentCalendar = v60;
        scheduleSettings = v67;
      }
    }

LABEL_15:
    pendingUnlockItem2 = 0;
    goto LABEL_16;
  }

  pendingUnlockItem2 = [(SCLSchoolModeCoordinator *)self pendingUnlockItem];
  if (!pendingUnlockItem2)
  {
    goto LABEL_16;
  }

  v34 = SCLIsStateTransitionEndOfUnlockPeriod(fromStateCopy, stateCopy);

  if (!v34)
  {
    goto LABEL_15;
  }

  pendingUnlockItem3 = [(SCLSchoolModeCoordinator *)self pendingUnlockItem];
  date2 = [MEMORY[0x277CBEAA8] date];
  unlockedInterval = [pendingUnlockItem3 unlockedInterval];
  startDate = [unlockedInterval startDate];
  [date2 timeIntervalSinceDate:startDate];
  v40 = v39;

  if (v40 < 0.0)
  {
    v40 = 0.0;
  }

  v41 = objc_alloc(MEMORY[0x277CCA970]);
  unlockedInterval2 = [pendingUnlockItem3 unlockedInterval];
  startDate2 = [unlockedInterval2 startDate];
  v66 = [v41 initWithStartDate:startDate2 duration:v40];

  v44 = [SCLUnlockHistoryItem alloc];
  calendar = [pendingUnlockItem3 calendar];
  timeZone = [pendingUnlockItem3 timeZone];
  scheduleStartTime = [pendingUnlockItem3 scheduleStartTime];
  [pendingUnlockItem3 scheduleEndTime];
  v47 = stateCopy;
  v49 = v48 = v13;
  pendingUnlockItem2 = [(SCLUnlockHistoryItem *)v44 initWithInterval:v66 calendar:calendar timeZone:timeZone startTime:scheduleStartTime endTime:v49];

  v13 = v48;
  stateCopy = v47;

  [(SCLSchoolModeCoordinator *)self setPendingUnlockItem:0];
LABEL_16:
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __60__SCLSchoolModeCoordinator_server_didUpdateState_fromState___block_invoke;
  v73[3] = &unk_279B6C810;
  v51 = stateCopy;
  v74 = v51;
  [(SCLSchoolModeCoordinator *)self _lock_updatePersistentSettingsWithBlock:v73];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v52 = v13;
  v53 = [v52 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v70;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v70 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [*(*(&v69 + 1) + 8 * i) didUpdateState:v51 fromState:fromStateCopy];
      }

      v54 = [v52 countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v54);
  }

  if (pendingUnlockItem2)
  {
    [(SCLSchoolModeCoordinator *)self addUnlockHistoryItem:pendingUnlockItem2 completion:&__block_literal_global_7];
    v68 = pendingUnlockItem2;
    AnalyticsSendEventLazy();
  }

  activeDurationAnalyticsSource = [(SCLSchoolModeCoordinator *)self activeDurationAnalyticsSource];
  [activeDurationAnalyticsSource setCurrentState:v51];
}

void __60__SCLSchoolModeCoordinator_server_didUpdateState_fromState___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) isActive])
  {
    v3 = [*(a1 + 32) isInSchedule] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  [v4 setManualSchoolModeEnabled:v3];
}

id __60__SCLSchoolModeCoordinator_server_didUpdateState_fromState___block_invoke_3(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"UnlockDuration";
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) unlockedInterval];
  [v2 duration];
  *&v3 = v3;
  *&v3 = roundf(*&v3);
  v4 = [v1 numberWithFloat:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (SCLScheduleSettings)scheduleSettings
{
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  scheduleSettings = [(SCLPersistentSettings *)self->_persistentSettings scheduleSettings];
  v6 = [scheduleSettings copy];

  return v6;
}

- (void)transportController:(id)controller didReceiveSchedule:(id)schedule forInitialSync:(BOOL)sync
{
  syncCopy = sync;
  scheduleCopy = schedule;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  v13 = 0;
  LOBYTE(configuration) = [(SCLSchoolModeCoordinator *)self applySchedule:scheduleCopy forInitialSync:syncCopy error:&v13];
  v10 = v13;
  v11 = scl_transport_log(v10);
  v12 = v11;
  if (configuration)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SCLSchoolModeCoordinator transportController:didReceiveSchedule:forInitialSync:];
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SCLSchoolModeCoordinator transportController:didReceiveSchedule:forInitialSync:];
  }
}

- (void)transportController:(id)controller didReceiveUnlockHistoryItem:(id)item
{
  itemCopy = item;
  configuration = [(SCLSchoolModeCoordinator *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SCLSchoolModeCoordinator_transportController_didReceiveUnlockHistoryItem___block_invoke;
  v9[3] = &unk_279B6C888;
  v10 = itemCopy;
  v8 = itemCopy;
  [(SCLSchoolModeCoordinator *)self addUnlockHistoryItem:v8 completion:v9];
}

void __76__SCLSchoolModeCoordinator_transportController_didReceiveUnlockHistoryItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = scl_transport_log(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __76__SCLSchoolModeCoordinator_transportController_didReceiveUnlockHistoryItem___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __76__SCLSchoolModeCoordinator_transportController_didReceiveUnlockHistoryItem___block_invoke_cold_2(a1, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)_persistSettings:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 isManualSchoolModeEnabled];
  v5 = [a1 scheduleSettings];
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2112;
  v8 = v5;
  _os_log_debug_impl(&dword_264829000, a2, OS_LOG_TYPE_DEBUG, "Persist settings - manualSchoolModeEnabled: %{BOOL}u; schedule: %@", v6, 0x12u);
}

void __76__SCLSchoolModeCoordinator_transportController_didReceiveUnlockHistoryItem___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_2(&dword_264829000, a2, a3, "Added remote history item: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end