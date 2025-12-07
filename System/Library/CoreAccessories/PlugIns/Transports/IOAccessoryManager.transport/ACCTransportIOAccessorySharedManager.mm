@interface ACCTransportIOAccessorySharedManager
+ (id)IOAccessoryClassStringForIOAccessoryClassType:(int)type;
+ (id)sharedManager;
+ (int)IOAccessoryClassTypeForIOAccessoryClassString:(id)string;
- (ACCTransportIOAccessorySharedManager)init;
- (ACCTransportPluginIOAccessoryManager)delegate;
- (BOOL)IOAccessoryEADataArrived:(id)arrived eaEndpointUUID:(id)d;
- (BOOL)IOAccessoryOOBPairingDataArrived:(id)arrived endpointUUID:(id)d;
- (BOOL)IOAccessoryOOBPairingDataFinishedForEndpointUUID:(id)d;
- (BOOL)IOAccessoryOOBPairingDataStartedForEndpointUUID:(id)d;
- (BOOL)IOAccessoryOOBPairingInfoArrived:(id)arrived endpointUUID:(id)d;
- (BOOL)IOAccessoryPortDataArrived:(id)arrived endpointUUID:(id)d;
- (BOOL)_addACCTransportToManager:(id)manager;
- (BOOL)_managerForConnectionUUIDHasActiveEndpoint:(id)endpoint;
- (BOOL)configureAccessoryPowerMode:(int)mode forConnectionUUID:(id)d;
- (BOOL)connectedThroughAdapter:(id)adapter;
- (BOOL)isBatteryPackModeEnabled:(id)enabled;
- (BOOL)isPowerDuringSleepEnabled:(id)enabled;
- (BOOL)isPowerDuringSleepSupported:(id)supported;
- (BOOL)openEASession:(id)session withEAEndpointUUID:(id)d;
- (BOOL)resetAccessoryBaseCurrent:(id)current;
- (BOOL)setAccessoryRequestedCurrent:(unsigned int)current forConnectionUUID:(id)d;
- (BOOL)setAccessoryUsedCurrent:(unsigned int)current forConnectionUUID:(id)d;
- (BOOL)setBatteryPackMode:(BOOL)mode forConnectionUUID:(id)d forceResponse:(BOOL)response;
- (BOOL)setFeaturesFromAuthStatus:(int)status andAuthCert:(id)cert certType:(int)type forConnectionUUID:(id)d withConnectionType:(int)connectionType;
- (BOOL)setPowerDuringSleepEnabled:(BOOL)enabled forConnectionUUID:(id)d;
- (BOOL)setProperties:(id)properties forManager:(id)manager;
- (BOOL)setUSBCurrentLimitBase:(unsigned int)base forConnectionUUID:(id)d forceResponse:(BOOL)response;
- (BOOL)setUSBCurrentOffset:(int)offset forConnectionUUID:(id)d;
- (BOOL)setUSBMode:(int)mode forConnectionUUID:(id)d;
- (BOOL)setUSBMode:(int)mode forEndpointUUID:(id)d;
- (BOOL)shouldEnableDirectAWCAuth;
- (id)IOAccessoryPortArrived:(id)arrived withEndpointProtocol:(int)protocol publish:(BOOL)publish;
- (id)_basePortForConnectionUUID:(id)d;
- (id)_basePortForEndpointUUID:(id)d;
- (id)_managerContainingBase:(id)base;
- (id)_managerForBase:(id)base;
- (id)_managerForBaseEndpointUUID:(id)d;
- (id)_managerForConnectionUUID:(id)d;
- (id)_managerForIOService:(unsigned int)service shouldCreateNewService:(BOOL)newService;
- (id)_portForManagerMatchingPrimaryPort:(id)port;
- (id)basePortForService:(unsigned int)service;
- (id)digitalIDDataForUpstreamConnection:(id)connection;
- (id)managerForIOAccessoryManagerService:(unsigned int)service;
- (int)CableType:(id)type;
- (int)USBModeForConnectionUUID:(id)d;
- (int)USBModeForEndpointUUID:(id)d;
- (int)_connectionTypeForIOAccessoryPort:(id)port;
- (int)_endpointTransportTypeForIOAccessoryPort:(id)port;
- (unsigned)USBChargingVoltageInmV:(id)v;
- (unsigned)USBCurrentLimitBaseInmA:(id)a;
- (unsigned)USBCurrentLimitInmA:(id)a;
- (unsigned)USBCurrentLimitOffsetInmA:(id)a;
- (unsigned)accessoryChargingCurrentInmA:(id)a;
- (unsigned)accessoryPowerModeCurrentLimitInmA:(int)a forConnectionUUID:(id)d;
- (unsigned)sleepPowerCurrentLimitInmA:(id)a;
- (void)IOAccessoryAuthCPServiceArrived:(unsigned int)arrived;
- (void)IOAccessoryAuthCPServiceAuthStatusChanged:(int)changed authType:(int)type authCert:(id)cert certType:(int)certType authCTA:(BOOL)a service:(unsigned int)service;
- (void)IOAccessoryAuthCPServiceTerminated:(unsigned int)terminated;
- (void)IOAccessoryConfigStreamMessageArrived:(id)arrived endpointUUID:(id)d;
- (void)IOAccessoryConfigStreamServiceArrived:(unsigned int)arrived;
- (void)IOAccessoryConfigStreamServiceTerminated:(unsigned int)terminated;
- (void)IOAccessoryConfigStreamUpdateAccesssoryInfo:(id)info;
- (void)IOAccessoryEAServiceArrived:(unsigned int)arrived;
- (void)IOAccessoryEAServiceTerminated:(unsigned int)terminated;
- (void)IOAccessoryManagerResistorIDChanged:(int)changed forManager:(id)manager;
- (void)IOAccessoryManagerServiceArrived:(unsigned int)arrived;
- (void)IOAccessoryManagerServiceDetached:(unsigned int)detached;
- (void)IOAccessoryManagerServiceInfoSet:(unsigned int)set;
- (void)IOAccessoryManagerServiceTerminated:(unsigned int)terminated;
- (void)IOAccessoryManagerSupervisedTransportsRestrictedDidChange:(BOOL)change forManager:(id)manager;
- (void)IOAccessoryOOBPairingServiceArrived:(unsigned int)arrived;
- (void)IOAccessoryOOBPairingServiceTerminated:(unsigned int)terminated;
- (void)IOAccessoryPortDetach:(id)detach;
- (void)IOAccessoryPortPropertyChanged:(id)changed;
- (void)IOAccessoryPortPublish:(id)publish;
- (void)IOAccessoryPortServiceArrived:(unsigned int)arrived;
- (void)IOAccessoryPortServiceTerminated:(unsigned int)terminated;
- (void)_IOAccessoryPortDetachInternal:(id)internal;
- (void)_addIOAccessoryManagerWithIOService:(unsigned int)service;
- (void)_clearChildPortEndpointsForManagerDisconnection:(id)disconnection;
- (void)_createEAEndpointForProtocol:(id)protocol andManager:(id)manager;
- (void)_createEAProtocolsForManager:(id)manager;
- (void)_createModuleConnectionAndEndpoint:(id)endpoint;
- (void)_handleRequestForIAPDPortB139B164Connected:(id)connected;
- (void)_handleRequestForPrimaryPort:(id)port;
- (void)_handleUSBHostPluginArrived:(id)arrived;
- (void)_processEAService:(unsigned int)service andPublish:(BOOL)publish;
- (void)closeEASession:(id)session;
- (void)dealloc;
- (void)handleCloseEASessionNotification:(id)notification;
- (void)handleOpenEASessionNotification:(id)notification;
- (void)lockAccessoryPorts;
- (void)resetLightningBusForEndpointWithUUID:(id)d;
- (void)shouldEnableDirectAWCAuth;
- (void)startIOACCTransportManager;
- (void)transmitData:(id)data forEndpointUUID:(id)d;
- (void)unlockAccessoryPorts;
@end

@implementation ACCTransportIOAccessorySharedManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ACCTransportIOAccessorySharedManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedInstance;

  return v2;
}

- (void)lockAccessoryPorts
{
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];
}

- (ACCTransportPluginIOAccessoryManager)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)unlockAccessoryPorts
{
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock unlock];
}

- (ACCTransportIOAccessorySharedManager)init
{
  v22.receiver = self;
  v22.super_class = ACCTransportIOAccessorySharedManager;
  v2 = [(ACCTransportIOAccessorySharedManager *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.accessoryd.ioaccmgr.listq", 0);
    listQ = v2->_listQ;
    v2->_listQ = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    allIOAccessoryManagers = v2->_allIOAccessoryManagers;
    v2->_allIOAccessoryManagers = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    allIOAccessories = v2->_allIOAccessories;
    v2->_allIOAccessories = v7;

    v9 = [[ACCTransportIOAccessoryListener alloc] initWithDelegate:v2];
    ioAccessoryListener = v2->_ioAccessoryListener;
    v2->_ioAccessoryListener = v9;

    v2->_isB139OrB164Connected = 0;
    v11 = [[ACCSettingsState alloc] initWithKey:@"EnableDirectAWCAuth" applicationID:@"com.apple.CoreAccessories" notification:@"com.apple.CoreAccessories.PreferencesDidChangeNotification" defaultValue:0 invalidValue:-1];
    enableDirectAWCAuth = v2->_enableDirectAWCAuth;
    v2->_enableDirectAWCAuth = v11;

    objc_storeWeak(&v2->_delegate, 0);
    v13 = objc_alloc_init(MEMORY[0x277CCAC60]);
    accessoryPortLock = v2->_accessoryPortLock;
    v2->_accessoryPortLock = v13;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleRequestForIAPDPortB139B164Connected_ name:*MEMORY[0x277CFD180] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__handleRequestForPrimaryPort_ name:*MEMORY[0x277CFD188] object:0];

    v2->_bIsWatch = MGGetSInt32Answer() == 6;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deferAuthCPServiceArray = v2->_deferAuthCPServiceArray;
    v2->_deferAuthCPServiceArray = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deferEAServiceArray = v2->_deferEAServiceArray;
    v2->_deferEAServiceArray = v19;
  }

  return v2;
}

- (void)dealloc
{
  dispatch_sync(self->_listQ, &__block_literal_global_5);
  listQ = self->_listQ;
  self->_listQ = 0;

  [(NSMutableSet *)self->_allIOAccessoryManagers removeAllObjects];
  allIOAccessoryManagers = self->_allIOAccessoryManagers;
  self->_allIOAccessoryManagers = 0;

  [(NSMutableSet *)self->_allIOAccessories removeAllObjects];
  allIOAccessories = self->_allIOAccessories;
  self->_allIOAccessories = 0;

  ioAccessoryListener = self->_ioAccessoryListener;
  self->_ioAccessoryListener = 0;

  accessoryPortLock = self->_accessoryPortLock;
  self->_accessoryPortLock = 0;

  deferAuthCPServiceArray = self->_deferAuthCPServiceArray;
  self->_deferAuthCPServiceArray = 0;

  deferEAServiceArray = self->_deferEAServiceArray;
  self->_deferEAServiceArray = 0;

  objc_storeWeak(&self->_delegate, 0);
  v10.receiver = self;
  v10.super_class = ACCTransportIOAccessorySharedManager;
  [(ACCTransportIOAccessorySharedManager *)&v10 dealloc];
}

- (void)startIOACCTransportManager
{
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  v4 = ServiceWithPrimaryPort;
  EnableAccessoryPowerForPortService(ServiceWithPrimaryPort, 1);
  IOObjectRelease(v4);
  v5 = dispatch_time(0, 1250000000);
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ACCTransportIOAccessorySharedManager_startIOACCTransportManager__block_invoke;
  block[3] = &unk_2789E8690;
  block[4] = self;
  dispatch_after(v5, v6, block);
}

uint64_t __66__ACCTransportIOAccessorySharedManager_startIOACCTransportManager__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 2;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__ACCTransportIOAccessorySharedManager_startIOACCTransportManager__block_invoke_cold_2();
  }

  return [*(*(a1 + 32) + 56) startListening];
}

- (id)_managerForBase:(id)base
{
  v37 = *MEMORY[0x277D85DE8];
  baseCopy = base;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke;
  block[3] = &unk_2789E8820;
  v25 = &v26;
  block[4] = self;
  v6 = baseCopy;
  v24 = v6;
  dispatch_sync(listQ, block);
  if ([v27[5] count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v27[5] count];
      v15 = v27[5];
      *buf = 134218242;
      v33 = v14;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "found %lu IOAccMgr Ports contained in set! %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v27[5];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v36 count:16];
  if (!v8)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v20;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v19 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v36 count:16];
  }

  while (v8);
LABEL_19:

  v16 = v24;
  v17 = v9;

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessoryManagers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2;
  v6[3] = &unk_2789E9068;
  v7 = *(a1 + 40);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

BOOL __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2_cold_2(v5, a1);
  }

  v9 = [v5 ioService];
  v10 = [*(a1 + 32) upstreamManagerService];
  if (v9 == v10)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2_cold_4();
    }

    *a3 = 1;
  }

  return v9 == v10;
}

- (id)_managerContainingBase:(id)base
{
  v37 = *MEMORY[0x277D85DE8];
  baseCopy = base;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke;
  block[3] = &unk_2789E8820;
  v25 = &v26;
  block[4] = self;
  v6 = baseCopy;
  v24 = v6;
  dispatch_sync(listQ, block);
  if ([v27[5] count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v27[5] count];
      v15 = v27[5];
      *buf = 134218242;
      v33 = v14;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "unexpectedly found more than 1, %lu IOAccMgr Ports contained in set! %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v27[5];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v36 count:16];
  if (!v8)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v20;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v19 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v36 count:16];
  }

  while (v8);
LABEL_19:

  v16 = v24;
  v17 = v9;

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessoryManagers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke_2;
  v6[3] = &unk_2789E9068;
  v7 = *(a1 + 40);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 ioAccessoryChildPorts];
  v6 = [v5 containsObject:*(a1 + 32)];

  if (v6)
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 2;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke_2_cold_2();
    }

    *a3 = 1;
  }

  return v6;
}

- (id)managerForIOAccessoryManagerService:(unsigned int)service
{
  v27 = *MEMORY[0x277D85DE8];
  allIOAccessoryManagers = [(ACCTransportIOAccessorySharedManager *)self allIOAccessoryManagers];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__ACCTransportIOAccessorySharedManager_managerForIOAccessoryManagerService___block_invoke;
  v20[3] = &__block_descriptor_36_e44_B24__0__ACCTransportIOAccessoryManager_8_B16l;
  serviceCopy = service;
  v5 = [allIOAccessoryManagers objectsPassingTest:v20];

  if ([v5 count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v6 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v5 count];
      *buf = 134218242;
      v23 = v14;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "unexpectedly found > 1, %lu ACCTransportIOAccessoryManagers contained in set! %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (!v7)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v17;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v16 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
  }

  while (v8);
LABEL_19:

  return v9;
}

- (id)_managerForIOService:(unsigned int)service shouldCreateNewService:(BOOL)newService
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ACCTransportIOAccessorySharedManager__managerForIOService_shouldCreateNewService___block_invoke;
  block[3] = &unk_2789E90B0;
  serviceCopy = service;
  block[4] = self;
  block[5] = &v10;
  newServiceCopy = newService;
  dispatch_sync(listQ, block);
  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __84__ACCTransportIOAccessorySharedManager__managerForIOService_shouldCreateNewService___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 48);
  UpstreamService = IOAccessoryManagerGetUpstreamService();
  if (!UpstreamService)
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 2;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    else
    {
      v11 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __84__ACCTransportIOAccessorySharedManager__managerForIOService_shouldCreateNewService___block_invoke_cold_4();
    }

    goto LABEL_17;
  }

  v4 = UpstreamService;
  v5 = [*(a1 + 32) managerForIOAccessoryManagerService:UpstreamService];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40) && *(a1 + 52) == 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v8 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109120;
      v19 = v4;
      _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "Creating new IOAccMgrService, calling IOAccessoryManagerServiceArrived for serviceID %d?", &v18, 8u);
    }

    [*(a1 + 32) _addIOAccessoryManagerWithIOService:v4];
    v13 = [*(a1 + 32) managerForIOAccessoryManagerService:v4];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *v2;
      v18 = 67109376;
      v19 = v4;
      v20 = 1024;
      v21 = v17;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Created new ACCTransportIOAccessoryManager with  service %d for downstream service %d", &v18, 0xEu);
    }

LABEL_17:
  }
}

- (void)_addIOAccessoryManagerWithIOService:(unsigned int)service
{
  v3 = *&service;
  v25 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v24) = 67109120;
    HIDWORD(v24) = v3;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "adding io acc mgr with service %d", &v24, 8u);
  }

  v8 = [[ACCTransportIOAccessoryManager alloc] initWithIOService:v3];
  [(NSMutableSet *)self->_allIOAccessoryManagers addObject:v8];
  [(NSMutableSet *)self->_allIOAccessories addObject:v8];
  if ([(ACCTransportIOAccessoryManager *)v8 isRootPort])
  {
    [(NSMutableSet *)self->_rootIOAccessoryManagers addObject:v8];
    connectionType = [(ACCTransportIOAccessoryManager *)v8 connectionType];
    if (connectionType > 3)
    {
      switch(connectionType)
      {
        case 4:
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v10 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v10 = MEMORY[0x277D86220];
            v11 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            goto LABEL_68;
          }

          LOWORD(v24) = 0;
          v12 = "not caching inductive root manager to a root port variable";
          break;
        case 8:
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v10 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v10 = MEMORY[0x277D86220];
            v13 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            goto LABEL_68;
          }

          LOWORD(v24) = 0;
          v12 = "Not caching AWC root manager to a root port variable";
          break;
        case 11:
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v10 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v10 = MEMORY[0x277D86220];
            v15 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            goto LABEL_68;
          }

          LOWORD(v24) = 0;
          v12 = "Not caching unknown root manager to a root port variable";
          break;
        default:
LABEL_33:
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v10 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v10 = MEMORY[0x277D86220];
            v19 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            goto LABEL_68;
          }

          connectionType2 = [(ACCTransportIOAccessoryManager *)v8 connectionType];
          LODWORD(v24) = 67109120;
          HIDWORD(v24) = connectionType2;
          v12 = "Not caching unhandled root port connectionType %d to a root port variable";
          v16 = v10;
          v17 = 8;
          goto LABEL_67;
      }

      v16 = v10;
      v17 = 2;
LABEL_67:
      _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_INFO, v12, &v24, v17);
LABEL_68:

      goto LABEL_69;
    }

    if (connectionType == 1)
    {
      objc_storeStrong(&self->_rootE75Manager, v8);
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v10 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v10 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [ACCTransportIOAccessorySharedManager _addIOAccessoryManagerWithIOService:];
      }

      goto LABEL_68;
    }

    if (connectionType == 3)
    {
      objc_storeStrong(&self->_rootOrionManager, v8);
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v10 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v10 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [ACCTransportIOAccessorySharedManager _addIOAccessoryManagerWithIOService:];
      }

      goto LABEL_68;
    }

    goto LABEL_33;
  }

LABEL_69:
  if ([(ACCTransportIOAccessoryManager *)v8 connectionType:v24]== 1)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleUSBHostPluginArrived_ name:@"ACCTransportIOAccessory_USBHostPluginArrivedNotification" object:0];
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 postNotificationName:@"ACCTransportIOAccessory_IOAccessoryManagerArrivedNotification" object:0];

  if ([(ACCTransportIOAccessoryManager *)v8 connectionType]== 8)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  [(ACCTransportIOAccessoryManager *)v8 setAccessoryPowerMode:v23];
}

- (id)_managerForBaseEndpointUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:dCopy];
  if (!v5)
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 2;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    v17 = 138412290;
    v18 = dCopy;
    v14 = "Unable to find accBaseTransport for endpointUUID %@";
    goto LABEL_33;
  }

  v6 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:v5];
  if (gLogObjects)
  {
    v7 = gNumLogObjects <= 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v6)
  {
    if (v8)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    v17 = 138412290;
    v18 = v5;
    v14 = "Unable to find accMgrTransport for base transport %@";
LABEL_33:
    _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, v14, &v17, 0xCu);
LABEL_34:
    v9 = 0;
    goto LABEL_35;
  }

  v9 = v6;
  if (v8)
  {
    v10 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessorySharedManager _managerForBaseEndpointUUID:v9];
  }

LABEL_35:

  return v9;
}

- (id)_managerForConnectionUUID:(id)d
{
  v57 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__0;
  v48 = __Block_byref_object_dispose__0;
  v49 = 0;
  if (dCopy)
  {
    listQ = self->_listQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke;
    block[3] = &unk_2789E8820;
    v43 = &v44;
    block[4] = self;
    v42 = dCopy;
    dispatch_sync(listQ, block);
  }

  else
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 2;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessorySharedManager _managerForConnectionUUID:];
    }
  }

  v10 = v45[5];
  if (!v10)
  {
LABEL_34:
    v20 = [(ACCTransportIOAccessorySharedManager *)self _basePortForConnectionUUID:v5, v37];
    if (v20)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v21 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v21 = MEMORY[0x277D86220];
        v25 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_233656000, v21, OS_LOG_TYPE_INFO, "Found base port owning connectionUUID, stop looking", buf, 2u);
      }

      rootE75Manager2 = 0;
      goto LABEL_90;
    }

    ServiceWithPort = IOAccessoryPortGetServiceWithPort();
    if (ServiceWithPort)
    {
      v23 = [(ACCTransportIOAccessorySharedManager *)self _managerForIOService:ServiceWithPort shouldCreateNewService:0];
      if (v23)
      {
        rootE75Manager2 = v23;
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v24 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v24 = MEMORY[0x277D86220];
          v27 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_233656000, v24, OS_LOG_TYPE_DEFAULT, "Found USB port ACCTransportIOAccessoryManager", buf, 2u);
        }

        goto LABEL_76;
      }

      if (gLogObjects && gNumLogObjects >= 2)
      {
        v26 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v26 = MEMORY[0x277D86220];
        v29 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_233656000, v26, OS_LOG_TYPE_DEFAULT, "Couldn't find ACCTransportIOAccessoryManager for portServiceUSB", buf, 2u);
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v26 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v26 = MEMORY[0x277D86220];
        v28 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessorySharedManager _managerForConnectionUUID:];
      }
    }

    rootE75Manager = [(ACCTransportIOAccessorySharedManager *)self rootE75Manager];
    v31 = rootE75Manager == 0;

    if (!v31)
    {
      rootE75Manager2 = [(ACCTransportIOAccessorySharedManager *)self rootE75Manager];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v21 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v21 = MEMORY[0x277D86220];
        v34 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_90;
      }

      *buf = 0;
      v33 = "Did not find manager for USB port. Setting to root Lightning port";
LABEL_89:
      _os_log_impl(&dword_233656000, v21, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
LABEL_90:

      goto LABEL_91;
    }

    rootE75Manager2 = 0;
