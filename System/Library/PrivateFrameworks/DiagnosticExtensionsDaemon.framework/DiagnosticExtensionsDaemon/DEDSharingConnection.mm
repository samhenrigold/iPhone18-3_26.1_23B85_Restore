@interface DEDSharingConnection
+ (void)checkIn;
- (DEDSharingConnection)initWithController:(id)controller;
- (DEDSharingInboundDelegate)controller;
- (id)_existingSharingSessionForDevice:(id)device;
- (id)blockingSharingSessionForDevice:(id)device fromInbound:(id)inbound;
- (id)sharingOutboundForBugSessionIdentifier:(id)identifier device:(id)device fromInbound:(id)inbound;
- (void)_configureService:(id)service withLabel:(id)label needsSetup:(BOOL)setup actionType:(unsigned __int8)type completion:(id)completion;
- (void)_handleIncomingPingingDevice:(id)device;
- (void)_handleIncomingPongingDevice:(id)device fromInbound:(id)inbound;
- (void)_saveDevice:(id)device;
- (void)_verifyPairingForSession:(id)session holdForPIN:(BOOL)n completion:(id)completion;
- (void)addIncomingSFSession:(id)session forIdentifier:(id)identifier;
- (void)checkReadinessForSFDevice:(id)device session:(id)session;
- (void)configureListenForClients:(BOOL)clients;
- (void)configureSharingInbound:(id)inbound;
- (void)createSharingSessionForSFDevice:(id)device holdForPIN:(BOOL)n fromInbound:(id)inbound completion:(id)completion;
- (void)dealloc;
- (void)discoverDevicesFromInbound:(id)inbound withCompletion:(id)completion;
- (void)getSystemInfoForDevice:(id)device;
- (void)sharing_didStartBugSessionWithInfo:(id)info forCaller:(id)caller;
- (void)sharing_startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration caller:(id)caller target:(id)target fromInbound:(id)inbound;
- (void)sharing_startPairSetupForDevice:(id)device fromInbound:(id)inbound;
- (void)sharing_tryPIN:(id)n forDevice:(id)device fromInbound:(id)inbound;
- (void)start;
- (void)startPingDiscovery;
- (void)startPingServiceWithCompletion:(id)completion;
- (void)startPongAdvertisement;
- (void)startPongDiscoveryFromInbound:(id)inbound;
- (void)startWorkerService;
- (void)stopDiscovery;
- (void)stopPingDiscovery;
- (void)stopPingService;
- (void)stopPongAdvertisement;
- (void)stopPongDiscovery;
- (void)stopSession:(id)session;
- (void)trySessionWithFoundDevice:(id)device fromInbound:(id)inbound;
- (void)updateControllerWithDevice:(id)device andStatus:(int64_t)status;
- (void)updatePongAdvertisement;
@end

@implementation DEDSharingConnection

+ (void)checkIn
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];
  v4 = [environment objectForKeyedSubscript:@"DED_UNIT_TEST"];

  v6 = Log_5(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_INFO, "NOT checking in com.apple.diagnosticextensionsd.sharing-wakeup: DEBUG", v8, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_INFO, "checking in com.apple.diagnosticextensionsd.sharing-wakeup", buf, 2u);
    }

    if (checkIn_onceToken != -1)
    {
      +[DEDSharingConnection checkIn];
    }
  }
}

void __31__DEDSharingConnection_checkIn__block_invoke()
{
  mach_service = xpc_connection_create_mach_service("com.apple.diagnosticextensionsd.sharing-wakeup", 0, 1uLL);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_19);
  xpc_connection_resume(mach_service);
  v1 = checkIn__connection;
  checkIn__connection = mach_service;
}

void __31__DEDSharingConnection_checkIn__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 == MEMORY[0x277D86420])
  {
    v5 = Log_5(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "XPC_ERROR_TERMINATION_IMMINENT, will not check in for sharing-wakeup";
      v7 = buf;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_6;
    }
  }

  else
  {
    xpc_connection_set_event_handler(v2, &__block_literal_global_22);
    xpc_connection_resume(v3);
    v5 = Log_5(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v6 = "did check in com.apple.diagnosticextensionsd.sharing-wakeup";
      v7 = &v10;
      v8 = v5;
      v9 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_248AD7000, v8, v9, v6, v7, 2u);
    }
  }
}

- (DEDSharingConnection)initWithController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = DEDSharingConnection;
  v5 = [(DEDSharingConnection *)&v14 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(DEDSharingConnection *)v5 setDeviceSessions:dictionary];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(DEDSharingConnection *)v5 setDiscoveredDevices:dictionary2];

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("com.apple.diagnosticextensionsd.sharingqueue", v8);
    [(DEDSharingConnection *)v5 setRun_queue:v9];

    [(DEDSharingConnection *)v5 setStarted:0];
    [(DEDSharingConnection *)v5 setListenForClients:0];
    [(DEDSharingConnection *)v5 setPingService:0];
    [(DEDSharingConnection *)v5 setWorkerService:0];
    [(DEDSharingConnection *)v5 setController:controllerCopy];
    v10 = dispatch_semaphore_create(5);
    [(DEDSharingConnection *)v5 setBluetoothSessionSemaphore:v10];

    v12 = Log_5(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingConnection initWithController:v12];
    }
  }

  return v5;
}

- (void)dealloc
{
  pingService = [(DEDSharingConnection *)self pingService];
  [pingService invalidate];

  workerService = [(DEDSharingConnection *)self workerService];
  [workerService invalidate];

  v5.receiver = self;
  v5.super_class = DEDSharingConnection;
  [(DEDSharingConnection *)&v5 dealloc];
}

- (void)configureSharingInbound:(id)inbound
{
  inboundCopy = inbound;
  if (![(DEDSharingConnection *)self started])
  {
    [(DEDSharingConnection *)self setSharingInbound:inboundCopy];
  }
}

- (void)configureListenForClients:(BOOL)clients
{
  clientsCopy = clients;
  if (![(DEDSharingConnection *)self started])
  {

    [(DEDSharingConnection *)self setListenForClients:clientsCopy];
  }
}

