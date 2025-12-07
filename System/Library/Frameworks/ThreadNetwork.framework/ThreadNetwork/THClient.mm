@interface THClient
- (BOOL)getConnectionEntitlementValidity;
- (BOOL)getConnectionEntitlementValidity:(id)validity;
- (BOOL)initCommon;
- (BOOL)initCommon:(id)common;
- (BOOL)isConnected;
- (THClient)init;
- (THClient)initWithKeychainAccessGroup:(id)group;
- (id)asynchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)clientProxyWithErrorHandler:(id)handler;
- (id)clientProxyWithErrorHandler:(id)handler pingService:(BOOL)service;
- (id)getTheProxyWithBoolCompletion:(id)completion;
- (id)getTheProxyWithErrorParameterCompletion:(id)completion;
- (id)getTheProxyWithPrefEntryCompletion:(id)completion;
- (id)getTheProxyWithRecordCompletion:(id)completion;
- (id)getTheProxyWithResultBlockCompletion:(id)completion;
- (id)getTheProxyWithSetOfTHCredsParameterCompletion:(id)completion;
- (id)getTheProxyWithTHCredsAndUuidParametersCompletion:(id)completion;
- (id)getTheProxyWithTHCredsParameterCompletion:(id)completion;
- (id)performXPCRequestBlock:(id)block timeout:(double)timeout error:(id *)error;
- (id)synchronousClientProxyWithErrorHandler:(id)handler;
- (void)checkPreferredNetworkForActiveOperationalDataset:(NSData *)activeOperationalDataSet completion:(void *)completion;
- (void)connectToXPCService;
- (void)ctcsAddPreferredNetworkWithCompletionInternally:(id)internally extendedPANId:(id)id borderAgentID:(id)d ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)iD wifiPassword:(id)password completion:(id)self0;
- (void)ctcsCleanKeychainThreadNetworksWithCompletion:(id)completion;
- (void)ctcsCleanPreferredAndFrozenThreadNetworksWithCompletion:(id)completion;
- (void)ctcsDeleteActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)completion extendedPANId:(id)id ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d completion:(id)a8;
- (void)ctcsDeletePreferredNetworkWithCompletion:(id)completion;
- (void)ctcsRetrieveActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)ctcsRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)ctcsRetrievePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)ctcsStoreThreadNetworkCredentialActiveDataSetInternally:(id)internally network:(id)network credentialsDataSet:(id)set waitForSync:(BOOL)sync completion:(id)completion;
- (void)dealloc;
- (void)deleteCredentialsForBorderAgent:(NSData *)borderAgentID completion:(void *)completion;
- (void)handleXPCConnectionInterrupted;
- (void)handleXPCConnectionInvalidated;
- (void)invalidate;
- (void)isPreferredNetworkAvailableWithCompletion:(void *)completion;
- (void)pingXPCServiceWithClientProxy:(id)proxy completion:(id)completion;
- (void)retrieveActiveDataSetRecordInternallyForExtendedPANID:(id)d completion:(id)completion;
- (void)retrieveAllActiveCredentials:(void *)completion;
- (void)retrieveAllCredentials:(void *)completion;
- (void)retrieveCredentialsForBorderAgent:(NSData *)borderAgentID completion:(void *)completion;
- (void)retrieveCredentialsForExtendedPANID:(NSData *)extendedPANID completion:(void *)completion;
- (void)retrieveCredentialsForUUID:(id)d completion:(id)completion;
- (void)retrieveListOfPreferredNetworkEntriesInternally:(id)internally ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d showCurrentEntry:(BOOL)entry completion:(id)completion;
- (void)retrieveOrGeneratePreferredNetworkInternally:(id)internally;
- (void)retrievePreferredCredentials:(void *)completion;
- (void)retrievePreferredCredentialsInternally:(id)internally;
- (void)retrievePreferredNetworkInternallyOnMdnsAndSig:(id)sig;
- (void)retrievePreferredNetworkWithNoScan:(id)scan;
- (void)setIsConnected:(BOOL)connected;
- (void)storeCachedAODasPreferredNetwork:(id)network completion:(id)completion;
- (void)storeCredentialsForBorderAgent:(NSData *)borderAgentID activeOperationalDataSet:(NSData *)activeOperationalDataSet completion:(void *)completion;
- (void)storeCredentialsForBorderAgentInternally:(id)internally networkName:(id)name extendedPANId:(id)id activeOperationalDataSet:(id)set completion:(id)completion;
- (void)updatePreferredCredentialsInternally:(id)internally;
- (void)validateAODInternally:(id)internally completion:(id)completion;
@end

@implementation THClient

- (THClient)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = THClient;
  v2 = [(THClient *)&v9 init];
  v3 = v2;
  if (!v2)
  {
LABEL_5:
    v7 = v3;
    goto LABEL_9;
  }

  initCommon = [(THClient *)v2 initCommon];
  v5 = ThreadNetworkLoggingCategory(0);
  v6 = v5;
  if (initCommon)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[THClient init]";
      _os_log_impl(&dword_23AAC8000, v6, OS_LOG_TYPE_INFO, "Client: %s - XPC Client Init done", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [THClient init];
  }

  [(THClient *)v3 invalidate];
  v7 = 0;
LABEL_9:

  return v7;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  xpcConnection = [(THClient *)self xpcConnection];

  if (xpcConnection)
  {
    xpcConnection2 = [(THClient *)self xpcConnection];
    [xpcConnection2 invalidate];
  }

  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[THClient dealloc]";
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_DEFAULT, "%s : Client: Connection - deallocated...", buf, 0xCu);
  }

  if ([(THClient *)self threadSafePropertyQueue])
  {
    dispatch_release(self->_threadSafePropertyQueue);
  }

  v6 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[THClient dealloc]";
    _os_log_impl(&dword_23AAC8000, v6, OS_LOG_TYPE_DEFAULT, "%s : Client: thread safe property queue - deallocated...", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = THClient;
  [(THClient *)&v7 dealloc];
}

- (THClient)initWithKeychainAccessGroup:(id)group
{
  v15 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v12.receiver = self;
  v12.super_class = THClient;
  v5 = [(THClient *)&v12 init];
  v6 = v5;
  if (!v5)
  {
LABEL_5:
    v10 = v6;
    goto LABEL_9;
  }

  v7 = [(THClient *)v5 initCommon:groupCopy];
  v8 = ThreadNetworkLoggingCategory(0);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[THClient initWithKeychainAccessGroup:]";
      _os_log_impl(&dword_23AAC8000, v9, OS_LOG_TYPE_DEFAULT, "Client: %s - XPC Client Init done", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [THClient initWithKeychainAccessGroup:];
  }

  [(THClient *)v6 invalidate];
  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)initCommon:(id)common
{
  v5 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
  commonCopy = common;
  self->_threadSafePropertyQueue = dispatch_queue_create("CTCS XPC Client Thread Safe Property Queue", v5);
  self->_isConnected = 0;
  LOBYTE(self) = [(THClient *)self getConnectionEntitlementValidity:commonCopy];

  return self;
}

- (BOOL)initCommon
{
  v3 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
  self->_threadSafePropertyQueue = dispatch_queue_create("CTCS XPC Client Thread Safe Property Queue", v3);
  self->_isConnected = 0;

  return [(THClient *)self getConnectionEntitlementValidity];
}

