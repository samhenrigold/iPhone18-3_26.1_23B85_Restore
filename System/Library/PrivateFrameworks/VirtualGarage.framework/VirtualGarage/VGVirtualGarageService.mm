@interface VGVirtualGarageService
+ (id)sharedService;
- (NSXPCConnection)connection;
- (VGVirtualGarageService)init;
- (id)messageTargetWithErrorReply:(id)reply;
- (void)_clearActiveVehicleIdentifierIfNeeded:(id)needed;
- (void)_closeConnection;
- (void)_openConnection;
- (void)closeForClient:(id)client;
- (void)openForClient:(id)client;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
- (void)virtualGarage:(id)garage didUpdateUnpairedVehicles:(id)vehicles;
- (void)virtualGarageAddVehicle:(id)vehicle;
- (void)virtualGarageDidUpdate:(id)update;
- (void)virtualGarageEndContinuousUpdates;
- (void)virtualGarageForceFetchAllVehicles;
- (void)virtualGarageGetGarageWithReply:(id)reply;
- (void)virtualGarageGetLatestStateOfVehicleWithIdentifier:(id)identifier syncAcrossDevices:(BOOL)devices withReply:(id)reply;
- (void)virtualGarageGetListOfUnpairedVehiclesWithReply:(id)reply;
- (void)virtualGarageOnboardVehicle:(id)vehicle;
- (void)virtualGarageRemoveVehicle:(id)vehicle;
- (void)virtualGarageSaveVehicle:(id)vehicle;
- (void)virtualGarageSelectVehicle:(id)vehicle;
- (void)virtualGarageSetAssumesFullCharge:(BOOL)charge;
- (void)virtualGarageSetShouldUsePreferredNetworks:(BOOL)networks forVehicle:(id)vehicle;
- (void)virtualGarageStartContinuousUpdatesIfNeeded;
@end

@implementation VGVirtualGarageService

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, &__block_literal_global_65);
  }

  v3 = sharedService_sharedService;

  return v3;
}

uint64_t __39__VGVirtualGarageService_sharedService__block_invoke()
{
  sharedService_sharedService = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (VGVirtualGarageService)init
{
  v23.receiver = self;
  v23.super_class = VGVirtualGarageService;
  v2 = [(VGVirtualGarageService *)&v23 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.maps.virtualgarage.callbacks.%@.%p", objc_opt_class(), v2];
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v6;

    v8 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
    clients = v2->_clients;
    v2->_clients = v8;

    v10 = geo_isolater_create_with_format("com.apple.maps.virtualgarage.service.%p.isolater", v2);
    clientsIsolater = v2->_clientsIsolater;
    v2->_clientsIsolater = v10;

    v12 = [objc_alloc(MEMORY[0x277D0EC08]) initWithProtocol:&unk_2880EA6A0 queue:v2->_callbackQueue];
    observers = v2->_observers;
    v2->_observers = v12;

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.maps.virtualgarage.service.%@.%p", objc_opt_class(), v2];
    uTF8String2 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(uTF8String2, v16);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v17;

    if (!+[VGVirtualGarageService canUseVirtualGarageXPCService])
    {
      v19 = +[VGVirtualGarageServer sharedServer];
      [v19 setObserver:v2];

      v20 = v2->_connectionQueue;
      v21 = +[VGVirtualGarageServer sharedServer];
      [v21 setObserverQueue:v20];
    }
  }

  return v2;
}

- (void)_openConnection
{
  v3 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "VGVirtualGarageService opening connection", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.maps.virtualgarage.server" options:0];
  connection = self->_connection;
  self->_connection = v4;

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2880E9098];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_virtualGarageGetListOfUnpairedVehiclesWithReply_ argumentIndex:0 ofReply:1];

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v10 forSelector:sel_virtualGarageGetListOfUnpairedVehiclesWithReply_ argumentIndex:1 ofReply:1];

  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v11 forSelector:sel_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply_ argumentIndex:0 ofReply:0];

  v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v12 forSelector:sel_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply_ argumentIndex:0 ofReply:1];

  v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v13 forSelector:sel_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply_ argumentIndex:1 ofReply:1];

  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];
  v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2880EA6A0];
  v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v15 forSelector:sel_virtualGarageDidUpdate_ argumentIndex:0 ofReply:0];

  v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v16 forSelector:sel_virtualGarage_didUpdateUnpairedVehicles_ argumentIndex:0 ofReply:0];

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  [v14 setClasses:v19 forSelector:sel_virtualGarage_didUpdateUnpairedVehicles_ argumentIndex:1 ofReply:0];

  [(NSXPCConnection *)self->_connection setExportedInterface:v14];
  [(NSXPCConnection *)self->_connection setExportedObject:self];
  [(NSXPCConnection *)self->_connection _setQueue:self->_connectionQueue];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_2095];
  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __41__VGVirtualGarageService__openConnection__block_invoke_63;
  v20[3] = &unk_279E26E88;
  objc_copyWeak(&v21, buf);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v20];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (NSXPCConnection)connection
{
  v19 = *MEMORY[0x277D85DE8];
  connection = self->_connection;
  if (!connection)
  {
    v5 = VGGetAssertLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection should be open by now. Make sure to call openForClient:."];
      v9 = 136316162;
      v10 = "[VGVirtualGarageService connection]";
      v11 = 2080;
      v12 = "VGVirtualGarageService.m";
      v13 = 1024;
      v14 = 77;
      v15 = 2080;
      v16 = "_connection != nil";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v9, 0x30u);
    }

    if (_vg_isInternalInstall())
    {
      v7 = VGGetAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v9 = 138412290;
        v10 = callStackSymbols;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }

    connection = self->_connection;
    if (!connection)
    {
      [(VGVirtualGarageService *)self _openConnection];
      connection = self->_connection;
    }
  }

  return connection;
}

