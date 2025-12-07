@interface CMContinuityCaptureDiscoverySession
+ (id)rapportDeviceIdentifier:(id)identifier;
+ (id)sharedInstance;
+ (void)invalidate;
+ (void)unscheduleAllNotificationForDeviceIdentifier:(id)identifier;
- (BOOL)_isSignedInDevice:(id)device;
- (BOOL)setupRPClient;
- (BOOL)validateSessionInfoForEvent:(id)event;
- (CMContinuityCaptureDiscoverySession)initWithQueue:(id)queue;
- (NSArray)availableClientDevices;
- (id)_deviceForIdentifier:(id)identifier;
- (id)currentDeviceList;
- (id)currentUserSelectedInSessionDeviceIdentifier;
- (id)description;
- (id)discoveredCompatibleDevices:(id)devices rapportDevices:(id)rapportDevices;
- (id)discoveredLocalDevices;
- (id)discoveredRapportDevices;
- (id)rpRemoteDisplayDiscovery;
- (id)validateCapabilitiesAndCacheIncompatibleNotificationIfApplicable:(id)applicable majorVersion:(unint64_t)version;
- (unint64_t)transportErrorFlags;
- (void)activate;
- (void)addSidebandMessageNotificationHandler:(id)handler forDeviceIdentifier:(id)identifier;
- (void)boostDiscoveryForReason:(id)reason completion:(id)completion;
- (void)cancel;
- (void)currentDeviceList;
- (void)device:(id)device isNearby:(BOOL)nearby;
- (void)discardUserSelectedDeviceIfApplicableWithReason:(id)reason;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeSidebandMessageNotificationHandlerForDeviceIdentifier:(id)identifier;
- (void)setupProxyMonitoring;
- (void)setupRPRemoteDisplayDiscovery;
- (void)showIncompatibleDeviceNotificationIfApplicable;
- (void)updateState;
@end

@implementation CMContinuityCaptureDiscoverySession

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[CMContinuityCaptureDiscoverySession sharedInstance];
  }

  v3 = _discoverySession;

  return v3;
}

void *__53__CMContinuityCaptureDiscoverySession_sharedInstance__block_invoke()
{
  v0 = [CMContinuityCaptureDiscoverySession alloc];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.continuitycapture.discoverysession", v1);
  v3 = [(CMContinuityCaptureDiscoverySession *)v0 initWithQueue:?];
  v4 = _discoverySession;
  _discoverySession = v3;

  v5 = _discoverySession;

  return [v5 activate];
}

+ (void)invalidate
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  if (_discoverySession && ([_discoverySession invalidated] & 1) == 0)
  {
    dispatch_async(*(_discoverySession + 24), &__block_literal_global_10);
  }

  objc_sync_exit(obj);
}

- (unint64_t)transportErrorFlags
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  errorFlags = [(RPCompanionLinkClient *)selfCopy->_rpCompanionLinkClient errorFlags];
  objc_sync_exit(selfCopy);

  return errorFlags;
}

- (id)currentUserSelectedInSessionDeviceIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentUserSelectedInSessionDeviceIdentifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)rpRemoteDisplayDiscovery
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_rpRemoteDisplayDiscovery;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)discardUserSelectedDeviceIfApplicableWithReason:(id)reason
{
  obj = self;
  objc_sync_enter(obj);
  currentUserSelectedInSessionDeviceIdentifier = obj->_currentUserSelectedInSessionDeviceIdentifier;
  obj->_currentUserSelectedInSessionDeviceIdentifier = 0;

  currentUserSelectedInSessionDevice = obj->_currentUserSelectedInSessionDevice;
  obj->_currentUserSelectedInSessionDevice = 0;

  objc_sync_exit(obj);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:v5, self];

  return v6;
}

- (void)boostDiscoveryForReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  objc_initWeak(&location, self);
  rpCompanionLinkClient = self->_rpCompanionLinkClient;
  if (rpCompanionLinkClient)
  {
    v10 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v13, &location);
    v11 = reasonCopy;
    v12 = completionCopy;
    [(RPCompanionLinkClient *)rpCompanionLinkClient triggerEnhancedDiscoveryForReason:v10 useCase:3221225472 completion:__74__CMContinuityCaptureDiscoverySession_boostDiscoveryForReason_completion___block_invoke, &unk_278D5C548];

    objc_destroyWeak(&v13);
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    (*(completionCopy + 2))(completionCopy, v9);
  }

  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureDiscoverySession_boostDiscoveryForReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ triggerEnhancedDiscovery ForReason %@ Error %@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setupProxyMonitoring
{
  self->_proximityMonitor = [CMContinuityCaptureProximityMonitor initWithQueue:"initWithQueue:delegate:" delegate:?];

  MEMORY[0x2821F96F8]();
}

- (void)setupRPRemoteDisplayDiscovery
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277D441E0]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_rpRemoteDisplayDiscovery, v3);
  objc_sync_exit(selfCopy);

  [v3 setDispatchQueue:?];
  [v3 discoveryFlags];
  [v3 setDiscoveryFlags:?];
  v9[1] = MEMORY[0x277D85DD0];
  v9[2] = 3221225472;
  v9[3] = __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke;
  v9[4] = &unk_278D5C570;
  objc_copyWeak(&v10, &location);
  [v3 setDeviceFoundHandler:?];
  v8[1] = MEMORY[0x277D85DD0];
  v8[2] = 3221225472;
  v8[3] = __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_43;
  v8[4] = &unk_278D5C570;
  objc_copyWeak(v9, &location);
  [v3 setDeviceLostHandler:?];
  v7[1] = MEMORY[0x277D85DD0];
  v7[2] = 3221225472;
  v7[3] = __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_44;
  v7[4] = &unk_278D5C598;
  objc_copyWeak(v8, &location);
  [v3 setDeviceChangedHandler:?];
  v6[1] = MEMORY[0x277D85DD0];
  v6[2] = 3221225472;
  v6[3] = __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_46;
  v6[4] = &unk_278D5C570;
  objc_copyWeak(v7, &location);
  [v3 setDedicatedDeviceChangedHandler:?];
  v5[1] = MEMORY[0x277D85DD0];
  v5[2] = 3221225472;
  v5[3] = __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_47;
  v5[4] = &unk_278D5C570;
  objc_copyWeak(v6, &location);
  [v3 setDeviceSelectedHandler:?];
  objc_copyWeak(v5, &location);
  [v3 setDiscoverySessionStateChangedHandler:?];
  objc_destroyWeak(v5);
  objc_destroyWeak(v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(v9);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ New Device %{public}@ added", &v7, 0x16u);
    }

    [WeakRetained updateState];
  }
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Current Device %{public}@ lost", &v7, 0x16u);
    }

    [WeakRetained updateState];
  }
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_44(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained((a1 + 32));
      v9 = 138543874;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      v13 = 1024;
      v14 = a3;
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Device %{public}@ device state changed %x", &v9, 0x1Cu);
    }

    [WeakRetained updateState];
  }
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Dedicated Device changed %{public}@", &v7, 0x16u);
    }

    [WeakRetained updateState];
  }
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_47(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Device Selected %{public}@", &v7, 0x16u);
    }
  }
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_48(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  v7 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    *buf = 138543874;
    v23 = v8;
    v24 = 1024;
    v25 = a2;
    v26 = 2114;
    v27 = v5;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Session state changed to %d for device %{public}@", buf, 0x1Cu);
  }

  v9 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  v10 = [v9 activeSession];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  +[CMContinuityCaptureSessionStateManager sharedInstance];
  v12 = v21 = a2;
  v13 = [v12 activeSession];
  v14 = [v13 device];
  v15 = [v14 deviceIdentifier];
  v16 = [v15 UUIDString];
  v17 = [v16 isEqualToString:?];

  a2 = v21;
  if (v21 == 1 && (v17 & 1) == 0)
  {
    v9 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    [v9 stopCurrentSession:? syncOnOwnedQueue:?];
LABEL_8:
  }

  v18 = WeakRetained;
  objc_sync_enter(v18);
  if (a2 == 1)
  {
    v19 = v5;
  }

  else
  {
    v19 = 0;
  }

  objc_storeStrong(v18 + 14, v19);
  v20 = v18[15];
  v18[15] = 0;

  objc_sync_exit(v18);
  [v18 updateState];
