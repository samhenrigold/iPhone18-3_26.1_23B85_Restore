@interface HDSPSleepWidgetGreetingState
- (void)stateDidExpire;
@end

@implementation HDSPSleepWidgetGreetingState

- (void)stateDidExpire
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 138543362;
    *&v10[4] = objc_opt_class();
    v4 = *&v10[4];
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] received greeting expired event due", v10, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  shouldGoIntoUpcomingState = [(HDSPSleepWidgetStateMachineState *)self shouldGoIntoUpcomingState];
  stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
  v8 = stateMachine2;
  if (shouldGoIntoUpcomingState)
  {
    [stateMachine2 upcomingState];
  }

  else
  {
    [stateMachine2 waitingState];
  }
  v9 = ;
  [stateMachine enterState:{v9, *v10, *&v10[8]}];
}

@end