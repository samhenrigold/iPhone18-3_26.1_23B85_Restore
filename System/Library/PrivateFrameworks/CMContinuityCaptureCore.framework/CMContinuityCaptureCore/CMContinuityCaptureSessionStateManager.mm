@interface CMContinuityCaptureSessionStateManager
+ (id)sharedInstance;
- (BOOL)_isStreamingForDevice:(id)device;
- (BOOL)_shouldResetConnectionForDevice:(id)device;
- (BOOL)_startSessionWithDevice:(id)device forTransportType:(int64_t)type validateTransport:(BOOL)transport initiatedOnCommunalDevice:(BOOL)communalDevice micOnly:(BOOL)only outError:(id *)error;
- (BOOL)shouldResetConnectionForDevice:(id)device;
- (BOOL)startSessionWithDevice:(id)device forTransportType:(int64_t)type validateTransport:(BOOL)transport initiatedOnCommunalDevice:(BOOL)communalDevice micOnly:(BOOL)only outError:(id *)error;
- (CMContinuityCaptureActiveSession)activeSession;
- (CMContinuityCaptureSessionStateManager)initWithQueue:(id)queue;
- (id)_devicesWithPendingStopSession;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_startStreamForDevice:(id)device startCompletion:(id)completion startSkippedCompletion:(id)skippedCompletion;
- (void)_stopCurrentSession:(id)session;
- (void)_stopStreamForDevice:(id)device option:(int64_t)option completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startStreamForDevice:(id)device startCompletion:(id)completion startSkippedCompletion:(id)skippedCompletion;
- (void)stopCurrentSession:(id)session syncOnOwnedQueue:(BOOL)queue;
- (void)stopStreamForDevice:(id)device option:(int64_t)option completion:(id)completion;
@end

@implementation CMContinuityCaptureSessionStateManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CMContinuityCaptureSessionStateManager sharedInstance];
  }

  v3 = _sessionStateManager;

  return v3;
}

void __56__CMContinuityCaptureSessionStateManager_sharedInstance__block_invoke()
{
  v0 = [CMContinuityCaptureSessionStateManager alloc];
  v3 = FigDispatchQueueCreateWithPriority();
  v1 = [(CMContinuityCaptureSessionStateManager *)v0 initWithQueue:?];
  v2 = _sessionStateManager;
  _sessionStateManager = v1;
}

- (CMContinuityCaptureActiveSession)activeSession
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activeSession;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)stopStreamForDevice:(id)device option:(int64_t)option completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CMContinuityCaptureSessionStateManager_stopStreamForDevice_option_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v16[1] = option;
  v14 = deviceCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = deviceCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __80__CMContinuityCaptureSessionStateManager_stopStreamForDevice_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _stopStreamForDevice:? option:? completion:?];
    WeakRetained = v2;
  }
}

