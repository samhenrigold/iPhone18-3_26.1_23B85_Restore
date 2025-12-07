@interface __HMFLocationAuthorizationMarkOperation
+ (id)logCategory;
- (void)main;
@end

@implementation __HMFLocationAuthorizationMarkOperation

- (void)main
{
  v14 = *MEMORY[0x277D85DE8];
  manager = [(__HMFLocationManagerOperation *)self manager];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle(selfCopy, v6);
  v8 = v7;
  if (manager)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier(selfCopy);
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_INFO, "%{public}@Marking as having received location", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [manager markAsHavingReceivedLocation];
    [(HMFOperation *)selfCopy finish];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier(selfCopy);
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Missing internal location manager", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Unexpected internal state."];
    [(HMFOperation *)selfCopy cancelWithError:v11];
  }
}

+ (id)logCategory
{
  if (_MergedGlobals_52 != -1)
  {
    dispatch_once(&_MergedGlobals_52, &__block_literal_global);
  }

  v3 = qword_280AFC548;

  return v3;
}

@end