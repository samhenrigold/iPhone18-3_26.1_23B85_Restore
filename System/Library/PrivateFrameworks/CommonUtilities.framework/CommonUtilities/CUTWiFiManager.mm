@interface CUTWiFiManager
+ (id)sharedInstance;
- (BOOL)_isPrimaryCellular;
- (BOOL)autoAssociateWiFi;
- (BOOL)hasWiFiAutoAssociationClientToken:(id)token;
- (BOOL)hasWoWClient:(id)client;
- (BOOL)isHostingWiFiHotSpot;
- (BOOL)isWiFiAssociated;
- (BOOL)isWiFiCaptive;
- (BOOL)isWiFiEnabled;
- (BOOL)isWoWEnabled;
- (BOOL)willTryToAutoAssociateWiFiNetwork;
- (BOOL)willTryToSearchForWiFiNetwork;
- (CUTWiFiManager)init;
- (NSNumber)wiFiScaledRSSI;
- (NSNumber)wiFiScaledRate;
- (NSNumber)wiFiSignalStrength;
- (NSString)currentSSID;
- (id)_ssidFromNetwork:(__WiFiNetwork *)network;
- (void)_adjustWiFiAutoAssociation;
- (void)_adjustWiFiAutoAssociationLocked;
- (void)_adjustWoWState;
- (void)_createDynamicStore;
- (void)_handleDeviceAttachedCallback;
- (void)_handleDevicePowerCallback;
- (void)_handleHostAPStateChangedCallback;
- (void)_handlePotentialDeviceChange:(__WiFiDeviceClient *)change;
- (void)_performBackgroundInit;
- (void)_performCurrentNetworkBlock:(id)block withDevice:(__WiFiDeviceClient *)device async:(BOOL)async;
- (void)_performDeviceBlock:(id)block;
- (void)_performDeviceBlock:(id)block useCache:(BOOL)cache;
- (void)_performPowerReading;
- (void)_setCurrentNetwork:(__WiFiNetwork *)network;
- (void)_setupWifiNotifications;
- (void)_threadedMain;
- (void)_updateInitialWiFiState;
- (void)_updateIsWiFiAssociatedAsync:(BOOL)async;
- (void)_updateIsWiFiEnabled;
- (void)addDelegate:(id)delegate;
- (void)addWiFiAutoAssociationClientToken:(id)token;
- (void)addWoWClient:(id)client;
- (void)currentWiFiNetworkPowerUsageWithCompletion:(id)completion;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
- (void)removeWiFiAutoAssociationClientToken:(id)token;
- (void)removeWoWClient:(id)client;
- (void)setCurrentNetwork:(void *)network;
- (void)showNetworkOptions;
@end

@implementation CUTWiFiManager

+ (id)sharedInstance
{
  if (qword_1ED4AE458 != -1)
  {
    sub_1B2322BD8();
  }

  v3 = qword_1ED4AE438;

  return v3;
}

- (BOOL)isWiFiEnabled
{
  objc_msgSend_lock(self->_lock, a2, v2);
  isWifiEnabled = self->_isWifiEnabled;
  objc_msgSend_unlock(self->_lock, v5, v6);
  return isWifiEnabled;
}

- (BOOL)isWiFiAssociated
{
  v14 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(self->_lock, a2, v2);
  currentNetwork = self->_currentNetwork;
  objc_msgSend_unlock(self->_lock, v5, v6);
  v9 = objc_msgSend_network(CUTLog, v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (currentNetwork)
    {
      v10 = @"YES";
    }

    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_1B2321000, v9, OS_LOG_TYPE_DEFAULT, "is WiFi associated? %@", &v12, 0xCu);
  }

  return currentNetwork != 0;
}

- (BOOL)isWiFiCaptive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B232300C;
  v4[3] = &unk_1E7B210B0;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend__performCurrentNetworkBlock_(self, a2, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)_isPrimaryCellular
{
  objc_msgSend_lock(self->_lock, a2, v2);
  isPrimaryCellularCached = self->_isPrimaryCellularCached;
  objc_msgSend_unlock(self->_lock, v5, v6);
  return isPrimaryCellularCached;
}

