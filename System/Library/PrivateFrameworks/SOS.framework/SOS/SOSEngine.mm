@interface SOSEngine
+ (BOOL)authorizedToUseContactStore;
+ (id)GPSCoordinatesURLForLocation:(id)location;
+ (id)_sosMessageForLocation:(id)location isFirstMessage:(BOOL)message medicalIDName:(id)name reason:(int64_t)reason recipientReason:(unint64_t)recipientReason;
+ (id)_sosMessageForLocation:(id)location isFirstMessage:(BOOL)message myFullName:(id)name myFirstName:(id)firstName reason:(int64_t)reason recipientReason:(unint64_t)recipientReason;
+ (id)additionalTextForCallbackNumber:(id)number;
+ (id)additionalTextForCallbackNumber:(id)number fullName:(id)name firstName:(id)firstName;
+ (id)contactStore;
+ (id)firstNameForContact:(id)contact;
+ (id)fullNameForContact:(id)contact;
+ (id)getUrlForTrigger:(int64_t)trigger;
+ (id)locationShifter;
+ (id)mapTriggerToActivationReason:(int64_t)reason;
+ (id)meContact;
+ (id)sharedInstance;
+ (void)_sendCKMessage:(id)message failureBlock:(id)block;
+ (void)_sendMessage:(id)message location:(id)location recipients:(id)recipients recipientReasonMessages:(id)messages useStandalone:(BOOL)standalone critical:(BOOL)critical failureBlock:(id)block;
+ (void)_sendMessageToRecipients:(id)recipients withLocation:(id)location isFirstMessage:(BOOL)message medicalIDName:(id)name Reason:(int64_t)reason;
+ (void)preloadContactStoreIfNecessary;
+ (void)shiftedLocationWithLocation:(id)location completion:(id)completion;
- (BOOL)isTriggerEnabled:(int64_t)enabled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)locationIsValidToSend:(id)send;
- (SOSEngine)init;
- (SOSEngine)initWithoutEntitlement;
- (SOSFlowManagerCoexProtocol)sosFlowManager;
- (void)SOSSendingLocationUpdateChanged:(id)changed;
- (void)_checkEmergencyCallStatus;
- (void)_checkSOSCallStatus;
- (void)_onEmergencyCallStatusChanged:(id)changed;
- (void)_tuCallCenterStatusChanged:(id)changed;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)broadcastUpdatedSOSStatus:(id)status;
- (void)contactStoreDidChange;
- (void)databaseWasRebuilt;
- (void)dealloc;
- (void)didDismissSOSBeforeSOSCall:(int64_t)call;
- (void)dismissSOSWithCompletion:(id)completion;
- (void)fetchMedicalIDName;
- (void)handoffFallbackWithUUID:(id)d trigger:(int64_t)trigger;
- (void)mostRecentLocationSentWithCompletion:(id)completion;
- (void)notifyEmergencyReasonToSafetyBuddy;
- (void)notifyEmergencyReasonToSafetyBuddyForInternalDevices;
- (void)notifySafetyKitWithSOSStatus:(id)status;
- (void)retriggerSOSWithUUID:(id)d trigger:(int64_t)trigger;
- (void)sosPersistentTimerLocationManagerTimerFired:(id)fired location:(id)location;
- (void)start;
- (void)startSendingLocationUpdateForReason:(int64_t)reason WithCompletion:(id)completion;
- (void)startSendingLocationUpdateWithCompletion:(id)completion;
- (void)stopSendingLocationUpdate;
- (void)syncState:(id)state;
- (void)triggerSOSWithUUID:(id)d triggerMechanism:(int64_t)mechanism source:(int64_t)source completion:(id)completion;
- (void)updateCurrentSOSButtonPressState:(id)state;
- (void)updateCurrentSOSInitiationState:(int64_t)state;
- (void)updateCurrentSOSInteractiveState:(int64_t)state;
- (void)willStartSendingLocationUpdate;
@end

@implementation SOSEngine

- (void)_checkEmergencyCallStatus
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCalls = [mEMORY[0x277D6EDF8] currentCalls];
  v6 = [v3 initWithArray:currentCalls];

  mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
  callsOnDefaultPairedDevice = [mEMORY[0x277D6EDF8]2 callsOnDefaultPairedDevice];
  [v6 addObjectsFromArray:callsOnDefaultPairedDevice];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (v13 && [*(*(&v14 + 1) + 8 * i) isEmergency])
        {
          v10 = v13;
          goto LABEL_12;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  [(SOSEngine *)self _onEmergencyCallStatusChanged:v10];
}

- (void)_checkSOSCallStatus
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCalls = [mEMORY[0x277D6EDF8] currentCalls];
  v5 = [v2 initWithArray:currentCalls];

  mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
  callsOnDefaultPairedDevice = [mEMORY[0x277D6EDF8]2 callsOnDefaultPairedDevice];
  [v5 addObjectsFromArray:callsOnDefaultPairedDevice];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (v12 && [*(*(&v14 + 1) + 8 * i) isSOS])
        {
          v9 = v12;
          goto LABEL_12;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v13 = +[SOSStatusManager sharedInstance];
  [v13 handleSOSCallStatusChange:v9];
}

- (SOSEngine)init
{
  if ([SOSEntitlement currentProcessHasEntitlement:@"com.apple.sos.trigger"])
  {
    self = [(SOSEngine *)self initWithoutEntitlement];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SOSEngine)initWithoutEntitlement
{
  v29.receiver = self;
  v29.super_class = SOSEngine;
  v2 = [(SOSEngine *)&v29 init];
  v3 = v2;
  if (v2)
  {
    v4 = sos_default_log(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSEngine, init", buf, 2u);
    }

    v5 = objc_opt_new();
    clientConnections = v3->_clientConnections;
    v3->_clientConnections = v5;

    sharedInstance = [getSAServerClass() sharedInstance];
    v8 = objc_opt_new();
    contactsManager = v3->_contactsManager;
    v3->_contactsManager = v8;

    v10 = +[SOSPersistentTimerLocationManager sharedInstance];
    sosPersistentTimerLocationManager = v3->_sosPersistentTimerLocationManager;
    v3->_sosPersistentTimerLocationManager = v10;

    [(SOSPersistentTimerLocationManager *)v3->_sosPersistentTimerLocationManager setDelegate:v3];
    v12 = +[SOSStatusManager sharedInstance];
    sosStatusManager = v3->_sosStatusManager;
    v3->_sosStatusManager = v12;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_SOSSendingLocationUpdateChanged_ name:@"SOSSendingLocationUpdateChangedNotification" object:0];

    v15 = +[SOSCoordinator sharedInstance];
    sosCoordinator = v3->_sosCoordinator;
    v3->_sosCoordinator = v15;

    [(SOSCoordinator *)v3->_sosCoordinator addObserver:v3->_sosStatusManager];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:v3];

    v18 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_4);
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__tuCallCenterStatusChanged_ name:*MEMORY[0x277D6EFF0] object:0];

    objc_initWeak(buf, v3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__SOSEngine_initWithoutEntitlement__block_invoke_2;
    block[3] = &unk_279B53930;
    objc_copyWeak(&v27, buf);
    dispatch_async(v18, block);

    v20 = +[SOSCoreAnalyticsReporter sharedInstance];
    coreAnalyticsReporter = v3->_coreAnalyticsReporter;
    v3->_coreAnalyticsReporter = v20;

    v23 = sos_default_log(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_264323000, v23, OS_LOG_TYPE_DEFAULT, "SOSEngine, finished init", v25, 2u);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __35__SOSEngine_initWithoutEntitlement__block_invoke()
{
  v0 = +[SOSStatusManager sharedInstance];
  [v0 checkSOSStatusOnLaunch];
}

void __35__SOSEngine_initWithoutEntitlement__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__SOSEngine_initWithoutEntitlement__block_invoke_3;
  v3[3] = &unk_279B53930;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 registerWithCompletionHandler:v3];

  objc_destroyWeak(&v4);
}

void __35__SOSEngine_initWithoutEntitlement__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkEmergencyCallStatus];
  [WeakRetained _checkSOSCallStatus];
}