LABEL_76:
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v21 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v21 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    *buf = 0;
    v33 = "ERROR: No root lightning port manager is present";
    goto LABEL_89;
  }

  if ([v10 count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v45[5] count];
      v19 = v45[5];
      *buf = 134218498;
      v51 = v18;
      v52 = 2112;
      v53 = v5;
      v54 = 2112;
      v55 = v19;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Found %lu IOAccMgr Ports contained in set for connectionUUID %@! %@", buf, 0x20u);
    }

    goto LABEL_33;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = v45[5];
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v56 count:16];
  if (!v12)
  {
LABEL_33:

    goto LABEL_34;
  }

  rootE75Manager2 = 0;
  v14 = *v38;
  do
  {
    v15 = 0;
    v16 = rootE75Manager2;
    do
    {
      if (*v38 != v14)
      {
        objc_enumerationMutation(v11);
      }

      rootE75Manager2 = *(*(&v37 + 1) + 8 * v15);

      ++v15;
      v16 = rootE75Manager2;
    }

    while (v12 != v15);
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v56 count:16];
  }

  while (v12);

  if (!rootE75Manager2)
  {
    goto LABEL_34;
  }

LABEL_91:
  v35 = rootE75Manager2;
  _Block_object_dispose(&v44, 8);

  return v35;
}

void __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessoryManagers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke_2;
  v6[3] = &unk_2789E9068;
  v7 = *(a1 + 40);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke_2_cold_2(v5);
  }

  v9 = [v5 connectionUUID];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke_2_cold_4();
    }

    *a3 = 1;
  }

  return v10;
}

- (BOOL)_managerForConnectionUUIDHasActiveEndpoint:(id)endpoint
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:endpoint];
  v4 = v3;
  if (!v3)
  {
    v19 = 0;
    goto LABEL_59;
  }

  [v3 ioAccessoryChildPorts];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v32 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (!v6)
  {
    v19 = 0;
    goto LABEL_58;
  }

  v7 = v6;
  v28 = v4;
  v8 = *v30;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v30 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v29 + 1) + 8 * i);
      NSClassFromString(&cfstr_Acctransportio_24.isa);
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v12 = objc_msgSend_ioAccPortEndpointUUID(v11);

        if (v12)
        {
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v20 = *(gLogObjects + 8);
            v4 = v28;
          }

          else
          {
            v4 = v28;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v20 = MEMORY[0x277D86220];
            v21 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_57;
          }

          endpointUUID2 = objc_msgSend_ioAccPortEndpointUUID(v11);
          *buf = 138412290;
          v34 = endpointUUID2;
          v23 = "found IOAccessoryPort with active endpointUUID %@";
LABEL_56:
          _os_log_impl(&dword_233656000, v20, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);

LABEL_57:
          v19 = 1;
          goto LABEL_58;
        }
      }

      else
      {
        NSClassFromString(&cfstr_Acctransportio_25.isa);
        if (objc_opt_isKindOfClass())
        {
          v13 = v10;
          endpointUUID = [v13 endpointUUID];

          if (endpointUUID)
          {
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v20 = *(gLogObjects + 8);
              v4 = v28;
            }

            else
            {
              v4 = v28;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v20 = MEMORY[0x277D86220];
              v24 = MEMORY[0x277D86220];
            }

            if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_57;
            }

            endpointUUID2 = [v13 endpointUUID];
            *buf = 138412290;
            v34 = endpointUUID2;
            v23 = "found IOAccessoryEA with active endpointUUID %@";
            goto LABEL_56;
          }
        }

        else
        {
          NSClassFromString(&cfstr_Acctransportio_26.isa);
          if (objc_opt_isKindOfClass())
          {
            v15 = v10;
            endpointUUID3 = [v15 endpointUUID];

            if (endpointUUID3)
            {
              if (gLogObjects && gNumLogObjects >= 2)
              {
                v20 = *(gLogObjects + 8);
                v4 = v28;
              }

              else
              {
                v4 = v28;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [ACCTransportIOAccessoryOOBPairing dealloc];
                }

                v20 = MEMORY[0x277D86220];
                v25 = MEMORY[0x277D86220];
              }

              if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_57;
              }

              endpointUUID2 = [v15 endpointUUID];
              *buf = 138412290;
              v34 = endpointUUID2;
              v23 = "found IOAccessoryOOBPairing with active endpointUUID %@";
              goto LABEL_56;
            }
          }

          else
          {
            NSClassFromString(&cfstr_Acctransportio_27.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v17 = v10;
            endpointUUID4 = [v17 endpointUUID];

            if (endpointUUID4)
            {
              if (gLogObjects && gNumLogObjects >= 2)
              {
                v20 = *(gLogObjects + 8);
                v4 = v28;
              }

              else
              {
                v4 = v28;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [ACCTransportIOAccessoryOOBPairing dealloc];
                }

                v20 = MEMORY[0x277D86220];
                v26 = MEMORY[0x277D86220];
              }

              if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_57;
              }

              endpointUUID2 = [v17 endpointUUID];
              *buf = 138412290;
              v34 = endpointUUID2;
              v23 = "found IOAccessoryConfigStream with active endpointUUID %@";
              goto LABEL_56;
            }
          }
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  v19 = 0;
  v4 = v28;
LABEL_58:

LABEL_59:
  return v19;
}

- (id)basePortForService:(unsigned int)service
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ACCTransportIOAccessorySharedManager_basePortForService___block_invoke;
  block[3] = &unk_2789E90F8;
  block[4] = self;
  block[5] = &v25;
  serviceCopy = service;
  dispatch_sync(listQ, block);
  if ([v26[5] count] != 1)
  {
    v10 = [v26[5] count];
    if (gLogObjects)
    {
      v11 = gNumLogObjects <= 1;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (v10)
    {
      if (v12)
      {
        v4 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v4 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v12)
      {
        v4 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v4 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }
    }

    v15 = [v26[5] count];
    v16 = v26[5];
    *buf = 134218242;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_INFO, "Found %lu IOBase Ports contained in set! %@", buf, 0x16u);
LABEL_31:
    v6 = 0;
    goto LABEL_32;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v26[5];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v35 count:16];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = 0;
  v7 = *v20;
  do
  {
    v8 = 0;
    v9 = v6;
    do
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v6 = *(*(&v19 + 1) + 8 * v8);

      ++v8;
      v9 = v6;
    }

    while (v5 != v8);
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v35 count:16];
  }

  while (v5);
LABEL_32:

  v17 = v6;
  _Block_object_dispose(&v25, 8);

  return v17;
}

void __59__ACCTransportIOAccessorySharedManager_basePortForService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ACCTransportIOAccessorySharedManager_basePortForService___block_invoke_2;
  v6[3] = &__block_descriptor_36_e41_B24__0__ACCTransportIOAccessoryBase_8_B16l;
  v7 = *(a1 + 48);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

BOOL __59__ACCTransportIOAccessorySharedManager_basePortForService___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 ioService];
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    *a3 = 1;
  }

  return v5 == v6;
}

- (id)_basePortForEndpointUUID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ACCTransportIOAccessorySharedManager__basePortForEndpointUUID___block_invoke;
  block[3] = &unk_2789E9148;
  v29 = &v30;
  block[4] = self;
  v23 = @"ACCTransportIOAccessoryPort";
  v6 = dCopy;
  v24 = v6;
  v25 = @"ACCTransportIOAccessoryEA";
  v26 = @"ACCTransportIOAccessoryOOBPairing";
  v27 = @"ACCTransportIOAccessoryAuthCP";
  v28 = @"ACCTransportIOAccessoryConfigStream";
  dispatch_sync(listQ, block);
  if ([v31[5] count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = [v31[5] count];
      *buf = 134218242;
      v37 = v14;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "Found %lu IOBase Ports contained in set for endpointUUID! %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v31[5];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v40 count:16];
  if (!v8)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v19;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v18 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v40 count:16];
  }

  while (v8);
LABEL_19:

  v15 = v28;
  v16 = v9;

  _Block_object_dispose(&v30, 8);

  return v16;
}

void __65__ACCTransportIOAccessorySharedManager__basePortForEndpointUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessories];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ACCTransportIOAccessorySharedManager__basePortForEndpointUUID___block_invoke_2;
  v12[3] = &unk_2789E9120;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v13 = v8;
  v14 = v7;
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v9 = [v2 objectsPassingTest:v12];
  v10 = *(*(a1 + 88) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t __65__ACCTransportIOAccessorySharedManager__basePortForEndpointUUID___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  NSClassFromString(*(a1 + 32));
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSClassFromString(*(a1 + 48));
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 endpointUUID];
      v10 = [v9 isEqualToString:*(a1 + 40)];

      if (!v10)
      {
        goto LABEL_35;
      }

      if (gLogObjects && gNumLogObjects >= 2)
      {
        v8 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v8 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      v19 = *(a1 + 40);
      v29 = 138412290;
      v30 = v19;
      v15 = "Found IOAccessoryEA with endpointUUID %@";
    }

    else
    {
      NSClassFromString(*(a1 + 56));
      if (objc_opt_isKindOfClass())
      {
        v11 = [v5 endpointUUID];
        v12 = [v11 isEqualToString:*(a1 + 40)];

        if (!v12)
        {
          goto LABEL_35;
        }

        if (gLogObjects && gNumLogObjects >= 2)
        {
          v8 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v8 = MEMORY[0x277D86220];
          v24 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          goto LABEL_47;
        }

        v25 = *(a1 + 40);
        v29 = 138412290;
        v30 = v25;
        v15 = "Found IOAccessoryOOBPairing with endpointUUID %@";
      }

      else
      {
        NSClassFromString(*(a1 + 64));
        if (objc_opt_isKindOfClass())
        {
          v16 = [v5 endpointUUID];
          v17 = [v16 isEqualToString:*(a1 + 40)];

          if (!v17)
          {
            goto LABEL_35;
          }

          if (gLogObjects && gNumLogObjects >= 2)
          {
            v8 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v8 = MEMORY[0x277D86220];
            v26 = MEMORY[0x277D86220];
          }

          if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            goto LABEL_47;
          }

          v27 = *(a1 + 40);
          v29 = 138412290;
          v30 = v27;
          v15 = "Found IOAccessoryAuthCP with endpointUUID %@";
        }

        else
        {
          NSClassFromString(*(a1 + 72));
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_35;
          }

          v20 = [v5 endpointUUID];
          v21 = [v20 isEqualToString:*(a1 + 40)];

          if (!v21)
          {
            goto LABEL_35;
          }

          v8 = logObjectForModule_0(1u);
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
LABEL_47:

            v23 = 1;
            *a3 = 1;
            goto LABEL_48;
          }

          v22 = *(a1 + 40);
          v29 = 138412290;
          v30 = v22;
          v15 = "Found IOAccessoryConfigStream with endpointUUID %@";
        }
      }
    }

LABEL_46:
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_INFO, v15, &v29, 0xCu);
    goto LABEL_47;
  }

  v6 = objc_msgSend_ioAccPortEndpointUUID(v5);
  v7 = [v6 isEqualToString:*(a1 + 40)];

  if (v7)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v8 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_47;
    }

    v14 = *(a1 + 40);
    v29 = 138412290;
    v30 = v14;
    v15 = "Found IOAccessoryPort with endpointUUID %@";
    goto LABEL_46;
  }

LABEL_35:
  v23 = 0;
LABEL_48:

  return v23;
}

- (id)_basePortForConnectionUUID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ACCTransportIOAccessorySharedManager__basePortForConnectionUUID___block_invoke;
  block[3] = &unk_2789E9198;
  v25 = &v26;
  block[4] = self;
  v23 = @"ACCTransportIOAccessoryAuthCP";
  v6 = dCopy;
  v24 = v6;
  dispatch_sync(listQ, block);
  if ([v27[5] count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = [v27[5] count];
      *buf = 134218242;
      v33 = v14;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "Found %lu IOBase Ports contained in set for connectionUUID! %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v27[5];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v36 count:16];
  if (!v8)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v19;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v18 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v36 count:16];
  }

  while (v8);
LABEL_19:

  v15 = v24;
  v16 = v9;

  _Block_object_dispose(&v26, 8);

  return v16;
}

void __67__ACCTransportIOAccessorySharedManager__basePortForConnectionUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allIOAccessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__ACCTransportIOAccessorySharedManager__basePortForConnectionUUID___block_invoke_2;
  v6[3] = &unk_2789E9170;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __67__ACCTransportIOAccessorySharedManager__basePortForConnectionUUID___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  NSClassFromString(*(a1 + 32));
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 connectionUUID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *(a1 + 40)), v6, v7))
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v8 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    v9 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_INFO, "Found IOAccessoryAuthCP with connectionUUID %@", &v13, 0xCu);
    }

    *a3 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_portForManagerMatchingPrimaryPort:(id)port
{
  v37 = *MEMORY[0x277D85DE8];
  portCopy = port;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ACCTransportIOAccessorySharedManager__portForManagerMatchingPrimaryPort___block_invoke;
  block[3] = &unk_2789E91E8;
  v25 = &v26;
  v6 = portCopy;
  v24 = v6;
  dispatch_sync(listQ, block);
  if ([v27[5] count] != 1)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = [v27[5] count];
      primaryPortNumber = [v6 primaryPortNumber];
      *buf = 134218240;
      v33 = v14;
      v34 = 1024;
      v35 = primaryPortNumber;
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "Found %lu IOBase Ports contained in set for primaryPort %d", buf, 0x12u);
    }

    goto LABEL_18;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v27[5];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v36 count:16];
  if (!v8)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v20;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v9 = *(*(&v19 + 1) + 8 * v11);

      ++v11;
      v12 = v9;
    }

    while (v8 != v11);
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v36 count:16];
  }

  while (v8);
LABEL_19:

  v16 = v24;
  v17 = v9;

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __75__ACCTransportIOAccessorySharedManager__portForManagerMatchingPrimaryPort___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ioAccessoryChildPorts];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__ACCTransportIOAccessorySharedManager__portForManagerMatchingPrimaryPort___block_invoke_2;
  v6[3] = &unk_2789E91C0;
  v7 = *(a1 + 32);
  v3 = [v2 objectsPassingTest:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __75__ACCTransportIOAccessorySharedManager__portForManagerMatchingPrimaryPort___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v6 portIDNumber];
  if (v7 != [*(a1 + 32) primaryPortNumber])
  {

LABEL_7:
    v9 = 0;
    goto LABEL_14;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v8 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 portIDNumber];
    v12 = [*(a1 + 32) primaryPortNumber];
    v14[0] = 67109376;
    v14[1] = v11;
    v15 = 1024;
    v16 = v12;
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "Found IOAccessoryPort with portID %d, matching primaryPort %d", v14, 0xEu);
  }

  v9 = 1;
  *a3 = 1;

LABEL_14:
  return v9;
}

- (void)_processEAService:(unsigned int)service andPublish:(BOOL)publish
{
  publishCopy = publish;
  v5 = *&service;
  v39 = *MEMORY[0x277D85DE8];
  v7 = [(ACCTransportIOAccessorySharedManager *)self _managerForIOService:*&service shouldCreateNewService:1];
  if ([v7 isAuthenticated])
  {
    v8 = [[ACCTransportIOAccessoryEA alloc] initWithDelegate:self andIOService:v5];
    if ([(ACCTransportIOAccessorySharedManager *)self _addACCTransportToManager:v8])
    {
      listQ = self->_listQ;
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __69__ACCTransportIOAccessorySharedManager__processEAService_andPublish___block_invoke;
      v30 = &unk_2789E8900;
      selfCopy = self;
      v32 = v8;
      dispatch_sync(listQ, &v27);
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v10 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v10 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Successfully added io accessory EA service to all ports list", buf, 2u);
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v13 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v13 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v34) = [(ACCTransportIOAccessoryBase *)v8 ioService];
        _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_INFO, "Couldn't find upstream io acc manager service for accEA service %d", buf, 8u);
      }
    }

    v19 = [(ACCTransportIOAccessoryEA *)v8 deviceModelNumber:v27];
    if ([v19 isEqualToString:@"A1468"])
    {
    }

    else
    {
      deviceModelNumber = [(ACCTransportIOAccessoryEA *)v8 deviceModelNumber];
      v21 = [deviceModelNumber isEqualToString:@"A1450"];

      if (!v21)
      {
LABEL_44:
        [(ACCTransportIOAccessorySharedManager *)self _createEAProtocolsForManager:v7];
        if (publishCopy)
        {
          delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
          connectionUUID = [v7 connectionUUID];
          [delegate publishConnectionWithUUID:connectionUUID];
        }

        goto LABEL_47;
      }
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v22 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v22 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      deviceModelNumber2 = [(ACCTransportIOAccessoryEA *)v8 deviceModelNumber];
      *buf = 138412290;
      v34 = deviceModelNumber2;
      _os_log_impl(&dword_233656000, v22, OS_LOG_TYPE_DEFAULT, "Have a B139/B164 connected, accEA.deviceModelNumber %@", buf, 0xCu);
    }

    self->_isB139OrB164Connected = 1;
    goto LABEL_44;
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects < 2;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v14 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v34 = v7;
    v35 = 1024;
    isAuthenticated = [v7 isAuthenticated];
    v37 = 1024;
    v38 = v5;
    _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "accMgrInstance=%@ isAuthenticated=%d Defer creating of ACCTransportIOAccessoryEA until auth passes for accEa %d", buf, 0x18u);
  }

  deferEAServiceArray = self->_deferEAServiceArray;
  v16 = [[DeferredEAServiceWrapper alloc] initWithIOService:v5 withMgr:v7];
  [(NSMutableArray *)deferEAServiceArray addObject:v16];

  IOObjectRetain(v5);
LABEL_47:
}

- (void)_createEAProtocolsForManager:(id)manager
{
  v50 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v4 = managerCopy;
  if (managerCopy)
  {
    connectionUUID = [managerCopy connectionUUID];

    if (!connectionUUID)
    {
      delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v7 = [delegate createConnectionWithType:objc_msgSend(v4 andIdentifier:{"connectionType"), 0}];

      delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      [delegate2 setSupervisedTransportsRestricted:objc_msgSend(v4 forConnectionWithUUID:{"supervisedTransportsRestricted"), v7}];

      [v4 setConnectionUUID:v7];
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v9 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        connectionUUID2 = [v4 connectionUUID];
        *buf = 138412290;
        v47 = connectionUUID2;
        _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_INFO, "Created a new connection with UUID: %@", buf, 0xCu);
      }

      accessoryInfoLock = [v4 accessoryInfoLock];
      [accessoryInfoLock lock];

      v44[0] = *MEMORY[0x277CFD2C0];
      v13 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v4, "primaryPortNumber")}];
      v45[0] = v13;
      v44[1] = *MEMORY[0x277CFD290];
      digitalID = [v4 digitalID];
      null = digitalID;
      if (!digitalID)
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      v45[1] = null;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
      if (!digitalID)
      {
      }

      accessoryInfoLock2 = [v4 accessoryInfoLock];
      [accessoryInfoLock2 unlock];

      delegate3 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v19 = [v16 copy];
      [delegate3 setProperties:v19 forConnectionWithUUID:v7];
    }

    eaProtocolChildPorts = [v4 eaProtocolChildPorts];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v21 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v21 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = eaProtocolChildPorts;
      _os_log_impl(&dword_233656000, v21, OS_LOG_TYPE_INFO, "accEAEndpointsForManager = %@", buf, 0xCu);
    }

    delegate4 = [(ACCTransportIOAccessorySharedManager *)self delegate];

    if (delegate4)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = eaProtocolChildPorts;
      v24 = eaProtocolChildPorts;
      v25 = [v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v40;
        v28 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v39 + 1) + 8 * i);
            endpointUUID = [v30 endpointUUID];

            if (endpointUUID)
            {
              v32 = gLogObjects;
              v33 = gNumLogObjects;
              if (gLogObjects)
              {
                v34 = gNumLogObjects < 2;
              }

              else
              {
                v34 = 1;
              }

              if (v34)
              {
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v47 = v32;
                  v48 = 1024;
                  v49 = v33;
                  _os_log_error_impl(&dword_233656000, v28, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v35 = v28;
                v36 = v28;
              }

              else
              {
                v36 = *(gLogObjects + 8);
              }

              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_233656000, v36, OS_LOG_TYPE_INFO, "Skipped re-creating endpoint with existing UUID.", buf, 2u);
              }
            }

            else
            {
              [(ACCTransportIOAccessorySharedManager *)self _createEAEndpointForProtocol:v30 andManager:v4];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v26);
      }

      eaProtocolChildPorts = v37;
    }
  }
}

- (void)_createEAEndpointForProtocol:(id)protocol andManager:(id)manager
{
  v45[9] = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  managerCopy = manager;
  delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (delegate)
  {
    accessoryInfoLock = [managerCopy accessoryInfoLock];
    [accessoryInfoLock lock];

    v44[0] = *MEMORY[0x277CFD250];
    deviceName = [protocolCopy deviceName];
    v45[0] = deviceName;
    v44[1] = *MEMORY[0x277CFD248];
    deviceModelNumber = [protocolCopy deviceModelNumber];
    v45[1] = deviceModelNumber;
    v44[2] = *MEMORY[0x277CFD240];
    deviceVendorName = [protocolCopy deviceVendorName];
    v45[2] = deviceVendorName;
    v44[3] = *MEMORY[0x277CFD270];
    deviceSerialNumber = [protocolCopy deviceSerialNumber];
    v45[3] = deviceSerialNumber;
    v44[4] = *MEMORY[0x277CFD230];
    deviceFirmwareRevision = [protocolCopy deviceFirmwareRevision];
    v45[4] = deviceFirmwareRevision;
    v44[5] = *MEMORY[0x277CFD238];
    deviceHardwareRevision = [protocolCopy deviceHardwareRevision];
    v45[5] = deviceHardwareRevision;
    v44[6] = *MEMORY[0x277CFD258];
    ppid = [managerCopy ppid];
    null = ppid;
    if (!ppid)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    selfCopy = self;
    v45[6] = null;
    v44[7] = *MEMORY[0x277CFD268];
    regionCode = [managerCopy regionCode];
    null2 = regionCode;
    if (!regionCode)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    v45[7] = null2;
    v44[8] = *MEMORY[0x277CFD220];
    inductiveDeviceUID = [managerCopy inductiveDeviceUID];
    null3 = inductiveDeviceUID;
    if (!inductiveDeviceUID)
    {
      null3 = [MEMORY[0x277CBEB68] null];
    }

    v45[8] = null3;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:9];
    if (!inductiveDeviceUID)
    {
    }

    if (!regionCode)
    {
    }

    if (!ppid)
    {
    }

    accessoryInfoLock2 = [managerCopy accessoryInfoLock];
    [accessoryInfoLock2 unlock];

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v19 = *(gLogObjects + 8);
      v20 = v36;
    }

    else
    {
      v20 = v36;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v19 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      eaProtocol = [protocolCopy eaProtocol];
      connectionUUID = [managerCopy connectionUUID];
      *buf = 138412802;
      v39 = v20;
      v40 = 2112;
      v41 = eaProtocol;
      v42 = 2112;
      v43 = connectionUUID;
      _os_log_impl(&dword_233656000, v19, OS_LOG_TYPE_INFO, "accInfoDictionary = %@, accEAProtocol.eaProtocol = %@, ioAccMgr.connectionUUID = %@", buf, 0x20u);
    }

    delegate2 = [(ACCTransportIOAccessorySharedManager *)selfCopy delegate];
    eaProtocol2 = [protocolCopy eaProtocol];
    connectionUUID2 = [managerCopy connectionUUID];
    v27 = [connectionUUID2 copy];
    v28 = [delegate2 createEndpointWithTransportType:5 andProtocol:5 andIdentifier:eaProtocol2 forConnectionWithUUID:v27 publishConnection:0];

    delegate3 = [(ACCTransportIOAccessorySharedManager *)selfCopy delegate];
    [delegate3 setAccessoryInfo:v20 forEndpointWithUUID:v28];

    v30 = [v28 copy];
    [protocolCopy setEndpointUUID:v30];

    connectionUUID3 = [managerCopy connectionUUID];
    [protocolCopy setParentConnectionUUID:connectionUUID3];
  }
}