- (void)start
{
  if (![(DEDSharingConnection *)self started])
  {
    v3 = [DEDSharingInbound alloc];
    controller = [(DEDSharingConnection *)self controller];
    v5 = [(DEDSharingInbound *)v3 initWithController:controller sharingConnection:self];
    [(DEDSharingConnection *)self setSharingInbound:v5];

    if ([(DEDSharingConnection *)self listenForClients])
    {
      [(DEDSharingConnection *)self startPingDiscovery];

      [(DEDSharingConnection *)self startWorkerService];
    }
  }
}

- (void)discoverDevicesFromInbound:(id)inbound withCompletion:(id)completion
{
  inboundCopy = inbound;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__DEDSharingConnection_discoverDevicesFromInbound_withCompletion___block_invoke;
  v10[3] = &unk_278F66618;
  v10[4] = self;
  v11 = inboundCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = inboundCopy;
  [(DEDSharingConnection *)self startPingServiceWithCompletion:v10];
}

void __66__DEDSharingConnection_discoverDevicesFromInbound_withCompletion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 startPongDiscoveryFromInbound:v4];
  (*(a1[6] + 16))();
}

- (void)stopDiscovery
{
  [(DEDSharingConnection *)self stopPongDiscovery];

  [(DEDSharingConnection *)self stopPingService];
}

- (void)startPingServiceWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  pingService = [(DEDSharingConnection *)self pingService];

  if (pingService)
  {
    v7 = Log_5(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      pingService2 = [(DEDSharingConnection *)self pingService];
      v14 = 138412290;
      v15 = pingService2;
      _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Ping service already initialized [%@]", &v14, 0xCu);
    }

    completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277D54CE0]);
    [(DEDSharingConnection *)self setPingService:v9];

    v11 = Log_5(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      pingService3 = [(DEDSharingConnection *)self pingService];
      v14 = 138412290;
      v15 = pingService3;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Created new ping service [%@]", &v14, 0xCu);
    }

    pingService4 = [(DEDSharingConnection *)self pingService];
    [(DEDSharingConnection *)self _configureService:pingService4 withLabel:@"ded-ping" needsSetup:1 actionType:17 completion:completionCopy];

    completionCopy = pingService4;
  }
}

- (void)stopPingService
{
  v3 = Log_5(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "Stopping ping service.", v5, 2u);
  }

  pingService = [(DEDSharingConnection *)self pingService];
  [pingService invalidate];

  [(DEDSharingConnection *)self setPingService:0];
}

- (void)updatePongAdvertisement
{
  visiblePingUUIDs = [(DEDSharingConnection *)self visiblePingUUIDs];
  v4 = [visiblePingUUIDs count];

  if (!v4)
  {
    [(DEDSharingConnection *)self stopPongAdvertisement];
  }

  visiblePingUUIDs2 = [(DEDSharingConnection *)self visiblePingUUIDs];
  v6 = [visiblePingUUIDs2 count];

  if (v6)
  {

    [(DEDSharingConnection *)self startPongAdvertisement];
  }
}

- (void)startPongAdvertisement
{
  workerService = [(DEDSharingConnection *)self workerService];
  needsSetup = [workerService needsSetup];

  if ((needsSetup & 1) == 0)
  {
    v6 = Log_5(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Starting pong advertisement.", v9, 2u);
    }

    workerService2 = [(DEDSharingConnection *)self workerService];
    [workerService2 setNeedsSetup:1];

    workerService3 = [(DEDSharingConnection *)self workerService];
    [workerService3 setDeviceActionType:18];
  }
}

- (void)stopPongAdvertisement
{
  workerService = [(DEDSharingConnection *)self workerService];
  needsSetup = [workerService needsSetup];

  if (needsSetup)
  {
    v6 = Log_5(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Stopping pong advertisement.", v9, 2u);
    }

    workerService2 = [(DEDSharingConnection *)self workerService];
    [workerService2 setNeedsSetup:0];

    workerService3 = [(DEDSharingConnection *)self workerService];
    [workerService3 setDeviceActionType:0];
  }
}

- (void)startWorkerService
{
  v23 = *MEMORY[0x277D85DE8];
  workerService = [(DEDSharingConnection *)self workerService];

  if (workerService)
  {
    v5 = Log_5(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      workerService2 = [(DEDSharingConnection *)self workerService];
      *buf = 138412290;
      v22 = workerService2;
      v7 = "Worker service already initialized [%@]";
LABEL_6:
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D54CE0]);
    [(DEDSharingConnection *)self setWorkerService:v8];

    v19 = @"com.apple.DeviceDiagnostics";
    v9 = MEMORY[0x277CBEC38];
    v20 = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    workerService3 = [(DEDSharingConnection *)self workerService];
    [workerService3 setPairSetupACL:v10];

    v17 = @"com.apple.DeviceDiagnostics";
    v18 = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    workerService4 = [(DEDSharingConnection *)self workerService];
    [workerService4 setPairVerifyACL:v12];

    workerService5 = [(DEDSharingConnection *)self workerService];
    [workerService5 setOverrideScreenOff:1];

    workerService6 = [(DEDSharingConnection *)self workerService];
    [(DEDSharingConnection *)self _configureService:workerService6 withLabel:@"ded-worker" needsSetup:0 actionType:0 completion:0];

    v5 = Log_5(v16);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      workerService2 = [(DEDSharingConnection *)self workerService];
      *buf = 138412290;
      v22 = workerService2;
      v7 = "Started sharing worker service %@";
      goto LABEL_6;
    }
  }
}

