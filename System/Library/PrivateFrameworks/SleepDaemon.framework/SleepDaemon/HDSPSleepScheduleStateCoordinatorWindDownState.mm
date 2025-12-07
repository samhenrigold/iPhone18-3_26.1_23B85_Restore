@interface HDSPSleepScheduleStateCoordinatorWindDownState
- (id)expirationDate;
- (void)bedtimeReached;
@end

@implementation HDSPSleepScheduleStateCoordinatorWindDownState

- (void)bedtimeReached
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = objc_opt_class();
    v4 = v11;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's time for bed", buf, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HDSPSleepScheduleStateCoordinatorWindDownState_bedtimeReached__block_invoke;
  v8[3] = &unk_279C7B108;
  v9 = stateMachine;
  v6 = stateMachine;
  v7 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:1];
  [v6 perform:v8 withContext:v7];
}

void __64__HDSPSleepScheduleStateCoordinatorWindDownState_bedtimeReached__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 bedtimeState];
  [v1 enterState:v2];
}

- (id)expirationDate
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  sleepScheduleModel = [infoProvider sleepScheduleModel];
  v5 = *MEMORY[0x277D621B8];
  currentDate = [infoProvider currentDate];
  v7 = [sleepScheduleModel nextEventWithIdentifier:v5 dueAfterDate:currentDate];

  v8 = [v7 dateByAddingTimeInterval:60.0];

  return v8;
}

@end