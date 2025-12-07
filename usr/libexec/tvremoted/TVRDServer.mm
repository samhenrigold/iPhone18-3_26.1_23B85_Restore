@interface TVRDServer
- (BOOL)_hasNowPlayingControlsForButtons:(id)buttons;
- (BOOL)clientConnection:(id)connection isConnectedToDeviceWithIdentifier:(id)identifier;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (TVRDServer)init;
- (TVRXDevice)lastConnectedDevice;
- (id)_cachedDeviceForIdentifier:(id)identifier;
- (id)_deviceForIdentifierInDeviceQuery:(id)query;
- (id)_deviceForKeyboardController:(id)controller;
- (id)_findCachedDeviceForIdentifier:(id)identifier;
- (id)_interestedClientProcessConnectionsForDevice:(id)device;
- (id)countedSetDescriptionFor:(id)for;
- (void)_activateIRSessionManager;
- (void)_becameInterestedInDeviceWithIdentifier:(id)identifier;
- (void)_connectToDeviceIfNeeded:(id)needed;
- (void)_informClientCouldNotLocateDeviceWithIdentifier:(id)identifier;
- (void)_invalidateIRSessionManager;
- (void)_lostInterestInDeviceWithIdentifier:(id)identifier;
- (void)_publishUserPresenceForDevice:(id)device;
- (void)_startGeneralDeviceQuery;
- (void)_stopGeneralDeviceQuery;
- (void)_switchToCurrentUserProfileForDevice:(id)device;
- (void)_updateClientConnectionsForDevice:(id)device oldIdentifier:(id)identifier;
- (void)_updateDevicesWithRecommendations:(id)recommendations;
- (void)clientConnection:(id)connection addItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion;
- (void)clientConnection:(id)connection addedInterestedDeviceIdentifier:(id)identifier connectionContext:(int64_t)context;
- (void)clientConnection:(id)connection cancelledAuthChallengeForDeviceIdentifier:(id)identifier;
- (void)clientConnection:(id)connection fetchLaunchableAppsForDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)clientConnection:(id)connection fetchUpNextInfoForDeviceWithIdentifier:(id)identifier paginationToken:(id)token completion:(id)completion;
- (void)clientConnection:(id)connection launchAppForDeviceWithIdentifier:(id)identifier bundleID:(id)d completion:(id)completion;
- (void)clientConnection:(id)connection markAsWatchedForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion;
- (void)clientConnection:(id)connection playItem:(id)item deviceIdentifier:(id)identifier completion:(id)completion;
- (void)clientConnection:(id)connection receivedAuthChallengeLocallyEnteredCode:(id)code forDeviceIdentifier:(id)identifier;
- (void)clientConnection:(id)connection reiteratedInterestInDeviceIdentifier:(id)identifier connectionContext:(int64_t)context;
- (void)clientConnection:(id)connection removeItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion;
- (void)clientConnection:(id)connection removedInterestedDeviceIdentifier:(id)identifier;
- (void)clientConnection:(id)connection requestsEnablingFindingSession:(BOOL)session forDeviceWithIdentifier:(id)identifier;
- (void)clientConnection:(id)connection requestsEnablingRemoteOnLockscreen:(BOOL)lockscreen forDeviceWithIdentifier:(id)identifier;
- (void)clientConnection:(id)connection requestsSendingButtonEvent:(id)event toDeviceIdentifier:(id)identifier;
- (void)clientConnection:(id)connection requestsSendingEvent:(id)event toDeviceWithIdentifier:(id)identifier options:(id)options response:(id)response;
- (void)clientConnection:(id)connection requestsSendingGameControllerEvent:(id)event toDeviceIdentifier:(id)identifier;
- (void)clientConnection:(id)connection requestsSendingInputDataPayload:(id)payload toDeviceIdentifier:(id)identifier;
- (void)clientConnection:(id)connection requestsSendingInputReturnKeyToDeviceIdentifier:(id)identifier;
- (void)clientConnection:(id)connection requestsSendingInputText:(id)text toDeviceIdentifier:(id)identifier;
- (void)clientConnection:(id)connection requestsSendingTouchEvent:(id)event toDeviceIdentifier:(id)identifier;
- (void)clientConnection:(id)connection requestsSuggestedDeviceWithResponse:(id)response;
- (void)clientConnectionRequestsEndingDeviceQuery:(id)query;
- (void)clientConnectionRequestsStartingDeviceQuery:(id)query withResponse:(id)response;
- (void)clientConnectionSeveredConnection:(id)connection;
- (void)dealloc;
- (void)device:(id)device didUpdateNameFrom:(id)from;
- (void)device:(id)device disconnectedForReason:(int64_t)reason error:(id)error;
- (void)device:(id)device encounteredAuthenticationChallenge:(id)challenge;
- (void)device:(id)device supportsFindMyRemote:(BOOL)remote;
- (void)device:(id)device updatedAttentionState:(int64_t)state;
- (void)device:(id)device updatedNowPlayingInfo:(id)info;
- (void)device:(id)device updatedPairedRemoteInfo:(id)info;
- (void)device:(id)device updatedSiriRemoteFindingState:(int64_t)state;
- (void)device:(id)device updatedSupportedButtons:(id)buttons;
- (void)deviceBeganConnecting:(id)connecting;
- (void)deviceConnected:(id)connected;
- (void)devicePoweredOff:(id)off;
- (void)deviceQueryDidUpdateDevices:(id)devices;
- (void)keyboardController:(id)controller beganTextEditingWithAttributes:(id)attributes;
- (void)keyboardController:(id)controller didUpdateAttributes:(id)attributes;
- (void)keyboardController:(id)controller didUpdateText:(id)text;
- (void)keyboardControllerEndedTextEditing:(id)editing;
@end

@implementation TVRDServer

- (TVRDServer)init
{
  v31.receiver = self;
  v31.super_class = TVRDServer;
  v2 = [(TVRDServer *)&v31 init];
  if (v2)
  {
    v3 = +[TVRXManagedConfigManager sharedInstance];
    [v3 refreshState];

    v4 = objc_alloc_init(NSMutableDictionary);
    authChallengesByID = v2->_authChallengesByID;
    v2->_authChallengesByID = v4;

    v6 = objc_alloc_init(NSMutableSet);
    cachedDevices = v2->_cachedDevices;
    v2->_cachedDevices = v6;

    v8 = objc_alloc_init(NSMutableSet);
    clientConnections = v2->_clientConnections;
    v2->_clientConnections = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    connectionContextByID = v2->_connectionContextByID;
    v2->_connectionContextByID = v10;

    v12 = objc_alloc_init(NSCountedSet);
    deviceIdentifiers = v2->_deviceIdentifiers;
    v2->_deviceIdentifiers = v12;

    v14 = objc_alloc_init(NSMutableSet);
    deviceQueryObservers = v2->_deviceQueryObservers;
    v2->_deviceQueryObservers = v14;

    v16 = objc_alloc_init(TVRXDeviceLocator);
    deviceSearch = v2->_deviceSearch;
    v2->_deviceSearch = v16;

    v18 = objc_alloc_init(NSMutableSet);
    identifiersRequestingConnection = v2->_identifiersRequestingConnection;
    v2->_identifiersRequestingConnection = v18;

    v20 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = v2->_systemMonitor;
    v2->_systemMonitor = v20;

    objc_initWeak(&location, v2);
    v22 = v2->_systemMonitor;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __18__TVRDServer_init__block_invoke;
    v28[3] = &unk_100020610;
    objc_copyWeak(&v29, &location);
    [(CUSystemMonitor *)v22 setScreenLockedChangedHandler:v28];
    [(CUSystemMonitor *)v2->_systemMonitor activateWithCompletion:&__block_literal_global_4];
    v23 = v2->_systemMonitor;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __18__TVRDServer_init__block_invoke_14;
    v26[3] = &unk_100020610;
    objc_copyWeak(&v27, &location);
    [(CUSystemMonitor *)v23 setFirstUnlockHandler:v26];
    objc_copyWeak(&v25, &location);
    _TVRCAddStateHandlerWithName();
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __18__TVRDServer_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained systemMonitor];
    v4 = [v3 screenLocked];

    v6 = _TVRDXPCLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"unlocked";
      if (v4)
      {
        v7 = @"locked";
      }

      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Screen is now %@", &v8, 0xCu);
    }
  }
}

void __18__TVRDServer_init__block_invoke_13(id a1)
{
  v1 = _TVRDXPCLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Screen lock monitor activated", v2, 2u);
  }
}

void __18__TVRDServer_init__block_invoke_14(uint64_t a1)
{
  v2 = _TVRDXPCLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "First unlock. Activating IRSessionManager", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained systemMonitor];
  v5 = [v4 firstUnlocked];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _activateIRSessionManager];
  }
}

id __18__TVRDServer_init__block_invoke_16(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[NSMutableDictionary dictionary];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = WeakRetained[4];
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v11 = [v10 stateDictionary];
          v12 = [v10 identifier];
          [v4 setObject:v11 forKeyedSubscript:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v7);
    }

    v13 = [WeakRetained[7] copy];
    v14 = [WeakRetained[2] copy];
    [v2 setObject:v4 forKeyedSubscript:@"cachedDevices"];
    v27 = v13;
    v15 = [v13 description];
    [v2 setObject:v15 forKeyedSubscript:@"deviceQueryObservers"];

    v26 = v14;
    v16 = [v14 description];
    [v2 setObject:v16 forKeyedSubscript:@"clientConnections"];

    v17 = +[NSMutableDictionary dictionary];
    v18 = +[NSMutableArray array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [WeakRetained[10] devices];
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v28 + 1) + 8 * j) stateDictionary];
          [v18 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v21);
    }

    [v17 setObject:v18 forKeyedSubscript:@"devices"];
    [v2 setObject:v17 forKeyedSubscript:@"deviceQueryResults"];
  }

  return v2;
}

