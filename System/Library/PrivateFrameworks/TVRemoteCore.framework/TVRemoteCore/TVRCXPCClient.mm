@interface TVRCXPCClient
+ (id)sharedInstance;
- (TVRCXPCClient)init;
- (void)_broadcastStateUpdateToDevices:(id)devices;
- (void)_cancelRetryTimer;
- (void)_disconnectAllDevices;
- (void)_invalidateConnection;
- (void)_postInvalidationNotification;
- (void)_setupConnectionIfNeeded;
- (void)_startDeviceQueryRetryTimerWithEventHander:(id)hander;
- (void)addEventObserver:(id)observer forDeviceWithIdentifier:(id)identifier;
- (void)addItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion;
- (void)beginDeviceQueryWithResponse:(id)response;
- (void)cancelAuthChallengeForDeviceWithIdentifier:(id)identifier;
- (void)closeConnectionToDeviceWithIdentifier:(id)identifier withType:(unint64_t)type;
- (void)deviceQueryUpdatedDiscoveredDevices:(id)devices;
- (void)deviceUpdatedState:(id)state;
- (void)deviceWithState:(id)state encounteredAuthChallengeOfType:(int64_t)type attributes:(int64_t)attributes codeToEnterOnDevice:(id)device throttleSeconds:(int64_t)seconds;
- (void)enableFindingSession:(BOOL)session forDeviceIdentifier:(id)identifier;
- (void)enableTVRemoteOnLockscreen:(BOOL)lockscreen forDeviceIdentifier:(id)identifier;
- (void)endDeviceQuery;
- (void)fetchActiveMREndpointUIDWithCompletion:(id)completion;
- (void)fetchLaunchableAppsForDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)fetchUpNextInfoForDeviceWithIdentifier:(id)identifier paginationToken:(id)token completion:(id)completion;
- (void)fulfillAuthChallengeForDeviceWithIdentifier:(id)identifier withLocallyEnteredCode:(id)code;
- (void)getConnectionStatusToDeviceWithIdentifier:(id)identifier response:(id)response;
- (void)getSuggestedDevicesWithResponse:(id)response;
- (void)launchAppForDeviceWithIdentifier:(id)identifier bundleID:(id)d completion:(id)completion;
- (void)launchViewServiceForDeviceWithIdentifier:(id)identifier;
- (void)markAsWatchedForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion;
- (void)openConnectionToDeviceWithIdentifier:(id)identifier connectionContext:(int64_t)context;
- (void)playItem:(id)item deviceIdentifier:(id)identifier completion:(id)completion;
- (void)removeEventObserver:(id)observer forDeviceWithIdentifier:(id)identifier;
- (void)removeItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion;
- (void)reset;
- (void)sendButtonEvent:(id)event toDeviceWithIdentifier:(id)identifier;
- (void)sendEvent:(id)event toDeviceWithIdentifier:(id)identifier options:(id)options response:(id)response;
- (void)sendGameControllerEvent:(id)event toDeviceWithIdentifier:(id)identifier;
- (void)sendInputReturnKeyToDeviceWithIdentifier:(id)identifier;
- (void)sendInputText:(id)text toDeviceWithIdentifier:(id)identifier;
- (void)sendInputTextPayload:(id)payload toDeviceWithIdentifier:(id)identifier;
- (void)sendTouchEvent:(id)event toDeviceWithIdentifier:(id)identifier;
- (void)suggestedDevices:(id)devices;
@end

@implementation TVRCXPCClient

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[TVRCXPCClient sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

uint64_t __31__TVRCXPCClient_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_2 = objc_alloc_init(TVRCXPCClient);

  return MEMORY[0x2821F96F8]();
}

