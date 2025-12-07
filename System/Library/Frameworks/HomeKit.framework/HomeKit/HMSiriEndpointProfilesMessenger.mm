@interface HMSiriEndpointProfilesMessenger
+ (id)logCategory;
+ (id)messageTargetUUIDWithHomeUUID:(id)d;
- (HMSiriEndpointProfilesMessenger)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher;
- (id)logIdentifier;
- (void)sendApplyOnboardingSelectionsRequestWithAccessoryUUID:(id)d onboardingSelections:(id)selections completionHandler:(id)handler;
- (void)sendDeleteSiriHistoryRequestWithAccessoryUUID:(id)d completionHandler:(id)handler;
@end

@implementation HMSiriEndpointProfilesMessenger

- (id)logIdentifier
{
  messageTargetUUID = [(HMSiriEndpointProfilesMessenger *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (void)sendDeleteSiriHistoryRequestWithAccessoryUUID:(id)d completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = dCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending delete siri history request with accessory UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [[HMSiriEndpointDeleteSiriHistoryMessagePayload alloc] initWithAccessoryUUID:dCopy];
  v13 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMSiriEndpointProfilesMessenger *)selfCopy messageTargetUUID];
  v15 = [v13 initWithTarget:messageTargetUUID];

  v16 = objc_alloc(MEMORY[0x1E69A2A10]);
  v17 = +[HMSiriEndpointDeleteSiriHistoryMessagePayload messageName];
  payloadCopy = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)v12 payloadCopy];
  v19 = [v16 initWithName:v17 destination:v15 payload:payloadCopy];

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __99__HMSiriEndpointProfilesMessenger_sendDeleteSiriHistoryRequestWithAccessoryUUID_completionHandler___block_invoke;
  v25 = &unk_1E754DE00;
  v26 = selfCopy;
  v27 = handlerCopy;
  v20 = handlerCopy;
  [v19 setResponseHandler:&v22];
  v21 = [(HMSiriEndpointProfilesMessenger *)selfCopy messageDispatcher:v22];
  [v21 sendMessage:v19];
}

void __99__HMSiriEndpointProfilesMessenger_sendDeleteSiriHistoryRequestWithAccessoryUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
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
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history message responded with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendApplyOnboardingSelectionsRequestWithAccessoryUUID:(id)d onboardingSelections:(id)selections completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selectionsCopy = selections;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v32 = v14;
    v33 = 2112;
    v34 = dCopy;
    v35 = 2112;
    v36 = selectionsCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending apply onboarding selections request with accessory UUID: %@ onboarding selections: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [[HMSiriEndpointApplyOnboardingSelectionsPayload alloc] initWithAccessoryUUID:dCopy onboardingSelections:selectionsCopy];
  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMSiriEndpointProfilesMessenger *)selfCopy messageTargetUUID];
  v18 = [v16 initWithTarget:messageTargetUUID];

  v19 = objc_alloc(MEMORY[0x1E69A2A10]);
  payloadCopy = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)v15 payloadCopy];
  v21 = [v19 initWithName:@"HMSiriEndpointApplyOnboardingSelectionsRequestMessage" destination:v18 payload:payloadCopy];

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __128__HMSiriEndpointProfilesMessenger_sendApplyOnboardingSelectionsRequestWithAccessoryUUID_onboardingSelections_completionHandler___block_invoke;
  v28 = &unk_1E754DE00;
  v29 = selfCopy;
  v30 = handlerCopy;
  v22 = handlerCopy;
  [v21 setResponseHandler:&v25];
  v23 = [(HMSiriEndpointProfilesMessenger *)selfCopy messageDispatcher:v25];
  v24 = [v21 copy];
  [v23 sendMessage:v24];
}

void __128__HMSiriEndpointProfilesMessenger_sendApplyOnboardingSelectionsRequestWithAccessoryUUID_onboardingSelections_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Send apply onboarding selections request responded with error: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
LABEL_5:
    (*(*(a1 + 40) + 16))();
    goto LABEL_16;
  }

  if (!v6)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v17;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get apply onboarding selections response payload", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v5 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:8];
    goto LABEL_5;
  }

  v12 = [[HMSiriEndpointApplyOnboardingSelectionsResponsePayload alloc] initWithPayload:v6];
  v13 = v12;
  if (v12)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, [(HMSiriEndpointApplyOnboardingSelectionsResponsePayload *)v12 onboardingResult]);
    v5 = 0;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v21;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode apply onboarding selections response payload: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v5 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
    (*(*(a1 + 40) + 16))();
  }

LABEL_16:
}

- (HMSiriEndpointProfilesMessenger)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher
{
  dCopy = d;
  dispatcherCopy = dispatcher;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = dispatcherCopy;
  if (!dispatcherCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMSiriEndpointProfilesMessenger *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMSiriEndpointProfilesMessenger;
  v10 = [(HMSiriEndpointProfilesMessenger *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageTargetUUID, d);
    objc_storeStrong(&v11->_messageDispatcher, dispatcher);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_59248 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_59248, &__block_literal_global_59249);
  }

  v3 = logCategory__hmf_once_v7_59250;

  return v3;
}

uint64_t __46__HMSiriEndpointProfilesMessenger_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_59250;
  logCategory__hmf_once_v7_59250 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)messageTargetUUIDWithHomeUUID:(id)d
{
  v3 = MEMORY[0x1E696AFB0];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"CFD1F2B8-1A6D-447F-B7CC-23AE501D9033"];
  v6 = MEMORY[0x1E696AFB0];
  uUIDString = [dCopy UUIDString];

  v8 = [uUIDString dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

@end