- (void)_stopStreamForDevice:(id)device option:(int64_t)option completion:(id)completion
{
  optionCopy = option;
  deviceCopy = device;
  completionCopy = completion;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (optionCopy)
  {
    sessionTerminationGracePeriodInSec = 0;
  }

  else
  {
    sessionTerminationGracePeriodInSec = self->_sessionTerminationGracePeriodInSec;
  }

  v11 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy3 = self;
    v33 = 2080;
    v34 = "[CMContinuityCaptureSessionStateManager _stopStreamForDevice:option:completion:]";
    v35 = 2114;
    v36 = deviceCopy;
    v37 = 1024;
    v38 = sessionTerminationGracePeriodInSec;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@ sessionTerminationGracePeriodInSec:%d", buf, 0x26u);
  }

  v12 = [(NSMapTable *)self->_pendingStopCompletionDevices objectForKey:?];
  v13 = v12;
  if (v12)
  {
    dispatch_block_cancel(v12);
    v14 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy3 = self;
      v33 = 2080;
      v34 = "[CMContinuityCaptureSessionStateManager _stopStreamForDevice:option:completion:]";
      v35 = 2114;
      v36 = deviceCopy;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@ pending completion", buf, 0x20u);
    }

    [(NSHashTable *)self->_skippedStopStreamByDevices removeObject:?];
    v13[2](v13);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CMContinuityCaptureSessionStateManager__stopStreamForDevice_option_completion___block_invoke;
  block[3] = &unk_278D5C490;
  objc_copyWeak(&v30, &location);
  v15 = deviceCopy;
  v28 = v15;
  v16 = completionCopy;
  v29 = v16;
  v17 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  pendingStopCompletionDevices = self->_pendingStopCompletionDevices;
  v19 = MEMORY[0x245D12020]();
  [NSMapTable setObject:"setObject:forKey:" forKey:?];

  activeStreamDevicesByEntity = self->_activeStreamDevicesByEntity;
  v21 = MEMORY[0x277CCABB0];
  [v15 entity];
  v22 = [v21 numberWithInteger:?];
  [(NSMutableDictionary *)activeStreamDevicesByEntity removeObjectForKey:?];

  v23 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allKeys];
    *buf = 138412546;
    selfCopy3 = self;
    v33 = 2114;
    v34 = allKeys;
    _os_log_impl(&dword_242545000, v23, OS_LOG_TYPE_DEFAULT, "%@ remaining active entities %{public}@", buf, 0x16u);
  }

  [v15 setStreamIntent:?];
  if (![(CMContinuityCaptureSessionStateManager *)self _isStreamingForDevice:?])
  {
    transportDevice = [v15 transportDevice];
    [transportDevice setStreamIntent:?];
  }

  v26 = dispatch_time(0, 1000000000 * sessionTerminationGracePeriodInSec);
  dispatch_after(v26, self->_queue, v17);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __81__CMContinuityCaptureSessionStateManager__stopStreamForDevice_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 48));
      v5 = *(a1 + 32);
      v6 = 138412802;
      v7 = v4;
      v8 = 2080;
      v9 = "[CMContinuityCaptureSessionStateManager _stopStreamForDevice:option:completion:]_block_invoke";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@ completion", &v6, 0x20u);
    }

    [WeakRetained[3] removeObjectForKey:?];
    [WeakRetained[5] removeObject:?];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_devicesWithPendingStopSession
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  keyEnumerator = [(NSMapTable *)self->_pendingStopCompletionDevices keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    do
    {
      [v3 addObject:?];
      nextObject2 = [keyEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  return v3;
}

- (void)startStreamForDevice:(id)device startCompletion:(id)completion startSkippedCompletion:(id)skippedCompletion
{
  deviceCopy = device;
  completionCopy = completion;
  skippedCompletionCopy = skippedCompletion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__CMContinuityCaptureSessionStateManager_startStreamForDevice_startCompletion_startSkippedCompletion___block_invoke;
  block[3] = &unk_278D5C4B8;
  objc_copyWeak(&v19, &location);
  v16 = deviceCopy;
  v17 = completionCopy;
  v18 = skippedCompletionCopy;
  v12 = skippedCompletionCopy;
  v13 = completionCopy;
  v14 = deviceCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __102__CMContinuityCaptureSessionStateManager_startStreamForDevice_startCompletion_startSkippedCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _startStreamForDevice:? startCompletion:? startSkippedCompletion:?];
    WeakRetained = v2;
  }
}

