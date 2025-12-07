@interface ContinuityCaptureRemoteUISystemStatus
+ (id)sharedInstance;
+ (void)invalidate;
- (BOOL)invalidated;
- (ContinuityCaptureRemoteUISystemStatus)initWithQueue:(id)queue;
- (unint64_t)activeCallCountOnMainQueue;
- (void)_avSystemControllerProcessDied;
- (void)_handleCall:(id)call;
- (void)_handleCallAudioSessionActiveNotification:(id)notification;
- (void)_handleCallStatusChangedNotification:(id)notification;
- (void)_resolveActiveCallState;
- (void)_setupAVSystemController;
- (void)addObserver:(id)observer;
- (void)holdIdleSleepAssertionForReason:(id)reason;
- (void)invalidate;
- (void)releaseCurrentIdleSleepAssertion;
- (void)removeObserver:(id)observer;
- (void)setInvalidated:(BOOL)invalidated;
- (void)setupCallStateMonitoring;
@end

@implementation ContinuityCaptureRemoteUISystemStatus

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_69 != -1)
  {
    +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  }

  v3 = _systemStatus;

  return v3;
}

uint64_t __55__ContinuityCaptureRemoteUISystemStatus_sharedInstance__block_invoke()
{
  _systemStatus = [[ContinuityCaptureRemoteUISystemStatus alloc] initWithQueue:?];

  return MEMORY[0x2821F96F8]();
}

void __55__ContinuityCaptureRemoteUISystemStatus_initWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setupCallStateMonitoring];
    WeakRetained = v2;
  }
}

- (BOOL)invalidated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  invalidated = selfCopy->_invalidated;
  objc_sync_exit(selfCopy);

  return invalidated;
}

- (void)setInvalidated:(BOOL)invalidated
{
  obj = self;
  objc_sync_enter(obj);
  obj->_invalidated = invalidated;
  objc_sync_exit(obj);
}

+ (void)invalidate
{
  if (([_systemStatus invalidated] & 1) == 0)
  {
    [_systemStatus invalidate];
    v2 = _systemStatus;

    [v2 setInvalidated:?];
  }
}

- (void)invalidate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:? name:? object:?];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:? name:? object:?];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:? name:? object:?];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:? name:? object:?];
}

- (unint64_t)activeCallCountOnMainQueue
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_not_V2(v2);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ContinuityCaptureRemoteUISystemStatus_activeCallCountOnMainQueue__block_invoke;
  block[3] = &unk_278D5C2B0;
  block[4] = &v7;
  dispatch_async_and_wait(v2, block);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __67__ContinuityCaptureRemoteUISystemStatus_activeCallCountOnMainQueue__block_invoke(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 currentAudioAndVideoCalls];

  v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
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
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * v7) status] == 1)
        {
          ++*(*(*(a1 + 32) + 8) + 24);
        }

        v7 = (v7 + 1);
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }
}

- (void)holdIdleSleepAssertionForReason:(id)reason
{
  reasonCopy = reason;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy3 = self;
    v17 = 2080;
    *v18 = "[ContinuityCaptureRemoteUISystemStatus holdIdleSleepAssertionForReason:]";
    *&v18[8] = 2112;
    *&v18[10] = reasonCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@: %s %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (!self->_preventSystemSleepAssertionID)
  {
    v14 = 1;
    reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:getpid(), reasonCopy];
    v7 = IOPMAssertionDeclareSystemActivity();
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy3 = self;
      v17 = 1024;
      *v18 = v7;
      *&v18[4] = 1024;
      *&v18[6] = v14;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ IOPMAssertionDeclareSystemActivity returned %x systemState %d", buf, 0x18u);
    }

    if (!v7)
    {
      v12 = @"audio-in";
      v13 = @"Camera";
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v10 = IOPMAssertionSetProperty(self->_preventSystemSleepAssertionID, @"ResourcesUsed", v9);
      v11 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy3 = self;
        v17 = 1024;
        *v18 = v10;
        *&v18[4] = 2112;
        *&v18[6] = v9;
        _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ IOPMAssertionSetProperty returned %x for setting kIOPMAssertionResourcesUsed: %@", buf, 0x1Cu);
      }
    }
  }
}