LABEL_13:
}

- (void)addSidebandMessageNotificationHandler:(id)handler forDeviceIdentifier:(id)identifier
{
  handlerCopy = handler;
  identifierCopy = identifier;
  if (handlerCopy && identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = MEMORY[0x245D12020](handlerCopy);
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];

    objc_sync_exit(selfCopy);
  }
}

- (void)removeSidebandMessageNotificationHandlerForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_sidebandNotificationHandlersForIdentifier removeObjectForKey:?];
  objc_sync_exit(selfCopy);
}

- (BOOL)validateSessionInfoForEvent:(id)event
{
  eventCopy = event;
  v7 = [eventCopy objectForKeyedSubscript:?];
  v8 = [eventCopy objectForKeyedSubscript:?];
  v9 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    activeSession = [v10 activeSession];
    *buf = 138413058;
    selfCopy = self;
    v35 = 2114;
    v36 = activeSession;
    v37 = 2114;
    v38 = v7;
    v39 = 2114;
    v40 = v8;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ %{public}@ received shield sessionID %{public}@ originTime %{public}@", buf, 0x2Au);
  }

  selfCopy2 = self;

  v12 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  activeSession2 = [v12 activeSession];
  if (activeSession2)
  {
    v14 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    activeSession3 = [v14 activeSession];
    shieldSessionID = [activeSession3 shieldSessionID];
    if (!shieldSessionID)
    {

      v25 = 1;
LABEL_20:

      goto LABEL_21;
    }

    v4 = shieldSessionID;
    v30 = v14;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v31 = v8;
  v16 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  activeSession4 = [v16 activeSession];
  shieldSessionID2 = [activeSession4 shieldSessionID];
  if (!shieldSessionID2)
  {

    v8 = v31;
    if (activeSession2)
    {
LABEL_15:
    }

LABEL_16:

LABEL_17:
    v12 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = selfCopy2;
      v35 = 2112;
      v36 = eventCopy;
      _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%@ out of session event %@", buf, 0x16u);
    }

    v25 = 0;
    goto LABEL_20;
  }

  v19 = shieldSessionID2;
  v29 = eventCopy;
  v20 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  activeSession5 = [v20 activeSession];
  shieldSessionID3 = [activeSession5 shieldSessionID];
  v23 = v7;
  v24 = shieldSessionID3;
  v28 = v23;
  v27 = [shieldSessionID3 isEqualToString:?];

  if (activeSession2)
  {
  }

  v7 = v28;
  eventCopy = v29;
  v8 = v31;
  if ((v27 & 1) == 0)
  {
    goto LABEL_17;
  }

  v25 = 1;
LABEL_21:

  return v25;
}

- (BOOL)setupRPClient
{
  objc_initWeak(location, self);
  v3 = objc_alloc_init(MEMORY[0x277D44160]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke;
  v17[3] = &unk_278D5C080;
  objc_copyWeak(&v18, location);
  v4 = MEMORY[0x245D12020](v17);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_52;
  v15[3] = &unk_278D5C080;
  objc_copyWeak(&v16, location);
  v5 = MEMORY[0x245D12020](v15);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_53;
  v12[3] = &unk_278D5C0A8;
  objc_copyWeak(&v14, location);
  v6 = v3;
  v13 = v6;
  v7 = MEMORY[0x245D12020](v12);
  if (v6)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_rpCompanionLinkClient, v3);
    objc_sync_exit(selfCopy);

    [v6 setDispatchQueue:?];
    [v6 setInvalidationHandler:?];
    [v6 setInterruptionHandler:?];
    [v6 setErrorFlagsChangedHandler:?];
    v10 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v11, location);
    [v6 registerEventID:v10 options:3221225472 handler:{__52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_54, &unk_278D5C5E8, selfCopy}];
    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);
  return v6 != 0;
}

void __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%@ Client Invalidated", &v4, 0xCu);
  }
}

void __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_52(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%@ Rapport Client Interrupted", &v4, 0xCu);
  }
}

void __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_53(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [*(a1 + 32) errorFlags];
    v7 = 138412546;
    v8 = WeakRetained;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%@ Client ErrorChange, newError %llu", &v7, 0x16u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5)
  {
    [v5 updateState];
  }
}