- (void)_startStreamForDevice:(id)device startCompletion:(id)completion startSkippedCompletion:(id)skippedCompletion
{
  deviceCopy = device;
  completionCopy = completion;
  skippedCompletionCopy = skippedCompletion;
  dispatch_assert_queue_V2(self->_queue);
  v11 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy4 = self;
    v42 = 2080;
    v43 = "[CMContinuityCaptureSessionStateManager _startStreamForDevice:startCompletion:startSkippedCompletion:]";
    v44 = 2114;
    v45 = deviceCopy;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@", buf, 0x20u);
  }

  [deviceCopy setStreamIntent:?];
  if (![(CMContinuityCaptureSessionStateManager *)self _isStreamingForDevice:?])
  {
    transportDevice = [deviceCopy transportDevice];
    [transportDevice setStreamIntent:?];
  }

  activeStreamDevicesByEntity = self->_activeStreamDevicesByEntity;
  v14 = MEMORY[0x277CCABB0];
  [deviceCopy entity];
  v15 = [v14 numberWithInteger:?];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];

  v16 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allKeys];
    *buf = 138412546;
    selfCopy4 = self;
    v42 = 2114;
    v43 = allKeys;
    _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%@ updated active entities %{public}@", buf, 0x16u);
  }

  v18 = [(NSMapTable *)self->_pendingStopCompletionDevices objectForKey:?];
  if (v18)
  {
    v19 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy4 = self;
      v42 = 2080;
      v43 = "[CMContinuityCaptureSessionStateManager _startStreamForDevice:startCompletion:startSkippedCompletion:]";
      v44 = 2114;
      v45 = deviceCopy;
      _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%@ %s device %{public}@ cancel pending completion", buf, 0x20u);
    }

    dispatch_block_cancel(v18);
    [(NSMapTable *)self->_pendingStopCompletionDevices removeObjectForKey:?];
    [(NSHashTable *)self->_skippedStopStreamByDevices addObject:?];
    compositeDelegate = [deviceCopy compositeDelegate];
    [compositeDelegate relayEvent:?];

    if (skippedCompletionCopy)
    {
      skippedCompletionCopy[2](skippedCompletionCopy);
    }
  }

  else
  {
    transportDevice2 = [deviceCopy transportDevice];
    deviceIdentifier = [transportDevice2 deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];

    obj = [(CMContinuityCaptureSessionStateManager *)self _devicesWithPendingStopSession];
    v24 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v24)
    {
      v25 = v24;
      v36 = skippedCompletionCopy;
      v37 = completionCopy;
      v38 = deviceCopy;
      v26 = 0;
      v27 = MEMORY[0];
      do
      {
        for (i = 0; i != v25; i = (i + 1))
        {
          v29 = v26;
          if (MEMORY[0] != v27)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(8 * i);

          v30 = [(NSMapTable *)self->_pendingStopCompletionDevices objectForKey:?];
          transportDevice3 = [v26 transportDevice];
          deviceIdentifier2 = [transportDevice3 deviceIdentifier];
          uUIDString2 = [deviceIdentifier2 UUIDString];

          if (v30)
          {
            v34 = !uUIDString2 || uUIDString == 0;
            if (v34 || ([uUIDString2 isEqualToString:?] & 1) == 0)
            {
              v35 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy4 = self;
                v42 = 2114;
                v43 = v26;
                _os_log_impl(&dword_242545000, v35, OS_LOG_TYPE_DEFAULT, "%@ complete pending stop for %{public}@", buf, 0x16u);
              }

              v30[2](v30);
              dispatch_block_cancel(v30);
              [(NSMapTable *)self->_pendingStopCompletionDevices removeObjectForKey:?];
              [(NSHashTable *)self->_skippedStopStreamByDevices removeObject:?];
            }
          }
        }

        v25 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v25);

      completionCopy = v37;
      deviceCopy = v38;
      v18 = 0;
      skippedCompletionCopy = v36;
    }

    completionCopy[2](completionCopy);
  }
}