- (void)virtualGarage:(id)garage didUpdateUnpairedVehicles:(id)vehicles
{
  v42 = *MEMORY[0x277D85DE8];
  garageCopy = garage;
  vehiclesCopy = vehicles;
  v8 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = vehiclesCopy;
    v10 = v9;
    if (v9)
    {
      if ([v9 count])
      {
        v29 = v8;
        selfCopy = self;
        v31 = garageCopy;
        v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v32 objects:buf count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v33;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v33 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v32 + 1) + 8 * i);
              if (v17)
              {
                v18 = MEMORY[0x277CCACA8];
                v19 = v17;
                v20 = [v18 stringWithFormat:@"%@<%p>", objc_opt_class(), v19];
              }

              else
              {
                v20 = @"<nil>";
              }

              [v11 addObject:v20];
            }

            v14 = [v12 countByEnumeratingWithState:&v32 objects:buf count:16];
          }

          while (v14);
        }

        v21 = [v12 componentsJoinedByString:{@", "}];
        v22 = MEMORY[0x277CCACA8];
        v23 = v12;
        v24 = [v22 stringWithFormat:@"%@<%p>", objc_opt_class(), v23];

        v25 = [v22 stringWithFormat:@"%@ [%@]", v24, v21];

        self = selfCopy;
        garageCopy = v31;
        v8 = v29;
      }

      else
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = v10;
        v28 = [v26 stringWithFormat:@"%@<%p>", objc_opt_class(), v27];

        v25 = [v26 stringWithFormat:@"%@ (empty)", v28];
      }
    }

    else
    {
      v25 = @"<nil>";
    }

    *buf = 136315650;
    v37 = "[VGVirtualGarageService virtualGarage:didUpdateUnpairedVehicles:]";
    v38 = 2112;
    v39 = garageCopy;
    v40 = 2112;
    v41 = v25;
    _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "%s %@, %@", buf, 0x20u);
  }

  [(GEOObserverHashTable *)self->_observers virtualGarage:garageCopy didUpdateUnpairedVehicles:vehiclesCopy];
}

- (void)virtualGarageDidUpdate:(id)update
{
  v12 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[VGVirtualGarageService virtualGarageDidUpdate:]";
    v10 = 2112;
    v11 = updateCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", &v8, 0x16u);
  }

  selectedVehicle = [updateCopy selectedVehicle];
  identifier = [selectedVehicle identifier];
  [(VGVirtualGarageService *)self _clearActiveVehicleIdentifierIfNeeded:identifier];

  [(GEOObserverHashTable *)self->_observers virtualGarageDidUpdate:updateCopy];
}