- (void)pingXPCServiceWithClientProxy:(id)proxy completion:(id)completion
{
  proxyCopy = proxy;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__THClient_pingXPCServiceWithClientProxy_completion___block_invoke;
  v9[3] = &unk_278B6A980;
  objc_copyWeak(&v11, &location);
  v8 = completionCopy;
  v10 = v8;
  [proxyCopy ping:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __53__THClient_pingXPCServiceWithClientProxy_completion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v4) = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v4;
    }

    if (v4 == 1)
    {
      [WeakRetained setIsConnected:1];
      v8 = ThreadNetworkLoggingCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Successfully established connection", v11, 2u);
      }
    }

    else
    {
      v9 = ThreadNetworkLoggingCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __53__THClient_pingXPCServiceWithClientProxy_completion___block_invoke_cold_1();
      }

      [v7 setIsConnected:0];
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, v4);
    }
  }
}

void __26__THClient_pingXPCService__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_INFO, "clientProxyWithErrorHandler: %@", &v4, 0xCu);
  }
}

- (id)getTheProxyWithErrorParameterCompletion:(id)completion
{
  completionCopy = completion;
  if ([(THClient *)self isConnected])
  {
    xpcConnection = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__THClient_getTheProxyWithErrorParameterCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = completionCopy;
    pingXPCService = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    pingXPCService = [(THClient *)self pingXPCService];
  }

  return pingXPCService;
}

void __52__THClient_getTheProxyWithErrorParameterCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__THClient_getTheProxyWithErrorParameterCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithTHCredsParameterCompletion:(id)completion
{
  completionCopy = completion;
  if ([(THClient *)self isConnected])
  {
    xpcConnection = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__THClient_getTheProxyWithTHCredsParameterCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = completionCopy;
    pingXPCService = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    pingXPCService = [(THClient *)self pingXPCService];
  }

  return pingXPCService;
}

void __54__THClient_getTheProxyWithTHCredsParameterCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__THClient_getTheProxyWithTHCredsParameterCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithSetOfTHCredsParameterCompletion:(id)completion
{
  completionCopy = completion;
  if ([(THClient *)self isConnected])
  {
    xpcConnection = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__THClient_getTheProxyWithSetOfTHCredsParameterCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = completionCopy;
    pingXPCService = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    pingXPCService = [(THClient *)self pingXPCService];
  }

  return pingXPCService;
}

void __59__THClient_getTheProxyWithSetOfTHCredsParameterCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__THClient_getTheProxyWithSetOfTHCredsParameterCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithTHCredsAndUuidParametersCompletion:(id)completion
{
  completionCopy = completion;
  if ([(THClient *)self isConnected])
  {
    xpcConnection = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__THClient_getTheProxyWithTHCredsAndUuidParametersCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = completionCopy;
    pingXPCService = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    pingXPCService = [(THClient *)self pingXPCService];
  }

  return pingXPCService;
}

void __62__THClient_getTheProxyWithTHCredsAndUuidParametersCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__THClient_getTheProxyWithTHCredsAndUuidParametersCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithResultBlockCompletion:(id)completion
{
  completionCopy = completion;
  if ([(THClient *)self isConnected])
  {
    xpcConnection = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__THClient_getTheProxyWithResultBlockCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = completionCopy;
    pingXPCService = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    pingXPCService = [(THClient *)self pingXPCService];
  }

  return pingXPCService;
}

void __49__THClient_getTheProxyWithResultBlockCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__THClient_getTheProxyWithResultBlockCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithRecordCompletion:(id)completion
{
  completionCopy = completion;
  if ([(THClient *)self isConnected])
  {
    xpcConnection = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__THClient_getTheProxyWithRecordCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = completionCopy;
    pingXPCService = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    pingXPCService = [(THClient *)self pingXPCService];
  }

  return pingXPCService;
}

void __44__THClient_getTheProxyWithRecordCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__THClient_getTheProxyWithRecordCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithBoolCompletion:(id)completion
{
  completionCopy = completion;
  if ([(THClient *)self isConnected])
  {
    xpcConnection = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__THClient_getTheProxyWithBoolCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = completionCopy;
    pingXPCService = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    pingXPCService = [(THClient *)self pingXPCService];
  }

  return pingXPCService;
}

void __42__THClient_getTheProxyWithBoolCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42__THClient_getTheProxyWithBoolCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getTheProxyWithPrefEntryCompletion:(id)completion
{
  completionCopy = completion;
  if ([(THClient *)self isConnected])
  {
    xpcConnection = [(THClient *)self xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__THClient_getTheProxyWithPrefEntryCompletion___block_invoke;
    v8[3] = &unk_278B6A9C8;
    v9 = completionCopy;
    pingXPCService = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    pingXPCService = [(THClient *)self pingXPCService];
  }

  return pingXPCService;
}

void __47__THClient_getTheProxyWithPrefEntryCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__THClient_getTheProxyWithPrefEntryCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)handleXPCConnectionInterrupted
{
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_INFO, "Handle interrupted XPC Connection", v4, 2u);
  }

  [(THClient *)self setIsConnected:0];
}

- (void)handleXPCConnectionInvalidated
{
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_INFO, "Handle invalidated XPC Connection", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__THClient_handleXPCConnectionInvalidated__block_invoke;
  v4[3] = &unk_278B6A9F0;
  objc_copyWeak(&v5, buf);
  DispatchXPCConnectionQueueIfNecessaryAndWait(v4, 1);
  [(THClient *)self setIsConnected:0];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __42__THClient_handleXPCConnectionInvalidated__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setXpcConnection:0];
}

- (void)connectToXPCService
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = ThreadNetworkLoggingCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[THClient connectToXPCService]";
    v20 = 1024;
    v21 = 275;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_DEFAULT, "Client: %s:%d", buf, 0x12u);
  }

  xpcConnection = [(THClient *)self xpcConnection];
  v5 = xpcConnection == 0;

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ThreadNetwork.xpc" options:4096];
    [(THClient *)self setXpcConnection:v6];

    v7 = +[XPCInterface CTCSCreateXPCTransportInterface];
    xpcConnection2 = [(THClient *)self xpcConnection];
    [xpcConnection2 setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __31__THClient_connectToXPCService__block_invoke;
    v15[3] = &unk_278B6A9F0;
    objc_copyWeak(&v16, &location);
    xpcConnection3 = [(THClient *)self xpcConnection];
    [xpcConnection3 setInterruptionHandler:v15];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __31__THClient_connectToXPCService__block_invoke_7;
    v13[3] = &unk_278B6A9F0;
    objc_copyWeak(&v14, &location);
    xpcConnection4 = [(THClient *)self xpcConnection];
    [xpcConnection4 setInvalidationHandler:v13];

    xpcConnection5 = [(THClient *)self xpcConnection];
    [xpcConnection5 resume];

    v12 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[THClient connectToXPCService]";
      _os_log_impl(&dword_23AAC8000, v12, OS_LOG_TYPE_INFO, "Client: %s - connectToXPCService Connection resumed", buf, 0xCu);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __31__THClient_connectToXPCService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __31__THClient_connectToXPCService__block_invoke_cold_1();
    }

    [WeakRetained handleXPCConnectionInterrupted];
  }
}

void __31__THClient_connectToXPCService__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __31__THClient_connectToXPCService__block_invoke_7_cold_1();
    }

    [WeakRetained handleXPCConnectionInvalidated];
  }
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __22__THClient_invalidate__block_invoke;
  v2[3] = &unk_278B6A9F0;
  objc_copyWeak(&v3, &location);
  DispatchXPCConnectionQueueIfNecessaryAndWait(v2, 1);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __22__THClient_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __22__THClient_invalidate__block_invoke_cold_1();
    }

    v3 = [WeakRetained xpcConnection];

    if (v3)
    {
      v4 = [WeakRetained xpcConnection];
      [v4 invalidate];
    }

    [WeakRetained setIsConnected:0];
  }
}