- (void)dealloc
{
  v3 = _TVRDXPCLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deallocating TVRDServer", buf, 2u);
  }

  systemMonitor = [(TVRDServer *)self systemMonitor];
  [systemMonitor invalidate];

  [(TVRDServer *)self _invalidateIRSessionManager];
  v5.receiver = self;
  v5.super_class = TVRDServer;
  [(TVRDServer *)&v5 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = _TVRDXPCLog(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection: %{public}@", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __49__TVRDServer_listener_shouldAcceptNewConnection___block_invoke;
  v9[3] = &unk_100020820;
  v10 = connectionCopy;
  selfCopy = self;
  v7 = connectionCopy;
  dispatch_async(&_dispatch_main_q, v9);

  return 1;
}

void __49__TVRDServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = [[TVRDClientProcessConnection alloc] initWithXPCConnection:*(a1 + 32) delegate:*(a1 + 40)];
  v3 = _TVRDXPCLog([*(*(a1 + 40) + 16) addObject:v2]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 40) + 16);
    v5 = 138543618;
    v6 = v2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Added new %{public}@. Total connections: %@", &v5, 0x16u);
  }
}

- (void)clientConnection:(id)connection addedInterestedDeviceIdentifier:(id)identifier connectionContext:(int64_t)context
{
  connectionCopy = connection;
  identifierCopy = identifier;
  v10 = _TVRDXPCLog(identifierCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = connectionCopy;
    v17 = 2114;
    v18 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ requested connection to %{public}@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__TVRDServer_clientConnection_addedInterestedDeviceIdentifier_connectionContext___block_invoke;
  block[3] = &unk_100020890;
  block[4] = self;
  v13 = identifierCopy;
  contextCopy = context;
  v11 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

void __81__TVRDServer_clientConnection_addedInterestedDeviceIdentifier_connectionContext___block_invoke(uint64_t a1)
{
  v2 = [NSNumber numberWithInteger:*(a1 + 48)];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) connectionContextByID];
  v6 = *(a1 + 40);
  v5 = (a1 + 40);
  [v4 setObject:v2 forKeyedSubscript:v6];

  v7 = [*(*v3 + 3) countForObject:*v5];
  v8 = _TVRDXPCLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*v3 + 3);
    v15 = 138543362;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[TVRDServer] deviceIdentifiers: %{public}@", &v15, 0xCu);
  }

  if (v7)
  {
    if (v7 >= 1)
    {
      v10 = [*v3 _cachedDeviceForIdentifier:*v5];
      v11 = _TVRDXPCLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*v3 + 4);
        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[TVRDServer] cachedDevices: %{public}@", &v15, 0xCu);
      }

      if (v10)
      {
        [*v3 _connectToDeviceIfNeeded:v10];
      }

      else
      {
        v14 = _TVRDXPCLog(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __81__TVRDServer_clientConnection_addedInterestedDeviceIdentifier_connectionContext___block_invoke_cold_1(v5, v3, v14);
        }

        [*v3 _informClientCouldNotLocateDeviceWithIdentifier:*v5];
      }
    }
  }

  else
  {
    [*v3 _becameInterestedInDeviceWithIdentifier:*v5];
  }
}

- (void)clientConnection:(id)connection reiteratedInterestInDeviceIdentifier:(id)identifier connectionContext:(int64_t)context
{
  connectionCopy = connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __86__TVRDServer_clientConnection_reiteratedInterestInDeviceIdentifier_connectionContext___block_invoke;
  v11[3] = &unk_1000208B8;
  v11[4] = self;
  identifierCopy = identifier;
  v13 = connectionCopy;
  contextCopy = context;
  v9 = connectionCopy;
  v10 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

void __86__TVRDServer_clientConnection_reiteratedInterestInDeviceIdentifier_connectionContext___block_invoke(uint64_t a1)
{
  v2 = [NSNumber numberWithInteger:*(a1 + 56)];
  v3 = [*(a1 + 32) connectionContextByID];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v4 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v5 = *(a1 + 32);
  v7 = v4;
  if (v4)
  {
    [v5 _connectToDeviceIfNeeded:v4];
  }

  else
  {
    if ([v5[3] countForObject:*(a1 + 40)] >= 1)
    {
      v6 = 0;
      do
      {
        [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
        ++v6;
      }

      while (v6 < [*(*(a1 + 32) + 24) countForObject:*(a1 + 40)]);
    }

    [*(a1 + 32) clientConnection:*(a1 + 48) addedInterestedDeviceIdentifier:*(a1 + 40) connectionContext:*(a1 + 56)];
  }
}

- (void)clientConnection:(id)connection removedInterestedDeviceIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  v8 = _TVRDXPCLog(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = connectionCopy;
    v14 = 2114;
    v15 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ requested disconnection to %{public}@", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __65__TVRDServer_clientConnection_removedInterestedDeviceIdentifier___block_invoke;
  v10[3] = &unk_100020820;
  v10[4] = self;
  v11 = identifierCopy;
  v9 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v10);
}

void __65__TVRDServer_clientConnection_removedInterestedDeviceIdentifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) countForObject:*(a1 + 40)];
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v3 = _TVRDXPCLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 24);
    v5 = *(*(a1 + 32) + 32);
    *buf = 138543618;
    v17 = v5;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "cachedDevices: %{public}@ _deviceIdentifiers: %{public}@", buf, 0x16u);
  }

  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v2 allIdentifiers];
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

          [*(*(a1 + 32) + 24) removeObject:*(*(&v11 + 1) + 8 * v10)];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  }

  if (![*(*(a1 + 32) + 24) countForObject:*(a1 + 40)])
  {
    [*(a1 + 32) _lostInterestInDeviceWithIdentifier:*(a1 + 40)];
  }
}

- (void)clientConnection:(id)connection receivedAuthChallengeLocallyEnteredCode:(id)code forDeviceIdentifier:(id)identifier
{
  codeCopy = code;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __91__TVRDServer_clientConnection_receivedAuthChallengeLocallyEnteredCode_forDeviceIdentifier___block_invoke;
  block[3] = &unk_1000208E0;
  block[4] = self;
  identifierCopy = identifier;
  v12 = codeCopy;
  v8 = codeCopy;
  v9 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

void __91__TVRDServer_clientConnection_receivedAuthChallengeLocallyEnteredCode_forDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(*(a1 + 32) + 48);
    v5 = [v2 identifier];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      [v6 userEnteredCodeLocally:*(a1 + 48)];
      v8 = *(*(a1 + 32) + 48);
      v9 = [v3 identifier];
      [v8 removeObjectForKey:v9];
    }

    else
    {
      v9 = _TVRDXPCLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client attempted to fulfill an auth challenge that appears to no longer exist, for device with identifier %@. Ignoring.", &v12, 0xCu);
      }
    }
  }

  else
  {
    v6 = _TVRDXPCLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client attempted to fulfill an auth challenge for a device that appears to no longer exist, device identifier %@. Ignoring.", &v12, 0xCu);
    }
  }
}

- (void)clientConnection:(id)connection cancelledAuthChallengeForDeviceIdentifier:(id)identifier
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __73__TVRDServer_clientConnection_cancelledAuthChallengeForDeviceIdentifier___block_invoke;
  v5[3] = &unk_100020820;
  v5[4] = self;
  identifierCopy = identifier;
  v4 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

void __73__TVRDServer_clientConnection_cancelledAuthChallengeForDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(*(a1 + 32) + 48);
    v5 = [v2 identifier];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      [v6 cancel];
      v8 = *(*(a1 + 32) + 48);
      v9 = [v3 identifier];
      [v8 removeObjectForKey:v9];
    }

    else
    {
      v9 = _TVRDXPCLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client attempted to cancel an auth challenge that appears to no longer exist, for device with identifier %@. Ignoring.", &v12, 0xCu);
      }
    }
  }

  else
  {
    v6 = _TVRDXPCLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client attempted to fulfill an auth challenge for a device that appears to no longer exist, device identifier %@. Ignoring.", &v12, 0xCu);
    }
  }
}

- (void)clientConnection:(id)connection requestsSendingButtonEvent:(id)event toDeviceIdentifier:(id)identifier
{
  eventCopy = event;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __77__TVRDServer_clientConnection_requestsSendingButtonEvent_toDeviceIdentifier___block_invoke;
  block[3] = &unk_1000208E0;
  block[4] = self;
  identifierCopy = identifier;
  v12 = eventCopy;
  v8 = eventCopy;
  v9 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

void __77__TVRDServer_clientConnection_requestsSendingButtonEvent_toDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    [v3 sendButtonEvent:*(a1 + 48)];
    v5 = [*(a1 + 48) button];
    v6 = [v5 buttonType];

    if (v6 <= 0x1E && ((1 << v6) & 0x4000000C) != 0)
    {
      [*v2 _publishUserPresenceForDevice:v4];
      [*v2 _switchToCurrentUserProfileForDevice:v4];
    }

    if ([*(a1 + 48) eventType] != 1)
    {
      v8 = [*v2 irSessionManager];
      [v8 didInteractWithDevice:v4];
    }
  }

  else
  {
    v9 = _TVRDXPCLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __77__TVRDServer_clientConnection_requestsSendingButtonEvent_toDeviceIdentifier___block_invoke_cold_1((v2 + 1), v2);
    }
  }
}

- (void)clientConnection:(id)connection requestsSendingGameControllerEvent:(id)event toDeviceIdentifier:(id)identifier
{
  eventCopy = event;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __85__TVRDServer_clientConnection_requestsSendingGameControllerEvent_toDeviceIdentifier___block_invoke;
  block[3] = &unk_1000208E0;
  block[4] = self;
  identifierCopy = identifier;
  v12 = eventCopy;
  v8 = eventCopy;
  v9 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

void __85__TVRDServer_clientConnection_requestsSendingGameControllerEvent_toDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    [v2 sendGameControllerEvent:*(a1 + 48)];
    v3 = [*(a1 + 32) irSessionManager];
    [v3 didInteractWithDevice:v4];

    v2 = v4;
  }
}

