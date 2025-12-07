@interface ACCConnectionInfo
+ (id)sharedInstance;
- (ACCConnectionInfo)init;
- (ACCConnectionInfoConfigStreamDelegateProtocol)configStreamDelegate;
- (ACCConnectionInfoPrivateDelegateProtocol)delegate;
- (ACCConnectionInfoPrivateDelegateProtocol)delegateForIdentifier;
- (BOOL)accessoryConnectionFiltered:(id)filtered withFilter:(id)filter;
- (BOOL)accessoryEndpointFiltered:(id)filtered withFilter:(id)filter forConnection:(id)connection;
- (BOOL)configStreamCategoriesRequest:(id)request connection:(id)connection withReply:(id)reply;
- (BOOL)configStreamPropertyRequest:(unsigned __int8)request forCategory:(unsigned __int16)category forEndpoint:(id)endpoint connection:(id)connection withReply:(id)reply;
- (BOOL)registerDelegate:(id)delegate;
- (BOOL)registerDelegate:(id)delegate withFilter:(id)filter;
- (BOOL)registerDelegate:(id)delegate withIdentifier:(id)identifier;
- (id)accessoryInfoForConnectionSync:(id)sync;
- (id)accessoryInfoForEndpointSync:(id)sync connection:(id)connection;
- (id)accessoryPropertySync:(id)sync forConnection:(id)connection;
- (id)accessoryPropertySync:(id)sync forEndpoint:(id)endpoint connection:(id)connection;
- (id)copyLocalizedAccessoryNameFromDaemon:(id)daemon;
- (int)accessoryConnectionType:(id)type;
- (int)accessoryEndpointProtocolType:(id)type connection:(id)connection;
- (int)accessoryEndpointTransportType:(id)type connection:(id)connection;
- (int)getInterceptCountForEndpoint:(id)endpoint connection:(id)connection;
- (void)accessoryConnectionAttached:(id)attached type:(int)type info:(id)info properties:(id)properties;
- (void)accessoryConnectionDetached:(id)detached;
- (void)accessoryConnectionInfoPropertyChanged:(id)changed properties:(id)properties;
- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection;
- (void)accessoryEndpointInfoPropertyChanged:(id)changed properties:(id)properties forConnection:(id)connection;
- (void)accessoryEndpointUpdate:(id)update protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
- (void)accessoryEndpointsForConnection:(id)connection withReply:(id)reply;
- (void)accessoryInfoForConnection:(id)connection withReply:(id)reply;
- (void)accessoryInfoForEndpoint:(id)endpoint connection:(id)connection withReply:(id)reply;
- (void)accessoryProperty:(id)property forConnection:(id)connection withReply:(id)reply;
- (void)accessoryProperty:(id)property forEndpoint:(id)endpoint connection:(id)connection withReply:(id)reply;
- (void)beginUserKeyErase:(id)erase withReply:(id)reply;
- (void)beginVendorKeyErase:(id)erase withReply:(id)reply;
- (void)cancelUserKeyErase:(id)erase withReply:(id)reply;
- (void)cancelVendorKeyErase:(id)erase withReply:(id)reply;
- (void)configStreamCategoriesResponse:(id)response forEndpoint:(id)endpoint connection:(id)connection success:(BOOL)success;
- (void)configStreamCategoryListReady:(id)ready connection:(id)connection;
- (void)configStreamPropertyResponse:(unsigned __int8)response forCategory:(unsigned __int16)category forEndpoint:(id)endpoint connection:(id)connection value:(id)value success:(BOOL)success;
- (void)configStreamPropertySetValue:(id)value forProperty:(unsigned __int8)property forCategory:(unsigned __int16)category forEndpoint:(id)endpoint connection:(id)connection;
- (void)connectToServer;
- (void)continueUserKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint withReply:(id)reply;
- (void)continueVendorKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint withReply:(id)reply;
- (void)copyUserPrivateKey:(id)key withReply:(id)reply;
- (void)dealloc;
- (void)getAccessoryUserName:(id)name withReply:(id)reply;
- (void)getPairingStatus:(id)status withReply:(id)reply;
- (void)getPrivateNVMKeyValues:(id)values forEndpoint:(id)endpoint withReply:(id)reply;
- (void)getPublicNVMKeyValues:(id)values forEndpoint:(id)endpoint withReply:(id)reply;
- (void)handleInterceptData:(id)data forEndpoint:(id)endpoint connection:(id)connection;
- (void)interceptIncomingNTimes:(int)times forEndpoint:(id)endpoint connection:(id)connection;
- (void)notifyDelegateOfServerDisconnectAndCleanup;
- (void)provisionAccessoryForFindMy:(id)my withReply:(id)reply;
- (void)resetPairingInformation:(id)information withReply:(id)reply;
- (void)sendData:(id)data forEndpoint:(id)endpoint connection:(id)connection;
- (void)setAccessoryUserName:(id)name forEndpoint:(id)endpoint withReply:(id)reply;
- (void)setPrivateNVMKeyValues:(id)values forEndpoint:(id)endpoint withReply:(id)reply;
- (void)setPublicNVMKeyValues:(id)values forEndpoint:(id)endpoint withReply:(id)reply;
@end

@implementation ACCConnectionInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ACCConnectionInfo sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __35__ACCConnectionInfo_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(ACCConnectionInfo);

  return MEMORY[0x2821F96F8]();
}

- (ACCConnectionInfo)init
{
  v26 = *MEMORY[0x277D85DE8];
  init_logging();
  v23.receiver = self;
  v23.super_class = ACCConnectionInfo;
  v3 = [(ACCConnectionInfo *)&v23 init];
  if (v3)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    providerUID = v3->_providerUID;
    v3->_providerUID = uUIDString;

    objc_storeWeak(&v3->_delegate, 0);
    objc_storeWeak(&v3->_delegateForIdentifier, 0);
    objc_storeWeak(&v3->_configStreamDelegate, 0);
    accessoryFilterDictionary = v3->_accessoryFilterDictionary;
    v3->_accessoryFilterDictionary = 0;

    identifier = v3->_identifier;
    v3->_identifier = 0;

    v9 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    listLock = v3->_listLock;
    v3->_listLock = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    serverConnectionLock = v3->_serverConnectionLock;
    v3->_serverConnectionLock = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connectionList = v3->_connectionList;
    v3->_connectionList = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    endpointList = v3->_endpointList;
    v3->_endpointList = v15;

    if (gLogObjects && gNumLogObjects >= 8)
    {
      v17 = *(gLogObjects + 56);
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
      v19 = v3->_providerUID;
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&dword_221CB0000, v17, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo init, _providerUID=%@", buf, 0xCu);
    }

    objc_initWeak(buf, v3);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __25__ACCConnectionInfo_init__block_invoke;
    v21[3] = &unk_278486228;
    objc_copyWeak(&v22, buf);
    accessoryServer_registerAvailabilityChangedHandlerForServiceEntry("com.apple.accessories.connection-info-server.availability-changed", v21, 1);
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __25__ACCConnectionInfo_init__block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
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
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109120;
    v19[1] = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "Server availability changed! State: %d", v19, 8u);
  }

  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained serverConnectionLock];
    [v8 lock];

    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 delegate];

    if (gLogObjects)
    {
      v11 = gNumLogObjects <= 7;
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
        v13 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v13 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19[0]) = 0;
        _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "Trying to connect to server...", v19, 2u);
      }

      v14 = objc_loadWeakRetained((a1 + 32));
      [v14 connectToServer];
    }

    else
    {
      if (v12)
      {
        v14 = *(gLogObjects + 56);
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
        LOWORD(v19[0]) = 0;
        _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "No delegate, will not connect to server...", v19, 2u);
      }
    }

    v17 = objc_loadWeakRetained((a1 + 32));
    v18 = [v17 serverConnectionLock];
    [v18 unlock];
  }
}

- (void)dealloc
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221CB0000, v5, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo dealloc", buf, 2u);
  }

  accessoryServer_unregisterAvailabilityChangedHandlerForServiceEntry(1);
  serverConnection = [(ACCConnectionInfo *)self serverConnection];
  [serverConnection invalidate];

  connectionList = self->_connectionList;
  self->_connectionList = 0;

  endpointList = self->_endpointList;
  self->_endpointList = 0;

  objc_storeWeak(&self->_delegateForIdentifier, 0);
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_configStreamDelegate, 0);
  listLock = self->_listLock;
  self->_listLock = 0;

  accessoryFilterDictionary = self->_accessoryFilterDictionary;
  self->_accessoryFilterDictionary = 0;

  v11.receiver = self;
  v11.super_class = ACCConnectionInfo;
  [(ACCConnectionInfo *)&v11 dealloc];
}