- (id)clientProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(THClient *)self clientProxyWithErrorHandler:handlerCopy pingService:[(THClient *)self isConnected]^ 1];

  return v5;
}

- (id)clientProxyWithErrorHandler:(id)handler pingService:(BOOL)service
{
  handlerCopy = handler;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  objc_initWeak(&location, self);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy_;
  v16[4] = __Block_byref_object_dispose_;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__THClient_clientProxyWithErrorHandler_pingService___block_invoke;
  v10[3] = &unk_278B6AA60;
  objc_copyWeak(&v14, &location);
  v12 = &v19;
  v13 = v16;
  v7 = handlerCopy;
  serviceCopy = service;
  v10[4] = self;
  v11 = v7;
  DispatchXPCConnectionQueueIfNecessaryAndWait(v10, 1);
  v8 = v20[5];

  objc_destroyWeak(&v14);
  _Block_object_dispose(v16, 8);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v19, 8);

  return v8;
}

void __52__THClient_clientProxyWithErrorHandler_pingService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained connectToXPCService];
    v4 = [v3 xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__THClient_clientProxyWithErrorHandler_pingService___block_invoke_2;
    v8[3] = &unk_278B6AA18;
    v8[4] = *(a1 + 56);
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      (*(*(a1 + 40) + 16))();
    }

    if (*(a1 + 72) == 1)
    {
      [*(a1 + 32) pingXPCServiceWithClientProxy:*(*(*(a1 + 48) + 8) + 40) completion:&__block_literal_global_11];
    }
  }
}

void __52__THClient_clientProxyWithErrorHandler_pingService___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_23AAC8000, v4, OS_LOG_TYPE_INFO, "synchronousRemoteObjectProxyWithErrorHandler: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __52__THClient_clientProxyWithErrorHandler_pingService___block_invoke_8(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_INFO, "clientProxyWithErrorHandler connected=%@", &v5, 0xCu);
  }
}

void __40__THClient_synchronousRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_INFO, "synchronousRemoteObjectProxy - %@", &v4, 0xCu);
  }
}

- (id)synchronousClientProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  objc_initWeak(&location, self);
  if (![(THClient *)self isConnected])
  {
    pingXPCService = [(THClient *)self pingXPCService];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__THClient_synchronousClientProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278B6AA88;
  objc_copyWeak(&v12, &location);
  v11 = &v14;
  v6 = handlerCopy;
  v10 = v6;
  DispatchXPCConnectionQueueIfNecessaryAndWait(v9, 1);
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __51__THClient_synchronousClientProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained xpcConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__THClient_synchronousClientProxyWithErrorHandler___block_invoke_2;
    v8[3] = &unk_278B6A9C8;
    v9 = *(a1 + 32);
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __51__THClient_synchronousClientProxyWithErrorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__THClient_synchronousClientProxyWithErrorHandler___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (id)performXPCRequestBlock:(id)block timeout:(double)timeout error:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v8 = dispatch_semaphore_create(0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __49__THClient_performXPCRequestBlock_timeout_error___block_invoke;
  v26[3] = &unk_278B6AAB0;
  v26[4] = &v33;
  v26[5] = &v27;
  v26[6] = v8;
  blockCopy[2](blockCopy, v26);
  if (timeout <= 0.0)
  {
    v9 = -1;
  }

  else
  {
    v9 = dispatch_time(0, (timeout * 1000000000.0));
  }

  if (!dispatch_semaphore_wait(v8, v9))
  {
    v15 = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
  v12 = [v10 stringWithFormat:@"XPC method request timed out after %@ seconds", v11];

  v13 = MEMORY[0x277CCA9B8];
  v41 = *MEMORY[0x277CCA450];
  v42[0] = v12;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v15 = [v13 errorWithDomain:@"com.apple.ThreadNetwork" code:3 userInfo:v14];

  v16 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v15 description];
    *buf = 138412290;
    v40 = v17;
    _os_log_impl(&dword_23AAC8000, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v18 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 138412290;
    v40 = callStackSymbols;
    _os_log_impl(&dword_23AAC8000, v18, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (error)
  {
LABEL_12:
    v20 = v28[5];
    if (v20)
    {
      *error = v20;
      v21 = ThreadNetworkLoggingCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v28[5] description];
        [THClient performXPCRequestBlock:v22 timeout:buf error:v21];
      }
    }

    else if (v15)
    {
      v23 = v15;
      *error = v15;
    }
  }

LABEL_17:
  v24 = v34[5];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v24;
}

void __49__THClient_performXPCRequestBlock_timeout_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)isConnected
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  threadSafePropertyQueue = self->_threadSafePropertyQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __23__THClient_isConnected__block_invoke;
  v7[3] = &unk_278B6AAD8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(threadSafePropertyQueue, v7);
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v9 + 24))
    {
      v4 = @"true";
    }

    else
    {
      v4 = @"false";
    }

    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_23AAC8000, v3, OS_LOG_TYPE_DEFAULT, "XPC Client - isConnected: %@", buf, 0xCu);
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)setIsConnected:(BOOL)connected
{
  threadSafePropertyQueue = self->_threadSafePropertyQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__THClient_setIsConnected___block_invoke;
  v4[3] = &unk_278B6AB00;
  connectedCopy = connected;
  v4[4] = self;
  dispatch_barrier_async(threadSafePropertyQueue, v4);
}

void __27__THClient_setIsConnected___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 8))
  {
    *(v2 + 8) = v1;
    v4 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v5 = @"true";
      }

      else
      {
        v5 = @"false";
      }

      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_23AAC8000, v4, OS_LOG_TYPE_DEFAULT, "XPC Client - set connected: %@", &v6, 0xCu);
    }
  }
}

- (BOOL)getConnectionEntitlementValidity:(id)validity
{
  v3 = [(THClient *)self clientProxyWithErrorHandler:&__block_literal_global_39];
  v4 = v3 != 0;

  return v4;
}

void __45__THClient_getConnectionEntitlementValidity___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__THClient_getConnectionEntitlementValidity___block_invoke_cold_1();
  }
}

- (BOOL)getConnectionEntitlementValidity
{
  v2 = [(THClient *)self clientProxyWithErrorHandler:&__block_literal_global_41];
  v3 = v2 != 0;

  return v3;
}

void __44__THClient_getConnectionEntitlementValidity__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__THClient_getConnectionEntitlementValidity__block_invoke_cold_1();
  }
}

