@interface HMDHTTPMessageTransport
+ (BOOL)protocolVersionSupportsExtendedMessages:(id)messages;
+ (BOOL)shouldHostMessageServer;
+ (HMFVersion)protocolVersion;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)canSendMessage:(id)message;
- (BOOL)isDeviceConnected:(id)connected;
- (BOOL)isServerEnabled;
- (HMDHTTPDevice)currentDevice;
- (HMDHTTPMessageTransport)initWithAccountRegistry:(id)registry;
- (HMDHTTPMessageTransport)initWithAccountRegistry:(id)registry clientBrowser:(id)browser;
- (HMDHTTPServerMessageTransport)serverTransport;
- (NSArray)clientTransports;
- (NSDictionary)TXTRecord;
- (id)_serviceForDevice:(id)device;
- (id)clientTransportForDevice:(id)device;
- (id)clientTransportForService:(id)service;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)deviceForHTTPDevice:(id)device;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (id)shortDescription;
- (void)_connectToDevice:(id)device completionHandler:(id)handler;
- (void)_handleReceivedRequestMessage:(id)message fromDevice:(id)device completionHandler:(id)handler;
- (void)_sendMessage:(id)message destination:(id)destination timeout:(double)timeout responseHandler:(id)handler;
- (void)_startServerWithDevice:(id)device;
- (void)_stopServer;
- (void)addClientTransport:(id)transport;
- (void)client:(id)client didReceiveMessage:(id)message completionHandler:(id)handler;
- (void)client:(id)client didStopWithError:(id)error;
- (void)configureWithDevice:(id)device;
- (void)handleServerEnabled:(BOOL)enabled;
- (void)netServiceBrowser:(id)browser didAddService:(id)service;
- (void)netServiceBrowser:(id)browser didRemoveService:(id)service;
- (void)netServiceBrowser:(id)browser didStopBrowsingWithError:(id)error;
- (void)removeAllClientTransports;
- (void)removeClientTransport:(id)transport;
- (void)removeTXTRecordValueForKey:(id)key;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)server:(id)server didAddDevice:(id)device;
- (void)server:(id)server didReceiveMessage:(id)message fromDevice:(id)device completionHandler:(id)handler;
- (void)server:(id)server didRemoveDevice:(id)device;
- (void)server:(id)server didStopWithError:(id)error;
- (void)setCurrentDevice:(id)device;
- (void)setServerEnabled:(BOOL)enabled;
- (void)setServerTransport:(id)transport;
- (void)setTXTRecordValue:(id)value forKey:(id)key;
- (void)startObservingIsPublishingForService:(id)service;
@end

@implementation HMDHTTPMessageTransport

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(HMDHTTPMessageTransport *)self debugDescription];
  [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x277D0F0D0]];

  clientTransports = [(HMDHTTPMessageTransport *)self clientTransports];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(clientTransports, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = clientTransports;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v19 + 1) + 8 * i) dumpStateWithPrivacyLevel:{level, v19}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  [dictionary setObject:v8 forKeyedSubscript:@"clientTransports"];
  serverTransport = [(HMDHTTPMessageTransport *)self serverTransport];
  if (serverTransport)
  {
    serverTransport2 = [(HMDHTTPMessageTransport *)self serverTransport];
    v17 = [serverTransport2 dumpStateWithPrivacyLevel:level];
    [dictionary setObject:v17 forKeyedSubscript:@"serverTransport"];
  }

  else
  {
    [dictionary setObject:@"No server transport" forKeyedSubscript:@"serverTransport"];
  }

  return dictionary;
}

- (void)netServiceBrowser:(id)browser didRemoveService:(id)service
{
  browserCopy = browser;
  serviceCopy = service;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDHTTPMessageTransport_netServiceBrowser_didRemoveService___block_invoke;
  block[3] = &unk_279734960;
  v12 = browserCopy;
  selfCopy = self;
  v14 = serviceCopy;
  v9 = serviceCopy;
  v10 = browserCopy;
  dispatch_async(queue, block);
}

void __62__HMDHTTPMessageTransport_netServiceBrowser_didRemoveService___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) clientBrowser];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 48);
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Client is no longer advertising: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)netServiceBrowser:(id)browser didAddService:(id)service
{
  v27 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  serviceCopy = service;
  clientBrowser = [(HMDHTTPMessageTransport *)self clientBrowser];

  if (clientBrowser == browserCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = serviceCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Discovered new client: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDHTTPMessageTransport *)selfCopy clientTransportForService:serviceCopy];
    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v22 = v17;
        v23 = 2112;
        v24 = serviceCopy;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Added service, %@, for existing client: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __59__HMDHTTPMessageTransport_netServiceBrowser_didAddService___block_invoke;
      v18[3] = &unk_279734D88;
      v18[4] = v15;
      v19 = serviceCopy;
      v20 = v13;
      [v19 confirmWithTimeout:v18 completionHandler:0.0];
    }

    [(HMDHTTPMessageTransport *)selfCopy startObservingIsPublishingForService:serviceCopy];
  }
}

