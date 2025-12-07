@interface HMDModernMessagingXPCEventPublisher
+ (id)shared;
- (BOOL)hmmmIsBundleIDValidForLaunchOnDemand:(id)demand;
- (HMDModernMessagingXPCEventPublisher)initWithLaunchOnDemandClientIdentifiersByMessageName:(id)name;
- (HMDModernMessagingXPCEventPublisher)initWithTestClientsByMessageName:(id)name;
- (void)_addXPCSubscriberWithToken:(unint64_t)token xpcEvent:(id)event;
- (void)_publishLaunchEventForBundleID:(id)d;
- (void)_removeXPCSubscriberWithToken:(unint64_t)token;
- (void)publishLaunchEventForBundleID:(id)d;
@end

@implementation HMDModernMessagingXPCEventPublisher

- (void)_addXPCSubscriberWithToken:(unint64_t)token xpcEvent:(id)event
{
  v28 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  string = xpc_dictionary_get_string(eventCopy, "bundleID");
  if (string)
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:string];
    v9 = [(HMDModernMessagingXPCEventPublisher *)self hmmmIsBundleIDValidForLaunchOnDemand:v8];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v22 = 138543874;
        v23 = v14;
        v24 = 2048;
        tokenCopy2 = token;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received HMMM subscriber request for token: %llu, bundle id: %@", &v22, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:token];
      tokensByClientBundleID = [(HMDModernMessagingXPCEventPublisher *)selfCopy tokensByClientBundleID];
      [tokensByClientBundleID setObject:v15 forKeyedSubscript:v8];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v21;
        v24 = 2112;
        tokenCopy2 = v8;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Ignoring HMMM subscriber request from unknown bundle id: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v20;
      v24 = 2048;
      tokenCopy2 = token;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Ignoring HMMM subscriber request from token %llu without bundleID", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (void)_removeXPCSubscriberWithToken:(unint64_t)token
{
  v29 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__164294;
  v21 = __Block_byref_object_dispose__164295;
  v22 = 0;
  tokensByClientBundleID = [(HMDModernMessagingXPCEventPublisher *)self tokensByClientBundleID];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HMDModernMessagingXPCEventPublisher__removeXPCSubscriberWithToken___block_invoke;
  v16[3] = &unk_27867C5E0;
  v16[4] = &v17;
  v16[5] = token;
  v6 = [tokensByClientBundleID na_firstKeyPassingTest:v16];

  v7 = v18[5] == 0;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (v7)
  {
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v15;
      v25 = 2048;
      tokenCopy2 = token;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Discarding remove XPC subscriber request, no subscriber associated with token: %llu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = v18[5];
      *buf = 138543874;
      v24 = v11;
      v25 = 2048;
      tokenCopy2 = token;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing XPC Subscriber with token: %llu, bundleID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    tokensByClientBundleID2 = [(HMDModernMessagingXPCEventPublisher *)selfCopy tokensByClientBundleID];
    [tokensByClientBundleID2 setObject:0 forKeyedSubscript:v18[5]];
  }

  _Block_object_dispose(&v17, 8);
}

BOOL __69__HMDModernMessagingXPCEventPublisher__removeXPCSubscriberWithToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = [a3 unsignedLongLongValue];
  v8 = *(a1 + 40);
  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  return v7 == v8;
}