- (id)asynchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(THClient *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__THClient_asynchronousRemoteObjectProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_278B6A9C8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __58__THClient_asynchronousRemoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 description];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_23AAC8000, v4, OS_LOG_TYPE_INFO, "Connection failed while trying to get async remote object proxy (%@)\n", &v7, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)ctcsStoreThreadNetworkCredentialActiveDataSetInternally:(id)internally network:(id)network credentialsDataSet:(id)set waitForSync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  setCopy = set;
  networkCopy = network;
  internallyCopy = internally;
  v16 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[THClient ctcsStoreThreadNetworkCredentialActiveDataSetInternally:network:credentialsDataSet:waitForSync:completion:]";
    v23 = 1024;
    v24 = 519;
    _os_log_impl(&dword_23AAC8000, v16, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v17 = [(THClient *)self getTheProxyWithResultBlockCompletion:completionCopy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __118__THClient_ctcsStoreThreadNetworkCredentialActiveDataSetInternally_network_credentialsDataSet_waitForSync_completion___block_invoke;
  v19[3] = &unk_278B6AB28;
  v20 = completionCopy;
  v18 = completionCopy;
  [v17 ctcsServerStoreThreadNetworkCredentialActiveDataSetInternally:internallyCopy network:networkCopy credentialsDataSet:setCopy waitForSync:syncCopy completion:v19];
}

- (void)ctcsDeleteActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[THClient ctcsDeleteActiveDataSetRecordWithUniqueIdentifier:completion:]";
    v15 = 1024;
    v16 = 530;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v9 = [(THClient *)self getTheProxyWithErrorParameterCompletion:completionCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__THClient_ctcsDeleteActiveDataSetRecordWithUniqueIdentifier_completion___block_invoke;
  v11[3] = &unk_278B6A9C8;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 ctcsServerDeleteActiveDataSetRecordWithUniqueIdentifier:identifierCopy completion:v11];
}

- (void)ctcsRetrieveActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[THClient ctcsRetrieveActiveDataSetRecordWithUniqueIdentifier:completion:]";
    v15 = 1024;
    v16 = 540;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v9 = [(THClient *)self getTheProxyWithRecordCompletion:completionCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__THClient_ctcsRetrieveActiveDataSetRecordWithUniqueIdentifier_completion___block_invoke;
  v11[3] = &unk_278B6AB50;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 ctcsServerRetrieveActiveDataSetRecordWithUniqueIdentifier:identifierCopy completion:v11];
}

- (void)ctcsRetrievePreferredNetworkInternallyWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient ctcsRetrievePreferredNetworkInternallyWithCompletion:]";
    v12 = 1024;
    v13 = 550;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithRecordCompletion:completionCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__THClient_ctcsRetrievePreferredNetworkInternallyWithCompletion___block_invoke;
  v8[3] = &unk_278B6AB50;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 ctcsServerRetrievePreferredNetworkInternallyWithCompletion:v8];
}

- (void)ctcsRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient ctcsRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:]";
    v12 = 1024;
    v13 = 560;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithRecordCompletion:completionCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__THClient_ctcsRetrieveOrGeneratePreferredNetworkInternallyWithCompletion___block_invoke;
  v8[3] = &unk_278B6AB50;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 ctcsServerRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:v8];
}

- (void)ctcsDeletePreferredNetworkWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient ctcsDeletePreferredNetworkWithCompletion:]";
    v12 = 1024;
    v13 = 571;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithErrorParameterCompletion:completionCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__THClient_ctcsDeletePreferredNetworkWithCompletion___block_invoke;
  v8[3] = &unk_278B6A9C8;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 ctcsServerDeletePreferredNetworkWithCompletion:v8];
}

- (void)ctcsCleanPreferredAndFrozenThreadNetworksWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient ctcsCleanPreferredAndFrozenThreadNetworksWithCompletion:]";
    v12 = 1024;
    v13 = 582;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithErrorParameterCompletion:completionCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__THClient_ctcsCleanPreferredAndFrozenThreadNetworksWithCompletion___block_invoke;
  v8[3] = &unk_278B6A9C8;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 ctcsServerCleanPreferredAndFrozenThreadNetworksWithCompletion:v8];
}

- (void)ctcsCleanKeychainThreadNetworksWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient ctcsCleanKeychainThreadNetworksWithCompletion:]";
    v12 = 1024;
    v13 = 592;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithErrorParameterCompletion:completionCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__THClient_ctcsCleanKeychainThreadNetworksWithCompletion___block_invoke;
  v8[3] = &unk_278B6A9C8;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 ctcsServerCleanKeychainThreadNetworksWithCompletion:v8];
}

- (void)storeCredentialsForBorderAgentInternally:(id)internally networkName:(id)name extendedPANId:(id)id activeOperationalDataSet:(id)set completion:(id)completion
{
  internallyCopy = internally;
  nameCopy = name;
  idCopy = id;
  setCopy = set;
  completionCopy = completion;
  if (!idCopy || !nameCopy || !internallyCopy || !setCopy)
  {
    v17 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    completionCopy[2](completionCopy, v17);
  }

  v18 = [(THClient *)self getTheProxyWithErrorParameterCompletion:completionCopy];
  v19 = [[THThreadNetworkBorderAgent alloc] initWithBaDiscrId:internallyCopy];
  v20 = [[THThreadNetwork alloc] initWithName:nameCopy extendedPANID:idCopy];
  v21 = [[THThreadNetworkCredentialsDataSet alloc] initWithDataSetArray:setCopy userInfo:0];
  v22 = v21;
  if (!v19 || !v20 || !v21)
  {
    v23 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter caused error"];
    completionCopy[2](completionCopy, v23);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __115__THClient_storeCredentialsForBorderAgentInternally_networkName_extendedPANId_activeOperationalDataSet_completion___block_invoke;
  v25[3] = &unk_278B6AB28;
  v26 = completionCopy;
  v24 = completionCopy;
  [v18 ctcsServerStoreThreadNetworkCredentialActiveDataSetInternally:v19 network:v20 credentialsDataSet:v22 waitForSync:0 completion:v25];
}

- (void)retrieveActiveDataSetRecordInternallyForExtendedPANID:(id)d completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dCopy = d;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[THClient retrieveActiveDataSetRecordInternallyForExtendedPANID:completion:]";
    v16 = 1024;
    v17 = 633;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  if (!dCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    completionCopy[2](completionCopy, 0, v9);
  }

  v10 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:completionCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__THClient_retrieveActiveDataSetRecordInternallyForExtendedPANID_completion___block_invoke;
  v12[3] = &unk_278B6AB50;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 ctcsServerRetrieveActiveDataSetRecordInternallyWithXPANId:dCopy completion:v12];
}

void __77__THClient_retrieveActiveDataSetRecordInternallyForExtendedPANID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)updatePreferredCredentialsInternally:(id)internally
{
  v14 = *MEMORY[0x277D85DE8];
  internallyCopy = internally;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient updatePreferredCredentialsInternally:]";
    v12 = 1024;
    v13 = 664;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithBoolCompletion:internallyCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__THClient_updatePreferredCredentialsInternally___block_invoke;
  v8[3] = &unk_278B6AB78;
  v9 = internallyCopy;
  v7 = internallyCopy;
  [v6 ctcsUpdatePreferredNetworkInternallyWithCompletion:v8];
}

- (void)validateAODInternally:(id)internally completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  internallyCopy = internally;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[THClient validateAODInternally:completion:]";
    v16 = 1024;
    v17 = 675;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  if (!internallyCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    completionCopy[2](completionCopy, 0, v9);
  }

  v10 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:completionCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__THClient_validateAODInternally_completion___block_invoke;
  v12[3] = &unk_278B6AB50;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 ctcsValidateAODInternally:internallyCopy completion:v12];
}

