@interface HMDAppleMediaAccessoryMessenger
+ (id)logCategory;
- (HMDAppleMediaAccessoryMessenger)initWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher router:(id)router localHandler:(id)handler;
- (id)logIdentifier;
- (void)registerForMessagesWithHome:(id)home;
- (void)routeSiriEndpointDeleteSiriHistoryMessage:(id)message;
- (void)sendDeleteSiriHistoryRequestForAccessoryWithUUID:(id)d completionHandler:(id)handler;
@end

@implementation HMDAppleMediaAccessoryMessenger

- (id)logIdentifier
{
  identifier = [(HMDAppleMediaAccessoryMessenger *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)routeSiriEndpointDeleteSiriHistoryMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing siri endpoint delete siri history message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  router = [(HMDAppleMediaAccessoryMessenger *)selfCopy router];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HMDAppleMediaAccessoryMessenger_routeSiriEndpointDeleteSiriHistoryMessage___block_invoke;
  v10[3] = &unk_27868A398;
  v10[4] = selfCopy;
  [router routeMessage:messageCopy localHandler:v10];
}

void __77__HMDAppleMediaAccessoryMessenger_routeSiriEndpointDeleteSiriHistoryMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localHandler];
  [v4 handleSiriEndpointDeleteSiriHistoryMessage:v3];
}

- (void)sendDeleteSiriHistoryRequestForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending delete siri history request message for accessory uuid: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [objc_alloc(MEMORY[0x277CD1E18]) initWithAccessoryUUID:dCopy];
  v13 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDAppleMediaAccessoryMessenger *)selfCopy messageTargetUUID];
  v15 = [v13 initWithTarget:messageTargetUUID];

  v16 = objc_alloc(MEMORY[0x277D0F848]);
  messageName = [MEMORY[0x277CD1E18] messageName];
  payloadCopy = [v12 payloadCopy];
  v19 = [v16 initWithName:messageName destination:v15 payload:payloadCopy];

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __102__HMDAppleMediaAccessoryMessenger_sendDeleteSiriHistoryRequestForAccessoryWithUUID_completionHandler___block_invoke;
  v24 = &unk_278685AF8;
  v25 = selfCopy;
  v26 = handlerCopy;
  v20 = handlerCopy;
  [v19 setResponseHandler:&v21];
  [(HMDAppleMediaAccessoryMessenger *)selfCopy routeSiriEndpointDeleteSiriHistoryMessage:v19, v21, v22, v23, v24, v25];
}

void __102__HMDAppleMediaAccessoryMessenger_sendDeleteSiriHistoryRequestForAccessoryWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history message responded with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)registerForMessagesWithHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for messages", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v10 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:3 remoteAccessRequired:0];
  messageDispatcher = [(HMDAppleMediaAccessoryMessenger *)selfCopy messageDispatcher];
  messageName = [MEMORY[0x277CD1E18] messageName];
  v15[0] = v9;
  v15[1] = v10;
  v15[2] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  [messageDispatcher registerForMessage:messageName receiver:selfCopy policies:v14 selector:sel_routeSiriEndpointDeleteSiriHistoryMessage_];
}

- (HMDAppleMediaAccessoryMessenger)initWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher router:(id)router localHandler:(id)handler
{
  identifierCopy = identifier;
  dispatcherCopy = dispatcher;
  routerCopy = router;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!routerCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = handlerCopy;
  if (!handlerCopy)
  {
LABEL_11:
    v19 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoryMessenger *)v19];
  }

  v21.receiver = self;
  v21.super_class = HMDAppleMediaAccessoryMessenger;
  v16 = [(HMDAppleMediaAccessoryMessenger *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    objc_storeStrong(&v17->_messageDispatcher, dispatcher);
    objc_storeStrong(&v17->_router, router);
    objc_storeStrong(&v17->_localHandler, handler);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_94994 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_94994, &__block_literal_global_94995);
  }

  v3 = logCategory__hmf_once_v5_94996;

  return v3;
}

void __46__HMDAppleMediaAccessoryMessenger_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_94996;
  logCategory__hmf_once_v5_94996 = v0;
}

@end