- (void)startPingDiscovery
{
  v39 = *MEMORY[0x277D85DE8];
  pingDiscovery = [(DEDSharingConnection *)self pingDiscovery];

  if (pingDiscovery)
  {
    v5 = Log_5(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      pingDiscovery2 = [(DEDSharingConnection *)self pingDiscovery];
      *buf = 138412290;
      v38 = pingDiscovery2;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Ping discovery already initialized %@", buf, 0xCu);
    }

    v8 = Log_5(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      visiblePingUUIDs = [(DEDSharingConnection *)self visiblePingUUIDs];
      *buf = 138412290;
      v38 = visiblePingUUIDs;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Ping devices tracked %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277D54C68]);
    [(DEDSharingConnection *)self setPingDiscovery:v10];

    v12 = Log_5(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      pingDiscovery3 = [(DEDSharingConnection *)self pingDiscovery];
      *buf = 138412290;
      v38 = pingDiscovery3;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "Created ping discovery %@", buf, 0xCu);
    }

    pingDiscovery4 = [(DEDSharingConnection *)self pingDiscovery];
    [pingDiscovery4 setChangeFlags:13];

    pingDiscovery5 = [(DEDSharingConnection *)self pingDiscovery];
    [pingDiscovery5 setDiscoveryFlags:16];

    pingDiscovery6 = [(DEDSharingConnection *)self pingDiscovery];
    [pingDiscovery6 setScanRate:20];

    v18 = Log_5(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      pingDiscovery7 = [(DEDSharingConnection *)self pingDiscovery];
      *buf = 138412290;
      v38 = pingDiscovery7;
      _os_log_impl(&dword_248AD7000, v18, OS_LOG_TYPE_DEFAULT, "Initialized Ping discovery %@", buf, 0xCu);
    }

    v20 = [MEMORY[0x277CBEB58] set];
    [(DEDSharingConnection *)self setVisiblePingUUIDs:v20];

    objc_initWeak(buf, self);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __42__DEDSharingConnection_startPingDiscovery__block_invoke;
    v35[3] = &unk_278F66640;
    objc_copyWeak(&v36, buf);
    pingDiscovery8 = [(DEDSharingConnection *)self pingDiscovery];
    [pingDiscovery8 setDeviceFoundHandler:v35];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __42__DEDSharingConnection_startPingDiscovery__block_invoke_44;
    v33[3] = &unk_278F66668;
    objc_copyWeak(&v34, buf);
    pingDiscovery9 = [(DEDSharingConnection *)self pingDiscovery];
    [pingDiscovery9 setDeviceChangedHandler:v33];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __42__DEDSharingConnection_startPingDiscovery__block_invoke_46;
    v31[3] = &unk_278F66640;
    objc_copyWeak(&v32, buf);
    pingDiscovery10 = [(DEDSharingConnection *)self pingDiscovery];
    [pingDiscovery10 setDeviceLostHandler:v31];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __42__DEDSharingConnection_startPingDiscovery__block_invoke_47;
    v29[3] = &unk_278F65830;
    objc_copyWeak(&v30, buf);
    pingDiscovery11 = [(DEDSharingConnection *)self pingDiscovery];
    [pingDiscovery11 setInterruptionHandler:v29];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __42__DEDSharingConnection_startPingDiscovery__block_invoke_48;
    v27[3] = &unk_278F65830;
    objc_copyWeak(&v28, buf);
    pingDiscovery12 = [(DEDSharingConnection *)self pingDiscovery];
    [pingDiscovery12 setInvalidationHandler:v27];

    pingDiscovery13 = [(DEDSharingConnection *)self pingDiscovery];
    [pingDiscovery13 activateWithCompletion:&__block_literal_global_52];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_5(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __42__DEDSharingConnection_startPingDiscovery__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleIncomingPingingDevice:v3];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_44(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = Log_5(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __42__DEDSharingConnection_startPingDiscovery__block_invoke_44_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleIncomingPingingDevice:v4];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_46(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = Log_5(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v3;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_INFO, "Ping discovery deviceLost called for device [%@]", &v17, 0xCu);
  }

  v5 = [v3 identifier];
  v6 = [v5 UUIDString];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained visiblePingUUIDs];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v11 = Log_5(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "pingDiscovery.deviceLost: [%@]", &v17, 0xCu);
    }

    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 visiblePingUUIDs];
    v14 = [v3 identifier];
    v15 = [v14 UUIDString];
    [v13 removeObject:v15];

    v16 = objc_loadWeakRetained((a1 + 32));
    [v16 updatePongAdvertisement];
  }
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_47(uint64_t a1)
{
  v2 = Log_5(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Ping discovery interrupted.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained pingDiscovery];
  [v4 invalidate];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setPingDiscovery:0];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_48(uint64_t a1)
{
  v2 = Log_5(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Ping discovery invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPingDiscovery:0];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_49(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = Log_5(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__DEDSharingConnection_startPingDiscovery__block_invoke_49_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "Ping discovery activated", v5, 2u);
  }
}

- (void)_handleIncomingPingingDevice:(id)device
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  isValidDEDPingDevice = [deviceCopy isValidDEDPingDevice];
  visiblePingUUIDs = [(DEDSharingConnection *)self visiblePingUUIDs];
  v9 = [visiblePingUUIDs containsObject:uUIDString];

  if (!isValidDEDPingDevice || (v9 & 1) != 0)
  {
    if ((isValidDEDPingDevice & v9) == 1)
    {
      v14 = Log_5(v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [DEDSharingConnection _handleIncomingPingingDevice:];
      }
    }

    else
    {
      v16 = isValidDEDPingDevice | v9;
      v17 = Log_5(v10);
      v14 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = deviceCopy;
          _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Incoming ping discovery. known device no longer valid, will stop tracking [%@]", &v20, 0xCu);
        }

        visiblePingUUIDs2 = [(DEDSharingConnection *)self visiblePingUUIDs];
        [visiblePingUUIDs2 removeObject:uUIDString];

        v14 = Log_5(v19);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [DEDSharingConnection _handleIncomingPingingDevice:?];
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [DEDSharingConnection _handleIncomingPingingDevice:];
      }
    }
  }

  else
  {
    v11 = Log_5(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = deviceCopy;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Incoming ping discovery. New device is valid, will track [%@]", &v20, 0xCu);
    }

    [(DEDSharingConnection *)self _saveDevice:deviceCopy];
    visiblePingUUIDs3 = [(DEDSharingConnection *)self visiblePingUUIDs];
    [visiblePingUUIDs3 addObject:uUIDString];

    v14 = Log_5(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      visiblePingUUIDs4 = [(DEDSharingConnection *)self visiblePingUUIDs];
      v20 = 138412290;
      v21 = visiblePingUUIDs4;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_INFO, "Tracked DED ping devices %@", &v20, 0xCu);
    }
  }

  [(DEDSharingConnection *)self updatePongAdvertisement];
}