- (void)_adjustWiFiAutoAssociationLocked
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(self->_lock, a2, v2);
  if (self->_wifiManager)
  {
    v8 = objc_msgSend_autoAssociateWiFi(self, v4, v5);
    if (v8)
    {
      if (objc_msgSend_autoAssociateWiFiAsForegroundClient(self, v6, v7))
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    if (WiFiManagerClientGetType() != v9)
    {
      v13 = objc_msgSend_network(CUTLog, v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "disabling";
        wiFiAutoAssociationTokens = self->_wiFiAutoAssociationTokens;
        if (v8)
        {
          v14 = "enabling";
        }

        v16 = 136446467;
        v17 = v14;
        v18 = 2113;
        v19 = wiFiAutoAssociationTokens;
        _os_log_impl(&dword_1B2321000, v13, OS_LOG_TYPE_DEFAULT, "Interface manager: %{public}s WiFi association on wake (client tokens: %{private}@)", &v16, 0x16u);
      }

      WiFiManagerClientSetType();
    }

    objc_msgSend_unlock(self->_lock, v11, v12);
  }

  else
  {
    lock = self->_lock;

    objc_msgSend_unlock(lock, v4, v5);
  }
}

- (BOOL)autoAssociateWiFi
{
  objc_msgSend_lock(self->_lock, a2, v2);
  v6 = objc_msgSend_count(self->_wiFiAutoAssociationTokens, v4, v5) != 0;
  objc_msgSend_unlock(self->_lock, v7, v8);
  return v6;
}

- (BOOL)isHostingWiFiHotSpot
{
  if (objc_msgSend_isWiFiEnabled(self, a2, v2))
  {
    objc_msgSend_lock(self->_lock, v4, v5);
    isHostingHotSpot = self->_isHostingHotSpot;
    objc_msgSend_unlock(self->_lock, v7, v8);
  }

  else
  {
    return 0;
  }

  return isHostingHotSpot;
}

- (void)_threadedMain
{
  v4 = objc_msgSend_currentRunLoop(MEMORY[0x1E695DFD0], a2, v2);
  wifiRunLoop = self->_wifiRunLoop;
  self->_wifiRunLoop = v4;

  memset(&context, 0, sizeof(context));
  self->_runLoopSource = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, self->_runLoopSource, *MEMORY[0x1E695E8E0]);
  while (1)
  {
    v7 = objc_autoreleasePoolPush();
    CFRunLoopRun();
    objc_autoreleasePoolPop(v7);
  }
}

- (void)_performBackgroundInit
{
  v31 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(self->_lock, a2, v2);
  v6 = objc_msgSend_network(CUTLog, v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B2321000, v6, OS_LOG_TYPE_DEFAULT, "Creating wifi manager", buf, 2u);
  }

  objc_msgSend__setupWifiNotifications(self, v7, v8);
  v11 = objc_msgSend_network(CUTLog, v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    wifiManager = self->_wifiManager;
    wifiDevice = self->_wifiDevice;
    *buf = 138543619;
    v28 = wifiManager;
    v29 = 2113;
    v30 = wifiDevice;
    _os_log_impl(&dword_1B2321000, v11, OS_LOG_TYPE_DEFAULT, " => Done: %{public}@   (Current device: %{private}@)", buf, 0x16u);
  }

  objc_msgSend__createDynamicStore(self, v14, v15);
  objc_msgSend_unlock(self->_lock, v16, v17);
  v20 = objc_msgSend_network(CUTLog, v18, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[CUTWiFiManager _performBackgroundInit]";
    _os_log_impl(&dword_1B2321000, v20, OS_LOG_TYPE_DEFAULT, "%s Running network block sync", buf, 0xCu);
  }

  objc_msgSend__updateIsWiFiAssociatedAsync_(self, v21, 0);
  v24 = objc_msgSend_network(CUTLog, v22, v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B2321000, v24, OS_LOG_TYPE_DEFAULT, " => Done running network block", buf, 2u);
  }

  v25 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1B232AD40;
  handler[3] = &unk_1E7B20F20;
  handler[4] = self;
  notify_register_dispatch("com.apple.wifi.linkdidchange", &self->_linkToken, v25, handler);
}

