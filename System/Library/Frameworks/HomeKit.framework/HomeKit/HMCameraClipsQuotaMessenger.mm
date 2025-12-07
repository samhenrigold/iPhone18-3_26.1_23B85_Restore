@interface HMCameraClipsQuotaMessenger
+ (NSUUID)UUID;
+ (id)logCategory;
- (HMCameraClipsQuotaMessenger)initWithContext:(id)context;
- (void)fetchNamesForZonesWithCloudStorageEnabledWithCompletion:(id)completion;
- (void)setCloudStorageEnabled:(BOOL)enabled forZoneWithName:(id)name completion:(id)completion;
@end

@implementation HMCameraClipsQuotaMessenger

- (void)setCloudStorageEnabled:(BOOL)enabled forZoneWithName:(id)name completion:(id)completion
{
  enabledCopy = enabled;
  v42 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  completionCopy = completion;
  v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Updating cloud storage"];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    [v10 identifier];
    v29 = completionCopy;
    v16 = v15 = nameCopy;
    shortDescription = [v16 shortDescription];
    v18 = HMFEnabledStatusToString();
    *buf = 138543874;
    v37 = v14;
    v38 = 2114;
    v39 = shortDescription;
    v40 = 2112;
    v41 = v18;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Setting cloud storage to %@", buf, 0x20u);

    nameCopy = v15;
    completionCopy = v29;
  }

  objc_autoreleasePoolPop(v11);
  v19 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [objc_opt_class() UUID];
  v21 = [v19 initWithTarget:uUID];

  v34[0] = @"HMCCQMR.mk.isEnabled";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v34[1] = @"HMCCQMR.mk.zoneName";
  v35[0] = v22;
  v35[1] = nameCopy;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v24 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCQMR.m.updateCloudStorage" destination:v21 payload:v23];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __81__HMCameraClipsQuotaMessenger_setCloudStorageEnabled_forZoneWithName_completion___block_invoke;
  v30[3] = &unk_1E754C620;
  v30[4] = selfCopy;
  v31 = v10;
  v33 = enabledCopy;
  v32 = completionCopy;
  v25 = completionCopy;
  v26 = v10;
  [v24 setResponseHandler:v30];
  context = [(HMCameraClipsQuotaMessenger *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v24 completionHandler:0];
}

void __81__HMCameraClipsQuotaMessenger_setCloudStorageEnabled_forZoneWithName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v19 = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = v13;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to update cloud storage: %@", &v19, 0x20u);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = [*(a1 + 40) identifier];
    v15 = [v14 shortDescription];
    v16 = HMFEnabledStatusToString();
    v19 = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully set cloud storage to %@", &v19, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v17 = [*(a1 + 32) context];
  v18 = [v17 delegateCaller];
  [v18 callCompletion:*(a1 + 48) error:v5];
}

- (void)fetchNamesForZonesWithCloudStorageEnabledWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetching names for zones with cloud storage enabled"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [v5 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v24 = v9;
    v25 = 2114;
    v26 = shortDescription;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching names for zones with cloud storage enabled", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [objc_opt_class() UUID];
  v14 = [v12 initWithTarget:uUID];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCQMR.m.fetchNamesForZonesWithEnabledCloudStorage" destination:v14 payload:0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__HMCameraClipsQuotaMessenger_fetchNamesForZonesWithCloudStorageEnabledWithCompletion___block_invoke;
  v20[3] = &unk_1E754E480;
  v20[4] = selfCopy;
  v21 = v5;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = v5;
  [v15 setResponseHandler:v20];
  context = [(HMCameraClipsQuotaMessenger *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

void __87__HMCameraClipsQuotaMessenger_fetchNamesForZonesWithCloudStorageEnabledWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_setForKey:@"HMCCQMR.mk.zoneNames"];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) identifier];
      v14 = [v13 shortDescription];
      v24 = 138543874;
      v25 = v12;
      v26 = 2114;
      v27 = v14;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched names for zones with cloud storage enabled: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [*(a1 + 32) context];
    v16 = [v15 delegateCaller];
    v17 = v16;
    v18 = *(a1 + 48);
    v19 = v7;
    v20 = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 40) identifier];
      v23 = [v22 shortDescription];
      v24 = 138543874;
      v25 = v21;
      v26 = 2114;
      v27 = v23;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch names for zones with cloud storage enabled: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [*(a1 + 32) context];
    v16 = [v15 delegateCaller];
    v17 = v16;
    v18 = *(a1 + 48);
    v19 = 0;
    v20 = v5;
  }

  [v16 callCompletion:v18 obj:v19 error:v20];
}

- (HMCameraClipsQuotaMessenger)initWithContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v6 = contextCopy;
    v12.receiver = self;
    v12.super_class = HMCameraClipsQuotaMessenger;
    v7 = [(HMCameraClipsQuotaMessenger *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_context, context);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(HMCameraClipsQuotaMessenger *)v10];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_49733 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_49733, &__block_literal_global_49734);
  }

  v3 = logCategory__hmf_once_v7_49735;

  return v3;
}

uint64_t __42__HMCameraClipsQuotaMessenger_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_49735;
  logCategory__hmf_once_v7_49735 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (NSUUID)UUID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"EF39674E-D774-4642-8D67-584A72131553"];

  return v2;
}

@end