- (void)start
{
  v14 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"SOSSendingLocationUpdateStopTimeKey"];

  if (v4)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [date compare:v4] == 1;

    v8 = sos_default_log(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "Stopping location updates based on timeToStopSending: %@", buf, 0xCu);
      }

      [(SOSEngine *)self stopSendingLocationUpdate];
    }

    else
    {
      if (v9)
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "Starting location updates based on timeToStopSending: %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __18__SOSEngine_start__block_invoke;
      v10[3] = &unk_279B53958;
      objc_copyWeak(&v11, buf);
      [(SOSEngine *)self startSendingLocationUpdateWithCompletion:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }
}

void __18__SOSEngine_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x277CBEAA8] distantPast];
    v3 = v4[3];
    v4[3] = v2;

    WeakRetained = v4;
  }
}

- (void)dealloc
{
  [(SOSCoordinator *)self->_sosCoordinator removeObserver:self->_sosStatusManager];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = SOSEngine;
  [(SOSEngine *)&v5 dealloc];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SOSEngine_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sSOSEngine;

  return v2;
}

uint64_t __27__SOSEngine_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sSOSEngine = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)_tuCallCenterStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = changedCopy;
  if (changedCopy)
  {
    name = [changedCopy name];
    v7 = [name isEqualToString:*MEMORY[0x277D6EFF0]];

    v9 = sos_default_log(v8);
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "SOSEngine, received TUCallCenterCallStatusChangedNotification notification", v11, 2u);
      }

      [(SOSEngine *)self _checkEmergencyCallStatus];
      [(SOSEngine *)self _checkSOSCallStatus];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SOSEngine *)v5 _tuCallCenterStatusChanged:v10];
      }
    }
  }
}

- (void)_onEmergencyCallStatusChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = changedCopy;
  if (changedCopy)
  {
    changedCopy = [changedCopy isActive];
    v6 = changedCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = sos_default_log(changedCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    isEmergencyCallOngoing = self->_isEmergencyCallOngoing;
    v9[0] = 67109376;
    v9[1] = isEmergencyCallOngoing;
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSEngine,isEmergencyCallOngoing updated, from, %{BOOL}d, to %{BOOL}d", v9, 0xEu);
  }

  self->_isEmergencyCallOngoing = v6;
}

- (void)SOSSendingLocationUpdateChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  isSendingLocationUpdate = [(SOSEngine *)self isSendingLocationUpdate];
  v6 = self->_clientConnections;
  objc_sync_enter(v6);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  clientConnections = [(SOSEngine *)self clientConnections];
  v8 = [clientConnections countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(clientConnections);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) remoteObjectProxyWithErrorHandler:&__block_literal_global_369];
        [v11 setSendingLocationUpdate:isSendingLocationUpdate];

        ++v10;
      }

      while (v8 != v10);
      v8 = [clientConnections countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
}

void __45__SOSEngine_SOSSendingLocationUpdateChanged___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__SOSEngine_SOSSendingLocationUpdateChanged___block_invoke_cold_1();
  }
}

- (void)updateCurrentSOSInitiationState:(int64_t)state
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientConnections = [(SOSEngine *)self clientConnections];
    *buf = 134218242;
    stateCopy = state;
    v20 = 2112;
    v21 = clientConnections;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to update current sos initiation state to %ld for connections: %@", buf, 0x16u);
  }

  self->_currentSOSInitiationState = state;
  if (!state)
  {
    [(SOSPersistentTimerLocationManager *)self->_sosPersistentTimerLocationManager stopRequestingLocationUpdates];
  }

  v7 = self->_clientConnections;
  objc_sync_enter(v7);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  clientConnections2 = [(SOSEngine *)self clientConnections];
  v9 = [clientConnections2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(clientConnections2);
        }

        v12 = [*(*(&v13 + 1) + 8 * v11) remoteObjectProxyWithErrorHandler:&__block_literal_global_371];
        [v12 updateClientCurrentSOSInitiationState:state];

        ++v11;
      }

      while (v9 != v11);
      v9 = [clientConnections2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
}

void __45__SOSEngine_updateCurrentSOSInitiationState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__SOSEngine_updateCurrentSOSInitiationState___block_invoke_cold_1();
  }
}

- (void)updateCurrentSOSInteractiveState:(int64_t)state
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientConnections = [(SOSEngine *)self clientConnections];
    *buf = 134218242;
    stateCopy = state;
    v23 = 2112;
    v24 = clientConnections;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to update current sos interactive state to %ld for connections: %@", buf, 0x16u);
  }

  self->_currentSOSInteractiveState = state;
  obj = self->_clientConnections;
  objc_sync_enter(obj);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  clientConnections2 = [(SOSEngine *)self clientConnections];
  v8 = [clientConnections2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(clientConnections2);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_373];
        v13 = objc_opt_respondsToSelector();
        if (v13)
        {
          [v12 updateClientCurrentSOSInteractiveState:state];
        }

        else
        {
          v14 = sos_default_log(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            stateCopy = v11;
            _os_log_error_impl(&dword_264323000, v14, OS_LOG_TYPE_ERROR, "Could not send client a current interactive state due to client protocol error for connection %@", buf, 0xCu);
          }
        }
      }

      v8 = [clientConnections2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  objc_sync_exit(obj);
}

void __46__SOSEngine_updateCurrentSOSInteractiveState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__SOSEngine_updateCurrentSOSInteractiveState___block_invoke_cold_1();
  }
}

- (void)updateCurrentSOSButtonPressState:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = sos_default_log(stateCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    clientConnections = [(SOSEngine *)self clientConnections];
    *buf = 138412546;
    v20 = stateCopy;
    v21 = 2112;
    v22 = clientConnections;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSEngine,attempting to update current sos button press state to %@ for connections: %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_currentSOSButtonPressState, state);
  v8 = self->_clientConnections;
  objc_sync_enter(v8);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clientConnections2 = [(SOSEngine *)self clientConnections];
  v10 = [clientConnections2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(clientConnections2);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) remoteObjectProxyWithErrorHandler:&__block_literal_global_377];
        [v13 updateClientCurrentSOSButtonPressState:stateCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [clientConnections2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

void __46__SOSEngine_updateCurrentSOSButtonPressState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__SOSEngine_updateCurrentSOSButtonPressState___block_invoke_cold_1();
  }
}

- (void)dismissSOSWithCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  obj = self->_clientConnections;
  objc_sync_enter(obj);
  clientConnections = [(SOSEngine *)self clientConnections];
  v6 = [clientConnections count];

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  clientConnections2 = [(SOSEngine *)self clientConnections];
  v8 = [clientConnections2 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(clientConnections2);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __38__SOSEngine_dismissSOSWithCompletion___block_invoke;
        v20[3] = &unk_279B53980;
        v12 = completionCopy;
        v21 = v12;
        v13 = [v11 remoteObjectProxyWithErrorHandler:v20];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __38__SOSEngine_dismissSOSWithCompletion___block_invoke_378;
        v15[3] = &unk_279B539D0;
        v17 = v28;
        v18 = v26;
        v19 = v6;
        v16 = v12;
        [v13 dismissClientSOSWithCompletion:v15];

        ++v10;
      }

      while (v8 != v10);
      v8 = [clientConnections2 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
  objc_sync_exit(obj);
}

void __38__SOSEngine_dismissSOSWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__SOSEngine_dismissSOSWithCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __38__SOSEngine_dismissSOSWithCompletion___block_invoke_378(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SOSEngine_dismissSOSWithCompletion___block_invoke_2;
  block[3] = &unk_279B539A8;
  v9 = a2;
  v2 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = v2;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __38__SOSEngine_dismissSOSWithCompletion___block_invoke_2(uint64_t result)
{
  ++*(*(*(result + 40) + 8) + 24);
  if (*(result + 64) == 1)
  {
    *(*(*(result + 48) + 8) + 24) = 1;
  }

  if (*(*(*(result + 40) + 8) + 24) == *(result + 56))
  {
    return (*(*(result + 32) + 16))(*(result + 32), *(*(*(result + 48) + 8) + 24));
  }

  return result;
}

- (void)didDismissSOSBeforeSOSCall:(int64_t)call
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = self->_clientConnections;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  clientConnections = [(SOSEngine *)self clientConnections];
  v7 = [clientConnections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(clientConnections);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteObjectProxyWithErrorHandler:&__block_literal_global_381];
        [v10 didDismissClientSOSBeforeSOSCall:call];

        ++v9;
      }

      while (v7 != v9);
      v7 = [clientConnections countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

void __40__SOSEngine_didDismissSOSBeforeSOSCall___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40__SOSEngine_didDismissSOSBeforeSOSCall___block_invoke_cold_1();
  }
}

