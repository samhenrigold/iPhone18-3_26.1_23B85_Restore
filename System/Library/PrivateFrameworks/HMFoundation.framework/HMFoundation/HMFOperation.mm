@interface HMFOperation
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (HMFActivity)activity;
- (HMFOperation)initWithTimeout:(double)timeout;
- (NSArray)attributeDescriptions;
- (NSDate)timeoutDate;
- (NSError)error;
- (NSString)shortDescription;
- (id)logIdentifier;
- (void)cancel;
- (void)cancelWithError:(id)error;
- (void)finish;
- (void)main;
- (void)setActivity:(id)activity;
- (void)setQualityOfService:(int64_t)service;
- (void)start;
- (void)timerDidFire:(id)fire;
@end

@implementation HMFOperation

- (void)start
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _willChangeValuesForKeys:v3];

  os_unfair_lock_lock_with_options();
  if (self->_executing)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy = self;
    v36 = HMFGetOSLogHandle(selfCopy, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543362;
      v45 = v37;
      _os_log_impl(&dword_22ADEC000, v36, OS_LOG_TYPE_ERROR, "%{public}@Operation is already executing", buf, 0xCu);
    }

LABEL_24:

    objc_autoreleasePoolPop(v33);
    v41 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Operation is already executing." userInfo:0];
    objc_exception_throw(v41);
  }

  if (([(HMFOperation *)self isReady]& 1) == 0)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v36 = HMFGetOSLogHandle(selfCopy2, v39);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier(selfCopy2);
      *buf = 138543362;
      v45 = v40;
      _os_log_impl(&dword_22ADEC000, v36, OS_LOG_TYPE_ERROR, "%{public}@Operation is not ready", buf, 0xCu);
    }

    goto LABEL_24;
  }

  if (self->_finished || [(HMFOperation *)self isCancelled])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v7 = HMFGetOSLogHandle(selfCopy3, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(selfCopy3);
      *buf = 138543362;
      v45 = v8;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Operation is already complete, aborting.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if (!self->_finished)
    {
      self->_finished = 1;
      v9 = objc_autoreleasePoolPush();
      v10 = selfCopy3;
      v12 = HMFGetOSLogHandle(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier(v10);
        *buf = 138543362;
        v45 = v13;
        _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@Cancelled operation was not marked finished, marking finished", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    activity = self->_activity;
    if (!activity)
    {
      v15 = self->_voucher;
      voucher_adopt();
      v16 = MEMORY[0x277CCACA8];
      identifier = [(HMFOperation *)self identifier];
      uUIDString = [identifier UUIDString];
      v19 = [v16 stringWithFormat:@"Operation:%@", uUIDString];

      v20 = [[HMFActivity alloc] initWithName:v19];
      v21 = self->_activity;
      self->_activity = v20;

      [(HMFActivity *)self->_activity end];
      activity = self->_activity;
    }

    [(HMFActivity *)activity begin];
    [(HMFActivity *)self->_activity markWithReason:@"Starting operation"];
    v22 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v25 = HMFGetOSLogHandle(selfCopy4, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier(selfCopy4);
      *buf = 138543362;
      v45 = v26;
      _os_log_impl(&dword_22ADEC000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Starting operation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    self->_executing = 1;
    timer = [(HMFOperation *)selfCopy4 timer];
    [timer resume];

    v28 = self->_activity;
    if (selfCopy4->_qosWasSet)
    {
      qualityOfService = [(HMFOperation *)selfCopy4 qualityOfService];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __21__HMFOperation_start__block_invoke;
      v43[3] = &unk_2786E6C80;
      v43[4] = selfCopy4;
      v30 = [(HMFActivity *)v28 blockWithQualityOfService:qualityOfService block:v43];
    }

    else
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __21__HMFOperation_start__block_invoke_2;
      v42[3] = &unk_2786E6C80;
      v42[4] = selfCopy4;
      v30 = [(HMFActivity *)v28 blockWithBlock:v42];
    }

    v31 = v30;
    dispatch_async(selfCopy4->_queue, v30);
    [(HMFActivity *)self->_activity end];
  }

  os_unfair_lock_unlock(&self->_lock);
  v32 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _didChangeValuesForKeys:v32];
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock_with_options();
  executing = self->_executing;
  os_unfair_lock_unlock(&self->_lock);
  return executing;
}

- (BOOL)isFinished
{
  os_unfair_lock_lock_with_options();
  finished = self->_finished;
  os_unfair_lock_unlock(&self->_lock);
  return finished;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"executing"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"isExecuting") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"finished") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"isFinished"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___HMFOperation;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