void __45__THClient_validateAODInternally_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrieveListOfPreferredNetworkEntriesInternally:(id)internally ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d showCurrentEntry:(BOOL)entry completion:(id)completion
{
  entryCopy = entry;
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dCopy = d;
  nwSignatureCopy = nwSignature;
  signatureCopy = signature;
  internallyCopy = internally;
  v19 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[THClient retrieveListOfPreferredNetworkEntriesInternally:ipV4NwSignature:ipv6NwSignature:wifiSSID:showCurrentEntry:completion:]";
    v26 = 1024;
    v27 = 710;
    _os_log_impl(&dword_23AAC8000, v19, OS_LOG_TYPE_INFO, "Client: %s:%d - Read list of Preferred Network Entries", buf, 0x12u);
  }

  v20 = [(THClient *)self getTheProxyWithPrefEntryCompletion:completionCopy];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __129__THClient_retrieveListOfPreferredNetworkEntriesInternally_ipV4NwSignature_ipv6NwSignature_wifiSSID_showCurrentEntry_completion___block_invoke;
  v22[3] = &unk_278B6ABA0;
  v23 = completionCopy;
  v21 = completionCopy;
  [v20 ctcsServerRetrieveListOfPreferredNetworkEntriesInternallyWithCompletion:internallyCopy ipV4NwSignature:signatureCopy ipv6NwSignature:nwSignatureCopy wifiSSID:dCopy showCurrentEntry:entryCopy completion:v22];
}

void __129__THClient_retrieveListOfPreferredNetworkEntriesInternally_ipV4NwSignature_ipv6NwSignature_wifiSSID_showCurrentEntry_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v8 = v5;
    v41 = [v8 countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v41)
    {
      v39 = v7;
      v40 = *v67;
      v36 = v6;
      v37 = v5;
      v35 = a1;
      v38 = v8;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v67 != v40)
          {
            objc_enumerationMutation(v8);
          }

          v10 = *(*(&v66 + 1) + 8 * v9);
          if (!v10)
          {
            v32 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve Preferred Network Entry"];
            (*(*(v35 + 32) + 16))();
            v5 = v37;
LABEL_19:

            v6 = v36;
            goto LABEL_20;
          }

          v56 = v9;
          v11 = [v10 credentialsDataSetRecord];

          if (v11)
          {
            v12 = [THCredentials alloc];
            v57 = [v10 network];
            v63 = [v57 networkName];
            v55 = [v10 network];
            v61 = [v55 extendedPANID];
            v54 = [v10 credentialsDataSetRecord];
            v53 = [v54 borderAgent];
            v59 = [v53 discriminatorId];
            v52 = [v10 credentialsDataSetRecord];
            v51 = [v52 credentialsDataSet];
            v13 = [v51 dataSetArray];
            v50 = [v10 credentialsDataSetRecord];
            v49 = [v50 credentials];
            v44 = [v49 PSKc];
            v48 = [v10 credentialsDataSetRecord];
            v47 = [v48 credentials];
            v42 = [v47 masterKey];
            v46 = [v10 credentialsDataSetRecord];
            v45 = [v46 credentials];
            v14 = [v45 channel];
            v43 = [v10 credentialsDataSetRecord];
            v15 = [v43 credentials];
            v16 = [v15 PANID];
            v17 = [v10 credentialsDataSetRecord];
            v18 = [v17 creationDate];
            v19 = [v10 credentialsDataSetRecord];
            v20 = [v19 lastModificationDate];
            LOBYTE(v34) = v14;
            v65 = [(THCredentials *)v12 initThreadCredentials:v63 extendedPANID:v61 borderAgentID:v59 activeOperationalDataSet:v13 PSKC:v44 networkKey:v42 channel:v34 panID:v16 creationDate:v18 lastModificationDate:v20];
          }

          else
          {
            v65 = 0;
          }

          v58 = [THPreferredNetworkEntry alloc];
          v64 = [v10 network];
          v21 = [v64 networkName];
          v62 = [v10 network];
          v22 = [v62 extendedPANID];
          v60 = [v10 networkSignature];
          v23 = [v60 ipv4NwSignature];
          v24 = [v10 networkSignature];
          v25 = [v24 ipv6NwSignature];
          v26 = [v10 networkSignature];
          v27 = [v26 wifiSSID];
          v28 = [v10 creationDate];
          v29 = [v10 lastModificationDate];
          v30 = [(THPreferredNetworkEntry *)v58 initPrefEntry:v21 extendedPANID:v22 ipv4Signature:v23 ipv6Signature:v25 wifiSSID:v27 creationDate:v28 lastModificationDate:v29 credentialsRecord:v65];

          if (!v30)
          {
            v33 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
            (*(*(v35 + 32) + 16))();

            v5 = v37;
            v8 = v38;
            v7 = v39;
            v32 = v65;
            goto LABEL_19;
          }

          v7 = v39;
          [v39 addObject:v30];

          v9 = v56 + 1;
          v8 = v38;
        }

        while (v41 != v56 + 1);
        v6 = v36;
        v5 = v37;
        a1 = v35;
        v41 = [v38 countByEnumeratingWithState:&v66 objects:v70 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v31 = *(a1 + 32);
    v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
    (*(v31 + 16))(v31, v8, 0);
LABEL_20:
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)deleteCredentialsForBorderAgent:(NSData *)borderAgentID completion:(void *)completion
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = borderAgentID;
  v7 = completion;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[THClient deleteCredentialsForBorderAgent:completion:]";
    v14 = 1024;
    v15 = 756;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  if (v6)
  {
    v9 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v7];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__THClient_deleteCredentialsForBorderAgent_completion___block_invoke;
    v10[3] = &unk_278B6A9C8;
    v11 = v7;
    [v9 ctcsServerDeleteActiveDataSetRecordForThreadBorderAgent:v6 completion:v10];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    (*(v7 + 2))(v7, v9);
  }
}

- (void)storeCredentialsForBorderAgent:(NSData *)borderAgentID activeOperationalDataSet:(NSData *)activeOperationalDataSet completion:(void *)completion
{
  v8 = borderAgentID;
  v9 = activeOperationalDataSet;
  v10 = completion;
  if (!v8 || !v9)
  {
    v11 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v10[2](v10, v11);
  }

  v12 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__THClient_storeCredentialsForBorderAgent_activeOperationalDataSet_completion___block_invoke;
  v14[3] = &unk_278B6AB28;
  v15 = v10;
  v13 = v10;
  [v12 ctcsServerStoreThreadNetworkCredentialActiveDataSet:v8 credentialsDataSet:v9 completion:v14];
}

void __79__THClient_storeCredentialsForBorderAgent_activeOperationalDataSet_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __79__THClient_storeCredentialsForBorderAgent_activeOperationalDataSet_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)storeCachedAODasPreferredNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  if (!networkCopy)
  {
    v8 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    completionCopy[2](completionCopy, v8);
  }

  v9 = [(THClient *)self getTheProxyWithErrorParameterCompletion:completionCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__THClient_storeCachedAODasPreferredNetwork_completion___block_invoke;
  v11[3] = &unk_278B6AB28;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 ctcsServerStoreCachedAODasPreferredNetwork:networkCopy completion:v11];
}

void __56__THClient_storeCachedAODasPreferredNetwork_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __56__THClient_storeCachedAODasPreferredNetwork_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)retrieveAllCredentials:(void *)completion
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient retrieveAllCredentials:]";
    v12 = 1024;
    v13 = 806;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithSetOfTHCredsParameterCompletion:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__THClient_retrieveAllCredentials___block_invoke;
  v8[3] = &unk_278B6ABA0;
  v9 = v4;
  v7 = v4;
  [v6 ctcsServerRetrieveAllActiveDataSetRecordsWithActiveFlag:0 completion:v8];
}

