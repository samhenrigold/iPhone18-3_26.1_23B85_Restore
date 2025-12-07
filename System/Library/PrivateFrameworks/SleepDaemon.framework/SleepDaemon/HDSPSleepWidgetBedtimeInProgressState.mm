@interface HDSPSleepWidgetBedtimeInProgressState
- (void)sleepModeDidChange:(int64_t)change isUserRequested:(BOOL)requested;
- (void)sleepScheduleStateDidChange:(unint64_t)change;
@end

@implementation HDSPSleepWidgetBedtimeInProgressState

- (void)sleepModeDidChange:(int64_t)change isUserRequested:(BOOL)requested
{
  v9 = *MEMORY[0x277D85DE8];
  if (change == 2 && requested)
  {
    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = objc_opt_class();
      v5 = v8;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] user turned on sleep mode, staying here", buf, 0xCu);
    }
  }

  else
  {
    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine updateState];
  }
}

- (void)sleepScheduleStateDidChange:(unint64_t)change
{
  v13 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  inUnscheduledSleepMode = [infoProvider inUnscheduledSleepMode];

  if (inUnscheduledSleepMode)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = objc_opt_class();
      v9 = v12;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] in user requested sleep mode, staying here", buf, 0xCu);
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HDSPSleepWidgetBedtimeInProgressState;
    [(HDSPSleepWidgetStateMachineState *)&v10 sleepScheduleStateDidChange:change];
  }
}

@end