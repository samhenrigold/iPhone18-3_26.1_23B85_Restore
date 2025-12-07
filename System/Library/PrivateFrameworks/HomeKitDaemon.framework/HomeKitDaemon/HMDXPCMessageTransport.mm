@interface HMDXPCMessageTransport
+ (HMDXPCMessageTransport)accessorySetupTransport;
+ (HMDXPCMessageTransport)defaultTransport;
+ (id)logCategory;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (HMDXPCMessageTransport)initWithConfiguration:(id)configuration;
- (HMDXPCMessageTransport)initWithConfiguration:(id)configuration listener:(id)listener processMonitor:(id)monitor appProtectionGuard:(id)guard;
- (NSArray)connections;
- (NSDictionary)stateDump;
- (OS_dispatch_queue)queue;
- (id)logIdentifier;
- (void)connectionDidActivate:(id)activate;
- (void)connectionDidDeactivate:(id)deactivate;
- (void)connectionDidInvalidate:(id)invalidate;
- (void)connectionDidStart:(id)start;
- (void)handleProcessStateDidChangeNotification:(id)notification;
- (void)messageTransport:(id)transport didReceiveMessage:(id)message;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)start;
- (void)stop;
@end

@implementation HMDXPCMessageTransport

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_104594 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_104594, &__block_literal_global_114_104595);
  }

  v3 = logCategory__hmf_once_v10_104596;

  return v3;
}

- (id)logIdentifier
{
  if (self)
  {
    self = self->_configuration;
  }

  return [(HMDXPCMessageTransport *)self machServiceName];
}

- (OS_dispatch_queue)queue
{
  if (self)
  {
    self = self->_configuration;
  }

  return [(HMDXPCMessageTransport *)self queue];
}

- (NSArray)connections
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    mutableConnections = self->_mutableConnections;
  }

  else
  {
    mutableConnections = 0;
  }

  v4 = mutableConnections;
  allObjects = [(NSMutableSet *)v4 allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v52 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = connectionCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@New XPC connection requested: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  clientConnectionFactory = [(HMDXPCMessageTransport *)selfCopy clientConnectionFactory];
  queue = [(HMDXPCMessageTransport *)selfCopy queue];
  v13 = (clientConnectionFactory)[2](clientConnectionFactory, connectionCopy, queue);

  if (selfCopy)
  {
    configuration = selfCopy->_configuration;
  }

  else
  {
    configuration = 0;
  }

  requiredEntitlements = [(HMXPCMessageTransportConfiguration *)configuration requiredEntitlements];
  entitlements = [v13 entitlements];
  v17 = entitlements & requiredEntitlements;
  if ((entitlements & requiredEntitlements) != requiredEntitlements)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = HMXPCClientEntitlementsToComponents(v17 ^ requiredEntitlements);
      *buf = 138543874;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v25;
      *&buf[22] = 2112;
      *&buf[24] = v13;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Rejecting connection missing entitlements %@: %@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  if (selfCopy)
  {
    v18 = selfCopy->_configuration;
  }

  else
  {
    v18 = 0;
  }

  if (![(HMXPCMessageTransportConfiguration *)v18 requiresHomeDataAccess])
  {
    goto LABEL_22;
  }

  if (([v13 isAuthorizedForHomeDataAccess] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "clientPid")}];
      *buf = 138543618;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v28;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Rejecting connection from client with PID %@ because it is not authorized for Home data access", buf, 0x16u);
    }

LABEL_16:

    objc_autoreleasePoolPop(v21);
    v26 = 0;
    goto LABEL_29;
  }

  if (selfCopy)
  {
    appProtectionGuard = selfCopy->_appProtectionGuard;
  }

  else
  {
    appProtectionGuard = 0;
  }

  v20 = appProtectionGuard;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(buf, 0, 32);
  }

  v29 = *MEMORY[0x277CCFE40];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke;
  v49[3] = &unk_27867CBC8;
  v49[4] = selfCopy;
  v50 = v13;
  [(HMDAppProtectionGuard *)v20 initiateAuthenticationForApplicationWithBundleIdentifier:v29 onBehalfOfProcessWithAuditToken:buf completion:v49];