- (void)virtualGarageGetLatestStateOfVehicleWithIdentifier:(id)identifier syncAcrossDevices:(BOOL)devices withReply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  v10 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[VGVirtualGarageService virtualGarageGetLatestStateOfVehicleWithIdentifier:syncAcrossDevices:withReply:]";
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __105__VGVirtualGarageService_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke;
  v14[3] = &unk_279E26F98;
  objc_copyWeak(&v17, buf);
  v15 = identifierCopy;
  v16 = replyCopy;
  devicesCopy = devices;
  v12 = identifierCopy;
  v13 = replyCopy;
  dispatch_async(connectionQueue, v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __105__VGVirtualGarageService_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __105__VGVirtualGarageService_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke_2;
  v4[3] = &unk_279E26EF8;
  v5 = *(a1 + 40);
  v3 = [WeakRetained messageTargetWithErrorReply:v4];
  [v3 virtualGarageGetLatestStateOfVehicleWithIdentifier:*(a1 + 32) syncAcrossDevices:*(a1 + 56) withReply:*(a1 + 40)];
}

- (void)virtualGarageGetListOfUnpairedVehiclesWithReply:(id)reply
{
  v13 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[VGVirtualGarageService virtualGarageGetListOfUnpairedVehiclesWithReply:]";
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__VGVirtualGarageService_virtualGarageGetListOfUnpairedVehiclesWithReply___block_invoke;
  v8[3] = &unk_279E26F48;
  objc_copyWeak(&v10, buf);
  v9 = replyCopy;
  v7 = replyCopy;
  dispatch_async(connectionQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __74__VGVirtualGarageService_virtualGarageGetListOfUnpairedVehiclesWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__VGVirtualGarageService_virtualGarageGetListOfUnpairedVehiclesWithReply___block_invoke_2;
  v4[3] = &unk_279E26EF8;
  v5 = *(a1 + 32);
  v3 = [WeakRetained messageTargetWithErrorReply:v4];
  [v3 virtualGarageGetListOfUnpairedVehiclesWithReply:*(a1 + 32)];
}

- (void)virtualGarageForceFetchAllVehicles
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[VGVirtualGarageService virtualGarageForceFetchAllVehicles]";
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__VGVirtualGarageService_virtualGarageForceFetchAllVehicles__block_invoke;
  block[3] = &unk_279E26E88;
  objc_copyWeak(&v6, buf);
  dispatch_async(connectionQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __60__VGVirtualGarageService_virtualGarageForceFetchAllVehicles__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained messageTargetWithErrorReply:0];
  [v1 virtualGarageForceFetchAllVehicles];
}

- (void)virtualGarageSetAssumesFullCharge:(BOOL)charge
{
  v3 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "virtualGarageSetAssumesFullCharge: is only supported on macOS", v4, 2u);
  }
}

- (void)virtualGarageEndContinuousUpdates
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[VGVirtualGarageService virtualGarageEndContinuousUpdates]";
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__VGVirtualGarageService_virtualGarageEndContinuousUpdates__block_invoke;
  block[3] = &unk_279E26E88;
  objc_copyWeak(&v6, buf);
  dispatch_async(connectionQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __59__VGVirtualGarageService_virtualGarageEndContinuousUpdates__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained messageTargetWithErrorReply:0];
  [v1 virtualGarageEndContinuousUpdates];
}

- (void)virtualGarageStartContinuousUpdatesIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[VGVirtualGarageService virtualGarageStartContinuousUpdatesIfNeeded]";
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__VGVirtualGarageService_virtualGarageStartContinuousUpdatesIfNeeded__block_invoke;
  block[3] = &unk_279E26E88;
  objc_copyWeak(&v6, buf);
  dispatch_async(connectionQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __69__VGVirtualGarageService_virtualGarageStartContinuousUpdatesIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained messageTargetWithErrorReply:0];
  [v1 virtualGarageStartContinuousUpdatesIfNeeded];
}