- (BOOL)_isStreamingForDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  transportDevice = [deviceCopy transportDevice];
  deviceIdentifier = [transportDevice deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  allValues = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allValues];
  if ([allValues count])
  {
    v9 = allValues;
    v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
    if (v10)
    {
      v11 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v10; i = (i + 1))
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(v9);
          }

          transportDevice2 = [*(8 * i) transportDevice];
          deviceIdentifier2 = [transportDevice2 deviceIdentifier];
          uUIDString2 = [deviceIdentifier2 UUIDString];

          if (uUIDString && uUIDString2 && [uUIDString2 isEqualToString:?])
          {

            LOBYTE(v10) = 1;
            goto LABEL_15;
          }
        }

        v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)shouldResetConnectionForDevice:(id)device
{
  deviceCopy = device;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CMContinuityCaptureSessionStateManager_shouldResetConnectionForDevice___block_invoke;
  block[3] = &unk_278D5C4E0;
  v9 = deviceCopy;
  v10 = &v11;
  block[4] = self;
  v6 = deviceCopy;
  dispatch_async_and_wait(queue, block);

  LOBYTE(deviceCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return deviceCopy;
}

void *__73__CMContinuityCaptureSessionStateManager_shouldResetConnectionForDevice___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _shouldResetConnectionForDevice:?];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_shouldResetConnectionForDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  availableClientDevices = [v5 availableClientDevices];

  transportDevice = [deviceCopy transportDevice];
  deviceIdentifier = [transportDevice deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  v10 = availableClientDevices;
  v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
  if (v11)
  {
    v12 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(8 * i);
        deviceIdentifier2 = [v14 deviceIdentifier];
        uUIDString2 = [deviceIdentifier2 UUIDString];

        if (uUIDString && uUIDString2 && [uUIDString isEqualToString:?] && objc_msgSend(v14, "hasStreamIntent"))
        {

          allObjects = [(NSHashTable *)self->_skippedStopStreamByDevices allObjects];
          v11 = [allObjects countByEnumeratingWithState:? objects:? count:?];
          if (v11)
          {
            v18 = MEMORY[0];
            while (2)
            {
              for (j = 0; j != v11; j = (j + 1))
              {
                if (MEMORY[0] != v18)
                {
                  objc_enumerationMutation(allObjects);
                }

                transportDevice2 = [*(8 * j) transportDevice];
                deviceIdentifier3 = [transportDevice2 deviceIdentifier];
                uUIDString3 = [deviceIdentifier3 UUIDString];

                if (uUIDString3 && ([uUIDString isEqualToString:?] & 1) != 0)
                {

                  LOBYTE(v11) = 1;
                  goto LABEL_24;
                }
              }

              v11 = [allObjects countByEnumeratingWithState:? objects:? count:?];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          goto LABEL_24;
        }
      }

      v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  allObjects = v10;
LABEL_24:

  return v11;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__CMContinuityCaptureSessionStateManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  v21[1] = context;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __89__CMContinuityCaptureSessionStateManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:? ofObject:? change:? context:?];
    WeakRetained = v2;
  }
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:?])
  {
    v56 = changeCopy;
    v57 = objectCopy;
    v58 = pathCopy;
    v12 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    availableClientDevices = [v12 availableClientDevices];

    v60 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v64 = 2114;
      v65 = availableClientDevices;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%@ updated device list %{public}@", buf, 0x16u);
    }

    _devicesWithPendingStopSession = [(CMContinuityCaptureSessionStateManager *)self _devicesWithPendingStopSession];
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    obj = _devicesWithPendingStopSession;
    v17 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v17)
    {
      v18 = v17;
      v19 = MEMORY[0];
      do
      {
        for (i = 0; i != v18; i = (i + 1))
        {
          if (MEMORY[0] != v19)
          {
            objc_enumerationMutation(obj);
          }

          transportDevice = [*(8 * i) transportDevice];
          deviceIdentifier = [transportDevice deviceIdentifier];
          uUIDString = [deviceIdentifier UUIDString];

          if (uUIDString)
          {
            [v16 setObject:? forKeyedSubscript:?];
          }
        }

        v18 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v18);
    }

    v24 = availableClientDevices;
    v25 = [v24 countByEnumeratingWithState:? objects:? count:?];
    if (v25)
    {
      v26 = v25;
      v27 = MEMORY[0];
      do
      {
        for (j = 0; j != v26; j = (j + 1))
        {
          if (MEMORY[0] != v27)
          {
            objc_enumerationMutation(v24);
          }

          deviceIdentifier2 = [*(8 * j) deviceIdentifier];
          uUIDString2 = [deviceIdentifier2 UUIDString];

          if (uUIDString2)
          {
            [v60 addObject:?];
            [v16 removeObjectForKey:?];
          }
        }

        v26 = [v24 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v26);
    }

    v55 = v24;

    allValues = [v16 allValues];
    v32 = [allValues countByEnumeratingWithState:? objects:? count:?];
    if (v32)
    {
      v33 = v32;
      v34 = MEMORY[0];
      do
      {
        for (k = 0; k != v33; k = (k + 1))
        {
          if (MEMORY[0] != v34)
          {
            objc_enumerationMutation(allValues);
          }

          v36 = *(8 * k);
          v37 = [(NSMapTable *)self->_pendingStopCompletionDevices objectForKey:?];
          v38 = v37;
          if (v37)
          {
            dispatch_block_cancel(v37);
            v39 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy3 = self;
              v64 = 2114;
              v65 = v36;
              _os_log_impl(&dword_242545000, v39, OS_LOG_TYPE_DEFAULT, "%@ remove pending stop for %{public}@", buf, 0x16u);
            }

            [(NSMapTable *)self->_pendingStopCompletionDevices removeObjectForKey:?];
          }
        }

        v33 = [allValues countByEnumeratingWithState:? objects:? count:?];
      }

      while (v33);
    }

    allValues2 = [(NSMutableDictionary *)self->_activeStreamDevicesByEntity allValues];
    if ([allValues2 count])
    {
      v54 = allValues2;
      v59 = allValues2;
      v41 = [v59 countByEnumeratingWithState:? objects:? count:?];
      if (v41)
      {
        v42 = v41;
        v43 = MEMORY[0];
        do
        {
          for (m = 0; m != v42; m = (m + 1))
          {
            if (MEMORY[0] != v43)
            {
              objc_enumerationMutation(v59);
            }

            v45 = *(8 * m);
            transportDevice2 = [v45 transportDevice];
            deviceIdentifier3 = [transportDevice2 deviceIdentifier];
            uUIDString3 = [deviceIdentifier3 UUIDString];

            if (uUIDString3 && ([v60 containsObject:?] & 1) == 0)
            {
              [(NSHashTable *)self->_skippedStopStreamByDevices removeObject:?];
              v49 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy3 = self;
                v64 = 2114;
                v65 = v45;
                _os_log_impl(&dword_242545000, v49, OS_LOG_TYPE_DEFAULT, "%@ remove stream intent for terminated device %{public}@", buf, 0x16u);
              }

              selfCopy4 = self;
              objc_sync_enter(selfCopy4);
              activeStreamDevicesByEntity = self->_activeStreamDevicesByEntity;
              v52 = MEMORY[0x277CCABB0];
              [v45 entity];
              v53 = [v52 numberWithInteger:?];
              [(NSMutableDictionary *)activeStreamDevicesByEntity removeObjectForKey:?];

              objc_sync_exit(selfCopy4);
            }
          }

          v42 = [v59 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v42);
      }

      allValues2 = v54;
    }

    objectCopy = v57;
    pathCopy = v58;
    changeCopy = v56;
  }
}