LABEL_22:
  [v13 setDelegate:selfCopy];
  [connectionCopy setExportedObject:v13];
  if (selfCopy)
  {
    [connectionCopy setExportedInterface:selfCopy->_exportedInterface];
    remoteObjectInterface = selfCopy->_remoteObjectInterface;
  }

  else
  {
    [connectionCopy setExportedInterface:0];
    remoteObjectInterface = 0;
  }

  [connectionCopy setRemoteObjectInterface:remoteObjectInterface];
  processMonitor = [(HMDXPCMessageTransport *)selfCopy processMonitor];
  v32 = [processMonitor processInfoForXPCConnection:connectionCopy];

  [v13 setProcessInfo:v32];
  os_unfair_lock_lock_with_options();
  if (selfCopy)
  {
    mutableConnections = selfCopy->_mutableConnections;
  }

  else
  {
    mutableConnections = 0;
  }

  v34 = mutableConnections;
  [(NSMutableSet *)v34 addObject:v13];

  os_unfair_lock_unlock(&selfCopy->_lock);
  objc_initWeak(&location, selfCopy);
  objc_initWeak(&from, v13);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_120;
  v44[3] = &unk_278681288;
  objc_copyWeak(&v45, &location);
  objc_copyWeak(&v46, &from);
  [connectionCopy setInterruptionHandler:v44];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_121;
  v41[3] = &unk_278681288;
  objc_copyWeak(&v42, &location);
  objc_copyWeak(&v43, &from);
  [connectionCopy setInvalidationHandler:v41];
  v35 = objc_autoreleasePoolPush();
  v36 = selfCopy;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v38;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Resuming new XPC connection: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v35);
  [connectionCopy resume];
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v26 = 1;
LABEL_29:

  return v26;
}

void __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v12 = "%{public}@Successfully initiated authentication for app protection for connection: %@";
      v13 = v9;
      v14 = OS_LOG_TYPE_DEBUG;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v16 = *(a1 + 40);
    v17 = 138543874;
    v18 = v10;
    v19 = 2112;
    v20 = v16;
    v21 = 2112;
    v22 = v5;
    v12 = "%{public}@Failed to initiate authentication for app protection for connection %@: %@";
    v13 = v9;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v6);
}

void __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_120(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = objc_autoreleasePoolPush();
  v5 = WeakRetained;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Daemon received interruption for %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_121(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = objc_autoreleasePoolPush();
  v5 = WeakRetained;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v7;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Daemon received invalidation for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if (v5 && v3)
  {
    os_unfair_lock_lock_with_options();
    v8 = *(v5 + 7);
    [v8 removeObject:v3];

    v9 = *(v5 + 7);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_122;
    v15[3] = &unk_278678038;
    v10 = v3;
    v16 = v10;
    v11 = [v9 na_any:v15];

    os_unfair_lock_unlock(v5 + 4);
    [v10 invalidate];
    v12 = [v10 processInfo];
    v13 = v12;
    if ((v11 & 1) == 0 && ([v12 shouldMonitor] & 1) == 0)
    {
      v14 = [v5 processMonitor];
      [v14 removeProcess:v13];
    }
  }
}

BOOL __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_122(uint64_t a1, void *a2)
{
  v3 = [a2 processInfo];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) processInfo];
  v6 = v4 == [v5 identifier];

  return v6;
}

- (void)connectionDidInvalidate:(id)invalidate
{
  v9[1] = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  queue = [(HMDXPCMessageTransport *)self queue];
  dispatch_assert_queue_V2(queue);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = @"connection";
  v9[0] = invalidateCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"HMDXPCClientConnectionDidInvalidateNotification" object:self userInfo:v7];
}

- (void)connectionDidDeactivate:(id)deactivate
{
  v9[1] = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  queue = [(HMDXPCMessageTransport *)self queue];
  dispatch_assert_queue_V2(queue);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = @"connection";
  v9[0] = deactivateCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"HMDXPCClientConnectionDidDeactivateNotification" object:self userInfo:v7];
}

- (void)connectionDidActivate:(id)activate
{
  v9[1] = *MEMORY[0x277D85DE8];
  activateCopy = activate;
  queue = [(HMDXPCMessageTransport *)self queue];
  dispatch_assert_queue_V2(queue);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = @"connection";
  v9[0] = activateCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"HMDXPCClientConnectionDidActivateNotification" object:self userInfo:v7];
}