void __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_loadWeakRetained((a1 + 40));
      *buf = 138412802;
      v96 = v9;
      v97 = 2112;
      v98 = v5;
      v99 = 2112;
      v100 = v6;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_INFO, "%@ Client Event %@ Option %@", buf, 0x20u);
    }

    v10 = [(__CFString *)v5 objectForKey:?];

    if (v10)
    {
      if (v6)
      {
        v11 = [(__CFString *)v6 objectForKeyedSubscript:?];
        if (v11)
        {
          v12 = [(__CFString *)v6 objectForKeyedSubscript:?];
        }

        else
        {
          v12 = 0;
        }

        v14 = [(__CFString *)v6 objectForKeyedSubscript:?];
        if (v14)
        {
          v13 = [(__CFString *)v6 objectForKeyedSubscript:?];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      v15 = [WeakRetained _deviceForIdentifier:?];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = [WeakRetained _deviceForIdentifier:?];
      }

      v18 = v17;

      v19 = [v18 deviceIdentifier];
      v20 = [v19 UUIDString];

      v94 = v20;
      if (!v20)
      {
        v21 = v12;
        if (v13)
        {
          if ([*(a1 + 32) _isSignedInDevice:?])
          {
            v21 = v12;
          }

          else
          {
            v21 = v13;
          }
        }

        v94 = v21;
      }

      v93 = v18;
      v22 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_loadWeakRetained((a1 + 40));
        *buf = 138413058;
        v96 = v23;
        v97 = 2112;
        v98 = v12;
        v99 = 2112;
        v100 = v13;
        v101 = 2112;
        v102 = v94;
        _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%@ idsID %@ spID %@ deviceIdentifier %@", buf, 0x2Au);
      }

      v24 = [(__CFString *)v5 objectForKeyedSubscript:?];
      if ([v24 integerValue] == 3)
      {
        v25 = [(__CFString *)v5 objectForKey:?];

        if (v25)
        {
          v26 = [(__CFString *)v5 objectForKeyedSubscript:?];
          v27 = [v26 isEqualToString:?];

          v28 = v93;
          if (!v27)
          {
            goto LABEL_84;
          }

          v29 = [(__CFString *)v5 objectForKeyedSubscript:?];

          if (v29)
          {
            v30 = [(__CFString *)v5 objectForKeyedSubscript:?];
          }

          else
          {
            v30 = @"Unknown";
          }

          v91 = v6;
          v50 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = objc_loadWeakRetained((a1 + 40));
            *buf = 138413058;
            v96 = v51;
            v97 = 2114;
            v98 = v12;
            v99 = 2112;
            v100 = v13;
            v101 = 2114;
            v102 = v30;
            _os_log_impl(&dword_242545000, v50, OS_LOG_TYPE_DEFAULT, "%@ User Disconnect for idsIdentifier: %{public}@ sessionPairingIdentifier: %@ reason: %{public}@", buf, 0x2Au);
          }

          v92 = v13;

          v52 = [WeakRetained validateSessionInfoForEvent:?];
          v53 = +[CMContinuityCaptureSessionStateManager sharedInstance];
          v54 = [v53 activeSession];

          if (v54)
          {
            v55 = [v54 device];
            v56 = [v55 deviceIdentifier];
            [v56 UUIDString];
            v58 = v57 = v30;
            v59 = [v58 isEqualToString:?];

            v30 = v57;
            if (v59)
            {
              v60 = +[CMContinuityCaptureSessionStateManager sharedInstance];
              [v60 stopCurrentSession:? syncOnOwnedQueue:?];
            }
          }

          v61 = (v93 != 0) & v52;
          v28 = v93;
          if (v61 == 1)
          {
            v62 = [WeakRetained queue];
            v113[0] = MEMORY[0x277D85DD0];
            v113[1] = 3221225472;
            v113[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_58;
            v113[3] = &unk_278D5C0D0;
            v114 = v93;
            dispatch_async(v62, v113);
          }

          v6 = v91;
          goto LABEL_83;
        }
      }

      else
      {
      }

      v90 = v6;
      v92 = v13;
      v31 = v12;
      v32 = [(__CFString *)v5 objectForKeyedSubscript:?];
      if ([v32 integerValue] == 6 && (-[__CFString objectForKey:](v5, "objectForKey:"), (v33 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v34 = v33;
        v35 = [(__CFString *)v5 objectForKeyedSubscript:?];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v30 = [(__CFString *)v5 objectForKeyedSubscript:?];
          v37 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = objc_loadWeakRetained((a1 + 40));
            *buf = 138412546;
            v96 = v38;
            v97 = 2114;
            v98 = v94;
            _os_log_impl(&dword_242545000, v37, OS_LOG_TYPE_DEFAULT, "%@ Received camera capabilities for %{public}@", buf, 0x16u);
          }

          v12 = v31;
          if (v94)
          {
            v39 = [WeakRetained[2] objectForKey:?];

            v6 = v90;
            v28 = v93;
            if (v39)
            {
              v40 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = objc_loadWeakRetained((a1 + 40));
                *buf = 138412290;
                v96 = v41;
                _os_log_impl(&dword_242545000, v40, OS_LOG_TYPE_DEFAULT, "%@ update device state with new set of capabilities", buf, 0xCu);
              }

              [WeakRetained[2] setObject:? forKeyedSubscript:?];
              v42 = [WeakRetained queue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_59;
              block[3] = &unk_278D5C080;
              objc_copyWeak(&v112, (a1 + 40));
              dispatch_async(v42, block);

              objc_destroyWeak(&v112);
            }

            goto LABEL_83;
          }

          v6 = v90;
LABEL_82:
          v28 = v93;
LABEL_83:

          v13 = v92;
LABEL_84:
          v82 = WeakRetained;
          objc_sync_enter(v82);
          if (v94)
          {
            v83 = [v82[18] objectForKey:?];

            if (v83)
            {
              v84 = [v82[18] objectForKeyedSubscript:?];
              (v84)[2](v84, v94, v5);
            }
          }

          objc_sync_exit(v82);

          goto LABEL_88;
        }
      }

      else
      {
      }

      v43 = [(__CFString *)v5 objectForKeyedSubscript:?];
      v44 = [v43 integerValue];

      if (v44 == 4)
      {
        v45 = CMContinuityCaptureLog(0);
        v12 = v31;
        v28 = v93;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v96 = WeakRetained;
          v97 = 2114;
          v98 = v94;
          _os_log_impl(&dword_242545000, v45, OS_LOG_TYPE_DEFAULT, "%@ Received skip placement step for %{public}@", buf, 0x16u);
        }

        v6 = v90;
        v13 = v92;
        if (!v93)
        {
          goto LABEL_84;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![WeakRetained validateSessionInfoForEvent:?])
        {
          goto LABEL_84;
        }

        v46 = [v93 queue];
        v109[0] = MEMORY[0x277D85DD0];
        v109[1] = 3221225472;
        v109[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_61;
        v109[3] = &unk_278D5C0D0;
        v110 = v93;
        dispatch_async(v46, v109);

        v30 = v110;
        goto LABEL_83;
      }

      v47 = [(__CFString *)v5 objectForKeyedSubscript:?];
      v48 = [v47 integerValue];

      v12 = v31;
      v6 = v90;
      v13 = v92;
      v28 = v93;
      if (v48 != 2)
      {
        goto LABEL_84;
      }

      v30 = [(__CFString *)v5 objectForKeyedSubscript:?];
      v49 = [(__CFString *)v5 objectForKeyedSubscript:?];
      v87 = v49;
      if (v49)
      {
        v89 = CMContinuityCaptureGetDateFromTimeString(v49);
      }

      else
      {
        v89 = 0;
      }

      v63 = [(__CFString *)v90 objectForKeyedSubscript:?];
      if (v63)
      {
      }

      else
      {
        v64 = [(__CFString *)v5 objectForKeyedSubscript:?];

        if (!v64)
        {
          +[CMContinuityCaptureSessionStateManager sharedInstance];
          goto LABEL_69;
        }
      }

      v65 = [(__CFString *)v90 objectForKeyedSubscript:?];
      if (v65)
      {
        v66 = v90;
      }

      else
      {
        v66 = v5;
      }

      v67 = [(__CFString *)v66 objectForKeyedSubscript:?];
      v85 = CMContinuityCaptureDeviceModelFromModelString(v67);

      +[CMContinuityCaptureSessionStateManager sharedInstance];
      v68 = LABEL_69:;
      v69 = [v68 activeSession];
      v88 = [v69 shieldSessionID];

      v70 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v71 = [v70 activeSession];
      v72 = [v71 shieldSessionIDGeneratedTime];

      v73 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413826;
        v96 = WeakRetained;
        v97 = 2114;
        v98 = v94;
        v99 = 2114;
        v100 = v30;
        v101 = 2114;
        v102 = v89;
        v103 = 1024;
        v104 = v86;
        v105 = 2114;
        v106 = v88;
        v107 = 2114;
        v108 = v72;
        _os_log_impl(&dword_242545000, v73, OS_LOG_TYPE_DEFAULT, "%@ Received shield launched event for %{public}@ shieldID %{public}@ generatedTime %{public}@ deviceModel %d. activeSession shieldID %{public}@ generatedTime %{public}@", buf, 0x44u);
      }

      v74 = 0;
      if (v72 && v89)
      {
        v74 = [v72 compare:?] == 1;
      }

      v75 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v76 = [v75 activeSession];
      if (v76 && v30 && !v74)
      {
        v77 = [v88 isEqualToString:?];

        if (v77)
        {
LABEL_80:

          goto LABEL_82;
        }

        v78 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v79 = [v78 activeSession];
        [v79 setShieldSessionID:?];

        v80 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v81 = [v80 activeSession];
        [v81 setShieldSessionIDGeneratedTime:?];

        v75 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v76 = [v75 activeSession];
        [v76 setDeviceModel:?];
      }

      goto LABEL_80;
    }
  }

LABEL_88:
}

void __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_59(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateState];
    WeakRetained = v2;
  }
}

- (NSArray)availableClientDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  availableClientDeviceByIdentifiers = selfCopy->_availableClientDeviceByIdentifiers;
  if (availableClientDeviceByIdentifiers)
  {
    allValues = [(NSDictionary *)availableClientDeviceByIdentifiers allValues];
  }

  else
  {
    allValues = 0;
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (BOOL)_isSignedInDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy objectForKeyedSubscript:?];
  if (v4)
  {
    v5 = [deviceCopy objectForKeyedSubscript:?];
    v6 = ([v5 unsignedIntValue] >> 19) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_deviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSDictionary *)selfCopy->_availableClientDeviceByIdentifiers objectForKey:?];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)device:(id)device isNearby:(BOOL)nearby
{
  nearbyCopy = nearby;
  deviceCopy = device;
  v7 = [(CMContinuityCaptureDiscoverySession *)self _deviceForIdentifier:?];
  queue = [(CMContinuityCaptureDiscoverySession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!v7 || [v7 nearby] != nearbyCopy)
  {
    v9 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "LEFT";
      v11 = 138412802;
      selfCopy = self;
      if (nearbyCopy)
      {
        v10 = "ENTERED";
      }

      v13 = 2114;
      v14 = deviceCopy;
      v15 = 2082;
      v16 = v10;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ device %{public}@ %{public}s nearby range", &v11, 0x20u);
    }

    [(CMContinuityCaptureDiscoverySession *)self updateState];
  }
}