- (id)copyLocalizedAccessoryNameFromDaemon:(id)daemon
{
  v30 = *MEMORY[0x277D85DE8];
  daemonCopy = daemon;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  [(ACCConnectionInfo *)self connectToServer];
  serverConnection = [(ACCConnectionInfo *)self serverConnection];
  if (!serverConnection || ([(ACCConnectionInfo *)self remoteObject], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, serverConnection, v7))
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v10 = *(gLogObjects + 56);
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACCConnectionInfo copyLocalizedAccessoryNameFromDaemon:];
    }
  }

  else
  {
    serverConnection2 = [(ACCConnectionInfo *)self serverConnection];
    v9 = [serverConnection2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_20];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_21;
    v17[3] = &unk_278486270;
    v18 = daemonCopy;
    v19 = &v20;
    [v9 copyLocalizedAccessoryName:v18 withReply:v17];

    v10 = v18;
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v12 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v21[5];
    *buf = 138412546;
    v27 = daemonCopy;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "from daemon, localize: name: %@ -> %@", buf, 0x16u);
  }

  v15 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v15;
}

void __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_21(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
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
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "copyLocalizedAccessoryName got response: %@ -> %@", &v10, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;
}

- (BOOL)registerDelegate:(id)delegate
{
  v27 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 8;
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
    v7 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23 = 138412546;
    v24 = WeakRetained;
    v25 = 2112;
    v26 = delegateCopy;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo registerDelegate %@ -> %@", &v23, 0x16u);
  }

  [(NSLock *)self->_serverConnectionLock lock];
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (objc_opt_respondsToSelector())
  {
    objc_storeWeak(&self->_configStreamDelegate, delegateCopy);
  }

  v9 = objc_loadWeakRetained(&self->_delegate);

  if (v9)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v10 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v10 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "Delegate set, trying to connect to server...", &v23, 2u);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    if (serverConnection && (v15 = serverConnection, [(ACCConnectionInfo *)self remoteObject], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      serverConnection2 = [(ACCConnectionInfo *)self serverConnection];
      v20 = [serverConnection2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_27];
      [v20 notifyOfClient:self->_providerUID bundleID:bundleIdentifier withFilter:self->_accessoryFilterDictionary];
    }

    else
    {
      [(ACCConnectionInfo *)self connectToServer];
    }
  }

  else
  {
    serverConnection3 = [(ACCConnectionInfo *)self serverConnection];

    if (serverConnection3)
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v12 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v12 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "Delegate unset...", &v23, 2u);
      }
    }
  }

  [(NSLock *)self->_serverConnectionLock unlock];

  return 1;
}

void __38__ACCConnectionInfo_registerDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (BOOL)registerDelegate:(id)delegate withIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  identifierCopy = identifier;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
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
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegateForIdentifier);
    v26 = 138412802;
    v27 = WeakRetained;
    v28 = 2112;
    v29 = delegateCopy;
    v30 = 2112;
    v31 = identifierCopy;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo registerDelegate %@ -> %@ withIdentifier %@", &v26, 0x20u);
  }

  if (identifierCopy)
  {
    [(NSLock *)self->_serverConnectionLock lock];
    objc_storeWeak(&self->_delegateForIdentifier, delegateCopy);
    objc_storeStrong(&self->_identifier, identifier);
    v12 = objc_loadWeakRetained(&self->_delegateForIdentifier);

    if (v12)
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v13 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v13 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "Delegate set, trying to connect to server...", &v26, 2u);
      }

      serverConnection = [(ACCConnectionInfo *)self serverConnection];
      if (serverConnection && (v18 = serverConnection, [(ACCConnectionInfo *)self remoteObject], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];

        serverConnection2 = [(ACCConnectionInfo *)self serverConnection];
        v23 = [serverConnection2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_29];
        [v23 notifyOfClient:self->_providerUID bundleID:bundleIdentifier withFilter:0 forIdentifier:identifierCopy];
      }

      else
      {
        [(ACCConnectionInfo *)self connectToServer];
      }
    }

    else
    {
      serverConnection3 = [(ACCConnectionInfo *)self serverConnection];

      if (serverConnection3)
      {
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v15 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportPlugin initWithDelegate:];
          }

          v15 = MEMORY[0x277D86220];
          v24 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_DEFAULT, "Delegate unset...", &v26, 2u);
        }
      }
    }

    [(NSLock *)self->_serverConnectionLock unlock];
  }

  return identifierCopy != 0;
}

void __53__ACCConnectionInfo_registerDelegate_withIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (BOOL)registerDelegate:(id)delegate withFilter:(id)filter
{
  v35 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  filterCopy = filter;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
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
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    accessoryFilterDictionary = self->_accessoryFilterDictionary;
    v27 = 138413058;
    v28 = WeakRetained;
    v29 = 2112;
    v30 = delegateCopy;
    v31 = 2112;
    v32 = accessoryFilterDictionary;
    v33 = 2112;
    v34 = filterCopy;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo registerDelegate %@ -> %@, withFilter %@ -> %@", &v27, 0x2Au);
  }

  [(NSLock *)self->_serverConnectionLock lock];
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (objc_opt_respondsToSelector())
  {
    objc_storeWeak(&self->_configStreamDelegate, delegateCopy);
  }

  objc_storeStrong(&self->_accessoryFilterDictionary, filter);
  v13 = objc_loadWeakRetained(&self->_delegate);

  if (v13)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "Delegate and Filter set, trying to connect to server...", &v27, 2u);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    if (serverConnection && (v19 = serverConnection, [(ACCConnectionInfo *)self remoteObject], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      serverConnection2 = [(ACCConnectionInfo *)self serverConnection];
      v24 = [serverConnection2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_31];
      [v24 notifyOfClient:self->_providerUID bundleID:bundleIdentifier withFilter:self->_accessoryFilterDictionary];
    }

    else
    {
      [(ACCConnectionInfo *)self connectToServer];
    }
  }

  else
  {
    serverConnection3 = [(ACCConnectionInfo *)self serverConnection];

    if (serverConnection3)
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v16 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v16 = MEMORY[0x277D86220];
        v25 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_221CB0000, v16, OS_LOG_TYPE_DEFAULT, "Delegate unset...", &v27, 2u);
      }
    }
  }

  [(NSLock *)self->_serverConnectionLock unlock];

  return 1;
}

void __49__ACCConnectionInfo_registerDelegate_withFilter___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)notifyDelegateOfServerDisconnectAndCleanup
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((self + 24));
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_221CB0000, a3, OS_LOG_TYPE_DEBUG, "notifyDelegateOfServerDisconnectAndCleanup _delegate=%@ tmpConnectionList=%@", v6, 0x16u);
}