- (void)connectionDidStart:(id)start
{
  v9[1] = *MEMORY[0x277D85DE8];
  startCopy = start;
  queue = [(HMDXPCMessageTransport *)self queue];
  dispatch_assert_queue_V2(queue);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = @"connection";
  v9[0] = startCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"HMDXPCClientConnectionDidStartNotification" object:self userInfo:v7];
}

- (void)messageTransport:(id)transport didReceiveMessage:(id)message
{
  messageCopy = message;
  transportCopy = transport;
  delegate = [(HMFMessageTransport *)self delegate];
  [delegate messageTransport:transportCopy didReceiveMessage:messageCopy];
}

- (void)handleProcessStateDidChangeNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  queue = [(HMDXPCMessageTransport *)self queue];
  dispatch_assert_queue_V2(queue);

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"processInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  connections = [(HMDXPCMessageTransport *)self connections];
  v11 = [connections countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(connections);
      }

      v15 = *(*(&v17 + 1) + 8 * v14);
      processInfo = [v15 processInfo];

      if (processInfo != v9)
      {
        break;
      }

      [v15 handleProcessStateDidChange];
      if (v12 == ++v14)
      {
        v12 = [connections countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  v87 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  v8 = MEMORY[0x277CBEB18];
  connections = [(HMDXPCMessageTransport *)self connections];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(connections, "count")}];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  connections2 = [(HMDXPCMessageTransport *)self connections];
  v12 = [connections2 countByEnumeratingWithState:&v66 objects:v86 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v67;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v67 != v15)
        {
          objc_enumerationMutation(connections2);
        }

        v17 = *(*(&v66 + 1) + 8 * i);
        if ([v17 sendMessage:messageCopy error:0])
        {
          ++v14;
        }

        else
        {
          shortDescription = [v17 shortDescription];
          [v10 addObject:shortDescription];
        }
      }

      v13 = [connections2 countByEnumeratingWithState:&v66 objects:v86 count:16];
    }

    while (v13);

    if (v14)
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      v65 = handlerCopy;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v63 = HMFGetLogIdentifier();
        name = [messageCopy name];
        *buf = 0;
        *&buf[8] = 0;
        identifier = [messageCopy identifier];

        if (identifier)
        {
          identifier2 = [messageCopy identifier];
          [identifier2 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v74 = *buf;
        *buf = 0;
        *&buf[8] = 0;
        destination = [messageCopy destination];
        target = [destination target];

        if (target)
        {
          destination2 = [messageCopy destination];
          target2 = [destination2 target];
          [target2 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v73 = *buf;
        connections3 = [(HMDXPCMessageTransport *)selfCopy connections];
        v44 = [connections3 count];
        sendPolicy = [messageCopy sendPolicy];
        *buf = 138545410;
        *&buf[4] = v63;
        *&buf[12] = 2114;
        *&buf[14] = name;
        v76 = 1042;
        *v77 = 16;
        *&v77[4] = 2098;
        *&v77[6] = &v74;
        *&v77[14] = 1040;
        *&v77[16] = 16;
        v78 = 2096;
        v79 = &v73;
        v80 = 2050;
        v81 = v14;
        v82 = 2050;
        v83 = v44;
        v84 = 2114;
        v85 = sendPolicy;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Sent message %{public}@(%{public,uuid_t}.16P) with target %{uuid_t}.16P to %{public}lu/%{public}lu clients with message send policy %{public}@", buf, 0x54u);

        handlerCopy = v65;
        v19 = v61;
      }

      objc_autoreleasePoolPop(v19);
      v46 = objc_autoreleasePoolPush();
      v47 = selfCopy;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v49 = HMFGetLogIdentifier();
        shortDescription2 = [messageCopy shortDescription];
        messagePayload = [messageCopy messagePayload];
        v52 = MEMORY[0x277CBEB98];
        v53 = *MEMORY[0x277CD1FD8];
        v72[0] = @"kAuthorizationDataKey";
        v72[1] = v53;
        v54 = *MEMORY[0x277CD2620];
        v72[2] = *MEMORY[0x277CD1FC8];
        v72[3] = v54;
        v55 = *MEMORY[0x277CD2758];
        v72[4] = *MEMORY[0x277CD2040];
        v72[5] = v55;
        v56 = *MEMORY[0x277CD23D0];
        v72[6] = *MEMORY[0x277CD27B0];
        v72[7] = v56;
        v72[8] = *MEMORY[0x277CD0D30];
        v72[9] = @"kAccessoryInfoSerialNumberKey";
        v72[10] = @"kUserIDKey";
        v72[11] = @"kUserIDsKey";
        v72[12] = @"kUserDisplayNameKey";
        v72[13] = @"kUserNamesKey";
        [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:14];
        v57 = v64 = v46;
        v58 = [v52 setWithArray:v57];
        v59 = [messagePayload secureDescriptionWithBlacklistKeys:v58];
        *buf = 138544130;
        *&buf[4] = v49;
        *&buf[12] = 2114;
        *&buf[14] = shortDescription2;
        v76 = 2114;
        *v77 = v59;
        *&v77[8] = 2114;
        *&v77[10] = v10;
        _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_DEBUG, "%{public}@Sent message %{public}@ with payload: %{public}@ (skipped ineligible clients: %{public}@)", buf, 0x2Au);

        handlerCopy = v65;
        v46 = v64;
      }

      objc_autoreleasePoolPop(v46);
      v60 = _Block_copy(handlerCopy);
      v36 = v60;
      if (v60)
      {
        (*(v60 + 2))(v60, 0);
      }

      goto LABEL_36;
    }
  }

  else
  {
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    name2 = [messageCopy name];
    *buf = 0;
    *&buf[8] = 0;
    identifier3 = [messageCopy identifier];

    if (identifier3)
    {
      identifier4 = [messageCopy identifier];
      [identifier4 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v71 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    destination3 = [messageCopy destination];
    target3 = [destination3 target];

    if (target3)
    {
      destination4 = [messageCopy destination];
      target4 = [destination4 target];
      [target4 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v70 = *buf;
    sendPolicy2 = [messageCopy sendPolicy];
    *buf = 138544898;
    *&buf[4] = v27;
    *&buf[12] = 2114;
    *&buf[14] = name2;
    v76 = 1042;
    *v77 = 16;
    *&v77[4] = 2098;
    *&v77[6] = &v71;
    *&v77[14] = 1040;
    *&v77[16] = 16;
    v78 = 2096;
    v79 = &v70;
    v80 = 2114;
    v81 = sendPolicy2;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Not sending message %{public}@(%{public,uuid_t}.16P) with target %{uuid_t}.16P because no clients are eligible for send policy: %{public}@", buf, 0x40u);
  }

  objc_autoreleasePoolPop(v24);
  v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Failed to send message." reason:@"No eligible clients" suggestion:0];
  v37 = _Block_copy(handlerCopy);
  v38 = v37;
  if (v37)
  {
    (*(v37 + 2))(v37, v36);
  }

LABEL_36:
}

- (NSDictionary)stateDump
{
  v7[1] = *MEMORY[0x277D85DE8];
  connections = [(HMDXPCMessageTransport *)self connections];
  v3 = [connections na_map:&__block_literal_global_97];

  v6 = @"Connections";
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)stop
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping XPC message transport", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (selfCopy)
  {
    listener = selfCopy->_listener;
  }

  else
  {
    listener = 0;
  }

  [(HMDXPCListener *)listener stop];
}

- (void)start
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting XPC message transport", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = HMDProcessMonitorProcessStateDidChangeNotification;
  processMonitor = [(HMDXPCMessageTransport *)selfCopy processMonitor];
  [defaultCenter addObserver:selfCopy selector:sel_handleProcessStateDidChangeNotification_ name:v8 object:processMonitor];

  if (selfCopy)
  {
    listener = selfCopy->_listener;
  }

  else
  {
    listener = 0;
  }

  [(HMDXPCListener *)listener setDelegate:selfCopy];
  queue = [(HMDXPCMessageTransport *)selfCopy queue];
  if (selfCopy)
  {
    [(HMDXPCListener *)selfCopy->_listener setQueue:queue];

    [(HMDXPCListener *)selfCopy->_listener start];
    configuration = selfCopy->_configuration;
  }

  else
  {
    [0 setQueue:queue];

    [0 start];
    configuration = 0;
  }

  serverStartNotification = [(HMXPCMessageTransportConfiguration *)configuration serverStartNotification];
  notify_post([serverStartNotification UTF8String]);
}

- (HMDXPCMessageTransport)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v5 = configurationCopy;
    v6 = [HMDXPCListener alloc];
    v7 = objc_alloc(MEMORY[0x277CCAE98]);
    machServiceName = [v5 machServiceName];
    v9 = [v7 initWithMachServiceName:machServiceName];
    v10 = [(HMDXPCListener *)v6 initWithXPCListener:v9];

    v11 = [HMDProcessMonitor alloc];
    queue = [v5 queue];
    v13 = [(HMDProcessMonitor *)v11 initWithQueue:queue];

    v14 = objc_alloc_init(HMDAppProtectionGuard);
    v15 = [(HMDXPCMessageTransport *)self initWithConfiguration:v5 listener:v10 processMonitor:v13 appProtectionGuard:v14];

    return v15;
  }

  else
  {
    v17 = _HMFPreconditionFailure();
    return [(HMDXPCMessageTransport *)v17 initWithConfiguration:v18 listener:v19 processMonitor:v20 appProtectionGuard:v21, v22];
  }
}