- (void)clientConnection:(id)connection requestsSendingTouchEvent:(id)event toDeviceIdentifier:(id)identifier
{
  eventCopy = event;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __76__TVRDServer_clientConnection_requestsSendingTouchEvent_toDeviceIdentifier___block_invoke;
  block[3] = &unk_1000208E0;
  block[4] = self;
  identifierCopy = identifier;
  v12 = eventCopy;
  v8 = eventCopy;
  v9 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

void __76__TVRDServer_clientConnection_requestsSendingTouchEvent_toDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    [v3 sendTouchEvent:*(a1 + 48)];
    if ([*(a1 + 48) phase] == 1)
    {
      v5 = [*v2 irSessionManager];
      [v5 didInteractWithDevice:v4];
    }
  }

  else
  {
    v6 = _TVRDXPCLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __76__TVRDServer_clientConnection_requestsSendingTouchEvent_toDeviceIdentifier___block_invoke_cold_1((v2 + 1), v2);
    }
  }
}

- (void)clientConnection:(id)connection fetchUpNextInfoForDeviceWithIdentifier:(id)identifier paginationToken:(id)token completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __97__TVRDServer_clientConnection_fetchUpNextInfoForDeviceWithIdentifier_paginationToken_completion___block_invoke;
  v11[3] = &unk_100020908;
  v11[4] = self;
  identifierCopy = identifier;
  tokenCopy = token;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = tokenCopy;
  v10 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t __97__TVRDServer_clientConnection_fetchUpNextInfoForDeviceWithIdentifier_paginationToken_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 fetchUpNextInfoWithPaginationToken:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x4();
}

- (void)clientConnection:(id)connection addItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __89__TVRDServer_clientConnection_addItemForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke;
  v11[3] = &unk_100020908;
  v11[4] = self;
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = mediaIdentifierCopy;
  v10 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t __89__TVRDServer_clientConnection_addItemForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 addItemWithMediaIdentifier:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x4();
}

- (void)clientConnection:(id)connection markAsWatchedForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __95__TVRDServer_clientConnection_markAsWatchedForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke;
  v11[3] = &unk_100020908;
  v11[4] = self;
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = mediaIdentifierCopy;
  v10 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t __95__TVRDServer_clientConnection_markAsWatchedForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 markAsWatchedWithMediaIdentifier:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x4();
}

- (void)clientConnection:(id)connection removeItemForDeviceWithIdentifier:(id)identifier mediaIdentifier:(id)mediaIdentifier completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __92__TVRDServer_clientConnection_removeItemForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke;
  v11[3] = &unk_100020908;
  v11[4] = self;
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = mediaIdentifierCopy;
  v10 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t __92__TVRDServer_clientConnection_removeItemForDeviceWithIdentifier_mediaIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 removeItemWithMediaIdentifier:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x4();
}

- (void)clientConnection:(id)connection playItem:(id)item deviceIdentifier:(id)identifier completion:(id)completion
{
  itemCopy = item;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __68__TVRDServer_clientConnection_playItem_deviceIdentifier_completion___block_invoke;
  v13[3] = &unk_100020908;
  v13[4] = self;
  identifierCopy = identifier;
  v15 = itemCopy;
  completionCopy = completion;
  v10 = completionCopy;
  v11 = itemCopy;
  v12 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v13);
}

uint64_t __68__TVRDServer_clientConnection_playItem_deviceIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    if (objc_opt_respondsToSelector())
    {
      v3 = [[TVRCButton alloc] _initWithButtonType:21];
      v4 = [TVRCButtonEvent buttonEventForButton:v3 eventType:2];
      [v6 sendButtonEvent:v4];

      [v6 playItem:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x2();
}

- (void)clientConnection:(id)connection fetchLaunchableAppsForDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __85__TVRDServer_clientConnection_fetchLaunchableAppsForDeviceWithIdentifier_completion___block_invoke;
  block[3] = &unk_100020930;
  block[4] = self;
  identifierCopy = identifier;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t __85__TVRDServer_clientConnection_fetchLaunchableAppsForDeviceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 fetchLaunchableAppsWithCompletion:*(a1 + 48)];
    }
  }

  return _objc_release_x3();
}

- (void)clientConnection:(id)connection launchAppForDeviceWithIdentifier:(id)identifier bundleID:(id)d completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __84__TVRDServer_clientConnection_launchAppForDeviceWithIdentifier_bundleID_completion___block_invoke;
  v11[3] = &unk_100020908;
  v11[4] = self;
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = dCopy;
  v10 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t __84__TVRDServer_clientConnection_launchAppForDeviceWithIdentifier_bundleID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    if (objc_opt_respondsToSelector())
    {
      v3 = [[TVRCButton alloc] _initWithButtonType:21];
      v4 = [TVRCButtonEvent buttonEventForButton:v3 eventType:2];
      [v6 sendButtonEvent:v4];

      [v6 launchAppWithBundleID:*(a1 + 48) completion:*(a1 + 56)];
    }
  }

  return _objc_release_x2();
}

- (void)clientConnection:(id)connection requestsSendingInputText:(id)text toDeviceIdentifier:(id)identifier
{
  textCopy = text;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__TVRDServer_clientConnection_requestsSendingInputText_toDeviceIdentifier___block_invoke;
  block[3] = &unk_1000208E0;
  block[4] = self;
  identifierCopy = identifier;
  v12 = textCopy;
  v8 = textCopy;
  v9 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

void __75__TVRDServer_clientConnection_requestsSendingInputText_toDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 keyboardController];
    [v3 setText:*(a1 + 48)];

    v2 = v4;
  }
}

- (void)clientConnection:(id)connection requestsSendingInputReturnKeyToDeviceIdentifier:(id)identifier
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __79__TVRDServer_clientConnection_requestsSendingInputReturnKeyToDeviceIdentifier___block_invoke;
  v5[3] = &unk_100020820;
  v5[4] = self;
  identifierCopy = identifier;
  v4 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

void __79__TVRDServer_clientConnection_requestsSendingInputReturnKeyToDeviceIdentifier___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v1)
  {
    v3 = v1;
    v2 = [v1 keyboardController];
    [v2 sendReturnKey];

    v1 = v3;
  }
}

- (void)clientConnection:(id)connection requestsSendingInputDataPayload:(id)payload toDeviceIdentifier:(id)identifier
{
  connectionCopy = connection;
  payloadCopy = payload;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __82__TVRDServer_clientConnection_requestsSendingInputDataPayload_toDeviceIdentifier___block_invoke;
  v13[3] = &unk_100020958;
  v13[4] = self;
  identifierCopy = identifier;
  v15 = payloadCopy;
  v16 = connectionCopy;
  v10 = connectionCopy;
  v11 = payloadCopy;
  v12 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v13);
}

void __82__TVRDServer_clientConnection_requestsSendingInputDataPayload_toDeviceIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  v3 = _TVRDXPCLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v2;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending inputDataPayload: %{public}@ to device: %{public}@ from: %{public}@", &v7, 0x20u);
  }

  if (v2)
  {
    v6 = [v2 keyboardController];
    [v6 sendTextActionPayload:*(a1 + 48)];
  }
}

- (void)clientConnectionRequestsStartingDeviceQuery:(id)query withResponse:(id)response
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __71__TVRDServer_clientConnectionRequestsStartingDeviceQuery_withResponse___block_invoke;
  block[3] = &unk_100020930;
  queryCopy = query;
  selfCopy = self;
  responseCopy = response;
  v6 = responseCopy;
  v7 = queryCopy;
  dispatch_async(&_dispatch_main_q, block);
}

void __71__TVRDServer_clientConnectionRequestsStartingDeviceQuery_withResponse___block_invoke(uint64_t a1)
{
  v2 = _TVRDXPCLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ requested starting general device query", &v8, 0xCu);
  }

  [*(*(a1 + 40) + 56) addObject:*(a1 + 32)];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
  }

  if ([*(*(a1 + 40) + 56) count] == 1)
  {
    [*(a1 + 40) _startGeneralDeviceQuery];
  }

  else
  {
    v5 = [*(*(a1 + 40) + 80) devices];
    v6 = [TVRCDeviceState setOfStatesFromDevices:v5];

    v7 = [*(a1 + 32) remoteObjectProxy];
    [v7 deviceQueryUpdatedDiscoveredDevices:v6];
  }
}

- (void)clientConnectionRequestsEndingDeviceQuery:(id)query
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __56__TVRDServer_clientConnectionRequestsEndingDeviceQuery___block_invoke;
  v5[3] = &unk_100020820;
  queryCopy = query;
  selfCopy = self;
  v4 = queryCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

void __56__TVRDServer_clientConnectionRequestsEndingDeviceQuery___block_invoke(uint64_t a1)
{
  v2 = _TVRDXPCLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ requested ending general device query", &v7, 0xCu);
  }

  [*(*(a1 + 40) + 56) removeObject:*(a1 + 32)];
  v4 = [*(*(a1 + 40) + 56) count];
  if (v4)
  {
    v5 = _TVRDXPCLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 40) + 56);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not ending device query - %{public}@", &v7, 0xCu);
    }
  }

  else
  {
    [*(a1 + 40) _stopGeneralDeviceQuery];
  }
}

- (void)clientConnection:(id)connection requestsSuggestedDeviceWithResponse:(id)response
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __67__TVRDServer_clientConnection_requestsSuggestedDeviceWithResponse___block_invoke;
  block[3] = &unk_100020930;
  connectionCopy = connection;
  selfCopy = self;
  responseCopy = response;
  v6 = responseCopy;
  v7 = connectionCopy;
  dispatch_async(&_dispatch_main_q, block);
}

void __67__TVRDServer_clientConnection_requestsSuggestedDeviceWithResponse___block_invoke(uint64_t a1)
{
  v2 = _TVRDXPCLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ requested suggested device", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) irSessionManager];
  v5 = [v4 suggestedDevices];

  v6 = [TVRCDeviceState arrayOfStatesFromDevices:v5];
  (*(*(a1 + 48) + 16))();
}

- (void)clientConnectionSeveredConnection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __48__TVRDServer_clientConnectionSeveredConnection___block_invoke;
  v4[3] = &unk_100020820;
  v4[4] = self;
  connectionCopy = connection;
  v3 = connectionCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