- (void)activate
{
  objc_initWeak(&location, self);
  v3 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureDiscoverySession activate]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__CMContinuityCaptureDiscoverySession_activate__block_invoke;
  v5[3] = &unk_278D5C0A8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__CMContinuityCaptureDiscoverySession_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[32] == 1)
    {
      [MEMORY[0x277CBEAD8] raise:*(a1 + 32) format:?];
    }

    v3[32] = 1;
    v4 = *(v3 + 5);
    objc_copyWeak(&v6, (a1 + 40));
    [v4 activateWithCompletion:?];
    v5 = +[CMContinuityCaptureUserOnboarding sharedInstance];
    [v5 addObserver:? forKeyPath:? options:? context:?];

    objc_destroyWeak(&v6);
  }
}

void __47__CMContinuityCaptureDiscoverySession_activate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v3 && [v3 code])
    {
      v5 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_loadWeakRetained((a1 + 32));
        *buf = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ RPClient ActivateWithCompletion error %@", buf, 0x16u);
      }
    }

    else
    {
      v7 = [WeakRetained rpRemoteDisplayDiscovery];
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __47__CMContinuityCaptureDiscoverySession_activate__block_invoke_69;
      v11 = &unk_278D5C1E8;
      objc_copyWeak(&v12, (a1 + 32));
      [v7 activateWithCompletion:?];

      objc_destroyWeak(&v12);
    }
  }
}

void __47__CMContinuityCaptureDiscoverySession_activate__block_invoke_69(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ RPRemoteDisplayDiscovery ActivateWithCompletion error %@", &v8, 0x16u);
    }

    v7 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    [v7 stopCurrentSession:? syncOnOwnedQueue:?];

    [WeakRetained updateState];
  }
}

- (void)cancel
{
  objc_initWeak(&location, self);
  v3 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureDiscoverySession cancel]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__CMContinuityCaptureDiscoverySession_cancel__block_invoke;
  v5[3] = &unk_278D5C0A8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __45__CMContinuityCaptureDiscoverySession_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    if ((WeakRetained[32] & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*(a1 + 32) format:?];
      WeakRetained = v10;
    }

    WeakRetained[32] = 0;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = v3[5];
    if (v4)
    {
      [v4 invalidate];
      v5 = v3[5];
      v3[5] = 0;
    }

    objc_sync_exit(v3);

    v6 = v3;
    objc_sync_enter(v6);
    v7 = v6[6];
    if (v7)
    {
      [v7 invalidate];
      v8 = v6[6];
      v6[6] = 0;
    }

    objc_sync_exit(v6);

    v9 = +[CMContinuityCaptureUserOnboarding sharedInstance];
    [v9 removeObserver:? forKeyPath:? context:?];

    *(v6 + 104) = 1;
    WeakRetained = v10;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v51 = 2080;
    v52 = "[CMContinuityCaptureDiscoverySession observeValueForKeyPath:ofObject:change:context:]";
    v53 = 2114;
    v54 = pathCopy;
    v55 = 2114;
    v56 = objectCopy;
    _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@ %{public}@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  if (![pathCopy isEqualToString:?])
  {
    if ([pathCopy isEqualToString:?])
    {
      v19 = [changeCopy objectForKeyedSubscript:?];
      if ([v19 BOOLValue])
      {
        v20 = [changeCopy objectForKeyedSubscript:?];
        bOOLValue = [v20 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          queue = self->_queue;
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
          v44[3] = &unk_278D5C0A8;
          objc_copyWeak(&v46, buf);
          v23 = objectCopy;
          v45 = v23;
          dispatch_async(queue, v44);
          deviceModel = [v23 deviceModel];
          v25 = continuityCaptureNotificationCenter_isiPhone(deviceModel);

          v38 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
          v26 = @"DISCONNECT_NOTIFICATION_TITLE_IPAD";
          if (v25)
          {
            v26 = @"DISCONNECT_NOTIFICATION_TITLE_IPHONE";
          }

          v40[8] = v26;
          v40[2] = @"kContinuityCaptureNotificationKeyTitle";
          v40[3] = @"kContinuityCaptureNotificationKeyTitleArgs";
          deviceName = [v23 deviceName];
          v40[1] = deviceName;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
          v29 = v28;
          v30 = @"DISCONNECT_NOTIFICATION_BODY_IPAD";
          if (v25)
          {
            v30 = @"DISCONNECT_NOTIFICATION_BODY_IPHONE";
          }

          v40[9] = v28;
          v40[10] = v30;
          v40[4] = @"kContinuityCaptureNotificationKeyBody";
          v40[5] = @"kContinuityCaptureNotificationKeyIdentifier";
          v31 = MEMORY[0x277CCACA8];
          deviceIdentifier = [v23 deviceIdentifier];
          uUIDString = [deviceIdentifier UUIDString];
          v41 = [v31 stringWithFormat:@"CMContinuityCaptureDisconnectNotification", uUIDString];
          v42 = MEMORY[0x277CBEC38];
          v40[6] = @"kContinuityCaptureNotificationKeyOneTime";
          v40[7] = @"kContinuityCaptureNotificationKeyDeviceModel";
          deviceModel2 = [v23 deviceModel];
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
          [v38 scheduleNotification:? data:?];

          v18 = &v46;
          goto LABEL_7;
        }
      }

      else
      {
      }
    }

    if (![pathCopy isEqualToString:?])
    {
      goto LABEL_22;
    }

    v35 = [changeCopy objectForKeyedSubscript:?];
    if ([v35 BOOLValue])
    {

      goto LABEL_22;
    }

    v36 = [changeCopy objectForKeyedSubscript:?];
    bOOLValue2 = [v36 BOOLValue];

    if (!bOOLValue2)
    {
      goto LABEL_22;
    }

    v15 = self->_queue;
    v16 = v39;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
    v39[3] = &unk_278D5C080;
    objc_copyWeak(v40, buf);
    v17 = v39;
LABEL_6:
    dispatch_async(v15, v17);
    v18 = (v16 + 4);
LABEL_7:
    objc_destroyWeak(v18);
    goto LABEL_22;
  }

  v13 = [changeCopy objectForKeyedSubscript:?];
  integerValue = [v13 integerValue];

  if (integerValue == 1)
  {
    v15 = self->_queue;
    v16 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_278D5C080;
    objc_copyWeak(&v48, buf);
    v17 = block;
    goto LABEL_6;
  }

LABEL_22:
  objc_destroyWeak(buf);
}

void __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained showIncompatibleDeviceNotificationIfApplicable];
    WeakRetained = v2;
  }
}

void __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v3 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v4 = [v3 activeSession];
    if (v4)
    {
      v5 = v4;
      v6 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v7 = [v6 activeSession];
      v8 = [v7 device];
      v9 = [v8 deviceIdentifier];
      v10 = [v9 UUIDString];
      v11 = [*(a1 + 32) deviceIdentifier];
      v12 = [v11 UUIDString];
      v13 = [v10 isEqualToString:?];

      if (!v13)
      {
LABEL_6:
        [v14 updateState];
        WeakRetained = v14;
        goto LABEL_7;
      }

      v3 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      [v3 stopCurrentSession:? syncOnOwnedQueue:?];
    }

    goto LABEL_6;
  }

LABEL_7:
}

void __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateState];
    WeakRetained = v2;
  }
}