- (HMFOperation)initWithTimeout:(double)timeout
{
  v17.receiver = self;
  v17.super_class = HMFOperation;
  v4 = [(HMFOperation *)&v17 init];
  if (v4)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v4->_identifier;
    v4->_identifier = uUID;

    v7 = HMFDispatchQueueName(v4, 0);
    v8 = dispatch_queue_create(v7, 0);
    queue = v4->_queue;
    v4->_queue = v8;

    v10 = voucher_copy();
    voucher = v4->_voucher;
    v4->_voucher = v10;

    identifier = [(HMFOperation *)v4 identifier];
    uUIDString = [identifier UUIDString];
    [(HMFOperation *)v4 setName:uUIDString];

    if (timeout > 0.0)
    {
      v14 = [[HMFTimer alloc] initWithTimeInterval:0 options:timeout];
      timer = v4->_timer;
      v4->_timer = v14;

      [(HMFTimer *)v4->_timer setDelegate:v4];
    }
  }

  return v4;
}

- (NSError)error
{
  os_unfair_lock_lock_with_options();
  v3 = self->_error;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDate)timeoutDate
{
  timer = [(HMFOperation *)self timer];
  fireDate = [timer fireDate];
  v4 = fireDate;
  if (fireDate)
  {
    distantFuture = fireDate;
  }

  else
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v6 = distantFuture;

  return v6;
}

- (void)setQualityOfService:(int64_t)service
{
  v7.receiver = self;
  v7.super_class = HMFOperation;
  [(HMFOperation *)&v7 setQualityOfService:?];
  queue = self->_queue;
  v6 = dispatch_get_global_queue(service, 0);
  dispatch_set_target_queue(queue, v6);

  self->_qosWasSet = 1;
}

- (void)main
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle(selfCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier(selfCopy);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Subclasses should override main", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
  [(HMFOperation *)self cancelWithError:v3];
}

- (void)cancelWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_lock_with_options();
  if (!self->_finished)
  {
    objc_storeStrong(&self->_error, error);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13.receiver = self;
  v13.super_class = HMFOperation;
  [(HMFOperation *)&v13 cancel];
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _willChangeValuesForKeys:v6];

  os_unfair_lock_lock_with_options();
  if (!self->_finished)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle(selfCopy, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = errorCopy;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (selfCopy->_executing)
    {
      selfCopy->_executing = 0;
      self->_finished = 1;
    }

    [(HMFActivity *)selfCopy->_activity invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _didChangeValuesForKeys:v12];
}

- (void)finish
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _willChangeValuesForKeys:v3];

  os_unfair_lock_lock_with_options();
  if (([(HMFOperation *)self isCancelled]& 1) == 0 && !self->_finished)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle(selfCopy, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Finishing operation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    error = selfCopy->_error;
    selfCopy->_error = 0;

    if (selfCopy->_executing)
    {
      selfCopy->_executing = 0;
      self->_finished = 1;
    }

    [(HMFActivity *)selfCopy->_activity invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _didChangeValuesForKeys:v10];
}

- (HMFActivity)activity
{
  os_unfair_lock_lock_with_options();
  v3 = self->_activity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setActivity:(id)activity
{
  v16 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  if (activityCopy)
  {
    os_unfair_lock_lock_with_options();
    if (self->_executing || self->_finished)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle(selfCopy, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier(selfCopy);
        v14 = 138543362;
        v15 = v10;
        _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot set an activity once an operation has started executing", &v14, 0xCu);
      }
    }

    else
    {
      if (!self->_activity)
      {
        objc_storeStrong(&self->_activity, activity);
        goto LABEL_7;
      }

      v6 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v9 = HMFGetOSLogHandle(selfCopy2, v12);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier(selfCopy2);
        v14 = 138543362;
        v15 = v13;
        _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot set an activity once an activity has been set", &v14, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v6);
LABEL_7:
    os_unfair_lock_unlock(&self->_lock);
  }
}

+ (id)logCategory
{
  if (_MergedGlobals_3_15 != -1)
  {
    dispatch_once(&_MergedGlobals_3_15, &__block_literal_global_43);
  }

  v3 = qword_280AFC450;

  return v3;
}

uint64_t __27__HMFOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Operation", @"com.apple.HMFoundation");
  v1 = qword_280AFC450;
  qword_280AFC450 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)logIdentifier
{
  identifier = [(HMFOperation *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (NSArray)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  identifier = [(HMFOperation *)self identifier];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Identifier" value:identifier];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (void)timerDidFire:(id)fire
{
  v13 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle(selfCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier(selfCopy);
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_INFO, "%{public}@Operation timed out, cancelling", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
  [(HMFOperation *)selfCopy cancelWithError:v10];
}

@end