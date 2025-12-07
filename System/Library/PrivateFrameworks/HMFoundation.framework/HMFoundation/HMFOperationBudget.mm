@interface HMFOperationBudget
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)logCategory;
- (BOOL)decrementByCount:(unint64_t)count;
- (BOOL)isEmpty;
- (BOOL)isFull;
- (HMFOperationBudget)init;
- (HMFOperationBudget)initWithLimit:(unint64_t)limit rate:(_HMFRate)rate;
- (_HMFRate)rate;
- (unint64_t)value;
- (void)reset;
- (void)timerDidFire:(id)fire;
@end

@implementation HMFOperationBudget

+ (id)logCategory
{
  if (_MergedGlobals_3_1 != -1)
  {
    dispatch_once(&_MergedGlobals_3_1, &__block_literal_global_11);
  }

  v3 = qword_280AFC2E0;

  return v3;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"value"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"full"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [keyCopy isEqualToString:@"empty"] ^ 1;
  }

  return v4;
}

- (HMFOperationBudget)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFOperationBudget)initWithLimit:(unint64_t)limit rate:(_HMFRate)rate
{
  if (!limit)
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE660];
    v15 = @"Limit must be nonzero";
    goto LABEL_9;
  }

  value = rate.value;
  if (!rate.value || (period = rate.period, v6 = rate.period, rate.period <= 0.0))
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE660];
    v15 = @"Rate is invalid";
LABEL_9:
    v16 = [v13 exceptionWithName:v14 reason:v15 userInfo:0];
    objc_exception_throw(v16);
  }

  v17.receiver = self;
  v17.super_class = HMFOperationBudget;
  v8 = [(HMFOperationBudget *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_limit = limit;
    v8->_value = limit;
    v8->_rate.value = value;
    v8->_rate.period = period;
    v10 = [[HMFTimer alloc] initWithTimeInterval:5 options:v6];
    timer = v9->_timer;
    v9->_timer = v10;

    [(HMFTimer *)v9->_timer setDelegate:v9];
  }

  return v9;
}

- (unint64_t)value
{
  os_unfair_recursive_lock_lock_with_options();
  value = self->_value;
  os_unfair_recursive_lock_unlock();
  return value;
}

- (BOOL)isFull
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_value == self->_limit;
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (BOOL)isEmpty
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_value == 0;
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (void)reset
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_value != self->_limit)
  {
    [(HMFTimer *)self->_timer suspend];
    __updateValue(self, self->_limit);
  }

  os_unfair_recursive_lock_unlock();
}

- (BOOL)decrementByCount:(unint64_t)count
{
  v33 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle(selfCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier(selfCopy);
    v29 = 138543618;
    v30 = v9;
    v31 = 2048;
    countCopy = count;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Decrementing by %tu", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  value = selfCopy->_value;
  if (value < count)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v26 = HMFGetOSLogHandle(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier(v24);
      v29 = 138543362;
      v30 = v27;
      _os_log_impl(&dword_22ADEC000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Cannot decrement, not enough budget", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
  }

  else
  {
    isFull = [(HMFOperationBudget *)selfCopy isFull];
    __updateValue(selfCopy, selfCopy->_value - count);
    if (isFull)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v15 = HMFGetOSLogHandle(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier(v13);
        v29 = 138543362;
        v30 = v16;
        _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Starting timer", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [v13[2] resume];
    }

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v20 = HMFGetOSLogHandle(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier(v18);
      v22 = selfCopy->_value;
      v29 = 138543618;
      v30 = v21;
      v31 = 2048;
      countCopy = v22;
      _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Successfully decremented to: %tu", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  os_unfair_recursive_lock_unlock();
  return value >= count;
}

uint64_t __33__HMFOperationBudget_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"OperationBudget", @"com.apple.HMFoundation");
  v1 = qword_280AFC2E0;
  qword_280AFC2E0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)timerDidFire:(id)fire
{
  v26 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  os_unfair_recursive_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle(selfCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier(selfCopy);
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Incrementing", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v10 = selfCopy->_rate.value + selfCopy->_value;
  if (v10 >= selfCopy->_limit)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v14 = HMFGetOSLogHandle(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier(v12);
      v22 = 138543362;
      v23 = v15;
      _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Stopping timer", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [v12[2] suspend];
    __updateValue(v12, selfCopy->_limit);
  }

  else
  {
    __updateValue(selfCopy, v10);
    selfCopy->_value += selfCopy->_rate.value;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy;
  v19 = HMFGetOSLogHandle(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier(v17);
    value = selfCopy->_value;
    v22 = 138543618;
    v23 = v20;
    v24 = 2048;
    v25 = value;
    _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Incremented to: %tu", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  os_unfair_recursive_lock_unlock();
}

- (_HMFRate)rate
{
  p_rate = &self->_rate;
  value = self->_rate.value;
  period = p_rate->period;
  result.period = period;
  result.value = value;
  return result;
}

@end