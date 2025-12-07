@interface HDSPSleepScheduleStateCoordinatorBedtimeState
- (id)expirationDate;
- (void)alarmDismissed;
- (void)wakeTimeReached;
- (void)wakeUpConfirmed:(BOOL)confirmed;
@end

@implementation HDSPSleepScheduleStateCoordinatorBedtimeState

- (void)wakeTimeReached
{
  v17 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  isAlarmEnabled = [(HDSPSleepScheduleStateCoordinatorStateMachineState *)self isAlarmEnabled];
  v5 = HKSPLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isAlarmEnabled)
  {
    if (v6)
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v7 = v16;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake time reached and alarm enabled", buf, 0xCu);
    }

    v8 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v9 = __64__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeTimeReached__block_invoke;
  }

  else
  {
    if (v6)
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake time reached and alarm disabled", buf, 0xCu);
    }

    v8 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v9 = __64__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeTimeReached__block_invoke_296;
  }

  v8[2] = v9;
  v8[3] = &unk_279C7B108;
  v8[4] = stateMachine;
  v11 = stateMachine;
  v12 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:1];
  [v11 perform:v8 withContext:v12];
}

void __64__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeTimeReached__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 delayedWakeUpState];
  [v1 enterState:v2];
}

void __64__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeTimeReached__block_invoke_296(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 wakeUpState];
  [v1 enterState:v2];
}

- (void)wakeUpConfirmed:(BOOL)confirmed
{
  confirmedCopy = confirmed;
  v17 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 1024;
    v16 = confirmedCopy;
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up was confirmed (wasExplicitConfirmation: %d)", buf, 0x12u);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  if (confirmedCopy)
  {
    v8 = 3;
  }

  else
  {
    v8 = 8;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeUpConfirmed___block_invoke;
  v11[3] = &unk_279C7B108;
  v12 = stateMachine;
  v9 = stateMachine;
  v10 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:v8];
  [v9 perform:v11 withContext:v10];
}

void __65__HDSPSleepScheduleStateCoordinatorBedtimeState_wakeUpConfirmed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 wakeUpState];
  [v1 enterState:v2];
}

- (void)alarmDismissed
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = objc_opt_class();
    v4 = v11;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up alarm was dismissed", buf, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HDSPSleepScheduleStateCoordinatorBedtimeState_alarmDismissed__block_invoke;
  v8[3] = &unk_279C7B108;
  v9 = stateMachine;
  v6 = stateMachine;
  v7 = [HDSPSleepScheduleStateCoordinatorStateMachineContext contextWithReason:7];
  [v6 perform:v8 withContext:v7];
}

void __63__HDSPSleepScheduleStateCoordinatorBedtimeState_alarmDismissed__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 wakeUpState];
  [v1 enterState:v2];
}

- (id)expirationDate
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  sleepScheduleModel = [infoProvider sleepScheduleModel];
  v5 = *MEMORY[0x277D621E0];
  currentDate = [infoProvider currentDate];
  v7 = [sleepScheduleModel nextEventWithIdentifier:v5 dueAfterDate:currentDate];

  v8 = [v7 dateByAddingTimeInterval:900.0];

  return v8;
}

@end