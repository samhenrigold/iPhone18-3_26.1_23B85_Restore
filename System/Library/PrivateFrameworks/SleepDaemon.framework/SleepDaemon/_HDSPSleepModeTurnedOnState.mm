@interface _HDSPSleepModeTurnedOnState
- (void)sleepScheduleStateChangedToBedtime:(unint64_t)bedtime fromState:(unint64_t)state;
- (void)sleepScheduleStateChangedToDisabled;
- (void)sleepScheduleStateChangedToWakeUp:(unint64_t)up fromState:(unint64_t)state;
- (void)sleepScheduleStateChangedToWindDown:(unint64_t)down fromState:(unint64_t)state;
@end

@implementation _HDSPSleepModeTurnedOnState

- (void)sleepScheduleStateChangedToWindDown:(unint64_t)down fromState:(unint64_t)state
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    stateName = [(HKSPStateMachineState *)self stateName];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = stateName;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's wind down, but staying in %{public}@ mode", &v9, 0x16u);
  }
}

- (void)sleepScheduleStateChangedToBedtime:(unint64_t)bedtime fromState:(unint64_t)state
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    stateName = [(HKSPStateMachineState *)self stateName];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = stateName;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's bedtime, but staying in %{public}@ mode", &v9, 0x16u);
  }
}

- (void)sleepScheduleStateChangedToWakeUp:(unint64_t)up fromState:(unint64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  if (up == 5 && (HKSPSleepScheduleStateIsForSleep() & 1) == 0)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      stateName = [(HKSPStateMachineState *)self stateName];
      *buf = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = stateName;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] staying in %{public}@ mode because we were already in wake up", buf, 0x16u);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _HDSPSleepModeTurnedOnState;
    [(HDSPSleepModeStateMachineState *)&v11 sleepScheduleStateChangedToWakeUp:up fromState:state];
  }
}

- (void)sleepScheduleStateChangedToDisabled
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    stateName = [(HKSPStateMachineState *)self stateName];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = stateName;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule state is disabled but staying in %{public}@ mode", &v7, 0x16u);
  }
}

@end