- (HMDXPCMessageTransport)initWithConfiguration:(id)configuration listener:(id)listener processMonitor:(id)monitor appProtectionGuard:(id)guard
{
  configurationCopy = configuration;
  listenerCopy = listener;
  monitorCopy = monitor;
  guardCopy = guard;
  if (!configurationCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!listenerCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!monitorCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = guardCopy;
  if (!guardCopy)
  {
LABEL_11:
    v26 = _HMFPreconditionFailure();
    return __91__HMDXPCMessageTransport_initWithConfiguration_listener_processMonitor_appProtectionGuard___block_invoke(v26, v27, v28);
  }

  v29.receiver = self;
  v29.super_class = HMDXPCMessageTransport;
  v15 = [(HMDXPCMessageTransport *)&v29 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(configurationCopy);
    configuration = v15->_configuration;
    v15->_configuration = v16;

    objc_storeStrong(&v15->_listener, listener);
    objc_storeStrong(&v15->_processMonitor, monitor);
    objc_storeStrong(&v15->_appProtectionGuard, guard);
    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mutableConnections = v15->_mutableConnections;
    v15->_mutableConnections = v18;

    v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283EEA8D8];
    exportedInterface = v15->_exportedInterface;
    v15->_exportedInterface = v20;

    v22 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284016948];
    remoteObjectInterface = v15->_remoteObjectInterface;
    v15->_remoteObjectInterface = v22;

    clientConnectionFactory = v15->_clientConnectionFactory;
    v15->_clientConnectionFactory = &__block_literal_global_86_104574;
  }

  return v15;
}