void __59__HMDHTTPMessageTransport_netServiceBrowser_didAddService___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v18 = 138543874;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Resolved service, %@, for existing client: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) netService];
  LOBYTE(v10) = [v10 isEqual:v11];

  if ((v10 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      v17 = [*(a1 + 48) netService];
      v18 = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Removing client, added service, %@, does not match existing client service: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 48) stop];
    [*(a1 + 32) removeClientTransport:*(a1 + 48)];
  }
}

- (void)netServiceBrowser:(id)browser didStopBrowsingWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Client browser stopped with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)server:(id)server didReceiveMessage:(id)message fromDevice:(id)device completionHandler:(id)handler
{
  messageCopy = message;
  deviceCopy = device;
  handlerCopy = handler;
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HMDHTTPMessageTransport_server_didReceiveMessage_fromDevice_completionHandler___block_invoke;
  v16[3] = &unk_279734578;
  v16[4] = self;
  v17 = deviceCopy;
  v18 = messageCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = messageCopy;
  v15 = deviceCopy;
  dispatch_async(queue, v16);
}

uint64_t __81__HMDHTTPMessageTransport_server_didReceiveMessage_fromDevice_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Received message for device, %@, : %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _handleReceivedRequestMessage:*(a1 + 48) fromDevice:*(a1 + 40) completionHandler:*(a1 + 56)];
}

- (void)server:(id)server didRemoveDevice:(id)device
{
  deviceCopy = device;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDHTTPMessageTransport_server_didRemoveDevice___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_async(queue, v8);
}

void __50__HMDHTTPMessageTransport_server_didRemoveDevice___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Server removed device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) _serviceForDevice:*(a1 + 40)];
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting client confirmation for device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    objc_initWeak(buf, *(a1 + 32));
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__HMDHTTPMessageTransport_server_didRemoveDevice___block_invoke_103;
    v13[3] = &unk_2797338E8;
    objc_copyWeak(&v15, buf);
    v14 = *(a1 + 40);
    [v7 confirmWithTimeout:v13 completionHandler:0.0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

void __50__HMDHTTPMessageTransport_server_didRemoveDevice___block_invoke_103(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v10 = 138543874;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Completed client confirmation for device, %@, with error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)server:(id)server didAddDevice:(id)device
{
  v16 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  deviceCopy = device;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = deviceCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@New device added: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)server:(id)server didStopWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Server stopped with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)client:(id)client didReceiveMessage:(id)message completionHandler:(id)handler
{
  clientCopy = client;
  messageCopy = message;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HMDHTTPMessageTransport_client_didReceiveMessage_completionHandler___block_invoke;
  v15[3] = &unk_279734578;
  v15[4] = self;
  v16 = clientCopy;
  v17 = messageCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = messageCopy;
  v14 = clientCopy;
  dispatch_async(queue, v15);
}

void __70__HMDHTTPMessageTransport_client_didReceiveMessage_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) remoteDevice];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Received message for device, %@, : %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) remoteDevice];
  [v9 _handleReceivedRequestMessage:v8 fromDevice:v10 completionHandler:*(a1 + 56)];
}

- (void)client:(id)client didStopWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v28 = v11;
    v29 = 2112;
    v30 = clientCopy;
    v31 = 2112;
    v32 = errorCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Client, %@, did stop with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  serverTransport = [(HMDHTTPMessageTransport *)selfCopy serverTransport];
  devices = [serverTransport devices];
  remoteDevice = [clientCopy remoteDevice];
  v15 = [devices containsObject:remoteDevice];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      remoteDevice2 = [clientCopy remoteDevice];
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = remoteDevice2;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Starting server confirmation for device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    objc_initWeak(buf, v17);
    objc_initWeak(&location, clientCopy);
    serverTransport2 = [(HMDHTTPMessageTransport *)v17 serverTransport];
    remoteDevice3 = [clientCopy remoteDevice];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __51__HMDHTTPMessageTransport_client_didStopWithError___block_invoke;
    v23[3] = &unk_2797233A0;
    objc_copyWeak(&v24, buf);
    objc_copyWeak(&v25, &location);
    [serverTransport2 confirmDevice:remoteDevice3 completionHandler:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

void __51__HMDHTTPMessageTransport_client_didStopWithError___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_autoreleasePoolPush();
  v7 = WeakRetained;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 remoteDevice];
    v11 = 138543874;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Completed server confirmation for device, %@, with error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)startObservingIsPublishingForService:(id)service
{
  v28 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = __httpDeviceForNetService(serviceCopy, self);
  if (v5)
  {
    v6 = [(HMDHTTPMessageTransport *)self deviceForHTTPDevice:v5];
    v7 = v6;
    if (v6)
    {
      queue = self->_queue;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __64__HMDHTTPMessageTransport_startObservingIsPublishingForService___block_invoke;
      v19[3] = &unk_2797359B0;
      v20 = v6;
      v21 = serviceCopy;
      dispatch_async(queue, v19);
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        name = [serviceCopy name];
        *buf = 138543874;
        v23 = v17;
        v24 = 2112;
        v25 = v5;
        v26 = 2112;
        v27 = name;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Unable to find device with UUID %@, from net service name %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      name2 = [serviceCopy name];
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = name2;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Unable to create http device from net service name %@, ignoring", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)_connectToDevice:(id)device completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  v8 = [(HMDHTTPMessageTransport *)self clientTransportForDevice:deviceCopy];
  v9 = v8;
  if (v8)
  {
    if ([v8 isRunning])
    {
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, v9, 0);
      }
    }

    else
    {
      objc_initWeak(buf, self);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke;
      v25[3] = &unk_2797346E0;
      objc_copyWeak(&v28, buf);
      v27 = handlerCopy;
      v26 = v9;
      [v26 startWithCompletionHandler:v25];

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v10 = [(HMDHTTPMessageTransport *)self _serviceForDevice:deviceCopy];
    if (v10 && (v11 = [HMDHTTPClientMessageTransport alloc], -[HMDHTTPMessageTransport currentDevice](self, "currentDevice"), v12 = objc_claimAutoreleasedReturnValue(), [v12 identifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[HMDHTTPClientMessageTransport initWithIdentifier:netService:](v11, "initWithIdentifier:netService:", v13, v10), v13, v12, -[HMDHTTPClientMessageTransport setDelegate:](v14, "setDelegate:", self), v14))
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v18;
        v31 = 2112;
        v32 = deviceCopy;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Created a new messaging client for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDHTTPMessageTransport *)selfCopy addClientTransport:v14];
      objc_initWeak(buf, selfCopy);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_101;
      v21[3] = &unk_2797346E0;
      objc_copyWeak(&v24, buf);
      v23 = handlerCopy;
      v19 = v14;
      v22 = v19;
      [(HMDHTTPClientMessageTransport *)v19 startWithCompletionHandler:v21];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    else if (handlerCopy)
    {
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not found." reason:@"Unable to find device." suggestion:0];
      (handlerCopy)[2](handlerCopy, 0, v20);
    }
  }
}