- (TVRCXPCClient)init
{
  v11.receiver = self;
  v11.super_class = TVRCXPCClient;
  v2 = [(TVRCXPCClient *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventObserversByID = v2->_eventObserversByID;
    v2->_eventObserversByID = v3;

    objc_initWeak(&location, v2);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __21__TVRCXPCClient_init__block_invoke;
    v8[3] = &unk_279D83538;
    objc_copyWeak(&v9, &location);
    _TVRCAddStateHandlerWithName("TVRCEventObservers", v8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __21__TVRCXPCClient_init__block_invoke_2;
    v6[3] = &unk_279D83538;
    objc_copyWeak(&v7, &location);
    _TVRCAddStateHandlerWithName("TVRCDeviceQuery", v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __21__TVRCXPCClient_init__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277CBEB38] dictionary];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v17 = WeakRetained;
    v3 = WeakRetained[4];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v4)
    {
      v5 = v4;
      v18 = *v25;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v24 + 1) + 8 * i);
          v8 = [v3 objectForKey:v7];
          v9 = [MEMORY[0x277CBEB18] array];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v10 = v8;
          v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v21;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v21 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [*(*(&v20 + 1) + 8 * j) _deviceStateDictionary];
                [v9 addObject:v15];
              }

              v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v12);
          }

          [v19 setObject:v9 forKeyedSubscript:v7];
        }

        v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v5);
    }

    WeakRetained = v17;
  }

  return v19;
}

id __21__TVRCXPCClient_init__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = +[TVRCDeviceQuery _allDiscoveredDevices];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 _deviceStateDictionary];
          v11 = [v9 identifier];
          [v2 setObject:v10 forKeyedSubscript:v11];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  return v2;
}

- (void)addEventObserver:(id)observer forDeviceWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)self->_eventObserversByID objectForKey:identifierCopy];
  if (v8)
  {
    weakObjectsHashTable = v8;
    v10 = [v8 addObject:observerCopy];
  }

  else
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [weakObjectsHashTable addObject:observerCopy];
    v10 = [(NSMutableDictionary *)self->_eventObserversByID setObject:weakObjectsHashTable forKey:identifierCopy];
  }

  v11 = _TVRCXPCLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = observerCopy;
    _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Added observer: %@", &v12, 0xCu);
  }
}

- (void)removeEventObserver:(id)observer forDeviceWithIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v7 = [(NSMutableDictionary *)self->_eventObserversByID objectForKey:identifier];
  v8 = [v7 containsObject:observerCopy];
  if (v8)
  {
    v8 = [v7 removeObject:observerCopy];
  }

  v9 = _TVRCXPCLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = observerCopy;
    _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Removed observer: %@", &v10, 0xCu);
  }
}

- (void)reset
{
  v3 = _TVRCXPCLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Resetting TVRCXPCClient", v4, 2u);
  }

  [(NSMutableDictionary *)self->_eventObserversByID removeAllObjects];
  [(TVRCXPCClient *)self _cancelRetryTimer];
}

- (void)openConnectionToDeviceWithIdentifier:(id)identifier connectionContext:(int64_t)context
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = _TVRCXPCLog(identifierCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to open connection to device %{public}@", &v8, 0xCu);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject openConnectionToDeviceWithIdentifier:identifierCopy connectionContext:context];
}

- (void)closeConnectionToDeviceWithIdentifier:(id)identifier withType:(unint64_t)type
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = _TVRCXPCLog(identifierCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to close connection to device %{public}@", &v8, 0xCu);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject closeConnectionToDeviceWithIdentifier:identifierCopy withType:type];
}

- (void)fulfillAuthChallengeForDeviceWithIdentifier:(id)identifier withLocallyEnteredCode:(id)code
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  codeCopy = code;
  v8 = _TVRCXPCLog(codeCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = identifierCopy;
    v11 = 2114;
    v12 = codeCopy;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to fulfill auth challenge to device %@ and code %{public}@", &v9, 0x16u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject fulfillAuthChallengeForDeviceWithIdentifier:identifierCopy withLocallyEnteredCode:codeCopy];
}

- (void)cancelAuthChallengeForDeviceWithIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = _TVRCXPCLog(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to cancel auth challenge to device %{public}@", &v6, 0xCu);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject cancelAuthChallengeForDeviceWithIdentifier:identifierCopy];
}

- (void)sendButtonEvent:(id)event toDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventCopy = event;
  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject sendButtonEvent:eventCopy toDeviceWithIdentifier:identifierCopy];
}

- (void)sendTouchEvent:(id)event toDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventCopy = event;
  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject sendTouchEvent:eventCopy toDeviceWithIdentifier:identifierCopy];
}