- (void)_clearChildPortEndpointsForManagerDisconnection:(id)disconnection
{
  ioAccessoryChildPorts = [disconnection ioAccessoryChildPorts];
  [ioAccessoryChildPorts enumerateObjectsUsingBlock:&__block_literal_global_110];
}

void __88__ACCTransportIOAccessorySharedManager__clearChildPortEndpointsForManagerDisconnection___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_msgSend_ioAccPortEndpointUUID(v3);
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "Clearing endpointUUID %@ from childIOAccessoryPort", &v20, 0xCu);
    }

    [v3 setIoAccPortEndpointUUID:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v2;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v9 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 endpointUUID];
      v20 = 138412290;
      v21 = v11;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "Clearing endpointUUID %@ from childEAAccessoryPort", &v20, 0xCu);
    }

    [v8 setEndpointUUID:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v2;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v13 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 endpointUUID];
      v20 = 138412290;
      v21 = v15;
      _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "Clearing endpointUUID %@ from childOOBPairingPort", &v20, 0xCu);
    }

    [v12 setEndpointUUID:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v2;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v17 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 endpointUUID];
      v20 = 138412290;
      v21 = v19;
      _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_DEFAULT, "Clearing endpointUUID %@ from childConfigStreamPort", &v20, 0xCu);
    }

    [v16 setEndpointUUID:0];
  }
}

- (int)_connectionTypeForIOAccessoryPort:(id)port
{
  portCopy = port;
  [portCopy upstreamManagerService];
  Type = IOAccessoryManagerGetType();
  if (Type == 3 || (!self->_bIsWatch && (Type & 0xF) != 5 ? (v6 = 1) : (v6 = 4), Type == 6))
  {
    v6 = 6;
  }

  portIDNumber = [portCopy portIDNumber];

  if (portIDNumber == 257)
  {
    return 8;
  }

  if (portIDNumber == 256)
  {
    return 3;
  }

  return v6;
}

- (int)_endpointTransportTypeForIOAccessoryPort:(id)port
{
  portCopy = port;
  portIDNumber = [portCopy portIDNumber];
  if ((portIDNumber - 6) <= 0xF)
  {
    portTransportType = [portCopy portTransportType];
    v6 = portTransportType;
    if (portTransportType == 7)
    {
      goto LABEL_18;
    }

    if (portTransportType != 19)
    {
      v6 = 1;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v6 = 5;
  if (portIDNumber > 256)
  {
    if (portIDNumber == 257)
    {
      v6 = 9;
      goto LABEL_18;
    }

    if (portIDNumber == 512)
    {
LABEL_14:
      if ([portCopy portStreamType] == 5)
      {
        v6 = 14;
      }

      else
      {
        v6 = 12;
      }
    }
  }

  else
  {
    if (portIDNumber == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = 5;
    }

    if (portIDNumber == 1)
    {
      v6 = 6;
    }

    else
    {
      v6 = v7;
    }
  }

LABEL_18:

  return v6;
}

- (BOOL)_addACCTransportToManager:(id)manager
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:managerCopy];
  v6 = v5;
  if (gLogObjects)
  {
    v7 = gNumLogObjects <= 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v5)
  {
    if (v8)
    {
      v9 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      LODWORD(v15) = [v6 ioService];
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "Found IOAccessoryManager with service %u, adding child port to manager", &v14, 8u);
    }

    [v6 addIOAccessoryChildPort:managerCopy];
  }

  else
  {
    if (v8)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 138413058;
      v15 = managerCopy;
      v16 = 1024;
      ioService = [managerCopy ioService];
      v18 = 1024;
      primaryPortNumber = [managerCopy primaryPortNumber];
      v20 = 1024;
      upstreamManagerService = [managerCopy upstreamManagerService];
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Couldn't find Manager for basePort %@, ioService %d, primaryPortNumber %d, upstreamManagerService %d", &v14, 0x1Eu);
    }
  }

  return v6 != 0;
}

- (void)_handleRequestForIAPDPortB139B164Connected:(id)connected
{
  v8[1] = *MEMORY[0x277D85DE8];
  isB139OrB164Connected = [(ACCTransportIOAccessorySharedManager *)self isB139OrB164Connected];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:isB139OrB164Connected];
  v7 = *MEMORY[0x277CFD170];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277CFD1A0] object:0 userInfo:v5];
}

- (void)_handleRequestForPrimaryPort:(id)port
{
  v26 = *MEMORY[0x277D85DE8];
  userInfo = [port userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CFD178]];
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_INFO, "Request for primary port: connectionUUID = %@", buf, 0xCu);
  }

  v9 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:v5];
  v10 = v9;
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v9)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      primaryPortNumber = [v10 primaryPortNumber];
      *buf = 67109120;
      LODWORD(v25) = primaryPortNumber;
      _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "Request for primary port: found managerForConnectionUUID. PrimaryPort is %d", buf, 8u);
    }

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "primaryPortNumber")}];
  }

  else
  {
    if (v12)
    {
      v14 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v14 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "Request for primary port: did not find managerForConnectionUUID for primary port! Assume primary port number is built-in port", buf, 2u);
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInt:1];
  }

  v19 = v17;
  v22 = *MEMORY[0x277CFD168];
  v23 = v17;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277CFD1A8] object:0 userInfo:v20];
}

- (void)handleOpenEASessionNotification:(id)notification
{
  v3 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:notification];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 ioServiceClassType] == 2;
    v3 = v5;
    if (v4)
    {
      [v5 openEAServiceSession];
      v3 = v5;
    }
  }
}

- (void)handleCloseEASessionNotification:(id)notification
{
  v3 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:notification];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 ioServiceClassType] == 2;
    v3 = v5;
    if (v4)
    {
      [v5 closeEAServiceSession];
      v3 = v5;
    }
  }
}

- (void)_handleUSBHostPluginArrived:(id)arrived
{
  v12 = *MEMORY[0x277D85DE8];
  arrivedCopy = arrived;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = @"ACCTransportIOAccessory_USBHostPluginArrivedNotification";
    v10 = 2112;
    v11 = @"ACCTransportIOAccessory_IOAccessoryManagerArrivedNotification";
    _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "Received %@ notification, notifying %@", &v8, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ACCTransportIOAccessory_IOAccessoryManagerArrivedNotification" object:0];
}

- (void)transmitData:(id)data forEndpointUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  if (acc_userDefaultsLogging_BOOLForKey(@"TransportSignpost"))
  {
    if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
    {
      v11 = *(gLogSignpostObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    v13 = [dCopy hash];
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v11))
      {
        v19 = 138412546;
        v20 = dCopy;
        v21 = 2048;
        v22 = [dataCopy length];
        _os_signpost_emit_with_name_impl(&dword_233656000, v11, OS_SIGNPOST_EVENT, v14, "Endpoint SEND", "Send outgoing data! %@, %lu bytes", &v19, 0x16u);
      }
    }
  }

  v15 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:dCopy];
  v16 = v15;
  if (v15)
  {
    [v15 transmitData:dataCopy];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v17 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = dCopy;
      _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_INFO, "No ACCTransport handler for connectionUUID %@", &v19, 0xCu);
    }
  }
}

- (BOOL)shouldEnableDirectAWCAuth
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportIOAccessorySharedManager *)self shouldEnableDirectAWCAuth];
  }

  return [(ACCSettingsState *)self->_enableDirectAWCAuth BOOLValue];
}

- (BOOL)setProperties:(id)properties forManager:(id)manager
{
  propertiesCopy = properties;
  managerCopy = manager;
  delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
  delegate2 = delegate;
  v10 = 0;
  if (propertiesCopy && delegate)
  {

    if (!managerCopy)
    {
      v10 = 0;
      goto LABEL_6;
    }

    delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    connectionUUID = [managerCopy connectionUUID];
    v10 = [delegate2 setProperties:propertiesCopy forConnectionWithUUID:connectionUUID];
  }

LABEL_6:
  return v10;
}

- (BOOL)openEASession:(id)session withEAEndpointUUID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dCopy = d;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = 138412546;
    v18 = sessionCopy;
    v19 = 2112;
    v20 = dCopy;
    _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Opening EA session for protocol %@ and endpoint UUID %@", &v17, 0x16u);
  }

  v11 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:dCopy];
  v12 = v11;
  if (v11)
  {
    openEAServiceSession = [v11 openEAServiceSession];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v14 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = sessionCopy;
      _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_INFO, "Could not find ACCTransportIOAccessoryEA object for protocol %@", &v17, 0xCu);
    }

    openEAServiceSession = 0;
  }

  return openEAServiceSession;
}

- (void)closeEASession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = sessionCopy;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "Closing EA session for eaEndpointUUID %@", &v12, 0xCu);
  }

  v8 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:sessionCopy];
  v9 = v8;
  if (v8)
  {
    [v8 closeEAServiceSession];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = sessionCopy;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Could not find ACCTransportIOAccessoryEA object for eaEndpointUUID %@", &v12, 0xCu);
    }
  }
}

- (BOOL)setUSBMode:(int)mode forConnectionUUID:(id)d
{
  v4 = *&mode;
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:dCopy];
  v8 = v7;
  if (!v7)
  {
    if (gLogObjects)
    {
      v13 = gNumLogObjects < 2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = dCopy;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v19, 0xCu);
    }

    goto LABEL_34;
  }

  v9 = [v7 setUSBMode:v4];
  if (gLogObjects)
  {
    v10 = gNumLogObjects <= 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!v9)
  {
    if (v11)
    {
      v12 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager setUSBMode:forConnectionUUID:];
    }

LABEL_34:
    v16 = 0;
    goto LABEL_35;
  }

  if (v11)
  {
    v12 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v12 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessorySharedManager setUSBMode:forConnectionUUID:];
  }

  v16 = 1;
LABEL_35:

  return v16;
}

- (BOOL)setUSBMode:(int)mode forEndpointUUID:(id)d
{
  v4 = *&mode;
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(ACCTransportIOAccessorySharedManager *)self _managerForBaseEndpointUUID:dCopy];
  v8 = v7;
  if (!v7)
  {
    if (gLogObjects)
    {
      v13 = gNumLogObjects < 2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = dCopy;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base endpoint UUID %@", &v19, 0xCu);
    }

    goto LABEL_34;
  }

  v9 = [v7 setUSBMode:v4];
  if (gLogObjects)
  {
    v10 = gNumLogObjects <= 1;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!v9)
  {
    if (v11)
    {
      v12 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager setUSBMode:forEndpointUUID:];
    }

LABEL_34:
    v16 = 0;
    goto LABEL_35;
  }

  if (v11)
  {
    v12 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v12 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessorySharedManager setUSBMode:forEndpointUUID:];
  }

  v16 = 1;
LABEL_35:

  return v16;
}

- (int)USBModeForConnectionUUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:dCopy];
  v6 = v5;
  if (v5)
  {
    getUSBMode = [v5 getUSBMode];
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessorySharedManager setUSBMode:forConnectionUUID:];
    }
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v14, 0xCu);
    }

    getUSBMode = -1;
  }

  return getUSBMode;
}

- (int)USBModeForEndpointUUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForBaseEndpointUUID:dCopy];
  v6 = v5;
  if (v5)
  {
    getUSBMode = [v5 getUSBMode];
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessorySharedManager setUSBMode:forEndpointUUID:];
    }
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base endpoint UUID %@", &v14, 0xCu);
    }

    getUSBMode = -1;
  }

  return getUSBMode;
}

- (BOOL)configureAccessoryPowerMode:(int)mode forConnectionUUID:(id)d
{
  v4 = *&mode;
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(ACCTransportIOAccessorySharedManager *)self _accPlatformPowerModeToIOAccessoryPowerMode:v4];
  v8 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:dCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setAccessoryPowerMode:v7];
    v10 = [v9 accessoryPowerMode] == v7;
  }

  else
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 2;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      v13 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = dCopy;
      _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v15, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)setUSBCurrentOffset:(int)offset forConnectionUUID:(id)d
{
  v4 = *&offset;
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:dCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 setUSBCurrentOffset:v4];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v14, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)setUSBCurrentLimitBase:(unsigned int)base forConnectionUUID:(id)d forceResponse:(BOOL)response
{
  responseCopy = response;
  v6 = *&base;
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:dCopy];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 setUSBCurrentLimitBase:v6 forceResponse:responseCopy];
  }

  else
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 2;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v14 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = dCopy;
      _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v16, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (unsigned)USBCurrentLimitInmA:(id)a
{
  v14 = *MEMORY[0x277D85DE8];
  aCopy = a;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:aCopy];
  v6 = v5;
  if (v5)
  {
    uSBCurrentLimitInmA = [v5 USBCurrentLimitInmA];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = aCopy;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v12, 0xCu);
    }

    uSBCurrentLimitInmA = 0;
  }

  return uSBCurrentLimitInmA;
}

- (unsigned)USBCurrentLimitBaseInmA:(id)a
{
  v14 = *MEMORY[0x277D85DE8];
  aCopy = a;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:aCopy];
  v6 = v5;
  if (v5)
  {
    uSBCurrentLimitBaseInmA = [v5 USBCurrentLimitBaseInmA];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = aCopy;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v12, 0xCu);
    }

    uSBCurrentLimitBaseInmA = 0;
  }

  return uSBCurrentLimitBaseInmA;
}

- (unsigned)USBCurrentLimitOffsetInmA:(id)a
{
  v14 = *MEMORY[0x277D85DE8];
  aCopy = a;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:aCopy];
  v6 = v5;
  if (v5)
  {
    uSBCurrentLimitOffsetInmA = [v5 USBCurrentLimitOffsetInmA];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = aCopy;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v12, 0xCu);
    }

    uSBCurrentLimitOffsetInmA = 0;
  }

  return uSBCurrentLimitOffsetInmA;
}

- (unsigned)USBChargingVoltageInmV:(id)v
{
  v14 = *MEMORY[0x277D85DE8];
  vCopy = v;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:vCopy];
  v6 = v5;
  if (v5)
  {
    uSBChargingVoltageInmV = [v5 USBChargingVoltageInmV];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = vCopy;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v12, 0xCu);
    }

    uSBChargingVoltageInmV = 0;
  }

  return uSBChargingVoltageInmV;
}

- (int)CableType:(id)type
{
  v14 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:typeCopy];
  v6 = v5;
  if (v5)
  {
    cableType = [v5 cableType];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = typeCopy;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v12, 0xCu);
    }

    cableType = 0;
  }

  return cableType;
}

- (unsigned)sleepPowerCurrentLimitInmA:(id)a
{
  v44 = *MEMORY[0x277D85DE8];
  aCopy = a;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:aCopy];
  v6 = v5;
  if (v5)
  {
    if (([v5 isRootPort] & 1) == 0)
    {
      connectionType = [v6 connectionType];
      if (connectionType == 1)
      {
        v8 = 64;
      }

      else
      {
        if (connectionType != 3)
        {
          goto LABEL_23;
        }

        v8 = 72;
      }

      v13 = *(&self->super.isa + v8);
      if (v13)
      {
        v11 = v13;
        sleepPowerCurrentLimitInmA = [v13 sleepPowerCurrentLimitInmA];
        sleepPowerCurrentLimitInmA2 = [v6 sleepPowerCurrentLimitInmA];
        v15 = sleepPowerCurrentLimitInmA2;
        if (sleepPowerCurrentLimitInmA >= sleepPowerCurrentLimitInmA2)
        {
          v17 = 0;
          sleepPowerCurrentLimitInmA = sleepPowerCurrentLimitInmA2;
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v16 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v16 = MEMORY[0x277D86220];
            v26 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            connectionUUID = [v6 connectionUUID];
            primaryPortNumber = [v6 primaryPortNumber];
            connectionUUID2 = [v11 connectionUUID];
            *buf = 138413826;
            v31 = aCopy;
            v32 = 2112;
            v33 = connectionUUID;
            v34 = 1024;
            v35 = primaryPortNumber;
            v36 = 2112;
            v37 = connectionUUID2;
            v38 = 1024;
            primaryPortNumber2 = [v11 primaryPortNumber];
            v40 = 1024;
            v41 = v15;
            v42 = 1024;
            v43 = sleepPowerCurrentLimitInmA;
            _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_INFO, "connectionUUID %@, accMgrTransport %@ (%d), rootMgr %@ (%d), sleepPowerCurrentLimitInmA=%d -> %d", buf, 0x38u);
          }

          v17 = 0;
        }

        goto LABEL_24;
      }
    }

LABEL_23:
    sleepPowerCurrentLimitInmA = [v6 sleepPowerCurrentLimitInmA];
    v11 = 0;
    v17 = 1;
LABEL_24:
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v18 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      connectionUUID3 = [v6 connectionUUID];
      primaryPortNumber3 = [v6 primaryPortNumber];
      v22 = primaryPortNumber3;
      if (v17)
      {
        *buf = 138413570;
        v31 = aCopy;
        v32 = 2112;
        v33 = connectionUUID3;
        v34 = 1024;
        v35 = primaryPortNumber3;
        v36 = 2112;
        v37 = 0;
        v38 = 1024;
        primaryPortNumber2 = -1;
        v40 = 1024;
        v41 = sleepPowerCurrentLimitInmA;
        _os_log_impl(&dword_233656000, v18, OS_LOG_TYPE_INFO, "connectionUUID %@, accMgrTransport %@ (%d), rootMgr %@ (%d), sleepPowerCurrentLimitInmA=%d", buf, 0x32u);
      }

      else
      {
        connectionUUID4 = [v11 connectionUUID];
        primaryPortNumber4 = [v11 primaryPortNumber];
        *buf = 138413570;
        v31 = aCopy;
        v32 = 2112;
        v33 = connectionUUID3;
        v34 = 1024;
        v35 = v22;
        v36 = 2112;
        v37 = connectionUUID4;
        v38 = 1024;
        primaryPortNumber2 = primaryPortNumber4;
        v40 = 1024;
        v41 = sleepPowerCurrentLimitInmA;
        _os_log_impl(&dword_233656000, v18, OS_LOG_TYPE_INFO, "connectionUUID %@, accMgrTransport %@ (%d), rootMgr %@ (%d), sleepPowerCurrentLimitInmA=%d", buf, 0x32u);
      }
    }

    goto LABEL_36;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = aCopy;
    _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", buf, 0xCu);
  }

  sleepPowerCurrentLimitInmA = 0;
LABEL_36:

  return sleepPowerCurrentLimitInmA;
}

- (BOOL)isPowerDuringSleepSupported:(id)supported
{
  v14 = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:supportedCopy];
  v6 = v5;
  if (v5)
  {
    isPowerDuringSleepSupported = [v5 isPowerDuringSleepSupported];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = supportedCopy;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v12, 0xCu);
    }

    isPowerDuringSleepSupported = 0;
  }

  return isPowerDuringSleepSupported;
}

- (BOOL)setPowerDuringSleepEnabled:(BOOL)enabled forConnectionUUID:(id)d
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:dCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 setPowerDuringSleepEnabled:enabledCopy];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v14, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)isPowerDuringSleepEnabled:(id)enabled
{
  v14 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:enabledCopy];
  v6 = v5;
  if (v5)
  {
    isPowerDuringSleepEnabled = [v5 isPowerDuringSleepEnabled];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = enabledCopy;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v12, 0xCu);
    }

    isPowerDuringSleepEnabled = 0;
  }

  return isPowerDuringSleepEnabled;
}

- (BOOL)setBatteryPackMode:(BOOL)mode forConnectionUUID:(id)d forceResponse:(BOOL)response
{
  responseCopy = response;
  modeCopy = mode;
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:dCopy];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 setBatteryPackMode:modeCopy forceResponse:responseCopy];
  }

  else
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 2;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v14 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = dCopy;
      _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v16, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)isBatteryPackModeEnabled:(id)enabled
{
  v14 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:enabledCopy];
  v6 = v5;
  if (v5)
  {
    isBatteryPackModeEnabled = [v5 isBatteryPackModeEnabled];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = enabledCopy;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v12, 0xCu);
    }

    isBatteryPackModeEnabled = 0;
  }

  return isBatteryPackModeEnabled;
}

- (BOOL)setAccessoryRequestedCurrent:(unsigned int)current forConnectionUUID:(id)d
{
  v4 = *&current;
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:dCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 setAccessoryRequestedCurrent:v4];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v14, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)setAccessoryUsedCurrent:(unsigned int)current forConnectionUUID:(id)d
{
  v4 = *&current;
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:dCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 setAccessoryUsedCurrent:v4];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v14, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)resetAccessoryBaseCurrent:(id)current
{
  v14 = *MEMORY[0x277D85DE8];
  currentCopy = current;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:currentCopy];
  v6 = v5;
  if (v5)
  {
    resetAccessoryBaseCurrent = [v5 resetAccessoryBaseCurrent];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = currentCopy;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v12, 0xCu);
    }

    resetAccessoryBaseCurrent = 0;
  }

  return resetAccessoryBaseCurrent;
}

- (unsigned)accessoryChargingCurrentInmA:(id)a
{
  v14 = *MEMORY[0x277D85DE8];
  aCopy = a;
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:aCopy];
  v6 = v5;
  if (v5)
  {
    accessoryChargingCurrentInmA = [v5 accessoryChargingCurrentInmA];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = aCopy;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v12, 0xCu);
    }

    accessoryChargingCurrentInmA = 0;
  }

  return accessoryChargingCurrentInmA;
}

- (unsigned)accessoryPowerModeCurrentLimitInmA:(int)a forConnectionUUID:(id)d
{
  v4 = *&a;
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:dCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 accessoryPowerModeCurrentLimitInmA:v4];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Unable to find accMgrTransport for base connection UUID %@", &v14, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (id)digitalIDDataForUpstreamConnection:(id)connection
{
  v4 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:connection];
  v5 = -[ACCTransportIOAccessorySharedManager managerForIOAccessoryManagerService:](self, "managerForIOAccessoryManagerService:", [v4 upstreamManagerService]);
  digitalID = [v5 digitalID];

  return digitalID;
}

- (BOOL)connectedThroughAdapter:(id)adapter
{
  v4 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:adapter];
  v5 = -[ACCTransportIOAccessorySharedManager managerForIOAccessoryManagerService:](self, "managerForIOAccessoryManagerService:", [v4 upstreamManagerService]);
  digitalID = [v5 digitalID];
  v7 = digitalID != 0;

  return v7;
}