- (void)stopPingDiscovery
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = Log_5(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pingDiscovery = [(DEDSharingConnection *)self pingDiscovery];
    v6 = 138412290;
    v7 = pingDiscovery;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "Stopping ping discovery on %@.", &v6, 0xCu);
  }

  pingDiscovery2 = [(DEDSharingConnection *)self pingDiscovery];
  [pingDiscovery2 invalidate];

  [(DEDSharingConnection *)self setPingDiscovery:0];
}

- (void)startPongDiscoveryFromInbound:(id)inbound
{
  v44 = *MEMORY[0x277D85DE8];
  inboundCopy = inbound;
  pongDiscovery = [(DEDSharingConnection *)self pongDiscovery];

  if (pongDiscovery)
  {
    v7 = Log_5(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      pongDiscovery2 = [(DEDSharingConnection *)self pongDiscovery];
      *buf = 138412290;
      v43 = pongDiscovery2;
      _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Pong discovery already initialized %@", buf, 0xCu);
    }

    v10 = Log_5(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      pongingDevices = [(DEDSharingConnection *)self pongingDevices];
      *buf = 138412290;
      v43 = pongingDevices;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Pong devices tracked %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D54C68]);
    [(DEDSharingConnection *)self setPongDiscovery:v12];

    v14 = Log_5(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      pongingDevices2 = [(DEDSharingConnection *)self pongingDevices];
      *buf = 138412290;
      v43 = pongingDevices2;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Created pong discovery %@", buf, 0xCu);
    }

    pongDiscovery3 = [(DEDSharingConnection *)self pongDiscovery];
    [pongDiscovery3 setChangeFlags:13];

    pongDiscovery4 = [(DEDSharingConnection *)self pongDiscovery];
    [pongDiscovery4 setDiscoveryFlags:235011984];

    pongDiscovery5 = [(DEDSharingConnection *)self pongDiscovery];
    [pongDiscovery5 setScanRate:20];

    v20 = Log_5(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      pongDiscovery6 = [(DEDSharingConnection *)self pongDiscovery];
      *buf = 138412290;
      v43 = pongDiscovery6;
      _os_log_impl(&dword_248AD7000, v20, OS_LOG_TYPE_DEFAULT, "Initialized Pong discovery %@", buf, 0xCu);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(DEDSharingConnection *)self setPongingDevices:dictionary];

    objc_initWeak(buf, self);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke;
    v39[3] = &unk_278F666B0;
    objc_copyWeak(&v41, buf);
    v23 = inboundCopy;
    v40 = v23;
    pongDiscovery7 = [(DEDSharingConnection *)self pongDiscovery];
    [pongDiscovery7 setDeviceFoundHandler:v39];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_53;
    v36[3] = &unk_278F666D8;
    objc_copyWeak(&v38, buf);
    v37 = v23;
    pongDiscovery8 = [(DEDSharingConnection *)self pongDiscovery];
    [pongDiscovery8 setDeviceChangedHandler:v36];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_54;
    v34[3] = &unk_278F66640;
    objc_copyWeak(&v35, buf);
    pongDiscovery9 = [(DEDSharingConnection *)self pongDiscovery];
    [pongDiscovery9 setDeviceLostHandler:v34];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_56;
    v32[3] = &unk_278F65830;
    objc_copyWeak(&v33, buf);
    pongDiscovery10 = [(DEDSharingConnection *)self pongDiscovery];
    [pongDiscovery10 setInterruptionHandler:v32];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_57;
    v30[3] = &unk_278F65830;
    objc_copyWeak(&v31, buf);
    pongDiscovery11 = [(DEDSharingConnection *)self pongDiscovery];
    [pongDiscovery11 setInvalidationHandler:v30];

    pongDiscovery12 = [(DEDSharingConnection *)self pongDiscovery];
    [pongDiscovery12 activateWithCompletion:&__block_literal_global_60_1];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v41);
    objc_destroyWeak(buf);
  }
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_5(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleIncomingPongingDevice:v3 fromInbound:*(a1 + 32)];
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_5(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_53_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleIncomingPongingDevice:v3 fromInbound:*(a1 + 32)];
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_54(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = Log_5(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v3;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_INFO, "Pong discovery deviceLost called for device [%@]", &v16, 0xCu);
  }

  v5 = [v3 identifier];
  v6 = [v5 UUIDString];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained pongingDevices];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v11 = Log_5(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_54_cold_1();
    }

    v12 = [DEDDevice deviceForSFDevice:v3 andStatus:4];
    v13 = objc_loadWeakRetained((a1 + 32));
    [v13 updateControllerWithDevice:v12 andStatus:4];

    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v14 pongingDevices];
    [v15 removeObjectForKey:v6];
  }
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_56(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pongDiscovery];
  [v3 invalidate];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setPongDiscovery:0];

  v6 = Log_5(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Pong discovery interrupted.", v7, 2u);
  }
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_57(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPongDiscovery:0];

  v3 = Log_5(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_INFO, "Pong discovery invalidated.", v4, 2u);
  }
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_58(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = Log_5(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "Pong discovery activated (error: %@).", &v4, 0xCu);
  }
}