HMDXPCClientConnection *__91__HMDXPCMessageTransport_initWithConfiguration_listener_processMonitor_appProtectionGuard___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[HMDXPCClientConnection alloc] initWithConnection:v5 queue:v4];

  return v6;
}

void __37__HMDXPCMessageTransport_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v10_104596;
  logCategory__hmf_once_v10_104596 = v0;
}

+ (HMDXPCMessageTransport)accessorySetupTransport
{
  if (accessorySetupTransport_onceToken != -1)
  {
    dispatch_once(&accessorySetupTransport_onceToken, &__block_literal_global_16_104601);
  }

  v3 = accessorySetupTransport_accessorySetupTransport;

  return v3;
}

void __49__HMDXPCMessageTransport_accessorySetupTransport__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CD1CA0]);
  v3 = [v0 initWithMachServiceName:*MEMORY[0x277CD15A0]];
  [v3 setRequiredEntitlements:1];
  [v3 setRequiresHomeDataAccess:0];
  v1 = [[HMDXPCMessageTransport alloc] initWithConfiguration:v3];
  v2 = accessorySetupTransport_accessorySetupTransport;
  accessorySetupTransport_accessorySetupTransport = v1;
}

+ (HMDXPCMessageTransport)defaultTransport
{
  if (defaultTransport_onceToken != -1)
  {
    dispatch_once(&defaultTransport_onceToken, &__block_literal_global_104605);
  }

  v3 = defaultTransport_defaultTransport;

  return v3;
}

void __42__HMDXPCMessageTransport_defaultTransport__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CD1CA0]);
  v3 = [v0 initWithMachServiceName:*MEMORY[0x277CD15C8]];
  [v3 setRequiredEntitlements:1];
  [v3 setRequiresHomeDataAccess:1];
  v1 = [[HMDXPCMessageTransport alloc] initWithConfiguration:v3];
  v2 = defaultTransport_defaultTransport;
  defaultTransport_defaultTransport = v1;
}

@end