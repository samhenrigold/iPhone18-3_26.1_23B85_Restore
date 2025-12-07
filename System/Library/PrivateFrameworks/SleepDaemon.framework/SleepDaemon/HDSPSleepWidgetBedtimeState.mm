@interface HDSPSleepWidgetBedtimeState
- (void)stateDidExpire;
@end

@implementation HDSPSleepWidgetBedtimeState

- (void)stateDidExpire
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] received bedtime expired event due", &v7, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  bedtimeInProgressState = [stateMachine bedtimeInProgressState];
  [stateMachine enterState:bedtimeInProgressState];
}

@end