- (void)virtualGarageSetShouldUsePreferredNetworks:(BOOL)networks forVehicle:(id)vehicle
{
  networksCopy = networks;
  v22 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v7 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    if (networksCopy)
    {
      v8 = @"YES";
    }

    v9 = v8;
    *buf = 136315650;
    v17 = "[VGVirtualGarageService virtualGarageSetShouldUsePreferredNetworks:forVehicle:]";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__VGVirtualGarageService_virtualGarageSetShouldUsePreferredNetworks_forVehicle___block_invoke;
  block[3] = &unk_279E26F70;
  objc_copyWeak(&v14, buf);
  v15 = networksCopy;
  v13 = vehicleCopy;
  v11 = vehicleCopy;
  dispatch_async(connectionQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __80__VGVirtualGarageService_virtualGarageSetShouldUsePreferredNetworks_forVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageSetShouldUsePreferredNetworks:*(a1 + 48) forVehicle:*(a1 + 32)];
}

- (void)virtualGarageSaveVehicle:(id)vehicle
{
  v15 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[VGVirtualGarageService virtualGarageSaveVehicle:]";
    v13 = 2112;
    v14 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__VGVirtualGarageService_virtualGarageSaveVehicle___block_invoke;
  v8[3] = &unk_279E26F20;
  objc_copyWeak(&v10, buf);
  v9 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(connectionQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __51__VGVirtualGarageService_virtualGarageSaveVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageSaveVehicle:*(a1 + 32)];
}

- (void)virtualGarageOnboardVehicle:(id)vehicle
{
  v15 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[VGVirtualGarageService virtualGarageOnboardVehicle:]";
    v13 = 2112;
    v14 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__VGVirtualGarageService_virtualGarageOnboardVehicle___block_invoke;
  v8[3] = &unk_279E26F20;
  objc_copyWeak(&v10, buf);
  v9 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(connectionQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __54__VGVirtualGarageService_virtualGarageOnboardVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageOnboardVehicle:*(a1 + 32)];
}

- (void)virtualGarageSelectVehicle:(id)vehicle
{
  v15 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[VGVirtualGarageService virtualGarageSelectVehicle:]";
    v13 = 2112;
    v14 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__VGVirtualGarageService_virtualGarageSelectVehicle___block_invoke;
  v8[3] = &unk_279E26F20;
  objc_copyWeak(&v10, buf);
  v9 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(connectionQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __53__VGVirtualGarageService_virtualGarageSelectVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageSelectVehicle:*(a1 + 32)];
}