void __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to start messaging client with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  if (WeakRetained)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = WeakRetained[11];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_99;
      block[3] = &unk_2797355D0;
      v14 = v9;
      v12 = v3;
      v13 = *(a1 + 32);
      dispatch_async(v10, block);
    }
  }
}

void __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_101(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to start messaging client with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  if (WeakRetained)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = WeakRetained[11];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_102;
      block[3] = &unk_2797355D0;
      v14 = v9;
      v12 = v3;
      v13 = *(a1 + 32);
      dispatch_async(v10, block);
    }
  }
}

uint64_t __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_102(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

uint64_t __62__HMDHTTPMessageTransport__connectToDevice_completionHandler___block_invoke_99(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

- (void)_stopServer
{
  v11 = *MEMORY[0x277D85DE8];
  serverTransport = [(HMDHTTPMessageTransport *)self serverTransport];

  if (serverTransport)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping server", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    serverTransport2 = [(HMDHTTPMessageTransport *)selfCopy serverTransport];
    [serverTransport2 stop];

    [(HMDHTTPMessageTransport *)selfCopy setServerTransport:0];
  }
}

- (void)_startServerWithDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting server", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [HMDHTTPServerMessageTransport alloc];
  identifier = [deviceCopy identifier];
  v11 = [(HMDHTTPServerMessageTransport *)v9 initWithServerIdentifier:identifier];
  [(HMDHTTPMessageTransport *)selfCopy setServerTransport:v11];

  serverTransport = [(HMDHTTPMessageTransport *)selfCopy serverTransport];
  [serverTransport setDelegate:selfCopy];

  serverTransport2 = [(HMDHTTPMessageTransport *)selfCopy serverTransport];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__HMDHTTPMessageTransport__startServerWithDevice___block_invoke;
  v14[3] = &unk_2797359D8;
  v14[4] = selfCopy;
  [serverTransport2 startWithCompletionHandler:v14];
}

void __50__HMDHTTPMessageTransport__startServerWithDevice___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start message server with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = [*(a1 + 32) TXTRecord];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__HMDHTTPMessageTransport__startServerWithDevice___block_invoke_96;
    v9[3] = &unk_27972C990;
    v9[4] = *(a1 + 32);
    [v8 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

void __50__HMDHTTPMessageTransport__startServerWithDevice___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@injecting TXT record %@: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (v8)
  {
    v13 = [*(a1 + 32) serverTransport];
    [v13 setTXTRecordValue:v8 forKey:v5];
  }
}

- (void)configureWithDevice:(id)device
{
  deviceCopy = device;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDHTTPMessageTransport_configureWithDevice___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

void __47__HMDHTTPMessageTransport_configureWithDevice___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentDevice];
  v3 = [v2 isEqual:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *buf = 138543618;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Configuring with device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setCurrentDevice:*(a1 + 40)];
    [*(a1 + 32) _stopServer];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [*(a1 + 32) clientTransports];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v16 + 1) + 8 * v13++) stop];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [*(a1 + 32) removeAllClientTransports];
    if (*(a1 + 40))
    {
      if ([*(a1 + 32) isServerEnabled])
      {
        [*(a1 + 32) _startServerWithDevice:*(a1 + 40)];
      }

      v14 = [*(a1 + 32) clientBrowser];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __47__HMDHTTPMessageTransport_configureWithDevice___block_invoke_94;
      v15[3] = &unk_2797359D8;
      v15[4] = *(a1 + 32);
      [v14 startBrowsingWithCompletionHandler:v15];
    }
  }
}

