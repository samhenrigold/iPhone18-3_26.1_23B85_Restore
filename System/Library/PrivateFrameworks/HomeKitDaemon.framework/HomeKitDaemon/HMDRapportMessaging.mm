@interface HMDRapportMessaging
+ (id)logCategory;
+ (id)sharedInstance;
- (BOOL)isRapportDeviceDiscoveredWithIdentifier:(id)identifier;
- (HMDRapportMessaging)initWithClientFactory:(id)factory;
- (HMDRapportMessagingReachabilityDelegate)reachabilityDelegate;
- (id)_clientForIDSIdentifier:(id)identifier withDevice:(id)device;
- (id)_createRapportClientForDevice:(id)device;
- (void)_completeQuededRequestsOnWorkQueue:(id)queue;
- (void)_configureDiscoveryClientWithCompletion:(id)completion forRequestIDs:(id)ds;
- (void)_handleRequest:(id)request forTopic:(id)topic options:(id)options responseHandler:(id)handler;
- (void)_invalidateDestinationDeviceWithIDSIdentifier:(id)identifier;
- (void)_queueRequest:(id)request forTopic:(id)topic options:(id)options responseHandler:(id)handler;
- (void)_updateDevice:(id)device reachable:(BOOL)reachable;
- (void)configureDiscoveryClientForRequestIDs:(id)ds withCompletion:(id)completion;
- (void)registerRequestHandlerForRequestID:(id)d withRequestHandler:(id)handler;
- (void)sendRequest:(id)request requestID:(id)d destinationID:(id)iD options:(id)options responseHandler:(id)handler;
@end

@implementation HMDRapportMessaging

- (HMDRapportMessagingReachabilityDelegate)reachabilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reachabilityDelegate);

  return WeakRetained;
}

- (void)_updateDevice:(id)device reachable:(BOOL)reachable
{
  deviceCopy = device;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDRapportMessaging__updateDevice_reachable___block_invoke;
  block[3] = &unk_278688BD0;
  v10 = deviceCopy;
  selfCopy = self;
  reachableCopy = reachable;
  v8 = deviceCopy;
  dispatch_async(workQueue, block);
}

void __47__HMDRapportMessaging__updateDevice_reachable___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v3 = [*(a1 + 32) idsDeviceIdentifier];
  v4 = [v2 initWithUUIDString:v3];

  if (v4)
  {
    v5 = [*(a1 + 40) reachabilityDelegate];
    [v5 rapportMessaging:*(a1 + 40) idsIdentifier:v4 didAppearReachable:*(a1 + 48)];

    if (*(a1 + 48) == 1)
    {
      v6 = *(a1 + 40);
      v8 = @"HMDHomeDeviceIDSIdentifierKey";
      v9[0] = v4;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      logAndPostNotification(@"HMDHomeDeviceBecameReachableOverRapport", v6, v7);
    }
  }
}

- (void)_invalidateDestinationDeviceWithIDSIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  os_unfair_lock_lock_with_options();
  if (self)
  {
    deviceClients = self->_deviceClients;
  }

  else
  {
    deviceClients = 0;
  }

  v7 = deviceClients;
  v8 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:identifierCopy];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = identifierCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Invalidating Rapport client for device: %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if (self)
    {
      v13 = selfCopy->_deviceClients;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [(NSMutableDictionary *)v14 removeObjectForKey:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  [v8 invalidate];
}

- (id)_createRapportClientForDevice:(id)device
{
  v32 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v8;
    v30 = 2112;
    v31 = deviceCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Creating Rapport client for device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (selfCopy)
  {
    clientFactory = selfCopy->_clientFactory;
  }

  else
  {
    clientFactory = 0;
  }

  newCompanionLinkClient = [(HMDRapportMessagingClientFactory *)clientFactory newCompanionLinkClient];
  [newCompanionLinkClient setDestinationDevice:deviceCopy];
  [newCompanionLinkClient setControlFlags:0x20000400800];
  [newCompanionLinkClient setServiceType:@"com.apple.home.messaging"];
  if (selfCopy)
  {
    workQueue = selfCopy->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  [newCompanionLinkClient setDispatchQueue:workQueue];
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  objc_initWeak(buf, selfCopy);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke;
  v24[3] = &unk_278685F38;
  objc_copyWeak(&v27, buf);
  v13 = idsDeviceIdentifier;
  v25 = v13;
  v14 = deviceCopy;
  v26 = v14;
  [newCompanionLinkClient setDisconnectHandler:v24];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke_124;
  v21[3] = &unk_278686B48;
  objc_copyWeak(&v23, buf);
  v15 = v14;
  v22 = v15;
  [newCompanionLinkClient setInterruptionHandler:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke_2;
  v18[3] = &unk_278686B48;
  objc_copyWeak(&v20, buf);
  v16 = v15;
  v19 = v16;
  [newCompanionLinkClient setInvalidationHandler:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);

  return newCompanionLinkClient;
}

void __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Rapport client disconnected for device: %{public}@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [*(a1 + 40) idsDeviceIdentifier];
  [v4 _invalidateDestinationDeviceWithIDSIdentifier:v8];
}

void __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke_124(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) idsDeviceIdentifier];
  [WeakRetained _invalidateDestinationDeviceWithIDSIdentifier:v2];
}