- (BOOL)setFeaturesFromAuthStatus:(int)status andAuthCert:(id)cert certType:(int)type forConnectionUUID:(id)d withConnectionType:(int)connectionType
{
  v9 = *&type;
  v10 = *&status;
  certCopy = cert;
  v13 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUID:d];
  rootE75Manager = v13;
  if (connectionType == 1 && !v13)
  {
    if (gLogObjects)
    {
      v15 = gNumLogObjects < 2;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v18 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    else
    {
      v18 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_233656000, v18, OS_LOG_TYPE_DEFAULT, "Setting allowed features for root E75", v20, 2u);
    }

    rootE75Manager = [(ACCTransportIOAccessorySharedManager *)self rootE75Manager];
    goto LABEL_16;
  }

  if (connectionType != 3)
  {
LABEL_16:
    v17 = [rootE75Manager setFeaturesFromAuthStatus:v10 authCert:certCopy certType:v9];
    goto LABEL_17;
  }

  v17 = 0;
LABEL_17:

  return v17;
}

- (void)IOAccessoryManagerServiceArrived:(unsigned int)arrived
{
  v13 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    arrivedCopy = arrived;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_INFO, "IOAccMgr service arrived with service %d", buf, 8u);
  }

  listQ = self->_listQ;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceArrived___block_invoke;
  v9[3] = &unk_2789E9040;
  v9[4] = self;
  arrivedCopy2 = arrived;
  dispatch_sync(listQ, v9);
}

void __73__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceArrived___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managerForIOAccessoryManagerService:*(a1 + 40)];
  if (v2)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 1;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v5 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "Already connected IOAccMgr service with service %d", v7, 8u);
    }
  }

  else
  {
    [*(a1 + 32) _addIOAccessoryManagerWithIOService:*(a1 + 40)];
  }
}

- (void)IOAccessoryManagerServiceDetached:(unsigned int)detached
{
  v29 = *MEMORY[0x277D85DE8];
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceDetached___block_invoke;
  block[3] = &unk_2789E90F8;
  detachedCopy = detached;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(listQ, block);
  v7 = v20[5];
  if (v7)
  {
    connectionUUID = [v7 connectionUUID];

    if (connectionUUID)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v9 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v9 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        connectionUUID2 = [v20[5] connectionUUID];
        *buf = 67109378;
        detachedCopy3 = detached;
        v27 = 2112;
        v28 = connectionUUID2;
        _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "IOAccessoryManager service %d detach, remove connectionUUID %@", buf, 0x12u);
      }

      delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
      connectionUUID3 = [v20[5] connectionUUID];
      [delegate destroyConnectionWithUUID:connectionUUID3];

      [v20[5] setConnectionUUID:0];
      [(ACCTransportIOAccessorySharedManager *)self _clearChildPortEndpointsForManagerDisconnection:v20[5]];
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      detachedCopy3 = detached;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Couldn't find ACCTransportIOAccessoryManager for service %d", buf, 8u);
    }
  }

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];

  _Block_object_dispose(&v19, 8);
}

void __74__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceDetached___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 2;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v9[0] = 67109120;
    v9[1] = v5;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "IOAccessoryManager SERVICE DETACH: handling detach for io acc mgr with service %d", v9, 8u);
  }

  v6 = [*(a1 + 32) managerForIOAccessoryManagerService:*(a1 + 48)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)IOAccessoryManagerServiceTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  v28 = *MEMORY[0x277D85DE8];
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  if (gLogObjects)
  {
    v6 = gNumLogObjects < 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v25 = v3;
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "IOAccessoryManager SERVICE TERMINATED: removing io acc mgr with service %d", buf, 8u);
  }

  v9 = [(ACCTransportIOAccessorySharedManager *)self managerForIOAccessoryManagerService:v3];
  v10 = v9;
  if (v9)
  {
    connectionUUID = [v9 connectionUUID];

    if (connectionUUID)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v12 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v12 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        connectionUUID2 = [v10 connectionUUID];
        *buf = 67109378;
        v25 = v3;
        v26 = 2112;
        v27 = connectionUUID2;
        _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_DEFAULT, "IOAccessoryManager service %d terminated, remove connectionUUID %@", buf, 0x12u);
      }

      delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
      connectionUUID3 = [v10 connectionUUID];
      [delegate destroyConnectionWithUUID:connectionUUID3];

      [v10 setConnectionUUID:0];
      [(ACCTransportIOAccessorySharedManager *)self _clearChildPortEndpointsForManagerDisconnection:v10];
    }

    listQ = self->_listQ;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceTerminated___block_invoke;
    v21[3] = &unk_2789E8900;
    v22 = v10;
    selfCopy = self;
    dispatch_sync(listQ, v21);
    v13 = v22;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v13 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v25 = v3;
      _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_INFO, "Couldn't find ACCTransportIOAccessoryManager for service %d on service termination", buf, 8u);
    }
  }

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

void __76__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceTerminated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) transportClassTerminated];
  [*(*(a1 + 40) + 40) removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 32) removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 48) removeObject:*(a1 + 32)];
  v2 = [*(a1 + 32) ioService];
  v3 = [*(a1 + 40) rootE75Manager];
  v4 = [v3 ioService];

  if (v2 == v4)
  {
    v5 = 64;
  }

  else
  {
    v6 = [*(a1 + 32) ioService];
    v7 = [*(a1 + 40) rootOrionManager];
    v8 = [v7 ioService];

    if (v6 != v8)
    {
      return;
    }

    v5 = 72;
  }

  v9 = *(a1 + 40);
  v10 = *(v9 + v5);
  *(v9 + v5) = 0;
}

- (void)IOAccessoryManagerServiceInfoSet:(unsigned int)set
{
  v132 = *MEMORY[0x277D85DE8];
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = set;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "Accessory info set for IOAccessoryManager service %d", buf, 8u);
  }

  *buf = 0;
  v127 = buf;
  v128 = 0x3032000000;
  v129 = __Block_byref_object_copy__0;
  v130 = __Block_byref_object_dispose__0;
  v131 = 0;
  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceInfoSet___block_invoke;
  block[3] = &unk_2789E90F8;
  block[4] = self;
  block[5] = buf;
  setCopy = set;
  dispatch_sync(listQ, block);
  connectionUUID = [*(v127 + 5) connectionUUID];
  v10 = connectionUUID == 0;

  if (v10)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v121 = 67109120;
      LODWORD(v122) = set;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "No connectionUUID for IOAccessoryManager service %d yet, creating one", v121, 8u);
    }

    delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v14 = [delegate createConnectionWithType:objc_msgSend(*(v127 + 5) andIdentifier:{"connectionType"), 0}];

    delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    [delegate2 setSupervisedTransportsRestricted:objc_msgSend(*(v127 + 5) forConnectionWithUUID:{"supervisedTransportsRestricted"), v14}];

    [*(v127 + 5) setConnectionUUID:v14];
    accessoryInfoLock = [*(v127 + 5) accessoryInfoLock];
    [accessoryInfoLock lock];

    v124[0] = *MEMORY[0x277CFD2C0];
    v17 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(*(v127 + 5), "primaryPortNumber")}];
    v125[0] = v17;
    v124[1] = *MEMORY[0x277CFD290];
    digitalID = [*(v127 + 5) digitalID];
    null = digitalID;
    if (!digitalID)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v125[1] = null;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:2];
    if (!digitalID)
    {
    }

    accessoryInfoLock2 = [*(v127 + 5) accessoryInfoLock];
    [accessoryInfoLock2 unlock];

    v22 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v20];
    if ([*(v127 + 5) isAdapter])
    {
      v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(v127 + 5), "isAdapter")}];
      [v22 setObject:v23 forKey:*MEMORY[0x277CFD2B0]];
    }

    managerParent = [*(v127 + 5) managerParent];

    if (managerParent)
    {
      managerParent2 = [*(v127 + 5) managerParent];
      [v22 setObject:managerParent2 forKey:*MEMORY[0x277CFD2B8]];
    }

    delegate3 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v27 = [v22 copy];
    [delegate3 setProperties:v27 forConnectionWithUUID:v14];
  }

  if ([*(v127 + 5) connectionType] != 4 || self->_bIsWatch)
  {
    delegate4 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    connectionUUID2 = [*(v127 + 5) connectionUUID];
    v30 = [connectionUUID2 copy];
    v31 = [delegate4 createEndpointWithTransportType:5 andProtocol:2 andIdentifier:0 forConnectionWithUUID:v30 publishConnection:0];

    goto LABEL_32;
  }

  delegate5 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  connectionUUID3 = [*(v127 + 5) connectionUUID];
  v76 = [delegate5 endpointUUIDsForConnectionWithUUID:connectionUUID3];

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  delegate4 = v76;
  v77 = [delegate4 countByEnumeratingWithState:&v111 objects:v123 count:16];
  if (!v77)
  {

LABEL_143:
    connectionUUID2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    connectionUUID4 = [*(v127 + 5) connectionUUID];
    v93 = [connectionUUID4 copy];
    v31 = [connectionUUID2 createEndpointWithTransportType:12 andProtocol:1 andIdentifier:0 forConnectionWithUUID:v93 publishConnection:0];

    goto LABEL_32;
  }

  v31 = 0;
  v78 = *v112;
  do
  {
    for (i = 0; i != v77; ++i)
    {
      if (*v112 != v78)
      {
        objc_enumerationMutation(delegate4);
      }

      v80 = *(*(&v111 + 1) + 8 * i);
      delegate6 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v82 = [delegate6 transportTypeForEndpointWithUUID:v80];

      delegate7 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v84 = [delegate7 protocolForEndpointWithUUID:v80];

      if (v82 == 12 && v84 == 1)
      {
        v86 = v80;

        v31 = v86;
      }
    }

    v77 = [delegate4 countByEnumeratingWithState:&v111 objects:v123 count:16];
  }

  while (v77);

  if (!v31)
  {
    goto LABEL_143;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    connectionUUID2 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    connectionUUID2 = MEMORY[0x277D86220];
    v94 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(connectionUUID2, OS_LOG_TYPE_DEFAULT))
  {
    *v121 = 138412290;
    v122 = v31;
    _os_log_impl(&dword_233656000, connectionUUID2, OS_LOG_TYPE_DEFAULT, "Found existing endpointUUID %@ for IOAccessoryManager accessory info", v121, 0xCu);
  }

LABEL_32:

  if (gLogObjects)
  {
    v32 = gNumLogObjects <= 1;
  }

  else
  {
    v32 = 1;
  }

  v33 = !v32;
  if (v31)
  {
    if (v33)
    {
      v34 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v34 = MEMORY[0x277D86220];
      v36 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *v121 = 138412290;
      v122 = v31;
      _os_log_impl(&dword_233656000, v34, OS_LOG_TYPE_DEFAULT, "Created endpointUUID %@ for IOAccessoryManager accessory info", v121, 0xCu);
    }

    accessoryInfoLock3 = [*(v127 + 5) accessoryInfoLock];
    [accessoryInfoLock3 lock];

    v119[0] = *MEMORY[0x277CFD250];
    deviceName = [*(v127 + 5) deviceName];
    null2 = deviceName;
    if (!deviceName)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    v102 = null2;
    v120[0] = null2;
    v119[1] = *MEMORY[0x277CFD248];
    deviceModelNumber = [*(v127 + 5) deviceModelNumber];
    null3 = deviceModelNumber;
    if (!deviceModelNumber)
    {
      null3 = [MEMORY[0x277CBEB68] null];
    }

    v101 = null3;
    v120[1] = null3;
    v119[2] = *MEMORY[0x277CFD240];
    deviceVendorName = [*(v127 + 5) deviceVendorName];
    null4 = deviceVendorName;
    if (!deviceVendorName)
    {
      null4 = [MEMORY[0x277CBEB68] null];
    }

    v100 = null4;
    v120[2] = null4;
    v119[3] = *MEMORY[0x277CFD270];
    deviceSerialNumber = [*(v127 + 5) deviceSerialNumber];
    null5 = deviceSerialNumber;
    if (!deviceSerialNumber)
    {
      null5 = [MEMORY[0x277CBEB68] null];
    }

    v99 = null5;
    v120[3] = null5;
    v119[4] = *MEMORY[0x277CFD230];
    deviceFirmwareRevision = [*(v127 + 5) deviceFirmwareRevision];
    null6 = deviceFirmwareRevision;
    if (!deviceFirmwareRevision)
    {
      null6 = [MEMORY[0x277CBEB68] null];
    }

    v98 = null6;
    v120[4] = null6;
    v119[5] = *MEMORY[0x277CFD238];
    deviceHardwareRevision = [*(v127 + 5) deviceHardwareRevision];
    null7 = deviceHardwareRevision;
    if (!deviceHardwareRevision)
    {
      null7 = [MEMORY[0x277CBEB68] null];
    }

    v97 = null7;
    v120[5] = null7;
    v119[6] = *MEMORY[0x277CFD258];
    ppid = [*(v127 + 5) ppid];
    null8 = ppid;
    if (!ppid)
    {
      null8 = [MEMORY[0x277CBEB68] null];
    }

    v96 = null8;
    v120[6] = null8;
    v119[7] = *MEMORY[0x277CFD268];
    regionCode = [*(v127 + 5) regionCode];
    null9 = regionCode;
    if (!regionCode)
    {
      null9 = [MEMORY[0x277CBEB68] null];
    }

    v95 = null9;
    v120[7] = null9;
    v119[8] = *MEMORY[0x277CFD220];
    inductiveDeviceUID = [*(v127 + 5) inductiveDeviceUID];
    null10 = inductiveDeviceUID;
    if (!inductiveDeviceUID)
    {
      null10 = [MEMORY[0x277CBEB68] null];
    }

    v120[8] = null10;
    v119[9] = *MEMORY[0x277CFD278];
    vendorID = [*(v127 + 5) vendorID];
    null11 = vendorID;
    if (!vendorID)
    {
      null11 = [MEMORY[0x277CBEB68] null];
    }

    v120[9] = null11;
    v119[10] = *MEMORY[0x277CFD260];
    productID = [*(v127 + 5) productID];
    null12 = productID;
    if (!productID)
    {
      null12 = [MEMORY[0x277CBEB68] null];
    }

    v120[10] = null12;
    v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:11];
    if (!productID)
    {
    }

    if (!vendorID)
    {
    }

    if (!inductiveDeviceUID)
    {
    }

    if (!regionCode)
    {
    }

    if (!ppid)
    {
    }

    if (!deviceHardwareRevision)
    {
    }

    if (!deviceFirmwareRevision)
    {
    }

    if (!deviceSerialNumber)
    {
    }

    if (!deviceVendorName)
    {
    }

    if (!deviceModelNumber)
    {
    }

    if (!deviceName)
    {
    }

    accessoryInfoLock4 = [*(v127 + 5) accessoryInfoLock];
    [accessoryInfoLock4 unlock];

    connectionUUID5 = [*(v127 + 5) connectionUUID];
    NSLog(&cfstr_Accinfodiction.isa, v110, connectionUUID5);

    delegate8 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    [delegate8 setAccessoryInfo:v110 forEndpointWithUUID:v31];

    accessoryInfoLock5 = [*(v127 + 5) accessoryInfoLock];
    [accessoryInfoLock5 lock];

    inductiveLocalDeviceID = [*(v127 + 5) inductiveLocalDeviceID];

    if (inductiveLocalDeviceID)
    {
      v117 = *MEMORY[0x277CFD2A8];
      inductiveLocalDeviceID2 = [*(v127 + 5) inductiveLocalDeviceID];
      v118 = inductiveLocalDeviceID2;
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];

      delegate9 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      connectionUUID6 = [*(v127 + 5) connectionUUID];
      [delegate9 setProperties:v60 forConnectionWithUUID:connectionUUID6];
    }

    [*(v127 + 5) updateInductiveInfo];
    accessoryInfoLock6 = [*(v127 + 5) accessoryInfoLock];
    [accessoryInfoLock6 unlock];

    eaProtocolChildPorts = [*(v127 + 5) eaProtocolChildPorts];
    v65 = [eaProtocolChildPorts count];

    oobPairingChildPorts = [*(v127 + 5) oobPairingChildPorts];
    v67 = [oobPairingChildPorts count];

    configStreamChildPorts = [*(v127 + 5) configStreamChildPorts];
    v69 = [configStreamChildPorts count];

    if (gLogObjects)
    {
      v70 = gNumLogObjects <= 1;
    }

    else
    {
      v70 = 1;
    }

    v71 = !v70;
    if (v65 || v67 || v69)
    {
      if (v71)
      {
        delegate10 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        delegate10 = MEMORY[0x277D86220];
        v88 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(delegate10, OS_LOG_TYPE_DEBUG))
      {
        -[ACCTransportIOAccessorySharedManager IOAccessoryManagerServiceInfoSet:].cold.7(v121, [*(v127 + 5) ioService], delegate10);
      }
    }

    else
    {
      if (v71)
      {
        v72 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v72 = MEMORY[0x277D86220];
        v89 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *v121 = 0;
        _os_log_impl(&dword_233656000, v72, OS_LOG_TYPE_DEFAULT, "Publishing connection with eACCEndpoint_Protocol_InternalInfo", v121, 2u);
      }

      delegate10 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      connectionUUID7 = [*(v127 + 5) connectionUUID];
      [delegate10 publishConnectionWithUUID:connectionUUID7];
    }
  }

  else
  {
    if (v33)
    {
      v35 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v35 = MEMORY[0x277D86220];
      v87 = MEMORY[0x277D86220];
    }

    v110 = v35;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v121 = 67109120;
      LODWORD(v122) = set;
      _os_log_impl(&dword_233656000, v35, OS_LOG_TYPE_DEFAULT, "Failed to create endpointUUID for IOAccessoryManager info for service %d", v121, 8u);
    }
  }

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];

  _Block_object_dispose(buf, 8);
}

uint64_t __73__ACCTransportIOAccessorySharedManager_IOAccessoryManagerServiceInfoSet___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) managerForIOAccessoryManagerService:*(a1 + 48)];

  return MEMORY[0x2821F96F8]();
}

- (void)IOAccessoryManagerResistorIDChanged:(int)changed forManager:(id)manager
{
  v29[2] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v7 = [(ACCTransportIOAccessorySharedManager *)self _portForManagerMatchingPrimaryPort:managerCopy];
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  if (v7)
  {
    v9 = objc_msgSend_ioAccPortEndpointUUID(v7);

    if (v9)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v10 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v10 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      connectionUUID = [managerCopy connectionUUID];
      v17 = objc_msgSend_ioAccPortEndpointUUID(v7);
      v24 = 138412546;
      v25 = connectionUUID;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "Already have a connection %@ and an endpoint %@ when handling resistorIDChanged...ignore it", &v24, 0x16u);
    }

    else
    {
      v11 = [(ACCTransportIOAccessorySharedManager *)self IOAccessoryPortArrived:v7 withEndpointProtocol:3 publish:1];
      v10 = v11;
      if (v11)
      {
        v12 = [v11 copy];
        [v7 setIoAccPortEndpointUUID:v12];
      }

      connectionUUID2 = [managerCopy connectionUUID];

      if (!connectionUUID2)
      {
        goto LABEL_24;
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v14 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v14 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        connectionUUID3 = [managerCopy connectionUUID];
        v24 = 138412290;
        v25 = connectionUUID3;
        _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "SharedManager: Have a connection UUID %@, sending resistorID notification", &v24, 0xCu);
      }

      connectionUUID = [MEMORY[0x277CCABB0] numberWithInteger:changed];
      v28[0] = *MEMORY[0x277CFD178];
      connectionUUID4 = [managerCopy connectionUUID];
      v28[1] = *MEMORY[0x277CFD190];
      v29[0] = connectionUUID4;
      v29[1] = connectionUUID;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:*MEMORY[0x277CFD198] object:0 userInfo:v21];
    }

LABEL_24:
  }

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (void)IOAccessoryManagerSupervisedTransportsRestrictedDidChange:(BOOL)change forManager:(id)manager
{
  changeCopy = change;
  v20 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  if (managerCopy && ([managerCopy connectionUUID], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v9 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      connectionUUID = [managerCopy connectionUUID];
      v17[0] = 67109378;
      v17[1] = changeCopy;
      v18 = 2112;
      v19 = connectionUUID;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "sending supervisedTransports %d notification for connectionUUID %@", v17, 0x12u);
    }

    delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
    connectionUUID2 = [managerCopy connectionUUID];
    [delegate setSupervisedTransportsRestricted:changeCopy forConnectionWithUUID:connectionUUID2];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      delegate = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      delegate = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&dword_233656000, delegate, OS_LOG_TYPE_DEFAULT, "no connectionUUID, not sending supervisedTransports notification", v17, 2u);
    }
  }

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (void)IOAccessoryPortServiceArrived:(unsigned int)arrived
{
  v3 = *&arrived;
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(ACCTransportIOAccessorySharedManager *)self _managerForIOService:*&arrived shouldCreateNewService:1];
  v6 = [(ACCTransportIOAccessorySharedManager *)self basePortForService:v3];
  if (v6)
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 2;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v11 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(&v11->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      ioService = v3;
      _os_log_impl(&dword_233656000, &v11->super.super, OS_LOG_TYPE_DEFAULT, "already existing ACCTransportIOAccessoryPort for service ID %d", buf, 8u);
    }
  }

  else
  {
    v11 = [[ACCTransportIOAccessoryPort alloc] initWithDelegate:self andIOService:v3];
    if ([(ACCTransportIOAccessorySharedManager *)self _addACCTransportToManager:v11])
    {
      listQ = self->_listQ;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __70__ACCTransportIOAccessorySharedManager_IOAccessoryPortServiceArrived___block_invoke;
      v18 = &unk_2789E8900;
      selfCopy = self;
      v11 = v11;
      v20 = v11;
      dispatch_sync(listQ, &v15);
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v10 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v10 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        ioService = v3;
        _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "Successfully added io accessory port service %d to all ports list", buf, 8u);
      }

      [(ACCTransportIOAccessoryPort *)v11 portServiceRegistrationComplete:v15];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v12 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v12 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        ioService = [(ACCTransportIOAccessoryBase *)v11 ioService];
        _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "Couldn't find upstream io acc manager service for accPort service %d", buf, 8u);
      }
    }
  }
}

- (void)IOAccessoryPortServiceTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  v30 = *MEMORY[0x277D85DE8];
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v6 = [(ACCTransportIOAccessorySharedManager *)self basePortForService:v3];
  v7 = v6;
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v6)
  {
    if (v9)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v27 = v3;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "IOAccessoryPort TERMINATED: found terminated service %d", buf, 8u);
    }

    [v7 transportClassTerminated];
    [(ACCTransportIOAccessorySharedManager *)self _IOAccessoryPortDetachInternal:v7];
    v13 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:v7];
    v11 = v13;
    if (gLogObjects)
    {
      v14 = gNumLogObjects <= 1;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    if (v13)
    {
      if (v15)
      {
        v16 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v16 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        ioService = [v11 ioService];
        *buf = 67109376;
        v27 = ioService;
        v28 = 1024;
        v29 = v3;
        _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_DEFAULT, "Found manager with service %d for removed IOAccessoryPortService  %d", buf, 0xEu);
      }

      [v11 removeIOAccessoryChildPort:v7];
    }

    else
    {
      if (v15)
      {
        v17 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v17 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v27 = v3;
        _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_INFO, "Didn't find manager for removed accessory port service %d", buf, 8u);
      }
    }

    listQ = self->_listQ;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __73__ACCTransportIOAccessorySharedManager_IOAccessoryPortServiceTerminated___block_invoke;
    v24[3] = &unk_2789E8900;
    v24[4] = self;
    v25 = v7;
    dispatch_sync(listQ, v24);
  }

  else
  {
    if (v9)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v27 = v3;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_INFO, "Didn't find base accessory object for removed IOPort service %d", buf, 8u);
    }
  }

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