- (void)sendGameControllerEvent:(id)event toDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventCopy = event;
  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject sendGameControllerEvent:eventCopy toDeviceWithIdentifier:identifierCopy];
}

- (void)sendInputText:(id)text toDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  textCopy = text;
  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject sendInputText:textCopy toDeviceWithIdentifier:identifierCopy];
}

- (void)sendInputReturnKeyToDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject sendInputReturnKeyToDeviceWithIdentifier:identifierCopy];
}

- (void)sendInputTextPayload:(id)payload toDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  payloadCopy = payload;
  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject sendInputTextPayload:payloadCopy toDeviceWithIdentifier:identifierCopy];
}

- (void)beginDeviceQueryWithResponse:(id)response
{
  v18 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = _TVRCXPCLog(responseCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    remoteObject = self->_remoteObject;
    *buf = 138412290;
    v17 = remoteObject;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to begin device query with remoteObject:%@", buf, 0xCu);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  objc_initWeak(buf, self);
  v7 = self->_remoteObject;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__TVRCXPCClient_beginDeviceQueryWithResponse___block_invoke;
  v13[3] = &unk_279D83588;
  objc_copyWeak(&v15, buf);
  v8 = responseCopy;
  v14 = v8;
  [(TVRCXPCRequestProtocol *)v7 beginDeviceQueryWithResponse:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__TVRCXPCClient_beginDeviceQueryWithResponse___block_invoke_2;
  v10[3] = &unk_279D82F58;
  objc_copyWeak(&v12, buf);
  v9 = v8;
  v11 = v9;
  [(TVRCXPCClient *)self _startDeviceQueryRetryTimerWithEventHander:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __46__TVRCXPCClient_beginDeviceQueryWithResponse___block_invoke(uint64_t a1, char a2)
{
  v4 = _TVRCXPCLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Received response. Cancelling timer", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__TVRCXPCClient_beginDeviceQueryWithResponse___block_invoke_8;
    block[3] = &unk_279D83560;
    block[4] = WeakRetained;
    v8 = *(a1 + 32);
    v9 = a2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __46__TVRCXPCClient_beginDeviceQueryWithResponse___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) _cancelRetryTimer];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __46__TVRCXPCClient_beginDeviceQueryWithResponse___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _invalidateConnection];
    [v3 beginDeviceQueryWithResponse:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_startDeviceQueryRetryTimerWithEventHander:(id)hander
{
  handerCopy = hander;
  _cancelRetryTimer = [(TVRCXPCClient *)self _cancelRetryTimer];
  if (!self->_deviceQueryRetryTimer)
  {
    v6 = _TVRCXPCLog(_cancelRetryTimer);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Starting DeviceQuery retry timer", buf, 2u);
    }

    objc_initWeak(buf, self);
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    deviceQueryRetryTimer = self->_deviceQueryRetryTimer;
    self->_deviceQueryRetryTimer = v7;

    v9 = self->_deviceQueryRetryTimer;
    v10 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v11 = self->_deviceQueryRetryTimer;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__TVRCXPCClient__startDeviceQueryRetryTimerWithEventHander___block_invoke;
    v12[3] = &unk_279D82F58;
    objc_copyWeak(&v14, buf);
    v13 = handerCopy;
    dispatch_source_set_event_handler(v11, v12);
    dispatch_activate(self->_deviceQueryRetryTimer);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __60__TVRCXPCClient__startDeviceQueryRetryTimerWithEventHander___block_invoke(uint64_t a1)
{
  v2 = _TVRCXPCLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "DeviceQuery Retry eventHandler called", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_cancelRetryTimer
{
  if (self->_deviceQueryRetryTimer)
  {
    v3 = _TVRCXPCLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling Retry Timer", v5, 2u);
    }

    dispatch_source_cancel(self->_deviceQueryRetryTimer);
    deviceQueryRetryTimer = self->_deviceQueryRetryTimer;
    self->_deviceQueryRetryTimer = 0;
  }
}

- (void)endDeviceQuery
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TVRCXPCLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    remoteObject = self->_remoteObject;
    v5 = 138412290;
    v6 = remoteObject;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to end device query with remoteObject:%@", &v5, 0xCu);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject endDeviceQuery];
}

- (void)getSuggestedDevicesWithResponse:(id)response
{
  responseCopy = response;
  v5 = _TVRCXPCLog(responseCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to get suggested device if available", v6, 2u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject getSuggestedDevicesWithResponse:responseCopy];
}

- (void)fetchActiveMREndpointUIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _TVRCXPCLog(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to fetch active MediaRemote endpoint", v6, 2u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject fetchActiveMREndpointUIDWithCompletion:completionCopy];
}

- (void)sendEvent:(id)event toDeviceWithIdentifier:(id)identifier options:(id)options response:(id)response
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  identifierCopy = identifier;
  responseCopy = response;
  optionsCopy = options;
  v14 = _TVRCXPCLog(optionsCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = eventCopy;
    v17 = 2114;
    v18 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to send event with ID %@ to device %{public}@", &v15, 0x16u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject sendEvent:eventCopy toDeviceWithIdentifier:identifierCopy options:optionsCopy response:responseCopy];
}

- (void)launchViewServiceForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _TVRCXPCLog(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to launch TVRemote view service", v6, 2u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject launchViewServiceForDeviceWithIdentifier:identifierCopy];
}

- (void)enableTVRemoteOnLockscreen:(BOOL)lockscreen forDeviceIdentifier:(id)identifier
{
  lockscreenCopy = lockscreen;
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = _TVRCXPCLog(identifierCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"hide";
    remoteObject = self->_remoteObject;
    if (lockscreenCopy)
    {
      v8 = @"show";
    }

    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = remoteObject;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to %@ TVRemote on Lockscreen with remoteObject:%@", &v10, 0x16u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject enableTVRemoteOnLockscreen:lockscreenCopy forDeviceIdentifier:identifierCopy];
}

- (void)getConnectionStatusToDeviceWithIdentifier:(id)identifier response:(id)response
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  responseCopy = response;
  v8 = _TVRCXPCLog(responseCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to fetch connection status for %{public}@", &v9, 0xCu);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject getConnectionStatusToDeviceWithIdentifier:identifierCopy response:responseCopy];
}

- (void)enableFindingSession:(BOOL)session forDeviceIdentifier:(id)identifier
{
  sessionCopy = session;
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = _TVRCXPCLog(identifierCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"disable";
    if (sessionCopy)
    {
      v8 = @"enable";
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2114;
    v12 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to %@ finding session for %{public}@", &v9, 0x16u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject enableFindingSession:sessionCopy forDeviceIdentifier:identifierCopy];
}

- (void)fetchUpNextInfoForDeviceWithIdentifier:(id)identifier paginationToken:(id)token completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  tokenCopy = token;
  v11 = _TVRCXPCLog(tokenCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to fetch UpNext infos for %{public}@", &v12, 0xCu);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject fetchUpNextInfoForDeviceWithIdentifier:identifierCopy paginationToken:tokenCopy completion:completionCopy];
}

- (void)markAsWatchedForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  completionCopy = completion;
  v11 = _TVRCXPCLog(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = mediaIdentifierCopy;
    v14 = 2114;
    v15 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to mark %@ as watched for %{public}@", &v12, 0x16u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject markAsWatchedForDeviceWithIdentifier:identifierCopy mediaIdentifier:mediaIdentifierCopy completion:completionCopy];
}

- (void)addItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  completionCopy = completion;
  v11 = _TVRCXPCLog(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = mediaIdentifierCopy;
    v14 = 2114;
    v15 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to add %@ to UpNext for %{public}@", &v12, 0x16u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject addItemForDeviceWithIdentifier:identifierCopy mediaIdentifier:mediaIdentifierCopy completion:completionCopy];
}

- (void)removeItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  completionCopy = completion;
  v11 = _TVRCXPCLog(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = mediaIdentifierCopy;
    v14 = 2114;
    v15 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to remove %@ from UpNext for %{public}@", &v12, 0x16u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject removeItemForDeviceWithIdentifier:identifierCopy mediaIdentifier:mediaIdentifierCopy completion:completionCopy];
}

- (void)playItem:(id)item deviceIdentifier:(id)identifier completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = _TVRCXPCLog(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = itemCopy;
    v14 = 2114;
    v15 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to play media with item %@ for %{public}@", &v12, 0x16u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject playItem:itemCopy deviceIdentifier:identifierCopy completion:completionCopy];
}

- (void)fetchLaunchableAppsForDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = _TVRCXPCLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Asking tvremoted for launchable apps for %{public}@", &v9, 0xCu);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject fetchLaunchableAppsForDeviceWithIdentifier:identifierCopy completion:completionCopy];
}

- (void)launchAppForDeviceWithIdentifier:(id)identifier bundleID:(id)d completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  v11 = _TVRCXPCLog(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = dCopy;
    v14 = 2114;
    v15 = identifierCopy;
    _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Asking tvremoted to launch app %{public}@ for %{public}@", &v12, 0x16u);
  }

  [(TVRCXPCClient *)self _setupConnectionIfNeeded];
  [(TVRCXPCRequestProtocol *)self->_remoteObject launchAppForDeviceWithIdentifier:identifierCopy bundleID:dCopy completion:completionCopy];
}

- (void)deviceUpdatedState:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = _TVRCXPCLog(stateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[TVRCXPCClient deviceUpdatedState:]";
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__TVRCXPCClient_deviceUpdatedState___block_invoke;
  v7[3] = &unk_279D82648;
  v8 = stateCopy;
  selfCopy = self;
  v6 = stateCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __36__TVRCXPCClient_deviceUpdatedState___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _TVRCXPCLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "tvremoted informed us that a device's state changed - %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 40) _broadcastStateUpdateToDevices:*(a1 + 32)];
}

- (void)deviceWithState:(id)state encounteredAuthChallengeOfType:(int64_t)type attributes:(int64_t)attributes codeToEnterOnDevice:(id)device throttleSeconds:(int64_t)seconds
{
  stateCopy = state;
  deviceCopy = device;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __111__TVRCXPCClient_deviceWithState_encounteredAuthChallengeOfType_attributes_codeToEnterOnDevice_throttleSeconds___block_invoke;
  v16[3] = &unk_279D835B0;
  v16[4] = self;
  v17 = stateCopy;
  v18 = deviceCopy;
  typeCopy = type;
  attributesCopy = attributes;
  secondsCopy = seconds;
  v14 = deviceCopy;
  v15 = stateCopy;
  dispatch_async(MEMORY[0x277D85CD0], v16);
}

void __111__TVRCXPCClient_deviceWithState_encounteredAuthChallengeOfType_attributes_codeToEnterOnDevice_throttleSeconds___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = _TVRCXPCLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "tvremoted informed us that we're encountering an auth challenge.", buf, 2u);
  }

  v3 = *(*(a1 + 32) + 32);
  v4 = [*(a1 + 40) identifier];
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [*(a1 + 40) alternateIdentifiers];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(a1 + 32) + 32) objectForKey:*(*(&v22 + 1) + 8 * v11)];
        [v5 unionHashTable:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17++) _deviceEncounteredAuthChallengeType:*(a1 + 56) attributes:*(a1 + 64) codeToEnterOnDevice:*(a1 + 48) throttleSeconds:{*(a1 + 72), v18}];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v15);
  }

  [*(a1 + 32) _broadcastStateUpdateToDevices:*(a1 + 40)];
}