void __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 32) idsDeviceIdentifier];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Rapport client invalidated for device: %{public}@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_clientForIDSIdentifier:(id)identifier withDevice:(id)device
{
  identifierCopy = identifier;
  deviceCopy = device;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v9 = deviceCopy;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    deviceClients = self->_deviceClients;
  }

  else
  {
    deviceClients = 0;
  }

  v11 = deviceClients;
  v12 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:identifierCopy];

  if (v12)
  {
    v13 = v12;
    os_unfair_lock_unlock(&self->_lock);
    v14 = v9;
  }

  else
  {
    newCompanionLinkDevice = v9;
    if (!v9)
    {
      if (self)
      {
        clientFactory = self->_clientFactory;
      }

      else
      {
        clientFactory = 0;
      }

      v17 = clientFactory;
      newCompanionLinkDevice = [(HMDRapportMessagingClientFactory *)v17 newCompanionLinkDevice];

      [newCompanionLinkDevice setIdentifier:identifierCopy];
    }

    if (self)
    {
      v18 = self->_clientFactory;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v20 = [(HMDRapportMessaging *)self _createRapportClientForDevice:newCompanionLinkDevice];
    v21 = [(HMDRapportMessagingClientFactory *)v19 newRapportDeviceClientWrapperWithClient:v20];

    if (self)
    {
      v22 = self->_deviceClients;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    [(NSMutableDictionary *)v23 setObject:v21 forKeyedSubscript:identifierCopy];

    os_unfair_lock_unlock(&self->_lock);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__HMDRapportMessaging__clientForIDSIdentifier_withDevice___block_invoke;
    v25[3] = &unk_278688D58;
    v25[4] = self;
    v14 = newCompanionLinkDevice;
    v26 = v14;
    v27 = identifierCopy;
    [v21 activateWithCompletion:v25];
    v13 = v21;
  }

  return v13;
}

void __58__HMDRapportMessaging__clientForIDSIdentifier_withDevice___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to activate Rapport client for device: %@, error: %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _invalidateDestinationDeviceWithIDSIdentifier:*(a1 + 48)];
  }
}

- (void)_completeQuededRequestsOnWorkQueue:(id)queue
{
  v18 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = queueCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        (*(v11 + 16))(v11);
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [v6 removeAllObjects];
}