+ (id)rapportDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  idsDeviceIdentifier = [identifierCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier && ([identifierCopy idsDeviceIdentifier], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
  {
    idsDeviceIdentifier2 = [identifierCopy idsDeviceIdentifier];
  }

  else
  {
    idsDeviceIdentifier2 = [identifierCopy identifier];
    if (!idsDeviceIdentifier)
    {
      goto LABEL_6;
    }
  }

LABEL_6:

  return idsDeviceIdentifier2;
}

- (id)currentDeviceList
{
  CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
  rpRemoteDisplayDiscovery = [(CMContinuityCaptureDiscoverySession *)self rpRemoteDisplayDiscovery];
  discoveredDevices = rpRemoteDisplayDiscovery;
  if (CFPreferenceBooleanWithDefault)
  {
    currentState = [rpRemoteDisplayDiscovery currentState];

    if (currentState)
    {
      currentUserSelectedInSessionDeviceIdentifier = [(CMContinuityCaptureDiscoverySession *)self currentUserSelectedInSessionDeviceIdentifier];
      if (currentUserSelectedInSessionDeviceIdentifier && (v8 = currentUserSelectedInSessionDeviceIdentifier, -[CMContinuityCaptureDiscoverySession currentUserSelectedInSessionDeviceIdentifier](self, "currentUserSelectedInSessionDeviceIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), -[CMContinuityCaptureDiscoverySession rpRemoteDisplayDiscovery](self, "rpRemoteDisplayDiscovery"), v10 = objc_claimAutoreleasedReturnValue(), [v10 peerDeviceIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "isEqualToString:"), v11, v10, v9, v8, (v12 & 1) != 0))
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        rpRemoteDisplayDiscovery2 = [(CMContinuityCaptureDiscoverySession *)self rpRemoteDisplayDiscovery];
        discoveredDevices = [rpRemoteDisplayDiscovery2 discoveredDevices];

        v14 = [discoveredDevices countByEnumeratingWithState:? objects:? count:?];
        if (v14)
        {
          v15 = v14;
          v16 = *v34;
          while (2)
          {
            for (i = 0; i != v15; i = (i + 1))
            {
              if (*v34 != v16)
              {
                objc_enumerationMutation(discoveredDevices);
              }

              v18 = *(*(&v33 + 1) + 8 * i);
              identifier = [v18 identifier];
              rpRemoteDisplayDiscovery3 = [(CMContinuityCaptureDiscoverySession *)self rpRemoteDisplayDiscovery];
              peerDeviceIdentifier = [rpRemoteDisplayDiscovery3 peerDeviceIdentifier];
              v22 = [identifier isEqualToString:?];

              if (v22)
              {
                v27 = CMContinuityCaptureLog(0);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  selfCopy = self;
                  v31 = 2114;
                  v32 = v18;
                  _os_log_impl(&dword_242545000, v27, OS_LOG_TYPE_DEFAULT, "%@ found selected device %{public}@", buf, 0x16u);
                }

                selfCopy2 = self;
                objc_sync_enter(selfCopy2);
                objc_storeStrong(&selfCopy2->_currentUserSelectedInSessionDevice, v18);
                objc_sync_exit(selfCopy2);

                discoveredDevices2 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
                goto LABEL_16;
              }
            }

            v15 = [discoveredDevices countByEnumeratingWithState:? objects:? count:?];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v23 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(CMContinuityCaptureDiscoverySession *)self currentDeviceList];
        }
      }

      else
      {
        v23 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(CMContinuityCaptureDiscoverySession *)self currentDeviceList];
        }
      }
    }

    else
    {
      v23 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(CMContinuityCaptureDiscoverySession *)self currentDeviceList];
      }
    }

    v25 = 0;
  }

  else
  {
    discoveredDevices2 = [rpRemoteDisplayDiscovery discoveredDevices];
LABEL_16:
    v25 = discoveredDevices2;
  }

  return v25;
}

- (id)discoveredLocalDevices
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (discoveredLocalDevices_onceToken != -1)
  {
    [CMContinuityCaptureDiscoverySession discoveredLocalDevices];
  }

  if (discoveredLocalDevices_localDevice)
  {
    uUIDString = [discoveredLocalDevices_identifier UUIDString];
    [v2 setObject:? forKeyedSubscript:?];
  }

  return v2;
}

void __61__CMContinuityCaptureDiscoverySession_discoveredLocalDevices__block_invoke()
{
  v0 = objc_opt_new();
  v1 = discoveredLocalDevices_identifier;
  discoveredLocalDevices_identifier = v0;

  v2 = [MEMORY[0x277CE5AC8] continuityCaptureCameraCapabilities];
  if (v2)
  {
    v6 = v2;
    v3 = [[CMContinuityCaptureCapabilities alloc] initWithDictionaryRepresentation:?];
    v4 = [CMContinuityCaptureTransportNWDevice initWithCapabilities:"initWithCapabilities:identifier:remote:" identifier:? remote:?];
    v5 = discoveredLocalDevices_localDevice;
    discoveredLocalDevices_localDevice = v4;

    v2 = v6;
  }
}

- (id)discoveredRapportDevices
{
  dispatch_assert_queue_V2(self->_queue);
  currentDeviceList = [(CMContinuityCaptureDiscoverySession *)self currentDeviceList];
  v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v116 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v114 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy11 = self;
    v121 = 2114;
    v122 = currentDeviceList;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@ RapportDevices : %{public}@", buf, 0x16u);
  }

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v5 = currentDeviceList;
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = *v154;
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (*v154 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v153 + 1) + 8 * i);
        v11 = MEMORY[0x277CCABB0];
        if (v10)
        {
          [v152 operatingSystemVersion];
        }

        else
        {
          memset(v152, 0, sizeof(v152));
        }

        v12 = [v11 numberWithInteger:?];
        idsDeviceIdentifier = [v10 idsDeviceIdentifier];
        [v116 setObject:? forKeyedSubscript:?];

        v14 = MEMORY[0x277CCABB0];
        if (v10)
        {
          [v151 operatingSystemVersion];
        }

        else
        {
          memset(v151, 0, sizeof(v151));
        }

        v15 = [v14 numberWithInteger:?];
        idsDeviceIdentifier2 = [v10 idsDeviceIdentifier];
        [v114 setObject:? forKeyedSubscript:?];
      }

      v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  obj = v5;
  v17 = v116;
  v110 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v110)
  {
    v105 = *v148;
    do
    {
      for (j = 0; j != v110; j = (j + 1))
      {
        if (*v148 != v105)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v147 + 1) + 8 * j);
        v20 = [CMContinuityCaptureDiscoverySession rapportDeviceIdentifier:?];
        name = [v19 name];
        statusFlags = [v19 statusFlags];
        statusFlags2 = [v19 statusFlags];
        cameraState = [v19 cameraState];
        model = [v19 model];
        v26 = model;
        if (v20)
        {
          v115 = model;
          v113 = name;
          v27 = [v17 objectForKey:?];

          v28 = v17;
          if (!v27)
          {
            v29 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy11 = self;
              v121 = 2114;
              v122 = v20;
              _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%@ (%{public}@) Missing device from rp display device list", buf, 0x16u);
            }

            v28 = v116;
          }

          v111 = v19;
          v30 = statusFlags & 0x1000000;
          v106 = statusFlags2 & 0x200;
          rpRemoteDisplayDiscovery = [(CMContinuityCaptureDiscoverySession *)self rpRemoteDisplayDiscovery];
          dedicatedDevice = [rpRemoteDisplayDiscovery dedicatedDevice];
          idsDeviceIdentifier3 = [dedicatedDevice idsDeviceIdentifier];
          v101 = [idsDeviceIdentifier3 isEqual:?];

          v34 = [(CMContinuityCaptureProximityMonitor *)self->_proximityMonitor isDeviceNearby:?];
          v35 = [v28 objectForKeyedSubscript:?];
          unsignedLongValue = [v35 unsignedLongValue];

          v37 = [v114 objectForKeyedSubscript:?];
          unsignedLongValue2 = [v37 unsignedLongValue];

          v38 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            cameraCapabilities = [v111 cameraCapabilities];
            statusFlags3 = [v111 statusFlags];
            *buf = 138415618;
            selfCopy11 = self;
            v121 = 2114;
            v122 = v20;
            v123 = 2114;
            v124 = v113;
            v125 = 2114;
            v126 = v115;
            v127 = 1024;
            v128 = v30 >> 24;
            v129 = 1024;
            v130 = v106 >> 9;
            v131 = 1024;
            v132 = cameraState == 1;
            v133 = 1024;
            v134 = v34;
            v135 = 1024;
            v136 = cameraCapabilities != 0;
            v137 = 2048;
            v138 = unsignedLongValue;
            v139 = 2048;
            v140 = unsignedLongValue2;
            v141 = 2048;
            v142 = v111;
            v143 = 2048;
            v144 = statusFlags3;
            v145 = 1024;
            v146 = v101;
            _os_log_impl(&dword_242545000, v38, OS_LOG_TYPE_DEFAULT, "%@ Client Device Identifier:%{public}@ Name:%{public}@ Model:%{public}@ Wired:%d Wireless:%d Magic:%d Nearby:%d Capabilities:%d Version:%llu.%llu devicePtr:%p status:%lx isDedicated:%d", buf, 0x76u);
          }

          v26 = v115;
          if (GestaltProductTypeStringToDeviceClass() == 11)
          {
            [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers removeObjectForKey:?];
            v17 = v116;
            name = v113;
            goto LABEL_96;
          }

          v41 = [CMContinuityCaptureDiscoverySession validateCapabilitiesAndCacheIncompatibleNotificationIfApplicable:"validateCapabilitiesAndCacheIncompatibleNotificationIfApplicable:majorVersion:" majorVersion:?];
          v42 = [(CMContinuityCaptureDiscoverySession *)self _deviceForIdentifier:?];
          if (v42)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (v41)
              {
                [v42 setCapabilities:?];
                goto LABEL_38;
              }
            }
          }

          if (v41)
          {
LABEL_38:
            [v117 capabilitiesVersion];
            if (v118 <= 300)
            {
              v43 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy11 = self;
                v121 = 2114;
                v122 = v20;
                v44 = v43;
                v45 = "%@ Support with sidecar for %{public}@";
                goto LABEL_44;
              }

              goto LABEL_45;
            }

            if ([v41 userDisabled])
            {
              v43 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy11 = self;
                v121 = 2114;
                v122 = v20;
                v44 = v43;
                v45 = "%@ skip %{public}@ device since it's disabled by user";
LABEL_44:
                _os_log_impl(&dword_242545000, v44, OS_LOG_TYPE_DEFAULT, v45, buf, 0x16u);
              }