- (void)connectToServer
{
  v51 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (accessoryServer_isServerAvailableForServiceEntry(1u))
  {
    serverConnection = [(ACCConnectionInfo *)selfCopy serverConnection];

    if (!serverConnection)
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v4 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v4 = MEMORY[0x277D86220];
        v5 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "Connecting to ConnectionInfo XPC server...", buf, 2u);
      }

      v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.accessories.connection-info-server" options:4096];
      [(ACCConnectionInfo *)selfCopy setServerConnection:v6];

      v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835374A0];
      serverConnection2 = [(ACCConnectionInfo *)selfCopy serverConnection];
      [serverConnection2 setRemoteObjectInterface:v7];

      v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283537500];
      serverConnection3 = [(ACCConnectionInfo *)selfCopy serverConnection];
      [serverConnection3 setExportedInterface:v9];

      serverConnection4 = [(ACCConnectionInfo *)selfCopy serverConnection];
      [serverConnection4 setExportedObject:selfCopy];

      objc_initWeak(buf, selfCopy);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __36__ACCConnectionInfo_connectToServer__block_invoke;
      v47[3] = &unk_278486298;
      objc_copyWeak(&v48, buf);
      serverConnection5 = [(ACCConnectionInfo *)selfCopy serverConnection];
      [serverConnection5 setInvalidationHandler:v47];

      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __36__ACCConnectionInfo_connectToServer__block_invoke_173;
      v45[3] = &unk_278486298;
      objc_copyWeak(&v46, buf);
      serverConnection6 = [(ACCConnectionInfo *)selfCopy serverConnection];
      [serverConnection6 setInterruptionHandler:v45];

      if (gLogObjects && gNumLogObjects >= 8)
      {
        v14 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v14 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "resuming ConnectionInfo XPC connection", v44, 2u);
      }

      serverConnection7 = [(ACCConnectionInfo *)selfCopy serverConnection];
      [serverConnection7 resume];

      objc_destroyWeak(&v46);
      objc_destroyWeak(&v48);
      objc_destroyWeak(buf);
    }
  }

  if (gLogObjects)
  {
    v17 = gNumLogObjects < 8;
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
    v19 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    remoteObject = [(ACCConnectionInfo *)selfCopy remoteObject];
    *buf = 138412290;
    v50 = remoteObject;
    _os_log_impl(&dword_221CB0000, v19, OS_LOG_TYPE_DEFAULT, "self.remoteObject = %@", buf, 0xCu);
  }

  remoteObject2 = [(ACCConnectionInfo *)selfCopy remoteObject];
  v22 = remoteObject2 == 0;

  if (v22)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v23 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221CB0000, v23, OS_LOG_TYPE_DEFAULT, "Getting remote object...", buf, 2u);
    }

    serverConnection8 = [(ACCConnectionInfo *)selfCopy serverConnection];
    v26 = [serverConnection8 remoteObjectProxyWithErrorHandler:&__block_literal_global_176];
    [(ACCConnectionInfo *)selfCopy setRemoteObject:v26];

    if (gLogObjects && gNumLogObjects >= 8)
    {
      v27 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v27 = MEMORY[0x277D86220];
      v28 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221CB0000, v27, OS_LOG_TYPE_DEFAULT, "Registering with remote service...", buf, 2u);
    }

    serverConnection9 = [(ACCConnectionInfo *)selfCopy serverConnection];
    if (!serverConnection9 || ([(ACCConnectionInfo *)selfCopy remoteObject], v30 = objc_claimAutoreleasedReturnValue(), v31 = v30 == 0, v30, serverConnection9, v31))
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        bundleIdentifier = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        bundleIdentifier = MEMORY[0x277D86220];
        v42 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221CB0000, bundleIdentifier, OS_LOG_TYPE_DEFAULT, "Skip registering with remote service... No serverConnection or remoteObject!", buf, 2u);
      }
    }

    else
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      if (WeakRetained)
      {
        serverConnection10 = [(ACCConnectionInfo *)selfCopy serverConnection];
        v36 = [serverConnection10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_179];
        [v36 notifyOfClient:selfCopy->_providerUID bundleID:bundleIdentifier withFilter:selfCopy->_accessoryFilterDictionary];
      }

      v37 = objc_loadWeakRetained(&selfCopy->_delegateForIdentifier);
      if (v37)
      {
        v38 = selfCopy->_identifier == 0;

        if (!v38)
        {
          serverConnection11 = [(ACCConnectionInfo *)selfCopy serverConnection];
          v40 = [serverConnection11 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_182];
          [v40 notifyOfClient:selfCopy->_providerUID bundleID:bundleIdentifier withFilter:0 forIdentifier:selfCopy->_identifier];
        }
      }

      if (gLogObjects && gNumLogObjects >= 8)
      {
        v41 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v41 = MEMORY[0x277D86220];
        v43 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221CB0000, v41, OS_LOG_TYPE_DEFAULT, "Registering with remote service... done!", buf, 2u);
      }
    }
  }

  objc_sync_exit(selfCopy);
}

void __36__ACCConnectionInfo_connectToServer__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
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
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "ConnectionInfo XPC begin invalidation handler!", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained serverConnection];
  [v6 setInvalidationHandler:0];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setRemoteObject:0];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setServerConnection:0];

  accessoryServer_serverIsUnreachableForServiceEntry(1);
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v9 = *(gLogObjects + 56);
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
    _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "ConnectionInfo XPC connection invalidated!", v12, 2u);
  }

  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 notifyDelegateOfServerDisconnectAndCleanup];
}

void __36__ACCConnectionInfo_connectToServer__block_invoke_173(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
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
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "ConnectionInfo XPC connection interrupted!", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained serverConnection];
  [v6 invalidate];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setServerConnection:0];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setRemoteObject:0];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 notifyDelegateOfServerDisconnectAndCleanup];
}

void __36__ACCConnectionInfo_connectToServer__block_invoke_174(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __36__ACCConnectionInfo_connectToServer__block_invoke_177(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __36__ACCConnectionInfo_connectToServer__block_invoke_180(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (BOOL)accessoryConnectionFiltered:(id)filtered withFilter:(id)filter
{
  v6 = ACCConnectionInfoFilterAllowConnectionType;
  filteredCopy = filtered;
  v8 = [filter objectForKey:v6];
  unsignedIntValue = [v8 unsignedIntValue];
  v10 = [(ACCConnectionInfo *)self accessoryConnectionType:filteredCopy];

  v11 = v8 && ((unsignedIntValue >> v10) & 1) == 0;
  return v11;
}

- (BOOL)accessoryEndpointFiltered:(id)filtered withFilter:(id)filter forConnection:(id)connection
{
  filteredCopy = filtered;
  connectionCopy = connection;
  v10 = ACCConnectionInfoFilterAllowEndpointTransport;
  filterCopy = filter;
  v12 = [filterCopy objectForKey:v10];
  v13 = [filterCopy objectForKey:ACCConnectionInfoFilterAllowEndpointProtocol];

  if (v12 | v13)
  {
    unsignedIntValue = [v12 unsignedIntValue];
    unsignedIntValue2 = [v13 unsignedIntValue];
    v16 = [(ACCConnectionInfo *)self accessoryEndpointTransportType:filteredCopy connection:connectionCopy];
    v17 = [(ACCConnectionInfo *)self accessoryEndpointProtocolType:filteredCopy connection:connectionCopy];
    v19 = v12 && ((unsignedIntValue >> v16) & 1) == 0 || ((1 << v17) & unsignedIntValue2) == 0 && v13 != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)accessoryConnectionAttached:(id)attached type:(int)type info:(id)info properties:(id)properties
{
  v8 = *&type;
  attachedCopy = attached;
  infoCopy = info;
  propertiesCopy = properties;
  [(NSLock *)self->_listLock lock];
  v10 = [(NSMutableDictionary *)self->_connectionList objectForKey:attachedCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_connectionList setObject:v10 forKey:attachedCopy];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  [v10 setObject:v11 forKey:@"connectionType"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v13 = WeakRetained, [v10 objectForKey:@"Legacy"], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
  {
    [v10 setObject:MEMORY[0x277CBEC38] forKey:@"Legacy"];
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_loadWeakRetained(&self->_delegateForIdentifier);
  v27 = v10;
  if (v16 && (v17 = v16, [v10 objectForKey:{self->_identifier, v10}], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18))
  {
    [v10 setObject:MEMORY[0x277CBEC38] forKey:self->_identifier];
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  [(NSLock *)self->_listLock unlock];
  v20 = 1;
  do
  {
    v21 = v20;
    if (v20)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      accessoryFilterDictionary = self->_accessoryFilterDictionary;
      v24 = v15;
    }

    else
    {
      v22 = objc_loadWeakRetained(&self->_delegateForIdentifier);
      accessoryFilterDictionary = 0;
      v24 = v19;
    }

    v25 = accessoryFilterDictionary;
    if (v22)
    {
      v26 = [(ACCConnectionInfo *)self accessoryConnectionFiltered:attachedCopy withFilter:v25];
      if (v24)
      {
        if (!v26)
        {
          if (objc_opt_respondsToSelector())
          {
            [v22 accessoryConnectionAttached:attachedCopy type:v8];
          }

          if (objc_opt_respondsToSelector())
          {
            [v22 accessoryConnectionAttached:attachedCopy type:v8 info:infoCopy properties:propertiesCopy];
          }
        }
      }
    }

    v20 = 0;
  }

  while ((v21 & 1) != 0);
}

- (void)accessoryConnectionDetached:(id)detached
{
  v33 = *MEMORY[0x277D85DE8];
  detachedCopy = detached;
  if (self->_accessoryFilterDictionary)
  {
    v5 = [(ACCConnectionInfo *)self accessoryConnectionFiltered:detachedCopy withFilter:?];
  }

  else
  {
    v5 = 0;
  }

  [(NSLock *)self->_listLock lock];
  v6 = [(NSMutableDictionary *)self->_connectionList objectForKey:detachedCopy];
  v22 = v6;
  if (v6)
  {
    [v6 objectForKey:@"endpointList"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v30 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(NSMutableDictionary *)self->_endpointList removeObjectForKey:*(*(&v27 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = 0;
  }

  [(NSMutableDictionary *)self->_connectionList removeObjectForKey:detachedCopy];
  [(NSLock *)self->_listLock unlock];
  v12 = 1;
  do
  {
    v13 = v12;
    if (v12)
    {
      v14 = 24;
    }

    else
    {
      v14 = 32;
    }

    WeakRetained = objc_loadWeakRetained((&self->super.isa + v14));
    if (WeakRetained && !(v13 & v5))
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = v5;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v17 = v7;
        v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v24;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v24 != v20)
              {
                objc_enumerationMutation(v17);
              }

              [WeakRetained accessoryEndpointDetached:*(*(&v23 + 1) + 8 * j) forConnection:detachedCopy];
            }

            v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v19);
        }

        v5 = v16;
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryConnectionDetached:detachedCopy];
      }
    }

    v12 = 0;
  }

  while ((v13 & 1) != 0);
}

- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  attachedCopy = attached;
  propertiesCopy = properties;
  connectionCopy = connection;
  [(NSLock *)self->_listLock lock];
  v11 = [(NSMutableDictionary *)self->_connectionList objectForKey:connectionCopy];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_connectionList setObject:v11 forKey:connectionCopy];
  }

  v12 = [v11 objectForKey:@"endpointList"];
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [v11 setObject:v12 forKey:@"endpointList"];
  }

  v34 = v11;
  [v12 addObject:attachedCopy];
  v13 = [(NSMutableDictionary *)self->_endpointList objectForKey:attachedCopy];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_endpointList setObject:v13 forKey:attachedCopy];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInt:type];
  [v13 setObject:v14 forKey:@"transportType"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:protocol];
  [v13 setObject:v15 forKey:@"protocolType"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v17 = WeakRetained, [v13 objectForKey:@"Legacy"], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18))
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKey:@"Legacy"];
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_loadWeakRetained(&self->_delegateForIdentifier);
  v31 = v13;
  v33 = v12;
  if (v20 && (v21 = v20, [v13 objectForKey:{self->_identifier, v13, v12}], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, !v22))
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKey:self->_identifier];
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  [(NSLock *)self->_listLock unlock];
  v24 = 1;
  do
  {
    v25 = v24;
    if (v24)
    {
      v26 = objc_loadWeakRetained(&self->_delegate);
      accessoryFilterDictionary = self->_accessoryFilterDictionary;
      v28 = v19;
    }

    else
    {
      v26 = objc_loadWeakRetained(&self->_delegateForIdentifier);
      accessoryFilterDictionary = 0;
      v28 = v23;
    }

    v29 = accessoryFilterDictionary;
    if (v26)
    {
      v30 = [(ACCConnectionInfo *)self accessoryEndpointFiltered:attachedCopy withFilter:v29 forConnection:connectionCopy];
      if (v28)
      {
        if (!v30)
        {
          if (objc_opt_respondsToSelector())
          {
            [v26 accessoryEndpointAttached:attachedCopy transportType:type protocol:protocol forConnection:connectionCopy];
          }

          if (objc_opt_respondsToSelector())
          {
            [v26 accessoryEndpointAttached:attachedCopy transportType:type protocol:protocol properties:propertiesCopy forConnection:connectionCopy];
          }
        }
      }
    }

    v24 = 0;
  }

  while ((v25 & 1) != 0);
}

- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection
{
  detachedCopy = detached;
  connectionCopy = connection;
  v7 = connectionCopy;
  accessoryFilterDictionary = self->_accessoryFilterDictionary;
  if (accessoryFilterDictionary)
  {
    v9 = [(ACCConnectionInfo *)self accessoryEndpointFiltered:detachedCopy withFilter:accessoryFilterDictionary forConnection:connectionCopy];
  }

  else
  {
    v9 = 0;
  }

  [(NSLock *)self->_listLock lock];
  v10 = [(NSMutableDictionary *)self->_connectionList objectForKey:v7];
  v11 = v10;
  v12 = detachedCopy;
  if (v10)
  {
    v13 = [v10 objectForKey:@"endpointList"];
    [v13 removeObject:detachedCopy];

    v12 = detachedCopy;
  }

  [(NSMutableDictionary *)self->_endpointList removeObjectForKey:v12];
  [(NSLock *)self->_listLock unlock];
  v14 = 1;
  do
  {
    v15 = v14;
    if (v14)
    {
      v16 = 24;
    }

    else
    {
      v16 = 32;
    }

    WeakRetained = objc_loadWeakRetained((&self->super.isa + v16));
    if (WeakRetained && (v15 & v9 & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained accessoryEndpointDetached:detachedCopy forConnection:v7];
    }

    v14 = 0;
  }

  while ((v15 & 1) != 0);
}

- (void)accessoryEndpointUpdate:(id)update protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  v8 = *&protocol;
  updateCopy = update;
  propertiesCopy = properties;
  connectionCopy = connection;
  [(NSLock *)self->_listLock lock];
  v12 = [(NSMutableDictionary *)self->_connectionList objectForKey:connectionCopy];
  v13 = v12;
  if (v12 && ([v12 objectForKey:@"endpointList"], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = v14;
    if ([v14 containsObject:updateCopy])
    {
      v15 = [(NSMutableDictionary *)self->_endpointList objectForKey:updateCopy];
      if (v15)
      {
        v16 = v15;
        v17 = [MEMORY[0x277CCABB0] numberWithInt:v8];
        [v16 setObject:v17 forKey:@"protocolType"];
      }
    }
  }

  else
  {
    v23 = 0;
  }

  [(NSLock *)self->_listLock unlock];
  v18 = 1;
  do
  {
    v19 = v18;
    if (v18)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      accessoryFilterDictionary = self->_accessoryFilterDictionary;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegateForIdentifier);
      accessoryFilterDictionary = 0;
    }

    v22 = accessoryFilterDictionary;
    if (WeakRetained && ![(ACCConnectionInfo *)self accessoryEndpointFiltered:updateCopy withFilter:v22 forConnection:connectionCopy])
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryEndpointUpdate:updateCopy protocol:v8 forConnection:connectionCopy];
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryEndpointUpdate:updateCopy protocol:v8 properties:propertiesCopy forConnection:connectionCopy];
      }
    }

    v18 = 0;
  }

  while ((v19 & 1) != 0);
}

- (void)accessoryConnectionInfoPropertyChanged:(id)changed properties:(id)properties
{
  changedCopy = changed;
  propertiesCopy = properties;
  v7 = 1;
  do
  {
    v8 = v7;
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      accessoryFilterDictionary = self->_accessoryFilterDictionary;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegateForIdentifier);
      accessoryFilterDictionary = 0;
    }

    v11 = accessoryFilterDictionary;
    if (WeakRetained && ![(ACCConnectionInfo *)self accessoryConnectionFiltered:changedCopy withFilter:v11])
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryConnectionInfoPropertyChanged:changedCopy];
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryConnectionInfoPropertyChanged:changedCopy properties:propertiesCopy];
      }
    }

    v7 = 0;
  }

  while ((v8 & 1) != 0);
}

- (void)accessoryEndpointInfoPropertyChanged:(id)changed properties:(id)properties forConnection:(id)connection
{
  changedCopy = changed;
  propertiesCopy = properties;
  connectionCopy = connection;
  v10 = 1;
  do
  {
    v11 = v10;
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      accessoryFilterDictionary = self->_accessoryFilterDictionary;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegateForIdentifier);
      accessoryFilterDictionary = 0;
    }

    v14 = accessoryFilterDictionary;
    if (WeakRetained && ![(ACCConnectionInfo *)self accessoryEndpointFiltered:changedCopy withFilter:v14 forConnection:connectionCopy])
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryEndpointInfoPropertyChanged:changedCopy forConnection:connectionCopy];
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryEndpointInfoPropertyChanged:changedCopy properties:propertiesCopy forConnection:connectionCopy];
      }
    }

    v10 = 0;
  }

  while ((v11 & 1) != 0);
}

- (void)handleInterceptData:(id)data forEndpoint:(id)endpoint connection:(id)connection
{
  dataCopy = data;
  endpointCopy = endpoint;
  connectionCopy = connection;
  v10 = 1;
  do
  {
    v11 = v10;
    if (v10)
    {
      v12 = 24;
    }

    else
    {
      v12 = 32;
    }

    WeakRetained = objc_loadWeakRetained((&self->super.isa + v12));
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained handleInterceptData:dataCopy forEndpoint:endpointCopy connection:connectionCopy];
    }

    v10 = 0;
  }

  while ((v11 & 1) != 0);
}

- (void)configStreamCategoryListReady:(id)ready connection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  connectionCopy = connection;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
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
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(&self->_configStreamDelegate);
    v17 = 138412802;
    v18 = connectionCopy;
    v19 = 2112;
    v20 = readyCopy;
    v21 = 2112;
    v22 = WeakRetained;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_INFO, "ACCConnectionInfo configStreamCategoryListReady: %@ - %@, _configStreamDelegate %@", &v17, 0x20u);
  }

  v12 = objc_loadWeakRetained(&self->_configStreamDelegate);
  if (v12)
  {
    v13 = v12;
    v14 = objc_loadWeakRetained(&self->_configStreamDelegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_configStreamDelegate);
      [v16 configStreamCategoryListReady:readyCopy connection:connectionCopy];
    }
  }
}

