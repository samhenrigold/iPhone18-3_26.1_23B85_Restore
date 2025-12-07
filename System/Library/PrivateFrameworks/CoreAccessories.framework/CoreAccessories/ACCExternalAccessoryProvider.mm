@interface ACCExternalAccessoryProvider
+ (id)accessoryDictionaryForLogging:(id)logging;
- (ACCExternalAccessoryProvider)initWithDelegate:(id)delegate capabilities:(int)capabilities;
- (ACCExternalAccessoryProviderProtocol)delegate;
- (BOOL)hasEAEntitlement;
- (BOOL)hasEAProtocols;
- (BOOL)hasEASandbox;
- (id)_findAccessoryForPrimaryUUID:(id)d;
- (id)currentVehicleInfo:(id)info;
- (void)ExternalAccessoryArrived:(id)arrived;
- (void)ExternalAccessoryLeft:(id)left;
- (void)_constructClientRegistrationInfo;
- (void)_removeAccessoryForPrimaryUUID:(id)d;
- (void)_removeAllAccessories;
- (void)accessoryCloseExternalAccessorySession:(id)session;
- (void)closeExternalAccessorySession:(id)session;
- (void)connectToServer:(BOOL)server;
- (void)createExternalAccessorySessionForProtocol:(id)protocol accessoryUUID:(id)d withEASessionReply:(id)reply;
- (void)dealloc;
- (void)destinationInformation:(id)information forUUID:(id)d;
- (void)destinationSharingStatus:(BOOL)status forDestinationUUID:(id)d supportedParams:(id)params forUUID:(id)iD;
- (void)enqueueLocationNMEASentence:(id)sentence forUUID:(id)d withTimestamps:(id)timestamps;
- (void)handleIncomingExternalAccessoryData:(id)data forEASessionIdentifier:(id)identifier withReply:(id)reply;
- (void)handleIncomingNotification:(id)notification withPayload:(id)payload aboutAccessory:(id)accessory;
- (void)openSocketForAccessoryToApp:(id)app;
- (void)openSocketForAppToAccessory:(id)accessory;
- (void)requestAccessoryWifiCredentials:(id)credentials;
- (void)sendDeviceIdentifierNotification:(id)notification usbIdentifier:(id)identifier forUUID:(id)d;
- (void)sendGPRMCDataStatus:(BOOL)status ValueV:(BOOL)v ValueX:(BOOL)x forAccessoryUUID:(id)d;
- (void)sendNMEAFilterList:(id)list forAccessoryUUID:(id)d;
- (void)sendOutgoingExternalAccessoryData:(id)data forEASessionIdentifier:(id)identifier withReply:(id)reply;
- (void)sendWiredCarPlayAvailable:(id)available usbIdentifier:(id)identifier wirelessAvailable:(id)wirelessAvailable bluetoothIdentifier:(id)bluetoothIdentifier forUUID:(id)d;
- (void)sendWiredCarPlayAvailable:(id)available usbIdentifier:(id)identifier wirelessAvailable:(id)wirelessAvailable bluetoothIdentifier:(id)bluetoothIdentifier themeAssetsAvailable:(id)assetsAvailable forUUID:(id)d;
- (void)startDestinationSharingForUUID:(id)d options:(unint64_t)options;
- (void)startLocationInformationForAccessoryUUID:(id)d;
- (void)stopDestinationSharingForUUID:(id)d;
- (void)stopLocationInformationForAccessoryUUID:(id)d;
- (void)updateAccessoryInfo:(id)info forUUID:(id)d;
- (void)vehicleStatusUpdate:(id)update forUUID:(id)d;
@end

@implementation ACCExternalAccessoryProvider

- (void)_constructClientRegistrationInfo
{
  v12[3] = *MEMORY[0x277D85DE8];
  if ((self->_clientCapabilities & 0x200) != 0)
  {
    bundleIdentifier = [MEMORY[0x277CCACA8] stringWithCString:getprogname() encoding:4];
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle2 objectForInfoDictionaryKey:@"UISupportedExternalAccessoryProtocols"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[ACCExternalAccessoryProvider clientCapabilities](self, "clientCapabilities")}];
  v12[0] = bundleIdentifier;
  v11[0] = @"ACCExternalAccessoryClientBundleIDKey";
  v11[1] = @"ACCExternalAccessoryClientEAProtocolsKey";
  array = v6;
  if (!v6)
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v11[2] = @"ACCExternalAccessoryClientEACapablitiesKey";
  v12[1] = array;
  v12[2] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  eaClientRegistrationInfo = self->_eaClientRegistrationInfo;
  self->_eaClientRegistrationInfo = v9;

  if (!v6)
  {
  }
}

- (BOOL)hasEASandbox
{
  getpid();
  v2 = sandbox_check();
  if (v2)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 3;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v5 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221CB0000, v5, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Client not sandboxed to EA service", buf, 2u);
    }
  }

  return v2 == 0;
}

- (BOOL)hasEAEntitlement
{
  v2 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.security.exception.mach-lookup.global-name", 0);
    v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.private.externalaccessory.showallaccessories", 0);
    CFRelease(v3);
    if (-[NSObject containsObject:](v4, "containsObject:", @"com.apple.accessories.externalaccessory-server") & 1) != 0 || ([v5 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v9 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Client not entitled to EA service", v12, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 3;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v4 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v4 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ACCExternalAccessoryProvider hasEAEntitlement];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)hasEAProtocols
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle objectForInfoDictionaryKey:@"UISupportedExternalAccessoryProtocols"];

  v4 = [v3 count];
  if (!v4)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 3;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] No EA protocols found", v9, 2u);
    }
  }

  return v4 != 0;
}