void __47__HMDHTTPMessageTransport_configureWithDevice___block_invoke_94(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start browseing for clients with error: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (id)_serviceForDevice:(id)device
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  clientBrowser = [(HMDHTTPMessageTransport *)self clientBrowser];
  cachedNetServices = [clientBrowser cachedNetServices];

  v7 = [cachedNetServices countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(cachedNetServices);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CCAD78]);
        name = [v10 name];
        v13 = [v11 initWithUUIDString:name];

        identifier = [deviceCopy identifier];
        v15 = [v13 isEqual:identifier];

        if (v15)
        {
          v7 = v10;

          goto LABEL_11;
        }
      }

      v7 = [cachedNetServices countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)removeAllClientTransports
{
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_clientTransports removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeClientTransport:(id)transport
{
  transportCopy = transport;
  if (transportCopy)
  {
    v5 = transportCopy;
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_clientTransports removeObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    transportCopy = v5;
  }
}

- (void)addClientTransport:(id)transport
{
  transportCopy = transport;
  if (transportCopy)
  {
    v5 = transportCopy;
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_clientTransports addObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    transportCopy = v5;
  }
}

- (id)clientTransportForService:(id)service
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = __httpDeviceForNetService(serviceCopy, self);
  if (v5)
  {
    v6 = [(HMDHTTPMessageTransport *)self clientTransportForDevice:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      name = [serviceCopy name];
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = name;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Unable to create device from net service name %@, so ignoring", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  return v6;
}

- (id)clientTransportForDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_clientTransports;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        remoteDevice = [v9 remoteDevice];
        v11 = [remoteDevice isEqual:deviceCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSArray)clientTransports
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_clientTransports);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)deviceForHTTPDevice:(id)device
{
  v34 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  accountRegistry = [(HMDRemoteMessageTransport *)self accountRegistry];
  accounts = [accountRegistry accounts];

  v22 = [accounts countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v7 = *v29;
    v23 = accounts;
    v21 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        devices = [v9 devices];
        v11 = [devices countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(devices);
              }

              v15 = *(*(&v24 + 1) + 8 * j);
              identifier = [v15 identifier];
              identifier2 = [deviceCopy identifier];
              v18 = [identifier isEqual:identifier2];

              if (v18)
              {
                v19 = v15;

                accounts = v23;
                goto LABEL_19;
              }
            }

            v12 = [devices countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        accounts = v23;
        v7 = v21;
      }

      v19 = 0;
      v22 = [v23 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  else
  {
    v19 = 0;
  }

LABEL_19:

  return v19;
}

- (void)setServerTransport:(id)transport
{
  transportCopy = transport;
  os_unfair_lock_lock_with_options();
  serverTransport = self->_serverTransport;
  self->_serverTransport = transportCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHTTPServerMessageTransport)serverTransport
{
  os_unfair_lock_lock_with_options();
  v3 = self->_serverTransport;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCurrentDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  currentDevice = self->_currentDevice;
  self->_currentDevice = deviceCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHTTPDevice)currentDevice
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentDevice;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)removeTXTRecordValueForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_txtRecord removeObjectForKey:keyCopy];
  [(HMDHTTPServerMessageTransport *)self->_serverTransport removeTXTRecordValueForKey:keyCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTXTRecordValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_txtRecord setValue:valueCopy forKey:keyCopy];
  [(HMDHTTPServerMessageTransport *)self->_serverTransport setTXTRecordValue:valueCopy forKey:keyCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)TXTRecord
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_txtRecord);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)handleServerEnabled:(BOOL)enabled
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HMDHTTPMessageTransport_handleServerEnabled___block_invoke;
  v4[3] = &unk_279735D28;
  enabledCopy = enabled;
  v4[4] = self;
  dispatch_async(queue, v4);
}

void __47__HMDHTTPMessageTransport_handleServerEnabled___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Server was enabled", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v8 = [*(a1 + 32) currentDevice];

    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [v9 currentDevice];
      [v9 _startServerWithDevice:v10];
    }
  }

  else
  {
    if (v6)
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Server was disabled", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _stopServer];
  }
}