void __35__THClient_retrieveAllCredentials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = v5;
    v29 = [v7 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v29)
    {
      obj = v7;
      v28 = *v43;
      v25 = v6;
      v26 = v5;
      v24 = a1;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v42 + 1) + 8 * v8);
          if (!v9 || (v10 = [THCredentials alloc], [v9 network], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "networkName"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "network"), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "extendedPANID"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "borderAgent"), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "discriminatorId"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "credentialsDataSet"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "dataSetArray"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "credentials"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "PSKc"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "credentials"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "masterKey"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "credentials"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "channel"), objc_msgSend(v9, "credentials"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "PANID"), v34 = v8, v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "creationDate"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "lastModificationDate"), v18 = objc_claimAutoreleasedReturnValue(), LOBYTE(v23) = v14, v19 = -[THCredentials initThreadCredentials:extendedPANID:borderAgentID:activeOperationalDataSet:PSKC:networkKey:channel:panID:creationDate:lastModificationDate:](v10, "initThreadCredentials:extendedPANID:borderAgentID:activeOperationalDataSet:PSKC:networkKey:channel:panID:creationDate:lastModificationDate:", v41, v40, v32, v11, v12, v31, v23, v16, v17, v18), v18, v17, v16, v15, v13, v31, v33, v12, v35, v11, v36, v32, v37, v40, v38, v41, v39, !v19))
          {
            v22 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
            (*(*(v24 + 32) + 16))();

            v6 = v25;
            v5 = v26;
            v21 = obj;
            goto LABEL_15;
          }

          [v30 addObject:v19];

          v8 = v34 + 1;
        }

        while (v29 != v34 + 1);
        v7 = obj;
        v6 = v25;
        v5 = v26;
        a1 = v24;
        v29 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v20 = *(a1 + 32);
    v21 = [MEMORY[0x277CBEB98] setWithArray:v30];
    (*(v20 + 16))(v20, v21, 0);
LABEL_15:
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrieveCredentialsForBorderAgent:(NSData *)borderAgentID completion:(void *)completion
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = completion;
  v7 = borderAgentID;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "[THClient retrieveCredentialsForBorderAgent:completion:]";
    v17 = 1024;
    v18 = 845;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v9 = [[THThreadNetworkBorderAgent alloc] initWithBaDiscrId:v7];

  if (!v7 || !v9)
  {
    v10 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v6[2](v6, 0, v10);
  }

  v11 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:v6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__THClient_retrieveCredentialsForBorderAgent_completion___block_invoke;
  v13[3] = &unk_278B6AB50;
  v14 = v6;
  v12 = v6;
  [v11 ctcsServerRetrieveActiveDataSetRecordForThreadBorderAgent:v9 completion:v13];
}

void __57__THClient_retrieveCredentialsForBorderAgent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrievePreferredCredentials:(void *)completion
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient retrievePreferredCredentials:]";
    v12 = 1024;
    v13 = 880;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__THClient_retrievePreferredCredentials___block_invoke;
  v8[3] = &unk_278B6AB50;
  v9 = v4;
  v7 = v4;
  [v6 ctcsServerRetrievePreferredNetworkWithCompletion:v8];
}

void __41__THClient_retrievePreferredCredentials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrieveCredentialsForExtendedPANID:(NSData *)extendedPANID completion:(void *)completion
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = completion;
  v7 = extendedPANID;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[THClient retrieveCredentialsForExtendedPANID:completion:]";
    v16 = 1024;
    v17 = 904;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  if (!v7)
  {
    v9 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v6[2](v6, 0, v9);
  }

  v10 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__THClient_retrieveCredentialsForExtendedPANID_completion___block_invoke;
  v12[3] = &unk_278B6AB50;
  v13 = v6;
  v11 = v6;
  [v10 ctcsServerRetrieveActiveDataSetRecordWithXPANId:v7 completion:v12];
}

void __59__THClient_retrieveCredentialsForExtendedPANID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrievePreferredNetworkInternallyOnMdnsAndSig:(id)sig
{
  v14 = *MEMORY[0x277D85DE8];
  sigCopy = sig;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient retrievePreferredNetworkInternallyOnMdnsAndSig:]";
    v12 = 1024;
    v13 = 934;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithTHCredsAndUuidParametersCompletion:sigCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__THClient_retrievePreferredNetworkInternallyOnMdnsAndSig___block_invoke;
  v8[3] = &unk_278B6AB50;
  v9 = sigCopy;
  v7 = sigCopy;
  [v6 ctcsServerRetrievePreferredNetworkInternallyOnMdnsAndSigWithCompletion:v8];
}

void __59__THClient_retrievePreferredNetworkInternallyOnMdnsAndSig___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  if (v33)
  {
    v30 = a1;
    v31 = v5;
    v6 = [THCredentials alloc];
    v29 = [v33 network];
    v32 = [v29 networkName];
    v28 = [v33 network];
    v7 = [v28 extendedPANID];
    v27 = [v33 borderAgent];
    v8 = [v27 discriminatorId];
    v26 = [v33 credentialsDataSet];
    v23 = [v26 dataSetArray];
    v25 = [v33 credentials];
    v21 = [v25 PSKc];
    v24 = [v33 credentials];
    v9 = [v24 masterKey];
    v10 = [v33 credentials];
    v11 = [v10 channel];
    v12 = [v33 credentials];
    v13 = [v12 PANID];
    v14 = [v33 creationDate];
    v15 = [v33 lastModificationDate];
    LOBYTE(v20) = v11;
    v22 = [(THCredentials *)v6 initThreadCredentials:v32 extendedPANID:v7 borderAgentID:v8 activeOperationalDataSet:v23 PSKC:v21 networkKey:v9 channel:v20 panID:v13 creationDate:v14 lastModificationDate:v15];

    if (v22)
    {
      v16 = *(v30 + 32);
      v17 = [v33 uniqueIdentifier];
      v18 = *(v16 + 16);
      v19 = v16;
      v5 = v31;
      v18(v19, v22, v17, v31);
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v30 + 32) + 16))();
      v5 = v31;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrieveOrGeneratePreferredNetworkInternally:(id)internally
{
  v14 = *MEMORY[0x277D85DE8];
  internallyCopy = internally;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient retrieveOrGeneratePreferredNetworkInternally:]";
    v12 = 1024;
    v13 = 958;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithTHCredsAndUuidParametersCompletion:internallyCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__THClient_retrieveOrGeneratePreferredNetworkInternally___block_invoke;
  v8[3] = &unk_278B6AB50;
  v9 = internallyCopy;
  v7 = internallyCopy;
  [v6 ctcsServerRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:v8];
}

void __57__THClient_retrieveOrGeneratePreferredNetworkInternally___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  if (v33)
  {
    v30 = a1;
    v31 = v5;
    v6 = [THCredentials alloc];
    v29 = [v33 network];
    v32 = [v29 networkName];
    v28 = [v33 network];
    v7 = [v28 extendedPANID];
    v27 = [v33 borderAgent];
    v8 = [v27 discriminatorId];
    v26 = [v33 credentialsDataSet];
    v23 = [v26 dataSetArray];
    v25 = [v33 credentials];
    v21 = [v25 PSKc];
    v24 = [v33 credentials];
    v9 = [v24 masterKey];
    v10 = [v33 credentials];
    v11 = [v10 channel];
    v12 = [v33 credentials];
    v13 = [v12 PANID];
    v14 = [v33 creationDate];
    v15 = [v33 lastModificationDate];
    LOBYTE(v20) = v11;
    v22 = [(THCredentials *)v6 initThreadCredentials:v32 extendedPANID:v7 borderAgentID:v8 activeOperationalDataSet:v23 PSKC:v21 networkKey:v9 channel:v20 panID:v13 creationDate:v14 lastModificationDate:v15];

    if (v22)
    {
      v16 = *(v30 + 32);
      v17 = [v33 uniqueIdentifier];
      v18 = *(v16 + 16);
      v19 = v16;
      v5 = v31;
      v18(v19, v22, v17, v31);
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v30 + 32) + 16))();
      v5 = v31;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrievePreferredCredentialsInternally:(id)internally
{
  v14 = *MEMORY[0x277D85DE8];
  internallyCopy = internally;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient retrievePreferredCredentialsInternally:]";
    v12 = 1024;
    v13 = 982;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithTHCredsAndUuidParametersCompletion:internallyCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__THClient_retrievePreferredCredentialsInternally___block_invoke;
  v8[3] = &unk_278B6AB50;
  v9 = internallyCopy;
  v7 = internallyCopy;
  [v6 ctcsServerRetrievePreferredNetworkInternallyWithCompletion:v8];
}