LABEL_45:

              [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers removeObjectForKey:?];
              name = v113;
LABEL_95:

              v17 = v116;
              goto LABEL_96;
            }

            v46 = 1;
            if (!v30)
            {
LABEL_49:
              if (([(RPCompanionLinkClient *)self->_rpCompanionLinkClient errorFlags]& 4) != 0 || !v106)
              {
                v47 = CMContinuityCaptureLog(0);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  selfCopy11 = self;
                  v121 = 2114;
                  v122 = v20;
                  _os_log_impl(&dword_242545000, v47, OS_LOG_TYPE_DEFAULT, "%@ (%{public}@) RPError : USB inactive and WifiOff", buf, 0x16u);
                }

                if (!v106)
                {
                  v48 = CMContinuityCaptureLog(0);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    selfCopy11 = self;
                    v121 = 2114;
                    v122 = v20;
                    v49 = v48;
                    v50 = "%@ (%{public}@) non wired with wifip2p2 disabled";
                    goto LABEL_84;
                  }

                  goto LABEL_85;
                }
              }
            }
          }

          else
          {
            v46 = 0;
            if (!v30)
            {
              goto LABEL_49;
            }
          }

          v51 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
          [v51 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];

          if (v42)
          {
            v107 = v46;
            objc_opt_class();
            v26 = v115;
            if (objc_opt_isKindOfClass())
            {
              v102 = v41;
              v52 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                selfCopy11 = self;
                v121 = 2114;
                v122 = v42;
                v123 = 2114;
                v124 = v113;
                _os_log_impl(&dword_242545000, v52, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ name %{public}@ present", buf, 0x20u);
              }

              v53 = +[CMContinuityCaptureSessionStateManager sharedInstance];
              activeSession = [v53 activeSession];
              if (activeSession)
              {
                v97 = activeSession;
                v55 = +[CMContinuityCaptureSessionStateManager sharedInstance];
                activeSession2 = [v55 activeSession];
                [activeSession2 device];
                v57 = v93 = v53;
                deviceIdentifier = [v57 deviceIdentifier];
                uUIDString = [deviceIdentifier UUIDString];
                v92 = [uUIDString isEqualToString:?];

                v41 = v102;
                if (v92)
                {
                  v60 = +[CMContinuityCaptureSessionStateManager sharedInstance];
                  activeSession3 = [v60 activeSession];
                  [activeSession3 setTransport:?];

                  v53 = v60;
                  goto LABEL_76;
                }
              }

              else
              {
                v41 = v102;
LABEL_76:
              }

              device = [v42 device];
              v75 = [v111 isEqual:?];

              if ((v75 & 1) == 0)
              {
                [v42 resetDevice:?];
              }

              [v95 setObject:? forKeyedSubscript:?];
              v76 = [v95 objectForKeyedSubscript:?];
              [v76 setNearby:?];

              v77 = [v95 objectForKeyedSubscript:?];
              [v77 setDeviceMajorVersion:?];

              v78 = [v95 objectForKeyedSubscript:?];
              [v78 setDeviceMinorVersion:?];

              v79 = [v95 objectForKeyedSubscript:?];
              [v79 notifyDeviceStateChange];

              v26 = v115;
            }

            name = v113;
            if (!v107)
            {
              goto LABEL_95;
            }

LABEL_94:
            [(CMContinuityCaptureProximityMonitor *)self->_proximityMonitor beginTracking:?];
            goto LABEL_95;
          }

          v26 = v115;
          if (!v46)
          {
            v73 = [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers objectForKey:?];

            name = v113;
            if (!v73)
            {
              [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
              [CMContinuityCaptureTransportRapportDevice queryCameraCapabilitiesFromRemoteDevice:"queryCameraCapabilitiesFromRemoteDevice:transport:" transport:?];
            }

            goto LABEL_95;
          }

          v62 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413314;
            selfCopy11 = self;
            v121 = 2114;
            v122 = v20;
            v123 = 2114;
            v124 = v113;
            v125 = 2048;
            v126 = v41;
            v127 = 1024;
            v128 = v101;
            _os_log_impl(&dword_242545000, v62, OS_LOG_TYPE_DEFAULT, "%@ New rapport client device %{public}@ name %{public}@ capabilities %p isDedicated: %d", buf, 0x30u);
          }

          v63 = [CMContinuityCaptureTransportRapportDevice initWithRapportDevice:"initWithRapportDevice:capabilities:remote:" capabilities:? remote:?];
          v64 = v63;
          if (v101)
          {
            [(CMContinuityCaptureTransportRapportDevice *)v63 setPlacementStepSkipped:?];
          }

          if (!v64)
          {
            v48 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy11 = self;
              v121 = 2114;
              v122 = v20;
              v49 = v48;
              v50 = "%@ Failed to create for device %{public}@";
LABEL_84:
              _os_log_impl(&dword_242545000, v49, OS_LOG_TYPE_DEFAULT, v50, buf, 0x16u);
            }