- (CUTWiFiManager)init
{
  v22.receiver = self;
  v22.super_class = CUTWiFiManager;
  v2 = [(CUTWiFiManager *)&v22 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = dispatch_queue_create("com.apple.cutwifimanager.callbacks", 0);
    incomingCallbacksQueue = v2->_incomingCallbacksQueue;
    v2->_incomingCallbacksQueue = v5;

    v7 = objc_alloc(MEMORY[0x1E696AF00]);
    v9 = objc_msgSend_initWithTarget_selector_object_(v7, v8, v2, sel__threadedMain, 0);
    wifiThread = v2->_wifiThread;
    v2->_wifiThread = v9;

    objc_msgSend_setName_(v2->_wifiThread, v11, @"CommonUtilities-WiFi-Thread");
    objc_msgSend_start(v2->_wifiThread, v12, v13);
    objc_msgSend_lock(v2->_lock, v14, v15);
    v2->_wifiManager = WiFiManagerClientCreate();
    objc_msgSend__updateInitialWiFiState(v2, v16, v17);
    objc_msgSend_unlock(v2->_lock, v18, v19);
    objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(v2, v20, sel__performBackgroundInit, v2->_wifiThread, 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_lock(self->_lock, a2, v2);
  objc_msgSend_removeAllObjects(self->_wiFiAutoAssociationTokens, v4, v5);
  objc_msgSend__adjustWiFiAutoAssociation(self, v6, v7);
  objc_msgSend__handlePotentialDeviceChange_(self, v8, 0);
  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    CFRelease(dynamicStore);
  }

  wifiDevice = self->_wifiDevice;
  if (wifiDevice)
  {
    CFRelease(wifiDevice);
  }

  wifiManager = self->_wifiManager;
  if (wifiManager)
  {
    CFRelease(wifiManager);
  }

  notify_cancel(self->_linkToken);
  runLoopSource = self->_runLoopSource;
  if (runLoopSource)
  {
    CFRunLoopSourceInvalidate(runLoopSource);
    CFRelease(self->_runLoopSource);
  }

  objc_msgSend_cancel(self->_wifiThread, v12, v13);
  objc_msgSend_unlock(self->_lock, v15, v16);
  v17.receiver = self;
  v17.super_class = CUTWiFiManager;
  [(CUTWiFiManager *)&v17 dealloc];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_msgSend_lock(self->_lock, v4, v5);
  if ((objc_msgSend_containsObject_(self->_delegateMap, v6, delegateCopy) & 1) == 0)
  {
    delegateMap = self->_delegateMap;
    if (!delegateMap)
    {
      v10 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v7, v8);
      v11 = self->_delegateMap;
      self->_delegateMap = v10;

      delegateMap = self->_delegateMap;
    }

    objc_msgSend_addObject_(delegateMap, v7, delegateCopy);
  }

  objc_msgSend_unlock(self->_lock, v7, v8);
}

- (void)removeDelegate:(id)delegate
{
  if (delegate)
  {
    lock = self->_lock;
    delegateCopy = delegate;
    objc_msgSend_lock(lock, v6, v7);
    objc_msgSend_removeObject_(self->_delegateMap, v8, delegateCopy);

    if (!objc_msgSend_count(self->_delegateMap, v9, v10))
    {
      delegateMap = self->_delegateMap;
      self->_delegateMap = 0;
    }

    v14 = self->_lock;

    objc_msgSend_unlock(v14, v11, v12);
  }
}