void __51__THClient_retrievePreferredCredentialsInternally___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  if (v33)
  {
    v30 = a1;
    v31 = v5;
    v6 = [THCredentials alloc];
    v29 = [v33 network];
    v32 = [v29 networkName];
    v28 = [v33 network];
    v7 = [v28 extendedPANID];
    v27 = [v33 borderAgent];
    v8 = [v27 discriminatorId];
    v26 = [v33 credentialsDataSet];
    v23 = [v26 dataSetArray];
    v25 = [v33 credentials];
    v21 = [v25 PSKc];
    v24 = [v33 credentials];
    v9 = [v24 masterKey];
    v10 = [v33 credentials];
    v11 = [v10 channel];
    v12 = [v33 credentials];
    v13 = [v12 PANID];
    v14 = [v33 creationDate];
    v15 = [v33 lastModificationDate];
    LOBYTE(v20) = v11;
    v22 = [(THCredentials *)v6 initThreadCredentials:v32 extendedPANID:v7 borderAgentID:v8 activeOperationalDataSet:v23 PSKC:v21 networkKey:v9 channel:v20 panID:v13 creationDate:v14 lastModificationDate:v15];

    if (v22)
    {
      v16 = *(v30 + 32);
      v17 = [v33 uniqueIdentifier];
      v18 = *(v16 + 16);
      v19 = v16;
      v5 = v31;
      v18(v19, v22, v17, v31);
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v30 + 32) + 16))();
      v5 = v31;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)retrieveCredentialsForUUID:(id)d completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dCopy = d;
  v8 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[THClient retrieveCredentialsForUUID:completion:]";
    v16 = 1024;
    v17 = 1006;
    _os_log_impl(&dword_23AAC8000, v8, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  if (!dCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    completionCopy[2](completionCopy, 0, v9);
  }

  v10 = [(THClient *)self getTheProxyWithTHCredsParameterCompletion:completionCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__THClient_retrieveCredentialsForUUID_completion___block_invoke;
  v12[3] = &unk_278B6AB50;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 ctcsServerRetrieveActiveDataSetRecordWithUniqueIdentifier:dCopy completion:v12];
}

void __50__THClient_retrieveCredentialsForUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v30)
  {
    v27 = a1;
    v28 = v5;
    v6 = [THCredentials alloc];
    v26 = [v30 network];
    v29 = [v26 networkName];
    v25 = [v30 network];
    v21 = [v25 extendedPANID];
    v24 = [v30 borderAgent];
    v19 = [v24 discriminatorId];
    v23 = [v30 credentialsDataSet];
    v18 = [v23 dataSetArray];
    v22 = [v30 credentials];
    v7 = [v22 PSKc];
    v20 = [v30 credentials];
    v8 = [v20 masterKey];
    v9 = [v30 credentials];
    v10 = [v9 channel];
    v11 = [v30 credentials];
    v12 = [v11 PANID];
    v13 = [v30 creationDate];
    v14 = [v30 lastModificationDate];
    LOBYTE(v17) = v10;
    v15 = [(THCredentials *)v6 initThreadCredentials:v29 extendedPANID:v21 borderAgentID:v19 activeOperationalDataSet:v18 PSKC:v7 networkKey:v8 channel:v17 panID:v12 creationDate:v13 lastModificationDate:v14];

    if (v15)
    {
      v5 = v28;
      (*(*(v27 + 32) + 16))();
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v27 + 32) + 16))();

      v5 = v28;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)checkPreferredNetworkForActiveOperationalDataset:(NSData *)activeOperationalDataSet completion:(void *)completion
{
  v6 = activeOperationalDataSet;
  v7 = completion;
  if (v6)
  {
    v8 = [(THClient *)self getTheProxyWithBoolCompletion:v7];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__THClient_checkPreferredNetworkForActiveOperationalDataset_completion___block_invoke;
    v10[3] = &unk_278B6AB78;
    v11 = v7;
    [v8 ctcsIsPreferredNetworkForActiveOperationalDataset:v6 completion:v10];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v9 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [THClient checkPreferredNetworkForActiveOperationalDataset:completion:];
    }

    (*(v7 + 2))(v7, 0);
  }
}

uint64_t __72__THClient_checkPreferredNetworkForActiveOperationalDataset_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __72__THClient_checkPreferredNetworkForActiveOperationalDataset_completion___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)ctcsAddPreferredNetworkWithCompletionInternally:(id)internally extendedPANId:(id)id borderAgentID:(id)d ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)iD wifiPassword:(id)password completion:(id)self0
{
  internallyCopy = internally;
  idCopy = id;
  dCopy = d;
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  iDCopy = iD;
  passwordCopy = password;
  completionCopy = completion;
  if (internallyCopy && idCopy)
  {
    v24 = [(THClient *)self getTheProxyWithErrorParameterCompletion:completionCopy];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __153__THClient_ctcsAddPreferredNetworkWithCompletionInternally_extendedPANId_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion___block_invoke;
    v26[3] = &unk_278B6A9C8;
    v27 = completionCopy;
    [v24 ctcsServerAddPreferredNetworkWithCompletionInternally:internallyCopy extendedPANId:idCopy borderAgentID:dCopy ipV4NwSignature:signatureCopy ipv6NwSignature:nwSignatureCopy wifiSSID:iDCopy wifiPassword:passwordCopy completion:v26];
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] storeError:4 description:@"Invalid input parameter"];
    v25 = ThreadNetworkLoggingCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [THClient ctcsAddPreferredNetworkWithCompletionInternally:extendedPANId:borderAgentID:ipV4NwSignature:ipv6NwSignature:wifiSSID:wifiPassword:completion:];
    }

    (*(completionCopy + 2))(completionCopy, v24);
  }
}

void __153__THClient_ctcsAddPreferredNetworkWithCompletionInternally_extendedPANId_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __153__THClient_ctcsAddPreferredNetworkWithCompletionInternally_extendedPANId_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)completion extendedPANId:(id)id ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d completion:(id)a8
{
  v14 = a8;
  dCopy = d;
  nwSignatureCopy = nwSignature;
  signatureCopy = signature;
  idCopy = id;
  completionCopy = completion;
  v20 = [(THClient *)self getTheProxyWithErrorParameterCompletion:v14];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __148__THClient_ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion_extendedPANId_ipV4NwSignature_ipv6NwSignature_wifiSSID_completion___block_invoke;
  v22[3] = &unk_278B6A9C8;
  v23 = v14;
  v21 = v14;
  [v20 ctcsServerDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion:completionCopy extendedPANId:idCopy ipV4NwSignature:signatureCopy ipv6NwSignature:nwSignatureCopy wifiSSID:dCopy completion:v22];
}

