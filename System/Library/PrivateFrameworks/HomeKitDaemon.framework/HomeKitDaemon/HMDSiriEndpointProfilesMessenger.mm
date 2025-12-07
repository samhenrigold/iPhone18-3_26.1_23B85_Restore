@interface HMDSiriEndpointProfilesMessenger
+ (id)logCategory;
- (HMDSiriEndpointProfilesMessenger)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher messageRouter:(id)router messageHandler:(id)handler;
- (id)intermediateApplyOnboardingSelectionsRequestMessageForMessage:(id)message error:(id *)error;
- (id)logIdentifier;
- (void)registerForMessagesWithHome:(id)home;
- (void)routeSiriEndpointApplyOnboardingSelectionsRequestMessage:(id)message;
- (void)routeSiriEndpointDeleteSiriHistoryMessage:(id)message;
@end

@implementation HMDSiriEndpointProfilesMessenger

- (id)logIdentifier
{
  messageTargetUUID = [(HMDSiriEndpointProfilesMessenger *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (id)intermediateApplyOnboardingSelectionsRequestMessageForMessage:(id)message error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v7 = objc_alloc(MEMORY[0x277CD1E08]);
  messagePayload = [messageCopy messagePayload];
  v9 = [v7 initWithPayload:messagePayload];

  if (v9)
  {
    v10 = [messageCopy mutableCopy];
    identifier = [messageCopy identifier];
    [v10 setIdentifier:identifier];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __104__HMDSiriEndpointProfilesMessenger_intermediateApplyOnboardingSelectionsRequestMessageForMessage_error___block_invoke;
    v17[3] = &unk_278686658;
    v18 = messageCopy;
    selfCopy = self;
    v20 = v9;
    [v10 setResponseHandler:v17];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = messageCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get accessory UUID for intermediate apply onboarding selections message handler using message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    *error = v10 = 0;
  }

  return v10;
}

void __104__HMDSiriEndpointProfilesMessenger_intermediateApplyOnboardingSelectionsRequestMessageForMessage_error___block_invoke(id *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [a1[4] respondWithPayload:v6 error:v5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CD1E10]) initWithPayload:v6];
    if (v7)
    {
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v21[0] = @"accessoryUUID";
      v9 = a1[5];
      v10 = [a1[6] accessoryUUID];
      v21[1] = @"HMDSiriEndpointProfileNeedsOnboardingResultCodingKey";
      v22[0] = v10;
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "onboardingResult")}];
      v22[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      [v8 postNotificationName:@"HMDSiriEndpointProfileUpdateNeedsOnboardingNotification" object:v9 userInfo:v12];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = a1[5];
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v20;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response using apply onboarding intermediate response payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[5];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response payload for apply onboarding intermediate response with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)routeSiriEndpointDeleteSiriHistoryMessage:(id)message
{
  messageCopy = message;
  messageRouter = [(HMDSiriEndpointProfilesMessenger *)self messageRouter];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__HMDSiriEndpointProfilesMessenger_routeSiriEndpointDeleteSiriHistoryMessage___block_invoke;
  v6[3] = &unk_27868A398;
  v6[4] = self;
  [messageRouter routeMessage:messageCopy localHandler:v6];
}

void __78__HMDSiriEndpointProfilesMessenger_routeSiriEndpointDeleteSiriHistoryMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 messageHandler];
  [v4 handleSiriEndpointDeleteSiriHistoryRequestMessage:v3];
}

- (void)routeSiriEndpointApplyOnboardingSelectionsRequestMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing siri endpoint apply onboarding selections request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v13 = 0;
  v9 = [(HMDSiriEndpointProfilesMessenger *)selfCopy intermediateApplyOnboardingSelectionsRequestMessageForMessage:messageCopy error:&v13];
  v10 = v13;
  if (v9)
  {
    messageRouter = [(HMDSiriEndpointProfilesMessenger *)selfCopy messageRouter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__HMDSiriEndpointProfilesMessenger_routeSiriEndpointApplyOnboardingSelectionsRequestMessage___block_invoke;
    v12[3] = &unk_27868A398;
    v12[4] = selfCopy;
    [messageRouter routeMessage:v9 localHandler:v12];
  }

  else
  {
    [messageCopy respondWithError:v10];
  }
}

void __93__HMDSiriEndpointProfilesMessenger_routeSiriEndpointApplyOnboardingSelectionsRequestMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 messageHandler];
  [v4 handleSiriEndpointApplyOnboardingSelectionsRequestMessage:v3];
}

- (void)registerForMessagesWithHome:(id)home
{
  v15[3] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:4 remoteAccessRequired:0];

  messageDispatcher = [(HMDSiriEndpointProfilesMessenger *)self messageDispatcher];
  v9 = *MEMORY[0x277CD0FB8];
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  [messageDispatcher registerForMessage:v9 receiver:self policies:v10 selector:sel_routeSiriEndpointApplyOnboardingSelectionsRequestMessage_];

  messageDispatcher2 = [(HMDSiriEndpointProfilesMessenger *)self messageDispatcher];
  messageName = [MEMORY[0x277CD1E18] messageName];
  v14[0] = v5;
  v14[1] = v6;
  v14[2] = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  [messageDispatcher2 registerForMessage:messageName receiver:self policies:v13 selector:sel_routeSiriEndpointDeleteSiriHistoryMessage_];
}

- (HMDSiriEndpointProfilesMessenger)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher messageRouter:(id)router messageHandler:(id)handler
{
  dCopy = d;
  dispatcherCopy = dispatcher;
  routerCopy = router;
  handlerCopy = handler;
  if (!dCopy)
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
    return +[(HMDSiriEndpointProfilesMessenger *)v19];
  }

  v21.receiver = self;
  v21.super_class = HMDSiriEndpointProfilesMessenger;
  v16 = [(HMDSiriEndpointProfilesMessenger *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_messageTargetUUID, d);
    objc_storeStrong(&v17->_messageDispatcher, dispatcher);
    objc_storeStrong(&v17->_messageRouter, router);
    objc_storeStrong(&v17->_messageHandler, handler);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_32258 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_32258, &__block_literal_global_32259);
  }

  v3 = logCategory__hmf_once_v5_32260;

  return v3;
}

void __47__HMDSiriEndpointProfilesMessenger_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_32260;
  logCategory__hmf_once_v5_32260 = v0;
}

@end