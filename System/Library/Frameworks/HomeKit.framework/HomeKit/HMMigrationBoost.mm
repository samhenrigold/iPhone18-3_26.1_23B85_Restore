@interface HMMigrationBoost
- (HMMigrationBoost)initWithMessageTarget:(id)target notificationCenter:(id)center messageDispatcher:(id)dispatcher queue:(id)queue;
- (void)_handleDaemonInterruptedNotification:(id)notification;
- (void)startBoost;
- (void)stopBoost;
@end

@implementation HMMigrationBoost

- (void)_handleDaemonInterruptedNotification:(id)notification
{
  queue = [(HMMigrationBoost *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__HMMigrationBoost__handleDaemonInterruptedNotification___block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __57__HMMigrationBoost__handleDaemonInterruptedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Sending boost message after daemon disconnect", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = MEMORY[0x1E69A2A10];
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  v8 = [*(a1 + 32) messageTarget];
  v9 = [v7 initWithTarget:v8];
  v10 = [v6 messageWithName:@"HMHM.upgradeToHH2Boost" destination:v9 payload:0];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__HMMigrationBoost__handleDaemonInterruptedNotification___block_invoke_4;
  v12[3] = &unk_1E754CD98;
  v12[4] = *(a1 + 32);
  [v10 setResponseHandler:v12];
  v11 = [*(a1 + 32) messageDispatcher];
  [v11 sendMessage:v10 completionHandler:0];
}

void __57__HMMigrationBoost__handleDaemonInterruptedNotification___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Received response to boost message: %@, error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) stopBoost];
}

- (void)stopBoost
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@No longer waiting for daemon disconnect to trigger a boost", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  notificationCenter = [(HMMigrationBoost *)selfCopy notificationCenter];
  [notificationCenter removeObserver:selfCopy];
}

- (void)startBoost
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Waiting for daemon disconnect to trigger a boost", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  notificationCenter = [(HMMigrationBoost *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel__handleDaemonInterruptedNotification_ name:@"HMDaemonDisconnectedNotification" object:0];
}

- (HMMigrationBoost)initWithMessageTarget:(id)target notificationCenter:(id)center messageDispatcher:(id)dispatcher queue:(id)queue
{
  targetCopy = target;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = HMMigrationBoost;
  v15 = [(HMMigrationBoost *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_messageTarget, target);
    objc_storeStrong(&v16->_notificationCenter, center);
    objc_storeStrong(&v16->_messageDispatcher, dispatcher);
    objc_storeStrong(&v16->_queue, queue);
  }

  return v16;
}

@end