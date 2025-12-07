@interface MTSleepCoordinatorStateMachineState
- (id)determineNextStateForSleepAlarm:(id)alarm;
- (void)updateState;
- (void)updateStateForSleepAlarm:(id)alarm;
- (void)userBedTimeReached:(id)reached;
- (void)userWakeTimeReached:(id)reached;
- (void)userWakeUpAlarmFired;
- (void)userWentToBed;
- (void)userWokeUp;
- (void)wakeUpAlarmTimedOut;
@end

@implementation MTSleepCoordinatorStateMachineState

- (void)updateState
{
  stateMachine = [(MTStateMachineState *)self stateMachine];
  sleepAlarm = [stateMachine sleepAlarm];
  [(MTSleepCoordinatorStateMachineState *)self updateStateForSleepAlarm:sleepAlarm];
}

- (void)updateStateForSleepAlarm:(id)alarm
{
  v5 = [(MTSleepCoordinatorStateMachineState *)self determineNextStateForSleepAlarm:alarm];
  stateMachine = [(MTStateMachineState *)self stateMachine];
  [stateMachine enterState:v5];
}

- (id)determineNextStateForSleepAlarm:(id)alarm
{
  v45 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  stateMachine = [(MTStateMachineState *)self stateMachine];
  currentDate = [stateMachine currentDate];

  if (!alarmCopy)
  {
    v11 = MTLogForCategory(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138543362;
      selfCopy10 = self;
      v12 = "%{public}@ no sleep alarm, sleep disabled";
LABEL_11:
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, v12, &v39, 0xCu);
    }

LABEL_12:

    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    disabledState = [stateMachine2 disabledState];
LABEL_13:
    awakeState = disabledState;
    goto LABEL_14;
  }

  if (([alarmCopy sleepSchedule] & 1) == 0)
  {
    v11 = MTLogForCategory(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138543362;
      selfCopy10 = self;
      v12 = "%{public}@ sleep schedule disabled";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if ([alarmCopy isFiring])
  {
    v8 = MTLogForCategory(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138543362;
      selfCopy10 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ haven't dismissed morning alarm yet so we're sleeping", &v39, 0xCu);
    }

    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    disabledState = [stateMachine2 asleepState];
    goto LABEL_13;
  }

  stateMachine2 = [alarmCopy nextTriggersAfterDate:currentDate includeBedtime:1];
  firstObject = [stateMachine2 firstObject];
  if ([firstObject triggerType] == 5)
  {
    v16 = MTLogForCategory(7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      triggerDate = [firstObject triggerDate];
      v39 = 138543618;
      selfCopy10 = self;
      v41 = 2114;
      v42 = triggerDate;
      v18 = "%{public}@ wake up alarm was snoozed (%{public}@) so we're sleeping";
LABEL_24:
      _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, v18, &v39, 0x16u);

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if ([firstObject triggerType] != 4 && objc_msgSend(firstObject, "triggerType") != 8)
  {
    v20 = [stateMachine2 na_firstObjectPassingTest:&__block_literal_global_8];
    triggerDate2 = [v20 triggerDate];

    v21 = [stateMachine2 na_firstObjectPassingTest:&__block_literal_global_2];
    triggerDate3 = [v21 triggerDate];

    if (triggerDate3)
    {
      v23 = [stateMachine2 na_firstObjectPassingTest:&__block_literal_global_4];
      triggerDate4 = [v23 triggerDate];

      if ([triggerDate4 mtIsBeforeDate:triggerDate2] && objc_msgSend(triggerDate3, "mtIsAfterDate:", triggerDate4) && objc_msgSend(triggerDate3, "mtIsBeforeDate:", triggerDate2))
      {
        v25 = MTLogForCategory(7);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 138543874;
          selfCopy10 = self;
          v41 = 2114;
          v42 = triggerDate3;
          v43 = 2114;
          v44 = triggerDate4;
          v26 = "%{public}@ bedtime reminder was snoozed (%{public}@) for after the bedtime: (%{public}@). it is currently before bedtime and the snooze date";
          v27 = v25;
          v28 = 32;
LABEL_39:
          _os_log_impl(&dword_1B1F9F000, v27, OS_LOG_TYPE_DEFAULT, v26, &v39, v28);
          goto LABEL_40;
        }

        goto LABEL_40;
      }

      if ([triggerDate4 mtIsAfterDate:triggerDate2] && objc_msgSend(triggerDate3, "mtIsBeforeDate:", triggerDate4) && objc_msgSend(triggerDate3, "mtIsBeforeDate:", triggerDate2))
      {
        v25 = MTLogForCategory(7);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 138543618;
          selfCopy10 = self;
          v41 = 2114;
          v42 = triggerDate3;
          v26 = "%{public}@ bedtime reminder was snoozed (%{public}@) for after the bedtime. it is currently past bedtime but before the snooze date.";
          v27 = v25;
          v28 = 22;
          goto LABEL_39;
        }

LABEL_40:

        stateMachine3 = [(MTStateMachineState *)self stateMachine];
        awakeState = [stateMachine3 awakeState];

LABEL_58:
        goto LABEL_26;
      }

      v30 = [stateMachine2 na_filter:&__block_literal_global_7];

      firstObject2 = [v30 firstObject];

      firstObject = firstObject2;
      stateMachine2 = v30;
    }

    if ([firstObject triggerType] == 7 && objc_msgSend(alarmCopy, "confirmedLastBedtimeReminder"))
    {
      v32 = MTLogForCategory(7);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        bedtimeDismissedDate = [alarmCopy bedtimeDismissedDate];
        v39 = 138543874;
        selfCopy10 = self;
        v41 = 2114;
        v42 = bedtimeDismissedDate;
        v43 = 2114;
        v44 = triggerDate2;
        _os_log_impl(&dword_1B1F9F000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ user confirmed go to bed notification (%{public}@) so we're sleeping until %{public}@", &v39, 0x20u);
      }

      triggerDate4 = [(MTStateMachineState *)self stateMachine];
      asleepState = [triggerDate4 asleepState];
      goto LABEL_57;
    }

    if ([firstObject triggerType] == 2 || objc_msgSend(firstObject, "triggerType") == 7)
    {
      if ([firstObject triggerType] == 2)
      {
        v35 = MTLogForCategory(7);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          triggerDate5 = [firstObject triggerDate];
          v39 = 138543618;
          selfCopy10 = self;
          v41 = 2114;
          v42 = triggerDate5;
          v37 = "%{public}@ haven't seen go to bed reminder yet (%{public}@)";
LABEL_55:
          _os_log_impl(&dword_1B1F9F000, v35, OS_LOG_TYPE_DEFAULT, v37, &v39, 0x16u);

          goto LABEL_56;
        }

        goto LABEL_56;
      }

      if ([firstObject triggerType] == 7)
      {
        v35 = MTLogForCategory(7);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          triggerDate5 = [firstObject triggerDate];
          v39 = 138543618;
          selfCopy10 = self;
          v41 = 2114;
          v42 = triggerDate5;
          v37 = "%{public}@ not bedtime yet (%{public}@)";
          goto LABEL_55;
        }

LABEL_56:

        triggerDate4 = [(MTStateMachineState *)self stateMachine];
        asleepState = [triggerDate4 awakeState];
LABEL_57:
        awakeState = asleepState;
        goto LABEL_58;
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTSleepCoordinatorStateMachineState.m" lineNumber:127 description:@"Unhandled sleep window case!"];

    awakeState = 0;
    goto LABEL_27;
  }

  v16 = MTLogForCategory(7);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    triggerDate = [firstObject triggerDate];
    v39 = 138543618;
    selfCopy10 = self;
    v41 = 2114;
    v42 = triggerDate;
    v18 = "%{public}@ next trigger is for wake up (%{public}@) so we're sleeping";
    goto LABEL_24;
  }

