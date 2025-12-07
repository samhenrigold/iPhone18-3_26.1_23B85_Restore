@interface HMDHomeActivityState
+ (id)logCategory;
+ (unint64_t)stateType;
- (BOOL)lookupAndTransitionToState:(unint64_t)state withEvent:(id)event;
- (HMDHomeActivityState)currentHomeActivityState;
- (HMDHomeActivityState)initWithParent:(id)parent;
- (HMDHomeActivityState)initWithParent:(id)parent dataSource:(id)source;
- (HMDHomeActivityStateMachine)homeActivityStateMachine;
- (id)logIdentifier;
- (void)checkAndNotifyAllConsumersAboutStateChangeDueToEvent:(id)event;
- (void)notifyStateChangeToAllConsumers:(unint64_t)consumers withHoldInfo:(id)info transitionalStateEndDate:(id)date reason:(int64_t)reason;
- (void)onInitialTransition:(id)transition;
@end

@implementation HMDHomeActivityState

- (id)logIdentifier
{
  dataSource = [(HMDHomeActivityState *)self dataSource];
  logIdentifier = [dataSource logIdentifier];

  return logIdentifier;
}

- (HMDHomeActivityStateMachine)homeActivityStateMachine
{
  v3 = [(HMDHierarchicalStateMachineState *)self hsm];
  queue = [v3 queue];
  dispatch_assert_queue_V2(queue);

  v5 = [(HMDHierarchicalStateMachineState *)self hsm];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (HMDHomeActivityState)currentHomeActivityState
{
  v3 = [(HMDHierarchicalStateMachineState *)self hsm];
  queue = [v3 queue];
  dispatch_assert_queue_V2(queue);

  homeActivityStateMachine = [(HMDHomeActivityState *)self homeActivityStateMachine];
  currentHSMState = [homeActivityStateMachine currentHSMState];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = currentHSMState;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)onInitialTransition:(id)transition
{
  v19 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  v12.receiver = self;
  v12.super_class = HMDHomeActivityState;
  [(HMDHierarchicalStateMachineState *)&v12 onInitialTransition:transitionCopy];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    name = [transitionCopy name];
    *buf = 138543874;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = name;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@onInitialTransition : %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeActivityState *)selfCopy checkAndNotifyAllConsumersAboutStateChangeDueToEvent:transitionCopy];
}

- (void)checkAndNotifyAllConsumersAboutStateChangeDueToEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  stateType = [objc_opt_class() stateType];
  if (stateType > 0xA || ((0x729uLL >> stateType) & 1) != 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 2112;
      v16 = eventCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Not notifying state change because it is unknown. Event: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v6 = qword_22A587C50[stateType];
    userInfo = [eventCopy userInfo];
    v8 = [userInfo hmf_dateForKey:@"transitionalStateEndDate"];

    [(HMDHomeActivityState *)self notifyStateChangeToAllConsumers:v6 withHoldInfo:0 transitionalStateEndDate:v8 reason:[HMDHomeActivityStateMachine reasonForStateEvent:eventCopy]];
  }
}

- (void)notifyStateChangeToAllConsumers:(unint64_t)consumers withHoldInfo:(id)info transitionalStateEndDate:(id)date reason:(int64_t)reason
{
  v20 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dateCopy = date;
  homeActivityStateMachine = [(HMDHomeActivityState *)self homeActivityStateMachine];
  v13 = homeActivityStateMachine;
  if (homeActivityStateMachine)
  {
    [homeActivityStateMachine handleHomeActivityStateChange:consumers withHoldInfo:infoCopy transitionalStateEndDate:dateCopy reason:reason];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Asked to notifyStateChangeToAllConsumers but homeActivityStateMachine was unexpectedly nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (BOOL)lookupAndTransitionToState:(unint64_t)state withEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = [(HMDHierarchicalStateMachineState *)self hsm];
  v8 = HMDHomeActivityStateTypeToString(state);
  v9 = [v7 stateWithName:v8];

  if (v9)
  {
    [v7 transitionToState:v9 withEvent:eventCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMDHomeActivityStateTypeToString(state);
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the state : %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  return v9 != 0;
}

- (HMDHomeActivityState)initWithParent:(id)parent
{
  parentCopy = parent;
  dataSource = [parentCopy dataSource];
  v6 = [(HMDHomeActivityState *)self initWithParent:parentCopy dataSource:dataSource];

  return v6;
}

- (HMDHomeActivityState)initWithParent:(id)parent dataSource:(id)source
{
  sourceCopy = source;
  parentCopy = parent;
  stateType = [objc_opt_class() stateType];
  v10 = HMDHomeActivityStateTypeToString(stateType);
  v13.receiver = self;
  v13.super_class = HMDHomeActivityState;
  v11 = [(HMDHierarchicalStateMachineState *)&v13 initWithName:v10 parent:parentCopy];

  if (v11)
  {
    objc_storeStrong(&v11->_dataSource, source);
    v11->_autoNotifySubsystemsAboutStateChange = 1;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_53140 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_53140, &__block_literal_global_53141);
  }

  v3 = logCategory__hmf_once_v7_53142;

  return v3;
}

void __35__HMDHomeActivityState_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_53142;
  logCategory__hmf_once_v7_53142 = v0;
}

+ (unint64_t)stateType
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end