@interface HDSPWakeDetectionStateMachineState
- (BOOL)isWakeDetectionDisabled;
- (void)updateState;
@end

@implementation HDSPWakeDetectionStateMachineState

- (void)updateState
{
  v15 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  if ([(HDSPWakeDetectionStateMachineState *)self isWakeDetectionDisabled])
  {
    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 138543362;
      *&v14[4] = objc_opt_class();
      v5 = *&v14[4];
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake detection disabled", v14, 0xCu);
    }

    disabledState = [stateMachine disabledState];
    [stateMachine enterState:disabledState];
  }

  else
  {
    disabledState = [stateMachine infoProvider];
    activeTypes = [disabledState activeTypes];
    if (activeTypes)
    {
      v9 = HKSPLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138543362;
        *&v14[4] = objc_opt_class();
        v10 = *&v14[4];
        _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] in detection window for activity (and explicit)", v14, 0xCu);
      }

      activityDetectingState = [stateMachine activityDetectingState];
    }

    else if ((activeTypes & 2) != 0)
    {
      v11 = HKSPLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138543362;
        *&v14[4] = objc_opt_class();
        v12 = *&v14[4];
        _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] in detection window for explicit", v14, 0xCu);
      }

      activityDetectingState = [stateMachine explicitDetectingState];
    }

    else
    {
      activityDetectingState = [stateMachine waitingState];
    }

    v13 = activityDetectingState;
    [stateMachine enterState:{activityDetectingState, *v14, *&v14[8]}];
  }
}

- (BOOL)isWakeDetectionDisabled
{
  v17 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  sleepScheduleModel = [infoProvider sleepScheduleModel];
  sleepSchedule = [sleepScheduleModel sleepSchedule];
  if ([sleepSchedule isEnabledAndHasOccurrences])
  {
    sleepSettings = [sleepScheduleModel sleepSettings];
    if ([infoProvider isWatch] && (-[NSObject watchSleepFeaturesEnabled](sleepSettings, "watchSleepFeaturesEnabled") & 1) == 0)
    {
      sleepEventRecord = HKSPLogForCategory();
      if (os_log_type_enabled(sleepEventRecord, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = objc_opt_class();
        v10 = v16;
        _os_log_impl(&dword_269B11000, sleepEventRecord, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep features disabled", &v15, 0xCu);
      }

      goto LABEL_20;
    }

    sleepEventRecord = [sleepScheduleModel sleepEventRecord];
    if ([infoProvider isWatch] && (-[NSObject isAnySleepTrackingOnboardingCompleted](sleepEventRecord, "isAnySleepTrackingOnboardingCompleted") & 1) == 0)
    {
      v11 = HKSPLogForCategory();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

LABEL_20:
        v8 = 1;
        goto LABEL_21;
      }

      v15 = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      v13 = "[%{public}@] sleep tracking onboarding not completed";
    }

    else
    {
      if ([infoProvider isWatch] & 1) != 0 || (-[NSObject isAnySleepCoachingOnboardingCompleted](sleepEventRecord, "isAnySleepCoachingOnboardingCompleted"))
      {
        v8 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v11 = HKSPLogForCategory();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v15 = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      v13 = "[%{public}@] sleep coaching onboarding not completed";
    }

    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, v13, &v15, 0xCu);

    goto LABEL_19;
  }

  sleepSettings = HKSPLogForCategory();
  if (os_log_type_enabled(sleepSettings, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = objc_opt_class();
    v9 = v16;
    _os_log_impl(&dword_269B11000, sleepSettings, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule disabled", &v15, 0xCu);
  }

  v8 = 1;
LABEL_22:

  return v8;
}

@end