- (void)virtualGarageGetGarageWithReply:(id)reply
{
  v13 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[VGVirtualGarageService virtualGarageGetGarageWithReply:]";
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__VGVirtualGarageService_virtualGarageGetGarageWithReply___block_invoke;
  v8[3] = &unk_279E26F48;
  objc_copyWeak(&v10, buf);
  v9 = replyCopy;
  v7 = replyCopy;
  dispatch_async(connectionQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __58__VGVirtualGarageService_virtualGarageGetGarageWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__VGVirtualGarageService_virtualGarageGetGarageWithReply___block_invoke_2;
  v4[3] = &unk_279E26EF8;
  v5 = *(a1 + 32);
  v3 = [WeakRetained messageTargetWithErrorReply:v4];
  [v3 virtualGarageGetGarageWithReply:*(a1 + 32)];
}

- (void)virtualGarageRemoveVehicle:(id)vehicle
{
  v15 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[VGVirtualGarageService virtualGarageRemoveVehicle:]";
    v13 = 2112;
    v14 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__VGVirtualGarageService_virtualGarageRemoveVehicle___block_invoke;
  v8[3] = &unk_279E26F20;
  objc_copyWeak(&v10, buf);
  v9 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(connectionQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __53__VGVirtualGarageService_virtualGarageRemoveVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageRemoveVehicle:*(a1 + 32)];
}

- (void)virtualGarageAddVehicle:(id)vehicle
{
  v15 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[VGVirtualGarageService virtualGarageAddVehicle:]";
    v13 = 2112;
    v14 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__VGVirtualGarageService_virtualGarageAddVehicle___block_invoke;
  v8[3] = &unk_279E26F20;
  objc_copyWeak(&v10, buf);
  v9 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(connectionQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __50__VGVirtualGarageService_virtualGarageAddVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageAddVehicle:*(a1 + 32)];
}

- (id)messageTargetWithErrorReply:(id)reply
{
  v19[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  IsEnabled_EVRouting = MapsFeature_IsEnabled_EVRouting();
  IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
  if (IsEnabled_EVRouting & 1) != 0 || (IsEnabled_Alberta)
  {
    if (+[VGVirtualGarageService canUseVirtualGarageXPCService])
    {
      connection = [(VGVirtualGarageService *)self connection];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__VGVirtualGarageService_messageTargetWithErrorReply___block_invoke;
      v15[3] = &unk_279E26EF8;
      v16 = replyCopy;
      v12 = [connection remoteObjectProxyWithErrorHandler:v15];
    }

    else
    {
      v12 = +[VGVirtualGarageServer sharedServer];
    }
  }

  else
  {
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "VirtualGarage isn't enabled, service isn't able to call to server.", buf, 2u);
    }

    if (replyCopy)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = GEOErrorDomain();
      v18 = *MEMORY[0x277CCA450];
      v19[0] = @"VirtualGarage isn't enabled, service isn't able to call to server.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v11 = [v8 errorWithDomain:v9 code:-8 userInfo:v10];

      (*(replyCopy + 2))(replyCopy, v11);
    }

    v12 = 0;
  }

  return v12;
}

void __54__VGVirtualGarageService_messageTargetWithErrorReply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "%@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)_clearActiveVehicleIdentifierIfNeeded:(id)needed
{
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeVehicleIdentifier = [(VGVirtualGarageService *)selfCopy activeVehicleIdentifier];
  v8 = neededCopy;
  if (v8 | activeVehicleIdentifier)
  {
    v7 = [activeVehicleIdentifier isEqual:v8];

    if ((v7 & 1) == 0)
    {
      [(VGVirtualGarageService *)selfCopy setActiveVehicleIdentifier:0];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)unregisterObserver:(id)observer
{
  v8 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = observerCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Unregistering observer: %@", &v6, 0xCu);
  }

  [(GEOObserverHashTable *)self->_observers unregisterObserver:observerCopy];
}

- (void)registerObserver:(id)observer
{
  v8 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = observerCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Registering observer: %@", &v6, 0xCu);
  }

  [(GEOObserverHashTable *)self->_observers registerObserver:observerCopy];
}

- (void)_closeConnection
{
  objc_initWeak(&location, self);
  connectionQueue = self->_connectionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__VGVirtualGarageService__closeConnection__block_invoke;
  v4[3] = &unk_279E26E88;
  objc_copyWeak(&v5, &location);
  dispatch_async(connectionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__VGVirtualGarageService__closeConnection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[VGVirtualGarageService _closeConnection]_block_invoke";
      v7 = 1024;
      v8 = 192;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v5, 0x12u);
    }

    goto LABEL_8;
  }

  if (WeakRetained[7])
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "VGVirtualGarageService closing connection", &v5, 2u);
    }

    [v2[7] invalidate];
    v4 = v2[7];
    v2[7] = 0;
LABEL_8:
  }
}

void __41__VGVirtualGarageService__openConnection__block_invoke_63(uint64_t a1)
{
  v2 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_270EC1000, v2, OS_LOG_TYPE_ERROR, "Server connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _closeConnection];
}

void __41__VGVirtualGarageService__openConnection__block_invoke()
{
  v0 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_270EC1000, v0, OS_LOG_TYPE_ERROR, "Server connection interrupted", v1, 2u);
  }
}

