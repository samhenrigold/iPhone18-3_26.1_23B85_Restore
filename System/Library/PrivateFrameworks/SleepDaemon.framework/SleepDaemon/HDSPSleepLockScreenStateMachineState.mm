@interface HDSPSleepLockScreenStateMachineState
- (BOOL)_isSleepLockScreenDisabled;
- (int64_t)sleepLockScreenState;
- (void)_updateStateForSleepMode:(int64_t)mode reason:(unint64_t)reason;
- (void)didEnter;
- (void)presentAlertForGoodMorning;
- (void)updateState;
@end

@implementation HDSPSleepLockScreenStateMachineState

- (void)didEnter
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];

  if ([currentContext hasStateTransitionOrInitializing])
  {
    previousState = [currentContext previousState];
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 sleepLockScreenStateDidChange:-[HDSPSleepLockScreenStateMachineState sleepLockScreenState](self previousState:{"sleepLockScreenState"), objc_msgSend(previousState, "sleepLockScreenState")}];
  }
}

- (void)presentAlertForGoodMorning
{
  v12 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  isLockScreenActive = [infoProvider isLockScreenActive];

  v5 = HKSPLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isLockScreenActive)
  {
    if (v6)
    {
      *v11 = 138543362;
      *&v11[4] = objc_opt_class();
      v7 = *&v11[4];
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] presenting good morning alert", v11, 0xCu);
    }

    greetingState = [stateMachine greetingState];
  }

  else
  {
    if (v6)
    {
      *v11 = 138543362;
      *&v11[4] = objc_opt_class();
      v9 = *&v11[4];
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping good morning alert, lock screen isn't active", v11, 0xCu);
    }

    greetingState = [stateMachine offState];
  }

  v10 = greetingState;
  [stateMachine enterState:{greetingState, *v11, *&v11[8]}];
}

- (void)updateState
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  sleepMode = [infoProvider sleepMode];
  if ([infoProvider inUnscheduledSleepMode])
  {
    v5 = 1;
  }

  else
  {
    v5 = 10;
  }

  [(HDSPSleepLockScreenStateMachineState *)self _updateStateForSleepMode:sleepMode reason:v5];
}

- (void)_updateStateForSleepMode:(int64_t)mode reason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  if (![(HDSPSleepLockScreenStateMachineState *)self _isSleepLockScreenDisabled])
  {
    if (mode)
    {
      if (mode == 2)
      {
        bedtimeState = [stateMachine bedtimeState];
      }

      else
      {
        if (mode != 1)
        {
          goto LABEL_5;
        }

        bedtimeState = [stateMachine windDownState];
      }

      goto LABEL_3;
    }

    infoProvider = [stateMachine infoProvider];
    sleepScheduleModel = [infoProvider sleepScheduleModel];
    if ([sleepScheduleModel goodMorningScreenEnabledWithLogObject:self])
    {
      v10 = HKSPSleepModeChangeReasonTreatedAsExpected();
      offState = HKSPLogForCategory();
      v12 = os_log_type_enabled(offState, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          v17 = 138543362;
          v18 = objc_opt_class();
          v13 = v18;
          _os_log_impl(&dword_269B11000, offState, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode is off, waiting to be told to present greeting", &v17, 0xCu);
        }

        goto LABEL_19;
      }

      if (v12)
      {
        v14 = objc_opt_class();
        v15 = v14;
        v16 = NSStringFromHKSPSleepModeChangeReason();
        v17 = 138543618;
        v18 = v14;
        v19 = 2114;
        v20 = v16;
        _os_log_impl(&dword_269B11000, offState, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode is off, not presenting greeting (%{public}@)", &v17, 0x16u);
      }
    }

    offState = [stateMachine offState];
    [stateMachine enterState:offState];
LABEL_19:

    goto LABEL_4;
  }

  bedtimeState = [stateMachine offState];
LABEL_3:
  infoProvider = bedtimeState;
  [stateMachine enterState:bedtimeState];
LABEL_4:

LABEL_5:
}

- (int64_t)sleepLockScreenState
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)_isSleepLockScreenDisabled
{
  v12 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  sleepScheduleModel = [infoProvider sleepScheduleModel];
  sleepSettings = [sleepScheduleModel sleepSettings];
  sleepModeOptions = [sleepSettings sleepModeOptions];
  if ((sleepModeOptions & 0x4000) == 0)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep screen disabled", &v10, 0xCu);
    }
  }

  return (sleepModeOptions & 0x4000) == 0;
}

@end