- (void)deviceQueryUpdatedDiscoveredDevices:(id)devices
{
  v10 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v4 = _TVRCXPCLog(devicesCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[TVRCXPCClient deviceQueryUpdatedDiscoveredDevices:]";
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TVRCXPCClient_deviceQueryUpdatedDiscoveredDevices___block_invoke;
  block[3] = &unk_279D825E0;
  v7 = devicesCopy;
  v5 = devicesCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __53__TVRCXPCClient_deviceQueryUpdatedDiscoveredDevices___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v1 = +[TVRCDeviceQuery _allDiscoveredDevices];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v61;
    do
    {
      v7 = 0;
      do
      {
        if (*v61 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v60 + 1) + 8 * v7);
        v9 = _TVRCXPCLog(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v68 = "[TVRCXPCClient deviceQueryUpdatedDiscoveredDevices:]_block_invoke";
          v69 = 2114;
          v70 = v8;
          _os_log_debug_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEBUG, "%s previousDevice:%{public}@", buf, 0x16u);
        }

        v10 = [v8 identifier];
        [v2 setObject:v8 forKey:v10];

        ++v7;
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v60 objects:v71 count:16];
      v5 = v4;
    }

    while (v4);
  }

  v11 = MEMORY[0x277CBEB98];
  v12 = [v2 allKeys];
  v46 = [v11 setWithArray:v12];

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v14 = *(a1 + 32);
  v15 = [v14 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v57;
    do
    {
      v18 = 0;
      do
      {
        if (*v57 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v56 + 1) + 8 * v18);
        v20 = _TVRCXPCLog(v15);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v68 = "[TVRCXPCClient deviceQueryUpdatedDiscoveredDevices:]_block_invoke";
          v69 = 2114;
          v70 = v19;
          _os_log_debug_impl(&dword_26CF7F000, v20, OS_LOG_TYPE_DEBUG, "%s deviceState:%{public}@", buf, 0x16u);
        }

        v21 = [v19 identifier];
        [v13 setObject:v19 forKey:v21];

        ++v18;
      }

      while (v16 != v18);
      v15 = [v14 countByEnumeratingWithState:&v56 objects:v66 count:16];
      v16 = v15;
    }

    while (v15);
  }

  v47 = v3;

  v22 = MEMORY[0x277CBEB98];
  v23 = [v13 allKeys];
  v24 = [v22 setWithArray:v23];

  v45 = v24;
  v25 = [v24 mutableCopy];
  [v25 minusSet:v46];
  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v27 = v25;
  v28 = [v27 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v53;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v52 + 1) + 8 * i);
        v33 = [[TVRCDevice alloc] initWithDeviceIdentifier:v32];
        v34 = [v13 objectForKey:v32];
        [(TVRCDevice *)v33 _deviceUpdatedState:v34];
        [v26 addObject:v33];
      }

      v29 = [v27 countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v29);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v35 = v45;
  v36 = [v35 countByEnumeratingWithState:&v48 objects:v64 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v49;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [v2 objectForKey:*(*(&v48 + 1) + 8 * j)];
        if (v40)
        {
          [v26 addObject:v40];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v37);
  }

  v42 = _TVRCXPCLog(v41);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    __53__TVRCXPCClient_deviceQueryUpdatedDiscoveredDevices___block_invoke_cold_1(v26, v42);
  }

  v43 = [v26 copy];
  [TVRCDeviceQuery _allDiscoveredDevicesDidUpdate:v43];
}