- (void)_queueRequest:(id)request forTopic:(id)topic options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  topicCopy = topic;
  optionsCopy = options;
  handlerCopy = handler;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    receiverContexts = self->_receiverContexts;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    receiverContexts = 0;
  }

  v15 = [(NSMutableDictionary *)receiverContexts objectForKeyedSubscript:topicCopy];
  if (!v15)
  {
    v16 = objc_alloc_init(HMDRapportMessagingReceiverContext);
    if (self)
    {
      v17 = self->_receiverContexts;
    }

    else
    {
      v17 = 0;
    }

    [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:topicCopy];
  }

  objc_initWeak(&location, self);
  if (self)
  {
    v18 = self->_receiverContexts;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:topicCopy];
  requestQueue = [v20 requestQueue];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __70__HMDRapportMessaging__queueRequest_forTopic_options_responseHandler___block_invoke;
  v30 = &unk_2786860E8;
  objc_copyWeak(&v35, &location);
  v22 = handlerCopy;
  v34 = v22;
  v23 = topicCopy;
  v31 = v23;
  v24 = requestCopy;
  v32 = v24;
  v25 = optionsCopy;
  v33 = v25;
  v26 = _Block_copy(&v27);
  [requestQueue addObject:{v26, v27, v28, v29, v30}];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void __70__HMDRapportMessaging__queueRequest_forTopic_options_responseHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v12 = *(a1 + 56);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Unexpected error." reason:@"HMDRapportMessaging has been deallocated." suggestion:0];
    (*(v12 + 16))(v12, 0, 0, v10);
    goto LABEL_6;
  }

  v4 = [WeakRetained[6] objectForKeyedSubscript:*(a1 + 32)];
  v5 = [v4 requestHandler];

  if (!v5)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v3;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 32);
      *buf = 138543618;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: %@ Request handler is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [[HMDAssertionLogEvent alloc] initWithReason:@"%@ Request handler is nil", *(a1 + 32)];
    v19 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v19 submitLogEvent:v18];
  }

  v6 = [v3[6] objectForKeyedSubscript:*(a1 + 32)];
  v7 = [v6 requestHandler];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = v3[6];
    v10 = [v9 objectForKeyedSubscript:v8];
    v11 = [v10 requestHandler];
    v11[2](v11, *(a1 + 40), *(a1 + 48), *(a1 + 56));

LABEL_6:
  }
}

- (void)_handleRequest:(id)request forTopic:(id)topic options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  topicCopy = topic;
  optionsCopy = options;
  handlerCopy = handler;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    receiverContexts = self->_receiverContexts;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    receiverContexts = 0;
  }

  v14 = [(NSMutableDictionary *)receiverContexts objectForKeyedSubscript:topicCopy];
  v15 = v14;
  if (v14 && ([v14 requestHandler], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    requestHandler = [v15 requestHandler];
    (requestHandler)[2](requestHandler, requestCopy, optionsCopy, handlerCopy);
  }

  else
  {
    [(HMDRapportMessaging *)self _queueRequest:requestCopy forTopic:topicCopy options:optionsCopy responseHandler:handlerCopy];
  }
}