- (void)_handleIncomingPongingDevice:(id)device fromInbound:(id)inbound
{
  v33 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  inboundCopy = inbound;
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  isValidDEDPongDevice = [deviceCopy isValidDEDPongDevice];
  pongingDevices = [(DEDSharingConnection *)self pongingDevices];
  v12 = [pongingDevices objectForKeyedSubscript:uUIDString];

  if (!isValidDEDPongDevice || v12)
  {
    if (v12)
    {
      v23 = isValidDEDPongDevice;
    }

    else
    {
      v23 = 0;
    }

    if (v23 == 1)
    {
      v24 = Log_5(v13);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [DEDSharingConnection _handleIncomingPongingDevice:fromInbound:];
      }
    }

    else
    {
      if (v12)
      {
        v25 = 1;
      }

      else
      {
        v25 = isValidDEDPongDevice;
      }

      if (v25)
      {
        v26 = [DEDDevice deviceForSFDevice:deviceCopy andStatus:4];
        [(DEDSharingConnection *)self updateControllerWithDevice:v26 andStatus:4];
        pongingDevices2 = [(DEDSharingConnection *)self pongingDevices];
        [pongingDevices2 removeObjectForKey:uUIDString];

        goto LABEL_26;
      }

      v24 = Log_5(v13);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [DEDSharingConnection _handleIncomingPongingDevice:fromInbound:];
      }
    }

    goto LABEL_26;
  }

  v14 = Log_5(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = deviceCopy;
    _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Incoming pong discovery. New device has pong action and within range, will get status [%@]", buf, 0xCu);
  }

  v16 = Log_5(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection _handleIncomingPongingDevice:deviceCopy fromInbound:?];
  }

  v18 = Log_5(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection _handleIncomingPongingDevice:deviceCopy fromInbound:?];
  }

  [(DEDSharingConnection *)self _saveDevice:deviceCopy];
  pongingDevices3 = [(DEDSharingConnection *)self pongingDevices];
  [pongingDevices3 setObject:deviceCopy forKeyedSubscript:uUIDString];

  v21 = Log_5(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection _handleIncomingPongingDevice:? fromInbound:?];
  }

  run_queue = [(DEDSharingConnection *)self run_queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__DEDSharingConnection__handleIncomingPongingDevice_fromInbound___block_invoke;
  block[3] = &unk_278F65668;
  block[4] = self;
  v29 = deviceCopy;
  v30 = inboundCopy;
  dispatch_async(run_queue, block);

LABEL_26:
}

- (void)stopPongDiscovery
{
  v3 = Log_5(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "Stopping pong discovery.", v5, 2u);
  }

  pongDiscovery = [(DEDSharingConnection *)self pongDiscovery];
  [pongDiscovery invalidate];

  [(DEDSharingConnection *)self setPongDiscovery:0];
}

- (void)trySessionWithFoundDevice:(id)device fromInbound:(id)inbound
{
  deviceCopy = device;
  inboundCopy = inbound;
  v8 = [DEDDevice deviceForSFDevice:deviceCopy andStatus:3];
  v9 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:v8];
  if (v9)
  {
    [(DEDSharingConnection *)self checkReadinessForSFDevice:deviceCopy session:v9];
  }

  else
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__DEDSharingConnection_trySessionWithFoundDevice_fromInbound___block_invoke;
    v10[3] = &unk_278F66700;
    objc_copyWeak(&v12, &location);
    v11 = deviceCopy;
    [(DEDSharingConnection *)self createSharingSessionForSFDevice:v11 holdForPIN:0 fromInbound:inboundCopy completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __62__DEDSharingConnection_trySessionWithFoundDevice_fromInbound___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (a3)
  {
    [WeakRetained checkReadinessForSFDevice:*(a1 + 32) session:v5];
  }

  else
  {
    [WeakRetained stopSession:v5];

    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 run_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__DEDSharingConnection_trySessionWithFoundDevice_fromInbound___block_invoke_2;
    block[3] = &unk_278F65880;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = *(a1 + 32);
    dispatch_async(v8, block);

    objc_destroyWeak(&v12);
  }
}

void __62__DEDSharingConnection_trySessionWithFoundDevice_fromInbound___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained getSystemInfoForDevice:*(a1 + 32)];
}

- (void)getSystemInfoForDevice:(id)device
{
  deviceCopy = device;
  v5 = Log_5(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection getSystemInfoForDevice:deviceCopy];
  }

  bluetoothSessionSemaphore = [(DEDSharingConnection *)self bluetoothSessionSemaphore];
  dispatch_semaphore_wait(bluetoothSessionSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  v7 = objc_alloc_init(MEMORY[0x277D54CF8]);
  v8 = objc_alloc_init(MEMORY[0x277D54C48]);
  identifier = [deviceCopy identifier];
  [v8 setIdentifier:identifier];

  [v7 setPeerDevice:v8];
  [v7 setAllowUnencrypted:1];
  v10 = Log_5([v7 activate]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection getSystemInfoForDevice:deviceCopy];
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke;
  v20[3] = &unk_278F66728;
  v23 = v24;
  v20[4] = self;
  v11 = deviceCopy;
  v21 = v11;
  v12 = v7;
  v22 = v12;
  [v12 getSystemInfoWithCompletion:v20];
  v13 = dispatch_time(0, 18000000000);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_71;
  v16[3] = &unk_278F65DF0;
  v16[4] = self;
  v17 = v11;
  v18 = v12;
  v19 = v24;
  v14 = v12;
  v15 = v11;
  dispatch_after(v13, MEMORY[0x277D85CD0], v16);

  _Block_object_dispose(v24, 8);
}

void __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v8 = [*(a1 + 32) bluetoothSessionSemaphore];
    dispatch_semaphore_signal(v8);
  }

  if (!v7)
  {
    v10 = Log_5(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_cold_2();
    }

    [*(a1 + 32) _saveDevice:*(a1 + 40)];
    v9 = [DEDDevice deviceForSFDevice:*(a1 + 40) systemInfo:v5 andStatus:2];
    [*(a1 + 32) updateControllerWithDevice:v9 andStatus:2];
    goto LABEL_10;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v9 = Log_5(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_cold_1();
    }

LABEL_10:
  }

  [*(a1 + 48) invalidate];
  *(*(*(a1 + 56) + 8) + 24) = 1;
}