- (ACCExternalAccessoryProvider)initWithDelegate:(id)delegate capabilities:(int)capabilities
{
  delegateCopy = delegate;
  init_logging();
  v20.receiver = self;
  v20.super_class = ACCExternalAccessoryProvider;
  v7 = [(ACCExternalAccessoryProvider *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    serverConnection = v8->_serverConnection;
    v8->_serverConnection = 0;

    remoteObject = v8->_remoteObject;
    v8->_remoteObject = 0;

    v11 = [MEMORY[0x277CBEB58] set];
    currentlyConnectedAccessories = v8->_currentlyConnectedAccessories;
    v8->_currentlyConnectedAccessories = v11;

    v8->_clientCapabilities = capabilities;
    [(ACCExternalAccessoryProvider *)v8 _constructClientRegistrationInfo];
    objc_initWeak(&location, v8);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __62__ACCExternalAccessoryProvider_initWithDelegate_capabilities___block_invoke;
    v17 = &unk_278486228;
    objc_copyWeak(&v18, &location);
    accessoryServer_registerAvailabilityChangedHandler("com.apple.accessories.externalaccessory-server.availability-changed", &v14);
    [(ACCExternalAccessoryProvider *)v8 connectToServer:1, v14, v15, v16, v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __62__ACCExternalAccessoryProvider_initWithDelegate_capabilities___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Server availability changed! State: %d", v10, 8u);
  }

  if (a2)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v7 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Trying to connect to server...", v10, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained connectToServer:0];
  }
}

- (void)dealloc
{
  accessoryServer_unregisterAvailabilityChangedHandler();
  serverConnection = [(ACCExternalAccessoryProvider *)self serverConnection];
  [serverConnection invalidate];

  v4.receiver = self;
  v4.super_class = ACCExternalAccessoryProvider;
  [(ACCExternalAccessoryProvider *)&v4 dealloc];
}

- (void)connectToServer:(BOOL)server
{
  serverCopy = server;
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ACCExternalAccessoryProvider *)selfCopy hasEASandbox]|| [(ACCExternalAccessoryProvider *)selfCopy hasEAEntitlement]|| [(ACCExternalAccessoryProvider *)selfCopy hasEAProtocols])
  {
    if (accessoryServer_isServerAvailable())
    {
      serverConnection = [(ACCExternalAccessoryProvider *)selfCopy serverConnection];

      if (!serverConnection)
      {
        if (gLogObjects && gNumLogObjects >= 3)
        {
          v6 = *(gLogObjects + 16);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportPlugin initWithDelegate:];
          }

          v6 = MEMORY[0x277D86220];
          v7 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = @"no";
          if (serverCopy)
          {
            v8 = @"yes";
          }

          *buf = 138412290;
          v41 = v8;
          _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Connecting to EA XPC server...onInstantiation connection = %@", buf, 0xCu);
        }

        v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.accessories.externalaccessory-server" options:4096];
        [(ACCExternalAccessoryProvider *)selfCopy setServerConnection:v9];

        v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283537560];
        serverConnection2 = [(ACCExternalAccessoryProvider *)selfCopy serverConnection];
        [serverConnection2 setRemoteObjectInterface:v10];

        v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283534420];
        serverConnection3 = [(ACCExternalAccessoryProvider *)selfCopy serverConnection];
        [serverConnection3 setExportedInterface:v12];

        serverConnection4 = [(ACCExternalAccessoryProvider *)selfCopy serverConnection];
        [serverConnection4 setExportedObject:selfCopy];

        objc_initWeak(buf, selfCopy);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __48__ACCExternalAccessoryProvider_connectToServer___block_invoke;
        v38[3] = &unk_278486298;
        objc_copyWeak(&v39, buf);
        serverConnection5 = [(ACCExternalAccessoryProvider *)selfCopy serverConnection];
        [serverConnection5 setInvalidationHandler:v38];

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_213;
        v36[3] = &unk_278486298;
        objc_copyWeak(&v37, buf);
        serverConnection6 = [(ACCExternalAccessoryProvider *)selfCopy serverConnection];
        [serverConnection6 setInterruptionHandler:v36];

        if (gLogObjects && gNumLogObjects >= 3)
        {
          v17 = *(gLogObjects + 16);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportPlugin initWithDelegate:];
          }

          v17 = MEMORY[0x277D86220];
          v18 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v35 = 0;
          _os_log_impl(&dword_221CB0000, v17, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] resuming EA XPC connection", v35, 2u);
        }

        serverConnection7 = [(ACCExternalAccessoryProvider *)selfCopy serverConnection];
        [serverConnection7 resume];

        objc_destroyWeak(&v37);
        objc_destroyWeak(&v39);
        objc_destroyWeak(buf);
      }
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v20 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      remoteObject = [(ACCExternalAccessoryProvider *)selfCopy remoteObject];
      *buf = 138412290;
      v41 = remoteObject;
      _os_log_impl(&dword_221CB0000, v20, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] self.remoteObject = %@", buf, 0xCu);
    }

    remoteObject2 = [(ACCExternalAccessoryProvider *)selfCopy remoteObject];
    if (remoteObject2)
    {
    }

    else
    {
      serverConnection8 = [(ACCExternalAccessoryProvider *)selfCopy serverConnection];
      v25 = serverConnection8 == 0;

      if (!v25)
      {
        if (gLogObjects && gNumLogObjects >= 3)
        {
          v26 = *(gLogObjects + 16);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportPlugin initWithDelegate:];
          }

          v26 = MEMORY[0x277D86220];
          v27 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_221CB0000, v26, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Getting remote object...", buf, 2u);
        }

        serverConnection9 = [(ACCExternalAccessoryProvider *)selfCopy serverConnection];
        v29 = [serverConnection9 remoteObjectProxyWithErrorHandler:&__block_literal_global_2];
        [(ACCExternalAccessoryProvider *)selfCopy setRemoteObject:v29];

        objc_initWeak(buf, selfCopy);
        serverConnection10 = [(ACCExternalAccessoryProvider *)selfCopy serverConnection];
        v31 = [serverConnection10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_218];
        eaClientRegistrationInfo = [(ACCExternalAccessoryProvider *)selfCopy eaClientRegistrationInfo];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_219;
        v33[3] = &unk_2784864B8;
        objc_copyWeak(&v34, buf);
        v33[4] = selfCopy;
        [v31 registerClientInformation:eaClientRegistrationInfo onInstantiation:serverCopy withReply:v33];

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);
      }
    }
  }

  objc_sync_exit(selfCopy);
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] EA XPC begin invalidation handler!", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained serverConnection];
  [v6 setInvalidationHandler:0];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setRemoteObject:0];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setServerConnection:0];

  accessoryServer_serverIsUnreachable();
  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 _removeAllAccessories];

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v10 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] EA XPC connection invalidated!", v12, 2u);
  }
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_213(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] EA XPC connection interrupted!", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained serverConnection];
  [v6 invalidate];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setServerConnection:0];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setRemoteObject:0];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 _removeAllAccessories];
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_214(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_214_cold_2();
  }
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_216(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_214_cold_2();
  }
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_219(uint64_t a1, int a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v36) = a2;
    _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] serverResult: %d", buf, 8u);
  }

  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v27 = [WeakRetained serverConnection];
    [v27 invalidate];