- (void)suggestedDevices:(id)devices
{
  devicesCopy = devices;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__TVRCXPCClient_suggestedDevices___block_invoke;
  v6[3] = &unk_279D82648;
  v7 = devicesCopy;
  selfCopy = self;
  v5 = devicesCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __34__TVRCXPCClient_suggestedDevices___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = _TVRCXPCLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v21 = v3;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "tvremoted updated suggested devices - %{public}@", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 138543362;
    v15 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [TVRCDeviceQuery deviceForDeviceState:v11, v15];
        v13 = _TVRCXPCLog(v12);
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v21 = v11;
            v22 = 2114;
            v23 = v12;
            _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Updating deviceState: %{public}@ for suggested device: %{public}@", buf, 0x16u);
          }

          [*(a1 + 40) deviceUpdatedState:v11];
          [v4 addObject:v12];
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v21 = v11;
            _os_log_error_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_ERROR, "Suggested deviceState %{public}@ was never discovered previously", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v8);
  }

  [TVRCDeviceQuery _updateSuggestedDevices:v4];
}

- (void)_invalidateConnection
{
  if (self->_xpcConnection)
  {
    v3 = _TVRCXPCLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating XPC connection", v5, 2u);
    }

    [(NSXPCConnection *)self->_xpcConnection invalidate];
    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

- (void)_setupConnectionIfNeeded
{
  if (!self->_xpcConnection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.tvremotecore.xpc" options:4096];
    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = v3;

    v5 = self->_xpcConnection;
    v6 = +[TVRCXPCProtocolManager requestInterface];
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    v7 = self->_xpcConnection;
    v8 = +[TVRCXPCProtocolManager responseInterface];
    [(NSXPCConnection *)v7 setExportedInterface:v8];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    objc_initWeak(&location, self);
    v9 = self->_xpcConnection;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __41__TVRCXPCClient__setupConnectionIfNeeded__block_invoke;
    v21[3] = &unk_279D826E8;
    objc_copyWeak(&v22, &location);
    [(NSXPCConnection *)v9 setInterruptionHandler:v21];
    v10 = self->_xpcConnection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __41__TVRCXPCClient__setupConnectionIfNeeded__block_invoke_28;
    v19[3] = &unk_279D826E8;
    objc_copyWeak(&v20, &location);
    v11 = _TVRCXPCLog([(NSXPCConnection *)v10 setInvalidationHandler:v19]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Resuming XPC connection", buf, 2u);
    }

    v12 = _TVRCXPCLog([(NSXPCConnection *)self->_xpcConnection activate]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "Getting remote object proxy", buf, 2u);
    }

    v13 = self->_xpcConnection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__TVRCXPCClient__setupConnectionIfNeeded__block_invoke_29;
    v16[3] = &unk_279D82D38;
    objc_copyWeak(&v17, &location);
    v14 = [(NSXPCConnection *)v13 remoteObjectProxyWithErrorHandler:v16];
    remoteObject = self->_remoteObject;
    self->_remoteObject = v14;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __41__TVRCXPCClient__setupConnectionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 2);
    *(WeakRetained + 2) = 0;

    v5 = _TVRCXPCLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted. Sending all devices a disconnect message.", v6, 2u);
    }

    [v2 _disconnectAllDevices];
    [v2 _postInvalidationNotification];
  }
}