id *__47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_71(id *result)
{
  if ((*(*(result[7] + 1) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = [result[4] bluetoothSessionSemaphore];
    dispatch_semaphore_signal(v2);

    v4 = Log_5(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_71_cold_1(v1);
    }

    result = [v1[6] invalidate];
    *(*(v1[7] + 1) + 24) = 1;
  }

  return result;
}

- (void)checkReadinessForSFDevice:(id)device session:(id)session
{
  v12[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  sessionCopy = session;
  v7 = Log_5(sessionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection checkReadinessForSFDevice:deviceCopy session:?];
  }

  v11[0] = @"setup";
  v11[1] = @"yourIdentifier";
  v12[0] = @"ready_check";
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];
  v12[1] = uUIDString;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [sessionCopy sendWithFlags:0 object:v10];
}

- (void)sharing_startPairSetupForDevice:(id)device fromInbound:(id)inbound
{
  deviceCopy = device;
  inboundCopy = inbound;
  v8 = Log_5(inboundCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection sharing_startPairSetupForDevice:deviceCopy fromInbound:?];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke;
  v16[3] = &unk_278F66778;
  v16[4] = self;
  v9 = deviceCopy;
  v17 = v9;
  v10 = inboundCopy;
  v18 = v10;
  v11 = MEMORY[0x24C1E5320](v16);
  v12 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:v9];
  if (v12)
  {
    (v11)[2](v11, v12);
  }

  else
  {
    sfDevice = [v9 sfDevice];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke_82;
    v14[3] = &unk_278F667A0;
    v15 = v11;
    [(DEDSharingConnection *)self createSharingSessionForSFDevice:sfDevice holdForPIN:1 fromInbound:v10 completion:v14];
  }
}

void __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke_2;
  v6[3] = &unk_278F66750;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  [v5 pairSetupWithFlags:8 completion:v6];
}

void __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_5(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke_2_cold_1(v4);
  }

  if (v3)
  {
    v5 = [v3 code];
    if (v5 != -6723)
    {
      v6 = Log_5(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke_2_cold_2();
      }

      [*(a1 + 32) sharing_startPairSetupForDevice:*(a1 + 40) fromInbound:*(a1 + 48)];
    }
  }

  else
  {
    v7 = [*(a1 + 32) controller];
    [v7 sharingInbound_successPINForDevice:*(a1 + 40) fromInbound:*(a1 + 48)];

    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) sfDevice];
    [v8 checkReadinessForSFDevice:v9 session:*(a1 + 56)];
  }
}

- (void)sharing_tryPIN:(id)n forDevice:(id)device fromInbound:(id)inbound
{
  v15 = *MEMORY[0x277D85DE8];
  nCopy = n;
  deviceCopy = device;
  v9 = Log_5(deviceCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = deviceCopy;
    _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "trying pin for device [%{public}@]", &v13, 0xCu);
  }

  v10 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:deviceCopy];
  v11 = v10;
  if (v10)
  {
    [v10 pairSetupTryPIN:nCopy];
  }

  else
  {
    v12 = Log_5(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DEDSharingConnection sharing_tryPIN:forDevice:fromInbound:];
    }
  }
}

- (id)sharingOutboundForBugSessionIdentifier:(id)identifier device:(id)device fromInbound:(id)inbound
{
  identifierCopy = identifier;
  deviceCopy = device;
  inboundCopy = inbound;
  v11 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:deviceCopy];
  if (v11 || ([(DEDSharingConnection *)self blockingSharingSessionForDevice:deviceCopy fromInbound:inboundCopy], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [[DEDSharingOutbound alloc] initWithID:identifierCopy withSFSession:v11 connection:self];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)sharing_startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration caller:(id)caller target:(id)target fromInbound:(id)inbound
{
  v24[5] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  configurationCopy = configuration;
  callerCopy = caller;
  targetCopy = target;
  v16 = [(DEDSharingConnection *)self blockingSharingSessionForDevice:targetCopy fromInbound:inbound];
  v17 = v16;
  if (v16)
  {
    v18 = Log_5(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingConnection sharing_startBugSessionWithIdentifier:targetCopy configuration:? caller:? target:? fromInbound:?];
    }

    secureArchive = [configurationCopy secureArchive];
    if (!secureArchive)
    {
      secureArchive = [MEMORY[0x277CBEA90] data];
    }

    v23[0] = @"setup";
    v23[1] = @"sessionID";
    v24[0] = @"start_session";
    v24[1] = identifierCopy;
    v24[2] = secureArchive;
    v23[2] = @"config";
    v23[3] = @"callingDevice";
    serialize = [callerCopy serialize];
    v24[3] = serialize;
    v23[4] = @"targetDevice";
    serialize2 = [targetCopy serialize];
    v24[4] = serialize2;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];

    [v17 sendWithFlags:0 object:v22];
  }
}

- (void)sharing_didStartBugSessionWithInfo:(id)info forCaller:(id)caller
{
  infoCopy = info;
  v6 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:caller];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:infoCopy];
    [v7 setObject:@"did_start_session" forKeyedSubscript:@"setup"];
    [v6 sendWithFlags:0 object:v7];
  }
}

- (void)updateControllerWithDevice:(id)device andStatus:(int64_t)status
{
  deviceCopy = device;
  deviceStatusCallback = [(DEDSharingConnection *)self deviceStatusCallback];

  if (deviceStatusCallback)
  {
    [deviceCopy setStatus:status];
    deviceStatusCallback2 = [(DEDSharingConnection *)self deviceStatusCallback];
    (deviceStatusCallback2)[2](deviceStatusCallback2, deviceCopy, status);
  }

  deviceSessions = [(DEDSharingConnection *)self deviceSessions];
  address = [deviceCopy address];
  v10 = [deviceSessions objectForKeyedSubscript:address];

  if (v10)
  {
    deviceSessions2 = [(DEDSharingConnection *)self deviceSessions];
    address2 = [deviceCopy address];
    v13 = [deviceSessions2 objectForKeyedSubscript:address2];
    [(DEDSharingConnection *)self stopSession:v13];
  }
}