void __148__THClient_ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion_extendedPANId_ipV4NwSignature_ipv6NwSignature_wifiSSID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __148__THClient_ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion_extendedPANId_ipV4NwSignature_ipv6NwSignature_wifiSSID_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)retrieveAllActiveCredentials:(void *)completion
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient retrieveAllActiveCredentials:]";
    v12 = 1024;
    v13 = 1090;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithSetOfTHCredsParameterCompletion:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__THClient_retrieveAllActiveCredentials___block_invoke;
  v8[3] = &unk_278B6ABA0;
  v9 = v4;
  v7 = v4;
  [v6 ctcsServerRetrieveAllActiveDataSetRecordsWithActiveFlag:1 completion:v8];
}

void __41__THClient_retrieveAllActiveCredentials___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = v5;
    v29 = [v7 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v29)
    {
      obj = v7;
      v28 = *v43;
      v25 = v6;
      v26 = v5;
      v24 = a1;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v42 + 1) + 8 * v8);
          if (!v9 || (v10 = [THCredentials alloc], [v9 network], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "networkName"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "network"), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "extendedPANID"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "borderAgent"), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "discriminatorId"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "credentialsDataSet"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "dataSetArray"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "credentials"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "PSKc"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "credentials"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "masterKey"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "credentials"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "channel"), objc_msgSend(v9, "credentials"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "PANID"), v34 = v8, v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "creationDate"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "lastModificationDate"), v18 = objc_claimAutoreleasedReturnValue(), LOBYTE(v23) = v14, v19 = -[THCredentials initThreadCredentials:extendedPANID:borderAgentID:activeOperationalDataSet:PSKC:networkKey:channel:panID:creationDate:lastModificationDate:](v10, "initThreadCredentials:extendedPANID:borderAgentID:activeOperationalDataSet:PSKC:networkKey:channel:panID:creationDate:lastModificationDate:", v41, v40, v32, v11, v12, v31, v23, v16, v17, v18), v18, v17, v16, v15, v13, v31, v33, v12, v35, v11, v36, v32, v37, v40, v38, v41, v39, !v19))
          {
            v22 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
            (*(*(v24 + 32) + 16))();

            v6 = v25;
            v5 = v26;
            v21 = obj;
            goto LABEL_15;
          }

          [v30 addObject:v19];

          v8 = v34 + 1;
        }

        while (v29 != v34 + 1);
        v7 = obj;
        v6 = v25;
        v5 = v26;
        a1 = v24;
        v29 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v20 = *(a1 + 32);
    v21 = [MEMORY[0x277CBEB98] setWithArray:v30];
    (*(v20 + 16))(v20, v21, 0);
LABEL_15:
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)isPreferredNetworkAvailableWithCompletion:(void *)completion
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = completion;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient isPreferredNetworkAvailableWithCompletion:]";
    v12 = 1024;
    v13 = 1129;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithBoolCompletion:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__THClient_isPreferredNetworkAvailableWithCompletion___block_invoke;
  v8[3] = &unk_278B6AB78;
  v9 = v4;
  v7 = v4;
  [v6 ctcsServerRetrieveIsPreferredNetworkAvailable:v8];
}

uint64_t __54__THClient_isPreferredNetworkAvailableWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[THClient isPreferredNetworkAvailableWithCompletion:]_block_invoke";
    v8 = 1024;
    v9 = 1134;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_23AAC8000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d: - Response: isPreferredAvailable : %d", &v6, 0x18u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)retrievePreferredNetworkWithNoScan:(id)scan
{
  v14 = *MEMORY[0x277D85DE8];
  scanCopy = scan;
  v5 = ThreadNetworkLoggingCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[THClient retrievePreferredNetworkWithNoScan:]";
    v12 = 1024;
    v13 = 1141;
    _os_log_impl(&dword_23AAC8000, v5, OS_LOG_TYPE_INFO, "Client: %s:%d - Calling Server remoteObjectProxyWithErrorHandler", buf, 0x12u);
  }

  v6 = [(THClient *)self getTheProxyWithTHCredsAndUuidParametersCompletion:scanCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__THClient_retrievePreferredNetworkWithNoScan___block_invoke;
  v8[3] = &unk_278B6AB50;
  v9 = scanCopy;
  v7 = scanCopy;
  [v6 ctcsServerRetrievePreferredNetworkWithNoScanWithCompletion:v8];
}

void __47__THClient_retrievePreferredNetworkWithNoScan___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = a3;
  if (v33)
  {
    v30 = a1;
    v31 = v5;
    v6 = [THCredentials alloc];
    v29 = [v33 network];
    v32 = [v29 networkName];
    v28 = [v33 network];
    v7 = [v28 extendedPANID];
    v27 = [v33 borderAgent];
    v8 = [v27 discriminatorId];
    v26 = [v33 credentialsDataSet];
    v23 = [v26 dataSetArray];
    v25 = [v33 credentials];
    v21 = [v25 PSKc];
    v24 = [v33 credentials];
    v9 = [v24 masterKey];
    v10 = [v33 credentials];
    v11 = [v10 channel];
    v12 = [v33 credentials];
    v13 = [v12 PANID];
    v14 = [v33 creationDate];
    v15 = [v33 lastModificationDate];
    LOBYTE(v20) = v11;
    v22 = [(THCredentials *)v6 initThreadCredentials:v32 extendedPANID:v7 borderAgentID:v8 activeOperationalDataSet:v23 PSKC:v21 networkKey:v9 channel:v20 panID:v13 creationDate:v14 lastModificationDate:v15];

    if (v22)
    {
      v16 = *(v30 + 32);
      v17 = [v33 uniqueIdentifier];
      v18 = *(v16 + 16);
      v19 = v16;
      v5 = v31;
      v18(v19, v22, v17, v31);
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] storeError:3 description:@"Failed to retrieve record"];
      (*(*(v30 + 32) + 16))();
      v5 = v31;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __52__THClient_getTheProxyWithErrorParameterCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __54__THClient_getTheProxyWithTHCredsParameterCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __59__THClient_getTheProxyWithSetOfTHCredsParameterCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __62__THClient_getTheProxyWithTHCredsAndUuidParametersCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __49__THClient_getTheProxyWithResultBlockCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __44__THClient_getTheProxyWithRecordCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __42__THClient_getTheProxyWithBoolCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __47__THClient_getTheProxyWithPrefEntryCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)performXPCRequestBlock:(void *)a1 timeout:(uint8_t *)buf error:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_23AAC8000, log, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
}

void __45__THClient_getConnectionEntitlementValidity___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __44__THClient_getConnectionEntitlementValidity__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __79__THClient_storeCredentialsForBorderAgent_activeOperationalDataSet_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __56__THClient_storeCachedAODasPreferredNetwork_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315906;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_23AAC8000, v2, OS_LOG_TYPE_ERROR, "%s:%d: - Response: recordUniqueIdentifier %@ error %@", v3, 0x26u);
}

- (void)checkPreferredNetworkForActiveOperationalDataset:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)ctcsAddPreferredNetworkWithCompletionInternally:extendedPANId:borderAgentID:ipV4NwSignature:ipv6NwSignature:wifiSSID:wifiPassword:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __153__THClient_ctcsAddPreferredNetworkWithCompletionInternally_extendedPANId_borderAgentID_ipV4NwSignature_ipv6NwSignature_wifiSSID_wifiPassword_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __148__THClient_ctcsDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion_extendedPANId_ipV4NwSignature_ipv6NwSignature_wifiSSID_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end