LABEL_33:

    goto LABEL_34;
  }

  v9 = [*(a1 + 32) delegate];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 32) delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      WeakRetained = objc_alloc_init(MEMORY[0x277CBEB18]);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v28 = v5;
      obj = v5;
      v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        v17 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v19 = [[_ACCExternalAccessoryInfo alloc] initWithAccessoryInfoDictionary:*(*(&v30 + 1) + 8 * i)];
            v20 = gLogObjects;
            v21 = gNumLogObjects;
            if (gLogObjects)
            {
              v22 = gNumLogObjects < 3;
            }

            else
            {
              v22 = 1;
            }

            if (v22)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v36 = v20;
                v37 = 1024;
                v38 = v21;
                _os_log_error_impl(&dword_221CB0000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v23 = v17;
              v24 = v17;
            }

            else
            {
              v24 = *(gLogObjects + 16);
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [(_ACCExternalAccessoryInfo *)v19 name];
              *buf = 138412290;
              v36 = v25;
              _os_log_impl(&dword_221CB0000, v24, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] adding accessory %@ to currentlyConnectedAccessories", buf, 0xCu);
            }

            [*(*(a1 + 32) + 48) addObject:v19];
            v26 = [(_ACCExternalAccessoryInfo *)v19 fullAccessoryInfo];
            [WeakRetained addObject:v26];
          }

          v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v15);
      }

      v27 = [*(a1 + 32) delegate];
      [v27 initialEAAccessoriesAttachedAfterClientConnection:WeakRetained];
      v5 = v28;
      goto LABEL_33;
    }
  }

LABEL_34:
}

- (void)requestAccessoryWifiCredentials:(id)credentials
{
  v12 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = credentialsCopy;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#CarPlay] requestAccessoryWiFiCredentials: %@", &v10, 0xCu);
  }

  remoteObject = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [remoteObject2 requestAccessoryWiFiCredentials:credentialsCopy];
  }
}

- (void)sendDeviceIdentifierNotification:(id)notification usbIdentifier:(id)identifier forUUID:(id)d
{
  notificationCopy = notification;
  identifierCopy = identifier;
  dCopy = d;
  remoteObject = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [remoteObject2 sendDeviceIdentifierNotification:notificationCopy usbIdentifier:identifierCopy forUUID:dCopy];
  }
}

- (void)sendWiredCarPlayAvailable:(id)available usbIdentifier:(id)identifier wirelessAvailable:(id)wirelessAvailable bluetoothIdentifier:(id)bluetoothIdentifier forUUID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  identifierCopy = identifier;
  wirelessAvailableCopy = wirelessAvailable;
  bluetoothIdentifierCopy = bluetoothIdentifier;
  dCopy = d;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 3;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138413314;
    v23 = dCopy;
    v24 = 2112;
    v25 = availableCopy;
    v26 = 2112;
    v27 = identifierCopy;
    v28 = 2112;
    v29 = wirelessAvailableCopy;
    v30 = 2112;
    v31 = bluetoothIdentifierCopy;
    _os_log_impl(&dword_221CB0000, v19, OS_LOG_TYPE_DEFAULT, "[#CarPlay] sendWiredCarPlayAvailable: %@, wiredAvailable %@, usbIdentifier %@, wirelessAvailable %@, bluetoothIdentifier %@", &v22, 0x34u);
  }

  remoteObject = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [remoteObject2 sendWiredCarPlayAvailable:availableCopy usbIdentifier:identifierCopy wirelessAvailable:wirelessAvailableCopy bluetoothIdentifier:bluetoothIdentifierCopy forUUID:dCopy];
  }
}