void __72__ACCTransportIOAccessorySharedManager_IOAccessoryAuthCPServiceArrived___block_invoke_134(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 96);
  v2 = [[DeferredAuthCPServiceWrapper alloc] initWithIOService:*(a1 + 48) withMgr:*(a1 + 40)];
  [v1 addObject:v2];
}

- (void)IOAccessoryAuthCPServiceTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  *&v35[5] = *MEMORY[0x277D85DE8];
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v6 = [(ACCTransportIOAccessorySharedManager *)self basePortForService:v3];
  v7 = v6;
  if (v6)
  {
    [v6 transportClassTerminated];
    [v7 startShutdownProcess];
    v8 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:v7];
    v9 = v8;
    if (gLogObjects)
    {
      v10 = gNumLogObjects <= 1;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    if (v8)
    {
      if (v11)
      {
        v12 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v12 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        v35[0] = [v9 ioService];
        LOWORD(v35[1]) = 1024;
        *(&v35[1] + 2) = v3;
        _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "AUTH CP Terminated: found manager with service %d for terminated service %d", buf, 0xEu);
      }

      [v9 removeIOAccessoryChildPort:v7];
      [v9 setIsAuthenticated:0];
    }

    else
    {
      if (v11)
      {
        v15 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v15 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v35[0] = v3;
        _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_INFO, "Didn't find manager for removed auth CP service %d", buf, 8u);
      }
    }

    listQ = self->_listQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__ACCTransportIOAccessorySharedManager_IOAccessoryAuthCPServiceTerminated___block_invoke;
    block[3] = &unk_2789E8900;
    block[4] = self;
    v33 = v7;
    dispatch_sync(listQ, block);
    connectionUUID = [v9 connectionUUID];
    if (connectionUUID)
    {
      v20 = connectionUUID;
      connectionUUID2 = [v9 connectionUUID];
      v22 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUIDHasActiveEndpoint:connectionUUID2];

      if (!v22)
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v23 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v23 = MEMORY[0x277D86220];
          v24 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          connectionUUID3 = [v9 connectionUUID];
          *buf = 138412290;
          *v35 = connectionUUID3;
          _os_log_impl(&dword_233656000, v23, OS_LOG_TYPE_DEFAULT, "No active endpoint for AuthCP Service connection, remove connectionUUID %@", buf, 0xCu);
        }

        delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
        connectionUUID4 = [v9 connectionUUID];
        [delegate destroyConnectionWithUUID:connectionUUID4];

        [v9 setConnectionUUID:0];
        [(ACCTransportIOAccessorySharedManager *)self _clearChildPortEndpointsForManagerDisconnection:v9];
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v13 = gNumLogObjects < 2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v35[0] = v3;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_INFO, "Didn't find base accessory object for removed Auth CP service %d", buf, 8u);
    }
  }

  v28 = self->_listQ;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __75__ACCTransportIOAccessorySharedManager_IOAccessoryAuthCPServiceTerminated___block_invoke_139;
  v30[3] = &unk_2789E9040;
  v30[4] = self;
  v31 = v3;
  dispatch_async(v28, v30);
  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

void __75__ACCTransportIOAccessorySharedManager_IOAccessoryAuthCPServiceTerminated___block_invoke_139(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 96);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 service] == *(a1 + 40))
        {
          [*(*(a1 + 32) + 96) removeObject:v7];
          IOObjectRelease(*(a1 + 40));
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v8 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v8 = MEMORY[0x277D86220];
            v9 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 40);
            v11 = [*(*(a1 + 32) + 96) count];
            *buf = 67109376;
            v17 = v10;
            v18 = 2048;
            v19 = v11;
            _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "Removing dangling deferred AuthCP service %d due to service termination.  Remaining array count = %lu", buf, 0x12u);
          }

          goto LABEL_19;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

- (void)IOAccessoryEAServiceArrived:(unsigned int)arrived
{
  v3 = *&arrived;
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  [(ACCTransportIOAccessorySharedManager *)self _processEAService:v3 andPublish:1];
  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (void)IOAccessoryEAServiceTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  v66 = *MEMORY[0x277D85DE8];
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v6 = [(ACCTransportIOAccessorySharedManager *)self basePortForService:v3];
  v7 = v6;
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v6)
  {
    if (v9)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v65 = v3;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "EA SERVICE Terminated: found terminated service %d", buf, 8u);
    }

    [v7 transportClassTerminated];
    v13 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:v7];
    v11 = v13;
    if (gLogObjects)
    {
      v14 = gNumLogObjects <= 1;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    if (v13)
    {
      if (v15)
      {
        v16 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v16 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        ioService = [v11 ioService];
        *buf = 67109376;
        *v65 = ioService;
        *&v65[4] = 1024;
        *&v65[6] = v3;
        _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_INFO, "Found manager with service %d for incoming service %d", buf, 0xEu);
      }

      [v11 removeIOAccessoryChildPort:v7];
    }

    else
    {
      if (v15)
      {
        v17 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v17 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *v65 = v3;
        _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_INFO, "Didn't find manager for removed EA service %d", buf, 8u);
      }
    }

    deviceModelNumber = [v7 deviceModelNumber];
    if ([deviceModelNumber isEqualToString:@"A1468"])
    {
    }

    else
    {
      deviceModelNumber2 = [v7 deviceModelNumber];
      v24 = [deviceModelNumber2 isEqualToString:@"A1450"];

      if (!v24)
      {
LABEL_57:
        endpointUUID = [v7 endpointUUID];
        v29 = [endpointUUID copy];

        if (gLogObjects && gNumLogObjects >= 2)
        {
          v30 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v30 = MEMORY[0x277D86220];
          v31 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v65 = v29;
          _os_log_impl(&dword_233656000, v30, OS_LOG_TYPE_DEFAULT, "Remove EA Service endpointUUID %@", buf, 0xCu);
        }

        if (v29)
        {
          delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
          v33 = [delegate destroyEndpointWithUUID:v29];

          if (v33)
          {
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v34 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v34 = MEMORY[0x277D86220];
              v35 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              eaProtocol = [v7 eaProtocol];
              *buf = 138412546;
              *v65 = v29;
              *&v65[8] = 2112;
              *&v65[10] = eaProtocol;
              _os_log_impl(&dword_233656000, v34, OS_LOG_TYPE_DEFAULT, "Removed EA service endpoint %@ for protocol %@", buf, 0x16u);
            }

            [v7 setEndpointUUID:0];
            [v7 setParentConnectionUUID:0];
          }
        }

        listQ = self->_listQ;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__ACCTransportIOAccessorySharedManager_IOAccessoryEAServiceTerminated___block_invoke;
        block[3] = &unk_2789E8900;
        block[4] = self;
        v62 = v7;
        dispatch_sync(listQ, block);
        connectionUUID = [v11 connectionUUID];
        if (connectionUUID)
        {
          v39 = connectionUUID;
          connectionUUID2 = [v11 connectionUUID];
          v41 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUIDHasActiveEndpoint:connectionUUID2];

          if (!v41)
          {
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v42 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v42 = MEMORY[0x277D86220];
              v43 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              connectionUUID3 = [v11 connectionUUID];
              *buf = 138412290;
              *v65 = connectionUUID3;
              _os_log_impl(&dword_233656000, v42, OS_LOG_TYPE_DEFAULT, "No active endpoint for EA Service connection, remove connectionUUID %@", buf, 0xCu);
            }

            delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
            connectionUUID4 = [v11 connectionUUID];
            [delegate2 destroyConnectionWithUUID:connectionUUID4];

            [v11 setConnectionUUID:0];
            [(ACCTransportIOAccessorySharedManager *)self _clearChildPortEndpointsForManagerDisconnection:v11];
          }
        }

        goto LABEL_88;
      }
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v25 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      deviceModelNumber3 = [v7 deviceModelNumber];
      *buf = 138412290;
      *v65 = deviceModelNumber3;
      _os_log_impl(&dword_233656000, v25, OS_LOG_TYPE_DEFAULT, "Detaching a B139/B164, baseAccessoryEA %@", buf, 0xCu);
    }

    self->_isB139OrB164Connected = 0;
    goto LABEL_57;
  }

  if (v9)
  {
    v11 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v11 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *v65 = v3;
    _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_INFO, "Didn't find base accessory object for removed EA service %d", buf, 8u);
  }

LABEL_88:

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v47 = self->_deferEAServiceArray;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v58;
    while (2)
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v58 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v57 + 1) + 8 * i);
        if ([v52 service] == v3)
        {
          [(NSMutableArray *)self->_deferEAServiceArray removeObject:v52];
          IOObjectRelease(v3);
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v53 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v53 = MEMORY[0x277D86220];
            v54 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v55 = [(NSMutableArray *)self->_deferEAServiceArray count];
            *buf = 67109376;
            *v65 = v3;
            *&v65[4] = 2048;
            *&v65[6] = v55;
            _os_log_impl(&dword_233656000, v53, OS_LOG_TYPE_DEFAULT, "Removing dangling deferred EA service %d due to service termination.  Remaining array count = %lu", buf, 0x12u);
          }

          goto LABEL_106;
        }
      }

      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v57 objects:v63 count:16];
      if (v49)
      {
        continue;
      }

      break;
    }
  }

LABEL_106:

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (void)IOAccessoryOOBPairingServiceArrived:(unsigned int)arrived
{
  v3 = *&arrived;
  v68[2] = *MEMORY[0x277D85DE8];
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v6 = [(ACCTransportIOAccessorySharedManager *)self _managerForIOService:v3 shouldCreateNewService:1];
  v7 = [[ACCTransportIOAccessoryOOBPairing alloc] initWithDelegate:self andIOService:v3];
  [(ACCTransportIOAccessoryOOBPairing *)v7 openServiceSession];
  if (!v6)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v13 = "Starting OOBPairing Service that has no associated parent IOAccMgr";
    v14 = v11;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 2;
    goto LABEL_36;
  }

  if (![(ACCTransportIOAccessorySharedManager *)self _addACCTransportToManager:v7])
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v43 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_37;
    }

    *buf = 67109120;
    ioService = [(ACCTransportIOAccessoryBase *)v7 ioService];
    v13 = "Couldn't find upstream io acc manager service for OOBPairing service %d";
    v14 = v11;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 8;
LABEL_36:
    _os_log_impl(&dword_233656000, v14, v15, v13, buf, v16);
LABEL_37:

    goto LABEL_44;
  }

  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ACCTransportIOAccessorySharedManager_IOAccessoryOOBPairingServiceArrived___block_invoke;
  block[3] = &unk_2789E8900;
  block[4] = self;
  v9 = v7;
  v58 = v9;
  dispatch_sync(listQ, block);
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v10 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Successfully added io accessory OOBPairing to all ports list", buf, 2u);
  }

  connectionUUID = [v6 connectionUUID];

  if (!connectionUUID)
  {
    delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v20 = [delegate createConnectionWithType:objc_msgSend(v6 andIdentifier:{"connectionType"), 0}];

    delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    [delegate2 setSupervisedTransportsRestricted:objc_msgSend(v6 forConnectionWithUUID:{"supervisedTransportsRestricted"), v20}];

    [v6 setConnectionUUID:v20];
    accessoryInfoLock = [v6 accessoryInfoLock];
    [accessoryInfoLock lock];

    v67[0] = *MEMORY[0x277CFD2C0];
    v23 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v6, "primaryPortNumber")}];
    v68[0] = v23;
    v67[1] = *MEMORY[0x277CFD290];
    digitalID = [v6 digitalID];
    null = digitalID;
    if (!digitalID)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v68[1] = null;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
    if (!digitalID)
    {
    }

    accessoryInfoLock2 = [v6 accessoryInfoLock];
    [accessoryInfoLock2 unlock];

    delegate3 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v29 = [v26 copy];
    [delegate3 setProperties:v29 forConnectionWithUUID:v20];
  }

  v55 = v7;
  v65[0] = *MEMORY[0x277CFD250];
  deviceName = [(ACCTransportIOAccessoryOOBPairing *)v9 deviceName];
  v66[0] = deviceName;
  v65[1] = *MEMORY[0x277CFD240];
  deviceVendorName = [(ACCTransportIOAccessoryOOBPairing *)v9 deviceVendorName];
  v66[1] = deviceVendorName;
  v65[2] = *MEMORY[0x277CFD248];
  deviceModelNumber = [(ACCTransportIOAccessoryOOBPairing *)v9 deviceModelNumber];
  v66[2] = deviceModelNumber;
  v65[3] = *MEMORY[0x277CFD270];
  [(ACCTransportIOAccessoryOOBPairing *)v9 deviceSerialNumber];
  v31 = v56 = v6;
  v66[3] = v31;
  v65[4] = *MEMORY[0x277CFD238];
  deviceHardwareRevision = [(ACCTransportIOAccessoryOOBPairing *)v9 deviceHardwareRevision];
  v66[4] = deviceHardwareRevision;
  v65[5] = *MEMORY[0x277CFD230];
  deviceFirmwareRevision = [(ACCTransportIOAccessoryOOBPairing *)v9 deviceFirmwareRevision];
  v66[5] = deviceFirmwareRevision;
  v65[6] = *MEMORY[0x277CFD220];
  deviceUID = [(ACCTransportIOAccessoryOOBPairing *)v9 deviceUID];
  v66[6] = deviceUID;
  v65[7] = *MEMORY[0x277CFD228];
  devicePlatformID = [(ACCTransportIOAccessoryOOBPairing *)v9 devicePlatformID];
  v66[7] = devicePlatformID;
  v65[8] = @"SupportedTypes";
  deviceSupportedTypes = [(ACCTransportIOAccessoryOOBPairing *)v9 deviceSupportedTypes];
  v66[8] = deviceSupportedTypes;
  v65[9] = @"Supports2Way";
  supports2way = [(ACCTransportIOAccessoryOOBPairing *)v9 supports2way];
  v66[9] = supports2way;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:10];

  v6 = v56;
  delegate4 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  connectionUUID2 = [v56 connectionUUID];
  v40 = [connectionUUID2 copy];
  v41 = [delegate4 createEndpointWithTransportType:9 andProtocol:8 andIdentifier:0 forConnectionWithUUID:v40 publishConnection:0];

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v42 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v42 = MEMORY[0x277D86220];
    v44 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    ioService2 = [(ACCTransportIOAccessoryBase *)v9 ioService];
    *buf = 67109634;
    ioService = ioService2;
    v61 = 2112;
    v62 = v41;
    v63 = 2112;
    v64 = v54;
    _os_log_impl(&dword_233656000, v42, OS_LOG_TYPE_INFO, "setAccessoryInfo for OOBPairing service %d, endpointUUID %@, accInfo %@", buf, 0x1Cu);
  }

  delegate5 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  [delegate5 setAccessoryInfo:v54 forEndpointWithUUID:v41];

  v47 = [v41 copy];
  [(ACCTransportIOAccessoryOOBPairing *)v9 setEndpointUUID:v47];

  connectionUUID3 = [v56 connectionUUID];
  [(ACCTransportIOAccessoryOOBPairing *)v9 setParentConnectionUUID:connectionUUID3];

  delegate6 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  connectionUUID4 = [v56 connectionUUID];
  [delegate6 publishConnectionWithUUID:connectionUUID4];

  v7 = v55;
LABEL_44:
  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (void)IOAccessoryOOBPairingServiceTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  *&v44[5] = *MEMORY[0x277D85DE8];
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v6 = [(ACCTransportIOAccessorySharedManager *)self basePortForService:v3];
  v7 = v6;
  if (v6)
  {
    [v6 closeServiceSession];
    v8 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:v7];
    v9 = v8;
    if (gLogObjects)
    {
      v10 = gNumLogObjects <= 1;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    if (v8)
    {
      if (v11)
      {
        v12 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v12 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        v44[0] = [v9 ioService];
        LOWORD(v44[1]) = 1024;
        *(&v44[1] + 2) = v3;
        _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_INFO, "OOBPairing Terminated: found manager with service %d for terminated service %d", buf, 0xEu);
      }

      [v9 setNeedsOOBPairing:[v9 primaryPortNumber]== 257];
      [v9 removeIOAccessoryChildPort:v7];
    }

    else
    {
      if (v11)
      {
        v15 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v15 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v44[0] = v3;
        _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_INFO, "Didn't find manager for removed auth CP service %d", buf, 8u);
      }
    }

    endpointUUID = [v7 endpointUUID];
    v19 = [endpointUUID copy];

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v20 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v44 = v19;
      _os_log_impl(&dword_233656000, v20, OS_LOG_TYPE_DEFAULT, "Remove OOBPairing Service endpointUUID %@", buf, 0xCu);
    }

    if (v19)
    {
      delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v23 = [delegate destroyEndpointWithUUID:v19];

      if (v23)
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v24 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v24 = MEMORY[0x277D86220];
          v25 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v44 = v19;
          _os_log_impl(&dword_233656000, v24, OS_LOG_TYPE_DEFAULT, "Removed OOBPairing service endpoint %@", buf, 0xCu);
        }

        [v7 setEndpointUUID:0];
        [v7 setParentConnectionUUID:0];
      }
    }

    listQ = self->_listQ;
    v37 = MEMORY[0x277D85DD0];
    v38 = 3221225472;
    v39 = __79__ACCTransportIOAccessorySharedManager_IOAccessoryOOBPairingServiceTerminated___block_invoke;
    v40 = &unk_2789E8900;
    selfCopy = self;
    v42 = v7;
    dispatch_sync(listQ, &v37);
    v27 = [v9 connectionUUID:v37];
    if (v27)
    {
      v28 = v27;
      connectionUUID = [v9 connectionUUID];
      v30 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUIDHasActiveEndpoint:connectionUUID];

      if (!v30)
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v31 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v31 = MEMORY[0x277D86220];
          v32 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          connectionUUID2 = [v9 connectionUUID];
          *buf = 138412290;
          *v44 = connectionUUID2;
          _os_log_impl(&dword_233656000, v31, OS_LOG_TYPE_DEFAULT, "No active endpoint for OOBPairing Service connection, remove connectionUUID %@", buf, 0xCu);
        }

        delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
        connectionUUID3 = [v9 connectionUUID];
        [delegate2 destroyConnectionWithUUID:connectionUUID3];

        [v9 setConnectionUUID:0];
        [(ACCTransportIOAccessorySharedManager *)self _clearChildPortEndpointsForManagerDisconnection:v9];
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v13 = gNumLogObjects < 2;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v44[0] = v3;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_INFO, "Didn't find base accessory object for removed OOBPairing service %d", buf, 8u);
    }
  }

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (id)IOAccessoryPortArrived:(id)arrived withEndpointProtocol:(int)protocol publish:(BOOL)publish
{
  publishCopy = publish;
  v6 = *&protocol;
  v90 = *MEMORY[0x277D85DE8];
  arrivedCopy = arrived;
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v10 = 0x2812FE000uLL;
  v11 = 0x2812FE000uLL;
  if (gLogObjects)
  {
    v12 = gNumLogObjects < 2;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138413570;
    *v81 = arrivedCopy;
    *&v81[8] = 1024;
    *&v81[10] = [arrivedCopy primaryPortNumber];
    v82 = 1024;
    portIDNumber = [arrivedCopy portIDNumber];
    v84 = 1024;
    portStreamType = [arrivedCopy portStreamType];
    v86 = 1024;
    v87 = v6;
    v88 = 1024;
    v89 = publishCopy;
    _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_INFO, "IOAccessoryPortArrived: port %@ (%d / %d) streamType %d, endpointProtocol %{coreacc:ACCEndpoint_Protocol_t}d, publish %d", buf, 0x2Au);
  }

  delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (delegate)
  {
    v73 = [(ACCTransportIOAccessorySharedManager *)self _endpointTransportTypeForIOAccessoryPort:arrivedCopy];
    v16 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:arrivedCopy];
    connectionUUID = [v16 connectionUUID];

    v72 = v6;
    if (connectionUUID)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v18 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v18 = MEMORY[0x277D86220];
        v35 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [ACCTransportIOAccessorySharedManager IOAccessoryPortArrived:v16 withEndpointProtocol:? publish:?];
      }

      delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];

      if (!delegate2)
      {
LABEL_36:
        delegate3 = [(ACCTransportIOAccessorySharedManager *)self delegate];
        connectionUUID2 = [v16 connectionUUID];
        v46 = [delegate3 createEndpointWithTransportType:v73 andProtocol:v6 andIdentifier:0 forConnectionWithUUID:connectionUUID2 publishConnection:0];

        connectionUUID3 = [v16 connectionUUID];
        [arrivedCopy setIoAccPortParentConnectionUUID:connectionUUID3];

        if (!__isForcePassthroughIOAccessoryManagerPort())
        {
          goto LABEL_48;
        }

        isForcePassthroughIOAccessoryManagerPort = __isForcePassthroughIOAccessoryManagerPort();
        if (isForcePassthroughIOAccessoryManagerPort == 2)
        {
          delegate4 = [(ACCTransportIOAccessorySharedManager *)self delegate];
          [delegate4 setProperties:&unk_2848FBD00 forEndpointWithUUID:v46];
        }

        else
        {
          if (isForcePassthroughIOAccessoryManagerPort != 1)
          {
            goto LABEL_48;
          }

          delegate4 = [(ACCTransportIOAccessorySharedManager *)self delegate];
          v50 = [&unk_2848FBCD8 copy];
          [delegate4 setProperties:v50 forEndpointWithUUID:v46];
        }

LABEL_48:
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v53 = *(v10 + 3720);
        if (v53 && *(v11 + 3704) >= 2)
        {
          v54 = *(v53 + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v54 = MEMORY[0x277D86220];
          v55 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          resistorID = [v16 resistorID];
          *buf = 67109120;
          *v81 = resistorID;
          _os_log_impl(&dword_233656000, v54, OS_LOG_TYPE_INFO, "resistorID from manager in IOAccessoryPortArrived: %u", buf, 8u);
        }

        if ([v16 resistorID]!= 100 && [v16 resistorID]!= -1)
        {
          v57 = *(v10 + 3720);
          if (v57 && *(v11 + 3704) >= 2)
          {
            v58 = *(v57 + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v58 = MEMORY[0x277D86220];
            v59 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            resistorID2 = [v16 resistorID];
            *buf = 67109120;
            *v81 = resistorID2;
            _os_log_impl(&dword_233656000, v58, OS_LOG_TYPE_DEFAULT, "Sending resistorID %d with IOAccessoryPort endpoint properties", buf, 8u);
          }

          v61 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSObject resistorID](v16, "resistorID")}];
          [dictionary setObject:v61 forKey:*MEMORY[0x277CFD350]];
        }

        v62 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(arrivedCopy, "portIDNumber")}];
        [dictionary setObject:v62 forKey:*MEMORY[0x277CFD348]];

        delegate5 = [(ACCTransportIOAccessorySharedManager *)self delegate];
        v64 = [dictionary copy];
        [delegate5 setProperties:v64 forEndpointWithUUID:v46];

        if (publishCopy)
        {
          delegate6 = [(ACCTransportIOAccessorySharedManager *)self delegate];
          connectionUUID4 = [v16 connectionUUID];
          [delegate6 publishConnectionWithUUID:connectionUUID4];
        }

        v67 = *(v10 + 3720);
        if (v67 && *(v11 + 3704) >= 2)
        {
          v68 = *(v67 + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v68 = MEMORY[0x277D86220];
          v69 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v81 = v73;
          *&v81[4] = 2112;
          *&v81[6] = v46;
          v82 = 1024;
          portIDNumber = v72;
          _os_log_impl(&dword_233656000, v68, OS_LOG_TYPE_DEFAULT, "IOAccessoryPort arrived, transportType: %{coreacc:ACCEndpoint_TransportType_t}d, assigned endpointUUID %@, endpoint protocol %{coreacc:ACCEndpoint_Protocol_t}d", buf, 0x18u);
        }

        goto LABEL_78;
      }

      accessoryInfoLock = [v16 accessoryInfoLock];
      [accessoryInfoLock lock];

      [v16 updateInductiveInfo];
      inductiveLocalDeviceID = [v16 inductiveLocalDeviceID];

      if (inductiveLocalDeviceID)
      {
        v78 = *MEMORY[0x277CFD2A8];
        inductiveLocalDeviceID2 = [v16 inductiveLocalDeviceID];
        v79 = inductiveLocalDeviceID2;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];

        delegate7 = [(ACCTransportIOAccessorySharedManager *)self delegate];
        v42 = [v40 copy];
        connectionUUID5 = [v16 connectionUUID];
        [delegate7 setProperties:v42 forConnectionWithUUID:connectionUUID5];

        v10 = 0x2812FE000uLL;
        v6 = v72;
      }

      accessoryInfoLock2 = [v16 accessoryInfoLock];
      [accessoryInfoLock2 unlock];