LABEL_25:

  triggerDate2 = [(MTStateMachineState *)self stateMachine];
  awakeState = [triggerDate2 asleepState];
LABEL_26:

LABEL_27:
LABEL_14:

  return awakeState;
}

- (void)userWokeUp
{
  stateMachine = [(MTStateMachineState *)self stateMachine];
  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  awakeState = [stateMachine2 awakeState];
  [stateMachine enterState:awakeState];
}

- (void)userWentToBed
{
  stateMachine = [(MTStateMachineState *)self stateMachine];
  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  asleepState = [stateMachine2 asleepState];
  [stateMachine enterState:asleepState];
}

- (void)userBedTimeReached:(id)reached
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ bedtime reached, checking state", &v5, 0xCu);
  }

  [(MTSleepCoordinatorStateMachineState *)self updateState];
}

- (void)userWakeTimeReached:(id)reached
{
  v12 = *MEMORY[0x1E69E9840];
  reachedCopy = reached;
  stateMachine = [(MTStateMachineState *)self stateMachine];
  sleepAlarm = [stateMachine sleepAlarm];

  if ([sleepAlarm isEnabled])
  {
    [(MTSleepCoordinatorStateMachineState *)self updateStateForSleepAlarm:sleepAlarm];
  }

  else
  {
    v7 = MTLogForCategory(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ waketime reached but alarm not enabled, dismissing", &v10, 0xCu);
    }

    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    stateMachine3 = [(MTStateMachineState *)self stateMachine];
    [stateMachine2 stateMachine:stateMachine3 dismissWakeUpAlarm:reachedCopy dismissAction:8];
  }
}

- (void)userWakeUpAlarmFired
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling alarm timeout", &v7, 0xCu);
  }

  stateMachine = [(MTStateMachineState *)self stateMachine];
  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  stateMachine3 = [(MTStateMachineState *)self stateMachine];
  [stateMachine stateMachine:stateMachine2 shouldScheduleAlarmTimeoutForSecondsFromNow:{(60 * objc_msgSend(stateMachine3, "sleepTimeOutMinutes"))}];

  [(MTSleepCoordinatorStateMachineState *)self updateState];
}

- (void)wakeUpAlarmTimedOut
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm timeout occurred, dismissing", &v8, 0xCu);
  }

  stateMachine = [(MTStateMachineState *)self stateMachine];
  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  stateMachine3 = [(MTStateMachineState *)self stateMachine];
  currentDate = [stateMachine3 currentDate];
  [stateMachine stateMachine:stateMachine2 dismissWakeUpAlarm:currentDate dismissAction:7];
}

@end