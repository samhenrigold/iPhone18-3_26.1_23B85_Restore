@interface HDSPSleepWidgetStateMachineState
- (BOOL)shouldGoIntoUpcomingState;
- (id)stateName;
- (int64_t)widgetState;
- (void)didEnter;
- (void)significantTimeChangeOccurred;
- (void)sleepModeDidChange:(int64_t)change isUserRequested:(BOOL)requested;
- (void)sleepScheduleModelDidChange:(id)change;
- (void)sleepScheduleStateDidChange:(unint64_t)change;
- (void)updateState;
@end

@implementation HDSPSleepWidgetStateMachineState

- (id)stateName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)widgetState
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)didEnter
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];

  if ([currentContext hasStateTransitionOrInitializing])
  {
    previousState = [currentContext previousState];
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    widgetState = [(HDSPSleepWidgetStateMachineState *)self widgetState];
    if (previousState)
    {
      widgetState2 = [previousState widgetState];
    }

    else
    {
      widgetState2 = 0;
    }

    [stateMachine2 sleepWidgetStateDidChange:widgetState previousState:widgetState2];
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateState
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v69 = 138543362;
    *&v69[4] = objc_opt_class();
    v4 = *&v69[4];
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] determining state", v69, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  infoProvider2 = [stateMachine infoProvider];
  currentDate = [infoProvider2 currentDate];

  sleepScheduleModel = [infoProvider sleepScheduleModel];
  sleepScheduleState = [infoProvider sleepScheduleState];
  inUnscheduledSleepMode = [infoProvider inUnscheduledSleepMode];
  if (([infoProvider isOnboarded] & 1) == 0)
  {
    v18 = HKSPLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = v19;
      notOnboardedState = [stateMachine notOnboardedState];
      stateName = [notOnboardedState stateName];
      *v69 = 138543618;
      *&v69[4] = v19;
      *&v69[12] = 2114;
      *&v69[14] = stateName;
      _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] not onboarded, determined state: %{public}@", v69, 0x16u);
    }

    notOnboardedState2 = [stateMachine notOnboardedState];
    goto LABEL_15;
  }

  if (!sleepScheduleState)
  {
    v23 = HKSPLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = v24;
      disabledState = [stateMachine disabledState];
      stateName2 = [disabledState stateName];
      *v69 = 138543618;
      *&v69[4] = v24;
      *&v69[12] = 2114;
      *&v69[14] = stateName2;
      _os_log_impl(&dword_269B11000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] schedule disabled, determined state: %{public}@", v69, 0x16u);
    }

    notOnboardedState2 = [stateMachine disabledState];
    goto LABEL_15;
  }

  if (inUnscheduledSleepMode)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      bedtimeInProgressState = [stateMachine bedtimeInProgressState];
      stateName3 = [bedtimeInProgressState stateName];
      *v69 = 138543618;
      *&v69[4] = v13;
      *&v69[12] = 2114;
      *&v69[14] = stateName3;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] in user requested sleep mode, determined state: %{public}@", v69, 0x16u);
    }

    notOnboardedState2 = [stateMachine bedtimeInProgressState];
    goto LABEL_15;
  }

  if (sleepScheduleState > 2)
  {
    if (sleepScheduleState != 6)
    {
      if (sleepScheduleState != 3)
      {
        goto LABEL_17;
      }

      v29 = HKSPLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v31 = v30;
        windDownState = [stateMachine windDownState];
        stateName4 = [windDownState stateName];
        *v69 = 138543618;
        *&v69[4] = v30;
        *&v69[12] = 2114;
        *&v69[14] = stateName4;
        _os_log_impl(&dword_269B11000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", v69, 0x16u);
      }

      notOnboardedState2 = [stateMachine windDownState];
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  if (sleepScheduleState != 1)
  {
    if (sleepScheduleState != 2)
    {
      goto LABEL_17;
    }

LABEL_27:
    v28 = [sleepScheduleModel previousEventWithIdentifier:*MEMORY[0x277D621B8] dueBeforeDate:{currentDate, *v69, *&v69[8]}];
    if (v28)
    {
      [currentDate timeIntervalSinceDate:v28];
      v35 = v34;
    }

    else
    {
      v35 = 1.79769313e308;
    }

    bedtimeState = [stateMachine bedtimeState];
    [bedtimeState expirationDuration];
    v38 = v37;

    v39 = HKSPLogForCategory();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
    if (v35 >= v38)
    {
      if (v40)
      {
        v46 = objc_opt_class();
        v47 = v46;
        bedtimeInProgressState2 = [stateMachine bedtimeInProgressState];
        stateName5 = [bedtimeInProgressState2 stateName];
        *v69 = 138543618;
        *&v69[4] = v46;
        *&v69[12] = 2114;
        *&v69[14] = stateName5;
        _os_log_impl(&dword_269B11000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", v69, 0x16u);
      }

      bedtimeInProgressState3 = [stateMachine bedtimeInProgressState];
    }

    else
    {
      if (v40)
      {
        v41 = objc_opt_class();
        v42 = v41;
        bedtimeState2 = [stateMachine bedtimeState];
        stateName6 = [bedtimeState2 stateName];
        *v69 = 138543618;
        *&v69[4] = v41;
        *&v69[12] = 2114;
        *&v69[14] = stateName6;
        _os_log_impl(&dword_269B11000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", v69, 0x16u);
      }

      bedtimeInProgressState3 = [stateMachine bedtimeState];
    }

LABEL_39:
    v50 = bedtimeInProgressState3;
    [stateMachine enterState:{bedtimeInProgressState3, *v69, *&v69[8]}];

    goto LABEL_16;
  }

  if (![(HDSPSleepWidgetStateMachineState *)self shouldGoIntoUpcomingState])
  {
    v28 = [sleepScheduleModel previousEventWithIdentifier:*MEMORY[0x277D621E0] dueBeforeDate:currentDate];
    if (v28)
    {
      [currentDate timeIntervalSinceDate:v28];
      v52 = v51;
    }

    else
    {
      v52 = 1.79769313e308;
    }

    v53 = HKSPLogForCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = objc_opt_class();
      *v69 = 138543874;
      *&v69[4] = v54;
      *&v69[12] = 2114;
      *&v69[14] = v28;
      v70 = 2048;
      v71 = v52;
      v55 = v54;
      _os_log_impl(&dword_269B11000, v53, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up date: %{public}@ (secondsAfterWakeUp: %f)", v69, 0x20u);
    }

    greetingState = [stateMachine greetingState];
    [greetingState expirationDuration];
    v58 = v57;

    v59 = HKSPLogForCategory();
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
    if (v52 >= v58)
    {
      if (v60)
      {
        v65 = objc_opt_class();
        v66 = v65;
        waitingState = [stateMachine waitingState];
        stateName7 = [waitingState stateName];
        *v69 = 138543618;
        *&v69[4] = v65;
        *&v69[12] = 2114;
        *&v69[14] = stateName7;
        _os_log_impl(&dword_269B11000, v59, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", v69, 0x16u);
      }

      bedtimeInProgressState3 = [stateMachine waitingState];
    }

    else
    {
      if (v60)
      {
        v61 = objc_opt_class();
        v62 = v61;
        greetingState2 = [stateMachine greetingState];
        stateName8 = [greetingState2 stateName];
        *v69 = 138543618;
        *&v69[4] = v61;
        *&v69[12] = 2114;
        *&v69[14] = stateName8;
        _os_log_impl(&dword_269B11000, v59, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", v69, 0x16u);
      }

      bedtimeInProgressState3 = [stateMachine greetingState];
    }

    goto LABEL_39;
  }

  notOnboardedState2 = [stateMachine upcomingState];
LABEL_15:
  v28 = notOnboardedState2;
  [stateMachine enterState:{notOnboardedState2, *v69, *&v69[8]}];
LABEL_16:

LABEL_17:
}

- (BOOL)shouldGoIntoUpcomingState
{
  v18 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  currentDate = [infoProvider currentDate];

  waitingState = [stateMachine waitingState];
  expirationDate = [waitingState expirationDate];

  if (expirationDate && [currentDate hksp_isAfterOrSameAsDate:expirationDate])
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      upcomingState = [stateMachine upcomingState];
      stateName = [upcomingState stateName];
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = stateName;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined state: %{public}@", &v14, 0x16u);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)sleepModeDidChange:(int64_t)change isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v12 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  if (change == 2 && requestedCopy)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] user turned on sleep mode", &v10, 0xCu);
    }

    bedtimeInProgressState = [stateMachine bedtimeInProgressState];
    [stateMachine enterState:bedtimeInProgressState];
  }
}

- (void)sleepScheduleStateDidChange:(unint64_t)change
{
  v13 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  if (change == 3)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 138543362;
      *&v12[4] = objc_opt_class();
      v10 = *&v12[4];
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] schedule state is wind down", v12, 0xCu);
    }

    windDownState = [stateMachine windDownState];
  }

  else
  {
    if (change)
    {
      stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
      [stateMachine2 updateState];
      goto LABEL_11;
    }

    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 138543362;
      *&v12[4] = objc_opt_class();
      v7 = *&v12[4];
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] schedule state is disabled", v12, 0xCu);
    }

    windDownState = [stateMachine disabledState];
  }

  stateMachine2 = windDownState;
  [stateMachine enterState:{windDownState, *v12, *&v12[8]}];
LABEL_11:
}

- (void)sleepScheduleModelDidChange:(id)change
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  if (![infoProvider isOnboarded])
  {

    goto LABEL_5;
  }

  widgetStateHasTimeComponent = [(HDSPSleepWidgetStateMachineState *)self widgetStateHasTimeComponent];

  if (widgetStateHasTimeComponent)
  {
LABEL_5:
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 updateState];
  }

  if ([(HDSPSleepWidgetStateMachineState *)self reloadsWidgetOnModelChange])
  {
    stateMachine3 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine3 sleepWidgetShouldReload];
  }
}

- (void)significantTimeChangeOccurred
{
  if ([(HDSPSleepWidgetStateMachineState *)self widgetStateHasTimeComponent])
  {
    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine updateState];
  }

  if ([(HDSPSleepWidgetStateMachineState *)self reloadsWidgetOnTimeChange])
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 sleepWidgetShouldReload];
  }
}

@end