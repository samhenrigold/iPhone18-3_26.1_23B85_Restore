@interface HMBulletinBoardNotification
+ (id)logCategory;
- (BOOL)isEnabled;
- (BOOL)mergeFromNewObject:(id)object;
- (HMBulletinBoardNotification)initWithCoder:(id)coder;
- (HMBulletinBoardNotification)initWithEnabled:(BOOL)enabled condition:(id)condition service:(id)service messageTargetUUID:(id)d;
- (HMService)service;
- (NSPredicate)condition;
- (NSUUID)uniqueIdentifier;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)__configureWithContext:(id)context;
- (void)_callBulletinBoardNotificationUpdatedDelegate;
- (void)_commitWithCompletionHandler:(id)handler;
- (void)_handleBulletinBoardNotificationUpdateNotification:(id)notification;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)commitWithCompletionHandler:(id)handler;
- (void)setCondition:(id)condition;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation HMBulletinBoardNotification

- (HMService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (HMBulletinBoardNotification)initWithCoder:(id)coder
{
  v36 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  accessory = [v5 accessory];
  v7 = accessory;
  if (v5)
  {
    v8 = accessory == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v11;
      v32 = 2112;
      v33 = v5;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded service: %@, accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v26 = 0;
  }

  else
  {
    v12 = [coderCopy decodeBoolForKey:@"HM.BulletinBoardNotificationEnabled"];
    v13 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"HM.BulletinBoardNotificationCondition"];

    home = [v7 home];
    v18 = [HMPredicateUtilities rewritePredicateForClient:v16 home:home];

    instanceID = [v5 instanceID];
    stringValue = [instanceID stringValue];
    v28[0] = stringValue;
    v28[1] = @"HM.BulletinBoardNotification";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];

    v22 = MEMORY[0x1E696AFB0];
    uuid = [v7 uuid];
    v24 = [v22 hm_deriveUUIDFromBaseUUID:uuid identifierSalt:0 withSalts:v21];

    selfCopy = [(HMBulletinBoardNotification *)self initWithEnabled:v12 condition:v18 service:v5 messageTargetUUID:v24];
    v26 = selfCopy;
  }

  return v26;
}

- (BOOL)mergeFromNewObject:(id)object
{
  v31 = *MEMORY[0x1E69E9840];
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
      v25 = 138543874;
      v26 = v13;
      v27 = 2112;
      v28 = condition3;
      v29 = 2112;
      v30 = condition4;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Merging due to condition value change from %@ to %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    condition5 = [v6 condition];
    [(HMBulletinBoardNotification *)selfCopy setCondition:condition5];
  }

  isEnabled = [(HMBulletinBoardNotification *)self isEnabled];
  if (isEnabled != [v6 isEnabled])
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
      v25 = 138543874;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Merging due to enabled value change from %@ to %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    -[HMBulletinBoardNotification setEnabled:](selfCopy2, "setEnabled:", [v6 isEnabled]);
  }

  return v9 ^ 1;
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMBulletinBoardNotification isEnabled](self, "isEnabled")}];
  v5 = [v3 initWithName:@"Enabled" value:v4];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMBulletinBoardNotification *)self uniqueIdentifier];
  v8 = [v6 initWithName:@"Unique ID" value:uniqueIdentifier];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  return v9;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  service = [(HMBulletinBoardNotification *)self service];
  name = [service name];
  messageTargetUUID = [(HMBulletinBoardNotification *)self messageTargetUUID];
  v7 = [v3 stringWithFormat:@"%@/%@", name, messageTargetUUID];

  return v7;
}

- (void)_commitWithCompletionHandler:(id)handler
{
  v55 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMBulletinBoardNotification *)self context];
  if (!handlerCopy)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMBulletinBoardNotification _commitWithCompletionHandler:]", @"completion"];
    v40 = objc_autoreleasePoolPush();
    selfCopy = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v43;
      v53 = 2112;
      v54 = v39;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v39 userInfo:0];
    objc_exception_throw(v44);
  }

  v6 = context;
  if (context)
  {
    service = [(HMBulletinBoardNotification *)self service];
    accessory = [service accessory];
    home = [accessory home];

    if (home)
    {
      v49 = @"HM.BulletinBoardNotificationEnabled";
      v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMBulletinBoardNotification isEnabled](self, "isEnabled")}];
      v50 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v12 = [v11 mutableCopy];

      condition = [(HMBulletinBoardNotification *)self condition];

      if (condition)
      {
        condition2 = [(HMBulletinBoardNotification *)self condition];
        v15 = [HMPredicateUtilities validatePredicate:condition2];

        if (!v15)
        {
          context2 = [(HMBulletinBoardNotification *)self context];
          delegateCaller = [context2 delegateCaller];
          v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
          [delegateCaller callCompletion:handlerCopy error:v29];
          goto LABEL_15;
        }

        buf[0] = 0;
        condition3 = [(HMBulletinBoardNotification *)self condition];
        v17 = [HMPredicateUtilities rewritePredicateForDaemon:condition3 characteristicIsInvalid:buf];

        if (v17)
        {
          v18 = encodeRootObject(v17);
          [v12 setObject:v18 forKeyedSubscript:@"HM.BulletinBoardNotificationCondition"];
        }
      }

      v19 = objc_alloc(MEMORY[0x1E69A2A10]);
      v20 = objc_alloc(MEMORY[0x1E69A2A00]);
      messageTargetUUID = [(HMBulletinBoardNotification *)self messageTargetUUID];
      v22 = [v20 initWithTarget:messageTargetUUID];
      context2 = [v19 initWithName:@"kBulletinBoardNotificationCommitRequestKey" destination:v22 payload:v12];

      context3 = [(HMBulletinBoardNotification *)self context];
      pendingRequests = [context3 pendingRequests];

      identifier = [context2 identifier];
      v27 = _Block_copy(handlerCopy);
      [pendingRequests addCompletionBlock:v27 forIdentifier:identifier];

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __60__HMBulletinBoardNotification__commitWithCompletionHandler___block_invoke;
      v45[3] = &unk_1E754E0A8;
      v46 = pendingRequests;
      v47 = identifier;
      v28 = v6;
      v48 = v28;
      v29 = identifier;
      delegateCaller = pendingRequests;
      [context2 setResponseHandler:v45];
      messageDispatcher = [v28 messageDispatcher];
      [messageDispatcher sendMessage:context2];