- (void)releaseCurrentIdleSleepAssertion
{
  v3 = 138412546;
  selfCopy = self;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_242545000, log, OS_LOG_TYPE_ERROR, "%@  IOPMAssertionRelease failed (%d)", &v3, 0x12u);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = observerCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v6, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSHashTable *)self->_observers addObject:?];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = observerCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v6, 0x16u);
  }

  [(NSHashTable *)self->_observers removeObject:?];
}

- (void)_handleCallStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v16 = 2112;
    v17 = notificationCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ Received: %@", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  name = [notificationCopy name];
  if ([name isEqualToString:?])
  {
    goto LABEL_6;
  }

  name2 = [notificationCopy name];
  if ([name2 isEqualToString:?])
  {

LABEL_6:
    goto LABEL_7;
  }

  name3 = [notificationCopy name];
  v12 = [name3 isEqualToString:?];

  if ((v12 & 1) == 0)
  {
    v9 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = notificationCopy;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ Received unhandled notification from call center: %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

LABEL_7:
  v8 = objc_loadWeakRetained(&location);
  if (v8)
  {
    v9 = v8;
    object = [notificationCopy object];
    [v9 _handleCall:?];

LABEL_9:
  }

  objc_destroyWeak(&location);
}

- (void)_setupAVSystemController
{
  dispatch_assert_queue_V2(self->_queue);
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  avSystemController = self->_avSystemController;
  self->_avSystemController = mEMORY[0x277D26E58];

  v5 = self->_avSystemController;
  v6 = *MEMORY[0x277D26B50];
  v14 = *MEMORY[0x277D26D40];
  v15 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [AVSystemController setAttribute:v5 forKey:"setAttribute:forKey:error:" error:?];

  v8 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_avSystemController;
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ Setup avSystemController: %@", &v10, 0x16u);
  }
}

- (void)_avSystemControllerProcessDied
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__ContinuityCaptureRemoteUISystemStatus__avSystemControllerProcessDied__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __71__ContinuityCaptureRemoteUISystemStatus__avSystemControllerProcessDied__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setupAVSystemController];
    WeakRetained = v2;
  }
}

- (void)_handleCallAudioSessionActiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = notificationCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ Received: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ContinuityCaptureRemoteUISystemStatus__handleCallAudioSessionActiveNotification___block_invoke;
  block[3] = &unk_278D5C120;
  objc_copyWeak(&v11, buf);
  v9 = notificationCopy;
  selfCopy2 = self;
  v7 = notificationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __83__ContinuityCaptureRemoteUISystemStatus__handleCallAudioSessionActiveNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:?];
    v5 = [v4 BOOLValue];

    if (WeakRetained[96] != v5)
    {
      v6 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = WeakRetained[96];
        v9 = 138412802;
        v10 = v7;
        v11 = 1024;
        v12 = v8;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ _hasActiveCallAudioSession changed %d -> %d ", &v9, 0x18u);
      }

      WeakRetained[96] = v5;
      [WeakRetained _resolveActiveCallState];
    }
  }
}

- (void)_resolveActiveCallState
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = atomic_load(&self->_callState);
  v4 = atomic_load(&self->_callState);
  if ([(NSMutableSet *)self->_activeCallIds count]|| self->_hasActiveCallAudioSession)
  {
    v3 = 0;
  }

  else if (!v4 && ![(NSMutableSet *)self->_activeCallIds count]&& !self->_hasActiveCallAudioSession)
  {
    v3 = 1;
  }

  if (v3 != v4)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSMutableSet *)self->_activeCallIds count];
      hasActiveCallAudioSession = self->_hasActiveCallAudioSession;
      *buf = 138413314;
      selfCopy = self;
      v15 = 1024;
      v16 = v6;
      v17 = 1024;
      v18 = hasActiveCallAudioSession;
      v19 = 1024;
      v20 = v4;
      v21 = 1024;
      v22 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ #ofActiveCalls %d callAudioSessionActive %d callState %d -> %d", buf, 0x24u);
    }

    [(ContinuityCaptureRemoteUISystemStatus *)self willChangeValueForKey:?];
    atomic_store(v3, &self->_callState);
    [(ContinuityCaptureRemoteUISystemStatus *)self didChangeValueForKey:?];
    v8 = self->_observers;
    v9 = [NSHashTable countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0];
      do
      {
        for (i = 0; i != v10; i = (i + 1))
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(8 * i) callActive:?];
        }

        v10 = [NSHashTable countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v10);
    }
  }
}