LABEL_35:

      goto LABEL_36;
    }

    delegate8 = [(ACCTransportIOAccessorySharedManager *)self delegate];

    if (!delegate8)
    {
      goto LABEL_36;
    }

    v20 = [(ACCTransportIOAccessorySharedManager *)self _connectionTypeForIOAccessoryPort:arrivedCopy];
    delegate9 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    accessoryInfoLock2 = [delegate9 createConnectionWithType:v20 andIdentifier:0];

    delegate10 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    [delegate10 setSupervisedTransportsRestricted:-[NSObject supervisedTransportsRestricted](v16 forConnectionWithUUID:{"supervisedTransportsRestricted"), accessoryInfoLock2}];

    [v16 setConnectionUUID:accessoryInfoLock2];
    accessoryInfoLock3 = [v16 accessoryInfoLock];
    [accessoryInfoLock3 lock];

    [v16 updateInductiveInfo];
    inductiveLocalDeviceID3 = [v16 inductiveLocalDeviceID];

    v26 = MEMORY[0x277CFD290];
    if (inductiveLocalDeviceID3)
    {
      v76[0] = *MEMORY[0x277CFD2C0];
      v27 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(arrivedCopy, "primaryPortNumber")}];
      v77[0] = v27;
      v76[1] = *v26;
      digitalID = [v16 digitalID];
      null = digitalID;
      if (!digitalID)
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      v77[1] = null;
      v76[2] = *MEMORY[0x277CFD2A8];
      inductiveLocalDeviceID4 = [v16 inductiveLocalDeviceID];
      v77[2] = inductiveLocalDeviceID4;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];

      if (digitalID)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v74[0] = *MEMORY[0x277CFD2C0];
      v27 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(arrivedCopy, "primaryPortNumber")}];
      v74[1] = *v26;
      v75[0] = v27;
      digitalID = [v16 digitalID];
      null = digitalID;
      if (!digitalID)
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      v75[1] = null;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
      if (digitalID)
      {
        goto LABEL_25;
      }
    }

LABEL_25:
    accessoryInfoLock4 = [v16 accessoryInfoLock];
    [accessoryInfoLock4 unlock];

    delegate11 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v34 = [v31 copy];
    [delegate11 setProperties:v34 forConnectionWithUUID:accessoryInfoLock2];

    v11 = 0x2812FE000;
    v10 = 0x2812FE000;
    v6 = v72;
    goto LABEL_35;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v16 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v16 = MEMORY[0x277D86220];
    v51 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_INFO, "Can't find delegate for ACCTransportIOAccessoryPortProtocol accessoryPortAttached", buf, 2u);
  }

  v46 = 0;
LABEL_78:

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];

  return v46;
}

- (void)_IOAccessoryPortDetachInternal:(id)internal
{
  v31 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  v5 = objc_msgSend_ioAccPortEndpointUUID(internalCopy);
  if (v5 && (v6 = v5, [(ACCTransportIOAccessorySharedManager *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = objc_msgSend_ioAccPortEndpointUUID(internalCopy);
    v9 = [v8 copy];

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v10 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = v9;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "IOAccessoryPortDetachInternal: remove endpointUUID %@", &v29, 0xCu);
    }

    if (v9 && (-[ACCTransportIOAccessorySharedManager delegate](self, "delegate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 destroyEndpointWithUUID:v9], v14, v15))
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v16 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v16 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = v9;
        _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_DEFAULT, "Successfully sent io accessory port detach for endpointToRemove %@", &v29, 0xCu);
      }

      v17 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:internalCopy];
      [internalCopy setIoAccPortEndpointUUID:0];
      [internalCopy setIoAccPortParentConnectionUUID:0];
      connectionUUID = [v17 connectionUUID];
      if (connectionUUID)
      {
        v21 = connectionUUID;
        connectionUUID2 = [v17 connectionUUID];
        v23 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUIDHasActiveEndpoint:connectionUUID2];

        if (!v23)
        {
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v24 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v24 = MEMORY[0x277D86220];
            v25 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            connectionUUID3 = [v17 connectionUUID];
            v29 = 138412290;
            v30 = connectionUUID3;
            _os_log_impl(&dword_233656000, v24, OS_LOG_TYPE_DEFAULT, "No active endpoint for IOAccessoryPort, remove connectionUUID %@", &v29, 0xCu);
          }

          delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
          connectionUUID4 = [v17 connectionUUID];
          [delegate destroyConnectionWithUUID:connectionUUID4];

          [v17 setConnectionUUID:0];
          [(ACCTransportIOAccessorySharedManager *)self _clearChildPortEndpointsForManagerDisconnection:v17];
        }
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v17 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v17 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessorySharedManager _IOAccessoryPortDetachInternal:];
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 2;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      v9 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 67109120;
      LODWORD(v30) = [internalCopy ioService];
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "No active endpointUUID for IOAccessoryPort service %d", &v29, 8u);
    }
  }
}

- (void)IOAccessoryPortDetach:(id)detach
{
  detachCopy = detach;
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  [(ACCTransportIOAccessorySharedManager *)self _IOAccessoryPortDetachInternal:detachCopy];
  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (BOOL)IOAccessoryPortDataArrived:(id)arrived endpointUUID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  arrivedCopy = arrived;
  dCopy = d;
  if (gLogSignpostObjects)
  {
    v8 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  v11 = [dCopy hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v30 = 138412546;
      v31 = dCopy;
      v32 = 2048;
      v33 = [arrivedCopy length];
      _os_signpost_emit_with_name_impl(&dword_233656000, v10, OS_SIGNPOST_EVENT, v12, "Endpoint RECV", "Received incoming data! %@, %lu bytes", &v30, 0x16u);
    }
  }

  v13 = [dCopy hash];
  v14 = [arrivedCopy hash];
  v15 = v14 ^ v13;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v13 == v14 || v15 == -1;
  v19 = !v18;
  if (!v18 && os_signpost_enabled(v16))
  {
    v20 = [arrivedCopy length];
    v30 = 138412546;
    v31 = dCopy;
    v32 = 2048;
    v33 = v20;
    _os_signpost_emit_with_name_impl(&dword_233656000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Endpoint RECV", "Received incoming data! %@, %lu bytes", &v30, 0x16u);
  }

  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    LODWORD(delegate) = [delegate2 processIncomingData:arrivedCopy forEndpointWithUUID:dCopy];
  }

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v25 = *(gLogSignpostObjects + 24);
    if (!v19)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  v25 = MEMORY[0x277D86220];
  v26 = MEMORY[0x277D86220];
  if (v19)
  {
LABEL_36:
    if (os_signpost_enabled(v25))
    {
      if (delegate)
      {
        v27 = "SUCCESS";
      }

      else
      {
        v27 = "ERROR";
      }

      v28 = [arrivedCopy length];
      v30 = 136315650;
      v31 = v27;
      v32 = 2112;
      v33 = dCopy;
      v34 = 2048;
      v35 = v28;
      _os_signpost_emit_with_name_impl(&dword_233656000, v25, OS_SIGNPOST_INTERVAL_END, v15, "Endpoint RECV", "%s handling Received incoming data! %@, %lu bytes", &v30, 0x20u);
    }
  }

LABEL_41:

  return delegate;
}

- (void)IOAccessoryPortPropertyChanged:(id)changed
{
  *&v22[5] = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v6 = -[ACCTransportIOAccessorySharedManager _managerForIOService:shouldCreateNewService:](self, "_managerForIOService:shouldCreateNewService:", [changedCopy ioService], 1);
  v7 = v6;
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v6)
  {
    if (v9)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109376;
      v22[0] = [changedCopy ioService];
      LOWORD(v22[1]) = 1024;
      *(&v22[1] + 2) = [changedCopy portIDNumber];
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Didn't find existing manager for property change IOAccessoryPortService %d, portID %d", &v21, 0xEu);
    }

    goto LABEL_39;
  }

  if (v9)
  {
    v10 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 67109376;
    v22[0] = [v7 ioService];
    LOWORD(v22[1]) = 1024;
    *(&v22[1] + 2) = [changedCopy ioService];
    _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "Found manager with service %d for property change IOAccessoryPort service %d, will remove from its child ports", &v21, 0xEu);
  }

  [v7 removeIOAccessoryChildPort:changedCopy];
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v13 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    ioAccPortParentConnectionUUID = [changedCopy ioAccPortParentConnectionUUID];
    v21 = 138412290;
    *v22 = ioAccPortParentConnectionUUID;
    _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "Current parent connectionUUID for port is %@", &v21, 0xCu);
  }

  ioAccPortParentConnectionUUID2 = [changedCopy ioAccPortParentConnectionUUID];

  if (ioAccPortParentConnectionUUID2)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_msgSend_ioAccPortEndpointUUID(changedCopy);
      v21 = 138412290;
      *v22 = v18;
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Current endpointUUID for port is %@", &v21, 0xCu);
    }

LABEL_39:
  }

  [(ACCTransportIOAccessorySharedManager *)self _addACCTransportToManager:changedCopy];
  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (void)IOAccessoryPortPublish:(id)publish
{
  v17 = *MEMORY[0x277D85DE8];
  publishCopy = publish;
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v6 = -[ACCTransportIOAccessorySharedManager _managerForIOService:shouldCreateNewService:](self, "_managerForIOService:shouldCreateNewService:", [publishCopy ioService], 1);
  if (v6)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v7 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109376;
      v14[1] = [v6 ioService];
      v15 = 1024;
      ioService = [publishCopy ioService];
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "Found manager with service %d for property change IOAccessoryPort service %d, will publish", v14, 0xEu);
    }

    delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];

    if (delegate)
    {
      delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
      connectionUUID = [v6 connectionUUID];
      [delegate2 publishConnectionWithUUID:connectionUUID];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        delegate2 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        delegate2 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(delegate2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_233656000, delegate2, OS_LOG_TYPE_INFO, "Can't find delegate for ACCTransportIOAccessoryPortProtocol skip Publish", v14, 2u);
      }
    }
  }

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (void)IOAccessoryAuthCPServiceAuthStatusChanged:(int)changed authType:(int)type authCert:(id)cert certType:(int)certType authCTA:(BOOL)a service:(unsigned int)service
{
  v8 = *&service;
  aCopy = a;
  v11 = *&changed;
  v88 = *MEMORY[0x277D85DE8];
  certCopy = cert;
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v15 = [(ACCTransportIOAccessorySharedManager *)self _managerForIOService:v8 shouldCreateNewService:0];
  selfCopy = self;
  v16 = [(ACCTransportIOAccessorySharedManager *)self basePortForService:v8];
  v17 = +[ACCTransportIOAccessorySharedManager sharedManager];
  delegate = [v17 delegate];

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v18 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110400;
    LODWORD(v81) = v11;
    WORD2(v81) = 1024;
    *(&v81 + 6) = 2;
    WORD5(v81) = 1024;
    HIDWORD(v81) = type;
    v82 = 1024;
    v83 = v8;
    v84 = 1024;
    v85 = v15;
    v86 = 1024;
    v87 = v16;
    _os_log_impl(&dword_233656000, v18, OS_LOG_TYPE_DEFAULT, "newAuthStatus = %d (passed = %d), authType = %d, ioService = %d, accMgrInstance: %04X, authCPInstance = %04X", buf, 0x26u);
  }

  IOAccessoryManagerGetUpstreamService();
  p_isa = &selfCopy->super.isa;
  if (!(selfCopy->_bIsWatch | ((IOAccessoryManagerGetType() & 0xF) == 5)))
  {
    if (v15 && ([v15 connectionUUID], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
    {
      if (v11 != 2)
      {
        goto LABEL_21;
      }

      v68 = v16;
      v36 = certCopy;
      delegate2 = [(ACCTransportIOAccessorySharedManager *)selfCopy delegate];
      v22 = [delegate2 createConnectionWithType:objc_msgSend(v15 andIdentifier:{"connectionType"), 0}];

      delegate3 = [(ACCTransportIOAccessorySharedManager *)selfCopy delegate];
      [delegate3 setSupervisedTransportsRestricted:objc_msgSend(v15 forConnectionWithUUID:{"supervisedTransportsRestricted"), v22}];

      [v15 setConnectionUUID:v22];
      accessoryInfoLock = [v15 accessoryInfoLock];
      [accessoryInfoLock lock];

      v78[0] = *MEMORY[0x277CFD2C0];
      v40 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v15, "primaryPortNumber")}];
      v79[0] = v40;
      v78[1] = *MEMORY[0x277CFD290];
      digitalID = [v15 digitalID];
      null = digitalID;
      if (!digitalID)
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      v79[1] = null;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
      if (!digitalID)
      {
      }

      accessoryInfoLock2 = [v15 accessoryInfoLock];
      [accessoryInfoLock2 unlock];

      delegate4 = [(ACCTransportIOAccessorySharedManager *)selfCopy delegate];
      v46 = [v43 copy];
      [delegate4 setProperties:v46 forConnectionWithUUID:v22];

      p_isa = &selfCopy->super.isa;
      certCopy = v36;
      v16 = v68;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v22 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v22 = MEMORY[0x277D86220];
        v23 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [ACCTransportIOAccessorySharedManager IOAccessoryAuthCPServiceAuthStatusChanged:v15 authType:? authCert:? certType:? authCTA:? service:?];
      }
    }
  }

LABEL_21:
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v24 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v24 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    connectionUUID = [v15 connectionUUID];
    *buf = 67109378;
    LODWORD(v81) = v15;
    WORD2(v81) = 2112;
    *(&v81 + 6) = connectionUUID;
    _os_log_impl(&dword_233656000, v24, OS_LOG_TYPE_DEFAULT, "accMgrInstance: %04X, connectionUUID:[%@]", buf, 0x12u);
  }

  if (v11 == 2)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  v28 = v15;
  if (v15 || v16 && ([v16 connectionUUID], v30 = objc_claimAutoreleasedReturnValue(), v30, v28 = v16, v30))
  {
    connectionUUID2 = [v28 connectionUUID];
    if (connectionUUID2 && ([delegate setAuthenticationStatus:v27 andCertificateData:certCopy authCTA:aCopy forConnectionWithUUID:connectionUUID2] & 1) != 0)
    {
      if (!v15)
      {
        goto LABEL_74;
      }

      goto LABEL_57;
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v31 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v31 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, v31, OS_LOG_TYPE_INFO, "auth status changed, but no connectionUUID is associated with the auth status event", buf, 2u);
    }

    connectionUUID2 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v33 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v33 = MEMORY[0x277D86220];
    v34 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessorySharedManager IOAccessoryAuthCPServiceAuthStatusChanged:authType:authCert:certType:authCTA:service:];
  }

  if (v15)
  {
LABEL_57:
    if ([v15 connectionType] != 3 && (objc_msgSend(v15, "setFeaturesFromAuthStatus:authCert:certType:", v11, certCopy, certType) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v35 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v35 = MEMORY[0x277D86220];
        v47 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessorySharedManager IOAccessoryAuthCPServiceAuthStatusChanged:authType:authCert:certType:authCTA:service:];
      }
    }
  }

LABEL_74:
  if (v11 == 2)
  {
    v66 = connectionUUID2;
    v67 = certCopy;
    v69 = v16;
    array = [MEMORY[0x277CBEB18] array];
    [v15 setIsAuthenticated:1];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v49 = p_isa[13];
    v50 = [v49 countByEnumeratingWithState:&v73 objects:v77 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = MEMORY[0x277D86220];
      v53 = *v74;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v74 != v53)
          {
            objc_enumerationMutation(v49);
          }

          v55 = *(*(&v73 + 1) + 8 * i);
          v56 = [v55 mgr];

          if (v56 == v15)
          {
            v57 = gLogObjects;
            v58 = gNumLogObjects;
            if (gLogObjects)
            {
              v59 = gNumLogObjects < 2;
            }

            else
            {
              v59 = 1;
            }

            if (v59)
            {
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *&v81 = v57;
                WORD4(v81) = 1024;
                *(&v81 + 10) = v58;
                _os_log_error_impl(&dword_233656000, v52, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v60 = v52;
              v61 = v52;
            }

            else
            {
              v61 = *(gLogObjects + 8);
            }

            p_isa = &selfCopy->super.isa;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              service = [v55 service];
              *buf = 138412546;
              *&v81 = v15;
              WORD4(v81) = 1024;
              *(&v81 + 10) = service;
              _os_log_impl(&dword_233656000, v61, OS_LOG_TYPE_DEFAULT, "accMgrInstance=%@ Auth passed. Processing deferred EA service %d, and remove it from deferral list", buf, 0x12u);
            }

            -[ACCTransportIOAccessorySharedManager _processEAService:andPublish:](selfCopy, "_processEAService:andPublish:", [v55 service], 0);
            IOObjectRelease([v55 service]);
            [array addObject:v55];
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v73 objects:v77 count:16];
      }

      while (v51);
    }

    certCopy = v67;
    if ([array count])
    {
      delegate5 = [p_isa delegate];
      connectionUUID3 = [v15 connectionUUID];
      [delegate5 publishConnectionWithUUID:connectionUUID3];
    }

    [p_isa[13] removeObjectsInArray:array];

    v16 = v69;
    connectionUUID2 = v66;
  }

  else if (v11 == 4)
  {
    [v15 setIsAuthTimedOut:1];
  }

  accessoryPortLock2 = [p_isa accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (BOOL)IOAccessoryEADataArrived:(id)arrived eaEndpointUUID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  arrivedCopy = arrived;
  dCopy = d;
  if (gLogSignpostObjects)
  {
    v8 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  v11 = [dCopy hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v29 = 138412546;
      v30 = dCopy;
      v31 = 2048;
      v32 = [arrivedCopy length];
      _os_signpost_emit_with_name_impl(&dword_233656000, v10, OS_SIGNPOST_EVENT, v12, "Endpoint RECV", "Received incoming EA data! %@, %lu bytes", &v29, 0x16u);
    }
  }

  v13 = [dCopy hash];
  v14 = [arrivedCopy hash];
  v15 = v14 ^ v13;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v13 == v14 || v15 == -1;
  v19 = !v18;
  if (!v18 && os_signpost_enabled(v16))
  {
    v20 = [arrivedCopy length];
    v29 = 138412546;
    v30 = dCopy;
    v31 = 2048;
    v32 = v20;
    _os_signpost_emit_with_name_impl(&dword_233656000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Endpoint RECV", "Received incoming EA data! %@, %lu bytes", &v29, 0x16u);
  }

  delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v23 = [delegate2 processIncomingData:arrivedCopy forEndpointWithUUID:dCopy];
  }

  else
  {
    v23 = 0;
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v24 = *(gLogSignpostObjects + 24);
    if (!v19)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  v24 = MEMORY[0x277D86220];
  v25 = MEMORY[0x277D86220];
  if (v19)
  {
LABEL_37:
    if (os_signpost_enabled(v24))
    {
      if (v23)
      {
        v26 = "SUCCESS";
      }

      else
      {
        v26 = "ERROR";
      }

      v27 = [arrivedCopy length];
      v29 = 136315650;
      v30 = v26;
      v31 = 2112;
      v32 = dCopy;
      v33 = 2048;
      v34 = v27;
      _os_signpost_emit_with_name_impl(&dword_233656000, v24, OS_SIGNPOST_INTERVAL_END, v15, "Endpoint RECV", "%s handling Received incoming EA data! %@, %lu bytes", &v29, 0x20u);
    }
  }

LABEL_42:

  return v23;
}

- (BOOL)IOAccessoryOOBPairingInfoArrived:(id)arrived endpointUUID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  arrivedCopy = arrived;
  dCopy = d;
  if (gLogSignpostObjects)
  {
    v8 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  v11 = [dCopy hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v29 = 138412546;
      v30 = dCopy;
      v31 = 2048;
      v32 = [arrivedCopy length];
      _os_signpost_emit_with_name_impl(&dword_233656000, v10, OS_SIGNPOST_EVENT, v12, "Endpoint RECV", "Received incoming OOBPairingInfo data! %@, %lu bytes", &v29, 0x16u);
    }
  }

  v13 = [dCopy hash];
  v14 = [arrivedCopy hash];
  v15 = v14 ^ v13;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v13 == v14 || v15 == -1;
  v19 = !v18;
  if (!v18 && os_signpost_enabled(v16))
  {
    v20 = [arrivedCopy length];
    v29 = 138412546;
    v30 = dCopy;
    v31 = 2048;
    v32 = v20;
    _os_signpost_emit_with_name_impl(&dword_233656000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Endpoint RECV", "Received incoming OOBPairingInfo data! %@, %lu bytes", &v29, 0x16u);
  }

  delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v23 = [delegate2 processIncomingData:arrivedCopy forEndpointWithUUID:dCopy];
  }

  else
  {
    v23 = 0;
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v24 = *(gLogSignpostObjects + 24);
    if (!v19)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  v24 = MEMORY[0x277D86220];
  v25 = MEMORY[0x277D86220];
  if (v19)
  {
LABEL_37:
    if (os_signpost_enabled(v24))
    {
      if (v23)
      {
        v26 = "SUCCESS";
      }

      else
      {
        v26 = "ERROR";
      }

      v27 = [arrivedCopy length];
      v29 = 136315650;
      v30 = v26;
      v31 = 2112;
      v32 = dCopy;
      v33 = 2048;
      v34 = v27;
      _os_signpost_emit_with_name_impl(&dword_233656000, v24, OS_SIGNPOST_INTERVAL_END, v15, "Endpoint RECV", "%s handling Received incoming OOBPairingInfo data! %@, %lu bytes", &v29, 0x20u);
    }
  }

LABEL_42:

  return v23;
}

- (BOOL)IOAccessoryOOBPairingDataArrived:(id)arrived endpointUUID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  arrivedCopy = arrived;
  dCopy = d;
  if (gLogSignpostObjects)
  {
    v8 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  v11 = [dCopy hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v29 = 138412546;
      v30 = dCopy;
      v31 = 2048;
      v32 = [arrivedCopy length];
      _os_signpost_emit_with_name_impl(&dword_233656000, v10, OS_SIGNPOST_EVENT, v12, "Endpoint RECV", "Received incoming OOBPairingData data! %@, %lu bytes", &v29, 0x16u);
    }
  }

  v13 = [dCopy hash];
  v14 = [arrivedCopy hash];
  v15 = v14 ^ v13;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v13 == v14 || v15 == -1;
  v19 = !v18;
  if (!v18 && os_signpost_enabled(v16))
  {
    v20 = [arrivedCopy length];
    v29 = 138412546;
    v30 = dCopy;
    v31 = 2048;
    v32 = v20;
    _os_signpost_emit_with_name_impl(&dword_233656000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Endpoint RECV", "Received incoming OOBPairingData data! %@, %lu bytes", &v29, 0x16u);
  }

  delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v23 = [delegate2 processIncomingData:arrivedCopy forEndpointWithUUID:dCopy];
  }

  else
  {
    v23 = 0;
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v24 = *(gLogSignpostObjects + 24);
    if (!v19)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  v24 = MEMORY[0x277D86220];
  v25 = MEMORY[0x277D86220];
  if (v19)
  {
LABEL_37:
    if (os_signpost_enabled(v24))
    {
      if (v23)
      {
        v26 = "SUCCESS";
      }

      else
      {
        v26 = "ERROR";
      }

      v27 = [arrivedCopy length];
      v29 = 136315650;
      v30 = v26;
      v31 = 2112;
      v32 = dCopy;
      v33 = 2048;
      v34 = v27;
      _os_signpost_emit_with_name_impl(&dword_233656000, v24, OS_SIGNPOST_INTERVAL_END, v15, "Endpoint RECV", "%s handling Received incoming OOBPairingData data! %@, %lu bytes", &v29, 0x20u);
    }
  }

LABEL_42:

  return v23;
}

- (BOOL)IOAccessoryOOBPairingDataStartedForEndpointUUID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = dCopy;
    _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "IOAccessoryOOBPairingDataStartedForEndpointUUID: %@", &v8, 0xCu);
  }

  return 1;
}