- (void)setServerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (enabledCopy && !+[HMDHTTPMessageTransport shouldHostMessageServer])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Enabling server is not supported on this device", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else if (self->_serverEnabled != enabledCopy)
  {
    self->_serverEnabled = enabledCopy;
    [(HMDHTTPMessageTransport *)self handleServerEnabled:enabledCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isServerEnabled
{
  os_unfair_lock_lock_with_options();
  serverEnabled = self->_serverEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return serverEnabled;
}

- (void)_handleReceivedRequestMessage:(id)message fromDevice:(id)device completionHandler:(id)handler
{
  v70 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  deviceCopy = device;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543874;
    v65 = v14;
    v66 = 2112;
    v67 = shortDescription;
    v68 = 2112;
    v69 = deviceCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received incoming message, %@, from: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v63 = 0;
  v16 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:messageCopy error:&v63];
  v50 = v63;
  if (v16)
  {
    [v16 setRestriction:{objc_msgSend(objc_opt_class(), "restriction")}];
    v51 = [(HMDHTTPMessageTransport *)selfCopy deviceForHTTPDevice:deviceCopy];
    if (v51)
    {
      v17 = [HMDRemoteDeviceMessageDestination alloc];
      destination = [v16 destination];
      target = [destination target];
      v20 = [(HMDRemoteDeviceMessageDestination *)v17 initWithTarget:target device:v51];

      [v16 setDestination:v20];
      messagePayload = [v16 messagePayload];
      v22 = [messagePayload mutableCopy];

      device = [(HMDRemoteDeviceMessageDestination *)v20 device];
      remoteDestinationString = [device remoteDestinationString];
      [v22 setObject:remoteDestinationString forKeyedSubscript:@"kIDSMessageSourceIDKey"];

      [v16 setMessagePayload:v22];
      objc_initWeak(buf, selfCopy);
      if ([v16 type])
      {
        name = [v16 name];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke_3;
        v54[3] = &unk_279733FB0;
        v54[4] = selfCopy;
        v26 = name;
        v55 = v26;
        [v16 setResponseHandler:v54];
        if (handlerCopy)
        {
          queue = selfCopy->_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke_89;
          block[3] = &unk_2797348C0;
          v53 = handlerCopy;
          dispatch_async(queue, block);
        }
      }

      else
      {
        name2 = [v16 name];
        destination2 = [v16 destination];
        isSecure = [v16 isSecure];
        transactionIdentifier = [v16 transactionIdentifier];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke;
        v56[3] = &unk_279723378;
        objc_copyWeak(&v61, buf);
        v60 = handlerCopy;
        v26 = name2;
        v57 = v26;
        v41 = destination2;
        v58 = v41;
        v62 = isSecure;
        v42 = transactionIdentifier;
        v59 = v42;
        [v16 setInternalResponseHandler:v56];

        objc_destroyWeak(&v61);
      }

      if (([v16 isSecure] & 1) != 0 || !+[HMDSecureRemoteSession isSecureRemoteSessionMessage:](HMDSecureRemoteSession, "isSecureRemoteSessionMessage:", v16))
      {
        v43 = +[HMDMetricsManager sharedLogEventSubmitter];
        v44 = [HMDRemoteMessageLogEvent receivedRemoteMessage:v16 transportType:[(HMDHTTPMessageTransport *)selfCopy transportType]];
        [v43 submitLogEvent:v44];
      }

      userInfo = [v16 userInfo];
      v46 = [userInfo mutableCopy];

      v47 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDHTTPMessageTransport transportType](selfCopy, "transportType")}];
      [v46 setObject:v47 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

      internal = [v16 internal];
      [internal setUserInfo:v46];

      delegate = [(HMFMessageTransport *)selfCopy delegate];
      [delegate messageTransport:selfCopy didReceiveMessage:v16];

      objc_destroyWeak(buf);
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = selfCopy;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543874;
        v65 = v35;
        v66 = 2112;
        v67 = messageCopy;
        v68 = 2112;
        v69 = deviceCopy;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Received message, %@, from unknown device: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v32);
      if (handlerCopy)
      {
        v36 = [MEMORY[0x277CCA9B8] hmd_HTTPMessageTransportErrorWithCode:100];
        (*(handlerCopy + 2))(handlerCopy, 0, v36);
      }
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v65 = v31;
      v66 = 2112;
      v67 = messageCopy;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Received invalid HTTP message payload, dropping it: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v50);
    }
  }
}

void __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained && *(a1 + 56))
  {
    v9 = WeakRetained[11];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke_2;
    block[3] = &unk_2797325D0;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = v6;
    v17 = *(a1 + 72);
    v14 = *(a1 + 48);
    v15 = v5;
    v16 = *(a1 + 56);
    dispatch_async(v9, block);
  }
}

void __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Command %@ completed with error: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
}

void __86__HMDHTTPMessageTransport__handleReceivedRequestMessage_fromDevice_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [[HMDRemoteMessage alloc] initWithName:*(a1 + 32) destination:*(a1 + 40) payload:*(a1 + 48) type:1 timeout:*(a1 + 80) secure:0.0];
  [(HMDRemoteMessage *)v2 setTransactionIdentifier:*(a1 + 56)];
  v8 = 0;
  v3 = [HMDRemoteMessageSerialization dictionaryForMessage:v2 error:&v8];
  v4 = v8;
  v5 = [v3 mutableCopy];

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    [v5 setObject:v7 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
  }

  (*(*(a1 + 72) + 16))();
}