- (void)setupCallStateMonitoring
{
  dispatch_assert_queue_V2(self->_queue);
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  callCenter = self->_callCenter;
  self->_callCenter = mEMORY[0x277D6EDF8];

  neighborhoodActivityConduit = [(TUCallCenter *)self->_callCenter neighborhoodActivityConduit];
  callCenterNeighborhoodActivityConduit = self->_callCenterNeighborhoodActivityConduit;
  self->_callCenterNeighborhoodActivityConduit = neighborhoodActivityConduit;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:? selector:? name:? object:?];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:? selector:? name:? object:?];

  currentAudioAndVideoCalls = [(TUCallCenter *)self->_callCenter currentAudioAndVideoCalls];
  v10 = [currentAudioAndVideoCalls countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        [(ContinuityCaptureRemoteUISystemStatus *)self _handleCall:?];
      }

      v11 = [currentAudioAndVideoCalls countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }

  [(ContinuityCaptureRemoteUISystemStatus *)self _setupAVSystemController];
  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:? selector:? name:? object:?];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:? selector:? name:? object:?];
}

- (void)_handleCall:(id)call
{
  callCopy = call;
  if ([callCopy status] == 4 && (v5 = self->_incomingCallIDs, objc_msgSend(callCopy, "uniqueProxyIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(v5) = -[NSMutableSet containsObject:](v5, "containsObject:"), v6, (v5 & 1) == 0))
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    provider = [callCopy provider];
    if ([provider isFaceTimeProvider])
    {
      [(TUNeighborhoodActivityConduit *)self->_callCenterNeighborhoodActivityConduit isRingingFaceTimeCallsOnConnectedTVDevice];
    }

    v11 = 0x277CCA000uLL;
    v12 = MEMORY[0x277CCABB0];
    [callCopy service];
    v13 = [v12 numberWithInt:?];
    [v9 setObject:? forKeyedSubscript:?];

    provider2 = [callCopy provider];
    localizedName = [provider2 localizedName];
    [v9 setObject:? forKeyedSubscript:?];

    displayName = [callCopy displayName];
    [v9 setObject:? forKeyedSubscript:?];

    handle = [callCopy handle];
    type = [handle type];

    handle2 = [callCopy handle];
    value = [handle2 value];
    if (type == 2)
    {
      isoCountryCode = [callCopy isoCountryCode];
      v22 = TUFormattedPhoneNumber();
      [v9 setObject:? forKeyedSubscript:?];

      v11 = 0x277CCA000;
    }

    else
    {
      [v9 setObject:? forKeyedSubscript:?];
    }

    callUUID = [callCopy callUUID];
    [v9 setObject:? forKeyedSubscript:?];

    callGroupUUID = [callCopy callGroupUUID];
    uUIDString = [callGroupUUID UUIDString];
    [v9 setObject:? forKeyedSubscript:?];

    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    [v9 setObject:? forKeyedSubscript:?];

    v27 = *(v11 + 2992);
    provider3 = [callCopy provider];
    [provider3 isFaceTimeProvider];
    v29 = [v27 numberWithBool:?];
    [v9 setObject:? forKeyedSubscript:?];

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v30 = self->_observers;
    v31 = [NSHashTable countByEnumeratingWithState:v30 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v31)
    {
      v32 = v31;
      v33 = *v81;
      do
      {
        for (i = 0; i != v32; i = (i + 1))
        {
          if (*v81 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [*(*(&v80 + 1) + 8 * i) incomingCall:? data:? shouldDisplayNotification:?];
        }

        v32 = [NSHashTable countByEnumeratingWithState:v30 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v32);
    }

    incomingCallIDs = self->_incomingCallIDs;
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    [(NSMutableSet *)incomingCallIDs addObject:?];
  }

  else if ([callCopy status] != 4)
  {
    v7 = self->_incomingCallIDs;
    uniqueProxyIdentifier3 = [callCopy uniqueProxyIdentifier];
    [(NSMutableSet *)v7 removeObject:?];
  }

  if ([callCopy status] == 1)
  {
    activeCallIds = self->_activeCallIds;
    uniqueProxyIdentifier4 = [callCopy uniqueProxyIdentifier];
    [(NSMutableSet *)activeCallIds addObject:?];

    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uniqueProxyIdentifier5 = [callCopy uniqueProxyIdentifier];
    [v39 setObject:? forKeyedSubscript:?];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v41 = self->_observers;
    v42 = [NSHashTable countByEnumeratingWithState:v41 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v42)
    {
      v43 = v42;
      v44 = *v77;
      do
      {
        for (j = 0; j != v43; j = (j + 1))
        {
          if (*v77 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [*(*(&v76 + 1) + 8 * j) incomingCall:? data:? shouldDisplayNotification:?];
        }

        v43 = [NSHashTable countByEnumeratingWithState:v41 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v43);
    }

LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  if ([callCopy status] == 6)
  {
    v49 = self->_activeCallIds;
    uniqueProxyIdentifier6 = [callCopy uniqueProxyIdentifier];
    [(NSMutableSet *)v49 removeObject:?];

    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uniqueProxyIdentifier7 = [callCopy uniqueProxyIdentifier];
    [v39 setObject:? forKeyedSubscript:?];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v52 = self->_observers;
    v53 = [NSHashTable countByEnumeratingWithState:v52 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v53)
    {
      v54 = v53;
      v55 = *v73;
      do
      {
        for (k = 0; k != v54; k = (k + 1))
        {
          if (*v73 != v55)
          {
            objc_enumerationMutation(v52);
          }

          [*(*(&v72 + 1) + 8 * k) incomingCall:? data:? shouldDisplayNotification:?];
        }

        v54 = [NSHashTable countByEnumeratingWithState:v52 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v54);
    }

    if ([callCopy disconnectedReason] == 2)
    {
      [(ContinuityCaptureRemoteUISystemStatus *)self willChangeValueForKey:?];
      atomic_store(2uLL, &self->_callState);
      [(ContinuityCaptureRemoteUISystemStatus *)self didChangeValueForKey:?];
    }

    goto LABEL_27;
  }

  if ([callCopy status] == 2)
  {
    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uniqueProxyIdentifier8 = [callCopy uniqueProxyIdentifier];
    [v39 setObject:? forKeyedSubscript:?];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v41 = self->_observers;
    v58 = [NSHashTable countByEnumeratingWithState:v41 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v58)
    {
      v59 = v58;
      v60 = *v69;
      do
      {
        for (m = 0; m != v59; m = (m + 1))
        {
          if (*v69 != v60)
          {
            objc_enumerationMutation(v41);
          }

          [*(*(&v68 + 1) + 8 * m) incomingCall:? data:? shouldDisplayNotification:?];
        }

        v59 = [NSHashTable countByEnumeratingWithState:v41 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v59);
    }

    goto LABEL_26;
  }

LABEL_28:
  v46 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = [(NSMutableSet *)self->_activeCallIds count];
    v48 = [(NSMutableSet *)self->_incomingCallIDs count];
    v62 = 138412802;
    selfCopy = self;
    v64 = 2048;
    v65 = v47;
    v66 = 2048;
    v67 = v48;
    _os_log_impl(&dword_242545000, v46, OS_LOG_TYPE_DEFAULT, "%@ #ofActiveCalls %ld, #ofIncomingCalls: %ld", &v62, 0x20u);
  }

  [(ContinuityCaptureRemoteUISystemStatus *)self _resolveActiveCallState];
}

- (ContinuityCaptureRemoteUISystemStatus)initWithQueue:(id)queue
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = ContinuityCaptureRemoteUISystemStatus;
  v6 = [(ContinuityCaptureRemoteUIPowerButtonStatus *)&v20 initWithQueue:queueCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    incomingCallIDs = v7->_incomingCallIDs;
    v7->_incomingCallIDs = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeCallIds = v7->_activeCallIds;
    v7->_activeCallIds = v10;

    atomic_store(0xFFFFFFFFFFFFFFFFLL, &v7->_callState);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    objc_initWeak(&location, v7);
    queue = v7->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__ContinuityCaptureRemoteUISystemStatus_initWithQueue___block_invoke;
    v17[3] = &unk_278D5C080;
    objc_copyWeak(&v18, &location);
    dispatch_async(queue, v17);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    v15 = v7;
  }

  return v7;
}

@end