- (void)addWoWClient:(id)client
{
  clientCopy = client;
  objc_msgSend_lock(self->_lock, v4, v5);
  v8 = objc_msgSend_count(self->_wowClients, v6, v7);
  if ((objc_msgSend_containsObject_(self->_wowClients, v9, clientCopy) & 1) == 0)
  {
    wowClients = self->_wowClients;
    if (!wowClients)
    {
      v13 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v10, v11);
      v14 = self->_wowClients;
      self->_wowClients = v13;

      wowClients = self->_wowClients;
    }

    objc_msgSend_addObject_(wowClients, v10, clientCopy);
    if (!v8)
    {
      objc_msgSend__adjustWoWState(self, v10, v11);
    }
  }

  objc_msgSend_unlock(self->_lock, v10, v11);
}

- (void)removeWoWClient:(id)client
{
  lock = self->_lock;
  clientCopy = client;
  objc_msgSend_lock(lock, v6, v7);
  v10 = objc_msgSend_count(self->_wowClients, v8, v9);
  objc_msgSend_removeObject_(self->_wowClients, v11, clientCopy);

  if (!objc_msgSend_count(self->_wowClients, v12, v13))
  {
    wowClients = self->_wowClients;
    self->_wowClients = 0;

    if (v10)
    {
      objc_msgSend__adjustWoWState(self, v14, v15);
    }
  }

  v17 = self->_lock;

  objc_msgSend_unlock(v17, v14, v15);
}

- (BOOL)hasWoWClient:(id)client
{
  lock = self->_lock;
  clientCopy = client;
  objc_msgSend_lock(lock, v6, v7);
  LOBYTE(lock) = objc_msgSend_containsObject_(self->_wowClients, v8, clientCopy);

  objc_msgSend_unlock(self->_lock, v9, v10);
  return lock;
}

- (void)_adjustWoWState
{
  if (self->_wifiManager)
  {
    v4 = objc_msgSend_count(self->_wowClients, a2, v2) != 0;
    wifiManager = self->_wifiManager;

    MEMORY[0x1EEE1E7B8](wifiManager, v4);
  }
}

- (void)_setupWifiNotifications
{
  if (self->_wifiManager)
  {
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    WiFiManagerClientRegisterNotificationCallback();
    Current = CFRunLoopGetCurrent();
    WiFiManagerClientScheduleWithRunLoop();
    CFRunLoopWakeUp(Current);

    objc_msgSend__updateInitialWiFiState(self, v5, v6);
  }

  else
  {
    v7 = objc_msgSend_network(CUTLog, a2, v2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331B1C();
    }
  }
}

- (void)_updateInitialWiFiState
{
  if (self->_wifiManager)
  {
    objc_msgSend_lock(self->_lock, a2, v2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B232B480;
    v12[3] = &unk_1E7B20F48;
    v12[4] = self;
    objc_msgSend__performDeviceBlock_useCache_(self, v4, v12, 0);
    objc_msgSend__adjustWoWState(self, v5, v6);
    objc_msgSend__adjustWiFiAutoAssociationLocked(self, v7, v8);
    objc_msgSend_unlock(self->_lock, v9, v10);
  }

  else
  {
    v11 = objc_msgSend_network(CUTLog, a2, v2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331B1C();
    }
  }
}

- (void)_createDynamicStore
{
  v3 = objc_msgSend_weakRefWithObject_(CUTWeakReference, a2, self);
  context.version = 0;
  context.info = v3;
  context.retain = MEMORY[0x1E695D7C8];
  context.release = MEMORY[0x1E695D7C0];
  context.copyDescription = 0;
  v4 = *MEMORY[0x1E695E480];
  dynamicStore = SCDynamicStoreCreate(*MEMORY[0x1E695E480], @"com.apple.cutwifimanager", sub_1B232B648, &context);
  self->_dynamicStore = dynamicStore;
  if (!dynamicStore)
  {
    v8 = objc_msgSend_network(CUTLog, v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331B90();
    }

    dynamicStore = self->_dynamicStore;
  }

  SCDynamicStoreSetDispatchQueue(dynamicStore, self->_incomingCallbacksQueue);
  v9 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  v11 = CFArrayCreateMutable(v4, 0, v9);
  v12 = *MEMORY[0x1E69822F0];
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v4, *MEMORY[0x1E69822F0], *MEMORY[0x1E6982338]);
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  CFRelease(NetworkGlobalEntity);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v4, v12, *MEMORY[0x1E69822E0], *MEMORY[0x1E6982320]);
  CFArrayAppendValue(v11, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  SCDynamicStoreSetNotificationKeys(self->_dynamicStore, Mutable, v11);
  CFRelease(Mutable);
  CFRelease(v11);
}