- (void)broadcastUpdatedSOSStatus:(id)status
{
  v20 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = sos_default_log(statusCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [statusCopy description];
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSEngine, broadcasting SOSStatus: %@", buf, 0xCu);
  }

  v7 = self->_clientConnections;
  objc_sync_enter(v7);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  clientConnections = [(SOSEngine *)self clientConnections];
  v9 = [clientConnections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(clientConnections);
        }

        v12 = [*(*(&v13 + 1) + 8 * v11) remoteObjectProxyWithErrorHandler:&__block_literal_global_383];
        [v12 didUpdateSOSStatus:statusCopy];

        ++v11;
      }

      while (v9 != v11);
      v9 = [clientConnections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
}

void __39__SOSEngine_broadcastUpdatedSOSStatus___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __39__SOSEngine_broadcastUpdatedSOSStatus___block_invoke_cold_1();
  }
}

- (void)notifySafetyKitWithSOSStatus:(id)status
{
  v16 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if ([statusCopy resolution] == 4)
  {
    sharedInstance = [getSAServerClass() sharedInstance];
    [sharedInstance startMonitoringLocation];
  }

  if ([statusCopy trigger] == 7)
  {
    resolution = [statusCopy resolution];
    if (resolution)
    {
      v6 = resolution == 4;
      v7 = sos_default_log(resolution);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[SOSEngine notifySafetyKitWithSOSStatus:]";
        v14 = 2112;
        v15 = statusCopy;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "%s - Notifying clients most recent kappa event, %@", &v12, 0x16u);
      }

      sharedInstance2 = [getSAServerClass() sharedInstance];
      timeOfDetection = [statusCopy timeOfDetection];
      timeOfResolution = [statusCopy timeOfResolution];
      [sharedInstance2 notifyCrashDetectedAt:timeOfDetection resolvedAt:timeOfResolution resolvedWithResponse:v6 completion:&__block_literal_global_386];

      sharedInstance3 = [getSAServerClass() sharedInstance];
      [sharedInstance3 stopMonitoringLocation];
    }
  }
}

- (void)sosPersistentTimerLocationManagerTimerFired:(id)fired location:(id)location
{
  v56 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  notificationEnabledAndContactsExist = [(SOSEngine *)self notificationEnabledAndContactsExist];
  if (notificationEnabledAndContactsExist)
  {
    v7 = [(SOSEngine *)self locationIsValidToSend:locationCopy];
    v8 = v7;
    v9 = sos_default_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 136315650;
      v47 = "[SOSEngine sosPersistentTimerLocationManagerTimerFired:location:]";
      v48 = 1024;
      v49 = v8;
      v50 = 2112;
      *v51 = locationCopy;
      _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "%s - isLocationValid: %d location: %@", &v46, 0x1Cu);
    }

    if ((v8 & 1) == 0)
    {

      locationCopy = 0;
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = standardUserDefaults;
    if (!self->_timeLastMessageSent)
    {
LABEL_36:
      v34 = objc_opt_class();
      phoneNumbersToMessage = [(SOSContactsManager *)self->_contactsManager phoneNumbersToMessage];
      [v34 _sendMessageToRecipients:phoneNumbersToMessage withLocation:locationCopy isFirstMessage:self->_timeLastMessageSent == 0 medicalIDName:self->_medicalIDName Reason:self->_notifyContactsReason];

      objc_storeStrong(&self->_lastLocationSent, locationCopy);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSMostRecentLocationSentChangedNotification", 0, 0, 1u);
      date = [MEMORY[0x277CBEAA8] date];
      timeLastMessageSent = self->_timeLastMessageSent;
      self->_timeLastMessageSent = date;

LABEL_37:
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v40 = [standardUserDefaults2 objectForKey:@"SOSSendingLocationUpdateStopTimeKey"];

      if (v40 && ([MEMORY[0x277CBEAA8] date], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "compare:", v40), v42, v43 == 1))
      {
        v44 = sos_default_log(v41);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 138412290;
          v47 = v40;
          _os_log_impl(&dword_264323000, v44, OS_LOG_TYPE_DEFAULT, "Stopping timer based on timeToStopSending: %@", &v46, 0xCu);
        }

        [(SOSEngine *)self stopSendingLocationUpdate];
      }

      else
      {
        v45 = sos_default_log(v41);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 138412290;
          v47 = v40;
          _os_log_impl(&dword_264323000, v45, OS_LOG_TYPE_DEFAULT, "Not yet reached timeToStopSending: %@", &v46, 0xCu);
        }
      }

      goto LABEL_46;
    }

    v12 = [standardUserDefaults objectForKey:@"locationUpdateTimerIntervalSeconds"];
    v13 = v12;
    if (v12)
    {
      [v12 doubleValue];
      v15 = v14;
    }

    else
    {
      v15 = 900.0;
    }

    v17 = [v11 objectForKey:@"locationUpdateMinimumDistanceMeters"];
    v18 = v17;
    if (v17)
    {
      [v17 doubleValue];
      v20 = v19;
    }

    else
    {
      v20 = 402.336;
    }

    if (v15 <= 60.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 10.0;
    }

    timeIntervalSinceNow = [(NSDate *)self->_timeLastMessageSent timeIntervalSinceNow];
    v23 = 0;
    v25 = -v24;
    v26 = v15 - v21;
    lastLocationSent = self->_lastLocationSent;
    if (locationCopy && lastLocationSent)
    {
      timeIntervalSinceNow = [locationCopy distanceFromLocation:?];
      if (v26 <= v25 && v28 > v20)
      {
        v23 = 1;
        v31 = 1;
        goto LABEL_33;
      }

      v23 = v28 > v20;
      lastLocationSent = self->_lastLocationSent;
    }

    if (locationCopy)
    {
      v30 = lastLocationSent == 0;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
LABEL_33:
    v32 = sos_default_log(timeIntervalSinceNow);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = self->_lastLocationSent;
      v46 = 136316418;
      v47 = "[SOSEngine sosPersistentTimerLocationManagerTimerFired:location:]";
      v48 = 1024;
      v49 = v31;
      v50 = 1024;
      *v51 = v26 <= v25;
      *&v51[4] = 1024;
      *&v51[6] = v23;
      v52 = 2112;
      v53 = v33;
      v54 = 2112;
      v55 = locationCopy;
      _os_log_impl(&dword_264323000, v32, OS_LOG_TYPE_DEFAULT, "%s - okToSend: %d timeIntervalOk: %d distanceIntervalOk: %d _lastLocationSent: %@ location: %@", &v46, 0x32u);
    }

    if (!v31)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v16 = sos_default_log(notificationEnabledAndContactsExist);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 136315138;
    v47 = "[SOSEngine sosPersistentTimerLocationManagerTimerFired:location:]";
    _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "%s - Stopping timer, emergency contact notification no longer enabled", &v46, 0xCu);
  }

  [(SOSEngine *)self stopSendingLocationUpdate];
LABEL_46:
}

+ (void)_sendMessageToRecipients:(id)recipients withLocation:(id)location isFirstMessage:(BOOL)message medicalIDName:(id)name Reason:(int64_t)reason
{
  messageCopy = message;
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  locationCopy = location;
  recipientsCopy = recipients;
  v15 = sos_default_log(recipientsCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "+[SOSEngine _sendMessageToRecipients:withLocation:isFirstMessage:medicalIDName:Reason:]";
    _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v17 = sos_default_log(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v17, OS_LOG_TYPE_DEFAULT, "Try sending SMS...", buf, 2u);
  }

  v18 = [self _sosMessageForLocation:locationCopy isFirstMessage:messageCopy medicalIDName:nameCopy reason:reason recipientReason:1];
  v19 = [self _sosMessageForLocation:locationCopy isFirstMessage:messageCopy medicalIDName:nameCopy reason:reason recipientReason:2];

  v24 = &unk_2875D2A88;
  v25 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __87__SOSEngine__sendMessageToRecipients_withLocation_isFirstMessage_medicalIDName_Reason___block_invoke_397;
  v21[3] = &unk_279B534C0;
  v22 = &__block_literal_global_394;
  selfCopy = self;
  [self _sendMessage:v18 location:locationCopy recipients:recipientsCopy recipientReasonMessages:v20 useStandalone:0 critical:messageCopy failureBlock:v21];
}

