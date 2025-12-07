@interface HMDHomeActivityStateMachine
+ (id)logCategory;
+ (int64_t)reasonForStateEvent:(id)event;
- (HMDHomeActivityState)currentHomeActivityState;
- (HMDHomeActivityStateMachine)initWithDataSource:(id)source aggregators:(id)aggregators initialStateHoldDetails:(id)details;
- (HMDHomeActivityStateMachine)initWithDataSource:(id)source aggregators:(id)aggregators initialStateHoldDetails:(id)details queue:(id)queue;
- (HMDHomeActivityStateMachineTransitionDelegate)stateTransitionDelegate;
- (double)holdTimeOutInSeconds;
- (id)_aggregatorOfType:(unint64_t)type;
- (id)comingHomeAggregator;
- (id)homeAwayAggregator;
- (id)logIdentifier;
- (id)vacationAggregator;
- (void)cancelOngoingHoldFromUserRequest:(id)request;
- (void)configure;
- (void)createStateMachine;
- (void)handleHomeActivityStateChange:(unint64_t)change withHoldInfo:(id)info transitionalStateEndDate:(id)date reason:(int64_t)reason;
- (void)handleStateChangeForAggregatorOfType:(unint64_t)type;
- (void)handleUpdateHomeActivityStateFromUserRequest:(id)request;
- (void)probeHomeActivityState;
@end

@implementation HMDHomeActivityStateMachine

- (HMDHomeActivityStateMachineTransitionDelegate)stateTransitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateTransitionDelegate);

  return WeakRetained;
}

- (id)_aggregatorOfType:(unint64_t)type
{
  aggregators = [(HMDHomeActivityStateMachine *)self aggregators];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDHomeActivityStateMachine__aggregatorOfType___block_invoke;
  v7[3] = &__block_descriptor_40_e47_B32__0__HMDHomeActivityStateAggregator_8Q16_B24l;
  v7[4] = type;
  v5 = [aggregators hmf_objectPassingTest:v7];

  return v5;
}

- (id)comingHomeAggregator
{
  v2 = [(HMDHomeActivityStateMachine *)self _aggregatorOfType:3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return [(HMDHomeActivityStateMachine *)v6 vacationAggregator];
  }
}

- (id)vacationAggregator
{
  v2 = [(HMDHomeActivityStateMachine *)self _aggregatorOfType:4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return [(HMDHomeActivityStateMachine *)v6 homeAwayAggregator];
  }
}

- (id)homeAwayAggregator
{
  v2 = [(HMDHomeActivityStateMachine *)self _aggregatorOfType:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    [(HMDHomeActivityStateMachine *)v6 holdTimeOutInSeconds];
  }

  return result;
}

- (double)holdTimeOutInSeconds
{
  v20 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDHomeActivityStateMachine *)self dataSource];
  preferences = [dataSource preferences];
  v5 = [preferences preferenceForKey:@"HMDHomeActivityStateDefaultHoldTimeoutInSeconds"];
  numberValue = [v5 numberValue];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (numberValue)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = numberValue;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Using user-defined default hold timeout: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [numberValue doubleValue];
    v13 = v12;
  }

  else
  {
    if (v10)
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2048;
      v19 = 0x40BC200000000000;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Using the default hold timeout: %f", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = 7200.0;
  }

  return v13;
}

- (id)logIdentifier
{
  dataSource = [(HMDHomeActivityStateMachine *)self dataSource];
  logIdentifier = [dataSource logIdentifier];

  return logIdentifier;
}

- (void)handleStateChangeForAggregatorOfType:(unint64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDHomeActivityStateContributorTypeAsString(type);
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received state change notification from %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeActivityStateMachine *)selfCopy probeHomeActivityState];
}

