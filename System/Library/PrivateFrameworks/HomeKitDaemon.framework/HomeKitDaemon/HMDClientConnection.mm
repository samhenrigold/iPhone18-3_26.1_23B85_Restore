@interface HMDClientConnection
+ (id)logCategory;
- (HMDClientConnection)initWithHomeManager:(id)manager queue:(id)queue messageDispatcher:(id)dispatcher;
- (HMDClientConnection)initWithHomeManager:(id)manager queue:(id)queue messageDispatcher:(id)dispatcher dataSource:(id)source;
- (HMDHomeManager)homeManager;
- (void)_handleHH1EOLStatusRequest:(id)request;
- (void)_handleSiriCommand:(id)command;
- (void)_handleSiriIntentRequest:(id)request;
- (void)_handleSiriSyncDataRequest:(id)request;
- (void)_registerForMessages;
- (void)dealloc;
@end

@implementation HMDClientConnection

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)_handleHH1EOLStatusRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  messagePayload = [requestCopy messagePayload];
  v6 = [messagePayload objectForKey:*MEMORY[0x277CCFBE8]];

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

  v9 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithString:v8];
  if (v9)
  {
    homeManager = [(HMDClientConnection *)self homeManager];
    v11 = [homeManager isHH1EOLForResidentDeviceRunningSoftwareVersion:v9];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{v11, *MEMORY[0x277CCFBE0]}];
    v20 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [requestCopy respondWithPayload:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      messagePayload2 = [requestCopy messagePayload];
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = messagePayload2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Received invalid HMClientConnectionFetchHH1EOLStatusForResidentDeviceMessage, payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    homeManager = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [requestCopy respondWithError:homeManager];
  }
}

- (void)_handleSiriIntentRequest:(id)request
{
  v40 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy dataForKey:*MEMORY[0x277CD2690]];
  if (v5)
  {
    v33 = 0;
    responseHandler2 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v33];
    v7 = v33;
    if (responseHandler2)
    {
      v8 = [[HMDAssistantIntent alloc] initWithIntent:responseHandler2];
      homeManager = [(HMDClientConnection *)self homeManager];
      v10 = [homeManager isDataSyncInProgressWithMessage:requestCopy];
      v11 = [requestCopy numberForKey:*MEMORY[0x277CD26A0]];
      [v11 unsignedIntegerValue];

      v32 = HMStringFromIntentRequestType();
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v10)
      {
        if (v15)
        {
          v30 = HMFGetLogIdentifier();
          v16 = HMINControlHomeIntentShortDescription();
          *buf = 138543874;
          v35 = v30;
          v36 = 2112;
          v37 = v32;
          v38 = 2112;
          v39 = v16;
          v17 = v16;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Error - Data sync in progress - Unable to %@ intent [ %@ ] ", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
        gatherer = [MEMORY[0x277CCA9B8] hmErrorWithCode:77];
        responseHandler = [requestCopy responseHandler];
        (responseHandler)[2](responseHandler, gatherer, 0);
      }

      else
      {
        if (v15)
        {
          HMFGetLogIdentifier();
          v28 = v31 = v12;
          v29 = HMINControlHomeIntentShortDescription();
          *buf = 138543874;
          v35 = v28;
          v36 = 2112;
          v37 = v32;
          v38 = 2112;
          v39 = v29;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received to %@ intent: [ %@ ]", buf, 0x20u);

          v12 = v31;
        }

        objc_autoreleasePoolPop(v12);
        gatherer = [homeManager gatherer];
        [(HMDAssistantIntent *)v8 performWithGather:gatherer message:requestCopy];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v27;
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Failed to unarchive control home intent from the message payload data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      homeManager = [requestCopy responseHandler];
      (homeManager)[2](homeManager, v8, 0);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Error - Did not get the intent", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    responseHandler2 = [requestCopy responseHandler];
    (responseHandler2)[2](responseHandler2, v7, 0);
  }
}

- (void)_handleSiriSyncDataRequest:(id)request
{
  requestCopy = request;
  homeManager = [(HMDClientConnection *)self homeManager];
  [homeManager handleSiriSyncDataRequest:requestCopy];
}