- (void)_sendMessage:(id)message destination:(id)destination timeout:(double)timeout responseHandler:(id)handler
{
  v60 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  destinationCopy = destination;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543874;
    v55 = v16;
    v56 = 2112;
    v57 = shortDescription;
    v58 = 2112;
    v59 = destinationCopy;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending message, %@, to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = [(HMDHTTPMessageTransport *)selfCopy _serviceForDevice:destinationCopy];
  v19 = [(HMDHTTPMessageTransport *)selfCopy clientTransportForDevice:destinationCopy];
  if (v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = v18 == 0;
  }

  v21 = !v20;
  if (!v20)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v46 = destinationCopy;
      v25 = v18;
      v26 = messageCopy;
      v28 = v27 = handlerCopy;
      *buf = 138543362;
      v55 = v28;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Not currently tracking client, starting to track client", buf, 0xCu);

      handlerCopy = v27;
      messageCopy = v26;
      v18 = v25;
      destinationCopy = v46;
    }

    objc_autoreleasePoolPop(v22);
  }

  if ([v19 isRunning])
  {
    [v19 sendMessage:messageCopy timeout:handlerCopy completionHandler:timeout];
    goto LABEL_28;
  }

  if ((v21 | [v19 isReachable]) == 1)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v32;
      v56 = 2112;
      v57 = destinationCopy;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Not currently connected to device, %@, so attempting to connect and send message.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __76__HMDHTTPMessageTransport__sendMessage_destination_timeout_responseHandler___block_invoke;
    v47[3] = &unk_279723350;
    v47[4] = v30;
    v48 = destinationCopy;
    v49 = v18;
    v51 = handlerCopy;
    v50 = messageCopy;
    timeoutCopy = timeout;
    [(HMDHTTPMessageTransport *)v30 _connectToDevice:v48 completionHandler:v47];

    goto LABEL_28;
  }

  serverTransport = [(HMDHTTPMessageTransport *)selfCopy serverTransport];
  devices = [serverTransport devices];
  v35 = [devices containsObject:destinationCopy];

  v36 = objc_autoreleasePoolPush();
  v37 = selfCopy;
  v38 = HMFGetOSLogHandle();
  v39 = v38;
  if (v35)
  {
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v55 = v40;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Unable to send via client, falling back to sending message via the server", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
    serverTransport2 = [(HMDHTTPMessageTransport *)v37 serverTransport];
    v42 = MEMORY[0x277CBEB98];
    v53 = destinationCopy;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    v44 = [v42 setWithArray:v43];
    [serverTransport2 sendMessage:messageCopy toDevices:v44 timeout:handlerCopy completionHandler:timeout];

    goto LABEL_27;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543618;
    v55 = v45;
    v56 = 2112;
    v57 = destinationCopy;
    _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to send message to destination: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
  if (handlerCopy)
  {
    serverTransport2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication error." reason:@"No valid connection for destination" suggestion:0];
    (*(handlerCopy + 2))(handlerCopy, 0, serverTransport2);
LABEL_27:
  }

LABEL_28:
}

void __76__HMDHTTPMessageTransport__sendMessage_destination_timeout_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      *buf = 138543618;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to send message to destination: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __76__HMDHTTPMessageTransport__sendMessage_destination_timeout_responseHandler___block_invoke_76;
    v18 = &unk_2797358C8;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v19 = *(a1 + 32);
    v20 = v12;
    [v13 confirmWithTimeout:&v15 completionHandler:0.0];
    if (*(a1 + 64))
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication error." reason:@"No valid connection for destination" suggestion:{0, v15, v16, v17, v18, v19}];
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    [v5 sendMessage:*(a1 + 56) timeout:*(a1 + 64) completionHandler:*(a1 + 72)];
  }
}

void __76__HMDHTTPMessageTransport__sendMessage_destination_timeout_responseHandler___block_invoke_76(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Completed confirmation for device, %@, with error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = messageCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

void __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke(id *a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (!v4)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = a1[5];
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [a1[4] identifier];
      v28 = [v27 UUIDString];
      v29 = [a1[4] destination];
      *buf = 138543874;
      v50 = v26;
      v51 = 2112;
      v52 = v28;
      v53 = 2112;
      v54 = v29;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message, %@, invalid destination: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter." reason:@"Invalid destination." suggestion:0];
    v30 = a1[6];
    if (v30)
    {
      v30[2](v30, v7);
    }

    v31 = [a1[4] responseHandler];

    if (v31)
    {
      v32 = [a1[4] responseHandler];
      (v32)[2](v32, v7, 0);
    }

    goto LABEL_31;
  }

  v5 = [a1[5] currentDevice];

  if (v5)
  {
    v6 = [a1[5] remoteMessageFromMessage:a1[4]];
    v48 = 0;
    v41 = [HMDRemoteMessageSerialization dictionaryForMessage:v6 error:&v48];
    v7 = v48;
    v8 = objc_autoreleasePoolPush();
    v9 = a1[5];
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v41)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [a1[4] identifier];
        v14 = [v13 UUIDString];
        *buf = 138543618;
        v50 = v12;
        v51 = 2112;
        v52 = v14;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Sending request message with identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v15 = 6.0;
      if (![v6 type])
      {
        [v6 timeout];
        if (v16 > 0.0)
        {
          [v6 timeout];
          v15 = v17;
        }
      }

      v18 = [HMDHTTPDevice alloc];
      v19 = [v4 device];
      v20 = [v19 identifier];
      v21 = [(HMDHTTPDevice *)v18 initWithIdentifier:v20];

      objc_initWeak(buf, a1[5]);
      v22 = a1[5];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke_63;
      v42[3] = &unk_279723328;
      v46 = a1[6];
      objc_copyWeak(&v47, buf);
      v43 = a1[4];
      v44 = v6;
      v45 = v4;
      [v22 _sendMessage:v41 destination:v21 timeout:v42 responseHandler:v15];

      objc_destroyWeak(&v47);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        v38 = a1[4];
        *buf = 138543874;
        v50 = v37;
        v51 = 2112;
        v52 = v38;
        v53 = 2112;
        v54 = v7;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize message, %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v39 = a1[6];
      if (v39)
      {
        v39[2](v39, v7);
      }

      v40 = [a1[4] responseHandler];

      if (!v40)
      {
        goto LABEL_30;
      }

      v21 = [a1[4] responseHandler];
      (v21[1].super.super.isa)(v21, v7, 0);
    }