- (BOOL)IOAccessoryOOBPairingDataFinishedForEndpointUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = dCopy;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "IOAccessoryOOBPairingDataFinishedForEndpointUUID: %@", buf, 0xCu);
  }

  v8 = [(ACCTransportIOAccessorySharedManager *)self _basePortForEndpointUUID:dCopy];
  v9 = v8;
  if (v8 && [v8 ioServiceClassType] == 4)
  {
    v10 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:v9];
    if (v10)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v11 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v11 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        needsOOBPairing = [v10 needsOOBPairing];
        *buf = 138412546;
        v20 = v10;
        v21 = 1024;
        v22 = needsOOBPairing;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "accMgrInstance=%@ OOBPairing finished. Reset needsOOBPairing, current %d", buf, 0x12u);
      }

      [v10 setNeedsOOBPairing:0];
    }
  }

  else
  {
    v10 = 0;
  }

  listQ = self->_listQ;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__ACCTransportIOAccessorySharedManager_IOAccessoryOOBPairingDataFinishedForEndpointUUID___block_invoke;
  v17[3] = &unk_2789E8900;
  v17[4] = self;
  v18 = v10;
  v15 = v10;
  dispatch_async(listQ, v17);

  return 1;
}

void __89__ACCTransportIOAccessorySharedManager_IOAccessoryOOBPairingDataFinishedForEndpointUUID___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = *(*(a1 + 32) + 96);
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v29;
    v8 = MEMORY[0x277D86220];
    *&v5 = 134218240;
    v23 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 mgr];
        v12 = *(a1 + 40);

        if (v11 == v12)
        {
          v13 = gLogObjects;
          v14 = gNumLogObjects;
          if (gLogObjects)
          {
            v15 = gNumLogObjects < 2;
          }

          else
          {
            v15 = 1;
          }

          if (v15)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              *buf = v23;
              v34 = v13;
              v35 = 1024;
              v36 = v14;
              _os_log_error_impl(&dword_233656000, v8, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v16 = v8;
            v17 = v8;
          }

          else
          {
            v17 = *(gLogObjects + 8);
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 40);
            v19 = [v10 service];
            *buf = 138412546;
            v34 = v18;
            v35 = 1024;
            v36 = v19;
            _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_DEFAULT, "accMgrInstance=%@ OOBPairing finished. Found deferred AuthCP service %d, remove it from deferral list", buf, 0x12u);
          }

          [v2 addObject:v10];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 96) removeObjectsInArray:v2];
  if ([v2 count])
  {
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__ACCTransportIOAccessorySharedManager_IOAccessoryOOBPairingDataFinishedForEndpointUUID___block_invoke_160;
    block[3] = &unk_2789E87F8;
    v25 = v2;
    v21 = *(a1 + 40);
    v22 = *(a1 + 32);
    v26 = v21;
    v27 = v22;
    dispatch_async(v20, block);
  }
}

void __89__ACCTransportIOAccessorySharedManager_IOAccessoryOOBPairingDataFinishedForEndpointUUID___block_invoke_160(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    v5 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = gLogObjects;
        v9 = gNumLogObjects;
        if (gLogObjects)
        {
          v10 = gNumLogObjects < 2;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v22 = v8;
            v23 = 1024;
            v24 = v9;
            _os_log_error_impl(&dword_233656000, v5, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v11 = v5;
          v12 = v5;
        }

        else
        {
          v12 = *(gLogObjects + 8);
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 40);
          v14 = [v7 service];
          *buf = 138412546;
          v22 = v13;
          v23 = 1024;
          v24 = v14;
          _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_DEFAULT, "accMgrInstance=%@ OOBPairing finished. Processing deferred AuthCP service %d", buf, 0x12u);
        }

        [*(a1 + 48) IOAccessoryAuthCPServiceArrived:{objc_msgSend(v7, "service")}];
        IOObjectRelease([v7 service]);
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

- (void)IOAccessoryConfigStreamServiceArrived:(unsigned int)arrived
{
  v3 = *&arrived;
  v77[2] = *MEMORY[0x277D85DE8];
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v6 = [(ACCTransportIOAccessorySharedManager *)self _managerForIOService:v3 shouldCreateNewService:1];
  v7 = [[ACCTransportIOAccessoryConfigStream alloc] initWithDelegate:self andIOService:v3];
  if (!v6)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v13 = "Starting ConfigStream Service that has no associated parent IOAccMgr";
    v14 = v11;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 2;
    goto LABEL_48;
  }

  if (![(ACCTransportIOAccessorySharedManager *)self _addACCTransportToManager:v7])
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v11 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v42 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_49;
    }

    *buf = 67109120;
    *v69 = [(ACCTransportIOAccessoryBase *)v7 ioService];
    v13 = "Couldn't find upstream io acc manager service for ConfigStream service %d";
    v14 = v11;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 8;
LABEL_48:
    _os_log_impl(&dword_233656000, v14, v15, v13, buf, v16);
LABEL_49:

    goto LABEL_64;
  }

  listQ = self->_listQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__ACCTransportIOAccessorySharedManager_IOAccessoryConfigStreamServiceArrived___block_invoke;
  block[3] = &unk_2789E8900;
  block[4] = self;
  v9 = v7;
  v67 = v9;
  dispatch_sync(listQ, block);
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v10 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v65 = v7;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "Successfully added io accessory ConfigStream to all ports list", buf, 2u);
  }

  connectionUUID = [v6 connectionUUID];

  if (!connectionUUID)
  {
    delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v20 = [delegate createConnectionWithType:objc_msgSend(v6 andIdentifier:{"connectionType"), 0}];

    delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    [delegate2 setSupervisedTransportsRestricted:objc_msgSend(v6 forConnectionWithUUID:{"supervisedTransportsRestricted"), v20}];

    [v6 setConnectionUUID:v20];
    accessoryInfoLock = [v6 accessoryInfoLock];
    [accessoryInfoLock lock];

    v76[0] = *MEMORY[0x277CFD2C0];
    v23 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v6, "primaryPortNumber")}];
    v77[0] = v23;
    v76[1] = *MEMORY[0x277CFD290];
    digitalID = [v6 digitalID];
    null = digitalID;
    if (!digitalID)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v77[1] = null;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
    if (!digitalID)
    {
    }

    accessoryInfoLock2 = [v6 accessoryInfoLock];
    [accessoryInfoLock2 unlock];

    delegate3 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v29 = [v26 copy];
    [delegate3 setProperties:v29 forConnectionWithUUID:v20];
  }

  accessoryInfoLock3 = [v6 accessoryInfoLock];
  [accessoryInfoLock3 lock];

  v74[0] = *MEMORY[0x277CFD250];
  deviceName = [(ACCTransportIOAccessoryConfigStream *)v9 deviceName];
  v75[0] = deviceName;
  v74[1] = *MEMORY[0x277CFD240];
  deviceManufacturer = [(ACCTransportIOAccessoryConfigStream *)v9 deviceManufacturer];
  v75[1] = deviceManufacturer;
  v74[2] = *MEMORY[0x277CFD248];
  deviceModel = [(ACCTransportIOAccessoryConfigStream *)v9 deviceModel];
  v75[2] = deviceModel;
  v74[3] = *MEMORY[0x277CFD270];
  deviceSerialNumber = [(ACCTransportIOAccessoryConfigStream *)v9 deviceSerialNumber];
  v75[3] = deviceSerialNumber;
  v74[4] = *MEMORY[0x277CFD238];
  deviceHardwareVersion = [(ACCTransportIOAccessoryConfigStream *)v9 deviceHardwareVersion];
  v75[4] = deviceHardwareVersion;
  v74[5] = *MEMORY[0x277CFD230];
  deviceFirmwareVersion = [(ACCTransportIOAccessoryConfigStream *)v9 deviceFirmwareVersion];
  v75[5] = deviceFirmwareVersion;
  v74[6] = *MEMORY[0x277CFD258];
  v64 = v9;
  devicePPID = [(ACCTransportIOAccessoryConfigStream *)v9 devicePPID];
  null2 = devicePPID;
  if (!devicePPID)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v75[6] = null2;
  v74[7] = *MEMORY[0x277CFD268];
  regionCode = [v6 regionCode];
  null3 = regionCode;
  if (!regionCode)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v75[7] = null3;
  v74[8] = *MEMORY[0x277CFD220];
  inductiveDeviceUID = [v6 inductiveDeviceUID];
  null4 = inductiveDeviceUID;
  if (!inductiveDeviceUID)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v75[8] = null4;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:9];
  if (!inductiveDeviceUID)
  {
  }

  if (!regionCode)
  {
  }

  if (!devicePPID)
  {
  }

  accessoryInfoLock4 = [v6 accessoryInfoLock];
  [accessoryInfoLock4 unlock];

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v40 = *(gLogObjects + 8);
    v41 = v63;
  }

  else
  {
    v41 = v63;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v40 = MEMORY[0x277D86220];
    v43 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    ioService = [(ACCTransportIOAccessoryBase *)v64 ioService];
    connectionUUID2 = [v6 connectionUUID];
    *buf = 136316162;
    *v69 = "[ACCTransportIOAccessorySharedManager IOAccessoryConfigStreamServiceArrived:]";
    *&v69[8] = 1024;
    *&v69[10] = 3277;
    v70 = 1024;
    *v71 = ioService;
    *&v71[4] = 2112;
    *&v71[6] = connectionUUID2;
    v72 = 2112;
    v73 = v41;
    _os_log_impl(&dword_233656000, v40, OS_LOG_TYPE_INFO, "%s:%d service %d, connectionUUID %@, accInfo %@", buf, 0x2Cu);
  }

  delegate4 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  connectionUUID3 = [v6 connectionUUID];
  v48 = [connectionUUID3 copy];
  v49 = [delegate4 createEndpointWithTransportType:12 andProtocol:11 andIdentifier:0 forConnectionWithUUID:v48 publishConnection:0];

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v50 = *(gLogObjects + 8);
    v7 = v65;
  }

  else
  {
    v7 = v65;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v50 = MEMORY[0x277D86220];
    v51 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    ioService2 = [(ACCTransportIOAccessoryBase *)v64 ioService];
    *buf = 67109634;
    *v69 = ioService2;
    *&v69[4] = 2112;
    *&v69[6] = v49;
    v70 = 2112;
    *v71 = v41;
    _os_log_impl(&dword_233656000, v50, OS_LOG_TYPE_INFO, "setAccessoryInfo for ConfigStream service %d, endpointUUID %@, accInfo %@", buf, 0x1Cu);
  }

  delegate5 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  [delegate5 setAccessoryInfo:v41 forEndpointWithUUID:v49];

  v54 = [v49 copy];
  [(ACCTransportIOAccessoryConfigStream *)v64 setEndpointUUID:v54];

  connectionUUID4 = [v6 connectionUUID];
  [(ACCTransportIOAccessoryConfigStream *)v64 setParentConnectionUUID:connectionUUID4];

  delegate6 = [(ACCTransportIOAccessorySharedManager *)self delegate];
  connectionUUID5 = [v6 connectionUUID];
  [delegate6 publishConnectionWithUUID:connectionUUID5];

LABEL_64:
  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (void)IOAccessoryConfigStreamServiceTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  *&v43[5] = *MEMORY[0x277D85DE8];
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v6 = [(ACCTransportIOAccessorySharedManager *)self basePortForService:v3];
  if (v6)
  {
    v7 = [(ACCTransportIOAccessorySharedManager *)self _managerForBase:v6];
    v8 = v7;
    if (gLogObjects)
    {
      v9 = gNumLogObjects <= 1;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    if (v7)
    {
      if (v10)
      {
        v11 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v11 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        v43[0] = [v8 ioService];
        LOWORD(v43[1]) = 1024;
        *(&v43[1] + 2) = v3;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_INFO, "ConfigStream Terminated: found manager with service %d for terminated service %d", buf, 0xEu);
      }

      [v8 removeIOAccessoryChildPort:v6];
    }

    else
    {
      if (v10)
      {
        v14 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v14 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v43[0] = v3;
        _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_INFO, "Didn't find manager for removed auth CP service %d", buf, 8u);
      }
    }

    endpointUUID = [v6 endpointUUID];
    v18 = [endpointUUID copy];

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v19 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v19 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v43 = v18;
      _os_log_impl(&dword_233656000, v19, OS_LOG_TYPE_DEFAULT, "Remove ConfigStream Service endpointUUID %@", buf, 0xCu);
    }

    if (v18)
    {
      delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
      v22 = [delegate destroyEndpointWithUUID:v18];

      if (v22)
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v23 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v23 = MEMORY[0x277D86220];
          v24 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v43 = v18;
          _os_log_impl(&dword_233656000, v23, OS_LOG_TYPE_DEFAULT, "Removed ConfigStream service endpoint %@", buf, 0xCu);
        }

        [v6 setEndpointUUID:0];
        [v6 setParentConnectionUUID:0];
      }
    }

    listQ = self->_listQ;
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __81__ACCTransportIOAccessorySharedManager_IOAccessoryConfigStreamServiceTerminated___block_invoke;
    v39 = &unk_2789E8900;
    selfCopy = self;
    v41 = v6;
    dispatch_sync(listQ, &v36);
    v26 = [v8 connectionUUID:v36];
    if (v26)
    {
      v27 = v26;
      connectionUUID = [v8 connectionUUID];
      v29 = [(ACCTransportIOAccessorySharedManager *)self _managerForConnectionUUIDHasActiveEndpoint:connectionUUID];

      if (!v29)
      {
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v30 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v30 = MEMORY[0x277D86220];
          v31 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          connectionUUID2 = [v8 connectionUUID];
          *buf = 138412290;
          *v43 = connectionUUID2;
          _os_log_impl(&dword_233656000, v30, OS_LOG_TYPE_DEFAULT, "No active endpoint for ConfigStream Service connection, remove connectionUUID %@", buf, 0xCu);
        }

        delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
        connectionUUID3 = [v8 connectionUUID];
        [delegate2 destroyConnectionWithUUID:connectionUUID3];

        [v8 setConnectionUUID:0];
        [(ACCTransportIOAccessorySharedManager *)self _clearChildPortEndpointsForManagerDisconnection:v8];
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 2;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v43[0] = v3;
      _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_INFO, "Didn't find base accessory object for removed ConfigStream service %d", buf, 8u);
    }
  }

  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];
}

- (void)IOAccessoryConfigStreamUpdateAccesssoryInfo:(id)info
{
  v23[7] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v22[0] = *MEMORY[0x277CFD250];
  deviceName = [infoCopy deviceName];
  v23[0] = deviceName;
  v22[1] = *MEMORY[0x277CFD240];
  deviceManufacturer = [infoCopy deviceManufacturer];
  v23[1] = deviceManufacturer;
  v22[2] = *MEMORY[0x277CFD248];
  deviceModel = [infoCopy deviceModel];
  v23[2] = deviceModel;
  v22[3] = *MEMORY[0x277CFD270];
  deviceSerialNumber = [infoCopy deviceSerialNumber];
  v23[3] = deviceSerialNumber;
  v22[4] = *MEMORY[0x277CFD238];
  deviceHardwareVersion = [infoCopy deviceHardwareVersion];
  v23[4] = deviceHardwareVersion;
  v22[5] = *MEMORY[0x277CFD230];
  deviceFirmwareVersion = [infoCopy deviceFirmwareVersion];
  v23[5] = deviceFirmwareVersion;
  v22[6] = *MEMORY[0x277CFD258];
  devicePPID = [infoCopy devicePPID];
  v23[6] = devicePPID;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];

  endpointUUID = [infoCopy endpointUUID];
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v14 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17[0] = 67109634;
    v17[1] = [infoCopy ioService];
    v18 = 2112;
    v19 = endpointUUID;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_INFO, "setAccessoryInfo for ConfigStream service %d, endpointUUID %@, accInfo %@", v17, 0x1Cu);
  }

  delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
  [delegate setAccessoryInfo:v12 forEndpointWithUUID:endpointUUID];
}

- (void)IOAccessoryConfigStreamMessageArrived:(id)arrived endpointUUID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  arrivedCopy = arrived;
  dCopy = d;
  if (gLogSignpostObjects)
  {
    v8 = gNumLogSignpostObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogSignpostObjects + 24);
  }

  v11 = [dCopy hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v28 = 138412546;
      v29 = dCopy;
      v30 = 2048;
      v31 = [arrivedCopy length];
      _os_signpost_emit_with_name_impl(&dword_233656000, v10, OS_SIGNPOST_EVENT, v12, "Endpoint RECV", "Received incoming ConfigStream data! %@, %lu bytes", &v28, 0x16u);
    }
  }

  v13 = [dCopy hash];
  v14 = [arrivedCopy hash];
  v15 = v14 ^ v13;
  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v16 = *(gLogSignpostObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
    }

    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v13 == v14 || v15 == -1;
  v19 = !v18;
  if (!v18 && os_signpost_enabled(v16))
  {
    v20 = [arrivedCopy length];
    v28 = 138412546;
    v29 = dCopy;
    v30 = 2048;
    v31 = v20;
    _os_signpost_emit_with_name_impl(&dword_233656000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Endpoint RECV", "Received incoming ConfigStream data! %@, %lu bytes", &v28, 0x16u);
  }

  delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];

  v22 = "ERROR";
  if (delegate)
  {
    delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v24 = [delegate2 processIncomingData:arrivedCopy forEndpointWithUUID:dCopy];

    if (v24)
    {
      v22 = "SUCCESS";
    }
  }

  if (gLogSignpostObjects && gNumLogSignpostObjects >= 4)
  {
    v25 = *(gLogSignpostObjects + 24);
    if (!v19)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessorySharedManager transmitData:forEndpointUUID:];
  }

  v25 = MEMORY[0x277D86220];
  v26 = MEMORY[0x277D86220];
  if (v19)
  {
LABEL_37:
    if (os_signpost_enabled(v25))
    {
      v27 = [arrivedCopy length];
      v28 = 136315650;
      v29 = v22;
      v30 = 2112;
      v31 = dCopy;
      v32 = 2048;
      v33 = v27;
      _os_signpost_emit_with_name_impl(&dword_233656000, v25, OS_SIGNPOST_INTERVAL_END, v15, "Endpoint RECV", "%s handling Received incoming ConfigStream data! %@, %lu bytes", &v28, 0x20u);
    }
  }

LABEL_39:
}

- (void)resetLightningBusForEndpointWithUUID:(id)d
{
  v66 = *MEMORY[0x277D85DE8];
  dCopy = d;
  connect = 0;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = dCopy;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "Resetting lightning bus for endpoint %@...", buf, 0xCu);
  }

  delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (!delegate || (-[ACCTransportIOAccessorySharedManager delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), -[ACCTransportIOAccessorySharedManager delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), [v10 connectionUUIDForEndpointWithUUID:dCopy], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "connectionTypeForConnectionWithUUID:", v11), v11, v10, v9, v12 != 1))
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v16 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v16 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:];
    }

    ManagerPrimaryPort = 0;
    goto LABEL_178;
  }

  delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];

  if (delegate2)
  {
    delegate3 = [(ACCTransportIOAccessorySharedManager *)self delegate];
    v15 = [delegate3 transportTypeForEndpointWithUUID:dCopy];
  }

  else
  {
    v15 = 18;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v17 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:];
  }

  v19 = [(ACCTransportIOAccessorySharedManager *)self _managerForBaseEndpointUUID:dCopy];
  v16 = v19;
  if (!v19)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v21 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v21 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, v21, OS_LOG_TYPE_DEFAULT, "Could not find endpoint, falling back to most downstream port...", buf, 2u);
    }

    ServiceWithPort = IOAccessoryPortGetServiceWithPort();
    if (ServiceWithPort)
    {
      v25 = ServiceWithPort;
      ManagerPrimaryPort = IOAccessoryPortGetManagerPrimaryPort();
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v26 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v26 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v65) = ManagerPrimaryPort;
        _os_log_impl(&dword_233656000, v26, OS_LOG_TYPE_INFO, "primaryPortNumber: %d", buf, 8u);
      }

      if (ManagerPrimaryPort)
      {
        ManagerPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
      }

      IOObjectRelease(v25);
      if (!ManagerPrimaryPort)
      {
        goto LABEL_169;
      }

      goto LABEL_58;
    }

LABEL_49:
    ManagerPrimaryPort = 0;
LABEL_169:

LABEL_170:
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v16 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v16 = MEMORY[0x277D86220];
      v62 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:];
    }

    goto LABEL_178;
  }

  if (![v19 ioService])
  {
    goto LABEL_49;
  }

  ManagerPrimaryPort = [v16 ioService];
  IOObjectRetain(ManagerPrimaryPort);
  if (!ManagerPrimaryPort)
  {
    goto LABEL_169;
  }