- (void)configStreamCategoriesResponse:(id)response forEndpoint:(id)endpoint connection:(id)connection success:(BOOL)success
{
  successCopy = success;
  v26 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  endpointCopy = endpoint;
  connectionCopy = connection;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 8;
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
    v15 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v18 = 138413058;
    v19 = connectionCopy;
    v20 = 2112;
    v21 = endpointCopy;
    v22 = 1024;
    v23 = successCopy;
    v24 = 2112;
    v25 = responseCopy;
    _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_INFO, "ACCConnectionInfo configStreamCategoriesResponse: %@ - %@, success %d, categories %@", &v18, 0x26u);
  }

  v16 = _Block_copy(self->_configStreamGetResponseHandler);
  configStreamGetResponseHandler = self->_configStreamGetResponseHandler;
  self->_configStreamGetResponseHandler = 0;

  if (v16)
  {
    (*(v16 + 2))(v16, endpointCopy, connectionCopy, 0, 0, 0, responseCopy, successCopy);
  }
}

- (void)configStreamPropertyResponse:(unsigned __int8)response forCategory:(unsigned __int16)category forEndpoint:(id)endpoint connection:(id)connection value:(id)value success:(BOOL)success
{
  successCopy = success;
  categoryCopy = category;
  responseCopy = response;
  v34 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  connectionCopy = connection;
  valueCopy = value;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 8;
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
    v19 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v22 = 138413570;
    v23 = connectionCopy;
    v24 = 2112;
    v25 = endpointCopy;
    v26 = 1024;
    v27 = categoryCopy;
    v28 = 1024;
    v29 = responseCopy;
    v30 = 1024;
    v31 = successCopy;
    v32 = 2112;
    v33 = valueCopy;
    _os_log_impl(&dword_221CB0000, v19, OS_LOG_TYPE_INFO, "ACCConnectionInfo configStreamPropertyResponse: %@ - %@, cat 0x%x, prop %d, success %d, val %@", &v22, 0x32u);
  }

  v20 = _Block_copy(self->_configStreamGetResponseHandler);
  configStreamGetResponseHandler = self->_configStreamGetResponseHandler;
  self->_configStreamGetResponseHandler = 0;

  if (v20)
  {
    v20[2](v20, endpointCopy, connectionCopy, categoryCopy, responseCopy, valueCopy, 0, successCopy);
  }
}

- (void)accessoryEndpointsForConnection:(id)connection withReply:(id)reply
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  replyCopy = reply;
  if (replyCopy)
  {
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v9 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_205];
    [v9 accessoryEndpointsForConnection:connectionCopy withReply:replyCopy];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 8;
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

      serverConnection = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      serverConnection = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = connectionCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo accessoryEndpointsForConnection: %@, ERROR: called with no reply block!!!", &v12, 0xCu);
    }
  }
}

void __63__ACCConnectionInfo_accessoryEndpointsForConnection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)accessoryInfoForConnection:(id)connection withReply:(id)reply
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  replyCopy = reply;
  if (replyCopy)
  {
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v9 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_207];
    [v9 accessoryInfoForConnection:connectionCopy withReply:replyCopy];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 8;
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

      serverConnection = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      serverConnection = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = connectionCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo accessoryInfoForConnection: %@, ERROR: called with no reply block!!!", &v12, 0xCu);
    }
  }
}

void __58__ACCConnectionInfo_accessoryInfoForConnection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)accessoryInfoForEndpoint:(id)endpoint connection:(id)connection withReply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  connectionCopy = connection;
  replyCopy = reply;
  if (replyCopy)
  {
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v12 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_209];
    [v12 accessoryInfoForEndpoint:endpointCopy connection:connectionCopy withReply:replyCopy];
  }

  else
  {
    if (gLogObjects)
    {
      v13 = gNumLogObjects < 8;
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

      serverConnection = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    else
    {
      serverConnection = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = endpointCopy;
      v17 = 2112;
      v18 = connectionCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo accessoryInfoForEndpoint: %@ connection: %@, ERROR: called with no reply block!!!", &v15, 0x16u);
    }
  }
}

void __67__ACCConnectionInfo_accessoryInfoForEndpoint_connection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)accessoryInfoForConnectionSync:(id)sync
{
  syncCopy = sync;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  serverConnection = [(ACCConnectionInfo *)self serverConnection];
  v6 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_211];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__ACCConnectionInfo_accessoryInfoForConnectionSync___block_invoke_212;
  v9[3] = &unk_2784862C0;
  v9[4] = &v10;
  [v6 accessoryInfoForConnection:syncCopy withReply:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __52__ACCConnectionInfo_accessoryInfoForConnectionSync___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)accessoryInfoForEndpointSync:(id)sync connection:(id)connection
{
  syncCopy = sync;
  connectionCopy = connection;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  serverConnection = [(ACCConnectionInfo *)self serverConnection];
  v9 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_215];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__ACCConnectionInfo_accessoryInfoForEndpointSync_connection___block_invoke_216;
  v12[3] = &unk_2784862E8;
  v12[4] = &v13;
  [v9 accessoryInfoForEndpoint:syncCopy connection:connectionCopy withReply:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __61__ACCConnectionInfo_accessoryInfoForEndpointSync_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)accessoryProperty:(id)property forConnection:(id)connection withReply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  connectionCopy = connection;
  replyCopy = reply;
  if (replyCopy)
  {
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v12 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_219];
    [v12 accessoryProperty:propertyCopy forConnection:connectionCopy withReply:replyCopy];
  }

  else
  {
    if (gLogObjects)
    {
      v13 = gNumLogObjects < 8;
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

      serverConnection = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    else
    {
      serverConnection = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = propertyCopy;
      v17 = 2112;
      v18 = connectionCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo accessoryProperty: %@ forConnection: %@, ERROR: called with no reply block!!!", &v15, 0x16u);
    }
  }
}

void __63__ACCConnectionInfo_accessoryProperty_forConnection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)accessoryProperty:(id)property forEndpoint:(id)endpoint connection:(id)connection withReply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  endpointCopy = endpoint;
  connectionCopy = connection;
  replyCopy = reply;
  if (replyCopy)
  {
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v15 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_221];
    [v15 accessoryProperty:propertyCopy forEndpoint:endpointCopy connection:connectionCopy withReply:replyCopy];
  }

  else
  {
    if (gLogObjects)
    {
      v16 = gNumLogObjects < 8;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    else
    {
      serverConnection = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = propertyCopy;
      v20 = 2112;
      v21 = endpointCopy;
      v22 = 2112;
      v23 = connectionCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo accessoryPropery: %@ forEndpoint: %@ connection: %@, ERROR: called with no reply block!!!", &v18, 0x20u);
    }
  }
}

void __72__ACCConnectionInfo_accessoryProperty_forEndpoint_connection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (BOOL)configStreamCategoriesRequest:(id)request connection:(id)connection withReply:(id)reply
{
  v42 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  connectionCopy = connection;
  replyCopy = reply;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 8;
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
    v13 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v28 = _Block_copy(replyCopy);
    v29 = _Block_copy(self->_configStreamGetResponseHandler);
    *buf = 138413058;
    v36 = connectionCopy;
    v37 = 2112;
    v38 = requestCopy;
    v39 = 2048;
    *v40 = v28;
    *&v40[8] = 2048;
    v41 = v29;
    _os_log_debug_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEBUG, "ACCConnectionInfo configStreamCategoriesRequest: [%@ : %@], responseHandler %p, _configStreamGetResponseHandler %p", buf, 0x2Au);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if (requestCopy && connectionCopy && replyCopy && !self->_configStreamGetResponseHandler)
  {
    v24 = _Block_copy(replyCopy);
    configStreamGetResponseHandler = self->_configStreamGetResponseHandler;
    self->_configStreamGetResponseHandler = v24;

    *(v32 + 24) = 1;
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __72__ACCConnectionInfo_configStreamCategoriesRequest_connection_withReply___block_invoke;
    v30[3] = &unk_278486310;
    v30[4] = self;
    v30[5] = &v31;
    v27 = [serverConnection remoteObjectProxyWithErrorHandler:v30];
    [v27 configStreamCategoriesRequest:requestCopy connection:connectionCopy];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_configStreamGetResponseHandler != 0;
      *buf = 138413058;
      v36 = requestCopy;
      v37 = 2112;
      v38 = connectionCopy;
      v39 = 1024;
      *v40 = replyCopy != 0;
      *&v40[4] = 1024;
      *&v40[6] = v16;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo configStreamCategoriesRequest: %@ connection: %@, ERROR: called with no endpoint/connectionUUID/responseHandler(%d) or pending requestReply(%d)!!!", buf, 0x22u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v17 = *(gLogObjects + 56);
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

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = self->_configStreamGetResponseHandler != 0;
    v20 = *(v32 + 24);
    *buf = 138413314;
    v36 = connectionCopy;
    v37 = 2112;
    v38 = requestCopy;
    v39 = 1024;
    *v40 = replyCopy != 0;
    *&v40[4] = 1024;
    *&v40[6] = v19;
    LOWORD(v41) = 1024;
    *(&v41 + 2) = v20;
    _os_log_impl(&dword_221CB0000, v17, OS_LOG_TYPE_INFO, "ACCConnectionInfo configStreamCategoriesRequest: [%@ : %@], responseHandler(%d), _configStreamGetResponseHandler(%d), sendSuccess %d", buf, 0x28u);
  }

  v21 = *(v32 + 24);
  if (((replyCopy != 0) & (v21 ^ 1)) == 1)
  {
    v22 = self->_configStreamGetResponseHandler;
    self->_configStreamGetResponseHandler = 0;

    (*(replyCopy + 2))(replyCopy, requestCopy, connectionCopy, 0, 0, 0, 0, 0);
    LOBYTE(v21) = *(v32 + 24);
  }

  _Block_object_dispose(&v31, 8);

  return v21 & 1;
}