LABEL_30:
    goto LABEL_31;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = a1[5];
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543362;
    v50 = v36;
    _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@No device for HTTP Client (currentDevice==nil). ", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v33);
  if (a1[6])
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not found." reason:@"Unable to find device." suggestion:0];
    (*(a1[6] + 2))();
LABEL_31:
  }
}

void __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v6)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [*(a1 + 32) identifier];
        v15 = [v14 UUIDString];
        *buf = 138543874;
        v58 = v13;
        v59 = 2112;
        v60 = v15;
        v61 = 2112;
        v62 = v6;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message, %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 32) identifier];
        v18 = [v17 UUIDString];
        *buf = 138543618;
        v58 = v16;
        v59 = 2112;
        v60 = v18;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully sent message with identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v19 = +[HMDMetricsManager sharedLogEventSubmitter];
      v20 = +[HMDRemoteMessageLogEvent sentRemoteMessage:transportType:](HMDRemoteMessageLogEvent, "sentRemoteMessage:transportType:", *(a1 + 40), [v10 transportType]);
      [v19 submitLogEvent:v20];
    }

    v21 = [*(a1 + 40) type];
    v22 = 0;
    if (!v6 && !v21)
    {
      v56 = 0;
      v23 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:v5 error:&v56];
      v24 = v56;
      v25 = v24;
      if (v23)
      {
        v50 = v24;
        v26 = [v23 messagePayload];
        v22 = [v26 mutableCopy];

        v27 = [HMDRemoteDeviceMessageDestination alloc];
        v28 = [v23 destination];
        v29 = [v28 target];
        v30 = [*(a1 + 48) device];
        v31 = [(HMDRemoteDeviceMessageDestination *)v27 initWithTarget:v29 device:v30];

        [v23 setDestination:v31];
        v49 = v31;
        v32 = [(HMDRemoteDeviceMessageDestination *)v31 device];
        v33 = [v32 remoteDestinationString];
        [v22 setObject:v33 forKeyedSubscript:@"kIDSMessageSourceIDKey"];

        v34 = [v5 hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
        if (v34)
        {
          v35 = MEMORY[0x277CCAAC8];
          v36 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
          v55 = 0;
          v6 = [v35 _strictlyUnarchivedObjectOfClasses:v36 fromData:v34 error:&v55];
          v37 = v55;

          if (!v6)
          {
            v38 = objc_autoreleasePoolPush();
            v48 = v10;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v40 = v47 = v38;
              *buf = 138543618;
              v58 = v40;
              v59 = 2112;
              v60 = v37;
              _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize error with error: %@", buf, 0x16u);

              v38 = v47;
            }

            objc_autoreleasePoolPop(v38);
            v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 description:@"Generic error." reason:@"Failed to deserialize remote error." suggestion:0 underlyingError:v37];
          }

          [v22 setObject:v6 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
        }

        else
        {
          v6 = 0;
        }

        v25 = v50;
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        v42 = v10;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543874;
          v58 = v44;
          v59 = 2112;
          v60 = v5;
          v61 = 2112;
          v62 = v25;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize response, %@, with error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v41);
        v6 = v25;
        v22 = 0;
      }
    }

    v45 = [*(a1 + 32) responseHandler];

    if (v45)
    {
      v46 = v10[11];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke_74;
      block[3] = &unk_279734960;
      v52 = *(a1 + 32);
      v53 = v6;
      v54 = v22;
      dispatch_async(v46, block);
    }
  }
}

void __57__HMDHTTPMessageTransport_sendMessage_completionHandler___block_invoke_74(uint64_t a1)
{
  v2 = [*(a1 + 32) responseHandler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

- (BOOL)canSendMessage:(id)message
{
  messageCopy = message;
  destination = [messageCopy destination];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([messageCopy restriction] & 2) != 0 && (-[HMDHTTPMessageTransport currentDevice](self, "currentDevice"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    destination2 = [messageCopy destination];
    device = [destination2 device];

    v10 = [HMDHTTPDevice alloc];
    identifier = [device identifier];
    v12 = [(HMDHTTPDevice *)v10 initWithIdentifier:identifier];

    v13 = [(HMDHTTPMessageTransport *)self isDeviceConnected:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isDeviceConnected:(id)connected
{
  v21 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  v5 = [(HMDHTTPMessageTransport *)self clientTransportForDevice:connectedCopy];
  if ([v5 isReachable])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v9;
      v10 = "%{public}@Can send, client is reachable";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, v10, &v19, 0xCu);
    }
  }

  else
  {
    v11 = [(HMDHTTPMessageTransport *)self _serviceForDevice:connectedCopy];

    if (v11)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v9;
        v10 = "%{public}@Can send, device is advertising";
        goto LABEL_10;
      }
    }

    else
    {
      serverTransport = [(HMDHTTPMessageTransport *)self serverTransport];
      devices = [serverTransport devices];
      v15 = [devices containsObject:connectedCopy];

      if (!v15)
      {
        v17 = 0;
        goto LABEL_12;
      }

      v6 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v9;
        v10 = "%{public}@Can send, device is connected";
        goto LABEL_10;
      }
    }
  }

  objc_autoreleasePoolPop(v6);
  v17 = 1;
LABEL_12:

  return v17;
}