- (void)_handleSiriCommand:(id)command
{
  v73 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v5 = objc_alloc(MEMORY[0x277D0F770]);
  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x22AAD2510](self, a2);
  v8 = [v6 stringWithFormat:@"%@, %s:%ld", v7, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Messaging/XPC/HMDClientConnection.m", 155];
  v47 = [v5 initWithName:v8];

  homeManager = [(HMDClientConnection *)self homeManager];
  val = [homeManager accessoryBrowser];
  name = [commandCopy name];
  v45 = [val beginActiveAssertionWithReason:name];

  messagePayload = [commandCopy messagePayload];
  v48 = [messagePayload objectForKeyedSubscript:@"kSiriCommandKey"];

  v11 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v48 allowedClass:objc_opt_class() frameworkClasses:&unk_283E75B48];
  [v11 setHomeManager:homeManager];
  aceId = [v11 aceId];
  [v47 setClientMetricIdentifier:aceId];

  identifier = [commandCopy identifier];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUIDString = [identifier UUIDString];
    aceId2 = [v11 aceId];
    serverValidity = [v11 serverValidity];
    hm_shortDescription = [v11 hm_shortDescription];
    *buf = 138544386;
    v64 = v16;
    v65 = 2114;
    v66 = uUIDString;
    v67 = 2114;
    v68 = aceId2;
    v69 = 2114;
    v70 = serverValidity;
    v71 = 2112;
    v72 = hm_shortDescription;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Incoming Siri command(%{public}@) serverValidity %{public}@:\n%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  v21 = [homeManager isDataSyncInProgressWithMessage:commandCopy];
  dataSource = [(HMDClientConnection *)selfCopy dataSource];
  carPlayDataSource = [dataSource carPlayDataSource];

  if (v21)
  {
    goto LABEL_4;
  }

  dataSource2 = [(HMDClientConnection *)selfCopy dataSource];
  if (![dataSource2 supportsDeviceLock])
  {
    goto LABEL_12;
  }

  dataSource3 = [(HMDClientConnection *)selfCopy dataSource];
  if (![dataSource3 isDeviceLocked] || objc_msgSend(homeManager, "isAccessAllowedWhenLocked"))
  {

LABEL_12:
LABEL_13:
    workQueue = [(HMDClientConnection *)selfCopy workQueue];
    msgDispatcher = [(HMDClientConnection *)selfCopy msgDispatcher];
    v26 = [HMDAssistantCommandExecutor executorWithCommand:v11 workQueue:workQueue messageDispatcher:msgDispatcher];

    commandsBeingExecuted = [(HMDClientConnection *)selfCopy commandsBeingExecuted];
    [commandsBeingExecuted addObject:v26];

    objc_initWeak(buf, selfCopy);
    objc_initWeak(&location, val);
    objc_initWeak(&from, v26);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __42__HMDClientConnection__handleSiriCommand___block_invoke;
    v52[3] = &unk_27867DB28;
    objc_copyWeak(&v57, buf);
    objc_copyWeak(&v58, &from);
    objc_copyWeak(&v59, &location);
    v53 = identifier;
    v54 = v11;
    v55 = commandCopy;
    v56 = v45;
    [v26 performWithCompletion:v52];

    objc_destroyWeak(&v59);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&v57);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
    goto LABEL_18;
  }

  synchronouslyFetchIsCarPlayConnectedStatus = [carPlayDataSource synchronouslyFetchIsCarPlayConnectedStatus];

  if (synchronouslyFetchIsCarPlayConnectedStatus)
  {
    goto LABEL_13;
  }

LABEL_4:
  commandsBeingExecuted2 = [(HMDClientConnection *)selfCopy commandsBeingExecuted];
  v24 = [commandsBeingExecuted2 count] == 0;

  if (v24)
  {
    [val endActiveAssertion:v45];
  }

  v25 = objc_alloc_init(MEMORY[0x277D47350]);
  v26 = v25;
  if (v21)
  {
    [v25 setCommandOutcome:*MEMORY[0x277D480E0]];
    array = [MEMORY[0x277CBEA60] array];
    [v26 setActionResults:array];
    v28 = @"Data sync in progress";
  }

  else
  {
    [v25 setCommandOutcome:*MEMORY[0x277D480D0]];
    array = objc_alloc_init(MEMORY[0x277D47338]);
    [array setOutcome:*MEMORY[0x277D47E18]];
    v62 = array;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
    [v26 setActionResults:v34];

    v28 = @"HomeKit access not allowed when device is locked";
  }

  dictionary = [v26 dictionary];
  v36 = objc_autoreleasePoolPush();
  v37 = selfCopy;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier();
    aceId3 = [v11 aceId];
    hm_headerDescription = [v26 hm_headerDescription];
    *buf = 138544130;
    v64 = v39;
    v65 = 2112;
    v66 = v28;
    v67 = 2112;
    v68 = aceId3;
    v69 = 2112;
    v70 = hm_headerDescription;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@%@ - response for Siri command(%@): %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v36);
  responseHandler = [commandCopy responseHandler];
  (responseHandler)[2](responseHandler, 0, dictionary);

LABEL_18:
}