void __41__TVRCXPCClient__setupConnectionIfNeeded__block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 2);
    *(WeakRetained + 2) = 0;

    v5 = _TVRCXPCLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated. Sending all devices a disconnect message.", v6, 2u);
    }

    [v2 _disconnectAllDevices];
    [v2 _postInvalidationNotification];
  }
}

void __41__TVRCXPCClient__setupConnectionIfNeeded__block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCXPCLog(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__TVRCXPCClient__setupConnectionIfNeeded__block_invoke_29_cold_1(v3, v6);
    }

    [v5 _invalidateConnection];
  }
}

- (void)_disconnectAllDevices
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__TVRCXPCClient__disconnectAllDevices__block_invoke;
  block[3] = &unk_279D825E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __38__TVRCXPCClient__disconnectAllDevices__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = [*(*(a1 + 32) + 32) allValues];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v13;
          do
          {
            v11 = 0;
            do
            {
              if (*v13 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [*(*(&v12 + 1) + 8 * v11++) _disconnectDeviceDueToConnectionInterruption];
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v3);
  }
}

- (void)_broadcastStateUpdateToDevices:(id)devices
{
  devicesCopy = devices;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__TVRCXPCClient__broadcastStateUpdateToDevices___block_invoke;
  v6[3] = &unk_279D82648;
  v6[4] = self;
  v7 = devicesCopy;
  v5 = devicesCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __48__TVRCXPCClient__broadcastStateUpdateToDevices___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [*(a1 + 40) alternateIdentifiers];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(a1 + 32) + 32) objectForKey:*(*(&v23 + 1) + 8 * v10)];
        [v4 unionHashTable:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v8);
  }

  v13 = _TVRCXPCLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Broadcasting to eventObservers: %@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18++) _deviceUpdatedState:{*(a1 + 40), v19}];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)_postInvalidationNotification
{
  v2 = _TVRCXPCLog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Posting TVRCConnectionInvalidatedNotification", v4, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.TVRemoteCore.connectionInvalidatedNotification" object:0];
}

void __53__TVRCXPCClient_deviceQueryUpdatedDiscoveredDevices___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[TVRCXPCClient deviceQueryUpdatedDiscoveredDevices:]_block_invoke";
  v4 = 2114;
  v5 = a1;
  _os_log_debug_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_DEBUG, "%s currentDevices:%{public}@", &v2, 0x16u);
}

void __41__TVRCXPCClient__setupConnectionIfNeeded__block_invoke_29_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Failed getting remote object proxy %{public}@", &v2, 0xCu);
}

@end