- (BOOL)willTryToAutoAssociateWiFiNetwork
{
  if (!objc_msgSend_isWiFiEnabled(self, a2, v2))
  {
    return 0;
  }

  objc_msgSend_lock(self->_lock, v4, v5);
  if (!self->_wifiManager || (AskToJoinState = WiFiManagerClientGetAskToJoinState(), (v9 = WiFiManagerClientCopyEnabledNetworks()) == 0))
  {
    objc_msgSend_unlock(self->_lock, v6, v7);
    return 0;
  }

  v10 = v9;
  v11 = AskToJoinState != 0;
  Count = CFArrayGetCount(v9);
  CFRelease(v10);
  objc_msgSend_unlock(self->_lock, v13, v14);
  if (!Count)
  {
    return 0;
  }

  return v11;
}

- (BOOL)willTryToSearchForWiFiNetwork
{
  if (!objc_msgSend_isWiFiEnabled(self, a2, v2))
  {
    return 0;
  }

  objc_msgSend_lock(self->_lock, v4, v5);
  if (self->_wifiManager)
  {
    v8 = WiFiManagerClientGetAskToJoinState() != 0;
  }

  else
  {
    v8 = 0;
  }

  objc_msgSend_unlock(self->_lock, v6, v7);
  return v8;
}

- (NSNumber)wiFiSignalStrength
{
  objc_msgSend_lock(self->_lock, a2, v2);
  if (self->_wifiManager)
  {
    v6 = WiFiManagerClientCopyDevices();
    v9 = v6;
    if (v6 && objc_msgSend_count(v6, v7, v8) && (v10 = objc_msgSend_objectAtIndex_(v9, v7, 0)) != 0)
    {
      v11 = v10;
      CFRetain(v10);
      v12 = WiFiDeviceClientCopyProperty();
      CFRelease(v11);
    }

    else
    {
      v12 = 0;
    }

    objc_msgSend_unlock(self->_lock, v7, v8);
  }

  else
  {
    objc_msgSend_unlock(self->_lock, v4, v5);
    v12 = 0;
  }

  return v12;
}

- (NSNumber)wiFiScaledRSSI
{
  objc_msgSend_lock(self->_lock, a2, v2);
  if (self->_wifiManager)
  {
    v6 = WiFiManagerClientCopyDevices();
    v9 = v6;
    if (v6 && objc_msgSend_count(v6, v7, v8) && (v10 = objc_msgSend_objectAtIndex_(v9, v7, 0)) != 0)
    {
      v11 = v10;
      CFRetain(v10);
      v12 = WiFiDeviceClientCopyProperty();
      CFRelease(v11);
    }

    else
    {
      v12 = 0;
    }

    objc_msgSend_unlock(self->_lock, v7, v8);
  }

  else
  {
    objc_msgSend_unlock(self->_lock, v4, v5);
    v12 = 0;
  }

  return v12;
}

- (NSNumber)wiFiScaledRate
{
  objc_msgSend_lock(self->_lock, a2, v2);
  if (self->_wifiManager)
  {
    v6 = WiFiManagerClientCopyDevices();
    v9 = v6;
    if (v6 && objc_msgSend_count(v6, v7, v8) && (v10 = objc_msgSend_objectAtIndex_(v9, v7, 0)) != 0)
    {
      v11 = v10;
      CFRetain(v10);
      v12 = WiFiDeviceClientCopyProperty();
      CFRelease(v11);
    }

    else
    {
      v12 = 0;
    }

    objc_msgSend_unlock(self->_lock, v7, v8);
  }

  else
  {
    objc_msgSend_unlock(self->_lock, v4, v5);
    v12 = 0;
  }

  return v12;
}

