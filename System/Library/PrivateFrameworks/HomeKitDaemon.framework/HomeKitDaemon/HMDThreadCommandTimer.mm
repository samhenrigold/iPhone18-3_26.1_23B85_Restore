@interface HMDThreadCommandTimer
+ (id)logCategory;
- (HMDThreadCommandTimer)initWithQueue:(id)queue delayInSecs:(id)secs;
- (HMDThreadCommandTimer)initWithTimer:(id)timer;
- (id)_commandTypeValueToString:(int64_t)string;
- (int64_t)currentlyScheduledCommand;
- (void)abort;
- (void)startWithBlock:(id)block completion:(id)completion commandType:(int64_t)type;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDThreadCommandTimer

- (id)_commandTypeValueToString:(int64_t)string
{
  if (string == 1)
  {
    return @"provideExtendedMACAddress";
  }

  else
  {
    return @"unknown";
  }
}

- (void)timerDidFire:(id)fire
{
  v22 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  os_unfair_lock_lock(&self->_lock);
  commandBlock = [(HMDThreadCommandTimer *)self commandBlock];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (commandBlock)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDThreadCommandTimer *)selfCopy _commandTypeValueToString:[(HMDThreadCommandTimer *)selfCopy commandType]];
      v16 = 138543874;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2048;
      commandCount = [(HMDThreadCommandTimer *)selfCopy commandCount];
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Executing deferred thread command %@ now with id(%lu)", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    commandQueue = [(HMDThreadCommandTimer *)selfCopy commandQueue];
    commandBlock2 = [(HMDThreadCommandTimer *)selfCopy commandBlock];
    dispatch_async(commandQueue, commandBlock2);

    [(HMDThreadCommandTimer *)selfCopy setCommandType:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDThreadCommandTimer *)selfCopy _commandTypeValueToString:[(HMDThreadCommandTimer *)selfCopy commandType]];
      v16 = 138543874;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      v20 = 2048;
      commandCount = [(HMDThreadCommandTimer *)selfCopy commandCount];
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Execution block not found for thread command %@ with id(%lu)", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)currentlyScheduledCommand
{
  os_unfair_lock_lock(&self->_lock);
  commandTimer = [(HMDThreadCommandTimer *)self commandTimer];
  isRunning = [commandTimer isRunning];

  if (isRunning)
  {
    commandType = [(HMDThreadCommandTimer *)self commandType];
  }

  else
  {
    commandType = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return commandType;
}

- (void)abort
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  commandTimer = [(HMDThreadCommandTimer *)self commandTimer];
  isRunning = [commandTimer isRunning];

  if (isRunning)
  {
    commandTimer2 = [(HMDThreadCommandTimer *)self commandTimer];
    [commandTimer2 suspend];

    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDThreadCommandTimer *)selfCopy _commandTypeValueToString:[(HMDThreadCommandTimer *)selfCopy commandType]];
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2048;
      commandCount = [(HMDThreadCommandTimer *)selfCopy commandCount];
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Not executing deferred thread command %@ with id(%lu). Sending nil completion", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    completionForBlock = [(HMDThreadCommandTimer *)selfCopy completionForBlock];
    completionForBlock[2](completionForBlock, 0);

    [(HMDThreadCommandTimer *)selfCopy setCommandType:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)startWithBlock:(id)block completion:(id)completion commandType:(int64_t)type
{
  v35 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  commandTimer = [(HMDThreadCommandTimer *)self commandTimer];
  isRunning = [commandTimer isRunning];

  if (isRunning)
  {
    commandTimer2 = [(HMDThreadCommandTimer *)self commandTimer];
    [commandTimer2 suspend];

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMDThreadCommandTimer *)selfCopy _commandTypeValueToString:[(HMDThreadCommandTimer *)selfCopy commandType]];
      v27 = 138543874;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      v31 = 2048;
      commandCount = [(HMDThreadCommandTimer *)selfCopy commandCount];
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Not executing deferred thread command %@ with id(%lu). Sending nil completion", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    completionForBlock = [(HMDThreadCommandTimer *)selfCopy completionForBlock];
    completionForBlock[2](completionForBlock, 0);
  }

  [(HMDThreadCommandTimer *)self setCommandBlock:blockCopy];
  [(HMDThreadCommandTimer *)self setCompletionForBlock:completionCopy];
  [(HMDThreadCommandTimer *)self setCommandCount:[(HMDThreadCommandTimer *)self commandCount]+ 1];
  [(HMDThreadCommandTimer *)self setCommandType:type];
  v19 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [(HMDThreadCommandTimer *)selfCopy2 _commandTypeValueToString:[(HMDThreadCommandTimer *)selfCopy2 commandType]];
    delayInSecs = [(HMDThreadCommandTimer *)selfCopy2 delayInSecs];
    commandCount2 = [(HMDThreadCommandTimer *)selfCopy2 commandCount];
    v27 = 138544130;
    v28 = v22;
    v29 = 2112;
    v30 = v23;
    v31 = 2112;
    commandCount = delayInSecs;
    v33 = 2048;
    v34 = commandCount2;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Scheduling deferred thread command %@ to execute after %@ secs with id(%lu)", &v27, 0x2Au);
  }

  objc_autoreleasePoolPop(v19);
  commandTimer3 = [(HMDThreadCommandTimer *)selfCopy2 commandTimer];
  [commandTimer3 resume];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDThreadCommandTimer)initWithTimer:(id)timer
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
  timerCopy = timer;
  v8 = dispatch_queue_create("thread-command-timer-test", v6);
  v9 = [(HMDThreadCommandTimer *)self initWithQueue:v8 delayInSecs:&unk_283E73568];

  [(HMDThreadCommandTimer *)v9 setCommandTimer:timerCopy];
  return v9;
}

- (HMDThreadCommandTimer)initWithQueue:(id)queue delayInSecs:(id)secs
{
  queueCopy = queue;
  secsCopy = secs;
  v13.receiver = self;
  v13.super_class = HMDThreadCommandTimer;
  v9 = [(HMDThreadCommandTimer *)&v13 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:{objc_msgSend(secsCopy, "integerValue")}];
    commandTimer = v9->_commandTimer;
    v9->_commandTimer = v10;

    objc_storeStrong(&v9->_delayInSecs, secs);
    [(HMFTimer *)v9->_commandTimer setDelegateQueue:queueCopy];
    [(HMFTimer *)v9->_commandTimer setDelegate:v9];
    v9->_commandType = 0;
    v9->_commandCount = 0;
    objc_storeStrong(&v9->_commandQueue, queue);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_151316 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_151316, &__block_literal_global_151317);
  }

  v3 = logCategory__hmf_once_v6_151318;

  return v3;
}

void __36__HMDThreadCommandTimer_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v6_151318;
  logCategory__hmf_once_v6_151318 = v0;
}

@end