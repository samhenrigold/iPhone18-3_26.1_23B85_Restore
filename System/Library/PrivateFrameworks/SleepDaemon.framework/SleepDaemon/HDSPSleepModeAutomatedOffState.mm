@interface HDSPSleepModeAutomatedOffState
- (void)_automationTurnedOnSleepModeWithReason:(unint64_t)reason;
- (void)automationTurnedOnSleepModeWithReason:(unint64_t)reason;
- (void)sleepModeTurnedOnForUnknownReason;
@end

@implementation HDSPSleepModeAutomatedOffState

- (void)automationTurnedOnSleepModeWithReason:(unint64_t)reason
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v6 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned on via automation after having been turned off due to automation", &v7, 0xCu);
  }

  [(HDSPSleepModeAutomatedOffState *)self _automationTurnedOnSleepModeWithReason:reason];
}

- (void)sleepModeTurnedOnForUnknownReason
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode turned on for unknown reason after having been turned off due to automation, treating like automation on", &v5, 0xCu);
  }

  [(HDSPSleepModeAutomatedOffState *)self _automationTurnedOnSleepModeWithReason:7];
}

- (void)_automationTurnedOnSleepModeWithReason:(unint64_t)reason
{
  v22 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  sleepScheduleState = [infoProvider sleepScheduleState];
  automatedOnState = [stateMachine automatedOnState];
  if ([infoProvider shouldGoIntoSleepModeDuringState:sleepScheduleState])
  {
    if (HKSPSleepScheduleStateIsForBedtime())
    {
      v8 = HKSPLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = objc_opt_class();
        v9 = v21;
        _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's bedtime, going into bedtime mode", buf, 0xCu);
      }

      bedtimeState = [stateMachine bedtimeState];
LABEL_10:
      v13 = bedtimeState;

      automatedOnState = v13;
      goto LABEL_11;
    }

    if (HKSPSleepScheduleStateIsForWindDown())
    {
      v11 = HKSPLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = objc_opt_class();
        v12 = v21;
        _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] it's wind down, going into wind down", buf, 0xCu);
      }

      bedtimeState = [stateMachine windDownState];
      goto LABEL_10;
    }
  }

LABEL_11:
  v17 = MEMORY[0x277D85DD0];
  v18 = stateMachine;
  v19 = automatedOnState;
  v14 = automatedOnState;
  v15 = stateMachine;
  v16 = [HDSPSleepModeStateMachineContext contextWithReason:reason, v17, 3221225472, __73__HDSPSleepModeAutomatedOffState__automationTurnedOnSleepModeWithReason___block_invoke, &unk_279C7B2D0];
  [v15 perform:&v17 withContext:v16];
}

@end