- (void)probeHomeActivityState
{
  queue = [(HMDHierarchicalStateMachine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDHomeActivityStateMachine_probeHomeActivityState__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__HMDHomeActivityStateMachine_probeHomeActivityState__block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"probingReason";
  v4[1] = @"stateTransitionReason";
  v5[0] = &unk_283E73D48;
  v5[1] = &unk_283E73D60;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = [objc_alloc(MEMORY[0x277D02920]) initWithName:@"startProbe" userInfo:v2];
  [*(a1 + 32) dispatchEvent:v3];
}

- (void)cancelOngoingHoldFromUserRequest:(id)request
{
  requestCopy = request;
  queue = [(HMDHierarchicalStateMachine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDHomeActivityStateMachine_cancelOngoingHoldFromUserRequest___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

void __64__HMDHomeActivityStateMachine_cancelOngoingHoldFromUserRequest___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentHomeActivityState];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 activityStateHoldInfo];
      *buf = 138543618;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@User requested to cancel the ongoing HOLD : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v18 = @"stateTransitionReason";
    v19 = &unk_283E73D30;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = objc_alloc(MEMORY[0x277D02920]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__HMDHomeActivityStateMachine_cancelOngoingHoldFromUserRequest___block_invoke_57;
    v16[3] = &unk_27868A250;
    v17 = *(a1 + 40);
    v13 = [v12 initWithName:@"cancelHoldRequested" userInfo:v11 completion:v16];
    [*(a1 + 32) dispatchEvent:v13];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Cannot cancel the HOLD as there is none in place", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v15 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2803];
    [v15 respondWithError:v11];
  }
}

- (void)handleUpdateHomeActivityStateFromUserRequest:(id)request
{
  requestCopy = request;
  queue = [(HMDHierarchicalStateMachine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDHomeActivityStateMachine_handleUpdateHomeActivityStateFromUserRequest___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

void __76__HMDHomeActivityStateMachine_handleUpdateHomeActivityStateFromUserRequest___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) numberForKey:*MEMORY[0x277CCFDD8]];
  if (!v2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Home activity state name was not present in the message payload", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    goto LABEL_16;
  }

  if ((HMIsValidHMHomeActivityStateType() & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v14;
      v37 = 2112;
      v38 = v2;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid home activity state specified : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v9 = *(a1 + 32);
    v15 = MEMORY[0x277CCA9B8];
    v16 = 2801;
    goto LABEL_15;
  }

  if (([objc_opt_class() canHoldBeAppliedToState:{objc_msgSend(v2, "unsignedIntValue")}] & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      [v2 unsignedIntValue];
      v21 = HMHomeActivityStateToString();
      *buf = 138543618;
      v36 = v20;
      v37 = 2112;
      v38 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not apply hold to a transitional state: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v9 = *(a1 + 32);
    v15 = MEMORY[0x277CCA9B8];
    v16 = 2804;
LABEL_15:
    v10 = [v15 hmPrivateErrorWithCode:v16];
LABEL_16:
    v22 = v10;
    [v9 respondWithError:v10];
    goto LABEL_17;
  }

  v3 = [v2 unsignedIntegerValue];
  if (v3 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_22A587C10[v3];
  }

  v23 = objc_autoreleasePoolPush();
  v24 = *(a1 + 40);
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = HMDHomeActivityStateTypeToString(v4);
    *buf = 138543618;
    v36 = v26;
    v37 = 2112;
    v38 = v27;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@User requested to manually change the home activity state to : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v33[0] = @"stateName";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v33[1] = @"stateTransitionReason";
  v34[0] = v28;
  v34[1] = &unk_283E73D18;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v29 = objc_alloc(MEMORY[0x277D02920]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __76__HMDHomeActivityStateMachine_handleUpdateHomeActivityStateFromUserRequest___block_invoke_53;
  v31[3] = &unk_27868A250;
  v32 = *(a1 + 32);
  v30 = [v29 initWithName:@"manualStateChangeRequested" userInfo:v22 completion:v31];
  [*(a1 + 40) dispatchEvent:v30];

LABEL_17:
}

- (void)handleHomeActivityStateChange:(unint64_t)change withHoldInfo:(id)info transitionalStateEndDate:(id)date reason:(int64_t)reason
{
  v20 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dateCopy = date;
  stateTransitionDelegate = [(HMDHomeActivityStateMachine *)self stateTransitionDelegate];
  v13 = stateTransitionDelegate;
  if (stateTransitionDelegate)
  {
    [stateTransitionDelegate stateMachineDidTransitionToActivityState:change withHoldInfo:infoCopy transitionalStateEndDate:dateCopy reason:reason];
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Asked to handleHomeActivityStateChange but stateTransitionDelegate was unexpectedly nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (HMDHomeActivityState)currentHomeActivityState
{
  currentHSMState = [(HMDHierarchicalStateMachine *)self currentHSMState];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = currentHSMState;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)createStateMachine
{
  v17[8] = *MEMORY[0x277D85DE8];
  v3 = [HMDHomeActivityRootState alloc];
  dataSource = [(HMDHomeActivityStateMachine *)self dataSource];
  v5 = [(HMDHomeActivityState *)v3 initWithParent:0 dataSource:dataSource];

  v16 = v5;
  v6 = [[HMDHomeActivityPrimaryState alloc] initWithParent:v5];
  v7 = [(HMDHomeActivityState *)[HMDHomeActivityAwayState alloc] initWithParent:v6];
  v8 = [(HMDHomeActivityState *)[HMDHomeActivityVacationState alloc] initWithParent:v7];
  v9 = [(HMDHomeActivityState *)[HMDHomeActivityComingHomeFromVacationState alloc] initWithParent:v8];
  v10 = [(HMDHomeActivityState *)[HMDHomeActivityComingHomeState alloc] initWithParent:v7];
  v11 = [(HMDHomeActivityState *)[HMDHomeActivityHomeState alloc] initWithParent:v6];
  v12 = [[HMDHomeActivityHoldState alloc] initWithParent:v6];
  v17[0] = v5;
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v17[4] = v9;
  v17[5] = v10;
  v17[6] = v11;
  v17[7] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:8];
  v14 = [v13 mutableCopy];

  v15 = objc_msgSend_copy(v14);
  [(HMDHierarchicalStateMachine *)self setStates:v15];

  [(HMDHierarchicalStateMachine *)self setInitialState:v6];
}

- (void)configure
{
  queue = [(HMDHierarchicalStateMachine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDHomeActivityStateMachine_configure__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __40__HMDHomeActivityStateMachine_configure__block_invoke(uint64_t a1)
{
  [*(a1 + 32) createStateMachine];
  v2 = [*(a1 + 32) aggregators];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__HMDHomeActivityStateMachine_configure__block_invoke_2;
  v4[3] = &unk_27867F208;
  v4[4] = *(a1 + 32);
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v4];

  return [*(a1 + 32) _start];
}

- (HMDHomeActivityStateMachine)initWithDataSource:(id)source aggregators:(id)aggregators initialStateHoldDetails:(id)details queue:(id)queue
{
  sourceCopy = source;
  aggregatorsCopy = aggregators;
  detailsCopy = details;
  v17.receiver = self;
  v17.super_class = HMDHomeActivityStateMachine;
  v14 = [(HMDHierarchicalStateMachine *)&v17 initWithQueue:queue allowSelfStateTransitions:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dataSource, source);
    objc_storeStrong(&v15->_aggregators, aggregators);
    objc_storeStrong(&v15->_initialStateHoldDetails, details);
  }

  return v15;
}

- (HMDHomeActivityStateMachine)initWithDataSource:(id)source aggregators:(id)aggregators initialStateHoldDetails:(id)details
{
  detailsCopy = details;
  aggregatorsCopy = aggregators;
  sourceCopy = source;
  v11 = HMDispatchQueueNameString();
  uTF8String = [v11 UTF8String];
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create(uTF8String, v13);

  v15 = [(HMDHomeActivityStateMachine *)self initWithDataSource:sourceCopy aggregators:aggregatorsCopy initialStateHoldDetails:detailsCopy queue:v14];
  return v15;
}

+ (int64_t)reasonForStateEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  userInfo = [eventCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"stateTransitionReason"];

  if (v6)
  {
    userInfo2 = [eventCopy userInfo];
    v8 = [userInfo2 hmf_numberForKey:@"stateTransitionReason"];

    unsignedIntValue = [v8 unsignedIntValue];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = eventCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Asked to fetch HMDHomeActivityStateTransitionReason from event %@, but key was unset", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_197419 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_197419, &__block_literal_global_197420);
  }

  v3 = logCategory__hmf_once_v11_197421;

  return v3;
}

void __42__HMDHomeActivityStateMachine_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v11_197421;
  logCategory__hmf_once_v11_197421 = v0;
}

@end