void __48__TVRDServer_clientConnectionSeveredConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) clientConnectionRequestsEndingDeviceQuery:*(a1 + 40)];
  v2 = [*(a1 + 32) clientConnections];
  [v2 removeObject:*(a1 + 40)];

  v4 = _TVRDXPCLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) clientConnections];
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = [v6 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removed %{public}@. Total connections: %ld", &v7, 0x16u);
  }
}

- (void)clientConnection:(id)connection requestsSendingEvent:(id)event toDeviceWithIdentifier:(id)identifier options:(id)options response:(id)response
{
  eventCopy = event;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __92__TVRDServer_clientConnection_requestsSendingEvent_toDeviceWithIdentifier_options_response___block_invoke;
  block[3] = &unk_100020980;
  block[4] = self;
  identifierCopy = identifier;
  v18 = eventCopy;
  optionsCopy = options;
  responseCopy = response;
  v12 = responseCopy;
  v13 = optionsCopy;
  v14 = eventCopy;
  v15 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

void __92__TVRDServer_clientConnection_requestsSendingEvent_toDeviceWithIdentifier_options_response___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedDeviceForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 sendEvent:*(a1 + 48) options:*(a1 + 56) response:*(a1 + 64)];
    v2 = v3;
  }
}

- (void)clientConnection:(id)connection requestsEnablingRemoteOnLockscreen:(BOOL)lockscreen forDeviceWithIdentifier:(id)identifier
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __90__TVRDServer_clientConnection_requestsEnablingRemoteOnLockscreen_forDeviceWithIdentifier___block_invoke;
  v9[3] = &unk_1000209A8;
  lockscreenCopy = lockscreen;
  connectionCopy = connection;
  identifierCopy = identifier;
  selfCopy = self;
  v7 = identifierCopy;
  v8 = connectionCopy;
  dispatch_async(&_dispatch_main_q, v9);
}

void __90__TVRDServer_clientConnection_requestsEnablingRemoteOnLockscreen_forDeviceWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = _TVRDXPCLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = @"disable";
    if (*(a1 + 56))
    {
      v4 = @"enable";
    }

    *buf = 138543618;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ requested to %@ remote on lockscreen", buf, 0x16u);
  }

  if (*(a1 + 40))
  {
    v6 = [*(a1 + 48) _cachedDeviceForIdentifier:?];
    v7 = v6;
    if (v6 && (v6 = [v6 connectionType], v6 == 1))
    {
      v6 = [v7 attentionState];
      v8 = v6 == 3;
    }

    else
    {
      v8 = 1;
    }

    v9 = _TVRDXPCLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 attentionState];
      if ((v10 - 1) >= 3)
      {
        v11 = [NSString stringWithFormat:@"(unknown: %ld)", v10];
      }

      else
      {
        v11 = off_100020A68[(v10 - 1)];
      }

      [v7 connectionType];
      v13 = TVRCDeviceConnectionTypeDescription();
      *buf = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AttentionState:%{public}@ connectionType:%{public}@", buf, 0x16u);
    }

    if (v8 || (*(a1 + 56) & 1) == 0)
    {
      if ((*(a1 + 56) & 1) == 0)
      {
LABEL_22:
        v14 = +[TVRDAssertionManager sharedInstance];
        [v14 releaseLockScreenAssertion];
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v15 = [*(a1 + 48) systemMonitor];
      v16 = [v15 screenLocked];

      if ((v16 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v14 = +[TVRDAssertionManager sharedInstance];
    [v14 acquireLockScreenAssertion];
    goto LABEL_25;
  }

  if (*(a1 + 56) == 1)
  {
    v12 = _TVRDXPCLog(v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Client requested to enable lock screen assertion for nil device identifier. Releasing lock screen assertion", buf, 2u);
    }
  }

  v7 = +[TVRDAssertionManager sharedInstance];
  [v7 releaseLockScreenAssertion];
LABEL_26:
}

- (BOOL)clientConnection:(id)connection isConnectedToDeviceWithIdentifier:(id)identifier
{
  connectionState = [(TVRDServer *)self _cachedDeviceForIdentifier:identifier];
  v5 = connectionState;
  if (connectionState)
  {
    connectionState = [connectionState connectionState];
    v6 = connectionState == 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = _TVRDXPCLog(connectionState);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Connection to %{public}@ : %d", &v9, 0x12u);
  }

  return v6;
}

- (void)clientConnection:(id)connection requestsEnablingFindingSession:(BOOL)session forDeviceWithIdentifier:(id)identifier
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __86__TVRDServer_clientConnection_requestsEnablingFindingSession_forDeviceWithIdentifier___block_invoke;
  v9[3] = &unk_1000209A8;
  sessionCopy = session;
  connectionCopy = connection;
  selfCopy = self;
  identifierCopy = identifier;
  v7 = identifierCopy;
  v8 = connectionCopy;
  dispatch_async(&_dispatch_main_q, v9);
}

void __86__TVRDServer_clientConnection_requestsEnablingFindingSession_forDeviceWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = _TVRDXPCLog(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v11 = 138543362;
      v12 = v5;
      v6 = "Client connection %{public}@ requested to start finding session";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v6, &v11, 0xCu);
    }
  }

  else if (v4)
  {
    v7 = *(a1 + 32);
    v11 = 138543362;
    v12 = v7;
    v6 = "Client connection %{public}@ requested to stop finding session";
    goto LABEL_6;
  }

  v8 = [*(a1 + 40) _cachedDeviceForIdentifier:*(a1 + 48)];
  v9 = v8;
  if (v8 && (v8 = [v8 connectionType], v8 == 1))
  {
    [v9 _enableFindingSession:*(a1 + 56)];
  }

  else
  {
    v10 = _TVRDXPCLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __86__TVRDServer_clientConnection_requestsEnablingFindingSession_forDeviceWithIdentifier___block_invoke_cold_1(v9);
    }
  }
}

- (void)deviceBeganConnecting:(id)connecting
{
  connectingCopy = connecting;
  v5 = _TVRDXPCLog(connectingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = connectingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device started connecting: %{public}@", buf, 0xCu);
  }

  v6 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:connectingCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = _TVRDXPCLog(v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          extendedDescription = [connectingCopy extendedDescription];
          *buf = 138543618;
          v21 = v11;
          v22 = 2114;
          v23 = extendedDescription;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device started connecting: %{public}@", buf, 0x16u);
        }

        remoteObjectProxy = [v11 remoteObjectProxy];
        v15 = [TVRCDeviceState deviceStateFromDevice:connectingCopy];
        [remoteObjectProxy deviceUpdatedState:v15];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      v8 = v7;
    }

    while (v7);
  }
}

- (void)device:(id)device encounteredAuthenticationChallenge:(id)challenge
{
  deviceCopy = device;
  challengeCopy = challenge;
  v8 = _TVRDXPCLog(challengeCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    extendedDescription = [deviceCopy extendedDescription];
    *buf = 138543362;
    v39 = extendedDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Encountered auth challenge for device: %{public}@", buf, 0xCu);
  }

  authChallengesByID = self->_authChallengesByID;
  identifier = [deviceCopy identifier];
  v12 = [(NSMutableDictionary *)authChallengesByID objectForKey:identifier];

  if (v12)
  {
    v14 = _TVRDXPCLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      extendedDescription2 = [deviceCopy extendedDescription];
      *buf = 138412290;
      v39 = extendedDescription2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Already a pending auth challenge for device %@, cancelling.", buf, 0xCu);
    }

    [v12 cancel];
  }

  v31 = v12;
  v16 = self->_authChallengesByID;
  identifier2 = [deviceCopy identifier];
  [(NSMutableDictionary *)v16 setObject:challengeCopy forKey:identifier2];

  selfCopy = self;
  v19 = deviceCopy;
  [(TVRDServer *)selfCopy _interestedClientProcessConnectionsForDevice:deviceCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v20 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      v23 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v33 + 1) + 8 * v23);
        v25 = _TVRDXPCLog(v20);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v39 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sending auth challenge to interested client %{public}@", buf, 0xCu);
        }

        remoteObjectProxy = [v24 remoteObjectProxy];
        v27 = [TVRCDeviceState deviceStateFromDevice:v19];
        challengeType = [challengeCopy challengeType];
        challengeAttributes = [challengeCopy challengeAttributes];
        codeToEnterOnDevice = [challengeCopy codeToEnterOnDevice];
        [remoteObjectProxy deviceWithState:v27 encounteredAuthChallengeOfType:challengeType attributes:challengeAttributes codeToEnterOnDevice:codeToEnterOnDevice throttleSeconds:{objc_msgSend(challengeCopy, "throttleSeconds")}];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v20 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      v21 = v20;
    }

    while (v20);
  }
}

- (void)deviceConnected:(id)connected
{
  connectedCopy = connected;
  v5 = _TVRDXPCLog(connectedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = connectedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device became connected: %{public}@", buf, 0xCu);
  }

  authChallengesByID = self->_authChallengesByID;
  identifier = [connectedCopy identifier];
  [(NSMutableDictionary *)authChallengesByID removeObjectForKey:identifier];

  deviceIdentifiers = self->_deviceIdentifiers;
  identifier2 = [connectedCopy identifier];
  LOBYTE(deviceIdentifiers) = [(NSCountedSet *)deviceIdentifiers containsObject:identifier2];

  if ((deviceIdentifiers & 1) == 0)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    allIdentifiers = [connectedCopy allIdentifiers];
    v11 = [allIdentifiers countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(allIdentifiers);
          }

          [(NSCountedSet *)self->_deviceIdentifiers addObject:*(*(&v31 + 1) + 8 * i)];
        }

        v12 = [allIdentifiers countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v12);
    }
  }

  v15 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:connectedCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * v19);
        v21 = _TVRDXPCLog(v16);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          extendedDescription = [connectedCopy extendedDescription];
          *buf = 138543618;
          v36 = v20;
          v37 = 2114;
          v38 = extendedDescription;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device became connected: %{public}@", buf, 0x16u);
        }

        remoteObjectProxy = [v20 remoteObjectProxy];
        v24 = [TVRCDeviceState deviceStateFromDevice:connectedCopy];
        [remoteObjectProxy deviceUpdatedState:v24];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
      v17 = v16;
    }

    while (v16);
  }

  objc_storeWeak(&self->_lastConnectedDevice, connectedCopy);
  v25 = +[NSDate date];
  lastConnectionTimestamp = self->_lastConnectionTimestamp;
  self->_lastConnectionTimestamp = v25;

  [(TVRDServer *)self _publishUserPresenceForDevice:connectedCopy];
  [(TVRDServer *)self _switchToCurrentUserProfileForDevice:connectedCopy];
}