- (void)_saveDevice:(id)device
{
  deviceCopy = device;
  discoveredDevices = [(DEDSharingConnection *)self discoveredDevices];
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];
  [discoveredDevices setObject:deviceCopy forKey:uUIDString];
}

- (void)_configureService:(id)service withLabel:(id)label needsSetup:(BOOL)setup actionType:(unsigned __int8)type completion:(id)completion
{
  typeCopy = type;
  setupCopy = setup;
  serviceCopy = service;
  labelCopy = label;
  completionCopy = completion;
  [serviceCopy setAdvertiseRate:40];
  [serviceCopy setIdentifier:*MEMORY[0x277D54D60]];
  [serviceCopy setLabel:labelCopy];
  if (setupCopy)
  {
    [serviceCopy setNeedsSetup:1];
    [serviceCopy setDeviceActionType:typeCopy];
  }

  else
  {
    [serviceCopy setNeedsSetup:0];
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, serviceCopy);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke;
  v28[3] = &unk_278F65880;
  objc_copyWeak(&v30, &from);
  v15 = labelCopy;
  v29 = v15;
  [serviceCopy setInterruptionHandler:v28];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_103;
  v26[3] = &unk_278F653D0;
  v16 = v15;
  v27 = v16;
  [serviceCopy setInvalidationHandler:v26];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_104;
  v24[3] = &unk_278F667C8;
  objc_copyWeak(&v25, &location);
  [serviceCopy setReceivedObjectHandler:v24];
  [serviceCopy setReceivedRequestHandler:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_2;
  v19[3] = &unk_278F667F0;
  v22 = setupCopy;
  v17 = v16;
  v20 = v17;
  v23 = typeCopy;
  v18 = completionCopy;
  v21 = v18;
  [serviceCopy activateWithCompletion:v19];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  v4 = Log_5(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ service interrupted.", &v6, 0xCu);
  }
}

void __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_103(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = Log_5(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ service invalidated.", &v4, 0xCu);
  }
}

void __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_104(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained sharingInbound];
  [v8 handleObject:v6 forSFSession:v7];
}

void __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = Log_5(v3);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4 == 1)
  {
    if (v6)
    {
      __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_2_cold_2();
    }
  }

  else if (v6)
  {
    __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_2_cold_1();
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, MEMORY[0x277CBEBF8]);
  }
}

- (id)_existingSharingSessionForDevice:(id)device
{
  address = [device address];
  deviceSessions = [(DEDSharingConnection *)self deviceSessions];
  v6 = [deviceSessions objectForKeyedSubscript:address];

  if (v6)
  {
    v8 = Log_5(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingConnection _existingSharingSessionForDevice:];
    }

    deviceSessions2 = [(DEDSharingConnection *)self deviceSessions];
    v10 = [deviceSessions2 objectForKeyedSubscript:address];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)blockingSharingSessionForDevice:(id)device fromInbound:(id)inbound
{
  deviceCopy = device;
  inboundCopy = inbound;
  v8 = Log_5(inboundCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection blockingSharingSessionForDevice:deviceCopy fromInbound:?];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v9 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:deviceCopy];
  v10 = v22[5];
  v22[5] = v9;

  v11 = v22[5];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = dispatch_semaphore_create(0);
    sfDevice = [deviceCopy sfDevice];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__DEDSharingConnection_blockingSharingSessionForDevice_fromInbound___block_invoke;
    v18[3] = &unk_278F66818;
    v20 = &v21;
    v15 = v13;
    v19 = v15;
    [(DEDSharingConnection *)self createSharingSessionForSFDevice:sfDevice holdForPIN:0 fromInbound:inboundCopy completion:v18];

    v16 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v15, v16);
    v12 = v22[5];
  }

  _Block_object_dispose(&v21, 8);

  return v12;
}

void __68__DEDSharingConnection_blockingSharingSessionForDevice_fromInbound___block_invoke(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)createSharingSessionForSFDevice:(id)device holdForPIN:(BOOL)n fromInbound:(id)inbound completion:(id)completion
{
  v54[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  inboundCopy = inbound;
  completionCopy = completion;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__4;
  v51 = __Block_byref_object_dispose__4;
  v52 = objc_alloc_init(MEMORY[0x277D54CE8]);
  [v48[5] setServiceIdentifier:*MEMORY[0x277D54D60]];
  [v48[5] setPeerDevice:deviceCopy];
  v53 = @"com.apple.DeviceDiagnostics";
  v54[0] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
  [v48[5] setPairSetupACL:v13];

  [v48[5] setLabel:@"ded-session"];
  objc_initWeak(&location, v48[5]);
  objc_initWeak(&from, self);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke;
  v43[3] = &unk_278F661A8;
  v14 = deviceCopy;
  v44 = v14;
  [v48[5] setErrorHandler:v43];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_110;
  v39[3] = &unk_278F66840;
  v15 = v14;
  v40 = v15;
  objc_copyWeak(&v41, &from);
  objc_copyWeak(&v42, &location);
  [v48[5] setInterruptionHandler:v39];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_111;
  v35[3] = &unk_278F66840;
  v16 = v15;
  v36 = v16;
  objc_copyWeak(&v37, &from);
  objc_copyWeak(&v38, &location);
  [v48[5] setInvalidationHandler:v35];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_112;
  v31[3] = &unk_278F66868;
  v17 = v16;
  v32 = v17;
  objc_copyWeak(&v34, &from);
  v18 = inboundCopy;
  v33 = v18;
  [v48[5] setPromptForPINHandler:v31];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_2;
  v28[3] = &unk_278F66890;
  objc_copyWeak(&v29, &from);
  objc_copyWeak(&v30, &location);
  [v48[5] setReceivedObjectHandler:v28];
  v19 = v48[5];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3;
  v22[3] = &unk_278F668B8;
  v25 = &v47;
  v20 = v17;
  v23 = v20;
  objc_copyWeak(&v26, &from);
  nCopy = n;
  v21 = completionCopy;
  v24 = v21;
  [v19 activateWithCompletion:v22];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v41);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v47, 8);
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = Log_5(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_cold_1();
  }
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_110(uint64_t a1)
{
  v2 = Log_5(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_110_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained deviceSessions];
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 peerDevice];
  v7 = [v6 identifier];
  v8 = [v7 UUIDString];
  [v4 removeObjectForKey:v8];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_111(uint64_t a1)
{
  v2 = Log_5(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_111_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained deviceSessions];
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 peerDevice];
  v7 = [v6 identifier];
  v8 = [v7 UUIDString];
  [v4 removeObjectForKey:v8];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_112(uint64_t a1)
{
  v4 = [DEDDevice deviceForSFDevice:*(a1 + 32) andStatus:2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained controller];
  [v3 sharingInbound_promptPINForDevice:v4 fromInbound:*(a1 + 40)];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained sharingInbound];
  v6 = objc_loadWeakRetained((a1 + 40));
  [v5 handleObject:v4 forSFSession:v6];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_5(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3_cold_1();
  }

  if (v3)
  {
    v6 = Log_5(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3_cold_2();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v9 = [WeakRetained deviceSessions];
    v10 = [*(a1 + 32) identifier];
    v11 = [v10 UUIDString];
    [v9 setObject:v7 forKeyedSubscript:v11];

    v12 = objc_loadWeakRetained((a1 + 56));
    [v12 _verifyPairingForSession:*(*(*(a1 + 48) + 8) + 40) holdForPIN:*(a1 + 64) completion:*(a1 + 40)];
  }
}