LABEL_85:

            [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers removeObjectForKey:?];
            name = v113;
            v26 = v115;
            goto LABEL_95;
          }

          v103 = v41;
          v65 = +[CMContinuityCaptureSessionStateManager sharedInstance];
          activeSession4 = [v65 activeSession];
          v112 = v64;
          if (activeSession4)
          {
            v108 = activeSession4;
            v67 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            activeSession5 = [v67 activeSession];
            device2 = [activeSession5 device];
            deviceIdentifier2 = [device2 deviceIdentifier];
            uUIDString2 = [deviceIdentifier2 UUIDString];
            if ([uUIDString2 isEqualToString:?])
            {
              v90 = +[CMContinuityCaptureSessionStateManager sharedInstance];
              activeSession6 = [v90 activeSession];
              device3 = [activeSession6 device];
              v91 = [device3 isEqual:?];

              v26 = v115;
              if ((v91 & 1) == 0)
              {
                v65 = +[CMContinuityCaptureSessionStateManager sharedInstance];
                activeSession7 = [v65 activeSession];
                [activeSession7 setDevice:?];
                goto LABEL_87;
              }

LABEL_89:
              v80 = +[CMContinuityCaptureSessionStateManager sharedInstance];
              activeSession8 = [v80 activeSession];
              if (activeSession8)
              {
                v109 = activeSession8;
                v82 = +[CMContinuityCaptureSessionStateManager sharedInstance];
                activeSession9 = [v82 activeSession];
                device4 = [activeSession9 device];
                deviceIdentifier3 = [device4 deviceIdentifier];
                uUIDString3 = [deviceIdentifier3 UUIDString];
                v99 = [uUIDString3 isEqualToString:?];

                v26 = v115;
                if (v99)
                {
                  v80 = +[CMContinuityCaptureSessionStateManager sharedInstance];
                  activeSession10 = [v80 activeSession];
                  [activeSession10 setTransport:?];

                  v26 = v115;
                  goto LABEL_92;
                }
              }

              else
              {
LABEL_92:
              }

              [(CMContinuityCaptureTransportRapportDevice *)v112 setDeviceMajorVersion:?];
              [(CMContinuityCaptureTransportRapportDevice *)v112 setDeviceMinorVersion:?];
              [(CMContinuityCaptureTransportRapportDevice *)v112 setNearby:?];
              [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers removeObjectForKey:?];
              [v95 setObject:? forKeyedSubscript:?];
              v88 = [v95 objectForKeyedSubscript:?];
              [v88 notifyDeviceStateChange];

              name = v113;
              v41 = v103;
              goto LABEL_94;
            }

            activeSession7 = v108;
LABEL_87:
          }

          goto LABEL_89;
        }

        v40 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy11 = self;
          _os_log_impl(&dword_242545000, v40, OS_LOG_TYPE_DEFAULT, "%@ Missing device identifier", buf, 0xCu);
        }

LABEL_96:
      }

      v110 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v110);
  }

  return v95;
}

- (id)validateCapabilitiesAndCacheIncompatibleNotificationIfApplicable:(id)applicable majorVersion:(unint64_t)version
{
  applicableCopy = applicable;
  v6 = [CMContinuityCaptureDiscoverySession rapportDeviceIdentifier:?];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_21;
  }

  cameraCapabilities = [applicableCopy cameraCapabilities];

  if (cameraCapabilities)
  {
    v8 = [CMContinuityCaptureCapabilities alloc];
    cameraCapabilities2 = [applicableCopy cameraCapabilities];
    v10 = [(CMContinuityCaptureCapabilities *)v8 initWithDictionaryRepresentation:?];

    if (v10)
    {
      [(NSMutableSet *)self->_incompatibleDeviceByNotificationData removeAllObjects];
      goto LABEL_10;
    }
  }

  v11 = [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers objectForKey:?];
  if (!v11 || (v12 = v11, -[NSMutableDictionary objectForKeyedSubscript:](self->_availableCapabilitiesByIdentifiers, "objectForKeyedSubscript:"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 count], v13, v12, !v14))
  {
    [(NSMutableSet *)self->_incompatibleDeviceByNotificationData removeAllObjects];
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v15 = [CMContinuityCaptureCapabilities alloc];
  v16 = [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers objectForKeyedSubscript:?];
  v10 = [(CMContinuityCaptureCapabilities *)v15 initWithDictionaryRepresentation:?];

  v17 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    selfCopy2 = self;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_242545000, v17, OS_LOG_TYPE_DEFAULT, "%@ Use queried capabilities for %{public}@", &v24, 0x16u);
  }

  [(NSMutableSet *)self->_incompatibleDeviceByNotificationData removeAllObjects];
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_10:
  devicesCapabilities = [(CMContinuityCaptureCapabilities *)v10 devicesCapabilities];
  if (![devicesCapabilities count])
  {
    userDisabled = [(CMContinuityCaptureCapabilities *)v10 userDisabled];

    if (userDisabled)
    {
      goto LABEL_19;
    }

    v19 = v10;
LABEL_15:
    v20 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412802;
      selfCopy2 = self;
      v26 = 2114;
      v27 = v6;
      v28 = 2114;
      v29 = v19;
      _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%@ skip %{public}@ device since it's missing camera capabilities %{public}@", &v24, 0x20u);
    }

    v10 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v22 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v22 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];

  v19 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v19 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];
LABEL_20:

LABEL_21:

  return v10;
}

- (id)discoveredCompatibleDevices:(id)devices rapportDevices:(id)rapportDevices
{
  devicesCopy = devices;
  rapportDevicesCopy = rapportDevices;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc(MEMORY[0x277CBEB58]);
  v9 = devicesCopy;
  allKeys = [devicesCopy allKeys];
  v11 = [v8 initWithArray:?];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  allKeys2 = [rapportDevicesCopy allKeys];
  v13 = [allKeys2 countByEnumeratingWithState:? objects:? count:?];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; i = (i + 1))
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(allKeys2);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy2 = self;
          v32 = 2114;
          v33 = v17;
          _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%@ Support with rapport for %{public}@", buf, 0x16u);
        }

        [v11 removeObject:?];
        v19 = [rapportDevicesCopy objectForKeyedSubscript:?];
        [v7 setObject:? forKeyedSubscript:?];
      }

      v14 = [allKeys2 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v14);
  }

  allObjects = [v11 allObjects];
  v21 = [allObjects countByEnumeratingWithState:? objects:? count:?];
  if (v21)
  {
    v22 = v21;
    v23 = MEMORY[0];
    do
    {
      for (j = 0; j != v22; j = (j + 1))
      {
        if (MEMORY[0] != v23)
        {
          objc_enumerationMutation(allObjects);
        }

        v25 = *(8 * j);
        v26 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy2 = self;
          v32 = 2114;
          v33 = v25;
          _os_log_impl(&dword_242545000, v26, OS_LOG_TYPE_DEFAULT, "%@ Support with sidecar for %{public}@", buf, 0x16u);
        }

        v27 = [v9 objectForKeyedSubscript:?];
        [v7 setObject:? forKeyedSubscript:?];
      }

      v22 = [allObjects countByEnumeratingWithState:? objects:? count:?];
    }

    while (v22);
  }

  return v7;
}

+ (void)unscheduleAllNotificationForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v4 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];

  v5 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v5 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];

  v6 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v6 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];

  v7 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v7 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];

  v8 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v8 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];

  v9 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v9 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];

  v10 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v10 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];

  v11 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v11 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];
}

- (void)updateState
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    errorFlags = [(RPCompanionLinkClient *)self->_rpCompanionLinkClient errorFlags];
    *buf = 138412546;
    selfCopy3 = self;
    v95 = 2048;
    v96 = errorFlags;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ RapportErrorFlags : %llu", buf, 0x16u);
  }

  [(CMContinuityCaptureDiscoverySession *)self discoveredLocalDevices];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v76 = v92 = 0u;
  allValues = [v76 allValues];
  v6 = [allValues countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = *v90;
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (*v90 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v89 + 1) + 8 * i);
        availableClientDeviceByIdentifiers = self->_availableClientDeviceByIdentifiers;
        deviceIdentifier = [v10 deviceIdentifier];
        uUIDString = [deviceIdentifier UUIDString];
        v14 = [(NSDictionary *)availableClientDeviceByIdentifiers objectForKey:?];
        if (v14)
        {
        }

        else
        {
          v15 = [(NSMutableSet *)self->_observedDevices containsObject:?];

          if ((v15 & 1) == 0)
          {
            magicStateMonitor = [v10 magicStateMonitor];
            [magicStateMonitor setupMagicStateListener];

            v17 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            queue = [v17 queue];
            dispatch_assert_queue_not_V2(queue);

            v19 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            queue2 = [v19 queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __50__CMContinuityCaptureDiscoverySession_updateState__block_invoke;
            block[3] = &unk_278D5C008;
            block[4] = v10;
            block[5] = self;
            dispatch_async_and_wait(queue2, block);

            [v10 addObserver:? forKeyPath:? options:? context:?];
            [(NSMutableSet *)self->_observedDevices addObject:?];
          }
        }
      }

      v7 = [allValues countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  allKeys = [(NSDictionary *)self->_availableClientDeviceByIdentifiers allKeys];
  v22 = [allKeys countByEnumeratingWithState:? objects:? count:?];
  if (v22)
  {
    v23 = v22;
    v24 = *v85;
    do
    {
      for (j = 0; j != v23; j = (j + 1))
      {
        if (*v85 != v24)
        {
          objc_enumerationMutation(allKeys);
        }

        v26 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:?];
        if ([v26 canDeferTermination])
        {
          v27 = [v76 objectForKey:?];

          if (!v27)
          {
            v28 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:?];
              *buf = 138412546;
              selfCopy3 = self;
              v95 = 2114;
              v96 = v29;
              _os_log_impl(&dword_242545000, v28, OS_LOG_TYPE_DEFAULT, "%@ mark %{public}@ as deferred", buf, 0x16u);
            }

            v30 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:?];
            [v30 setTerminationDeferred:?];

            v31 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:?];
            [v76 setObject:? forKeyedSubscript:?];
            goto LABEL_30;
          }
        }

        else
        {
        }

        v31 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:?];
        if ([v31 terminationDeferred])
        {
          v32 = [v76 objectForKey:?];

          if (!v32)
          {
            goto LABEL_31;
          }

          v33 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:?];
            *buf = 138412546;
            selfCopy3 = self;
            v95 = 2114;
            v96 = v34;
            _os_log_impl(&dword_242545000, v33, OS_LOG_TYPE_DEFAULT, "%@ mark %{public}@ as un-deferred", buf, 0x16u);
          }

          v31 = [v76 objectForKeyedSubscript:?];
          [v31 setTerminationDeferred:?];
        }