void __87__SOSEngine__sendMessageToRecipients_withLocation_isFirstMessage_medicalIDName_Reason___block_invoke_397(uint64_t a1)
{
  v2 = [*(a1 + 40) _isBasebandDevice];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    v4 = sos_default_log(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__SOSEngine__sendMessageToRecipients_withLocation_isFirstMessage_medicalIDName_Reason___block_invoke_397_cold_1(v4);
    }
  }
}

+ (void)_sendMessage:(id)message location:(id)location recipients:(id)recipients recipientReasonMessages:(id)messages useStandalone:(BOOL)standalone critical:(BOOL)critical failureBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  recipientsCopy = recipients;
  messagesCopy = messages;
  blockCopy = block;
  locationCopy = location;
  v20 = sos_default_log(locationCopy);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "+[SOSEngine _sendMessage:location:recipients:recipientReasonMessages:useStandalone:critical:failureBlock:]";
    _os_log_impl(&dword_264323000, v20, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __106__SOSEngine__sendMessage_location_recipients_recipientReasonMessages_useStandalone_critical_failureBlock___block_invoke;
  v25[3] = &unk_279B53A18;
  v26 = recipientsCopy;
  v27 = messageCopy;
  v29 = blockCopy;
  selfCopy = self;
  standaloneCopy = standalone;
  criticalCopy = critical;
  v28 = messagesCopy;
  v21 = blockCopy;
  v22 = messagesCopy;
  v23 = messageCopy;
  v24 = recipientsCopy;
  [self shiftedLocationWithLocation:locationCopy completion:v25];
}

void __106__SOSEngine__sendMessage_location_recipients_recipientReasonMessages_useStandalone_critical_failureBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SOSRecipient handlesFromRecipients:*(a1 + 32)];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getCKSOSMessageClass_softClass;
  v14 = getCKSOSMessageClass_softClass;
  if (!getCKSOSMessageClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getCKSOSMessageClass_block_invoke;
    v10[3] = &unk_279B53140;
    v10[4] = &v11;
    __getCKSOSMessageClass_block_invoke(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  v7 = [[v5 alloc] initWithMessage:*(a1 + 40) recipients:v4];
  v8 = [SOSRecipient reasonsDictionaryFromRecipients:*(a1 + 32)];
  [v7 setRecipientReasons:v8];

  if (objc_opt_respondsToSelector())
  {
    [v7 setRecipientReasonMessages:*(a1 + 48)];
  }

  v9 = [*(a1 + 64) GPSCoordinatesURLForLocation:v3];
  [v7 setLocationURL:v9];

  [v7 setUseStandalone:*(a1 + 72)];
  [v7 setIsCritical:*(a1 + 73)];
  [*(a1 + 64) _sendCKMessage:v7 failureBlock:*(a1 + 56)];
}

+ (void)_sendCKMessage:(id)message failureBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  blockCopy = block;
  v7 = [messageCopy copy];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __41__SOSEngine__sendCKMessage_failureBlock___block_invoke;
  v17 = &unk_279B53510;
  v8 = v7;
  v18 = v8;
  v9 = blockCopy;
  v19 = v9;
  v10 = sos_default_log([messageCopy setFailureBlock:&v14]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = messageCopy;
    _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "Asking CKSOSUtilities to send message: %@", &buf, 0xCu);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v11 = getCKSOSUtilitiesClass_softClass;
  v23 = getCKSOSUtilitiesClass_softClass;
  if (!getCKSOSUtilitiesClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v25 = __getCKSOSUtilitiesClass_block_invoke;
    v26 = &unk_279B53140;
    v27 = &v20;
    __getCKSOSUtilitiesClass_block_invoke(&buf);
    v11 = v21[3];
  }

  v12 = v11;
  _Block_object_dispose(&v20, 8);
  sharedUtilities = [v11 sharedUtilities];
  [sharedUtilities sendMessage:messageCopy];
}

uint64_t __41__SOSEngine__sendCKMessage_failureBlock___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to send %@", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)locationShifter
{
  if (locationShifter_onceToken != -1)
  {
    +[SOSEngine locationShifter];
  }

  v3 = locationShifter_sLocationShifter;

  return v3;
}

void __28__SOSEngine_locationShifter__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = get_MKLocationShifterClass_softClass;
  v8 = get_MKLocationShifterClass_softClass;
  if (!get_MKLocationShifterClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __get_MKLocationShifterClass_block_invoke;
    v4[3] = &unk_279B53140;
    v4[4] = &v5;
    __get_MKLocationShifterClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = objc_alloc_init(v0);
  v3 = locationShifter_sLocationShifter;
  locationShifter_sLocationShifter = v2;
}

+ (void)shiftedLocationWithLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  if (locationCopy && ([self locationShifter], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, objc_msgSend(self, "locationShifter"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(objc_opt_class(), "isLocationShiftRequiredForLocation:", locationCopy), v10, v9, v11))
  {
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke;
    block[3] = &unk_279B53AB8;
    v15 = completionCopy;
    selfCopy = self;
    v14 = locationCopy;
    dispatch_async(v12, block);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, locationCopy);
  }
}

void __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke(uint64_t a1)
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v2 = dispatch_semaphore_create(0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_2;
  v19[3] = &unk_279B53A68;
  v21 = v22;
  v20 = *(a1 + 40);
  v3 = MEMORY[0x266735F90](v19);
  v4 = sos_default_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOS location shift started", buf, 2u);
  }

  v5 = [*(a1 + 48) locationShifter];
  v6 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_404;
  v14[3] = &unk_279B53A90;
  v15 = v6;
  v7 = v3;
  v17 = v7;
  v8 = v2;
  v16 = v8;
  v9 = MEMORY[0x277D85CD0];
  v10 = MEMORY[0x277D85CD0];
  [v5 shiftLocation:v15 withCompletionHandler:v14 callbackQueue:v9];

  v11 = dispatch_time(0, 10000000000);
  v12 = dispatch_semaphore_wait(v8, v11);
  if (v12)
  {
    v13 = sos_default_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v13, OS_LOG_TYPE_DEFAULT, "SOS location shift timed out.", buf, 2u);
    }

    (*(v7 + 2))(v7, *(a1 + 32));
  }

  _Block_object_dispose(v22, 8);
}

void __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_3;
  block[3] = &unk_279B53A40;
  v6 = *(a1 + 32);
  v4 = v6;
  v9 = v6;
  v8 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_3(void *result)
{
  v1 = *(result[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(result[5] + 16))(result[5], result[4]);
  }

  return result;
}