- (void)_updateIsWiFiAssociatedAsync:(BOOL)async
{
  asyncCopy = async;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B232BCDC;
  v7[3] = &unk_1E7B20F98;
  v7[4] = self;
  v5 = MEMORY[0x1B2746240](v7, a2);
  objc_msgSend__performCurrentNetworkBlock_withDevice_async_(self, v6, v5, 0, asyncCopy);
}

- (void)_updateIsWiFiEnabled
{
  *&self->_isHostingHotSpot = 0;
  if (self->_wifiManager)
  {
    Power = WiFiManagerClientGetPower();
    v4 = WiFiManagerClientCopyProperty();
    v9 = objc_msgSend_BOOLValue(v4, v5, v6);
    if (v4)
    {
      CFRelease(v4);
    }

    v10 = (Power != 0) & v9;
    self->_isWifiEnabled = v10;
    v11 = v10 && WiFiManagerClientGetMISState() != 0;
    self->_isHostingHotSpot = v11;
    v12 = objc_msgSend_network(CUTLog, v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B2321000, v12, OS_LOG_TYPE_DEFAULT, "Running network block async", v14, 2u);
    }

    objc_msgSend__updateIsWiFiAssociatedAsync_(self, v13, 1);
  }
}

- (void)_performDeviceBlock:(id)block useCache:(BOOL)cache
{
  cacheCopy = cache;
  blockCopy = block;
  if (!blockCopy)
  {
    goto LABEL_16;
  }

  v9 = blockCopy;
  v21 = objc_msgSend_copy(blockCopy, v7, v8);

  objc_msgSend_lock(self->_lock, v10, v11);
  if (cacheCopy)
  {
    wifiDevice = self->_wifiDevice;
    if (wifiDevice)
    {
      CFRetain(self->_wifiDevice);
    }

    goto LABEL_13;
  }

  if (self->_wifiManager)
  {
    v15 = WiFiManagerClientCopyDevices();
    v18 = v15;
    if (v15 && objc_msgSend_count(v15, v16, v17))
    {
      v20 = objc_msgSend_objectAtIndex_(v18, v19, 0);
      wifiDevice = v20;
      if (v20)
      {
        CFRetain(v20);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  wifiDevice = 0;
LABEL_12:

LABEL_13:
  objc_msgSend_unlock(self->_lock, v12, v13);
  v21[2](v21, wifiDevice);
  if (wifiDevice)
  {
    CFRelease(wifiDevice);
  }

  blockCopy = v21;
LABEL_16:
}

- (void)_performDeviceBlock:(id)block
{
  blockCopy = block;
  v4 = objc_autoreleasePoolPush();
  objc_msgSend__performDeviceBlock_useCache_(self, v5, blockCopy, 1);
  objc_autoreleasePoolPop(v4);
}

- (void)_performCurrentNetworkBlock:(id)block withDevice:(__WiFiDeviceClient *)device async:(BOOL)async
{
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B232C3C4;
    v13[3] = &unk_1E7B20FE8;
    v13[4] = self;
    asyncCopy = async;
    v14 = blockCopy;
    v11 = MEMORY[0x1B2746240](v13);
    if (device)
    {
      v12 = objc_autoreleasePoolPush();
      (v11)[2](v11, device);
      objc_autoreleasePoolPop(v12);
    }

    else
    {
      objc_msgSend__performDeviceBlock_(self, v10, v11);
    }
  }
}

- (id)_ssidFromNetwork:(__WiFiNetwork *)network
{
  if (network)
  {
    SSID = WiFiNetworkGetSSID();
  }

  else
  {
    SSID = 0;
  }

  return SSID;
}

- (void)_handleDevicePowerCallback
{
  objc_msgSend_lock(self->_lock, a2, v2);
  objc_msgSend__updateIsWiFiEnabled(self, v4, v5);
  lock = self->_lock;

  objc_msgSend_unlock(lock, v6, v7);
}

- (void)_handleDeviceAttachedCallback
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1B232C890;
  v2[3] = &unk_1E7B20F48;
  v2[4] = self;
  objc_msgSend__performDeviceBlock_useCache_(self, a2, v2, 0);
}

- (void)_handleHostAPStateChangedCallback
{
  objc_msgSend_lock(self->_lock, a2, v2);
  objc_msgSend__updateIsWiFiEnabled(self, v4, v5);
  lock = self->_lock;

  objc_msgSend_unlock(lock, v6, v7);
}

- (void)_handlePotentialDeviceChange:(__WiFiDeviceClient *)change
{
  v28 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(self->_lock, a2, change);
  wifiDevice = self->_wifiDevice;
  if (wifiDevice == change)
  {
    self->_isWakeOnWiFiSupported = 1;
  }

  else
  {
    if (wifiDevice)
    {
      WiFiDeviceClientRegisterDeviceAvailableCallback();
      WiFiDeviceClientRegisterExtendedLinkCallback();
      WiFiDeviceClientRegisterHostApStateChangedCallback();
      CFRelease(self->_wifiDevice);
      self->_wifiDevice = 0;
    }

    if (change)
    {
      self->_wifiDevice = change;
      CFRetain(change);
      self->_isWakeOnWiFiSupported = WiFiManagerClientGetWoWCapability() != 0;
      objc_msgSend__updateIsWiFiEnabled(self, v8, v9);
      WiFiDeviceClientRegisterDeviceAvailableCallback();
      WiFiDeviceClientRegisterExtendedLinkCallback();
      WiFiDeviceClientRegisterPowerCallback();
      WiFiDeviceClientRegisterHostApStateChangedCallback();
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = self->_delegateMap;
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v27, 16);
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        v15 = MEMORY[0x1E69E96A0];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_1B232CCA0;
            block[3] = &unk_1E7B20D70;
            block[4] = v17;
            block[5] = self;
            dispatch_async(v15, block);
          }

          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v18, &v23, v27, 16);
        }

        while (v13);
      }
    }

    else
    {
      self->_isWifiEnabled = 0;
      v19 = objc_msgSend_network(CUTLog, v5, v6);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_1B2321000, v19, OS_LOG_TYPE_DEFAULT, "Running network block async", v21, 2u);
      }

      objc_msgSend__updateIsWiFiAssociatedAsync_(self, v20, 1);
    }
  }

  objc_msgSend_unlock(self->_lock, v5, v6);
}