- (BOOL)startSessionWithDevice:(id)device forTransportType:(int64_t)type validateTransport:(BOOL)transport initiatedOnCommunalDevice:(BOOL)communalDevice micOnly:(BOOL)only outError:(id *)error
{
  deviceCopy = device;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __143__CMContinuityCaptureSessionStateManager_startSessionWithDevice_forTransportType_validateTransport_initiatedOnCommunalDevice_micOnly_outError___block_invoke;
  block[3] = &unk_278D5C508;
  v21 = &v33;
  block[4] = self;
  v16 = deviceCopy;
  v22 = &v27;
  typeCopy = type;
  transportCopy = transport;
  communalDeviceCopy = communalDevice;
  onlyCopy = only;
  v20 = v16;
  dispatch_async_and_wait(queue, block);

  if (error)
  {
    *error = v28[5];
  }

  v17 = *(v34 + 24);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v17;
}

void __143__CMContinuityCaptureSessionStateManager_startSessionWithDevice_forTransportType_validateTransport_initiatedOnCommunalDevice_micOnly_outError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[7] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _startSessionWithDevice:? forTransportType:? validateTransport:? initiatedOnCommunalDevice:? micOnly:? outError:?];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[6] + 8) + 24) = v4;
}

- (BOOL)_startSessionWithDevice:(id)device forTransportType:(int64_t)type validateTransport:(BOOL)transport initiatedOnCommunalDevice:(BOOL)communalDevice micOnly:(BOOL)only outError:(id *)error
{
  transportCopy = transport;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  availableClientDevices = [v11 availableClientDevices];

  v13 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    activeSession = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    *buf = 138413570;
    selfCopy11 = self;
    v75 = 2080;
    v76 = "[CMContinuityCaptureSessionStateManager _startSessionWithDevice:forTransportType:validateTransport:initiatedOnCommunalDevice:micOnly:outError:]";
    v77 = 2114;
    *v78 = deviceCopy;
    *&v78[8] = 2114;
    v79 = activeSession;
    v80 = 1024;
    v81 = transportCopy;
    v82 = 2114;
    v83 = availableClientDevices;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@ Active session %{public}@ validateTransport:%d availableDevices:%{public}@", buf, 0x3Au);
  }

  v71 = transportCopy;
  v72 = availableClientDevices;

  activeSession2 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
  if (activeSession2)
  {
    v16 = activeSession2;
    activeSession3 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    device = [activeSession3 device];
    deviceIdentifier = [device deviceIdentifier];
    uUIDString = [deviceIdentifier UUIDString];
    deviceIdentifier2 = [deviceCopy deviceIdentifier];
    uUIDString2 = [deviceIdentifier2 UUIDString];
    v23 = [uUIDString isEqualToString:?];

    if ((v23 & 1) == 0)
    {
      v37 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        activeSession4 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
        *buf = 138412802;
        selfCopy11 = self;
        v75 = 2082;
        v76 = "[CMContinuityCaptureSessionStateManager _startSessionWithDevice:forTransportType:validateTransport:initiatedOnCommunalDevice:micOnly:outError:]";
        v77 = 2114;
        *v78 = activeSession4;
        _os_log_impl(&dword_242545000, v37, OS_LOG_TYPE_DEFAULT, "%@ %{public}s already active session for %{public}@", buf, 0x20u);
      }

      v34 = deviceCopy;
      v39 = v72;
      errorCopy2 = error;
      if (!error)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }
  }

  activeSession5 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
  if (!activeSession5 || (v25 = activeSession5, -[CMContinuityCaptureSessionStateManager activeSession](self, "activeSession"), v26 = objc_claimAutoreleasedReturnValue(), [v26 device], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "deviceIdentifier"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "UUIDString"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(deviceCopy, "deviceIdentifier"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "UUIDString"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v29, "isEqualToString:"), v31, v30, v29, v28, v27, v26, v25, !v32) || v71)
  {
    activeSession6 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    v34 = deviceCopy;
    if (activeSession6)
    {

      v36 = 0x278D5B000;
      goto LABEL_16;
    }

    v36 = 0x278D5B000uLL;
    v41 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    v42 = [v41 isUserSelectedDeviceIfApplicable:?];

    if (v42)
    {
LABEL_16:
      if (v71)
      {
        v43 = [deviceCopy deviceStatus] & 0x1000000;
        v44 = [deviceCopy deviceStatus] & 0x200;
        v45 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          sharedInstance = [*(v36 + 2216) sharedInstance];
          transportErrorFlags = [sharedInstance transportErrorFlags];
          *buf = 138413058;
          selfCopy11 = self;
          v75 = 2048;
          v76 = transportErrorFlags;
          v77 = 1024;
          *v78 = v43 >> 24;
          *&v78[4] = 1024;
          *&v78[6] = v44 >> 9;
          _os_log_impl(&dword_242545000, v45, OS_LOG_TYPE_DEFAULT, "%@ errorFlags : %llx wired:%d wireless:%d", buf, 0x22u);
        }

        sharedInstance2 = [*(v36 + 2216) sharedInstance];
        transportErrorFlags2 = [sharedInstance2 transportErrorFlags];

        if ((transportErrorFlags2 & 0x100) != 0)
        {
          v50 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy11 = self;
            _os_log_impl(&dword_242545000, v50, OS_LOG_TYPE_DEFAULT, "%@ RPError : RPErrorFlagsNoManatee", buf, 0xCu);
          }
        }

        if (!v43)
        {
          sharedInstance3 = [*(v36 + 2216) sharedInstance];
          transportErrorFlags3 = [sharedInstance3 transportErrorFlags];

          if ((transportErrorFlags3 & 4) != 0 || !v44)
          {
            v53 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy11 = self;
              v75 = 2114;
              v76 = v34;
              _os_log_impl(&dword_242545000, v53, OS_LOG_TYPE_DEFAULT, "%@ (%{public}@) RPError : USB inactive and WifiOff", buf, 0x16u);
            }

            if (!v44)
            {
              v54 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy11 = self;
                v75 = 2114;
                v76 = v34;
                _os_log_impl(&dword_242545000, v54, OS_LOG_TYPE_DEFAULT, "%@ (%{public}@) non wired with wifip2p2 disabled", buf, 0x16u);
              }

              v39 = v72;
              if (error)
              {
                *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
              }

              selfCopy7 = self;
              objc_sync_enter(selfCopy7);
              activeSession = selfCopy7->_activeSession;
              selfCopy7->_activeSession = 0;

              objc_sync_exit(selfCopy7);
              v57 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                if (error)
                {
                  v58 = *error;
                }

                else
                {
                  v58 = 0;
                }

                *buf = 138412802;
                selfCopy11 = selfCopy7;
                v75 = 2080;
                v76 = "[CMContinuityCaptureSessionStateManager _startSessionWithDevice:forTransportType:validateTransport:initiatedOnCommunalDevice:micOnly:outError:]";
                v77 = 2114;
                *v78 = v58;
                _os_log_impl(&dword_242545000, v57, OS_LOG_TYPE_DEFAULT, "%@ %s Failed to start session error %{public}@", buf, 0x20u);
              }

LABEL_54:
              v33 = 0;
              goto LABEL_55;
            }
          }
        }

        v59 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
        deviceIdentifier3 = [v34 deviceIdentifier];
        uUIDString3 = [deviceIdentifier3 UUIDString];
        [v59 unscheduleNotificationForDeviceIdentifier:? type:? clearHistory:?];
      }

      activeSession7 = [(CMContinuityCaptureSessionStateManager *)self activeSession];

      if (activeSession7)
      {
        v63 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(&v63->super, OS_LOG_TYPE_DEFAULT))
        {
          activeSession8 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
          *buf = 138412546;
          selfCopy11 = self;
          v75 = 2114;
          v76 = activeSession8;
          _os_log_impl(&dword_242545000, &v63->super, OS_LOG_TYPE_DEFAULT, "%@ Connect to active session %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v63 = [CMContinuityCaptureActiveSession initWithDevice:"initWithDevice:transport:initiatedOnCommunalDevice:micOnly:" transport:? initiatedOnCommunalDevice:? micOnly:?];
        if (v63)
        {
          selfCopy9 = self;
          objc_sync_enter(selfCopy9);
          objc_storeStrong(&selfCopy9->_activeSession, v63);
          objc_sync_exit(selfCopy9);
        }

        v66 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          activeSession9 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
          *buf = 138412546;
          selfCopy11 = self;
          v75 = 2114;
          v76 = activeSession9;
          _os_log_impl(&dword_242545000, v66, OS_LOG_TYPE_DEFAULT, "%@ Activate session %{public}@", buf, 0x16u);
        }
      }

      v33 = 1;
      goto LABEL_46;
    }

    v68 = CMContinuityCaptureLog(0);
    v39 = v72;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy11 = self;
      v75 = 2082;
      v76 = "[CMContinuityCaptureSessionStateManager _startSessionWithDevice:forTransportType:validateTransport:initiatedOnCommunalDevice:micOnly:outError:]";
      v77 = 2114;
      *v78 = deviceCopy;
      _os_log_impl(&dword_242545000, v68, OS_LOG_TYPE_DEFAULT, "%@ %{public}s device %{public}@ unavailable", buf, 0x20u);
    }

    errorCopy2 = error;
    if (!error)
    {
      goto LABEL_54;
    }

