@interface HDSPChargingReminderMonitoringState
- (id)expirationDate;
- (void)batteryLevelChanged:(float)changed;
- (void)didEnter;
- (void)didExit;
@end

@implementation HDSPChargingReminderMonitoringState

- (id)expirationDate
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  currentDate = [infoProvider currentDate];
  v5 = [infoProvider monitoringWindowAfterDate:currentDate];
  endDate = [v5 endDate];

  return endDate;
}

- (void)didEnter
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  hasStateTransitionOrInitializing = [currentContext hasStateTransitionOrInitializing];

  if (hasStateTransitionOrInitializing)
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 startBatteryMonitoring];
  }
}

- (void)didExit
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  hasStateTransitionOrInitializing = [currentContext hasStateTransitionOrInitializing];

  if (hasStateTransitionOrInitializing)
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 stopBatteryMonitoring];
  }
}

- (void)batteryLevelChanged:(float)changed
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = objc_opt_class();
    v15 = 2048;
    changedCopy = changed;
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] batteryLevelChanged: %f", &v13, 0x16u);
  }

  stateMachine = HKSPLogForCategory();
  v8 = os_log_type_enabled(stateMachine, OS_LOG_TYPE_DEFAULT);
  if (changed < 0.3)
  {
    if (v8)
    {
      v9 = objc_opt_class();
      v13 = 138543362;
      v14 = v9;
      v10 = v9;
      _os_log_impl(&dword_269B11000, stateMachine, OS_LOG_TYPE_DEFAULT, "[%{public}@] we should charge", &v13, 0xCu);
    }

    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    notifiedState = [stateMachine notifiedState];
    [stateMachine enterState:notifiedState];
    goto LABEL_9;
  }

  if (v8)
  {
    v12 = objc_opt_class();
    v13 = 138543362;
    v14 = v12;
    notifiedState = v12;
    _os_log_impl(&dword_269B11000, stateMachine, OS_LOG_TYPE_DEFAULT, "[%{public}@] we don't need to charge yet", &v13, 0xCu);
LABEL_9:
  }
}

@end