- (id)logIdentifier
{
  currentDevice = [(HMDHTTPMessageTransport *)self currentDevice];
  v3 = currentDevice;
  if (currentDevice)
  {
    identifier = [currentDevice identifier];
    uUIDString = [identifier UUIDString];
  }

  else
  {
    uUIDString = @"Unknown";
  }

  return uUIDString;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  currentDevice = [(HMDHTTPMessageTransport *)self currentDevice];
  identifier = [currentDevice identifier];
  uUIDString = [identifier UUIDString];
  v10 = uUIDString;
  if (pointer)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
    v12 = [v5 stringWithFormat:@"<%@ %@, Identifier = %@>", shortDescription, v10, v11];
  }

  else
  {
    v12 = [v5 stringWithFormat:@"<%@ %@, Identifier = %@>", shortDescription, uUIDString, &stru_286509E58];
  }

  return v12;
}

- (id)shortDescription
{
  logIdentifier = [(HMDHTTPMessageTransport *)self logIdentifier];
  if (logIdentifier)
  {
    v3 = MEMORY[0x277CCACA8];
    shortDescription = [objc_opt_class() shortDescription];
    shortDescription2 = [v3 stringWithFormat:@"%@ %@", shortDescription, logIdentifier];
  }

  else
  {
    shortDescription2 = [objc_opt_class() shortDescription];
  }

  return shortDescription2;
}

- (HMDHTTPMessageTransport)initWithAccountRegistry:(id)registry clientBrowser:(id)browser
{
  browserCopy = browser;
  v19.receiver = self;
  v19.super_class = HMDHTTPMessageTransport;
  v8 = [(HMDRemoteMessageTransport *)&v19 initWithAccountRegistry:registry];
  if (v8)
  {
    v9 = HMDispatchQueueNameString();
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    queue = v8->_queue;
    v8->_queue = v12;

    array = [MEMORY[0x277CBEB18] array];
    clientTransports = v8->_clientTransports;
    v8->_clientTransports = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    txtRecord = v8->_txtRecord;
    v8->_txtRecord = dictionary;

    objc_storeStrong(&v8->_clientBrowser, browser);
    [(HMFNetServiceBrowser *)v8->_clientBrowser setDelegate:v8];
    [(HMFNetServiceBrowser *)v8->_clientBrowser setShouldCache:1];
  }

  return v8;
}

- (HMDHTTPMessageTransport)initWithAccountRegistry:(id)registry
{
  v4 = MEMORY[0x277D0F878];
  registryCopy = registry;
  v6 = [[v4 alloc] initWithDomain:@"local." serviceType:@"_homekit._tcp."];
  v7 = [(HMDHTTPMessageTransport *)self initWithAccountRegistry:registryCopy clientBrowser:v6];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_14508 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_14508, &__block_literal_global_40_14509);
  }

  v3 = logCategory__hmf_once_v1_14510;

  return v3;
}

uint64_t __38__HMDHTTPMessageTransport_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_14510;
  logCategory__hmf_once_v1_14510 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (BOOL)protocolVersionSupportsExtendedMessages:(id)messages
{
  messagesCopy = messages;
  if (messagesCopy)
  {
    if (protocolVersionSupportsExtendedMessages__onceToken != -1)
    {
      dispatch_once(&protocolVersionSupportsExtendedMessages__onceToken, &__block_literal_global_22);
    }

    v4 = [messagesCopy isAtLeastVersion:protocolVersionSupportsExtendedMessages__extendedMessageProtocolVersion];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __67__HMDHTTPMessageTransport_protocolVersionSupportsExtendedMessages___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:1 minorVersion:1 updateVersion:0];
  v1 = protocolVersionSupportsExtendedMessages__extendedMessageProtocolVersion;
  protocolVersionSupportsExtendedMessages__extendedMessageProtocolVersion = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (BOOL)shouldHostMessageServer
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  if ([v2 isResidentCapable])
  {
    supportsKeyTransferServer = 1;
  }

  else
  {
    v4 = +[HMDDeviceCapabilities deviceCapabilities];
    supportsKeyTransferServer = [v4 supportsKeyTransferServer];
  }

  return supportsKeyTransferServer;
}

+ (HMFVersion)protocolVersion
{
  if (protocolVersion_onceToken != -1)
  {
    dispatch_once(&protocolVersion_onceToken, &__block_literal_global_14517);
  }

  v3 = protocolVersion_protocolVersion;

  return v3;
}

uint64_t __42__HMDHTTPMessageTransport_protocolVersion__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:1 minorVersion:1 updateVersion:0];
  v1 = protocolVersion_protocolVersion;
  protocolVersion_protocolVersion = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end