- (void)sendWiredCarPlayAvailable:(id)available usbIdentifier:(id)identifier wirelessAvailable:(id)wirelessAvailable bluetoothIdentifier:(id)bluetoothIdentifier themeAssetsAvailable:(id)assetsAvailable forUUID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  identifierCopy = identifier;
  wirelessAvailableCopy = wirelessAvailable;
  bluetoothIdentifierCopy = bluetoothIdentifier;
  assetsAvailableCopy = assetsAvailable;
  dCopy = d;
  if (gLogObjects)
  {
    v20 = gNumLogObjects < 3;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v22 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  else
  {
    v22 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138413570;
    v26 = dCopy;
    v27 = 2112;
    v28 = availableCopy;
    v29 = 2112;
    v30 = identifierCopy;
    v31 = 2112;
    v32 = wirelessAvailableCopy;
    v33 = 2112;
    v34 = bluetoothIdentifierCopy;
    v35 = 2112;
    v36 = assetsAvailableCopy;
    _os_log_impl(&dword_221CB0000, v22, OS_LOG_TYPE_DEFAULT, "[#CarPlay] sendWiredCarPlayAvailable: %@, wiredAvailable %@, usbIdentifier %@, wirelessAvailable %@, bluetoothIdentifier %@ assetsAvailable %@", &v25, 0x3Eu);
  }

  remoteObject = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [remoteObject2 sendWiredCarPlayAvailable:availableCopy usbIdentifier:identifierCopy wirelessAvailable:wirelessAvailableCopy bluetoothIdentifier:bluetoothIdentifierCopy themeAssetsAvailable:assetsAvailableCopy forUUID:dCopy];
  }
}

- (void)destinationInformation:(id)information forUUID:(id)d
{
  informationCopy = information;
  dCopy = d;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCExternalAccessoryProvider destinationInformation:forUUID:];
  }

  remoteObject = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [remoteObject2 destinationInformation:informationCopy forUUID:dCopy];
  }
}

- (void)startLocationInformationForAccessoryUUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  remoteObject = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (remoteObject)
  {
    if (v7)
    {
      v8 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = dCopy;
      _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "[#Location] sending activateLocationForUUID %@", &v12, 0xCu);
    }

    remoteObject2 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [remoteObject2 activateLocationForUUID:dCopy];
  }

  else
  {
    if (v7)
    {
      remoteObject2 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      remoteObject2 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(remoteObject2, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = dCopy;
      _os_log_impl(&dword_221CB0000, remoteObject2, OS_LOG_TYPE_DEFAULT, "[#Location] No remoteObject to send activateLocationForUUID %@", &v12, 0xCu);
    }
  }
}

- (void)sendNMEAFilterList:(id)list forAccessoryUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  listCopy = list;
  dCopy = d;
  remoteObject = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (remoteObject)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = listCopy;
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "[#Location] sending sendNMEAFilterList %@ for UUID: %@", &v15, 0x16u);
    }

    remoteObject2 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [remoteObject2 sendNMEAFilterList:listCopy forUUID:dCopy];
  }

  else
  {
    if (v10)
    {
      remoteObject2 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      remoteObject2 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(remoteObject2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = listCopy;
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&dword_221CB0000, remoteObject2, OS_LOG_TYPE_DEFAULT, "[#Location] No remoteObject to send sendNMEAFilterList %@ for UUID: %@", &v15, 0x16u);
    }
  }
}

- (void)sendGPRMCDataStatus:(BOOL)status ValueV:(BOOL)v ValueX:(BOOL)x forAccessoryUUID:(id)d
{
  xCopy = x;
  vCopy = v;
  statusCopy = status;
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  remoteObject = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (remoteObject)
  {
    if (v13)
    {
      v14 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109890;
      v19 = statusCopy;
      v20 = 1024;
      v21 = vCopy;
      v22 = 1024;
      v23 = xCopy;
      v24 = 2112;
      v25 = dCopy;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "[#Location] sending sendGPRMCDataStatus: %d ValueV: %d ValueX: %d forUUID: %@", &v18, 0x1Eu);
    }

    remoteObject2 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [remoteObject2 sendGPRMCDataStatus:statusCopy ValueV:vCopy ValueX:xCopy forUUID:dCopy];
  }

  else
  {
    if (v13)
    {
      remoteObject2 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      remoteObject2 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(remoteObject2, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109890;
      v19 = statusCopy;
      v20 = 1024;
      v21 = vCopy;
      v22 = 1024;
      v23 = xCopy;
      v24 = 2112;
      v25 = dCopy;
      _os_log_impl(&dword_221CB0000, remoteObject2, OS_LOG_TYPE_DEFAULT, "[#Location] No remoteObject to send sendGPRMCDataStatus: %d ValueV: %d ValueX: %d forUUID: %@", &v18, 0x1Eu);
    }
  }
}

- (void)stopLocationInformationForAccessoryUUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  remoteObject = [(ACCExternalAccessoryProvider *)self remoteObject];

  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (remoteObject)
  {
    if (v7)
    {
      v8 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = dCopy;
      _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "[#Location] sending stopLocationForUUID %@", &v12, 0xCu);
    }

    remoteObject2 = [(ACCExternalAccessoryProvider *)self remoteObject];
    [remoteObject2 stopLocationForUUID:dCopy];
  }

  else
  {
    if (v7)
    {
      remoteObject2 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      remoteObject2 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(remoteObject2, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = dCopy;
      _os_log_impl(&dword_221CB0000, remoteObject2, OS_LOG_TYPE_DEFAULT, "[#Location] No remoteObject to send stopLocationForUUID %@", &v12, 0xCu);
    }
  }
}

- (id)_findAccessoryForPrimaryUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  currentlyConnectedAccessories = [(ACCExternalAccessoryProvider *)self currentlyConnectedAccessories];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__ACCExternalAccessoryProvider__findAccessoryForPrimaryUUID___block_invoke;
  v14[3] = &unk_2784864E0;
  v6 = dCopy;
  v15 = v6;
  v7 = [currentlyConnectedAccessories objectsPassingTest:v14];

  if (v7 && [v7 count])
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v8 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ACCExternalAccessoryProvider *)v7 _findAccessoryForPrimaryUUID:?];
    }

    anyObject = [v7 anyObject];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v9 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "Can't find accessory for primaryUUID %@", buf, 0xCu);
    }

    anyObject = 0;
  }

  return anyObject;
}