- (void)_publishUserPresenceForDevice:(id)device
{
  deviceCopy = device;
  v4 = +[ACAccountStore defaultStore];
  ams_activeiCloudAccount = [v4 ams_activeiCloudAccount];
  aa_altDSID = [ams_activeiCloudAccount aa_altDSID];

  if (aa_altDSID)
  {
    v12 = TVRCiCloudAltDSID;
    v13 = aa_altDSID;
    v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  v8 = TVRCPublishPresenceEvent;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __44__TVRDServer__publishUserPresenceForDevice___block_invoke;
  v10[3] = &unk_1000209D0;
  v11 = aa_altDSID;
  v9 = aa_altDSID;
  [deviceCopy sendEvent:v8 options:v7 response:v10];
}

void __44__TVRDServer__publishUserPresenceForDevice___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = _TVRDXPCLog(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__TVRDServer__publishUserPresenceForDevice___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if (!v8)
    {
      v8 = @"guest";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully published user presence %@", &v9, 0xCu);
  }
}

- (void)_switchToCurrentUserProfileForDevice:(id)device
{
  deviceCopy = device;
  attentionState = [deviceCopy attentionState];
  if (attentionState == 1)
  {
    v5 = +[ACAccountStore defaultStore];
    ams_activeiCloudAccount = [v5 ams_activeiCloudAccount];
    aa_altDSID = [ams_activeiCloudAccount aa_altDSID];

    if (aa_altDSID)
    {
      v8 = TVRCSwitchActiveUserAccountEvent;
      v16 = TVRCiCloudAltDSID;
      v17 = aa_altDSID;
      v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = __51__TVRDServer__switchToCurrentUserProfileForDevice___block_invoke;
      v12[3] = &unk_1000209D0;
      aa_altDSID = aa_altDSID;
      v13 = aa_altDSID;
      [deviceCopy sendEvent:v8 options:v9 response:v12];
    }
  }

  else
  {
    aa_altDSID = _TVRDXPCLog(attentionState);
    if (os_log_type_enabled(aa_altDSID, OS_LOG_TYPE_DEFAULT))
    {
      attentionState2 = [deviceCopy attentionState];
      if ((attentionState2 - 1) >= 3)
      {
        v11 = [NSString stringWithFormat:@"(unknown: %ld)", attentionState2];
      }

      else
      {
        v11 = off_100020A68[(attentionState2 - 1)];
      }

      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, aa_altDSID, OS_LOG_TYPE_DEFAULT, "device is: %{public}@. Ignore switching users", buf, 0xCu);
    }
  }
}

void __51__TVRDServer__switchToCurrentUserProfileForDevice___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = _TVRDXPCLog(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__TVRDServer__switchToCurrentUserProfileForDevice___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully switched to account %@", &v9, 0xCu);
  }
}

- (void)device:(id)device disconnectedForReason:(int64_t)reason error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  v8 = _TVRDXPCLog(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device disconnected: %{public}@", buf, 0xCu);
  }

  authChallengesByID = self->_authChallengesByID;
  identifier = [deviceCopy identifier];
  [(NSMutableDictionary *)authChallengesByID removeObjectForKey:identifier];

  [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:deviceCopy];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v11 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v30 = *v38;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        deviceIdentifiers = [v14 deviceIdentifiers];
        v16 = [NSString stringWithFormat:@"%@ - identifiers: %@", v14, deviceIdentifiers];

        v18 = _TVRDXPCLog(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          extendedDescription = [deviceCopy extendedDescription];
          *buf = 138543618;
          v43 = v16;
          v44 = 2114;
          v45 = extendedDescription;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device disconnected: %{public}@", buf, 0x16u);
        }

        v20 = [TVRCDeviceState deviceStateFromDevice:deviceCopy];
        [v20 setDisconnectReason:reason];
        [v20 setDisconnectError:errorCopy];
        remoteObjectProxy = [v14 remoteObjectProxy];
        [remoteObjectProxy deviceUpdatedState:v20];

        identifier2 = [deviceCopy identifier];
        [v14 removeInterestForDeviceWithIdentifier:identifier2];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        alternateIdentifiers = [deviceCopy alternateIdentifiers];
        allValues = [alternateIdentifiers allValues];

        v25 = [allValues countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v34;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v34 != v27)
              {
                objc_enumerationMutation(allValues);
              }

              [v14 removeInterestForDeviceWithIdentifier:*(*(&v33 + 1) + 8 * j)];
            }

            v26 = [allValues countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v26);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v12);
  }
}

- (void)device:(id)device didUpdateNameFrom:(id)from
{
  deviceCopy = device;
  fromCopy = from;
  v8 = _TVRDXPCLog(fromCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [deviceCopy name];
    *buf = 138543618;
    v31 = fromCopy;
    v32 = 2114;
    v33 = name;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating device's name from: %{public}@ to: %{public}@", buf, 0x16u);
  }

  [(TVRDServer *)self _updateClientConnectionsForDevice:deviceCopy oldIdentifier:fromCopy];
  v10 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:deviceCopy];
  if (![v10 count])
  {
    v11 = _TVRDXPCLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TVRDServer device:v11 didUpdateNameFrom:?];
    }
  }

  v23 = fromCopy;
  selfCopy = self;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        v18 = _TVRDXPCLog(v13);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          extendedDescription = [deviceCopy extendedDescription];
          *buf = 138543618;
          v31 = v17;
          v32 = 2114;
          v33 = extendedDescription;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device name changed: %{public}@", buf, 0x16u);
        }

        remoteObjectProxy = [v17 remoteObjectProxy];
        v21 = [TVRCDeviceState deviceStateFromDevice:deviceCopy];
        [remoteObjectProxy deviceUpdatedState:v21];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v14 = v13;
    }

    while (v13);
  }

  generalDeviceQuery = selfCopy->_generalDeviceQuery;
  if (generalDeviceQuery && [(TVRXDeviceQuery *)generalDeviceQuery isRunning])
  {
    [(TVRDServer *)selfCopy deviceQueryDidUpdateDevices:selfCopy->_generalDeviceQuery];
  }
}

- (void)device:(id)device updatedSupportedButtons:(id)buttons
{
  deviceCopy = device;
  v6 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:deviceCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = _TVRDXPCLog(v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          extendedDescription = [deviceCopy extendedDescription];
          *buf = 138543618;
          v21 = v11;
          v22 = 2114;
          v23 = extendedDescription;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device updated supported buttons: %{public}@", buf, 0x16u);
        }

        remoteObjectProxy = [v11 remoteObjectProxy];
        v15 = [TVRCDeviceState deviceStateFromDevice:deviceCopy];
        [remoteObjectProxy deviceUpdatedState:v15];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      v8 = v7;
    }

    while (v7);
  }
}

- (void)device:(id)device updatedAttentionState:(int64_t)state
{
  deviceCopy = device;
  v7 = _TVRDXPCLog(deviceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [deviceCopy name];
    if ((state - 1) >= 3)
    {
      state = [NSString stringWithFormat:@"(unknown: %ld)", state];
    }

    else
    {
      state = off_100020A68[state - 1];
    }

    *buf = 138543618;
    v28 = name;
    v29 = 2114;
    v30 = state;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ updated attentionState to: %{public}@", buf, 0x16u);
  }

  if (state > 1)
  {
    if (state == 2)
    {
      v10 = +[TVRDAssertionManager sharedInstance];
      [v10 startAssertionExpirationTimer];
      goto LABEL_14;
    }

    if (state != 3)
    {
      goto LABEL_15;
    }
  }

  else if (state)
  {
    if (state != 1)
    {
      goto LABEL_15;
    }

    v10 = +[TVRDAssertionManager sharedInstance];
    [v10 releaseLockScreenAssertion];
    goto LABEL_14;
  }

  v11 = +[TVRDAssertionManager sharedInstance];
  [v11 invalidateAssertionExpirationTimer];

  v10 = +[TVRDAssertionManager sharedInstance];
  [v10 acquireLockScreenAssertion];
LABEL_14:

LABEL_15:
  v12 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:deviceCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        v18 = _TVRDXPCLog(v13);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          extendedDescription = [deviceCopy extendedDescription];
          *buf = 138543618;
          v28 = v17;
          v29 = 2114;
          v30 = extendedDescription;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that device's attention state updated: %{public}@", buf, 0x16u);
        }

        remoteObjectProxy = [v17 remoteObjectProxy];
        v21 = [TVRCDeviceState deviceStateFromDevice:deviceCopy];
        [remoteObjectProxy deviceUpdatedState:v21];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v14 = v13;
    }

    while (v13);
  }
}

- (void)device:(id)device updatedSiriRemoteFindingState:(int64_t)state
{
  deviceCopy = device;
  v7 = _TVRDXPCLog(deviceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (state < 7 && ((0x77u >> state) & 1) != 0)
    {
      v8 = off_100020A80[state];
    }

    else
    {
      v9 = [NSNumber numberWithInteger:state];
      v8 = [NSString stringWithFormat:@"Unknown %@", v9];
    }

    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updated remote finding state to: %{public}@", buf, 0xCu);
  }

  v10 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:deviceCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        v16 = _TVRDXPCLog(v11);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          extendedDescription = [deviceCopy extendedDescription];
          *buf = 138543618;
          v25 = v15;
          v26 = 2114;
          v27 = extendedDescription;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that siri remote finding session was updated: %{public}@", buf, 0x16u);
        }

        remoteObjectProxy = [(__CFString *)v15 remoteObjectProxy];
        v19 = [TVRCDeviceState deviceStateFromDevice:deviceCopy];
        [remoteObjectProxy deviceUpdatedState:v19];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
      v12 = v11;
    }

    while (v11);
  }
}