- (void)setCurrentNetwork:(void *)network
{
  v12 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(self->_lock, a2, network);
  currentNetwork = self->_currentNetwork;
  if (currentNetwork != network)
  {
    if (currentNetwork)
    {
      CFRelease(currentNetwork);
    }

    self->_currentNetwork = network;
    if (network)
    {
      CFRetain(network);
    }

    v8 = objc_msgSend_network(CUTLog, v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_currentNetwork;
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&dword_1B2321000, v8, OS_LOG_TYPE_DEFAULT, "_currentNetwork is %p", &v10, 0xCu);
    }
  }

  objc_msgSend_unlock(self->_lock, v5, v6);
}

- (void)_setCurrentNetwork:(__WiFiNetwork *)network
{
  objc_msgSend_lock(self->_lock, a2, network);
  objc_msgSend_setCurrentNetwork_(self, v5, network);
  objc_msgSend__updateIsWiFiEnabled(self, v6, v7);
  lock = self->_lock;

  objc_msgSend_unlock(lock, v8, v9);
}

- (void)_performPowerReading
{
  objc_msgSend_lock(self->_lock, a2, v2);
  v6 = objc_msgSend_count(self->_delegateMap, v4, v5);
  objc_msgSend_unlock(self->_lock, v7, v8);
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B232CECC;
    v10[3] = &unk_1E7B21010;
    v10[4] = self;
    objc_msgSend_currentWiFiNetworkPowerUsageWithCompletion_(self, v9, v10);
  }
}

- (void)currentWiFiNetworkPowerUsageWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B232D188;
    v7[3] = &unk_1E7B21060;
    v7[4] = self;
    v8 = completionCopy;
    objc_msgSend__performDeviceBlock_(self, v6, v7);
  }
}

- (NSString)currentSSID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B23231E0;
  v9 = sub_1B2322E2C;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B232D72C;
  v4[3] = &unk_1E7B21088;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend__performCurrentNetworkBlock_(self, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_adjustWiFiAutoAssociation
{
  objc_msgSend_lock(self->_lock, a2, v2);
  objc_msgSend__adjustWiFiAutoAssociationLocked(self, v4, v5);
  lock = self->_lock;

  objc_msgSend_unlock(lock, v6, v7);
}

- (BOOL)hasWiFiAutoAssociationClientToken:(id)token
{
  if (!token)
  {
    return 0;
  }

  lock = self->_lock;
  tokenCopy = token;
  objc_msgSend_lock(lock, v6, v7);
  LOBYTE(lock) = objc_msgSend_containsObject_(self->_wiFiAutoAssociationTokens, v8, tokenCopy);

  objc_msgSend_unlock(self->_lock, v9, v10);
  return lock;
}

- (void)addWiFiAutoAssociationClientToken:(id)token
{
  v23 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    objc_msgSend_lock(self->_lock, v4, v5);
    wiFiAutoAssociationTokens = self->_wiFiAutoAssociationTokens;
    if (!wiFiAutoAssociationTokens)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v10 = self->_wiFiAutoAssociationTokens;
      self->_wiFiAutoAssociationTokens = v9;

      wiFiAutoAssociationTokens = self->_wiFiAutoAssociationTokens;
    }

    objc_msgSend_addObject_(wiFiAutoAssociationTokens, v7, tokenCopy);
    v13 = objc_msgSend_network(CUTLog, v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_wiFiAutoAssociationTokens;
      v19 = 138478083;
      v20 = tokenCopy;
      v21 = 2113;
      v22 = v14;
      _os_log_impl(&dword_1B2321000, v13, OS_LOG_TYPE_DEFAULT, "Client token: %{private}@ was added to WiFi association clients (%{private}@)", &v19, 0x16u);
    }

    objc_msgSend__adjustWiFiAutoAssociationLocked(self, v15, v16);
    objc_msgSend_unlock(self->_lock, v17, v18);
  }
}

- (void)removeWiFiAutoAssociationClientToken:(id)token
{
  v20 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    objc_msgSend_lock(self->_lock, v4, v5);
    v9 = objc_msgSend_network(CUTLog, v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      wiFiAutoAssociationTokens = self->_wiFiAutoAssociationTokens;
      v16 = 138478083;
      v17 = tokenCopy;
      v18 = 2113;
      v19 = wiFiAutoAssociationTokens;
      _os_log_impl(&dword_1B2321000, v9, OS_LOG_TYPE_DEFAULT, "Client token: %{private}@ being removed from WiFi association clients (%{private}@)", &v16, 0x16u);
    }

    objc_msgSend_removeObject_(self->_wiFiAutoAssociationTokens, v11, tokenCopy);
    objc_msgSend__adjustWiFiAutoAssociationLocked(self, v12, v13);
    objc_msgSend_unlock(self->_lock, v14, v15);
  }
}

- (void)showNetworkOptions
{
  objc_msgSend_lock(self->_lock, a2, v2);
  if (self->_wifiManager)
  {
    WiFiManagerClientSetAssociationMode();
    lock = self->_lock;

    objc_msgSend_unlock(lock, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_network(CUTLog, v4, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331BC4();
    }

    objc_msgSend_unlock(self->_lock, v10, v11);
  }
}

- (BOOL)isWoWEnabled
{
  objc_msgSend_lock(self->_lock, a2, v2);
  isWakeOnWiFiEnabled = self->_isWakeOnWiFiEnabled;
  objc_msgSend_unlock(self->_lock, v5, v6);
  return isWakeOnWiFiEnabled;
}

@end