uint64_t __61__ACCExternalAccessoryProvider__findAccessoryForPrimaryUUID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 primaryUUID];
  v6 = [*(a1 + 32) isEqualToString:v5];
  if (v6)
  {
    *a3 = 1;
  }

  return v6;
}

- (void)_removeAccessoryForPrimaryUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  currentlyConnectedAccessories = [(ACCExternalAccessoryProvider *)self currentlyConnectedAccessories];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__ACCExternalAccessoryProvider__removeAccessoryForPrimaryUUID___block_invoke;
  v13[3] = &unk_2784864E0;
  v6 = dCopy;
  v14 = v6;
  v7 = [currentlyConnectedAccessories objectsPassingTest:v13];

  if (v7 && [v7 count])
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v8 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ACCExternalAccessoryProvider *)v7 _findAccessoryForPrimaryUUID:?];
    }

    anyObject = [v7 anyObject];
    currentlyConnectedAccessories2 = [(ACCExternalAccessoryProvider *)self currentlyConnectedAccessories];
    [currentlyConnectedAccessories2 removeObject:anyObject];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      anyObject = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      anyObject = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_221CB0000, anyObject, OS_LOG_TYPE_DEFAULT, "Can't find primaryUUID %@ to remove", buf, 0xCu);
    }
  }
}

uint64_t __63__ACCExternalAccessoryProvider__removeAccessoryForPrimaryUUID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 primaryUUID];
  v6 = [*(a1 + 32) isEqualToString:v5];
  if (v6)
  {
    *a3 = 1;
  }

  return v6;
}

- (void)_removeAllAccessories
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  currentlyConnectedAccessories = [(ACCExternalAccessoryProvider *)self currentlyConnectedAccessories];
  v5 = [v3 setWithSet:currentlyConnectedAccessories];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        copyAccessoryInfo = [*(*(&v12 + 1) + 8 * v10) copyAccessoryInfo];
        [(ACCExternalAccessoryProvider *)self ExternalAccessoryLeft:copyAccessoryInfo];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)ExternalAccessoryArrived:(id)arrived
{
  v19 = *MEMORY[0x277D85DE8];
  arrivedCopy = arrived;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:arrivedCopy];
    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] accessoryd received EAAccessoryArrived %@, verifyAccessoryConnectionStatus", buf, 0xCu);
  }

  serverConnection = [(ACCExternalAccessoryProvider *)self serverConnection];
  v10 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_233_0];
  v11 = [arrivedCopy objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
  v12 = [arrivedCopy objectForKey:@"IAPAppConnectionIDKey"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__ACCExternalAccessoryProvider_ExternalAccessoryArrived___block_invoke_234;
  v14[3] = &unk_278486530;
  v15 = arrivedCopy;
  selfCopy = self;
  v13 = arrivedCopy;
  [v10 verifyAccessoryConnectionStatus:v11 legacyConnectionID:v12 withReply:v14];
}

void __57__ACCExternalAccessoryProvider_ExternalAccessoryArrived___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __57__ACCExternalAccessoryProvider_ExternalAccessoryArrived___block_invoke_234(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    v8 = [*(a1 + 32) objectForKey:@"IAPAppConnectionIDKey"];
    *buf = 138412802;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 1024;
    v25 = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] accessoryd with primaryUUID %@, legacyConnectionID %@ connected = %d", buf, 0x1Cu);
  }

  if (a2)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v9 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) objectForKey:@"IAPAppAccessoryNameKey"];
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "adding accessory %@ to currentlyConnectedAccessories", buf, 0xCu);
    }

    v12 = [[_ACCExternalAccessoryInfo alloc] initWithAccessoryInfoDictionary:*(a1 + 32)];
    [*(*(a1 + 40) + 48) addObject:v12];
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v13 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Dispatching async to main thread...", buf, 2u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__ACCExternalAccessoryProvider_ExternalAccessoryArrived___block_invoke_235;
    v17[3] = &unk_278486508;
    v15 = *(a1 + 40);
    v18 = v12;
    v19 = v15;
    v16 = v12;
    dispatch_async(MEMORY[0x277D85CD0], v17);
  }
}

void __57__ACCExternalAccessoryProvider_ExternalAccessoryArrived___block_invoke_235(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) fullAccessoryInfo];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] In async to main thread: accessoryd received EAAccessoryArrived: %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 40) delegate];
  v7 = [*(a1 + 32) fullAccessoryInfo];
  [v6 EAAccessoryArrived:v7];
}

- (void)ExternalAccessoryLeft:(id)left
{
  v26 = *MEMORY[0x277D85DE8];
  leftCopy = left;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [leftCopy objectForKey:@"IAPAppAccessoryNameKey"];
    v9 = [leftCopy objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] accessoryd received EAAccessoryLeft %@, UUID %@", buf, 0x16u);
  }

  delegate = [(ACCExternalAccessoryProvider *)self delegate];

  if (delegate)
  {
    v11 = [leftCopy objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    v12 = [(ACCExternalAccessoryProvider *)self _findAccessoryForPrimaryUUID:v11];

    if (v12)
    {
      copyAccessoryInfo = [v12 copyAccessoryInfo];
    }

    else
    {
      copyAccessoryInfo = 0;
    }

    v14 = [leftCopy objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    [(ACCExternalAccessoryProvider *)self _removeAccessoryForPrimaryUUID:v14];

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v15 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Dispatching async to main thread...", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ACCExternalAccessoryProvider_ExternalAccessoryLeft___block_invoke;
    block[3] = &unk_278486558;
    v19 = copyAccessoryInfo;
    selfCopy = self;
    v21 = leftCopy;
    v17 = copyAccessoryInfo;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __54__ACCExternalAccessoryProvider_ExternalAccessoryLeft___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects <= 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (*(a1 + 32))
  {
    if (v3)
    {
      v4 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v4 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:*(a1 + 32)];
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] removing accessory accInfo %@", &v16, 0xCu);
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v8 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) objectForKey:@"IAPAppAccessoryNameKey"];
      v11 = [*(a1 + 32) objectForKey:@"IAPAppConnectionIDKey"];
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] removing accessory %@ with connectionID %@", &v16, 0x16u);
    }

    v12 = [*(a1 + 40) delegate];
    [v12 EAAccessoryLeft:*(a1 + 32)];
  }

  else
  {
    if (v3)
    {
      v5 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v5 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:*(a1 + 48)];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_221CB0000, v5, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] removing accessory accessoryInfo %@", &v16, 0xCu);
    }

    v12 = [*(a1 + 40) delegate];
    v15 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:*(a1 + 48)];
    [v12 EAAccessoryLeft:v15];
  }
}

