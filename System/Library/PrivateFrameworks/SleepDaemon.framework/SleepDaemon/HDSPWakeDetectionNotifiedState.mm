@interface HDSPWakeDetectionNotifiedState
- (id)expirationDate;
- (void)didEnter;
- (void)stateDidExpire;
- (void)updateState;
@end

@implementation HDSPWakeDetectionNotifiedState

- (id)expirationDate
{
  v20 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  currentDate = [infoProvider currentDate];
  sleepScheduleModel = [infoProvider sleepScheduleModel];
  currentDate2 = [infoProvider currentDate];
  v8 = [sleepScheduleModel nextEventDueAfterDate:currentDate2];

  lifetimeInterval = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  endDate = [lifetimeInterval endDate];

  if (endDate && ([v8 dueDate], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hksp_isAfterDate:", endDate), v11, v12))
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = objc_opt_class();
      v14 = v19;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] wakeup has changed to be later, treating state as expired", &v18, 0xCu);
    }

    dueDate = currentDate;
  }

  else
  {
    dueDate = [v8 dueDate];
  }

  v16 = dueDate;

  return v16;
}

- (void)didEnter
{
  v12 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];

  if ([currentContext hasStateTransitionOrInitializing])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [currentContext type]) != 0)
    {
      v6 = v5;
      stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
      [stateMachine2 postWakeDetectionNotification:v6];
    }

    else
    {
      v8 = HKSPLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = objc_opt_class();
        v9 = v11;
        _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] not posting wake detection notification", &v10, 0xCu);
      }
    }
  }
}

- (void)updateState
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HDSPWakeDetectionStateMachineState *)self isWakeDetectionDisabled])
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = objc_opt_class();
      v4 = v9;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake detection disabled after notifying", &v8, 0xCu);
    }

    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    disabledState = [stateMachine2 disabledState];
    [stateMachine enterState:disabledState];
  }
}

- (void)stateDidExpire
{
  v2.receiver = self;
  v2.super_class = HDSPWakeDetectionNotifiedState;
  [(HDSPWakeDetectionStateMachineState *)&v2 updateState];
}

@end