void __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_404(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sos_default_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOS location shift completed. Shifted from %@ to %@", &v6, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)willStartSendingLocationUpdate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = sos_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315138;
    *&v11[4] = "[SOSEngine willStartSendingLocationUpdate]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s", v11, 0xCu);
  }

  if (![(SOSEngine *)self isSendingLocationUpdate])
  {
    timeLastMessageSent = self->_timeLastMessageSent;
    self->_timeLastMessageSent = 0;

    lastLocationSent = self->_lastLocationSent;
    self->_lastLocationSent = 0;

    [(SOSContactsManager *)self->_contactsManager refreshCurrentEmergencyContacts];
  }

  notificationEnabledAndContactsExist = [(SOSEngine *)self notificationEnabledAndContactsExist];
  if (!notificationEnabledAndContactsExist)
  {
    v8 = sos_default_log(notificationEnabledAndContactsExist);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v9 = "no emergency contacts to notify";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_14;
  }

  isRequestingLocation = [(SOSPersistentTimerLocationManager *)self->_sosPersistentTimerLocationManager isRequestingLocation];
  if (isRequestingLocation)
  {
    v8 = sos_default_log(isRequestingLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v9 = "Skipping request for warmUpLocationRequest since we are already requesting location";
LABEL_11:
      _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, v9, v11, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  [(SOSPersistentTimerLocationManager *)self->_sosPersistentTimerLocationManager warmUpLocationRequest];
LABEL_14:
  if (+[SOSUtilities mostRecentlyUsedSOSTriggerMechanism]== 7)
  {
    sharedInstance = [getSAServerClass() sharedInstance];
    [sharedInstance startMonitoringLocation];
  }
}

- (void)startSendingLocationUpdateForReason:(int64_t)reason WithCompletion:(id)completion
{
  completionCopy = completion;
  notificationEnabledAndContactsExist = [(SOSEngine *)self notificationEnabledAndContactsExist];
  if (notificationEnabledAndContactsExist)
  {
    self->_notifyContactsReason = reason;
    [(SOSEngine *)self notifyEmergencyReasonToSafetyBuddy];
    [(SOSEngine *)self startSendingLocationUpdateWithCompletion:completionCopy];
  }

  else
  {
    v8 = sos_default_log(notificationEnabledAndContactsExist);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "No valid contacts to message", v9, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)notifyEmergencyReasonToSafetyBuddy
{
  v3 = +[SOSUtilities currentDeviceSOSStatus];
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.SOS"];
  v5 = [v4 valueForKey:@"SimulateSOSNotifyEmergencyContacts"];
  v6 = +[SOSUtilities _isInternalDevice];
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v3)
    {
      trigger = [v3 trigger];
      v9 = sos_default_log(trigger);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (trigger <= 6)
      {
        if (trigger)
        {
          if (trigger == 5)
          {
            if (v10)
            {
              *v13 = 0;
              _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Newton", v13, 2u);
            }

            v11 = SOSEventNotificationNewton;
            goto LABEL_37;
          }

          if (trigger == 6)
          {
            if (v10)
            {
              *v13 = 0;
              _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Cinnamon", v13, 2u);
            }

            v11 = SOSEventNotificationCinnamon;
LABEL_37:
            notify_post(v11);
            goto LABEL_38;
          }

LABEL_28:
          if (v10)
          {
            *v13 = 0;
            _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Trigger", v13, 2u);
          }

          v11 = SOSEventNotificationTrigger;
          goto LABEL_37;
        }

        if (v10)
        {
          *v13 = 0;
          v12 = "#notifySB notifyEmergencyReasonToSafetyBuddy for unknown reason";
          goto LABEL_16;
        }

LABEL_17:

        goto LABEL_38;
      }

      if (trigger == 7)
      {
        if (v10)
        {
          *v13 = 0;
          _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Kappa", v13, 2u);
        }

        v11 = SOSEventNotificationKappa;
        goto LABEL_37;
      }

      if (trigger == 8)
      {
        if (v10)
        {
          *v13 = 0;
          _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Mandrake", v13, 2u);
        }

        v11 = SOSEventNotificationMandrake;
        goto LABEL_37;
      }

      if (trigger != 9)
      {
        goto LABEL_28;
      }

      if (!v10)
      {
        goto LABEL_17;
      }

      *v13 = 0;
      v12 = "#notifySB notifyEmergencyReasonToSafetyBuddy for unknown reason";
    }

    else
    {
      v9 = sos_default_log(v6);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *v13 = 0;
      v12 = "#notifySB notifyEmergencyReasonToSafetyBuddy invalid SOSStatus";
    }

LABEL_16:
    _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    goto LABEL_17;
  }

  [(SOSEngine *)self notifyEmergencyReasonToSafetyBuddyForInternalDevices];
LABEL_38:
}

- (void)notifyEmergencyReasonToSafetyBuddyForInternalDevices
{
  v3 = +[SOSUtilities _isInternalDevice];
  if (v3)
  {
    v4 = sos_default_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "#notifySB Allowing notify contact reason to notify Safety Monitor since internal device", buf, 2u);
    }

    notifyContactsReason = self->_notifyContactsReason;
    if (notifyContactsReason == 2)
    {
      v7 = sos_default_log(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Kappa", v9, 2u);
      }

      v8 = &SOSEventNotificationKappa;
    }

    else if (notifyContactsReason == 1)
    {
      v7 = sos_default_log(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Newton", v10, 2u);
      }

      v8 = &SOSEventNotificationNewton;
    }

    else
    {
      if (notifyContactsReason)
      {
        return;
      }

      v7 = sos_default_log(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Trigger", v11, 2u);
      }

      v8 = &SOSEventNotificationTrigger;
    }

    notify_post(*v8);
  }
}

- (void)startSendingLocationUpdateWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = sos_default_log(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SOSEngine startSendingLocationUpdateWithCompletion:]";
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SOSEngine_startSendingLocationUpdateWithCompletion___block_invoke;
  v7[3] = &unk_279B53510;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __54__SOSEngine_startSendingLocationUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  *(v4 + 144) = 0;

  if ([*(a1 + 32) notificationEnabledAndContactsExist])
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [v6 objectForKey:@"locationUpdateTimerIntervalSeconds"];
    v8 = v7;
    if (v7)
    {
      [v7 doubleValue];
    }

    else
    {
      v9 = 900.0;
    }

    [*(*(a1 + 32) + 8) fireAndStartTimertWithTimeInterval:v9 / 3.0];
    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [v10 objectForKey:@"SOSSendingLocationUpdateStopTimeKey"];

    if (!v11)
    {
      v12 = [v6 objectForKey:@"stopSendingTimerIntervalSeconds"];
      v13 = v12;
      if (v12)
      {
        [v12 doubleValue];
        v15 = v14;
      }

      else
      {
        v15 = 86400.0;
      }

      v16 = [MEMORY[0x277CBEAA8] date];
      v17 = [v16 dateByAddingTimeInterval:v15];

      v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v18 setObject:v17 forKey:@"SOSSendingLocationUpdateStopTimeKey"];
    }

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = @"SOSSendingLocationUpdateValueKey";
    v23[0] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [v19 postNotificationName:@"SOSSendingLocationUpdateChangedNotification" object:0 userInfo:v20];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)stopSendingLocationUpdate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = sos_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SOSEngine stopSendingLocationUpdate]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(SOSPersistentTimerLocationManager *)self->_sosPersistentTimerLocationManager invalidateTimer];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"SOSSendingLocationUpdateStopTimeKey"];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = @"SOSSendingLocationUpdateValueKey";
  v8 = MEMORY[0x277CBEC28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [defaultCenter postNotificationName:@"SOSSendingLocationUpdateChangedNotification" object:0 userInfo:v6];
}

- (void)mostRecentLocationSentWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_class();
  lastLocationSent = self->_lastLocationSent;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SOSEngine_mostRecentLocationSentWithCompletion___block_invoke;
  v8[3] = &unk_279B53AE0;
  v9 = completionCopy;
  v7 = completionCopy;
  [v5 shiftedLocationWithLocation:lastLocationSent completion:v8];
}

- (void)syncState:(id)state
{
  stateCopy = state;
  (*(state + 2))(stateCopy, [(SOSEngine *)self isSendingLocationUpdate], self->_currentSOSInitiationState, self->_currentSOSInteractiveState, self->_currentSOSButtonPressState);
}

