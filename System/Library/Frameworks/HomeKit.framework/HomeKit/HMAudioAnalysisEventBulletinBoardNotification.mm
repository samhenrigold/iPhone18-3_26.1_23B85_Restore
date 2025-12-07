@interface HMAudioAnalysisEventBulletinBoardNotification
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)mergeFromNewObject:(id)object;
- (HMAudioAnalysisEventBulletinBoardNotification)initWithEnabled:(BOOL)enabled condition:(id)condition accessoryIdentifier:(id)identifier;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)logIdentifier;
- (id)uniqueIdentifier;
- (unint64_t)options;
- (void)__configureWithContext:(id)context;
- (void)commitWithCompletionHandler:(id)handler;
@end

@implementation HMAudioAnalysisEventBulletinBoardNotification

- (NSArray)attributeDescriptions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMBulletinBoardNotification *)self isEnabled];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"Enabled" value:v4];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  condition = [(HMBulletinBoardNotification *)self condition];
  v8 = [v6 initWithName:@"Condition" value:condition];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  accessoryIdentifier = [(HMAudioAnalysisEventBulletinBoardNotification *)self accessoryIdentifier];
  uUIDString = [accessoryIdentifier UUIDString];

  return uUIDString;
}

- (BOOL)mergeFromNewObject:(id)object
{
  v32 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    condition = [(HMBulletinBoardNotification *)self condition];
    condition2 = [v6 condition];
    v9 = HMFEqualObjects();

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        condition3 = [(HMBulletinBoardNotification *)selfCopy condition];
        condition4 = [v6 condition];
        v26 = 138543874;
        v27 = v13;
        v28 = 2112;
        v29 = condition3;
        v30 = 2112;
        v31 = condition4;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Merging due to condition value change from %@ to %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      condition5 = [v6 condition];
      [(HMBulletinBoardNotification *)selfCopy setCondition:condition5];
    }

    isEnabled = [(HMBulletinBoardNotification *)self isEnabled];
    if (isEnabled == [v6 isEnabled])
    {
      v24 = v9 ^ 1;
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        [(HMBulletinBoardNotification *)selfCopy2 isEnabled];
        v22 = HMFBooleanToString();
        [v6 isEnabled];
        v23 = HMFBooleanToString();
        v26 = 138543874;
        v27 = v21;
        v28 = 2112;
        v29 = v22;
        v30 = 2112;
        v31 = v23;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Merging due to enabled value change from %@ to %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      -[HMBulletinBoardNotification setEnabled:](selfCopy2, "setEnabled:", [v6 isEnabled]);
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)uniqueIdentifier
{
  v2 = MEMORY[0x1E696AFB0];
  accessoryIdentifier = [(HMAudioAnalysisEventBulletinBoardNotification *)self accessoryIdentifier];
  v4 = [v2 hm_deriveUUIDFromBaseUUID:accessoryIdentifier];

  return v4;
}

- (void)__configureWithContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = contextCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring HMAudioAnalysisEventBulletinBoardNotification with context %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMBulletinBoardNotification *)selfCopy setContext:contextCopy];
}

