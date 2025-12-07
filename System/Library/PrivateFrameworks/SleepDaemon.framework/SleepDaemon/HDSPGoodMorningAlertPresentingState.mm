@interface HDSPGoodMorningAlertPresentingState
- (void)didEnter;
- (void)didExit;
- (void)sleepScheduleStateChangedToBedtime;
- (void)stateDidExpire;
- (void)updateState;
@end

@implementation HDSPGoodMorningAlertPresentingState

- (void)didEnter
{
  v11 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  hasStateTransitionAndNotInitializing = [currentContext hasStateTransitionAndNotInitializing];

  if (hasStateTransitionAndNotInitializing)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting alert", &v9, 0xCu);
    }

    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 presentAlertForGoodMorning];
  }
}

- (void)didExit
{
  v11 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  hasStateTransitionOrInitializing = [currentContext hasStateTransitionOrInitializing];

  if (hasStateTransitionOrInitializing)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissing alert", &v9, 0xCu);
    }

    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 dismissAlertForGoodMorning];
  }
}

- (void)updateState
{
  v19 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  if ([infoProvider goodMorningAlertEnabled])
  {
    sleepScheduleModel = [infoProvider sleepScheduleModel];
    sleepEventRecord = [sleepScheduleModel sleepEventRecord];
    goodMorningDismissedDate = [sleepEventRecord goodMorningDismissedDate];

    v7 = *MEMORY[0x277D621E0];
    currentDate = [infoProvider currentDate];
    v9 = [sleepScheduleModel previousEventWithIdentifier:v7 dueBeforeDate:currentDate];

    if (v9 && [goodMorningDismissedDate hksp_isAfterOrSameAsDate:v9])
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        v16 = objc_opt_class();
        v17 = 2114;
        v18 = goodMorningDismissedDate;
        v11 = v16;
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] good morning alert dismissed %{public}@", &v15, 0x16u);
      }

      waitingState = [stateMachine waitingState];
      [stateMachine enterState:waitingState];
    }
  }

  else
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v14 = v16;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] good morning alerts disabled", &v15, 0xCu);
    }

    sleepScheduleModel = [stateMachine disabledState];
    [stateMachine enterState:sleepScheduleModel];
  }
}

- (void)stateDidExpire
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  waitingState = [stateMachine waitingState];
  [stateMachine enterState:waitingState];
}

- (void)sleepScheduleStateChangedToBedtime
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  waitingState = [stateMachine waitingState];
  [stateMachine enterState:waitingState];
}

@end