+ (id)meContact
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v12[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v4 = *MEMORY[0x277CBD0B8];
  v11[0] = *MEMORY[0x277CBD0B0];
  v11[1] = v4;
  v5 = *MEMORY[0x277CBD0C0];
  v11[2] = *MEMORY[0x277CBD0A8];
  v11[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v7 = [v3 arrayByAddingObjectsFromArray:v6];

  v8 = +[SOSEngine contactStore];
  v9 = [v8 _ios_meContactWithKeysToFetch:v7 error:0];

  return v9;
}

+ (id)fullNameForContact:(id)contact
{
  if (contact)
  {
    v4 = [MEMORY[0x277CBDA78] stringFromContact:contact style:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)firstNameForContact:(id)contact
{
  if (contact)
  {
    v4 = [MEMORY[0x277CBDA78] stringFromContact:contact style:1000];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_sosMessageForLocation:(id)location isFirstMessage:(BOOL)message medicalIDName:(id)name reason:(int64_t)reason recipientReason:(unint64_t)recipientReason
{
  messageCopy = message;
  v24 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  nameCopy = name;
  meContact = [self meContact];
  v15 = [self fullNameForContact:meContact];
  v16 = [self firstNameForContact:meContact];
  v17 = [v15 length];
  if (!v17 || (v17 = [v16 length]) == 0)
  {
    v18 = sos_default_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = nameCopy;
      _os_log_impl(&dword_264323000, v18, OS_LOG_TYPE_DEFAULT, "Failed to get meContact's name, using medicalID's name: %@", &v22, 0xCu);
    }

    v19 = nameCopy;
    v15 = v19;

    v16 = v15;
  }

  v20 = [self _sosMessageForLocation:locationCopy isFirstMessage:messageCopy myFullName:v15 myFirstName:v16 reason:reason recipientReason:recipientReason];

  return v20;
}

+ (id)_sosMessageForLocation:(id)location isFirstMessage:(BOOL)message myFullName:(id)name myFirstName:(id)firstName reason:(int64_t)reason recipientReason:(unint64_t)recipientReason
{
  v61[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  firstNameCopy = firstName;
  if ([(__CFString *)nameCopy length]&& ![(__CFString *)firstNameCopy length])
  {
    v14 = nameCopy;

    firstNameCopy = v14;
  }

  v15 = @"_NO_NAME";
  if ([(__CFString *)nameCopy length]&& [(__CFString *)firstNameCopy length])
  {
    v15 = @"_HAS_NAME";
  }

  v16 = v15;
  v17 = @"_HAS_LOCATION";
  if (reason == 2)
  {
    if (!location)
    {
      v17 = @"_NO_LOCATION";
    }

    v21 = v17;
    v52 = @"EMERGENCY_TYPE_KAPPA_TRIGGER";
    if (message)
    {
      v20 = @"KAPPA";
      v22 = @"_PHONE";
      goto LABEL_24;
    }
  }

  else
  {
    v18 = @"EMERGENCY_TYPE_SOS_TRIGGER";
    v19 = @"EMERGENCY";
    if (reason)
    {
      v19 = 0;
    }

    else
    {
      v18 = @"EMERGENCY_TYPE_SOS_TRIGGER";
    }

    if (reason == 1)
    {
      v20 = @"NEWTON";
    }

    else
    {
      v20 = v19;
    }

    if (reason == 1)
    {
      v18 = @"EMERGENCY_TYPE_NEWTON_TRIGGER";
    }

    v52 = v18;
    if (!location)
    {
      v17 = @"_NO_LOCATION";
    }

    v21 = v17;
    if (message)
    {
      v22 = &stru_2875C9CD8;
LABEL_24:
      v53 = v21;
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@_TEXT_MESSAGE%@%@%@", v20, v16, v21, v22];
      goto LABEL_26;
    }
  }

  v53 = v21;
  [MEMORY[0x277CCACA8] stringWithFormat:@"EMERGENCY_TEXT_MESSAGE_SUBSEQUENT%@%@", v16, v21, v48, v49];
  v23 = LABEL_26:;
  v24 = @"_EMERGENCYCONTACT";
  if (recipientReason == 2)
  {
    v24 = @"_CHECKIN";
  }

  v55 = v16;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"EMERGENCY_TEXT_MESSAGE_RECIPIENT%@%@", v24, v16];
  if (nameCopy)
  {
    v26 = nameCopy;
  }

  else
  {
    v26 = &stru_2875C9CD8;
  }

  v27 = v26;

  if (firstNameCopy)
  {
    v28 = firstNameCopy;
  }

  else
  {
    v28 = &stru_2875C9CD8;
  }

  v29 = v28;

  v30 = MEMORY[0x277CCACA8];
  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v31 localizedStringForKey:v23 value:&stru_2875C9CD8 table:0];
  v61[0] = v27;
  v61[1] = v29;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v34 = [v30 stringWithPositionalSpecifiersFormat:v32 arguments:v33];

  v35 = MEMORY[0x277CCACA8];
  v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v50 = v25;
  [v36 localizedStringForKey:v25 value:&stru_2875C9CD8 table:0];
  v38 = v37 = v23;
  v51 = v27;
  v60[0] = v27;
  v60[1] = v29;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v40 = [v35 stringWithPositionalSpecifiersFormat:v38 arguments:v39];

  v41 = MEMORY[0x277CCACA8];
  v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v43 = [v42 localizedStringForKey:v52 value:&stru_2875C9CD8 table:0];
  v44 = [v41 stringWithFormat:@"%@%@ %@", v43, v34, v40];

  v46 = sos_default_log(v45);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v57 = v37;
    v58 = 2112;
    v59 = v44;
    _os_log_impl(&dword_264323000, v46, OS_LOG_TYPE_DEFAULT, "textMessageKey: %@ sosMessage: %@", buf, 0x16u);
  }

  return v44;
}

+ (id)GPSCoordinatesURLForLocation:(id)location
{
  locationCopy = location;
  v4 = locationCopy;
  if (locationCopy)
  {
    v5 = MEMORY[0x277CCACA8];
    [locationCopy coordinate];
    v7 = v6;
    [v4 coordinate];
    v9 = [v5 stringWithFormat:@"https://maps.apple.com/?ll=%.5f, %.5f", v7, v8];
    if (v9)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"EMERGENCY_PIN_LABEL" value:&stru_2875C9CD8 table:0];
      uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
      v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

      if ([v13 length])
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"&q=%@", v13];
        v15 = [v9 stringByAppendingString:v14];

        v9 = v15;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)additionalTextForCallbackNumber:(id)number
{
  numberCopy = number;
  meContact = [self meContact];
  v6 = [self fullNameForContact:meContact];
  v7 = [self firstNameForContact:meContact];
  v8 = [self additionalTextForCallbackNumber:numberCopy fullName:v6 firstName:v7];

  return v8;
}

+ (id)additionalTextForCallbackNumber:(id)number fullName:(id)name firstName:(id)firstName
{
  numberCopy = number;
  firstNameCopy = firstName;
  v8 = [firstNameCopy length];
  if ([numberCopy length])
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    if (!v8)
    {
      v12 = [v10 localizedStringForKey:@"EMERGENCY_TEXT_CALLBACK_NUMBER_ADDITION_NO_NAME" value:&stru_2875C9CD8 table:0];
      [v9 stringWithFormat:v12, numberCopy, v15];
      goto LABEL_8;
    }

    v12 = [v10 localizedStringForKey:@"EMERGENCY_TEXT_CALLBACK_NUMBER_ADDITION_HAS_NAME" value:&stru_2875C9CD8 table:0];
    v15 = numberCopy;
LABEL_6:
    [v9 stringWithFormat:v12, firstNameCopy, v15];
    v13 = LABEL_8:;

    goto LABEL_9;
  }

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"EMERGENCY_TEXT_CALLBACK_NO_NUMBER_ADDITION_HAS_NAME" value:&stru_2875C9CD8 table:0];
    goto LABEL_6;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (BOOL)locationIsValidToSend:(id)send
{
  *&v28[13] = *MEMORY[0x277D85DE8];
  sendCopy = send;
  v4 = sos_default_log(sendCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315394;
    v26 = "[SOSEngine locationIsValidToSend:]";
    v27 = 2112;
    *v28 = sendCopy;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "%s - location: %@", &v25, 0x16u);
  }

  if (sendCopy)
  {
    horizontalAccuracy = [sendCopy horizontalAccuracy];
    if (v6 >= 0.0)
    {
      horizontalAccuracy2 = [sendCopy horizontalAccuracy];
      if (v12 <= 165.0)
      {
        integrity = [sendCopy integrity];
        v18 = integrity;
        if (integrity == *MEMORY[0x277CE4288] || integrity == *MEMORY[0x277CE4280])
        {
          timestamp = [sendCopy timestamp];
          v7 = timestamp;
          if (timestamp && (timestamp = [timestamp timeIntervalSinceNow], v21 < -180.0))
          {
            v22 = sos_default_log(timestamp);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v25 = 138412290;
              v26 = v7;
              _os_log_impl(&dword_264323000, v22, OS_LOG_TYPE_DEFAULT, "Rejecting location - timestamp too old: %@", &v25, 0xCu);
            }

            v10 = 0;
          }

          else
          {
            v22 = sos_default_log(timestamp);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              [sendCopy horizontalAccuracy];
              v25 = 134218498;
              v26 = v24;
              v27 = 1024;
              *v28 = v18;
              v28[2] = 2112;
              *&v28[3] = v7;
              _os_log_impl(&dword_264323000, v22, OS_LOG_TYPE_DEFAULT, "Keeping location - horizontalAccuracy:%f locationIntegrity:%d timestamp:%@", &v25, 0x1Cu);
            }

            v10 = 1;
          }

          goto LABEL_14;
        }

        v7 = sos_default_log(integrity);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 67109120;
          LODWORD(v26) = v18;
          v9 = "Rejecting location - locationIntegrity: %d";
          v14 = v7;
          v15 = 8;
          goto LABEL_12;
        }
      }

      else
      {
        v7 = sos_default_log(horizontalAccuracy2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          [sendCopy horizontalAccuracy];
          v25 = 134217984;
          v26 = v13;
          v9 = "Rejecting location - horizontalAccuracy > 165.0: %f";
          goto LABEL_11;
        }
      }
    }

    else
    {
      v7 = sos_default_log(horizontalAccuracy);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        [sendCopy horizontalAccuracy];
        v25 = 134217984;
        v26 = v8;
        v9 = "Rejecting location - horizontalAccuracy < 0.0: %f";
LABEL_11:
        v14 = v7;
        v15 = 12;
LABEL_12:
        _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, v9, &v25, v15);
      }
    }

    v10 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (void)retriggerSOSWithUUID:(id)d trigger:(int64_t)trigger
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_isEmergencyCallOngoing)
  {
    v4 = sos_default_log(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSEngine,retrigger blocked by ongoing emergency call", &v11, 2u);
    }

    v5 = +[SOSStatusManager sharedInstance];
    [v5 updateSOSFlowState:10];
  }

  else
  {
    v5 = [SOSEngine getUrlForTrigger:trigger];
    if (v5)
    {
      v6 = +[SOSStatusManager sharedInstance];
      [v6 updateSOSFlowState:14];

      v8 = sos_default_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "SOSEngine,opening retrigger URL,%@", &v11, 0xCu);
      }

      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      [defaultWorkspace openURL:v5 configuration:0 completionHandler:&__block_literal_global_495];
    }

    else
    {
      v10 = sos_default_log(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "SOSEngine,no URL to launch for retrigger", &v11, 2u);
      }

      defaultWorkspace = +[SOSStatusManager sharedInstance];
      [defaultWorkspace updateSOSFlowState:0];
    }
  }
}