- (void)device:(id)device updatedPairedRemoteInfo:(id)info
{
  deviceCopy = device;
  infoCopy = info;
  v8 = _TVRDXPCLog(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    extendedDescription = [deviceCopy extendedDescription];
    *buf = 138543618;
    v27 = extendedDescription;
    v28 = 2114;
    v29 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "'%{public}@' pairedRemoteInfo: %{public}@", buf, 0x16u);
  }

  v20 = infoCopy;

  v10 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:deviceCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = _TVRDXPCLog(v11);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          extendedDescription2 = [deviceCopy extendedDescription];
          *buf = 138543618;
          v27 = v15;
          v28 = 2114;
          v29 = extendedDescription2;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that paired remote was updated: %{public}@", buf, 0x16u);
        }

        remoteObjectProxy = [v15 remoteObjectProxy];
        v19 = [TVRCDeviceState deviceStateFromDevice:deviceCopy];
        [remoteObjectProxy deviceUpdatedState:v19];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v12 = v11;
    }

    while (v11);
  }
}

- (void)device:(id)device updatedNowPlayingInfo:(id)info
{
  deviceCopy = device;
  infoCopy = info;
  v8 = _TVRDXPCLog(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    extendedDescription = [deviceCopy extendedDescription];
    *buf = 138543618;
    v27 = extendedDescription;
    v28 = 2112;
    v29 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "'%{public}@' nowPlayingInfo: %@", buf, 0x16u);
  }

  v20 = infoCopy;

  v10 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:deviceCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = _TVRDXPCLog(v11);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          extendedDescription2 = [deviceCopy extendedDescription];
          *buf = 138543618;
          v27 = v15;
          v28 = 2114;
          v29 = extendedDescription2;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that now playing info was updated: %{public}@", buf, 0x16u);
        }

        remoteObjectProxy = [v15 remoteObjectProxy];
        v19 = [TVRCDeviceState deviceStateFromDevice:deviceCopy];
        [remoteObjectProxy deviceUpdatedState:v19];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v12 = v11;
    }

    while (v11);
  }
}

- (void)device:(id)device supportsFindMyRemote:(BOOL)remote
{
  remoteCopy = remote;
  deviceCopy = device;
  v7 = _TVRDXPCLog(deviceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    extendedDescription = [deviceCopy extendedDescription];
    v9 = extendedDescription;
    v10 = "no";
    if (remoteCopy)
    {
      v10 = "yes";
    }

    *buf = 138543618;
    v36 = extendedDescription;
    v37 = 2080;
    v38 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "'%{public}@' supports find my remote: %s", buf, 0x16u);
  }

  generalDeviceQuery = self->_generalDeviceQuery;
  if (generalDeviceQuery && [(TVRXDeviceQuery *)generalDeviceQuery isRunning])
  {
    [(TVRDServer *)self deviceQueryDidUpdateDevices:self->_generalDeviceQuery];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_clientConnections;
  v12 = [(NSMutableSet *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v31;
    *&v13 = 138543618;
    v28 = v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        allIdentifiers = [deviceCopy allIdentifiers];
        deviceIdentifiers = [v17 deviceIdentifiers];
        identifier = [deviceCopy identifier];
        if ([deviceIdentifiers containsObject:identifier])
        {
        }

        else
        {
          deviceIdentifiers2 = [v17 deviceIdentifiers];
          v23 = [deviceIdentifiers2 intersectsSet:allIdentifiers];

          if (!v23)
          {
            goto LABEL_19;
          }
        }

        v24 = _TVRDXPCLog(v21);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          extendedDescription2 = [deviceCopy extendedDescription];
          *buf = v28;
          v36 = v17;
          v37 = 2114;
          v38 = extendedDescription2;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Broadcasting to %{public}@, that paired remote was updated: %{public}@", buf, 0x16u);
        }

        remoteObjectProxy = [v17 remoteObjectProxy];
        v27 = [TVRCDeviceState deviceStateFromDevice:deviceCopy];
        [remoteObjectProxy deviceUpdatedState:v27];

LABEL_19:
      }

      v14 = [(NSMutableSet *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }
}

- (void)devicePoweredOff:(id)off
{
  v3 = _TVRDXPCLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRDServer devicePoweredOff:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v4 = +[TVRDAssertionManager sharedInstance];
  [v4 releaseLockScreenAssertion];
}

- (void)keyboardController:(id)controller beganTextEditingWithAttributes:(id)attributes
{
  attributes = [(TVRDServer *)self _deviceForKeyboardController:controller, attributes];
  if (attributes)
  {
    v6 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:attributes];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          v12 = _TVRDXPCLog(v7);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            extendedDescription = [attributes extendedDescription];
            *buf = 138543618;
            v24 = v11;
            v25 = 2114;
            v26 = extendedDescription;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BeganTextEditing - broadcasting to %{public}@, that device updated keyboard state: %{public}@", buf, 0x16u);
          }

          remoteObjectProxy = [v11 remoteObjectProxy];
          v15 = [TVRCDeviceState deviceStateFromDevice:attributes];
          [remoteObjectProxy deviceUpdatedState:v15];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        v8 = v7;
      }

      while (v7);
    }

    [(NSDate *)self->_lastConnectionTimestamp timeIntervalSinceNow];
    if (fabs(v16) < 5.0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_lastConnectedDevice);

      if (WeakRetained == attributes)
      {
        lastConnectionTimestamp = self->_lastConnectionTimestamp;
        self->_lastConnectionTimestamp = 0;

        objc_storeWeak(&self->_lastConnectedDevice, 0);
      }
    }
  }
}

- (void)keyboardControllerEndedTextEditing:(id)editing
{
  v4 = [(TVRDServer *)self _deviceForKeyboardController:editing];
  if (v4)
  {
    v5 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:v4];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v11 = _TVRDXPCLog(v6);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            extendedDescription = [v4 extendedDescription];
            *buf = 138543618;
            v20 = v10;
            v21 = 2114;
            v22 = extendedDescription;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EndedTextEditing - broadcasting to %{public}@, that device updated keyboard state: %{public}@", buf, 0x16u);
          }

          remoteObjectProxy = [v10 remoteObjectProxy];
          v14 = [TVRCDeviceState deviceStateFromDevice:v4];
          [remoteObjectProxy deviceUpdatedState:v14];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
        v7 = v6;
      }

      while (v6);
    }
  }
}

- (void)keyboardController:(id)controller didUpdateText:(id)text
{
  text = [(TVRDServer *)self _deviceForKeyboardController:controller, text];
  if (text)
  {
    v6 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:text];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = _TVRDXPCLog(v7);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            extendedDescription = [text extendedDescription];
            *buf = 138543618;
            v21 = v11;
            v22 = 2114;
            v23 = extendedDescription;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DidUpdateText - broadcasting to %{public}@, that device updated keyboard state: %{public}@", buf, 0x16u);
          }

          remoteObjectProxy = [v11 remoteObjectProxy];
          v15 = [TVRCDeviceState deviceStateFromDevice:text];
          [remoteObjectProxy deviceUpdatedState:v15];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
        v8 = v7;
      }

      while (v7);
    }
  }
}

- (void)keyboardController:(id)controller didUpdateAttributes:(id)attributes
{
  attributes = [(TVRDServer *)self _deviceForKeyboardController:controller, attributes];
  if (attributes)
  {
    v6 = [(TVRDServer *)self _interestedClientProcessConnectionsForDevice:attributes];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = _TVRDXPCLog(v7);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            extendedDescription = [attributes extendedDescription];
            *buf = 138543618;
            v21 = v11;
            v22 = 2114;
            v23 = extendedDescription;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DidUpdateAttributes - broadcasting to %{public}@, that device updated keyboard state: %{public}@", buf, 0x16u);
          }

          remoteObjectProxy = [v11 remoteObjectProxy];
          v15 = [TVRCDeviceState deviceStateFromDevice:attributes];
          [remoteObjectProxy deviceUpdatedState:v15];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
        v8 = v7;
      }

      while (v7);
    }
  }
}

- (void)_becameInterestedInDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _TVRDXPCLog(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Server became interested in %{public}@", buf, 0xCu);
  }

  v6 = [(TVRDServer *)self _deviceForIdentifierInDeviceQuery:identifierCopy];
  v7 = v6;
  if (v6)
  {
    v8 = _TVRDXPCLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      cachedDevices = [(TVRDServer *)self cachedDevices];
      *buf = 138543618;
      v21 = v7;
      v22 = 2112;
      v23 = cachedDevices;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device Query contains device %{public}@. Adding to cachedDevices: %@", buf, 0x16u);
    }

    v10 = _TVRDXPCLog([(NSMutableSet *)self->_cachedDevices addObject:v7]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      cachedDevices2 = [(TVRDServer *)self cachedDevices];
      *buf = 138412290;
      v21 = cachedDevices2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "After adding interested device to cachedDevices: %@", buf, 0xCu);
    }

    [(TVRDServer *)self _connectToDeviceIfNeeded:v7];
  }

  else
  {
    isRunning = [(TVRXDeviceQuery *)self->_generalDeviceQuery isRunning];
    v13 = isRunning;
    v14 = _TVRDXPCLog(isRunning);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 138412546;
        v21 = 0;
        v22 = 2048;
        v23 = 0x4024000000000000;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Device Query does not contain device %@, but device query is running. Putting a %.1f second timer to find the device", buf, 0x16u);
      }

      [(NSMutableSet *)self->_identifiersRequestingConnection addObject:identifierCopy];
      [(TVRDServer *)self performSelector:"_informClientCouldNotLocateDeviceWithIdentifier:" withObject:identifierCopy afterDelay:10.0];
    }

    else
    {
      if (v15)
      {
        *buf = 138543362;
        v21 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No device query running. Will attempt to locate device with ID %{public}@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      deviceSearch = self->_deviceSearch;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __54__TVRDServer__becameInterestedInDeviceWithIdentifier___block_invoke;
      v17[3] = &unk_1000209F8;
      objc_copyWeak(&v19, buf);
      v17[4] = self;
      v18 = identifierCopy;
      [(TVRXDeviceLocator *)deviceSearch findDeviceWithIdentifier:v18 timeout:v17 completion:10.0];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }
  }
}