- (void)_verifyPairingForSession:(id)session holdForPIN:(BOOL)n completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__DEDSharingConnection__verifyPairingForSession_holdForPIN_completion___block_invoke;
  v12[3] = &unk_278F668E0;
  v10 = sessionCopy;
  v13 = v10;
  nCopy = n;
  objc_copyWeak(&v15, &location);
  v11 = completionCopy;
  v14 = v11;
  [v10 pairVerifyWithFlags:8 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __71__DEDSharingConnection__verifyPairingForSession_holdForPIN_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = Log_5(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) peerDevice];
      v7 = [v6 identifier];
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "verifyPairing (%@) error: %@ ", &v12, 0x16u);
    }

    if ((*(a1 + 56) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained stopSession:*(a1 + 32)];
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v5)
    {
      v10 = [*(a1 + 32) peerDevice];
      v11 = [v10 identifier];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "verifyPairing (%@) success!", &v12, 0xCu);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  v9();
}

- (void)stopSession:(id)session
{
  sessionCopy = session;
  deviceSessions = [(DEDSharingConnection *)self deviceSessions];
  peerDevice = [sessionCopy peerDevice];
  identifier = [peerDevice identifier];
  uUIDString = [identifier UUIDString];
  [deviceSessions removeObjectForKey:uUIDString];

  [sessionCopy invalidate];
}

- (void)addIncomingSFSession:(id)session forIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__DEDSharingConnection_addIncomingSFSession_forIdentifier___block_invoke;
  v14[3] = &unk_278F66908;
  v8 = identifierCopy;
  v15 = v8;
  objc_copyWeak(&v16, &location);
  v9 = Log_5([sessionCopy setInvalidationHandler:v14]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "Incoming SFSession added for %@", buf, 0xCu);
  }

  deviceSessions = [(DEDSharingConnection *)self deviceSessions];
  v11 = [deviceSessions objectForKeyedSubscript:v8];
  v12 = v11 == 0;

  if (v12)
  {
    deviceSessions2 = [(DEDSharingConnection *)self deviceSessions];
    [deviceSessions2 setObject:sessionCopy forKeyedSubscript:v8];
  }

  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

void __59__DEDSharingConnection_addIncomingSFSession_forIdentifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = Log_5(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "Incoming SFSession Invalidated for %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained deviceSessions];
  [v5 removeObjectForKey:*(a1 + 32)];
}

- (DEDSharingInboundDelegate)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_44_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_49_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "Ping discovery activated with error [%@]", v1, 0xCu);
}

- (void)_handleIncomingPingingDevice:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 visiblePingUUIDs];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_handleIncomingPongingDevice:(void *)a1 fromInbound:.cold.1(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 model];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_handleIncomingPongingDevice:(void *)a1 fromInbound:.cold.2(void *a1)
{
  [a1 needsSetup];
  [a1 systemPairState];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_handleIncomingPongingDevice:(void *)a1 fromInbound:.cold.3(void *a1)
{
  v1 = [a1 pongingDevices];
  v2 = [v1 allKeys];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)getSystemInfoForDevice:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)getSystemInfoForDevice:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_2();
  v1 = [*(v0 + 40) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_2();
  v1 = [*(v0 + 40) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_71_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)checkReadinessForSFDevice:(void *)a1 session:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)sharing_startPairSetupForDevice:(void *)a1 fromInbound:.cold.1(void *a1)
{
  v2 = [a1 address];
  v3 = [a1 name];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)sharing_tryPIN:forDevice:fromInbound:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "no session for pin attempt for device [%{public}@]", v1, 0xCu);
}

- (void)sharing_startBugSessionWithIdentifier:(void *)a1 configuration:caller:target:fromInbound:.cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)blockingSharingSessionForDevice:(void *)a1 fromInbound:.cold.1(void *a1)
{
  v1 = [a1 address];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_2();
  v1 = [OUTLINED_FUNCTION_6_1(v0) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_110_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_6_1(a1) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_111_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_6_1(a1) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_5_2();
  v1 = v0;
  v2 = [*(*(*(v0 + 48) + 8) + 40) identifier];
  v3 = [*(v1 + 32) identifier];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_5_2();
  v1 = [OUTLINED_FUNCTION_6_1(v0) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end