- (void)handleIncomingNotification:(id)notification withPayload:(id)payload aboutAccessory:(id)accessory
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  payloadCopy = payload;
  accessoryCopy = accessory;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 3;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [accessoryCopy objectForKey:@"IAPAppAccessoryNameKey"];
    v14 = [accessoryCopy objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    v16 = 136316162;
    v17 = "[ACCExternalAccessoryProvider handleIncomingNotification:withPayload:aboutAccessory:]";
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = notificationCopy;
    v24 = 2112;
    v25 = payloadCopy;
    _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] received %s accessory %@, UUID %@ notificationName %@ notificationPayload %@", &v16, 0x34u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:notificationCopy object:0 userInfo:payloadCopy];
}

- (void)handleIncomingExternalAccessoryData:(id)data forEASessionIdentifier:(id)identifier withReply:(id)reply
{
  dataCopy = data;
  identifierCopy = identifier;
  replyCopy = reply;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ACCExternalAccessoryProvider handleIncomingExternalAccessoryData:forEASessionIdentifier:withReply:];
  }

  delegate = [(ACCExternalAccessoryProvider *)self delegate];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__ACCExternalAccessoryProvider_handleIncomingExternalAccessoryData_forEASessionIdentifier_withReply___block_invoke;
  v17[3] = &unk_278486580;
  v18 = identifierCopy;
  v19 = replyCopy;
  v15 = replyCopy;
  v16 = identifierCopy;
  [delegate handleIncomingExternalAccessoryData:dataCopy forEASessionIdentifier:v16 withReply:v17];
}

uint64_t __101__ACCExternalAccessoryProvider_handleIncomingExternalAccessoryData_forEASessionIdentifier_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 3;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "client DID NOT handle incoming EA data for eaSessionUUID %@", &v9, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)accessoryCloseExternalAccessorySession:(id)session
{
  v12 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = sessionCopy;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "Accessory closed EA session for eaSessionUUID %@", &v10, 0xCu);
  }

  delegate = [(ACCExternalAccessoryProvider *)self delegate];

  if (delegate)
  {
    delegate2 = [(ACCExternalAccessoryProvider *)self delegate];
    [delegate2 accessoryClosedEASession:sessionCopy];
  }
}

- (void)enqueueLocationNMEASentence:(id)sentence forUUID:(id)d withTimestamps:(id)timestamps
{
  v28 = *MEMORY[0x277D85DE8];
  sentenceCopy = sentence;
  dCopy = d;
  timestampsCopy = timestamps;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v22 = 138412802;
    v23 = sentenceCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = timestampsCopy;
    _os_log_debug_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEBUG, "[#Location] enqueue Location nmea sentence: %@ for UUID %@ timestamps %@", &v22, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v16 = v15;

  v17 = [timestampsCopy mutableCopy];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  [v17 addObject:v18];

  delegate = [(ACCExternalAccessoryProvider *)self delegate];

  if (delegate)
  {
    delegate2 = [(ACCExternalAccessoryProvider *)self delegate];
    [delegate2 nmeaSentenceArrived:sentenceCopy forAccessoryUUID:dCopy withTimestamps:v17];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      delegate2 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      delegate2 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412802;
      v23 = sentenceCopy;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2112;
      v27 = timestampsCopy;
      _os_log_impl(&dword_221CB0000, delegate2, OS_LOG_TYPE_DEFAULT, "[#Location] No delegate to process nmea sentence: %@ for UUID %@, timestamps %@", &v22, 0x20u);
    }
  }
}

- (void)createExternalAccessorySessionForProtocol:(id)protocol accessoryUUID:(id)d withEASessionReply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  dCopy = d;
  replyCopy = reply;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = protocolCopy;
    _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "!!!!! createExternalAccessorySessionForProtocol for protocol %@", buf, 0xCu);
  }

  serverConnection = [(ACCExternalAccessoryProvider *)self serverConnection];
  v15 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_239_0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__ACCExternalAccessoryProvider_createExternalAccessorySessionForProtocol_accessoryUUID_withEASessionReply___block_invoke_240;
  v17[3] = &unk_2784865A8;
  v18 = replyCopy;
  v16 = replyCopy;
  [v15 createExternalAccessorySessionForProtocol:protocolCopy accessoryUUID:dCopy withReply:v17];
}

void __107__ACCExternalAccessoryProvider_createExternalAccessorySessionForProtocol_accessoryUUID_withEASessionReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __107__ACCExternalAccessoryProvider_createExternalAccessorySessionForProtocol_accessoryUUID_withEASessionReply___block_invoke_240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 3;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109890;
    v14[1] = a2;
    v15 = 1024;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "createdExternalAccessorySession result %d, useSocketInterface = %d, sessionID %llu, eaSessionUUID %@", v14, 0x22u);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, a3, a4, v9);
  }
}