void __72__ACCConnectionInfo_configStreamCategoriesRequest_connection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
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
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 104);
  *(v7 + 104) = 0;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

- (BOOL)configStreamPropertyRequest:(unsigned __int8)request forCategory:(unsigned __int16)category forEndpoint:(id)endpoint connection:(id)connection withReply:(id)reply
{
  categoryCopy = category;
  requestCopy = request;
  v46 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  connectionCopy = connection;
  replyCopy = reply;
  if (gLogObjects)
  {
    v15 = gNumLogObjects < 8;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v17 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v33 = _Block_copy(replyCopy);
    v32 = _Block_copy(self->_configStreamGetResponseHandler);
    *buf = 138413570;
    *v40 = connectionCopy;
    *&v40[8] = 2112;
    *v41 = endpointCopy;
    *&v41[8] = 1024;
    *v42 = categoryCopy;
    *&v42[4] = 1024;
    *&v42[6] = requestCopy;
    v43 = 2048;
    *v44 = v33;
    *&v44[8] = 2048;
    v45 = v32;
    _os_log_debug_impl(&dword_221CB0000, v17, OS_LOG_TYPE_DEBUG, "ACCConnectionInfo configStreamPropertyRequest: [%@ : %@], categoryID 0x%x, propertyID %u, responseHandler %p, _configStreamGetResponseHandler %p", buf, 0x36u);
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (endpointCopy && connectionCopy && replyCopy && !self->_configStreamGetResponseHandler)
  {
    v28 = _Block_copy(replyCopy);
    configStreamGetResponseHandler = self->_configStreamGetResponseHandler;
    self->_configStreamGetResponseHandler = v28;

    *(v36 + 24) = 1;
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __94__ACCConnectionInfo_configStreamPropertyRequest_forCategory_forEndpoint_connection_withReply___block_invoke;
    v34[3] = &unk_278486310;
    v34[4] = self;
    v34[5] = &v35;
    v31 = [serverConnection remoteObjectProxyWithErrorHandler:v34];
    [v31 configStreamPropertyRequest:requestCopy forCategory:categoryCopy forEndpoint:endpointCopy connection:connectionCopy];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v18 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_configStreamGetResponseHandler != 0;
      *buf = 67110402;
      *v40 = requestCopy;
      *&v40[4] = 1024;
      *&v40[6] = categoryCopy;
      *v41 = 2112;
      *&v41[2] = endpointCopy;
      *v42 = 2112;
      *&v42[2] = connectionCopy;
      v43 = 1024;
      *v44 = replyCopy != 0;
      *&v44[4] = 1024;
      *&v44[6] = v20;
      _os_log_impl(&dword_221CB0000, v18, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo requestConfigStreamProperty: %u forCateogry: %u forEndpoint: %@ connection: %@, ERROR: called with no endpoint/connectionUUID/responseHandler(%d) or pending requestReply(%d)!!!", buf, 0x2Eu);
    }
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v21 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v21 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v23 = self->_configStreamGetResponseHandler != 0;
    v24 = *(v36 + 24);
    *buf = 138413826;
    *v40 = connectionCopy;
    *&v40[8] = 2112;
    *v41 = endpointCopy;
    *&v41[8] = 1024;
    *v42 = categoryCopy;
    *&v42[4] = 1024;
    *&v42[6] = requestCopy;
    v43 = 1024;
    *v44 = replyCopy != 0;
    *&v44[4] = 1024;
    *&v44[6] = v23;
    LOWORD(v45) = 1024;
    *(&v45 + 2) = v24;
    _os_log_impl(&dword_221CB0000, v21, OS_LOG_TYPE_INFO, "ACCConnectionInfo configStreamPropertyRequest: [%@ : %@], categoryID 0x%x, propertyID %u, responseHandler(%d), _configStreamGetResponseHandler(%d), sendSuccess %d", buf, 0x34u);
  }

  v25 = *(v36 + 24);
  if (((replyCopy != 0) & (v25 ^ 1)) == 1)
  {
    v26 = self->_configStreamGetResponseHandler;
    self->_configStreamGetResponseHandler = 0;

    (*(replyCopy + 2))(replyCopy, endpointCopy, connectionCopy, categoryCopy, requestCopy, 0, 0, 0);
    LOBYTE(v25) = *(v36 + 24);
  }

  _Block_object_dispose(&v35, 8);

  return v25 & 1;
}

void __94__ACCConnectionInfo_configStreamPropertyRequest_forCategory_forEndpoint_connection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
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
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 104);
  *(v7 + 104) = 0;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

- (void)configStreamPropertySetValue:(id)value forProperty:(unsigned __int8)property forCategory:(unsigned __int16)category forEndpoint:(id)endpoint connection:(id)connection
{
  categoryCopy = category;
  propertyCopy = property;
  v29 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  endpointCopy = endpoint;
  connectionCopy = connection;
  v15 = connectionCopy;
  if (gLogObjects)
  {
    v16 = gNumLogObjects <= 7;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (endpointCopy && connectionCopy)
  {
    if (v17)
    {
      v18 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v18 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v23 = 138413314;
      *v24 = v15;
      *&v24[8] = 2112;
      *v25 = endpointCopy;
      *&v25[8] = 1024;
      *v26 = categoryCopy;
      *&v26[4] = 1024;
      *&v26[6] = propertyCopy;
      v27 = 2112;
      v28 = valueCopy;
      _os_log_impl(&dword_221CB0000, v18, OS_LOG_TYPE_INFO, "ACCConnectionInfo configStreamPropertySetValue: [%@ : %@], categoryID 0x%x, propertyID %u, value %@", &v23, 0x2Cu);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v22 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_223];
    [v22 configStreamPropertySetValue:valueCopy forProperty:propertyCopy forCategory:categoryCopy forEndpoint:endpointCopy connection:v15];
  }

  else
  {
    if (v17)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 67109890;
      *v24 = propertyCopy;
      *&v24[4] = 1024;
      *&v24[6] = categoryCopy;
      *v25 = 2112;
      *&v25[2] = endpointCopy;
      *v26 = 2112;
      *&v26[2] = v15;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo requestConfigStreamProperty: %u forCateogry: %u forEndpoint: %@ connection: %@, ERROR: called with no endpoint/connectionUUID!!!", &v23, 0x22u);
    }
  }
}

void __97__ACCConnectionInfo_configStreamPropertySetValue_forProperty_forCategory_forEndpoint_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)accessoryPropertySync:(id)sync forConnection:(id)connection
{
  syncCopy = sync;
  connectionCopy = connection;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  serverConnection = [(ACCConnectionInfo *)self serverConnection];
  v9 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_225];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__ACCConnectionInfo_accessoryPropertySync_forConnection___block_invoke_226;
  v12[3] = &unk_278486338;
  v12[4] = &v13;
  [v9 accessoryProperty:syncCopy forConnection:connectionCopy withReply:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __57__ACCConnectionInfo_accessoryPropertySync_forConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)accessoryPropertySync:(id)sync forEndpoint:(id)endpoint connection:(id)connection
{
  syncCopy = sync;
  endpointCopy = endpoint;
  connectionCopy = connection;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  serverConnection = [(ACCConnectionInfo *)self serverConnection];
  v12 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_229];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__ACCConnectionInfo_accessoryPropertySync_forEndpoint_connection___block_invoke_230;
  v15[3] = &unk_278486360;
  v15[4] = &v16;
  [v12 accessoryProperty:syncCopy forEndpoint:endpointCopy connection:connectionCopy withReply:v15];

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

void __66__ACCConnectionInfo_accessoryPropertySync_forEndpoint_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (int)accessoryConnectionType:(id)type
{
  listLock = self->_listLock;
  typeCopy = type;
  [(NSLock *)listLock lock];
  v6 = [(NSMutableDictionary *)self->_connectionList objectForKey:typeCopy];

  if (v6)
  {
    v7 = [v6 objectForKey:@"connectionType"];
    intValue = [v7 intValue];
  }

  else
  {
    intValue = 11;
  }

  [(NSLock *)self->_listLock unlock];

  return intValue;
}