LABEL_30:

LABEL_31:
        v35 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:?];
        if ([v35 userDisconnected])
        {
          v36 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:?];
          if ([v36 canReconnect])
          {
            v37 = [v76 objectForKey:?];

            if (!v37)
            {
              continue;
            }

            v35 = [v76 objectForKeyedSubscript:?];
            [v35 setUserDisconnected:?];
          }

          else
          {
          }
        }
      }

      v23 = [allKeys countByEnumeratingWithState:? objects:? count:?];
    }

    while (v23);
  }

  [(CMContinuityCaptureDiscoverySession *)self willChangeValueForKey:?];
  selfCopy4 = self;
  objc_sync_enter(selfCopy4);
  v39 = self->_availableClientDeviceByIdentifiers;
  v40 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:?];
  v41 = self->_availableClientDeviceByIdentifiers;
  self->_availableClientDeviceByIdentifiers = v40;

  objc_sync_exit(selfCopy4);
  [(CMContinuityCaptureDiscoverySession *)selfCopy4 didChangeValueForKey:?];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = [(NSDictionary *)v39 allKeys];
  v42 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v42)
  {
    v43 = v42;
    v44 = *v81;
    v69 = @"User disabled Continuity Camera in Settings";
    v70 = v39;
    v71 = *v81;
    do
    {
      v45 = 0;
      v72 = v43;
      do
      {
        if (*v81 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = [v76 objectForKey:v69];

        if (!v46)
        {
          v47 = [(NSDictionary *)v39 objectForKeyedSubscript:?];
          v48 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            selfCopy3 = selfCopy4;
            v95 = 2114;
            v96 = v47;
            _os_log_impl(&dword_242545000, v48, OS_LOG_TYPE_DEFAULT, "%@ terminate %{public}@", buf, 0x16u);
          }

          [CMContinuityCaptureDiscoverySession unscheduleAllNotificationForDeviceIdentifier:?];
          v49 = +[CMContinuityCaptureSessionStateManager sharedInstance];
          activeSession = [v49 activeSession];
          if (activeSession)
          {
            v51 = activeSession;
            v74 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            activeSession2 = [v74 activeSession];
            device = [activeSession2 device];
            deviceIdentifier2 = [device deviceIdentifier];
            [deviceIdentifier2 UUIDString];
            v55 = v47;
            v57 = v56 = selfCopy4;
            v73 = [v57 isEqualToString:?];

            selfCopy4 = v56;
            v47 = v55;

            v39 = v70;
            if (v73)
            {
              capabilities = [v47 capabilities];
              if (capabilities)
              {
                v59 = capabilities;
                capabilities2 = [v47 capabilities];
                [capabilities2 userDisabled];
              }

              v49 = +[CMContinuityCaptureSessionStateManager sharedInstance];
              [v49 stopCurrentSession:? syncOnOwnedQueue:?];
              goto LABEL_52;
            }
          }

          else
          {
LABEL_52:
          }

          if ([(NSMutableSet *)selfCopy4->_observedDevices containsObject:?])
          {
            v61 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            queue3 = [v61 queue];
            dispatch_assert_queue_not_V2(queue3);

            v63 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            queue4 = [v63 queue];
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = __50__CMContinuityCaptureDiscoverySession_updateState__block_invoke_100;
            v77[3] = &unk_278D5C008;
            v65 = v47;
            v66 = v47;
            v78 = v66;
            v79 = selfCopy4;
            dispatch_async_and_wait(queue4, v77);

            [v66 removeObserver:? forKeyPath:? context:?];
            v47 = v65;
            [(NSMutableSet *)selfCopy4->_observedDevices removeObject:?];
          }

          [(CMContinuityCaptureProximityMonitor *)selfCopy4->_proximityMonitor endTracking:?];
          v67 = [(NSDictionary *)v39 objectForKeyedSubscript:?];
          magicStateMonitor2 = [v67 magicStateMonitor];
          [magicStateMonitor2 invalidate];

          [(NSMutableDictionary *)selfCopy4->_availableCapabilitiesByIdentifiers removeObjectForKey:?];
          v44 = v71;
          v43 = v72;
        }

        v45 = (v45 + 1);
      }

      while (v43 != v45);
      v43 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v43);
  }
}

- (void)showIncompatibleDeviceNotificationIfApplicable
{
  dispatch_assert_queue_V2(self->_queue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_incompatibleDeviceByNotificationData;
  v4 = [NSMutableSet countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
        v10 = [v8 objectForKeyedSubscript:?];
        [v10 integerValue];
        [v9 scheduleNotification:? data:?];

        v7 = (v7 + 1);
      }

      while (v5 != v7);
      v5 = [NSMutableSet countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v5);
  }
}

- (CMContinuityCaptureDiscoverySession)initWithQueue:(id)queue
{
  queueCopy = queue;
  v27.receiver = self;
  v27.super_class = CMContinuityCaptureDiscoverySession;
  v6 = [(CMContinuityCaptureDiscoverySession *)&v27 init];
  if (!v6)
  {
LABEL_8:
    v22 = 0;
    goto LABEL_4;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v8 = *(v6 + 1);
  *(v6 + 1) = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = *(v6 + 2);
  *(v6 + 2) = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = *(v6 + 18);
  *(v6 + 18) = v11;

  objc_storeStrong(v6 + 3, queue);
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = *(v6 + 12);
  *(v6 + 12) = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = *(v6 + 17);
  *(v6 + 17) = v15;

  if (([v6 setupRPClient] & 1) == 0)
  {
    v24 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v6;
      _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%@ rpCompanionclient setup failed", &v25, 0xCu);
    }

    goto LABEL_8;
  }

  [v6 setupRPRemoteDisplayDiscovery];
  [v6 setupProxyMonitoring];
  v17 = MEMORY[0x277CBEA60];
  v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
  v19 = [v18 pathForResource:? ofType:?];
  v20 = [v17 arrayWithContentsOfFile:?];
  v21 = *(v6 + 8);
  *(v6 + 8) = v20;

  *(v6 + 72) = xmmword_2425D8090;
  *(v6 + 11) = 1;
  v6[128] = FigGetCFPreferenceBooleanWithDefault() != 0;
  v22 = v6;
LABEL_4:

  return v22;
}

- (void)currentDeviceList
{
  rpRemoteDisplayDiscovery = [self rpRemoteDisplayDiscovery];
  peerDeviceIdentifier = [rpRemoteDisplayDiscovery peerDeviceIdentifier];
  OUTLINED_FUNCTION_0_1();
  v7 = v5;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "%@ out of session for %{public}@", v6, 0x16u);
}

@end