void __54__TVRDServer__becameInterestedInDeviceWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = _TVRDXPCLog(WeakRetained);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) cachedDevices];
      v14 = 138543618;
      v15 = v3;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Search found device %{public}@. Adding to cachedDevices: %@", &v14, 0x16u);
    }

    [WeakRetained[4] addObject:v3];
    [WeakRetained _connectToDeviceIfNeeded:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__TVRDServer__becameInterestedInDeviceWithIdentifier___block_invoke_cold_1(a1, v6, v8, v9, v10, v11, v12, v13);
    }

    [WeakRetained _informClientCouldNotLocateDeviceWithIdentifier:*(a1 + 40)];
  }
}

- (void)_informClientCouldNotLocateDeviceWithIdentifier:(id)identifier
{
  identifiersRequestingConnection = self->_identifiersRequestingConnection;
  identifierCopy = identifier;
  [(NSMutableSet *)identifiersRequestingConnection removeObject:identifierCopy];
  _init = [[TVRXDevice alloc] _init];
  [_init _setIdentifier:identifierCopy name:0 supportedButtons:0];

  v6 = TVRCMakeError();
  [(TVRDServer *)self device:_init disconnectedForReason:3 error:v6];
}

- (id)_deviceForIdentifierInDeviceQuery:(id)query
{
  queryCopy = query;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  devices = [(TVRXDeviceQuery *)self->_generalDeviceQuery devices];
  v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsIdentifier:queryCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_lostInterestInDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _TVRDXPCLog(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TVRDServer] lost interest in %{public}@", &v14, 0xCu);
  }

  [(TVRXDeviceLocator *)self->_deviceSearch cancelSearchForDeviceWithIdentifier:identifierCopy];
  v6 = [(NSMutableDictionary *)self->_authChallengesByID objectForKey:identifierCopy];
  [v6 cancel];
  [(NSMutableDictionary *)self->_authChallengesByID removeObjectForKey:identifierCopy];
  v7 = [(TVRDServer *)self _cachedDeviceForIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    v9 = _TVRDXPCLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      cachedDevices = self->_cachedDevices;
      v14 = 138543874;
      v15 = identifierCopy;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = cachedDevices;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Server lost interest in %{public}@, disconnecting and removing device %{public}@ from cachedDevices: %{public}@", &v14, 0x20u);
    }

    keyboardController = [v8 keyboardController];
    [keyboardController setDelegate:0];

    [v8 disconnect];
    [(NSMutableSet *)self->_cachedDevices removeObject:v8];
  }

  v12 = [(NSMutableSet *)self->_identifiersRequestingConnection containsObject:identifierCopy];
  if (v12)
  {
    v13 = _TVRDXPCLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Server lost interest in %{public}@, removing identifier", &v14, 0xCu);
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_informClientCouldNotLocateDeviceWithIdentifier:" object:identifierCopy];
    [(NSMutableSet *)self->_identifiersRequestingConnection removeObject:identifierCopy];
  }
}

- (id)countedSetDescriptionFor:(id)for
{
  forCopy = for;
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = forCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 countForObject:v10];
        v12 = [NSString stringWithFormat:@"'%@' = %ld", v10, v11, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_updateClientConnectionsForDevice:(id)device oldIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v8 = _TVRDXPCLog(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [deviceCopy identifier];
    *buf = 138543618;
    v33 = identifierCopy;
    v34 = 2114;
    v35 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating all client connections' deviceIdentifiers from: %{public}@ to %{public}@", buf, 0x16u);
  }

  v11 = _TVRDXPCLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(TVRDServer *)self countedSetDescriptionFor:self->_deviceIdentifiers];
    *buf = 138543362;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Before updating identifiers: %{public}@", buf, 0xCu);
  }

  [(NSCountedSet *)self->_deviceIdentifiers removeObject:identifierCopy];
  deviceIdentifiers = self->_deviceIdentifiers;
  identifier2 = [deviceCopy identifier];
  LOBYTE(deviceIdentifiers) = [(NSCountedSet *)deviceIdentifiers containsObject:identifier2];

  if ((deviceIdentifiers & 1) == 0)
  {
    v16 = self->_deviceIdentifiers;
    identifier3 = [deviceCopy identifier];
    [(NSCountedSet *)v16 addObject:identifier3];
  }

  v18 = _TVRDXPCLog(v15);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(TVRDServer *)self countedSetDescriptionFor:self->_deviceIdentifiers];
    *buf = 138543362;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updated Identifiers: %{public}@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = self->_clientConnections;
  v21 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      v24 = 0;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * v24);
        identifier4 = [deviceCopy identifier];
        [v25 updateDeviceIdentifier:identifierCopy to:identifier4];

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }
}

- (id)_interestedClientProcessConnectionsForDevice:(id)device
{
  deviceCopy = device;
  v23 = objc_alloc_init(NSMutableArray);
  v24 = +[NSMutableDictionary dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_clientConnections;
  v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        alternateIdentifiers = [deviceCopy alternateIdentifiers];
        allValues = [alternateIdentifiers allValues];
        v12 = [NSSet setWithArray:allValues];

        deviceIdentifiers = [v9 deviceIdentifiers];
        identifier = [deviceCopy identifier];
        if ([deviceIdentifiers containsObject:identifier])
        {
        }

        else
        {
          deviceIdentifiers2 = [v9 deviceIdentifiers];
          v16 = [deviceIdentifiers2 intersectsSet:v12];

          if (!v16)
          {
            goto LABEL_10;
          }
        }

        [v23 addObject:v9];
LABEL_10:
        v17 = [NSString stringWithFormat:@"%p", v9];
        deviceIdentifiers3 = [v9 deviceIdentifiers];
        allObjects = [deviceIdentifiers3 allObjects];
        [v24 setObject:allObjects forKeyedSubscript:v17];
      }

      v6 = [(NSMutableSet *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  if (![v23 count])
  {
    v20 = _TVRDXPCLog(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [TVRDServer _interestedClientProcessConnectionsForDevice:deviceCopy];
    }
  }

  return v23;
}

- (id)_deviceForKeyboardController:(id)controller
{
  controllerCopy = controller;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_cachedDevices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        keyboardController = [v9 keyboardController];

        if (keyboardController == controllerCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_hasNowPlayingControlsForButtons:(id)buttons
{
  buttonsCopy = buttons;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [buttonsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(buttonsCopy);
        }

        v7 |= [(TVRDServer *)self _isButtonOfNowPlayingType:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [buttonsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (void)_connectToDeviceIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = _TVRDXPCLog(neededCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    extendedDescription = [neededCopy extendedDescription];
    *buf = 138543362;
    v31 = extendedDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connecting to device: %{public}@", buf, 0xCu);
  }

  [neededCopy setDelegate:self];
  keyboardController = [neededCopy keyboardController];
  [keyboardController setDelegate:self];

  if ([neededCopy connectionState] == 2)
  {
    v8 = _TVRDXPCLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      extendedDescription2 = [neededCopy extendedDescription];
      *buf = 138543362;
      v31 = extendedDescription2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is already connected, informing clients...", buf, 0xCu);
    }

    [(TVRDServer *)self deviceConnected:neededCopy];
  }

  else if ([neededCopy connectionState] == 1)
  {
    v10 = _TVRDXPCLog(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      extendedDescription3 = [neededCopy extendedDescription];
      *buf = 138543362;
      v31 = extendedDescription3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is connecting, informing clients again...", buf, 0xCu);
    }

    [(TVRDServer *)self deviceBeganConnecting:neededCopy];
  }

  else
  {
    [neededCopy setDelegate:self];
    [neededCopy connect];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allIdentifiers = [neededCopy allIdentifiers];
  v13 = [allIdentifiers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(allIdentifiers);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        connectionContextByID = [(TVRDServer *)self connectionContextByID];
        allKeys = [connectionContextByID allKeys];
        v20 = [allKeys containsObject:v17];

        if (v20)
        {
          connectionContextByID2 = [(TVRDServer *)self connectionContextByID];
          v22 = [connectionContextByID2 objectForKeyedSubscript:v17];
          integerValue = [v22 integerValue];

          irSessionManager = [(TVRDServer *)self irSessionManager];
          [irSessionManager updateDevice:neededCopy withConnectionContext:integerValue];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [allIdentifiers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }
}

- (id)_cachedDeviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(TVRDServer *)self _findCachedDeviceForIdentifier:identifierCopy];
  if (!v5)
  {
    v6 = [(TVRDServer *)self _deviceForIdentifierInDeviceQuery:identifierCopy];
    idsIdentifier = [v6 idsIdentifier];
    v5 = [(TVRDServer *)self _findCachedDeviceForIdentifier:idsIdentifier];

    if (!v5)
    {
      name = [v6 name];
      v5 = [(TVRDServer *)self _findCachedDeviceForIdentifier:name];
    }

    if ([v5 isEqual:v6])
    {
      [(NSMutableSet *)self->_cachedDevices removeObject:v5];
      v9 = _TVRDXPCLog([(NSMutableSet *)self->_cachedDevices addObject:v6]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        cachedDevices = self->_cachedDevices;
        v12 = 138543874;
        v13 = v5;
        v14 = 2114;
        v15 = v6;
        v16 = 2114;
        v17 = cachedDevices;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Replaced cached device: %{public}@ with device: %{public}@. cachedDevices: %{public}@", &v12, 0x20u);
      }
    }
  }

  return v5;
}

- (id)_findCachedDeviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_cachedDevices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsIdentifier:{identifierCopy, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_startGeneralDeviceQuery
{
  v3 = _TVRDXPCLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting general device query", &v10, 2u);
  }

  v5 = _TVRDXPCLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cachedDevices = [(TVRDServer *)self cachedDevices];
    v10 = 138543362;
    v11 = cachedDevices;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Existing cachedDevices: %{public}@", &v10, 0xCu);
  }

  generalDeviceQuery = self->_generalDeviceQuery;
  if (!generalDeviceQuery)
  {
    v8 = objc_alloc_init(TVRXDeviceQuery);
    v9 = self->_generalDeviceQuery;
    self->_generalDeviceQuery = v8;

    [(TVRXDeviceQuery *)self->_generalDeviceQuery setDelegate:self];
    generalDeviceQuery = self->_generalDeviceQuery;
  }

  [(TVRXDeviceQuery *)generalDeviceQuery start];
  [(TVRDServer *)self _activateIRSessionManager];
}

- (void)_activateIRSessionManager
{
  irSessionManager = self->_irSessionManager;
  if (!irSessionManager)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(TVRDIRSessionManager);
    v5 = self->_irSessionManager;
    self->_irSessionManager = v4;

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __39__TVRDServer__activateIRSessionManager__block_invoke;
    v7[3] = &unk_100020A20;
    objc_copyWeak(&v8, &location);
    [(TVRDIRSessionManager *)self->_irSessionManager setFilteredDeviceListHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    irSessionManager = self->_irSessionManager;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __39__TVRDServer__activateIRSessionManager__block_invoke_90;
  v6[3] = &unk_100020A48;
  v6[4] = self;
  [(TVRDIRSessionManager *)irSessionManager activateWithCompletion:v6];
}

void __39__TVRDServer__activateIRSessionManager__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = [WeakRetained generalDeviceQuery];
      v7 = [v6 devices];
      v8 = [v7 count];

      if (v8)
      {
        v9 = [TVRCDeviceState arrayOfStatesFromDevices:v3];
        v10 = _TVRDXPCLog(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IRSessionManager updated devices with deviceStates %{public}@", buf, 0xCu);
        }

        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = [v5 deviceQueryObservers];
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            v15 = 0;
            do
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v17 + 1) + 8 * v15) remoteObjectProxy];
              [v16 suggestedDevices:v9];

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v13);
        }
      }
    }
  }
}