void __42__HMDClientConnection__handleSiriCommand___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = objc_loadWeakRetained((a1 + 72));
  v46 = objc_loadWeakRetained((a1 + 80));
  if (v5)
  {
    v41 = v8;
    v44 = v6;
    v45 = v5;
    v9 = [objc_alloc(MEMORY[0x277D47350]) initWithDictionary:v5];
    v10 = objc_autoreleasePoolPush();
    v42 = WeakRetained;
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) UUIDString];
      v15 = [*(a1 + 40) aceId];
      v16 = [v9 hm_headerDescription];
      *buf = 138544130;
      v53 = v13;
      v54 = 2114;
      v55 = v14;
      v56 = 2114;
      v57 = v15;
      v58 = 2114;
      v59 = v16;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Outgoing Response for Siri command(%{public}@): %{public}@", buf, 0x2Au);
    }

    v43 = a1;

    objc_autoreleasePoolPop(v10);
    v40 = v9;
    [v9 hm_contentDescription];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v17 = v50 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v48;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v48 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v47 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = v11;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v53 = v26;
            v54 = 2112;
            v55 = v22;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
        }

        v19 = [v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v19);
    }

    v6 = v44;
    v5 = v45;
    WeakRetained = v42;
    a1 = v43;
    v8 = v41;
    if (!v44)
    {
      goto LABEL_21;
    }

LABEL_18:
    v31 = objc_autoreleasePoolPush();
    v32 = WeakRetained;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [*(a1 + 32) UUIDString];
      *buf = 138543874;
      v53 = v34;
      v54 = 2114;
      v55 = v35;
      v56 = 2114;
      v57 = v6;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Error executing Siri command: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    goto LABEL_21;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = WeakRetained;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v30;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Nil response for Siri command", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_21:
  v36 = [*(a1 + 48) responseHandler];
  (v36)[2](v36, v6, v5);

  if (v8)
  {
    v37 = [WeakRetained commandsBeingExecuted];
    [v37 removeObject:v8];

    v38 = [WeakRetained commandsBeingExecuted];
    v39 = [v38 count];

    if (!v39)
    {
      [v46 endActiveAssertion:*(a1 + 56)];
    }
  }
}

- (void)dealloc
{
  msgDispatcher = [(HMDClientConnection *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDClientConnection;
  [(HMDClientConnection *)&v4 dealloc];
}

- (void)_registerForMessages
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v4 = [HMDXPCBackgroundMessagePolicy policyWithEntitlementRequirement:1];
  v12[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  msgDispatcher = [(HMDClientConnection *)self msgDispatcher];
  [msgDispatcher registerForMessage:*MEMORY[0x277CD2698] receiver:self policies:v5 selector:sel__handleSiriIntentRequest_];

  v11[0] = v3;
  v11[1] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  msgDispatcher2 = [(HMDClientConnection *)self msgDispatcher];
  [msgDispatcher2 registerForMessage:*MEMORY[0x277CCFBF0] receiver:self policies:v7 selector:sel__handleSiriCommand_];

  msgDispatcher3 = [(HMDClientConnection *)self msgDispatcher];
  [msgDispatcher3 registerForMessage:*MEMORY[0x277CCFBF8] receiver:self policies:v7 selector:sel__handleSiriSyncDataRequest_];

  msgDispatcher4 = [(HMDClientConnection *)self msgDispatcher];
  [msgDispatcher4 registerForMessage:*MEMORY[0x277CCFBD8] receiver:self policies:v7 selector:sel__handleHH1EOLStatusRequest_];
}

- (HMDClientConnection)initWithHomeManager:(id)manager queue:(id)queue messageDispatcher:(id)dispatcher dataSource:(id)source
{
  managerCopy = manager;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = HMDClientConnection;
  v14 = [(HMDClientConnection *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_homeManager, managerCopy);
    objc_storeStrong(&v15->_dataSource, source);
    objc_storeStrong(&v15->_workQueue, queue);
    objc_storeStrong(&v15->_msgDispatcher, dispatcher);
    array = [MEMORY[0x277CBEB18] array];
    commandsBeingExecuted = v15->_commandsBeingExecuted;
    v15->_commandsBeingExecuted = array;

    [(HMDClientConnection *)v15 _registerForMessages];
  }

  return v15;
}

- (HMDClientConnection)initWithHomeManager:(id)manager queue:(id)queue messageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  managerCopy = manager;
  v11 = objc_alloc_init(HMDClientConnectionDataSource);
  v12 = [(HMDClientConnection *)self initWithHomeManager:managerCopy queue:queueCopy messageDispatcher:dispatcherCopy dataSource:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_186387 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_186387, &__block_literal_global_186388);
  }

  v3 = logCategory__hmf_once_v13_186389;

  return v3;
}

void __34__HMDClientConnection_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v13_186389;
  logCategory__hmf_once_v13_186389 = v0;
}

@end