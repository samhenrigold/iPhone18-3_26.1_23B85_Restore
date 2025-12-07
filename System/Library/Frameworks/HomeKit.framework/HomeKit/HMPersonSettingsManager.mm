@interface HMPersonSettingsManager
+ (id)logCategory;
+ (id)personSettingsManagerUUIDFromHomeUUID:(id)d;
- (HMFMessageDestination)messageDestination;
- (HMPersonSettingsManager)initWithContext:(id)context UUID:(id)d;
- (HMPersonSettingsManager)initWithHome:(id)home;
- (id)logIdentifier;
- (void)_sendMessageWithName:(id)name payload:(id)payload responseHandler:(id)handler;
- (void)fetchClassificationNotificationsEnabledForPersonWithUUID:(id)d completion:(id)completion;
- (void)updateClassificationNotificationsEnabled:(BOOL)enabled forPersonWithUUID:(id)d completion:(id)completion;
@end

@implementation HMPersonSettingsManager

- (id)logIdentifier
{
  uUID = [(HMPersonSettingsManager *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (HMFMessageDestination)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonSettingsManager *)self UUID];
  v5 = [v3 initWithTarget:uUID];

  return v5;
}

- (void)_sendMessageWithName:(id)name payload:(id)payload responseHandler:(id)handler
{
  v8 = MEMORY[0x1E69A2A10];
  handlerCopy = handler;
  payloadCopy = payload;
  nameCopy = name;
  messageDestination = [(HMPersonSettingsManager *)self messageDestination];
  v15 = [v8 messageWithName:nameCopy destination:messageDestination payload:payloadCopy];

  [v15 setResponseHandler:handlerCopy];
  context = [(HMPersonSettingsManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

- (void)updateClassificationNotificationsEnabled:(BOOL)enabled forPersonWithUUID:(id)d completion:(id)completion
{
  enabledCopy = enabled;
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v25 = v13;
    v26 = 2048;
    v27 = enabledCopy;
    v28 = 2112;
    v29 = dCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Set classification notifications enabled: %lu, for person with uuid: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v22[0] = @"HMPersonSettingsManagerPersonUUIDKey";
  v22[1] = @"HMPersonSettingsManagerClassificationNotificationsEnabledKey";
  v23[0] = dCopy;
  v14 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v23[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__HMPersonSettingsManager_updateClassificationNotificationsEnabled_forPersonWithUUID_completion___block_invoke;
  v18[3] = &unk_1E754C620;
  v21 = enabledCopy;
  v18[4] = selfCopy;
  v19 = dCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = dCopy;
  [(HMPersonSettingsManager *)selfCopy _sendMessageWithName:@"HMPersonSettingsManagerSetClassificationNotificationsEnabledMessage" payload:v15 responseHandler:v18];
}

void __97__HMPersonSettingsManager_updateClassificationNotificationsEnabled_forPersonWithUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
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
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to update classification notifications enabled with error: %@", &v16, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    v13 = *(a1 + 40);
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully updated classification notifications enabled to %@ for person with UUID: %@", &v16, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v14 = [*(a1 + 32) context];
  v15 = [v14 delegateCaller];
  [v15 callCompletion:*(a1 + 48) error:v5];
}

- (void)fetchClassificationNotificationsEnabledForPersonWithUUID:(id)d completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching classification notifications enabled for person with uuid: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v16 = @"HMPersonSettingsManagerPersonUUIDKey";
  v17 = dCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke;
  v14[3] = &unk_1E754DE00;
  v14[4] = selfCopy;
  v15 = completionCopy;
  v13 = completionCopy;
  [(HMPersonSettingsManager *)selfCopy _sendMessageWithName:@"HMPersonSettingsManagerFetchClassificationNotificationsEnabledMessage" payload:v12 responseHandler:v14];
}

void __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 hmf_numberForKey:@"HMPersonSettingsManagerClassificationNotificationsEnabledKey"];
    if (v8)
    {
      v9 = v8;
      v10 = [*(a1 + 32) context];
      v11 = [v10 delegateCaller];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke_2;
      v25[3] = &unk_1E754E0F8;
      v25[4] = *(a1 + 32);
      v12 = v9;
      v26 = v12;
      v27 = *(a1 + 40);
      [v11 invokeBlock:v25];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v22;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to find enabled value on message response payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [*(a1 + 32) context];
      v24 = [v23 delegateCaller];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke_16;
      v28[3] = &unk_1E754E430;
      v29 = *(a1 + 40);
      [v24 invokeBlock:v28];

      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v16;
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch classification notifications enabled with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [*(a1 + 32) context];
    v18 = [v17 delegateCaller];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke_14;
    v30[3] = &unk_1E754E458;
    v32 = *(a1 + 40);
    v31 = v5;
    [v18 invokeBlock:v30];

    v12 = v32;
  }
}

void __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke_16(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
  (*(v1 + 16))(v1, 1, v2);
}

uint64_t __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) BOOLValue];
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling completion with enabled: %lu", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 40) BOOLValue], 0);
}

- (HMPersonSettingsManager)initWithContext:(id)context UUID:(id)d
{
  contextCopy = context;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = HMPersonSettingsManager;
  v9 = [(HMPersonSettingsManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    v11 = [objc_opt_class() personSettingsManagerUUIDFromHomeUUID:dCopy];
    UUID = v10->_UUID;
    v10->_UUID = v11;
  }

  return v10;
}

- (HMPersonSettingsManager)initWithHome:(id)home
{
  homeCopy = home;
  context = [homeCopy context];
  uuid = [homeCopy uuid];

  v7 = [(HMPersonSettingsManager *)self initWithContext:context UUID:uuid];
  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7, &__block_literal_global_27135);
  }

  v3 = logCategory__hmf_once_v8;

  return v3;
}

uint64_t __38__HMPersonSettingsManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8;
  logCategory__hmf_once_v8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)personSettingsManagerUUIDFromHomeUUID:(id)d
{
  v3 = MEMORY[0x1E696AFB0];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"C23FC973-0266-4A09-BC05-8BB8A48F79C9"];
  v6 = MEMORY[0x1E696AFB0];
  uUIDString = [dCopy UUIDString];

  v8 = [uUIDString dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

@end