void __39__TVRDServer__activateIRSessionManager__block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _TVRDXPCLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __39__TVRDServer__activateIRSessionManager__block_invoke_90_cold_1();
    }
  }

  else
  {
    v5 = [*(a1 + 32) irSessionManager];
    [v5 requestCurrentRecommendedDevices];
  }
}

- (void)_invalidateIRSessionManager
{
  irSessionManager = [(TVRDServer *)self irSessionManager];
  [irSessionManager invalidate];

  [(TVRDServer *)self setIrSessionManager:0];
}

- (void)_stopGeneralDeviceQuery
{
  v3 = _TVRDXPCLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping general device query", v6, 2u);
  }

  [(TVRXDeviceQuery *)self->_generalDeviceQuery stop];
  [(TVRXDeviceQuery *)self->_generalDeviceQuery setDelegate:0];
  generalDeviceQuery = self->_generalDeviceQuery;
  self->_generalDeviceQuery = 0;

  irSessionManager = [(TVRDServer *)self irSessionManager];
  [irSessionManager pause];
}

- (void)_updateDevicesWithRecommendations:(id)recommendations
{
  recommendationsCopy = recommendations;
  v5 = _TVRDXPCLog(recommendationsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "[TVRDServer _updateDevicesWithRecommendations:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  irSessionManager = [(TVRDServer *)self irSessionManager];
  suggestedDevices = [irSessionManager suggestedDevices];
  v8 = [suggestedDevices count];

  if (v8)
  {
    irSessionManager2 = [(TVRDServer *)self irSessionManager];
    suggestedDevices2 = [irSessionManager2 suggestedDevices];
    v12 = [NSMutableSet setWithArray:suggestedDevices2];

    v13 = [recommendationsCopy mutableCopy];
    v14 = _TVRDXPCLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [TVRDServer _updateDevicesWithRecommendations:];
    }

    v16 = _TVRDXPCLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [TVRDServer _updateDevicesWithRecommendations:];
    }

    v36 = recommendationsCopy;

    v17 = _TVRDXPCLog([v13 intersectSet:v12]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [TVRDServer _updateDevicesWithRecommendations:];
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v13;
    v18 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v40;
      v21 = &TVRCDeviceConnectionTypeDescription_ptr;
      v37 = *v40;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          v24 = v21[110];
          identifier = [v23 identifier];
          v26 = [v24 predicateWithFormat:@"identifier ==[c] %@", identifier];
          v27 = [v12 filteredSetUsingPredicate:v26];

          anyObject = [v27 anyObject];
          v29 = anyObject;
          if (anyObject)
          {
            v30 = _TVRDXPCLog(anyObject);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              [v29 extendedDescription];
              v31 = v12;
              v33 = v32 = v21;
              [v23 extendedDescription];
              v35 = v34 = v19;
              *buf = 138543618;
              v44 = v33;
              v45 = 2114;
              v46 = v35;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Assigning classification from suggestedDevice: %{public}@ to device: %{public}@", buf, 0x16u);

              v19 = v34;
              v21 = v32;
              v12 = v31;
              v20 = v37;
            }

            [v23 setClassification:{objc_msgSend(v29, "classification")}];
          }
        }

        v19 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v19);
    }

    recommendationsCopy = v36;
  }

  else
  {
    v12 = _TVRDXPCLog(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "There are no suggested devices. Skipping updating devices with recommendations", buf, 2u);
    }
  }
}

- (void)deviceQueryDidUpdateDevices:(id)devices
{
  devices = [devices devices];
  v5 = _TVRDXPCLog(devices);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v63 = devices;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "General device query updated set of devices %{public}@", buf, 0xCu);
  }

  [TVRCDeviceState setOfStatesFromDevices:devices];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v60 = 0u;
  v6 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v58;
    do
    {
      v9 = 0;
      do
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v57 + 1) + 8 * v9);
        v11 = _TVRDXPCLog(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v63 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updated deviceState: %{public}@", buf, 0xCu);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v6 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
      v7 = v6;
    }

    while (v6);
  }

  irSessionManager = [(TVRDServer *)self irSessionManager];
  [irSessionManager processNewDevices:devices];

  [(TVRDServer *)self _updateDevicesWithRecommendations:devices];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v13 = self->_deviceQueryObservers;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v54;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v13);
        }

        remoteObjectProxy = [*(*(&v53 + 1) + 8 * i) remoteObjectProxy];
        [remoteObjectProxy deviceQueryUpdatedDiscoveredDevices:obj];
      }

      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v15);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v42 = devices;
  v19 = [v42 countByEnumeratingWithState:&v49 objects:v66 count:16];
  if (v19)
  {
    v21 = v19;
    v43 = *v50;
    *&v20 = 138543362;
    v41 = v20;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v50 != v43)
        {
          objc_enumerationMutation(v42);
        }

        v23 = *(*(&v49 + 1) + 8 * j);
        [v23 setDelegate:{self, v41}];
        identifier = [v23 identifier];
        v25 = [(TVRDServer *)self _cachedDeviceForIdentifier:identifier];

        if (v25)
        {
          connectionState = [v25 connectionState];
          if (connectionState != 2 && v25 != v23)
          {
            v28 = _TVRDXPCLog(connectionState);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              cachedDevices = [(TVRDServer *)self cachedDevices];
              *buf = 138543618;
              v63 = cachedDevices;
              v64 = 2114;
              v65 = v23;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Updating stale device in cachedDevices:%{public}@ with %{public}@", buf, 0x16u);
            }

            [(NSMutableSet *)self->_cachedDevices removeObject:v25];
            v30 = _TVRDXPCLog([(NSMutableSet *)self->_cachedDevices addObject:v23]);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              cachedDevices2 = [(TVRDServer *)self cachedDevices];
              *buf = v41;
              v63 = cachedDevices2;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Updated cachedDevices:%{public}@", buf, 0xCu);
            }
          }
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        allIdentifiers = [v23 allIdentifiers];
        v33 = [allIdentifiers countByEnumeratingWithState:&v45 objects:v61 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v46;
          while (2)
          {
            for (k = 0; k != v34; k = k + 1)
            {
              if (*v46 != v35)
              {
                objc_enumerationMutation(allIdentifiers);
              }

              v37 = *(*(&v45 + 1) + 8 * k);
              if ([(NSMutableSet *)self->_identifiersRequestingConnection containsObject:v37])
              {
                [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_informClientCouldNotLocateDeviceWithIdentifier:" object:v37];
                v38 = _TVRDXPCLog([(NSMutableSet *)self->_identifiersRequestingConnection removeObject:v37]);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  extendedDescription = [v23 extendedDescription];
                  cachedDevices3 = [(TVRDServer *)self cachedDevices];
                  *buf = 138543618;
                  v63 = extendedDescription;
                  v64 = 2114;
                  v65 = cachedDevices3;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ to cachedDevices: %{public}@", buf, 0x16u);
                }

                [(NSMutableSet *)self->_cachedDevices addObject:v23];
                [(TVRDServer *)self _connectToDeviceIfNeeded:v23];
                goto LABEL_46;
              }
            }

            v34 = [allIdentifiers countByEnumeratingWithState:&v45 objects:v61 count:16];
            if (v34)
            {
              continue;
            }

            break;
          }
        }

LABEL_46:
      }

      v21 = [v42 countByEnumeratingWithState:&v49 objects:v66 count:16];
    }

    while (v21);
  }
}

- (TVRXDevice)lastConnectedDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_lastConnectedDevice);

  return WeakRetained;
}

void __81__TVRDServer_clientConnection_addedInterestedDeviceIdentifier_connectionContext___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(*a2 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not find cached device with ID %{public}@, even though someone is already interested in that device. All cachedDevices - %{public}@", &v5, 0x16u);
}

void __77__TVRDServer_clientConnection_requestsSendingButtonEvent_toDeviceIdentifier___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 cachedDevices];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __76__TVRDServer_clientConnection_requestsSendingTouchEvent_toDeviceIdentifier___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 cachedDevices];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __86__TVRDServer_clientConnection_requestsEnablingFindingSession_forDeviceWithIdentifier___block_invoke_cold_1(void *a1)
{
  v1 = [a1 extendedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __54__TVRDServer__becameInterestedInDeviceWithIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_1(&_mh_execute_header, a2, a3, "Could not locate device with ID %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_interestedClientProcessConnectionsForDevice:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 allIdentifiers];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end