- (int)accessoryEndpointTransportType:(id)type connection:(id)connection
{
  listLock = self->_listLock;
  typeCopy = type;
  [(NSLock *)listLock lock];
  v7 = [(NSMutableDictionary *)self->_endpointList objectForKey:typeCopy];

  if (v7)
  {
    v8 = [v7 objectForKey:@"transportType"];
    intValue = [v8 intValue];
  }

  else
  {
    intValue = 18;
  }

  [(NSLock *)self->_listLock unlock];

  return intValue;
}

- (int)accessoryEndpointProtocolType:(id)type connection:(id)connection
{
  listLock = self->_listLock;
  typeCopy = type;
  [(NSLock *)listLock lock];
  v7 = [(NSMutableDictionary *)self->_endpointList objectForKey:typeCopy];

  if (v7)
  {
    v8 = [v7 objectForKey:@"protocolType"];
    intValue = [v8 intValue];
  }

  else
  {
    intValue = 0;
  }

  [(NSLock *)self->_listLock unlock];

  return intValue;
}

- (void)interceptIncomingNTimes:(int)times forEndpoint:(id)endpoint connection:(id)connection
{
  v6 = *&times;
  endpointCopy = endpoint;
  connectionCopy = connection;
  v9 = [(NSMutableDictionary *)self->_endpointList objectForKey:endpointCopy];
  if (v9)
  {
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v11 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_233];
    [v11 interceptIncomingNTimes:v6 forEndpoint:endpointCopy connection:connectionCopy];
  }
}

void __68__ACCConnectionInfo_interceptIncomingNTimes_forEndpoint_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (int)getInterceptCountForEndpoint:(id)endpoint connection:(id)connection
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = [(NSMutableDictionary *)self->_endpointList objectForKey:endpointCopy];
  if (v8)
  {
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v10 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_235];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__ACCConnectionInfo_getInterceptCountForEndpoint_connection___block_invoke_236;
    v13[3] = &unk_278486388;
    v13[4] = &v14;
    [v10 getInterceptCountForEndpoint:endpointCopy connection:connectionCopy withReply:v13];
  }

  v11 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v11;
}

void __61__ACCConnectionInfo_getInterceptCountForEndpoint_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)sendData:(id)data forEndpoint:(id)endpoint connection:(id)connection
{
  dataCopy = data;
  endpointCopy = endpoint;
  connectionCopy = connection;
  [(NSLock *)self->_listLock lock];
  v10 = [(NSMutableDictionary *)self->_endpointList objectForKey:endpointCopy];
  if (v10)
  {
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v12 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_239];
    [v12 sendData:dataCopy forEndpoint:endpointCopy connection:connectionCopy];
  }

  [(NSLock *)self->_listLock unlock];
}

void __53__ACCConnectionInfo_sendData_forEndpoint_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)getAccessoryUserName:(id)name withReply:(id)reply
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  replyCopy = reply;
  if (replyCopy)
  {
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v9 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_242];
    [v9 getAccessoryUserName:nameCopy withReply:replyCopy];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 8;
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

      serverConnection = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      serverConnection = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = nameCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getAccessoryUserName: %@ endpoint, ERROR: called with no reply block!!!", &v12, 0xCu);
    }
  }
}

void __52__ACCConnectionInfo_getAccessoryUserName_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)setAccessoryUserName:(id)name forEndpoint:(id)endpoint withReply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  endpointCopy = endpoint;
  replyCopy = reply;
  v11 = replyCopy;
  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 7;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (replyCopy)
  {
    if (v13)
    {
      v14 = *(gLogObjects + 56);
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
      v19 = 138412290;
      v20 = nameCopy;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setAccessoryUserName:%@", &v19, 0xCu);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v17 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_244];
    [v17 setAccessoryUserName:nameCopy forEndpoint:endpointCopy withReply:v11];
  }

  else
  {
    if (v13)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = nameCopy;
      v21 = 2112;
      v22 = endpointCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setAccessoryUserName:%@ %@ endpoint, ERROR: called with no reply block!!!", &v19, 0x16u);
    }
  }
}

void __64__ACCConnectionInfo_setAccessoryUserName_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)provisionAccessoryForFindMy:(id)my withReply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  myCopy = my;
  replyCopy = reply;
  v8 = replyCopy;
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 7;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (replyCopy)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 56);
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
      LOWORD(v21) = 0;
      _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo provisionAccessoryForFindMy:withReply:", &v21, 2u);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];

    if (serverConnection)
    {
      serverConnection2 = [(ACCConnectionInfo *)self serverConnection];
      v15 = [serverConnection2 remoteObjectProxyWithErrorHandler:&__block_literal_global_246];
      [v15 provisionAccessoryForFindMy:myCopy withReply:v8];

      goto LABEL_33;
    }

    if (gLogObjects && gNumLogObjects >= 8)
    {
      serverConnection2 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection2 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      v17 = "ACCConnectionInfo provisionAccessoryForFindMy:withReply: !self.serverConnection";
      v18 = serverConnection2;
      v19 = 2;
      goto LABEL_32;
    }
  }

  else
  {
    if (v10)
    {
      serverConnection2 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection2 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection2, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = myCopy;
      v17 = "ACCConnectionInfo provisionAccessoryForFindMy: %@ endpoint, ERROR: called with no reply block!!!";
      v18 = serverConnection2;
      v19 = 12;
LABEL_32:
      _os_log_impl(&dword_221CB0000, v18, OS_LOG_TYPE_DEFAULT, v17, &v21, v19);
    }
  }

LABEL_33:
}

void __59__ACCConnectionInfo_provisionAccessoryForFindMy_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __59__ACCConnectionInfo_provisionAccessoryForFindMy_withReply___block_invoke_cold_2();
  }
}

- (void)getPairingStatus:(id)status withReply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  replyCopy = reply;
  v8 = replyCopy;
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 7;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (replyCopy)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 56);
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
      *buf = 138412290;
      v20 = statusCopy;
      _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getPairingStatus: %@ endpoint", buf, 0xCu);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v15 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_248];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__ACCConnectionInfo_getPairingStatus_withReply___block_invoke_249;
    v17[3] = &unk_2784863B0;
    v18 = v8;
    [v15 getPairingStatus:statusCopy withReply:v17];

    v12 = v18;
  }

  else
  {
    if (v10)
    {
      v12 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v12 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = statusCopy;
      _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getPairingStatus: %@ endpoint, ERROR: called with no reply block!!!", buf, 0xCu);
    }
  }
}

void __48__ACCConnectionInfo_getPairingStatus_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __48__ACCConnectionInfo_getPairingStatus_withReply___block_invoke_249(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 8;
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
    v8 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a2;
    _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getPairingStatus: reply %d", v9, 8u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)resetPairingInformation:(id)information withReply:(id)reply
{
  v18 = *MEMORY[0x277D85DE8];
  informationCopy = information;
  replyCopy = reply;
  v8 = replyCopy;
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 7;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (replyCopy)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 56);
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
      v16 = 138412290;
      v17 = informationCopy;
      _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo resetPairingInformation: %@ endpoint", &v16, 0xCu);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v14 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_252];
    [v14 resetPairingInformation:informationCopy withReply:v8];
  }

  else
  {
    if (v10)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = informationCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo resetPairingInformation: %@ endpoint, ERROR: called with no reply block!!!", &v16, 0xCu);
    }
  }
}

void __55__ACCConnectionInfo_resetPairingInformation_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)getPrivateNVMKeyValues:(id)values forEndpoint:(id)endpoint withReply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  endpointCopy = endpoint;
  replyCopy = reply;
  v11 = replyCopy;
  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 7;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (replyCopy)
  {
    if (v13)
    {
      v14 = *(gLogObjects + 56);
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
      v19 = 138412290;
      v20 = valuesCopy;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "AccConnectionInfo: getPrivateNVMKeyValues: %@", &v19, 0xCu);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v17 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_254];
    [v17 getPrivateNVMKeyValues:valuesCopy forEndpoint:endpointCopy withReply:v11];
  }

  else
  {
    if (v13)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = endpointCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getPrivateNVMKeyValues: %@ endpoint, ERROR: called with no reply block!!!", &v19, 0xCu);
    }
  }
}

void __66__ACCConnectionInfo_getPrivateNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)setPrivateNVMKeyValues:(id)values forEndpoint:(id)endpoint withReply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  endpointCopy = endpoint;
  replyCopy = reply;
  v11 = replyCopy;
  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 7;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (replyCopy)
  {
    if (v13)
    {
      v14 = *(gLogObjects + 56);
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
      v19 = 138412290;
      v20 = valuesCopy;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setPrivateNVMKeyValues: %@", &v19, 0xCu);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v17 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_256];
    [v17 setPrivateNVMKeyValues:valuesCopy forEndpoint:endpointCopy withReply:v11];
  }

  else
  {
    if (v13)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = endpointCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setPrivateNVMKeyValues: %@ endpoint, ERROR: called with no reply block!!!", &v19, 0xCu);
    }
  }
}