- (void)commitWithCompletionHandler:(id)handler
{
  v48[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMBulletinBoardNotification *)self context];
  if (!handlerCopy)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAudioAnalysisEventBulletinBoardNotification commitWithCompletionHandler:]", @"completion"];
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v32;
      v43 = 2112;
      v44 = v28;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
    objc_exception_throw(v33);
  }

  v6 = context;
  if (context)
  {
    condition = [(HMBulletinBoardNotification *)self condition];
    isEnabled = [(HMBulletinBoardNotification *)self isEnabled];
    if ([HMPredicateUtilities validatePredicate:condition])
    {
      context2 = [HMPredicateUtilities rewritePredicateForDaemon:condition characteristicIsInvalid:0];
      v47[0] = @"HM.BulletinBoardNotificationEnabled";
      v9 = [MEMORY[0x1E696AD98] numberWithBool:isEnabled];
      v48[0] = v9;
      v47[1] = @"HM.BulletinBoardNotificationCondition";
      v10 = encodeRootObject(context2);
      v48[1] = v10;
      delegateCaller = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];

      messageDispatcher = [v6 messageDispatcher];
      v13 = objc_alloc(MEMORY[0x1E69A2A00]);
      accessoryIdentifier = [(HMAudioAnalysisEventBulletinBoardNotification *)self accessoryIdentifier];
      v35 = [v13 initWithTarget:accessoryIdentifier];

      objc_initWeak(&location, self);
      v15 = [MEMORY[0x1E69A2A10] messageWithName:@"kBulletinBoardNotificationCommitRequestKey" destination:v35 payload:delegateCaller];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __77__HMAudioAnalysisEventBulletinBoardNotification_commitWithCompletionHandler___block_invoke;
      v37[3] = &unk_1E754CFF8;
      objc_copyWeak(&v39, &location);
      v38 = handlerCopy;
      [v15 setResponseHandler:v37];
      context = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        shortDescription = [v15 shortDescription];
        *buf = 138543874;
        v42 = v18;
        v43 = 2112;
        v44 = shortDescription;
        v45 = 2112;
        v46 = selfCopy2;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Committing audio analysis event bulletin board notification using message %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      [messageDispatcher sendMessage:v15];

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v27;
        v43 = 2112;
        v44 = condition;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid predicate: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      context2 = [(HMBulletinBoardNotification *)selfCopy3 context];
      delegateCaller = [context2 delegateCaller];
      messageDispatcher = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [delegateCaller callCompletion:handlerCopy error:messageDispatcher];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v23;
      v43 = 2080;
      v44 = "[HMAudioAnalysisEventBulletinBoardNotification commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    condition = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, condition);
  }
}

void __77__HMAudioAnalysisEventBulletinBoardNotification_commitWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v12;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Daemon responded with error %@ for commiting Audio Analysis settings", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [v9 context];
    v14 = [v13 delegateCaller];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77__HMAudioAnalysisEventBulletinBoardNotification_commitWithCompletionHandler___block_invoke_20;
    v21[3] = &unk_1E754E458;
    v15 = &v23;
    v23 = *(a1 + 32);
    v22 = v5;
    [v14 invokeBlock:v21];

    v16 = v22;
  }

  else
  {
    if (v11)
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v17;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set Audio Analysis user notification settings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v16 = [v9 context];
    v18 = [v16 delegateCaller];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__HMAudioAnalysisEventBulletinBoardNotification_commitWithCompletionHandler___block_invoke_22;
    v19[3] = &unk_1E754E430;
    v15 = &v20;
    v20 = *(a1 + 32);
    [v18 invokeBlock:v19];
  }
}

- (unint64_t)options
{
  condition = [(HMBulletinBoardNotification *)self condition];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = condition;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [HMPredicateUtilities audioAnalysisNotificationOptionsInPredicate:v4];

  unsignedIntValue = [v5 unsignedIntValue];
  return unsignedIntValue;
}

- (HMAudioAnalysisEventBulletinBoardNotification)initWithEnabled:(BOOL)enabled condition:(id)condition accessoryIdentifier:(id)identifier
{
  enabledCopy = enabled;
  v8 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  conditionCopy = condition;
  uUID = [v8 UUID];
  v16.receiver = self;
  v16.super_class = HMAudioAnalysisEventBulletinBoardNotification;
  v12 = [(HMBulletinBoardNotification *)&v16 initWithEnabled:enabledCopy condition:conditionCopy service:0 messageTargetUUID:uUID];

  v13 = [identifierCopy copy];
  accessoryIdentifier = v12->_accessoryIdentifier;
  v12->_accessoryIdentifier = v13;

  return v12;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_13428 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_13428, &__block_literal_global_13429);
  }

  v3 = logCategory__hmf_once_v12_13430;

  return v3;
}

uint64_t __60__HMAudioAnalysisEventBulletinBoardNotification_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v12_13430;
  logCategory__hmf_once_v12_13430 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end