LABEL_58:
  if (IOServiceOpen(ManagerPrimaryPort, *MEMORY[0x277D85F48], 0, &connect))
  {
    goto LABEL_169;
  }

  v28 = v15 & 0xFFFFFFF7;
  if (gLogObjects && gNumLogObjects >= 2)
  {
    v29 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v29 = MEMORY[0x277D86220];
    v30 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v65) = 1250;
    _os_log_impl(&dword_233656000, v29, OS_LOG_TYPE_DEFAULT, "Toggling lightning bus for %dms...", buf, 8u);
  }

  if (v28)
  {
    v31 = 1;
  }

  else
  {
    USBConnectType = IOAccessoryManagerGetUSBConnectType();
    if (USBConnectType)
    {
      [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:?];
LABEL_178:

      goto LABEL_179;
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v33 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v33 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v65) = -1;
      _os_log_impl(&dword_233656000, v33, OS_LOG_TYPE_INFO, "Current USB Connection Type: %d", buf, 8u);
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v35 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v35 = MEMORY[0x277D86220];
      v36 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v65) = 0;
      _os_log_impl(&dword_233656000, v35, OS_LOG_TYPE_INFO, "Current USB Connection Active: %d", buf, 8u);
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v37 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v37 = MEMORY[0x277D86220];
      v38 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, v37, OS_LOG_TYPE_INFO, "Disabling USB...", buf, 2u);
    }

    v39 = IOAccessoryManagerConfigureUSBMode();
    v31 = v39 == 0;
    if (v39)
    {
      v40 = v39;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v41 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v41 = MEMORY[0x277D86220];
        v42 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:v40];
      }
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v43 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v43 = MEMORY[0x277D86220];
    v44 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, v43, OS_LOG_TYPE_DEFAULT, "Disabling accessory power...", buf, 2u);
  }

  v45 = IOAccessoryManagerConfigurePower();
  if (v45)
  {
    v46 = v45;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v47 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v47 = MEMORY[0x277D86220];
      v48 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:v46];
    }

    v31 = 0;
  }

  usleep(0x1312D0u);
  if (!v28)
  {
    v49 = IOAccessoryManagerConfigureUSBMode();
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v50 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v50 = MEMORY[0x277D86220];
      v51 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, v50, OS_LOG_TYPE_INFO, "Enabling USB...", buf, 2u);
    }

    if (gLogObjects && gNumLogObjects >= 2)
    {
      v52 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v52 = MEMORY[0x277D86220];
      v53 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v65) = 4;
      _os_log_impl(&dword_233656000, v52, OS_LOG_TYPE_INFO, "USB mode: %d", buf, 8u);
    }

    if (v49)
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v54 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v54 = MEMORY[0x277D86220];
        v55 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:v49];
      }

      v31 = 0;
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v56 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v56 = MEMORY[0x277D86220];
    v57 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, v56, OS_LOG_TYPE_DEFAULT, "Enabling accessory power...", buf, 2u);
  }

  v58 = IOAccessoryManagerConfigurePower();
  if (v58)
  {
    v59 = v58;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v60 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v60 = MEMORY[0x277D86220];
      v61 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessorySharedManager resetLightningBusForEndpointWithUUID:v59];
    }

    goto LABEL_169;
  }

  if (!v31)
  {
    goto LABEL_170;
  }

LABEL_179:
  if (connect)
  {
    IOServiceClose(connect);
  }

  if (ManagerPrimaryPort)
  {
    IOObjectRelease(ManagerPrimaryPort);
  }
}

uint64_t __53__ACCTransportIOAccessorySharedManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)IOAccessoryClassStringForIOAccessoryClassType:(int)type
{
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v3 = MEMORY[0x277CCACA8];
        v4 = "AppleAuthCP";
        goto LABEL_17;
      case 4:
        v3 = MEMORY[0x277CCACA8];
        v4 = "IOAccessoryOOBPairingInterface";
        goto LABEL_17;
      case 6:
        v3 = MEMORY[0x277CCACA8];
        v4 = "IOAccessoryConfigStreamInterface";
        goto LABEL_17;
    }
  }

  else
  {
    switch(type)
    {
      case 0:
        v3 = MEMORY[0x277CCACA8];
        v4 = "IOAccessoryManager";
        goto LABEL_17;
      case 1:
        v3 = MEMORY[0x277CCACA8];
        v4 = "IOAccessoryPort";
        goto LABEL_17;
      case 2:
        v3 = MEMORY[0x277CCACA8];
        v4 = "IOAccessoryEAInterface";
LABEL_17:
        v6 = [v3 stringWithUTF8String:v4];
        goto LABEL_18;
    }
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v5 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[ACCTransportIOAccessorySharedManager IOAccessoryClassStringForIOAccessoryClassType:];
  }

  v6 = 0;
LABEL_18:

  return v6;
}

+ (int)IOAccessoryClassTypeForIOAccessoryClassString:(id)string
{
  v20 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IOAccessoryManager"];
  v5 = [stringCopy isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IOAccessoryPort"];
    v8 = [stringCopy isEqualToString:v7];

    if (v8)
    {
      v6 = 1;
      goto LABEL_11;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IOAccessoryEAInterface"];
    v10 = [stringCopy isEqualToString:v9];

    if (v10)
    {
      v6 = 2;
      goto LABEL_11;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AppleAuthCP"];
    v12 = [stringCopy isEqualToString:v11];

    if (v12)
    {
      v6 = 3;
      goto LABEL_11;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"IOAccessoryConfigStreamInterface"];
    v14 = [stringCopy isEqualToString:v13];

    if (v14)
    {
      v6 = 6;
      goto LABEL_11;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v16 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v16 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = stringCopy;
      _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_INFO, "Unknown classString %@", &v18, 0xCu);
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (void)_createModuleConnectionAndEndpoint:(id)endpoint
{
  v41 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  if ([endpointCopy accConnectionType] == 7)
  {
    v6 = [endpointCopy representsInternalModule] - 1;
    if (v6 <= 3)
    {
      v7 = off_2789E9270[v6];
      v8 = dword_2336C0340[v6];
      [(ACCTransportIOAccessorySharedManager *)self delegate];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_19() accConnectionType];
      v9 = [OUTLINED_FUNCTION_18() createConnectionWithType:? andIdentifier:?];

      v10 = -[ACCTransportIOAccessorySharedManager managerForIOAccessoryManagerService:](self, "managerForIOAccessoryManagerService:", [endpointCopy upstreamManagerService]);

      if (v10)
      {
        [(ACCTransportIOAccessorySharedManager *)self delegate];
        objc_claimAutoreleasedReturnValue();
        v11 = -[ACCTransportIOAccessorySharedManager managerForIOAccessoryManagerService:](self, "managerForIOAccessoryManagerService:", [OUTLINED_FUNCTION_19() upstreamManagerService]);
        [v11 supervisedTransportsRestricted];
        [OUTLINED_FUNCTION_18() setSupervisedTransportsRestricted:? forConnectionWithUUID:?];
      }

      if (v9)
      {
        delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
        v13 = [(__CFString *)v9 copy];
        v14 = [delegate createEndpointWithTransportType:v8 andProtocol:2 andIdentifier:0 forConnectionWithUUID:v13 publishConnection:0];

        if (v14)
        {
          v15 = gLogObjects;
          v16 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v17 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v38 = v15;
              v39 = 1024;
              LODWORD(v40) = v16;
              OUTLINED_FUNCTION_12_0(&dword_233656000, MEMORY[0x277D86220], v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            v17 = MEMORY[0x277D86220];
            v19 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v38 = v14;
            v39 = 2112;
            v40 = v7;
            _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_DEFAULT, "Created endpointUUID %{public}@ for %@ AppleAuthCP", buf, 0x16u);
          }

          delegate2 = [(ACCTransportIOAccessorySharedManager *)self delegate];
          [delegate2 publishConnectionWithUUID:v9];

          [endpointCopy setConnectionUUID:v9];
          [endpointCopy setEndpointUUID:v14];
          v21 = *MEMORY[0x277CFD248];
          v35[0] = *MEMORY[0x277CFD250];
          v35[1] = v21;
          v36[0] = @"Internal Hardware";
          v36[1] = v7;
          v22 = *MEMORY[0x277CFD270];
          v35[2] = *MEMORY[0x277CFD240];
          v35[3] = v22;
          v36[2] = @"Apple Inc.";
          v36[3] = @"NotApplicable";
          v23 = *MEMORY[0x277CFD238];
          v35[4] = *MEMORY[0x277CFD230];
          v35[5] = v23;
          v36[4] = @"NotApplicable";
          v36[5] = @"NotApplicable";
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:6];
          v25 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v26 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_17();
              LODWORD(v40) = v25;
              OUTLINED_FUNCTION_12_0(&dword_233656000, MEMORY[0x277D86220], v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            v26 = MEMORY[0x277D86220];
            v27 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v38 = v24;
            v39 = 2112;
            v40 = v9;
            _os_log_impl(&dword_233656000, v26, OS_LOG_TYPE_DEFAULT, "accInfoDictionary for hardware accessory = %@, connectionUUID = %@", buf, 0x16u);
          }

          delegate3 = [(ACCTransportIOAccessorySharedManager *)self delegate];
          [delegate3 setAccessoryInfo:v24 forEndpointWithUUID:v14];

          v29 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v30 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_17();
              LODWORD(v40) = v29;
              OUTLINED_FUNCTION_12_0(&dword_233656000, MEMORY[0x277D86220], v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            v30 = MEMORY[0x277D86220];
            v31 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v9;
            _os_log_impl(&dword_233656000, v30, OS_LOG_TYPE_DEFAULT, "Publishing connection: %@ with eACCEndpoint_Protocol_InternalInfo", buf, 0xCu);
          }

          delegate4 = [(ACCTransportIOAccessorySharedManager *)self delegate];
          [delegate4 publishConnectionWithUUID:v9];
        }

        else
        {
          v14 = logObjectForModule_0(1u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v38 = v7;
            v39 = 2112;
            v40 = v9;
            _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "Failed to create endpointUUID for %{public}@ AppleAuthCP and to publish connection: %@", buf, 0x16u);
          }
        }
      }
    }
  }
}

- (void)IOAccessoryAuthCPServiceArrived:(unsigned int)arrived
{
  v3 = *&arrived;
  v132[2] = *MEMORY[0x277D85DE8];
  IOAccessoryManagerGetUpstreamService();
  v5 = (IOAccessoryManagerGetType() & 0xF) == 5;
  bIsWatch = self->_bIsWatch;
  accessoryPortLock = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock lock];

  v8 = [(ACCTransportIOAccessorySharedManager *)self _managerForIOService:v3 shouldCreateNewService:1];
  if (([v8 needsOOBPairing] & 1) == 0)
  {
    if (v8)
    {
      connectionType = [v8 connectionType];
    }

    else
    {
      connectionType = 7;
    }

    v22 = gLogObjects;
    v23 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v24 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v127 = v22;
        OUTLINED_FUNCTION_14_0();
        *(v74 + 14) = v23;
        OUTLINED_FUNCTION_10_0(&dword_233656000, MEMORY[0x277D86220], v75, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v76, v77, v78, v79, v106, block, v108, v109, v110, selfCopy3, v112, v113, v114, v115, v116, v117, selfCopy, v119, v120, v121, v122, v123, selfCopy2, v125);
      }

      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v127) = connectionType;
      _os_log_impl(&dword_233656000, v24, OS_LOG_TYPE_INFO, "ACCTransportIOAccessoryAuthCP connectionType = %d", buf, 8u);
    }

    v26 = [[ACCTransportIOAccessoryAuthCP alloc] initWithDelegate:self andIOService:v3 connectionType:connectionType];
    v20 = v26;
    if (v26)
    {
      if (!v8)
      {
        listQ = self->_listQ;
        v114 = MEMORY[0x277D85DD0];
        v115 = 3221225472;
        v116 = __72__ACCTransportIOAccessorySharedManager_IOAccessoryAuthCPServiceArrived___block_invoke_133;
        v117 = &unk_2789E8900;
        selfCopy = self;
        v20 = v26;
        v119 = v20;
        dispatch_sync(listQ, &v114);
        if ([(ACCTransportIOAccessoryAuthCP *)v20 representsInternalModule]- 1 <= 3)
        {
          [(ACCTransportIOAccessorySharedManager *)self _createModuleConnectionAndEndpoint:v20];
        }

        if (gLogObjects && gNumLogObjects >= 2)
        {
          v30 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3_1();
            OUTLINED_FUNCTION_10_0(&dword_233656000, MEMORY[0x277D86220], v85, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v86, v87, v88, v89, v106, block, v108, v109, v110, selfCopy3, v112, v113, v114, v115, v116, v117, selfCopy, v119, v120, v121, v122, v123, selfCopy2, v125);
          }

          v30 = MEMORY[0x277D86220];
          v34 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          OUTLINED_FUNCTION_15();
          _os_log_impl(v35, v36, v37, v38, v39, 2u);
        }

        v40 = v119;
        goto LABEL_70;
      }

      if ([(ACCTransportIOAccessorySharedManager *)self _addACCTransportToManager:v26])
      {
        v27 = self->_listQ;
        v120 = MEMORY[0x277D85DD0];
        v121 = 3221225472;
        v122 = __72__ACCTransportIOAccessorySharedManager_IOAccessoryAuthCPServiceArrived___block_invoke;
        v123 = &unk_2789E8900;
        selfCopy2 = self;
        v20 = v20;
        v125 = v20;
        dispatch_sync(v27, &v120);
        if (gLogObjects && gNumLogObjects >= 2)
        {
          v28 = *(gLogObjects + 8);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3_1();
            OUTLINED_FUNCTION_10_0(&dword_233656000, MEMORY[0x277D86220], v90, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v91, v92, v93, v94, v106, block, v108, v109, v110, selfCopy3, v112, v113, v114, v115, v116, v117, selfCopy, v119, v120, v121, v122, v123, selfCopy2, v125);
          }

          v28 = MEMORY[0x277D86220];
          v41 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_233656000, v28, OS_LOG_TYPE_INFO, "Successfully added io accessory authCP to all ports list", buf, 2u);
        }

        if (bIsWatch || v5)
        {
          v42 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 2)
          {
            v43 = *(gLogObjects + 8);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_3_1();
              OUTLINED_FUNCTION_10_0(&dword_233656000, MEMORY[0x277D86220], v101, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v102, v103, v104, v105, v106, block, v108, v109, v110, selfCopy3, v112, v113, v114, v115, v116, v117, selfCopy, v119, v120, v121, v122, v123, selfCopy2, v125);
            }

            v43 = MEMORY[0x277D86220];
            v46 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            OUTLINED_FUNCTION_15();
            _os_log_impl(v47, v48, v49, v50, v51, 2u);
          }

          connectionUUID = [v8 connectionUUID];

          if (!connectionUUID)
          {
            [(ACCTransportIOAccessorySharedManager *)self delegate];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_19() connectionType];
            v53 = [OUTLINED_FUNCTION_18() createConnectionWithType:? andIdentifier:?];

            [(ACCTransportIOAccessorySharedManager *)self delegate];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_19() supervisedTransportsRestricted];
            [OUTLINED_FUNCTION_18() setSupervisedTransportsRestricted:? forConnectionWithUUID:?];

            [v8 setConnectionUUID:v53];
            accessoryInfoLock = [v8 accessoryInfoLock];
            [accessoryInfoLock lock];

            v131[0] = *MEMORY[0x277CFD2C0];
            v55 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v8, "primaryPortNumber")}];
            v132[0] = v55;
            v131[1] = *MEMORY[0x277CFD290];
            digitalID = [v8 digitalID];
            null = digitalID;
            if (!digitalID)
            {
              null = [MEMORY[0x277CBEB68] null];
            }

            v132[1] = null;
            v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:2];
            if (!digitalID)
            {
            }

            accessoryInfoLock2 = [v8 accessoryInfoLock];
            [accessoryInfoLock2 unlock];

            delegate = [(ACCTransportIOAccessorySharedManager *)self delegate];
            v61 = [v58 copy];
            [delegate setProperties:v61 forConnectionWithUUID:v53];
          }
        }

        v40 = v125;
LABEL_70:

        v21 = 1;
        goto LABEL_71;
      }

      v31 = gLogObjects;
      v32 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v33 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v127 = v31;
          OUTLINED_FUNCTION_14_0();
          *(v95 + 14) = v32;
          OUTLINED_FUNCTION_10_0(&dword_233656000, MEMORY[0x277D86220], v96, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v97, v98, v99, v100, v106, block, v108, v109, v110, selfCopy3, v112, v113, v114, v115, v116, v117, selfCopy, v119, v120, v121, v122, v123, selfCopy2, v125);
        }

        v33 = MEMORY[0x277D86220];
        v44 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        ioService = [(ACCTransportIOAccessoryBase *)v20 ioService];
        *buf = 67109120;
        LODWORD(v127) = ioService;
        _os_log_impl(&dword_233656000, v33, OS_LOG_TYPE_INFO, "Couldn't find upstream io acc manager service for authCP service %d", buf, 8u);
      }
    }

    v21 = 0;
    goto LABEL_71;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v9 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_10_0(&dword_233656000, MEMORY[0x277D86220], v69, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v70, v71, v72, v73, v106, block, v108, v109, v110, selfCopy3, v112, v113, v114, v115, v116, v117, selfCopy, v119, v120, v121, v122, v123, selfCopy2, v125);
    }

    v9 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    [v8 needsOOBPairing];
    *buf = 138412802;
    v127 = v8;
    OUTLINED_FUNCTION_14_0();
    v128 = v12;
    v129 = v13;
    v130 = v3;
    OUTLINED_FUNCTION_15();
    _os_log_impl(v14, v15, v16, v17, v18, 0x18u);
  }

  IOObjectRetain(v3);
  v19 = self->_listQ;
  block = MEMORY[0x277D85DD0];
  v108 = 3221225472;
  v109 = __72__ACCTransportIOAccessorySharedManager_IOAccessoryAuthCPServiceArrived___block_invoke_134;
  v110 = &unk_2789E9230;
  selfCopy3 = self;
  LODWORD(v113) = v3;
  v112 = v8;
  dispatch_async(v19, &block);

  v20 = 0;
  v21 = 0;
LABEL_71:
  accessoryPortLock2 = [(ACCTransportIOAccessorySharedManager *)self accessoryPortLock];
  [accessoryPortLock2 unlock];

  if (v21 && [(ACCTransportIOAccessoryAuthCP *)v20 requiresAuthenticationProcess])
  {
    [(ACCTransportIOAccessoryAuthCP *)v20 startAuthenticationProcess];
  }

  else
  {
    ioService2 = [(ACCTransportIOAccessoryBase *)v20 ioService];
    CFProperty = IORegistryEntryCreateCFProperty(ioService2, @"AuthFullPass", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    else
    {
      v65 = gLogObjects;
      v66 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v67 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v127 = v65;
          OUTLINED_FUNCTION_14_0();
          v128 = v66;
          OUTLINED_FUNCTION_10_0(&dword_233656000, MEMORY[0x277D86220], v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v81, v82, v83, v84, v106, block, v108, v109, v110, selfCopy3, v112, v113, v114, v115, v116, v117, selfCopy, v119, v120, v121, v122, v123, selfCopy2, v125);
        }

        v67 = MEMORY[0x277D86220];
        v68 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_233656000, v67, OS_LOG_TYPE_DEFAULT, "doPostAuthentication", buf, 2u);
      }

      [(ACCTransportIOAccessoryAuthCP *)v20 doPostAuthentication];
    }
  }
}

void __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2_cold_2(void *a1, uint64_t a2)
{
  [a1 ioService];
  [*(a2 + 32) upstreamManagerService];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xEu);
}

void __56__ACCTransportIOAccessorySharedManager__managerForBase___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__ACCTransportIOAccessorySharedManager__managerContainingBase___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_addIOAccessoryManagerWithIOService:.cold.6()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_addIOAccessoryManagerWithIOService:.cold.8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_managerForBaseEndpointUUID:(void *)a1 .cold.2(void *a1)
{
  [a1 ioService];
  v7 = [a1 connectionUUID];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)_managerForConnectionUUID:.cold.8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__ACCTransportIOAccessorySharedManager__managerForConnectionUUID___block_invoke_2_cold_2(void *a1)
{
  v1 = [a1 connectionUUID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)transmitData:forEndpointUUID:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)transmitData:forEndpointUUID:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)shouldEnableDirectAWCAuth
{
  [*(self + 88) BOOLValue];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)setUSBMode:forConnectionUUID:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_12_0(&dword_233656000, v0, v0, "Error setting USB mode type %d for connectionUUID %@", v1);
}

- (void)setUSBMode:forConnectionUUID:.cold.4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)setUSBMode:forEndpointUUID:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_12_0(&dword_233656000, v0, v0, "Error setting USB mode type %d for endpointUUID %@", v1);
}

- (void)setUSBMode:forEndpointUUID:.cold.4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)IOAccessoryManagerServiceInfoSet:(os_log_t)log .cold.7(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_debug_impl(&dword_233656000, log, OS_LOG_TYPE_DEBUG, "IOAccessoryManager with service %d has EAService, OOBPairing child ports. Those handlers publish the eACCEndpoint_Protocol_InternalInfo endpoint", buf, 8u);
}

- (void)IOAccessoryPortArrived:(void *)a1 withEndpointProtocol:publish:.cold.3(void *a1)
{
  v1 = [a1 connectionUUID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_IOAccessoryPortDetachInternal:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)IOAccessoryAuthCPServiceAuthStatusChanged:(void *)a1 authType:authCert:certType:authCTA:service:.cold.3(void *a1)
{
  v6 = [a1 connectionUUID];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)IOAccessoryAuthCPServiceAuthStatusChanged:authType:authCert:certType:authCTA:service:.cold.7()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)IOAccessoryAuthCPServiceAuthStatusChanged:authType:authCert:certType:authCTA:service:.cold.9()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resetLightningBusForEndpointWithUUID:.cold.3()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)resetLightningBusForEndpointWithUUID:(mach_error_t)a1 .cold.7(mach_error_t a1)
{
  v2 = logObjectForModule_0(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    mach_error_string(a1);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_9_0(&dword_233656000, v3, v4, "Could not get USB Connect Type! (ret: %s)", v5, v6, v7, v8);
  }
}

- (void)resetLightningBusForEndpointWithUUID:(mach_error_t)a1 .cold.12(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0(&dword_233656000, v1, v2, "Could not configure USB mode: %s", v3, v4, v5, v6);
}

- (void)resetLightningBusForEndpointWithUUID:(mach_error_t)a1 .cold.15(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0(&dword_233656000, v1, v2, "Could not disable ACC power: %s", v3, v4, v5, v6);
}

- (void)resetLightningBusForEndpointWithUUID:(mach_error_t)a1 .cold.22(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0(&dword_233656000, v1, v2, "Could not enable ACC power: %s", v3, v4, v5, v6);
}

- (void)resetLightningBusForEndpointWithUUID:.cold.24()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)resetLightningBusForEndpointWithUUID:.cold.26()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)IOAccessoryClassStringForIOAccessoryClassType:.cold.2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

@end