- (void)closeForClient:(id)client
{
  v20 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (clientCopy)
  {
    if (+[VGVirtualGarageService canUseVirtualGarageXPCService])
    {
      *v18 = 0;
      *&v18[8] = v18;
      *&v18[16] = 0x2020000000;
      v19 = 0;
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v10 = MEMORY[0x277D85DD0];
      v5 = clientCopy;
      v11 = v5;
      geo_isolate_sync_data();
      v6 = v13[3];
      if (*(*&v18[8] + 24) == v6)
      {
        IsEnabled_EVRouting = MapsFeature_IsEnabled_EVRouting();
        if ((IsEnabled_EVRouting | MapsFeature_IsEnabled_Alberta()))
        {
          v8 = VGGetVirtualGarageLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v17 = v5;
            _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "Tried to closeForClient: (%@) that wasn't in _clients and VG was enabled. Check if the feature flag changed during run time. If it hasn't, there is probably in issue in your open/close logic.", buf, 0xCu);
          }
        }
      }

      else if (!v6)
      {
        [(VGVirtualGarageService *)self _closeConnection:v10];
      }

      _Block_object_dispose(&v12, 8);
      _Block_object_dispose(v18, 8);
    }
  }

  else
  {
    v9 = VGGetAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136446722;
      *&v18[4] = "[VGVirtualGarageService closeForClient:]";
      *&v18[12] = 2082;
      *&v18[14] = "client == nil";
      *&v18[22] = 2082;
      v19 = "Can't call closeForClient: with a nil client";
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", v18, 0x20u);
    }
  }
}

void *__41__VGVirtualGarageService_closeForClient___block_invoke(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_270EC1000, v2, OS_LOG_TYPE_INFO, "Will closeForClient: %@", &v5, 0xCu);
  }

  *(*(a1[6] + 8) + 24) = [*(a1[5] + 8) count];
  [*(a1[5] + 8) removeObject:a1[4]];
  result = [*(a1[5] + 8) count];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (void)openForClient:(id)client
{
  v16 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (!clientCopy)
  {
    v7 = VGGetAssertLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[VGVirtualGarageService openForClient:]";
      *&buf[12] = 2082;
      *&buf[14] = "client == nil";
      *&buf[22] = 2082;
      v15 = "Can't call openForClient: with a nil client";
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }

    goto LABEL_7;
  }

  if (+[VGVirtualGarageService canUseVirtualGarageXPCService])
  {
    IsEnabled_EVRouting = MapsFeature_IsEnabled_EVRouting();
    IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
    if ((IsEnabled_EVRouting & 1) == 0 && (IsEnabled_Alberta & 1) == 0)
    {
      v7 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "Tried to openForClient:, but virtual garage isn't enabled", buf, 2u);
      }

LABEL_7:

      goto LABEL_14;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v15 = 0;
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __40__VGVirtualGarageService_openForClient___block_invoke;
    location[4] = &unk_279E26E60;
    location[5] = self;
    v12 = clientCopy;
    v13 = buf;
    geo_isolate_sync_data();
    if (!*(*&buf[8] + 24))
    {
      objc_initWeak(location, self);
      connectionQueue = self->_connectionQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__VGVirtualGarageService_openForClient___block_invoke_23;
      block[3] = &unk_279E26E88;
      objc_copyWeak(&v10, location);
      dispatch_sync(connectionQueue, block);
      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }

    _Block_object_dispose(buf, 8);
  }

LABEL_14:
}

void __40__VGVirtualGarageService_openForClient___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1[4] + 8) containsObject:a1[5]])
  {
    v2 = VGGetAssertLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[VGVirtualGarageService openForClient:]_block_invoke";
      v11 = 2080;
      v12 = "VGVirtualGarageService.m";
      v13 = 1024;
      v14 = 104;
      _os_log_impl(&dword_270EC1000, v2, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v9, 0x1Cu);
    }

    if (_vg_isInternalInstall())
    {
      v3 = VGGetAssertLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = [MEMORY[0x277CCACC8] callStackSymbols];
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }

    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = a1[5];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_FAULT, "Tried to open connection twice for client: %@.", &v9, 0xCu);
    }
  }

  else
  {
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[5];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "Will openForClient: %@", &v9, 0xCu);
    }

    *(*(a1[6] + 8) + 24) = [*(a1[4] + 8) count];
    [*(a1[4] + 8) addObject:a1[5]];
  }
}

void __40__VGVirtualGarageService_openForClient___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openConnection];
}

@end