- (void)openSocketForAccessoryToApp:(id)app
{
  appCopy = app;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "!!!!! EA provider app is openSocketForAccessoryToApp...", v10, 2u);
  }

  serverConnection = [(ACCExternalAccessoryProvider *)self serverConnection];
  v9 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_243];
  [v9 openSocketFromAccessoryToApp:appCopy];
}

void __60__ACCExternalAccessoryProvider_openSocketForAccessoryToApp___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)openSocketForAppToAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "!!!!! EA provider app is openSocketForAppToAccessory...", v10, 2u);
  }

  serverConnection = [(ACCExternalAccessoryProvider *)self serverConnection];
  v9 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_245];
  [v9 openSocketFromAppToAccessory:accessoryCopy];
}

void __60__ACCExternalAccessoryProvider_openSocketForAppToAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)closeExternalAccessorySession:(id)session
{
  sessionCopy = session;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "!!!!! EA provider app is closeExternalAccessorySession...", v10, 2u);
  }

  serverConnection = [(ACCExternalAccessoryProvider *)self serverConnection];
  v9 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_247];
  [v9 clientCloseExternalAccessorySession:sessionCopy];
}

void __62__ACCExternalAccessoryProvider_closeExternalAccessorySession___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)sendOutgoingExternalAccessoryData:(id)data forEASessionIdentifier:(id)identifier withReply:(id)reply
{
  dataCopy = data;
  identifierCopy = identifier;
  replyCopy = reply;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "sendOutgoingExternalAccessoryData...", buf, 2u);
  }

  serverConnection = [(ACCExternalAccessoryProvider *)self serverConnection];
  v15 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_249];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__ACCExternalAccessoryProvider_sendOutgoingExternalAccessoryData_forEASessionIdentifier_withReply___block_invoke_250;
  v18[3] = &unk_278486580;
  v19 = identifierCopy;
  v20 = replyCopy;
  v16 = replyCopy;
  v17 = identifierCopy;
  [v15 processOutgoingExternalAccessoryData:dataCopy forEASessionIdentifier:v17 withReply:v18];
}

void __99__ACCExternalAccessoryProvider_sendOutgoingExternalAccessoryData_forEASessionIdentifier_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

uint64_t __99__ACCExternalAccessoryProvider_sendOutgoingExternalAccessoryData_forEASessionIdentifier_withReply___block_invoke_250(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 3;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "error sending outgoing EA data for eaSessionUUID %@", &v9, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)startDestinationSharingForUUID:(id)d options:(unint64_t)options
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = dCopy;
    v26 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "from accessoryd: received startDestinationSharingForUUID, UUID %@, options %llxh", &v24, 0x16u);
  }

  v10 = [(ACCExternalAccessoryProvider *)self _findAccessoryForPrimaryUUID:dCopy];
  destinationSharingOptions = [v10 destinationSharingOptions];
  [v10 setDestinationSharingOptions:options];
  delegate = [(ACCExternalAccessoryProvider *)self delegate];

  if (delegate)
  {
    if (destinationSharingOptions != options)
    {
      delegate2 = [(ACCExternalAccessoryProvider *)self delegate];
      if (delegate2)
      {
        v14 = delegate2;
        delegate3 = [(ACCExternalAccessoryProvider *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          delegate4 = [(ACCExternalAccessoryProvider *)self delegate];
          copyAccessoryInfo = [v10 copyAccessoryInfo];
          [delegate4 updateAccessoryInfo:copyAccessoryInfo];
        }
      }
    }

    delegate5 = [(ACCExternalAccessoryProvider *)self delegate];
    v20 = objc_opt_respondsToSelector();

    delegate6 = [(ACCExternalAccessoryProvider *)self delegate];
    delegate7 = delegate6;
    if (v20)
    {
      [delegate6 startDestinationSharingForUUID:dCopy options:options];
LABEL_20:

      goto LABEL_21;
    }

    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      delegate7 = [(ACCExternalAccessoryProvider *)self delegate];
      [delegate7 startDestinationSharingForUUID:dCopy];
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)stopDestinationSharingForUUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = dCopy;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "from accessoryd: received stopDestinationSharingForUUID, UUID %@", &v13, 0xCu);
  }

  delegate = [(ACCExternalAccessoryProvider *)self delegate];
  if (delegate)
  {
    v9 = delegate;
    delegate2 = [(ACCExternalAccessoryProvider *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate3 = [(ACCExternalAccessoryProvider *)self delegate];
      [delegate3 stopDestinationSharingForUUID:dCopy];
    }
  }
}

- (void)destinationSharingStatus:(BOOL)status forDestinationUUID:(id)d supportedParams:(id)params forUUID:(id)iD
{
  statusCopy = status;
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  paramsCopy = params;
  iDCopy = iD;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 3;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"no";
    if (statusCopy)
    {
      v16 = @"yes";
    }

    v24 = 138412546;
    v25 = v16;
    v26 = 2112;
    v27 = iDCopy;
    _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_DEFAULT, "from accessoryd: received destinationSharingStatus %@ for UUID %@", &v24, 0x16u);
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v17 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ACCExternalAccessoryProvider destinationSharingStatus:forDestinationUUID:supportedParams:forUUID:];
  }

  delegate = [(ACCExternalAccessoryProvider *)self delegate];
  if (delegate)
  {
    v20 = delegate;
    delegate2 = [(ACCExternalAccessoryProvider *)self delegate];
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      delegate3 = [(ACCExternalAccessoryProvider *)self delegate];
      [delegate3 destinationSharingStatus:statusCopy forDestinationUUID:dCopy supportedParams:paramsCopy forUUID:iDCopy];
    }
  }
}

