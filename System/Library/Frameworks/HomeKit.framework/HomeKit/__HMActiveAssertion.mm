@interface __HMActiveAssertion
- (BOOL)acquire:(id *)acquire;
- (__HMActiveAssertion)initWithName:(id)name context:(id)context messageTargetUUID:(id)d;
- (void)_setAssertionActive:(void *)active;
- (void)dealloc;
- (void)invalidate;
@end

@implementation __HMActiveAssertion

- (void)invalidate
{
  if ([(HMFAssertion *)self isValid])
  {
    [(__HMActiveAssertion *)self _setAssertionActive:?];
  }

  v3.receiver = self;
  v3.super_class = __HMActiveAssertion;
  [(HMFAssertion *)&v3 invalidate];
}

- (void)_setAssertionActive:(void *)active
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (active)
  {
    v4 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [active messageTargetUUID];
    v6 = [v4 initWithTarget:messageTargetUUID];

    v15[0] = @"HMAA.mk.state";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v15[1] = @"HMAA.mk.uuid";
    v16[0] = v7;
    uUID = [active UUID];
    v16[1] = uUID;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

    v10 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMAA.m.updateState" destination:v6 payload:v9];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43____HMActiveAssertion__setAssertionActive___block_invoke;
    v13[3] = &__block_descriptor_33_e34_v24__0__NSError_8__NSDictionary_16l;
    v14 = a2;
    [v10 setResponseHandler:v13];
    context = [active context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v10];
  }
}

- (BOOL)acquire:(id *)acquire
{
  v10.receiver = self;
  v10.super_class = __HMActiveAssertion;
  [(HMFAssertion *)&v10 acquire:acquire];
  objc_initWeak(&location, self);
  context = [(__HMActiveAssertion *)self context];
  xpcClient = [context xpcClient];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31____HMActiveAssertion_acquire___block_invoke;
  v7[3] = &unk_1E754E540;
  objc_copyWeak(&v8, &location);
  [xpcClient registerReconnectionHandler:v7];

  [(__HMActiveAssertion *)self _setAssertionActive:?];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return 1;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(HMFAssertion *)self isValid])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543618;
      v9 = v6;
      v10 = 2112;
      v11 = selfCopy;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_FAULT, "%{public}@Active assertion unexpectedly deallocated: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v7.receiver = self;
  v7.super_class = __HMActiveAssertion;
  [(HMFAssertion *)&v7 dealloc];
}

- (__HMActiveAssertion)initWithName:(id)name context:(id)context messageTargetUUID:(id)d
{
  nameCopy = name;
  contextCopy = context;
  dCopy = d;
  if (!nameCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!contextCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = dCopy;
  if (!dCopy)
  {
LABEL_9:
    v19 = _HMFPreconditionFailure();
    [(HMDeviceSetupOperationBase *)v19 .cxx_destruct];
    return result;
  }

  v21.receiver = self;
  v21.super_class = __HMActiveAssertion;
  v12 = [(HMFAssertion *)&v21 initWithName:nameCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    v14 = [v11 copy];
    messageTargetUUID = v13->_messageTargetUUID;
    v13->_messageTargetUUID = v14;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v13->_UUID;
    v13->_UUID = uUID;
  }

  return v13;
}

@end