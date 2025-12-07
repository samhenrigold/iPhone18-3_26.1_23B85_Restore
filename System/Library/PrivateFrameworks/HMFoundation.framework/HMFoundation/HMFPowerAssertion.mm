@interface HMFPowerAssertion
- (HMFPowerAssertion)initWithName:(id)name;
- (HMFPowerAssertion)initWithName:(id)name timeout:(double)timeout;
- (void)_cleanUpPowerAssertion;
- (void)invalidate;
@end

@implementation HMFPowerAssertion

- (HMFPowerAssertion)initWithName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = HMFPowerAssertion;
  v5 = [(HMFAssertion *)&v15 initWithName:nameCopy];
  v6 = v5;
  if (v5 && (v7 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", [(HMFAssertion *)v5 uniqueDescription], 0, 0, 0, 0.0, 0, &v5->_identifier)) != 0)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle(0, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v17 = v12;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to create assertion with error: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  return v13;
}

- (HMFPowerAssertion)initWithName:(id)name timeout:(double)timeout
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = HMFPowerAssertion;
  v7 = [(HMFAssertion *)&v17 initWithName:nameCopy];
  v8 = v7;
  if (v7 && (v9 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", [(HMFAssertion *)v7 uniqueDescription], 0, 0, 0, timeout, @"TimeoutActionTurnOff", &v7->_identifier)) != 0)
  {
    v10 = v9;
    v11 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle(0, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v19 = v14;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to create assertion with error: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  return v15;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = HMFPowerAssertion;
  [(HMFAssertion *)&v3 invalidate];
  [(HMFPowerAssertion *)self _cleanUpPowerAssertion];
}

- (void)_cleanUpPowerAssertion
{
  if ([(HMFPowerAssertion *)self identifier])
  {
    IOPMAssertionRelease([(HMFPowerAssertion *)self identifier]);

    [(HMFPowerAssertion *)self setIdentifier:0];
  }
}

@end