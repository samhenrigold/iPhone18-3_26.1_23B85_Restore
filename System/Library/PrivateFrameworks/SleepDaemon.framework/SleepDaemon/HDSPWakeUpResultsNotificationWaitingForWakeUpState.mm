@interface HDSPWakeUpResultsNotificationWaitingForWakeUpState
- (void)_transitionToDelayingForTrackingState;
- (void)wakeUpDidOccur;
@end

@implementation HDSPWakeUpResultsNotificationWaitingForWakeUpState

- (void)wakeUpDidOccur
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received wake up event", &v5, 0xCu);
  }

  [(HDSPWakeUpResultsNotificationWaitingForWakeUpState *)self _transitionToDelayingForTrackingState];
}

- (void)_transitionToDelayingForTrackingState
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Transitioning to delaying for tracking state", &v7, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  delayingForTrackingState = [stateMachine delayingForTrackingState];
  [stateMachine enterState:delayingForTrackingState];
}

@end