void __66__ACCConnectionInfo_setPrivateNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)getPublicNVMKeyValues:(id)values forEndpoint:(id)endpoint withReply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  endpointCopy = endpoint;
  replyCopy = reply;
  v11 = replyCopy;
  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 7;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (replyCopy)
  {
    if (v13)
    {
      v14 = *(gLogObjects + 56);
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
      *buf = 138412290;
      v23 = valuesCopy;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "AccConnectionInfo: getPublicNVMKeyValues: %@", buf, 0xCu);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v18 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_258];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__ACCConnectionInfo_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke_259;
    v20[3] = &unk_2784863D8;
    v21 = v11;
    [v18 getPublicNVMKeyValues:valuesCopy forEndpoint:endpointCopy withReply:v20];

    v15 = v21;
  }

  else
  {
    if (v13)
    {
      v15 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v15 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = endpointCopy;
      _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getPublicNVMKeyValues: %@ endpoint, ERROR: called with no reply block!!!", buf, 0xCu);
    }
  }
}

void __65__ACCConnectionInfo_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __65__ACCConnectionInfo_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke_259(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 8;
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
    v9 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109120;
    LODWORD(v16) = v5 != 0;
    _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "AccConnectionInfo: getPublicNVMKeyValues: hasDict:%d", &v15, 8u);
  }

  if (gLogObjects)
  {
    v10 = gNumLogObjects <= 7;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v5)
  {
    if (v11)
    {
      v12 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "AccConnectionInfo: getPublicNVMKeyValues: dict:%@", &v15, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      v12 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v12 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __65__ACCConnectionInfo_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke_259_cold_4();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setPublicNVMKeyValues:(id)values forEndpoint:(id)endpoint withReply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  endpointCopy = endpoint;
  replyCopy = reply;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 8;
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
    v13 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = valuesCopy;
    _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setPublicNVMKeyValues: %@", &v21, 0xCu);
  }

  if (gLogObjects)
  {
    v14 = gNumLogObjects <= 7;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (replyCopy)
  {
    if (v15)
    {
      v16 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v16 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_221CB0000, v16, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setPublicNVMKeyValues: reply", &v21, 2u);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v19 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_262];
    [v19 setPublicNVMKeyValues:valuesCopy forEndpoint:endpointCopy withReply:replyCopy];
  }

  else
  {
    if (v15)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = endpointCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setPublicNVMKeyValues: %@ endpoint, ERROR: called with no reply block!!!", &v21, 0xCu);
    }
  }
}

void __65__ACCConnectionInfo_setPublicNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)beginVendorKeyErase:(id)erase withReply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  eraseCopy = erase;
  replyCopy = reply;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
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
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginVendorKeyErase", &v18, 2u);
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 7;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (replyCopy)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginVendorKeyErase: reply", &v18, 2u);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v16 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_264];
    [v16 beginVendorKeyErase:eraseCopy withReply:replyCopy];
  }

  else
  {
    if (v12)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = eraseCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginVendorKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v18, 0xCu);
    }
  }
}

void __51__ACCConnectionInfo_beginVendorKeyErase_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)continueVendorKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint withReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  eraseCopy = erase;
  signatureCopy = signature;
  nonceCopy = nonce;
  endpointCopy = endpoint;
  replyCopy = reply;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 8;
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
    v19 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_221CB0000, v19, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueVendorKeyErase", &v27, 2u);
  }

  if (gLogObjects)
  {
    v20 = gNumLogObjects <= 7;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  if (replyCopy)
  {
    if (v21)
    {
      v22 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v22 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_221CB0000, v22, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueVendorKeyErase: reply", &v27, 2u);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v25 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_266];
    [v25 continueVendorKeyErase:eraseCopy withSignature:signatureCopy andAccessoryNonce:nonceCopy forEndpoint:endpointCopy withReply:replyCopy];
  }

  else
  {
    if (v21)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = endpointCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueVendorKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v27, 0xCu);
    }
  }
}

void __98__ACCConnectionInfo_continueVendorKeyErase_withSignature_andAccessoryNonce_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)cancelVendorKeyErase:(id)erase withReply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  eraseCopy = erase;
  replyCopy = reply;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
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
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelVendorKeyErase", &v18, 2u);
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 7;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (replyCopy)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelVendorKeyErase: reply", &v18, 2u);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v16 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_268];
    [v16 cancelVendorKeyErase:eraseCopy withReply:replyCopy];
  }

  else
  {
    if (v12)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = eraseCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelVendorKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v18, 0xCu);
    }
  }
}

void __52__ACCConnectionInfo_cancelVendorKeyErase_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)beginUserKeyErase:(id)erase withReply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  eraseCopy = erase;
  replyCopy = reply;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
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
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginUserKeyErase", &v18, 2u);
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 7;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (replyCopy)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginUserKeyErase: reply", &v18, 2u);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v16 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_270];
    [v16 beginUserKeyErase:eraseCopy withReply:replyCopy];
  }

  else
  {
    if (v12)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = eraseCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginUserKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v18, 0xCu);
    }
  }
}

void __49__ACCConnectionInfo_beginUserKeyErase_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)continueUserKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint withReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  eraseCopy = erase;
  signatureCopy = signature;
  nonceCopy = nonce;
  endpointCopy = endpoint;
  replyCopy = reply;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 8;
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
    v19 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_221CB0000, v19, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueUserKeyErase", &v27, 2u);
  }

  if (gLogObjects)
  {
    v20 = gNumLogObjects <= 7;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  if (replyCopy)
  {
    if (v21)
    {
      v22 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v22 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_221CB0000, v22, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueUserKeyErase: reply", &v27, 2u);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v25 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_272];
    [v25 continueUserKeyErase:eraseCopy withSignature:signatureCopy andAccessoryNonce:nonceCopy forEndpoint:endpointCopy withReply:replyCopy];
  }

  else
  {
    if (v21)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = endpointCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueUserKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v27, 0xCu);
    }
  }
}

void __96__ACCConnectionInfo_continueUserKeyErase_withSignature_andAccessoryNonce_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)cancelUserKeyErase:(id)erase withReply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  eraseCopy = erase;
  replyCopy = reply;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
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
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelUserKeyErase", &v18, 2u);
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 7;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (replyCopy)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelUserKeyErase: reply", &v18, 2u);
    }

    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v16 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_274];
    [v16 cancelUserKeyErase:eraseCopy withReply:replyCopy];
  }

  else
  {
    if (v12)
    {
      serverConnection = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      serverConnection = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(serverConnection, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = eraseCopy;
      _os_log_impl(&dword_221CB0000, serverConnection, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelUserKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v18, 0xCu);
    }
  }
}

void __50__ACCConnectionInfo_cancelUserKeyErase_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)copyUserPrivateKey:(id)key withReply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  replyCopy = reply;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
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
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo copyUserPrivateKey", buf, 2u);
  }

  if (replyCopy)
  {
    serverConnection = [(ACCConnectionInfo *)self serverConnection];
    v12 = [serverConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_276];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__ACCConnectionInfo_copyUserPrivateKey_withReply___block_invoke_277;
    v15[3] = &unk_278486400;
    v16 = replyCopy;
    [v12 copyUserPrivateKey:keyCopy withReply:v15];

    v13 = v16;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v13 = *(gLogObjects + 56);
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
      *buf = 138412290;
      v18 = keyCopy;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo copyUserPrivateKey: %@ endpoint, ERROR: called with no reply block!!!", buf, 0xCu);
    }
  }
}

void __50__ACCConnectionInfo_copyUserPrivateKey_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
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
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __50__ACCConnectionInfo_copyUserPrivateKey_withReply___block_invoke_277(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 8;
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
    v9 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo copyUserPrivateKey: reply", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (ACCConnectionInfoPrivateDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ACCConnectionInfoPrivateDelegateProtocol)delegateForIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateForIdentifier);

  return WeakRetained;
}

- (ACCConnectionInfoConfigStreamDelegateProtocol)configStreamDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_configStreamDelegate);

  return WeakRetained;
}

- (void)copyLocalizedAccessoryNameFromDaemon:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_221CB0000, v1, OS_LOG_TYPE_ERROR, "No serverConnection, cannot localize: name: %@ -> %@", v2, 0x16u);
}

void __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__ACCConnectionInfo_provisionAccessoryForFindMy_withReply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__ACCConnectionInfo_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke_259_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end