LABEL_50:
    v33 = 0;
    *errorCopy2 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    goto LABEL_55;
  }

  v33 = 1;
  v34 = deviceCopy;
LABEL_46:
  v39 = v72;
LABEL_55:

  return v33;
}

- (void)stopCurrentSession:(id)session syncOnOwnedQueue:(BOOL)queue
{
  sessionCopy = session;
  if (queue)
  {
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__CMContinuityCaptureSessionStateManager_stopCurrentSession_syncOnOwnedQueue___block_invoke;
    v8[3] = &unk_278D5C008;
    v8[4] = self;
    v9 = sessionCopy;
    dispatch_async_and_wait(queue, v8);
  }

  else
  {
    [(CMContinuityCaptureSessionStateManager *)self _stopCurrentSession:?];
  }
}

- (void)_stopCurrentSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[CMContinuityCaptureDiscoverySession sharedInstance];
  [v5 discardUserSelectedDeviceIfApplicableWithReason:?];

  v6 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activeSession = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    v16 = 138413058;
    selfCopy = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureSessionStateManager _stopCurrentSession:]";
    v20 = 2114;
    v21 = activeSession;
    v22 = 2114;
    v23 = sessionCopy;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s Active session %{public}@ reason %{public}@", &v16, 0x2Au);
  }

  activeSession2 = [(CMContinuityCaptureSessionStateManager *)self activeSession];

  if (activeSession2)
  {
    activeSession3 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
    shieldSessionID = [activeSession3 shieldSessionID];

    if (shieldSessionID)
    {
      activeSession4 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
      device = [activeSession4 device];
      activeSession5 = [(CMContinuityCaptureSessionStateManager *)self activeSession];
      [activeSession5 transport];
      [device relayUserDisconnectForTransport:? reason:? shieldSessionID:?];
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    activeSession = selfCopy2->_activeSession;
    selfCopy2->_activeSession = 0;

    objc_sync_exit(selfCopy2);
  }
}

- (CMContinuityCaptureSessionStateManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = CMContinuityCaptureSessionStateManager;
  v6 = [(CMContinuityCaptureSessionStateManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    dispatch_queue_set_specific(v7->_queue, v7, v7, 0);
    v7->_sessionTerminationGracePeriodInSec = FigGetCFPreferenceNumberWithDefault();
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingStopCompletionDevices = v7->_pendingStopCompletionDevices;
    v7->_pendingStopCompletionDevices = strongToStrongObjectsMapTable;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeStreamDevicesByEntity = v7->_activeStreamDevicesByEntity;
    v7->_activeStreamDevicesByEntity = v10;

    v12 = [MEMORY[0x277CCAA50] hashTableWithOptions:?];
    skippedStopStreamByDevices = v7->_skippedStopStreamByDevices;
    v7->_skippedStopStreamByDevices = v12;

    v14 = +[CMContinuityCaptureDiscoverySession sharedInstance];
    [v14 addObserver:? forKeyPath:? options:? context:?];

    v15 = v7;
  }

  return v7;
}

@end