- (void)_configureDiscoveryClientWithCompletion:(id)completion forRequestIDs:(id)ds
{
  v77 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dsCopy = ds;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    newCompanionLinkClient = [(HMDRapportMessagingClientFactory *)self->_clientFactory newCompanionLinkClient];
    objc_setProperty_atomic(self, v9, newCompanionLinkClient, 40);

    [objc_getProperty(self v10];
    [objc_getProperty(self v11];
    v12 = self->_workQueue;
    Property = objc_getProperty(self, v13, 40, 1);
  }

  else
  {
    dispatch_assert_queue_V2(0);

    [0 setControlFlags:4196356];
    [0 setServiceType:@"com.apple.home.messaging"];
    v12 = 0;
    Property = 0;
  }

  [Property setDispatchQueue:v12];

  selfCopy = self;
  objc_initWeak(&location, self);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke;
  v73[3] = &unk_278686B80;
  objc_copyWeak(&v74, &location);
  if (self)
  {
    selfCopy2 = self;
    v18 = objc_getProperty(self, v16, 40, 1);
  }

  else
  {
    v18 = 0;
    selfCopy2 = 0;
  }

  v19 = v18;
  [v19 setInterruptionHandler:v73];

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_100;
  v71[3] = &unk_278686B80;
  objc_copyWeak(&v72, &location);
  if (selfCopy2)
  {
    selfCopy4 = self;
    v22 = objc_getProperty(self, v20, 40, 1);
  }

  else
  {
    v22 = 0;
    selfCopy4 = self;
  }

  v23 = v22;
  [v23 setInvalidationHandler:v71];

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_101;
  v69[3] = &unk_27867CA08;
  objc_copyWeak(&v70, &location);
  if (selfCopy4)
  {
    selfCopy6 = self;
    v26 = objc_getProperty(self, v24, 40, 1);
  }

  else
  {
    v26 = 0;
    selfCopy6 = self;
  }

  v27 = v26;
  [v27 setDeviceLostHandler:v69];

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_103;
  v67[3] = &unk_27867CA08;
  objc_copyWeak(&v68, &location);
  if (selfCopy6)
  {
    selfCopy8 = self;
    v30 = objc_getProperty(self, v28, 40, 1);
  }

  else
  {
    v30 = 0;
    selfCopy8 = self;
  }

  v31 = v30;
  [v31 setDeviceFoundHandler:v67];

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_104;
  v65[3] = &unk_27867CA30;
  objc_copyWeak(&v66, &location);
  if (selfCopy8)
  {
    selfCopy10 = self;
    v34 = objc_getProperty(self, v32, 40, 1);
  }

  else
  {
    v34 = 0;
    selfCopy10 = self;
  }

  v35 = v34;
  [v35 setDeviceChangedHandler:v65];

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_106;
  v63[3] = &unk_278686B80;
  objc_copyWeak(&v64, &location);
  if (selfCopy10)
  {
    v37 = objc_getProperty(self, v36, 40, 1);
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;
  [v38 setErrorFlagsChangedHandler:v63];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = dsCopy;
  v39 = [obj countByEnumeratingWithState:&v59 objects:v76 count:16];
  if (v39)
  {
    v40 = *v60;
    do
    {
      v41 = 0;
      do
      {
        if (*v60 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v59 + 1) + 8 * v41);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_107;
        aBlock[3] = &unk_278675738;
        objc_copyWeak(&v58, &location);
        aBlock[4] = v42;
        v44 = _Block_copy(aBlock);
        if (selfCopy)
        {
          v45 = objc_getProperty(selfCopy, v43, 40, 1);
        }

        else
        {
          v45 = 0;
        }

        v46 = v45;
        [v46 registerRequestID:v42 options:0 handler:v44];

        objc_destroyWeak(&v58);
        ++v41;
      }

      while (v39 != v41);
      v47 = [obj countByEnumeratingWithState:&v59 objects:v76 count:16];
      v39 = v47;
    }

    while (v47);
  }

  if (selfCopy)
  {
    v49 = objc_getProperty(selfCopy, v48, 40, 1);
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_2;
  v54[3] = &unk_278686D60;
  objc_copyWeak(&v56, &location);
  v51 = v52;
  v55 = v51;
  [v50 activateWithCompletion:v54];

  objc_destroyWeak(&v56);
  objc_destroyWeak(&v64);
  objc_destroyWeak(&v66);
  objc_destroyWeak(&v68);
  objc_destroyWeak(&v70);
  objc_destroyWeak(&v72);
  objc_destroyWeak(&v74);
  objc_destroyWeak(&location);
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Discovery client interrupted", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_100(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Discovery client invalidated", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_101(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Discovery client lost device: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v3 idsDeviceIdentifier];
  [v6 _invalidateDestinationDeviceWithIDSIdentifier:v9];
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_103(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Discovery client found device: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [v6 _updateDevice:v3 reachable:1];
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_104(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Discovery client device changed: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_106(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    if (v3)
    {
      Property = objc_getProperty(v3, v5, 40, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = NSPrintF("%#ll{flags}", [Property errorFlags], &unk_22A587280);
    *buf = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Discovery client error flag changed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_107(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleRequest:v12 forTopic:*(a1 + 32) options:v7 responseHandler:v8];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Unexpected error." reason:@"HMDRapportMessaging has been deallocated" suggestion:0];
    (*(v8 + 2))(v8, 0, 0, v11);
  }
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Activated Rapport client with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

- (BOOL)isRapportDeviceDiscoveredWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (self && objc_getProperty(self, v4, 40, 1))
  {
    v7 = [objc_getProperty(self v6];
    v8 = objc_msgSend_copy(v7);

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__HMDRapportMessaging_isRapportDeviceDiscoveredWithIdentifier___block_invoke;
    v16[3] = &unk_27867C800;
    v17 = identifierCopy;
    v9 = [v8 na_firstObjectPassingTest:v16];
    v10 = v9 != 0;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Discovery client is not configured", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

uint64_t __63__HMDRapportMessaging_isRapportDeviceDiscoveredWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 idsDeviceIdentifier];
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)sendRequest:(id)request requestID:(id)d destinationID:(id)iD options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  handlerCopy = handler;
  v17 = handlerCopy;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __83__HMDRapportMessaging_sendRequest_requestID_destinationID_options_responseHandler___block_invoke;
  v24[3] = &unk_278688B58;
  v24[4] = self;
  v25 = iDCopy;
  v26 = dCopy;
  v27 = requestCopy;
  v28 = optionsCopy;
  v29 = handlerCopy;
  v19 = optionsCopy;
  v20 = requestCopy;
  v21 = dCopy;
  v22 = v17;
  v23 = iDCopy;
  dispatch_async(workQueue, v24);
}

void __83__HMDRapportMessaging_sendRequest_requestID_destinationID_options_responseHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForIDSIdentifier:*(a1 + 40) withDevice:0];
  v5 = v2;
  if (v2)
  {
    [v2 sendRequestID:*(a1 + 48) request:*(a1 + 56) options:*(a1 + 64) responseHandler:*(a1 + 72)];
  }

  else
  {
    v3 = *(a1 + 72);
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not found." reason:@"Could not create a device matching the destination" suggestion:0];
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

- (void)registerRequestHandlerForRequestID:(id)d withRequestHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDRapportMessaging_registerRequestHandlerForRequestID_withRequestHandler___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

void __77__HMDRapportMessaging_registerRequestHandlerForRequestID_withRequestHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKeyedSubscript:a1[5]];

  if (!v4)
  {
    v5 = objc_alloc_init(HMDRapportMessagingReceiverContext);
    v6 = a1[4];
    if (v6)
    {
      v7 = *(v6 + 48);
    }

    else
    {
      v7 = 0;
    }

    [v7 setObject:v5 forKeyedSubscript:a1[5]];
  }

  v8 = a1[6];
  v9 = a1[4];
  if (v9)
  {
    v9 = v9[6];
  }

  v10 = a1[5];
  v11 = v9;
  v12 = [v11 objectForKeyedSubscript:v10];
  [v12 setRequestHandler:v8];

  v13 = a1[4];
  if (v13)
  {
    v14 = v13[6];
  }

  else
  {
    v14 = 0;
  }

  v15 = a1[5];
  v16 = v14;
  v17 = [v16 objectForKeyedSubscript:v15];
  v18 = [v17 requestQueue];
  [v13 _completeQuededRequestsOnWorkQueue:v18];

  v19 = a1[4];
  if (v19)
  {
    v20 = *(v19 + 48);
  }

  else
  {
    v20 = 0;
  }

  v21 = [v20 objectForKeyedSubscript:a1[5]];
  [v21 setRequestQueue:0];
}

- (void)configureDiscoveryClientForRequestIDs:(id)ds withCompletion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = completionCopy;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDRapportMessaging_configureDiscoveryClientForRequestIDs_withCompletion___block_invoke;
  block[3] = &unk_278689F98;
  v13 = dsCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = dsCopy;
  v11 = v8;
  dispatch_async(workQueue, block);
}

void *__76__HMDRapportMessaging_configureDiscoveryClientForRequestIDs_withCompletion___block_invoke(void *a1, const char *a2)
{
  v3 = a1[4];
  if (v3)
  {
    if (objc_getProperty(v3, a2, 40, 1))
    {
      result = a1[6];
      if (result)
      {
        v5 = result[2];

        return v5();
      }

      return result;
    }

    v3 = a1[4];
  }

  v7 = a1[5];
  v6 = a1[6];

  return [v3 _configureDiscoveryClientWithCompletion:v6 forRequestIDs:v7];
}

- (HMDRapportMessaging)initWithClientFactory:(id)factory
{
  factoryCopy = factory;
  v18.receiver = self;
  v18.super_class = HMDRapportMessaging;
  v6 = [(HMDRapportMessaging *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = HMDispatchQueueNameString();
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    workQueue = v7->_workQueue;
    v7->_workQueue = v11;

    objc_storeStrong(&v7->_clientFactory, factory);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    receiverContexts = v7->_receiverContexts;
    v7->_receiverContexts = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceClients = v7->_deviceClients;
    v7->_deviceClients = v15;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16, &__block_literal_global_128_73853);
  }

  v3 = logCategory__hmf_once_v17;

  return v3;
}

void __34__HMDRapportMessaging_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v17;
  logCategory__hmf_once_v17 = v0;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_73858 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_73858, &__block_literal_global_73859);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __37__HMDRapportMessaging_sharedInstance__block_invoke()
{
  v0 = [HMDRapportMessaging alloc];
  v3 = objc_alloc_init(HMDRapportMessagingClientFactory);
  v1 = [(HMDRapportMessaging *)v0 initWithClientFactory:v3];
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

@end