- (id)currentVehicleInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = infoCopy;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] a process is asking for currentVehicleInfo for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  serverConnection = [(ACCExternalAccessoryProvider *)self serverConnection];
  v9 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_258_0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__ACCExternalAccessoryProvider_currentVehicleInfo___block_invoke_259;
  v13[3] = &unk_2784865D0;
  v10 = infoCopy;
  v14 = v10;
  p_buf = &buf;
  [v9 vehicleInformationForUUID:v10 withReply:v13];

  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v11;
}

void __51__ACCExternalAccessoryProvider_currentVehicleInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __51__ACCExternalAccessoryProvider_currentVehicleInfo___block_invoke_cold_2();
  }
}

void __51__ACCExternalAccessoryProvider_currentVehicleInfo___block_invoke_259(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] currentVehicleInfo for %@ currentVehicleInfoDictionary %@", &v10, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;
}

- (void)vehicleStatusUpdate:(id)update forUUID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dCopy = d;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = updateCopy;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] from accessoryd: received vehicleStatusUpdate %@ for UUID %@", &v18, 0x16u);
  }

  delegate = [(ACCExternalAccessoryProvider *)self delegate];
  if (delegate && (v12 = delegate, [(ACCExternalAccessoryProvider *)self delegate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_respondsToSelector(), v13, v12, (v14 & 1) != 0))
  {
    delegate2 = [(ACCExternalAccessoryProvider *)self delegate];
    [delegate2 vehicleStatusUpdate:updateCopy forAccessoryUUID:dCopy];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      delegate2 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      delegate2 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_DEFAULT))
    {
      delegate3 = [(ACCExternalAccessoryProvider *)self delegate];
      v18 = 138412802;
      v19 = updateCopy;
      v20 = 2112;
      v21 = dCopy;
      v22 = 2112;
      v23 = delegate3;
      _os_log_impl(&dword_221CB0000, delegate2, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] from accessoryd: received vehicleStatusUpdate %@ for UUID %@, but no delegate(%@) or not able to respond to message", &v18, 0x20u);
    }
  }
}

- (void)updateAccessoryInfo:(id)info forUUID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [infoCopy objectForKey:@"IAPAppConnectionIDKey"];
    v12 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:infoCopy];
    *buf = 138412802;
    v30 = dCopy;
    v31 = 2112;
    v32 = v11;
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "from accessoryd: received updateAccessoryInfo for UUID %@ (connection ID: %@), %@", buf, 0x20u);
  }

  v13 = [(ACCExternalAccessoryProvider *)self _findAccessoryForPrimaryUUID:dCopy];
  [v13 updateAccessoryInfo:infoCopy];
  fullAccessoryInfo = [v13 fullAccessoryInfo];
  delegate = [(ACCExternalAccessoryProvider *)self delegate];
  if (delegate && (v16 = delegate, [(ACCExternalAccessoryProvider *)self delegate], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_opt_respondsToSelector(), v17, v16, (v18 & 1) != 0))
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__ACCExternalAccessoryProvider_updateAccessoryInfo_forUUID___block_invoke;
    v24[3] = &unk_2784865F8;
    v25 = dCopy;
    v26 = infoCopy;
    v27 = fullAccessoryInfo;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], v24);

    v19 = v25;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v19 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v19 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [infoCopy objectForKey:@"IAPAppConnectionIDKey"];
      delegate2 = [(ACCExternalAccessoryProvider *)self delegate];
      v23 = [ACCExternalAccessoryProvider accessoryDictionaryForLogging:infoCopy];
      *buf = 138413058;
      v30 = dCopy;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = delegate2;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&dword_221CB0000, v19, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] from accessoryd: received updateAccessoryInfo for UUID %@ (connection ID: %@), but no delegate(%@) or not able to respond to message, %@", buf, 0x2Au);
    }
  }
}

void __60__ACCExternalAccessoryProvider_updateAccessoryInfo_forUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) objectForKey:@"IAPAppConnectionIDKey"];
    v7 = *(a1 + 48);
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] In async to main thread: accessoryd received updateAccessoryInfo for UUID %@ (connection ID: %@), %@", &v9, 0x20u);
  }

  v8 = [*(a1 + 56) delegate];
  [v8 updateAccessoryInfo:*(a1 + 48)];
}

+ (id)accessoryDictionaryForLogging:(id)logging
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:logging];
  v4 = [v3 objectForKey:@"IAPAppAccessoryCertDataKey"];

  if (v4)
  {
    v5 = [v3 objectForKey:@"IAPAppAccessoryCertDataKey"];
    v6 = [v5 length];

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu bytes", v6];
    [v3 setObject:v7 forKey:@"IAPAppAccessoryCertDataKey"];
  }

  v8 = [v3 objectForKey:@"IAPAppAccessoryCertSerialNumberKey"];

  if (v8)
  {
    v9 = [v3 objectForKey:@"IAPAppAccessoryCertSerialNumberKey"];
    v10 = [v9 length];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu bytes", v10];
    [v3 setObject:v11 forKey:@"IAPAppAccessoryCertSerialNumberKey"];
  }

  return v3;
}

- (ACCExternalAccessoryProviderProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __48__ACCExternalAccessoryProvider_connectToServer___block_invoke_214_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_findAccessoryForPrimaryUUID:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 currentlyConnectedAccessories];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6(&dword_221CB0000, v3, v4, "eaAccessoryToRemove %@, currentlyConnectedAccessories %@", v5, v6, v7, v8);
}

- (void)handleIncomingExternalAccessoryData:forEASessionIdentifier:withReply:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_221CB0000, v0, OS_LOG_TYPE_DEBUG, "Got EA data for eaSessionUUID %@", v1, 0xCu);
}

void __51__ACCExternalAccessoryProvider_currentVehicleInfo___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end