LABEL_15:
      goto LABEL_16;
    }

    context4 = [(HMBulletinBoardNotification *)self context];
    delegateCaller2 = [context4 delegateCaller];
    v38 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [delegateCaller2 callCompletion:handlerCopy error:v38];

    home = 0;
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v35;
      v53 = 2080;
      v54 = "[HMBulletinBoardNotification _commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, home);
  }

LABEL_16:
}

void __60__HMBulletinBoardNotification__commitWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v7 = [v3 removeCompletionBlockForIdentifier:v4];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v7 error:v5];
  }
}

- (void)commitWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMBulletinBoardNotification *)self context];
  if (!handlerCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMBulletinBoardNotification commitWithCompletionHandler:]", @"completion"];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0];
    objc_exception_throw(v18);
  }

  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__HMBulletinBoardNotification_commitWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v20 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2080;
      v24 = "[HMBulletinBoardNotification commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }
}

- (void)_callBulletinBoardNotificationUpdatedDelegate
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Calling service notification delegate", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  service = [(HMBulletinBoardNotification *)selfCopy service];
  accessory = [service accessory];
  delegate = [accessory delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63E80])
  {
    v10 = delegate;
    if (objc_opt_respondsToSelector())
    {
      context = [(HMBulletinBoardNotification *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __76__HMBulletinBoardNotification__callBulletinBoardNotificationUpdatedDelegate__block_invoke;
      v13[3] = &unk_1E754E5E8;
      v14 = v10;
      v15 = accessory;
      v16 = service;
      [delegateCaller invokeBlock:v13];
    }
  }
}

- (void)setCondition:(id)condition
{
  conditionCopy = condition;
  os_unfair_lock_lock_with_options();
  condition = self->_condition;
  self->_condition = conditionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSPredicate)condition
{
  os_unfair_lock_lock_with_options();
  v3 = self->_condition;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_enabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock_with_options();
  enabled = self->_enabled;
  os_unfair_lock_unlock(&self->_lock);
  return enabled;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_messageTargetUUID];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_handleBulletinBoardNotificationUpdateNotification:(id)notification
{
  v29 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    messagePayload = [notificationCopy messagePayload];
    v25 = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = messagePayload;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received bulletin board update notification with message %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [notificationCopy BOOLForKey:@"HM.BulletinBoardNotificationEnabled"];
  v11 = [notificationCopy predicateForKey:@"HM.BulletinBoardNotificationCondition"];
  service = [(HMBulletinBoardNotification *)selfCopy service];
  accessory = [service accessory];
  home = [accessory home];
  v15 = [HMPredicateUtilities rewritePredicateForClient:v11 home:home];

  context = [(HMBulletinBoardNotification *)selfCopy context];
  pendingRequests = [context pendingRequests];

  identifier = [notificationCopy identifier];
  v19 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v20 = v10 ^ [(HMBulletinBoardNotification *)selfCopy isEnabled];
  if (v20 == 1)
  {
    [(HMBulletinBoardNotification *)selfCopy setEnabled:v10];
  }

  condition = [(HMBulletinBoardNotification *)selfCopy condition];
  v22 = HMFEqualObjects();

  if (v22)
  {
    if (!v19)
    {
      if (!v20)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    [(HMBulletinBoardNotification *)selfCopy setCondition:v15];
    if (!v19)
    {
LABEL_11:
      [(HMBulletinBoardNotification *)selfCopy _callBulletinBoardNotificationUpdatedDelegate];
      goto LABEL_12;
    }
  }

  context2 = [(HMBulletinBoardNotification *)selfCopy context];
  delegateCaller = [context2 delegateCaller];
  [delegateCaller callCompletion:v19 error:0];

LABEL_12:
}

- (void)_unconfigure
{
  v15 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring bulletinBoard notification", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    context = [(HMBulletinBoardNotification *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher deregisterReceiver:selfCopy];

    [(HMBulletinBoardNotification *)selfCopy setContext:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)__configureWithContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = contextCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMBulletinBoardNotification *)selfCopy setContext:contextCopy];
  [(HMBulletinBoardNotification *)selfCopy _registerNotificationHandlers];
}

- (void)_registerNotificationHandlers
{
  context = [(HMBulletinBoardNotification *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"kBulletinBoardNotificationUpdateNotificationKey" receiver:self selector:sel__handleBulletinBoardNotificationUpdateNotification_];
}

- (HMBulletinBoardNotification)initWithEnabled:(BOOL)enabled condition:(id)condition service:(id)service messageTargetUUID:(id)d
{
  conditionCopy = condition;
  serviceCopy = service;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = HMBulletinBoardNotification;
  v14 = [(HMBulletinBoardNotification *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_enabled = enabled;
    objc_storeStrong(&v14->_condition, condition);
    objc_storeWeak(&v15->_service, serviceCopy);
    objc_storeStrong(&v15->_messageTargetUUID, d);
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14, &__block_literal_global_63213);
  }

  v3 = logCategory__hmf_once_v15;

  return v3;
}

uint64_t __42__HMBulletinBoardNotification_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v15;
  logCategory__hmf_once_v15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end