- (void)publishLaunchEventForBundleID:(id)d
{
  dCopy = d;
  workQueue = [(HMDModernMessagingXPCEventPublisher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDModernMessagingXPCEventPublisher_publishLaunchEventForBundleID___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
}

- (void)_publishLaunchEventForBundleID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  tokensByClientBundleID = [(HMDModernMessagingXPCEventPublisher *)self tokensByClientBundleID];
  v6 = [tokensByClientBundleID objectForKeyedSubscript:dCopy];

  if (v6)
  {
    unsignedLongLongValue = [v6 unsignedLongLongValue];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v11;
      v18 = 2048;
      v19 = unsignedLongLongValue;
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Firing HMMM launch-on-demand event for token %llu with bundleID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    xpc_event_publisher_fire();
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v15;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Received launch on demand event for unsubscribed client with bundle ID: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (BOOL)hmmmIsBundleIDValidForLaunchOnDemand:(id)demand
{
  demandCopy = demand;
  launchOnDemandClientIdentifiersByMessageName = [(HMDModernMessagingXPCEventPublisher *)self launchOnDemandClientIdentifiersByMessageName];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HMDModernMessagingXPCEventPublisher_hmmmIsBundleIDValidForLaunchOnDemand___block_invoke;
  v9[3] = &unk_27867E960;
  v10 = demandCopy;
  v6 = demandCopy;
  v7 = [launchOnDemandClientIdentifiersByMessageName na_any:v9];

  return v7;
}

- (HMDModernMessagingXPCEventPublisher)initWithLaunchOnDemandClientIdentifiersByMessageName:(id)name
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = HMDModernMessagingXPCEventPublisher;
  v5 = [(HMDModernMessagingXPCEventPublisher *)&v19 init];
  if (v5)
  {
    v6 = objc_msgSend_copy(nameCopy);
    launchOnDemandClientIdentifiersByMessageName = v5->_launchOnDemandClientIdentifiersByMessageName;
    v5->_launchOnDemandClientIdentifiersByMessageName = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    tokensByClientBundleID = v5->_tokensByClientBundleID;
    v5->_tokensByClientBundleID = dictionary;

    v10 = HMDispatchQueueNameString();
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v11;

    [@"com.apple.HMModernMessaging.launch" cString];
    workQueue = [(HMDModernMessagingXPCEventPublisher *)v5 workQueue];
    v14 = xpc_event_publisher_create();
    xpcEventPublisher = v5->_xpcEventPublisher;
    v5->_xpcEventPublisher = v14;

    v18 = v5;
    xpc_event_publisher_set_handler();
    v17 = v18;
    xpc_event_publisher_set_error_handler();
    xpc_event_publisher_activate();
  }

  return v5;
}

void __92__HMDModernMessagingXPCEventPublisher_initWithLaunchOnDemandClientIdentifiersByMessageName___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2 == 1)
  {
    v8 = v7;
    [*(a1 + 32) _removeXPCSubscriberWithToken:a3];
  }

  else
  {
    if (a2)
    {
      goto LABEL_6;
    }

    v8 = v7;
    [*(a1 + 32) _addXPCSubscriberWithToken:a3 xpcEvent:v7];
  }

  v7 = v8;
LABEL_6:
}

void __92__HMDModernMessagingXPCEventPublisher_initWithLaunchOnDemandClientIdentifiersByMessageName___block_invoke_2(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@HMMM XPC Publisher experienced error with code: %d", &v8, 0x12u);
  }

  objc_autoreleasePoolPop(v4);
}

- (HMDModernMessagingXPCEventPublisher)initWithTestClientsByMessageName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = HMDModernMessagingXPCEventPublisher;
  v5 = [(HMDModernMessagingXPCEventPublisher *)&v14 init];
  if (v5)
  {
    v6 = objc_msgSend_copy(nameCopy);
    launchOnDemandClientIdentifiersByMessageName = v5->_launchOnDemandClientIdentifiersByMessageName;
    v5->_launchOnDemandClientIdentifiersByMessageName = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    tokensByClientBundleID = v5->_tokensByClientBundleID;
    v5->_tokensByClientBundleID = dictionary;

    v10 = HMDispatchQueueNameString();
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v11;
  }

  return v5;
}

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, &__block_literal_global_164315);
  }

  v3 = shared_sharedHandler;

  return v3;
}

void __45__HMDModernMessagingXPCEventPublisher_shared__block_invoke()
{
  v0 = [[HMDModernMessagingXPCEventPublisher alloc] initWithLaunchOnDemandClientIdentifiersByMessageName:&unk_283E764F8];
  v1 = shared_sharedHandler;
  shared_sharedHandler = v0;
}

@end