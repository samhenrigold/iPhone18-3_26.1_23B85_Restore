@interface HMDHomeActivityRootState
+ (id)logCategory;
- (HMDHomeActivityRootState)initWithParent:(id)parent;
- (int64_t)handleEvent:(id)event;
@end

@implementation HMDHomeActivityRootState

- (int64_t)handleEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    currentHomeActivityState = [(HMDHomeActivityState *)selfCopy currentHomeActivityState];
    stateType = [objc_opt_class() stateType];
    v11 = HMDHomeActivityStateTypeToString(stateType);
    v14 = 138543874;
    v15 = v8;
    v16 = 2112;
    v17 = eventCopy;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@UNHANDLED EVENT : %@, currentState: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  [eventCopy completedWithError:v12];

  return 2;
}

- (HMDHomeActivityRootState)initWithParent:(id)parent
{
  v6.receiver = self;
  v6.super_class = HMDHomeActivityRootState;
  v3 = [(HMDHomeActivityState *)&v6 initWithParent:parent];
  v4 = v3;
  if (v3)
  {
    [(HMDHomeActivityState *)v3 setAutoNotifySubsystemsAboutStateChange:0];
  }

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_247618 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_247618, &__block_literal_global_247619);
  }

  v3 = logCategory__hmf_once_v2_247620;

  return v3;
}

void __39__HMDHomeActivityRootState_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_247620;
  logCategory__hmf_once_v2_247620 = v0;
}

@end