void __42__SOSEngine_retriggerSOSWithUUID_trigger___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sos_default_log(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__SOSEngine_retriggerSOSWithUUID_trigger___block_invoke_cold_1();
    }

    v5 = +[SOSStatusManager sharedInstance];
    [v5 updateSOSFlowState:0];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS triggered successfully", v6, 2u);
  }
}

- (void)handoffFallbackWithUUID:(id)d trigger:(int64_t)trigger
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = +[SOSUtilities currentDeviceSOSStatus];
  v8 = v7;
  if (v7 && (v7 = [v7 shouldRejectNewSOSTriggers], v7))
  {
    v9 = sos_default_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v8;
      v10 = "SOSEngine,handoff fallback blocked by existing SOS flow: %@";
      v11 = v9;
      v12 = 12;
LABEL_8:
      _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
    }
  }

  else if (self->_isEmergencyCallOngoing)
  {
    v9 = sos_default_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v10 = "SOSEngine,handoff fallback blocked by ongoing emergency call";
      v11 = v9;
      v12 = 2;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [SOSEngine getUrlForTrigger:trigger];
    if (v9)
    {
      v13 = +[SOSStatusManager sharedInstance];
      [v13 sosTriggeredWithUUID:dCopy trigger:trigger source:0];

      v15 = sos_default_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "SOSEngine,opening handoff fallback URL,%@", &v17, 0xCu);
      }

      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      [defaultWorkspace openURL:v9 configuration:0 completionHandler:&__block_literal_global_497];
    }

    else
    {
      defaultWorkspace = sos_default_log(0);
      if (os_log_type_enabled(defaultWorkspace, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_264323000, defaultWorkspace, OS_LOG_TYPE_DEFAULT, "SOSEngine,no URL to launch for handoff fallback", &v17, 2u);
      }
    }
  }
}

void __45__SOSEngine_handoffFallbackWithUUID_trigger___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sos_default_log(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__SOSEngine_retriggerSOSWithUUID_trigger___block_invoke_cold_1();
    }

    v5 = +[SOSStatusManager sharedInstance];
    [v5 updateSOSFlowState:0];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS triggered successfully", v6, 2u);
  }
}

- (void)triggerSOSWithUUID:(id)d triggerMechanism:(int64_t)mechanism source:(int64_t)source completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v12 = completionCopy;
  if (!dCopy)
  {
    completionCopy = [MEMORY[0x277CCAD78] UUID];
    dCopy = completionCopy;
  }

  v13 = sos_default_log(completionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = dCopy;
    v42 = 1024;
    mechanismCopy = mechanism;
    _os_log_impl(&dword_264323000, v13, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS triggered,uuid,%@,mechanism,%d", buf, 0x12u);
  }

  v14 = +[SOSUtilities currentDeviceSOSStatus];
  v15 = +[SOSUtilities pairedDeviceSOSStatus];
  v16 = v15;
  if (v14 && (v15 = [v14 shouldRejectNewSOSTriggers], (v15 & 1) != 0) || v16 && (v15 = objc_msgSend(v16, "shouldRejectNewSOSTriggers"), v15))
  {
    v17 = sos_default_log(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v17, OS_LOG_TYPE_DEFAULT, "SOSEngine, sos flow already active, rejecting", buf, 2u);
    }

    if (v12)
    {
      v12[2](v12, 2);
    }

    coreAnalyticsReporter = [(SOSEngine *)self coreAnalyticsReporter];
    [coreAnalyticsReporter reportSOSRejectedWithTrigger:mechanism currentTriggerMechanism:{objc_msgSend(v14, "trigger")}];
LABEL_14:

    goto LABEL_45;
  }

  if (self->_isEmergencyCallOngoing)
  {
    v19 = sos_default_log(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v19, OS_LOG_TYPE_DEFAULT, "SOSEngine, emergency call is ongoing, rejecting", buf, 2u);
    }

    if (v12)
    {
      v12[2](v12, 6);
    }

    goto LABEL_45;
  }

  v20 = [(SOSEngine *)self isTriggerEnabled:mechanism];
  if ((v20 & 1) == 0)
  {
    v29 = sos_default_log(v20);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v41) = mechanism;
      _os_log_impl(&dword_264323000, v29, OS_LOG_TYPE_DEFAULT, "SOSEngine,trigger (%d) not enabled", buf, 8u);
    }

    if (v12)
    {
      v12[2](v12, 4);
    }

    coreAnalyticsReporter = +[SOSStatusManager sharedInstance];
    [coreAnalyticsReporter sosTriggerDisabledWithUUID:dCopy trigger:mechanism];
    goto LABEL_14;
  }

  v21 = +[SOSCoordinator sharedInstance];
  v22 = [v21 shouldHandoffToPairedDevice:mechanism];

  if (v22)
  {
    v24 = +[SOSCoordinator sharedInstance];
    v25 = [v24 tryPushToPairedDeviceWithUUID:dCopy triggerMechanism:mechanism];

    if (v25)
    {
      v27 = sos_default_log(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264323000, v27, OS_LOG_TYPE_DEFAULT, "SOSEngine,successfully completed SOS handoff to paired device", buf, 2u);
      }

      v28 = +[SOSStatusManager sharedInstance];
      [v28 sosTriggerPushedToPairedDeviceWithUUID:dCopy trigger:mechanism];

      if (v12)
      {
        v12[2](v12, 5);
      }

      goto LABEL_45;
    }
  }

  else
  {
    v30 = sos_default_log(v23);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v30, OS_LOG_TYPE_DEFAULT, "SOSEngine,handoff SOS trigger to paired device unsupported", buf, 2u);
    }
  }

  v31 = [SOSEngine getUrlForTrigger:mechanism];
  if (v31)
  {
    v32 = +[SOSStatusManager sharedInstance];
    [v32 sosTriggeredWithUUID:dCopy trigger:mechanism source:source];

    v34 = sos_default_log(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v31;
      _os_log_impl(&dword_264323000, v34, OS_LOG_TYPE_DEFAULT, "SOSEngine,opening URL,%@", buf, 0xCu);
    }

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __67__SOSEngine_triggerSOSWithUUID_triggerMechanism_source_completion___block_invoke;
    v38[3] = &unk_279B53B28;
    v39 = v12;
    [defaultWorkspace openURL:v31 configuration:0 completionHandler:v38];

    coreAnalyticsReporter2 = [(SOSEngine *)self coreAnalyticsReporter];
    [coreAnalyticsReporter2 reportSOSTriggered:mechanism];
  }

  else
  {
    v37 = sos_default_log(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v37, OS_LOG_TYPE_DEFAULT, "SOSEngine,no URL to launch", buf, 2u);
    }

    if (v12)
    {
      v12[2](v12, 1);
    }
  }

LABEL_45:
}

void __67__SOSEngine_triggerSOSWithUUID_triggerMechanism_source_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sos_default_log(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __42__SOSEngine_retriggerSOSWithUUID_trigger___block_invoke_cold_1();
    }

    v9 = +[SOSStatusManager sharedInstance];
    [v9 updateSOSFlowState:0];

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_10:
      v11();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS triggered successfully", v13, 2u);
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v11 = *(v12 + 16);
      goto LABEL_10;
    }
  }
}

- (BOOL)isTriggerEnabled:(int64_t)enabled
{
  enabledCopy = enabled;
  if (enabled > 9)
  {
    v5 = sos_default_log(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSEngine *)enabledCopy isTriggerEnabled:v5];
    }

    return 0;
  }

  else if (((1 << enabled) & 0x35F) != 0)
  {
    return 1;
  }

  else if (enabled == 5)
  {

    return +[SOSUtilities newtonTriggersEmergencySOS];
  }

  else
  {

    return +[SOSUtilities kappaTriggersEmergencySOS];
  }
}

+ (id)getUrlForTrigger:(int64_t)trigger
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v4 setScheme:@"telSOS"];
  v5 = [SOSEngine mapTriggerToActivationReason:trigger];
  v6 = [MEMORY[0x277CCAD18] queryItemWithName:@"reason" value:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v4 setQueryItems:v7];

  v8 = [v4 URL];

  return v8;
}

+ (id)mapTriggerToActivationReason:(int64_t)reason
{
  reasonCopy = reason;
  if (reason < 8 && ((0x8Fu >> reason) & 1) != 0)
  {
    return off_279B53C08[reason];
  }

  v5 = sos_default_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SOSEngine *)reasonCopy mapTriggerToActivationReason:v5];
  }

  return @"SOSRemoteAlertActivationReasonActivatingForSOSWithVolumeLockHold";
}

- (void)contactStoreDidChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SOSFriendsChangedNotification" object:0];
}

+ (void)preloadContactStoreIfNecessary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SOSEngine_preloadContactStoreIfNecessary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (preloadContactStoreIfNecessary_once_1 != -1)
  {
    dispatch_once(&preloadContactStoreIfNecessary_once_1, block);
  }
}

void __43__SOSEngine_preloadContactStoreIfNecessary__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.sos.contactStoreQueue", 0);
  v3 = __contactStoreQueue_1;
  __contactStoreQueue_1 = v2;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SOSEngine_preloadContactStoreIfNecessary__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(__contactStoreQueue_1, block);
}

void *__43__SOSEngine_preloadContactStoreIfNecessary__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) authorizedToUseContactStore];
  if (result)
  {
    __contactStore_1 = [MEMORY[0x277CBDAB8] storeWithOptions:1];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

+ (id)contactStore
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  [self preloadContactStoreIfNecessary];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__SOSEngine_contactStore__block_invoke;
  block[3] = &unk_279B53140;
  block[4] = &v5;
  dispatch_sync(__contactStoreQueue_1, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (BOOL)authorizedToUseContactStore
{
  if (authorizedToUseContactStore_onceToken_1 != -1)
  {
    +[SOSEngine authorizedToUseContactStore];
  }

  return authorizedToUseContactStore_contactStoreAuthorized_1;
}

void __40__SOSEngine_authorizedToUseContactStore__block_invoke()
{
  v0 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
  authorizedToUseContactStore_contactStoreAuthorized_1 = v0 == 3;
  if (v0 != 3)
  {
    NSLog(&cfstr_NotAuthorizedT.isa, v0);
  }
}

- (void)fetchMedicalIDName
{
  objc_initWeak(&location, self);
  v2 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  [v2 setDebugIdentifier:@"com.apple.sos"];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__SOSEngine_fetchMedicalIDName__block_invoke;
  v3[3] = &unk_279B53B50;
  objc_copyWeak(&v4, &location);
  [v2 fetchMedicalIDDataWithCompletion:v3];
  objc_destroyWeak(&v4);

  objc_destroyWeak(&location);
}

void __31__SOSEngine_fetchMedicalIDName__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = CUTWeakLinkClass();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v9 hasAnyData] && (objc_msgSend(v3, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "lostModeIsActive"), v5, (v6 & 1) == 0))
    {
      v7 = [v9 name];
    }

    else
    {
      v7 = 0;
    }

    v8 = WeakRetained[5];
    WeakRetained[5] = v7;
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  uninstallCopy = uninstall;
  v5 = [uninstallCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];

        if (v10)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __38__SOSEngine_applicationsDidUninstall___block_invoke;
          block[3] = &unk_279B532A0;
          block[4] = self;
          dispatch_async(MEMORY[0x277D85CD0], block);
          goto LABEL_11;
        }
      }

      v6 = [uninstallCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void *__38__SOSEngine_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSendingLocationUpdate];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 stopSendingLocationUpdate];
  }

  return result;
}

- (void)databaseWasRebuilt
{
  if (!+[SOSUtilities isMessagesAppInstalled])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__SOSEngine_databaseWasRebuilt__block_invoke;
    block[3] = &unk_279B532A0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void *__31__SOSEngine_databaseWasRebuilt__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSendingLocationUpdate];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 stopSendingLocationUpdate];
  }

  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.sos.trigger"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke;
    v13[3] = &unk_279B53BA0;
    v14 = connectionCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], v13);
    v9 = v14;
  }

  else
  {
    v9 = sos_default_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v17 = connectionCopy;
      *&v17[8] = 2112;
      *&v17[10] = @"com.apple.sos.trigger";
      _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] SOSEngine,New connection %@ missing entitlement: %@", buf, 0x16u);
    }
  }

  v11 = sos_default_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v17 = bOOLValue;
    *&v17[4] = 2112;
    *&v17[6] = connectionCopy;
    _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "SOSEngine,shouldAcceptNewConnection: %d for connection: %@", buf, 0x12u);
  }

  return bOOLValue;
}

void __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = SOSClientInterface();
  [*(a1 + 32) setRemoteObjectInterface:v2];

  v3 = SOSServerInterface();
  [*(a1 + 32) setExportedInterface:v3];

  [*(a1 + 32) setExportedObject:*(a1 + 40)];
  v4 = [*(a1 + 40) clientConnections];
  objc_sync_enter(v4);
  v5 = [*(a1 + 40) clientConnections];
  [v5 addObject:*(a1 + 32)];

  objc_sync_exit(v4);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, *(a1 + 40));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke_2;
  v9[3] = &unk_279B53930;
  objc_copyWeak(&v10, &location);
  [*(a1 + 32) setInterruptionHandler:v9];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke_534;
  v6[3] = &unk_279B53B78;
  objc_copyWeak(&v7, &from);
  objc_copyWeak(&v8, &location);
  [*(a1 + 32) setInvalidationHandler:v6];
  [*(a1 + 32) resume];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS client connection interrupted", buf, 2u);
  }

  objc_copyWeak(&to, (a1 + 32));
  v3 = objc_loadWeakRetained(&to);
  [v3 invalidate];

  objc_destroyWeak(&to);
}

void __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke_534(uint64_t a1)
{
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS client connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_copyWeak(&to, (a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&to);

    if (v5)
    {
      v6 = [WeakRetained clientConnections];
      objc_sync_enter(v6);
      v7 = [WeakRetained clientConnections];
      v8 = objc_loadWeakRetained(&to);
      [v7 removeObject:v8];

      objc_sync_exit(v6);
      v4 = [WeakRetained updateCurrentSOSInteractiveState:0];
    }
  }

  v9 = sos_default_log(v4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SOSEngine,completed invalidationHandler cleanup", v10, 2u);
  }

  objc_destroyWeak(&to);
}

- (SOSFlowManagerCoexProtocol)sosFlowManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sosFlowManager);

  return WeakRetained;
}

- (void)_tuCallCenterStatusChanged:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  [v3 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_264323000, a2, OS_LOG_TYPE_ERROR, "SOSEngine, unexpected call event notification %s", v4, 0xCu);
}

- (void)isTriggerEnabled:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_264323000, a2, OS_LOG_TYPE_ERROR, "SOSEngine,isTriggerEnabled,unrecognized SOSTriggerMechanism %d", v2, 8u);
}

+ (void)mapTriggerToActivationReason:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_264323000, a2, OS_LOG_TYPE_ERROR, "SOSEngine,trying to get activation reason for unhandled SOSTriggerMechanism,%d", v2, 8u);
}

@end