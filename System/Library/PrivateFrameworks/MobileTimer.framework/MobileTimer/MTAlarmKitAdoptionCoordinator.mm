@interface MTAlarmKitAdoptionCoordinator
- (MTAlarmKitAdoptionCoordinator)initWithStorage:(id)storage alarmStorage:(id)alarmStorage;
- (void)handleSystemReady;
- (void)source:(id)source didAddAlarms:(id)alarms;
- (void)source:(id)source didAddTimers:(id)timers;
- (void)source:(id)source didDismissAlarm:(id)alarm dismissAction:(unint64_t)action;
- (void)source:(id)source didDismissTimer:(id)timer;
- (void)source:(id)source didRemoveAlarms:(id)alarms;
- (void)source:(id)source didRemoveTimers:(id)timers;
- (void)source:(id)source didSnoozeAlarm:(id)alarm snoozeAction:(unint64_t)action;
- (void)source:(id)source didUpdateAlarms:(id)alarms previousAlarms:(id)previousAlarms;
- (void)source:(id)source didUpdateTimers:(id)timers fromTimers:(id)fromTimers;
@end

@implementation MTAlarmKitAdoptionCoordinator

- (MTAlarmKitAdoptionCoordinator)initWithStorage:(id)storage alarmStorage:(id)alarmStorage
{
  v28 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  alarmStorageCopy = alarmStorage;
  v20.receiver = self;
  v20.super_class = MTAlarmKitAdoptionCoordinator;
  v9 = [(MTAlarmKitAdoptionCoordinator *)&v20 init];
  if (v9)
  {
    v10 = MTLogForCategory(10);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = storageCopy;
      *&buf[22] = 2114;
      v26 = alarmStorageCopy;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_INFO, "Initializing %{public}@ with timerStorage:%{public}@ alarmStorage:%{public}@", buf, 0x20u);
    }

    objc_storeStrong(&v9->_timerStorage, storage);
    objc_storeStrong(&v9->_alarmStorage, alarmStorage);
    if (_os_feature_enabled_impl())
    {
      [(MTTimerStorage *)v9->_timerStorage registerObserver:v9];
      [(MTAlarmStorage *)v9->_alarmStorage registerObserver:v9];
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v11 = getMTAlarmKitAdoptionManagerClass_softClass;
    v24 = getMTAlarmKitAdoptionManagerClass_softClass;
    if (!getMTAlarmKitAdoptionManagerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMTAlarmKitAdoptionManagerClass_block_invoke;
      v26 = &unk_1E7B0C600;
      v27 = &v21;
      __getMTAlarmKitAdoptionManagerClass_block_invoke(buf);
      v11 = v22[3];
    }

    v12 = v11;
    _Block_object_dispose(&v21, 8);
    v13 = objc_opt_new();
    alarmKitManagerProxy = v9->_alarmKitManagerProxy;
    v9->_alarmKitManagerProxy = v13;

    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v16 = dispatch_queue_create("com.apple.MTAlarmKitAdoptionCoordinator.serialqueue", v15);

    v17 = [MEMORY[0x1E69B3790] schedulerWithDispatchQueue:v16];
    serializer = v9->_serializer;
    v9->_serializer = v17;
  }

  return v9;
}

- (void)handleSystemReady
{
  v12 = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl())
  {
    if (![(MTAlarmStorage *)self->_alarmStorage isAlarmKitSchedulingEnabled])
    {
      return;
    }

    v8 = MTLogForCategory(10);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ AlarmKit Feature Flag disabled! Unscheduling any existing alarms.", buf, 0xCu);
    }

    [(MTAlarmKitAdoptionManager *)self->_alarmKitManagerProxy unscheduleAll];
    alarmStorage = self->_alarmStorage;
    v7 = 0;
    goto LABEL_12;
  }

  v3 = MTLogForCategory(10);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ Feature flag enabled. All alarms and timers routed to ⏰ AlarmKit", buf, 0xCu);
  }

  if (![(MTAlarmStorage *)self->_alarmStorage isAlarmKitSchedulingEnabled])
  {
    v4 = MTLogForCategory(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ Scheduling existing alarms", buf, 0xCu);
    }

    alarms = [(MTAlarmStorage *)self->_alarmStorage alarms];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__MTAlarmKitAdoptionCoordinator_handleSystemReady__block_invoke;
    v9[3] = &unk_1E7B0CD98;
    v9[4] = self;
    [alarms na_each:v9];

    alarmStorage = self->_alarmStorage;
    v7 = 1;
LABEL_12:
    [(MTAlarmStorage *)alarmStorage persistAlarmKitSchedulingState:v7];
  }
}

void __50__MTAlarmKitAdoptionCoordinator_handleSystemReady__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled])
  {
    [*(*(a1 + 32) + 32) scheduleAlarm:v3];
  }
}

- (void)source:(id)source didAddTimers:(id)timers
{
  timersCopy = timers;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__MTAlarmKitAdoptionCoordinator_source_didAddTimers___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v9 = timersCopy;
  selfCopy = self;
  v7 = timersCopy;
  [(NAScheduler *)serializer performBlock:v8];
}

uint64_t __53__MTAlarmKitAdoptionCoordinator_source_didAddTimers___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__MTAlarmKitAdoptionCoordinator_source_didAddTimers___block_invoke_2;
  v3[3] = &unk_1E7B0CDC0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

- (void)source:(id)source didDismissTimer:(id)timer
{
  timerCopy = timer;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MTAlarmKitAdoptionCoordinator_source_didDismissTimer___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v8[4] = self;
  v9 = timerCopy;
  v7 = timerCopy;
  [(NAScheduler *)serializer performBlock:v8];
}

void __56__MTAlarmKitAdoptionCoordinator_source_didDismissTimer___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [*(a1 + 40) timerIDString];
  [v1 dismissAlarm:v2];
}

- (void)source:(id)source didRemoveTimers:(id)timers
{
  timersCopy = timers;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MTAlarmKitAdoptionCoordinator_source_didRemoveTimers___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v9 = timersCopy;
  selfCopy = self;
  v7 = timersCopy;
  [(NAScheduler *)serializer performBlock:v8];
}

uint64_t __56__MTAlarmKitAdoptionCoordinator_source_didRemoveTimers___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__MTAlarmKitAdoptionCoordinator_source_didRemoveTimers___block_invoke_2;
  v3[3] = &unk_1E7B0CDC0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

void __56__MTAlarmKitAdoptionCoordinator_source_didRemoveTimers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [a2 timerIDString];
  [v2 cancelAlarm:v3];
}

- (void)source:(id)source didUpdateTimers:(id)timers fromTimers:(id)fromTimers
{
  timersCopy = timers;
  fromTimersCopy = fromTimers;
  serializer = self->_serializer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke;
  v12[3] = &unk_1E7B0C9A0;
  v13 = timersCopy;
  v14 = fromTimersCopy;
  selfCopy = self;
  v10 = fromTimersCopy;
  v11 = timersCopy;
  [(NAScheduler *)serializer performBlock:v12];
}

void __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_2;
  v5[3] = &unk_1E7B0CDE8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 na_each:v5];
}

void __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_2(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_3;
  v27[3] = &unk_1E7B0CC00;
  v5 = v3;
  v28 = v5;
  v6 = [v4 na_firstObjectPassingTest:v27];
  v7 = MTLogForCategory(10);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    *buf = 138543874;
    v30 = v8;
    v31 = 2114;
    v32 = v6;
    v33 = 2114;
    v34 = v5;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%{public}@ Timer updated from %{public}@ to %{public}@", buf, 0x20u);
  }

  v9 = [v6 state];
  if (v9 != [v5 state])
  {
    v10 = [v5 state];
    switch(v10)
    {
      case 3:
        if ([v6 state] == 2)
        {
          v19 = MTLogForCategory(10);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = *(a1 + 40);
            v21 = [v5 timerIDString];
            *buf = 138543618;
            v30 = v20;
            v31 = 2114;
            v32 = v21;
            _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_INFO, "%{public}@ Resuming timer: %{public}@", buf, 0x16u);
          }

          v22 = *(*(a1 + 40) + 32);
          v14 = [v5 timerIDString];
          [v22 resumeCountdown:v14];
          goto LABEL_24;
        }

        if ([v6 state] == 1)
        {
          v23 = MTLogForCategory(10);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = *(a1 + 40);
            v25 = [v5 timerIDString];
            *buf = 138543618;
            v30 = v24;
            v31 = 2114;
            v32 = v25;
            _os_log_impl(&dword_1B1F9F000, v23, OS_LOG_TYPE_INFO, "%{public}@ Repeating timer: %{public}@", buf, 0x16u);
          }

          v26 = *(*(a1 + 40) + 32);
          v14 = [v5 timerIDString];
          [v26 countdownAlarm:v14];
          goto LABEL_24;
        }

        break;
      case 2:
        if ([v6 state] == 3)
        {
          v15 = MTLogForCategory(10);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = *(a1 + 40);
            v17 = [v5 timerIDString];
            *buf = 138543618;
            v30 = v16;
            v31 = 2114;
            v32 = v17;
            _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_INFO, "%{public}@ Pausing timer: %{public}@", buf, 0x16u);
          }

          v18 = *(*(a1 + 40) + 32);
          v14 = [v5 timerIDString];
          [v18 pauseCountdown:v14];
          goto LABEL_24;
        }

        break;
      case 1:
        if (![v5 isFiring] || (objc_msgSend(v5, "sound"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isSilent"), v11, v12))
        {
          v13 = *(*(a1 + 40) + 32);
          v14 = [v5 timerIDString];
          [v13 dismissAlarm:v14];
LABEL_24:
        }

        break;
      default:
        v14 = MTLogForCategory(10);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_2_cold_1(a1, v5, v14);
        }

        goto LABEL_24;
    }
  }
}

uint64_t __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 timerIDString];
  v5 = [v3 timerIDString];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (void)source:(id)source didAddAlarms:(id)alarms
{
  alarmsCopy = alarms;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__MTAlarmKitAdoptionCoordinator_source_didAddAlarms___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v9 = alarmsCopy;
  selfCopy = self;
  v7 = alarmsCopy;
  [(NAScheduler *)serializer performBlock:v8];
}

uint64_t __53__MTAlarmKitAdoptionCoordinator_source_didAddAlarms___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__MTAlarmKitAdoptionCoordinator_source_didAddAlarms___block_invoke_2;
  v3[3] = &unk_1E7B0CD98;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

void __53__MTAlarmKitAdoptionCoordinator_source_didAddAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isSleepAlarm] & 1) == 0 && objc_msgSend(v3, "isEnabled"))
  {
    [*(*(a1 + 32) + 32) scheduleAlarm:v3];
  }
}

- (void)source:(id)source didDismissAlarm:(id)alarm dismissAction:(unint64_t)action
{
  alarmCopy = alarm;
  serializer = self->_serializer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__MTAlarmKitAdoptionCoordinator_source_didDismissAlarm_dismissAction___block_invoke;
  v9[3] = &unk_1E7B0C928;
  v10 = alarmCopy;
  selfCopy = self;
  v8 = alarmCopy;
  [(NAScheduler *)serializer performBlock:v9];
}

void __70__MTAlarmKitAdoptionCoordinator_source_didDismissAlarm_dismissAction___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isSleepAlarm] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 40) + 32);
    v4 = [v2 alarmIDString];
    [v3 dismissAlarm:v4];
  }
}

- (void)source:(id)source didRemoveAlarms:(id)alarms
{
  alarmsCopy = alarms;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MTAlarmKitAdoptionCoordinator_source_didRemoveAlarms___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v9 = alarmsCopy;
  selfCopy = self;
  v7 = alarmsCopy;
  [(NAScheduler *)serializer performBlock:v8];
}

uint64_t __56__MTAlarmKitAdoptionCoordinator_source_didRemoveAlarms___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__MTAlarmKitAdoptionCoordinator_source_didRemoveAlarms___block_invoke_2;
  v3[3] = &unk_1E7B0CD98;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

void __56__MTAlarmKitAdoptionCoordinator_source_didRemoveAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isSleepAlarm] & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 32);
    v4 = [v5 alarmIDString];
    [v3 cancelAlarm:v4];
  }
}

- (void)source:(id)source didSnoozeAlarm:(id)alarm snoozeAction:(unint64_t)action
{
  alarmCopy = alarm;
  serializer = self->_serializer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__MTAlarmKitAdoptionCoordinator_source_didSnoozeAlarm_snoozeAction___block_invoke;
  v9[3] = &unk_1E7B0C928;
  v10 = alarmCopy;
  selfCopy = self;
  v8 = alarmCopy;
  [(NAScheduler *)serializer performBlock:v9];
}

void __68__MTAlarmKitAdoptionCoordinator_source_didSnoozeAlarm_snoozeAction___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isSleepAlarm] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 40) + 32);
    v4 = [v2 alarmIDString];
    [v3 countdownAlarm:v4];
  }
}

- (void)source:(id)source didUpdateAlarms:(id)alarms previousAlarms:(id)previousAlarms
{
  alarmsCopy = alarms;
  previousAlarmsCopy = previousAlarms;
  serializer = self->_serializer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke;
  v12[3] = &unk_1E7B0C9A0;
  v13 = alarmsCopy;
  v14 = previousAlarmsCopy;
  selfCopy = self;
  v10 = previousAlarmsCopy;
  v11 = alarmsCopy;
  [(NAScheduler *)serializer performBlock:v12];
}

void __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) na_filter:&__block_literal_global_7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_3;
  v5[3] = &unk_1E7B0CE10;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 na_each:v5];
}

void __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_3(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_4;
  v35[3] = &unk_1E7B0C6B0;
  v5 = v3;
  v36 = v5;
  v6 = [v4 na_firstObjectPassingTest:v35];
  v7 = [v6 hour];
  if (v7 != [v5 hour])
  {
    goto LABEL_16;
  }

  v8 = [v6 minute];
  if (v8 != [v5 minute])
  {
    goto LABEL_16;
  }

  v9 = [v6 repeatSchedule];
  if (v9 != [v5 repeatSchedule])
  {
    goto LABEL_16;
  }

  v10 = [v6 title];
  v11 = [v5 title];
  if (v10 != v11 || (v12 = [v6 snoozeDuration], v12 != objc_msgSend(v5, "snoozeDuration")))
  {

    goto LABEL_16;
  }

  v13 = [v6 allowsSnooze];
  v14 = [v5 allowsSnooze];

  if (v13 != v14)
  {
LABEL_16:
    v26 = MTLogForCategory(10);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 40);
      v28 = [v5 alarmIDString];
      *buf = 138543618;
      v38 = v27;
      v39 = 2114;
      v40 = v28;
      _os_log_impl(&dword_1B1F9F000, v26, OS_LOG_TYPE_INFO, "%{public}@ Unscheduling existing alarm and rescheduling for %{public}@", buf, 0x16u);
    }

    v29 = *(*(a1 + 40) + 32);
    v30 = [v5 alarmIDString];
    [v29 cancelAlarm:v30];

    goto LABEL_19;
  }

  v15 = [v6 isEnabled];
  if (v15 != [v5 isEnabled] && (objc_msgSend(v5, "isFiring") & 1) == 0)
  {
    v16 = MTLogForCategory(10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 40);
      v18 = [v5 alarmIDString];
      v19 = [v6 isEnabled];
      v20 = [v5 isEnabled];
      *buf = 138544130;
      v38 = v17;
      v39 = 2114;
      v40 = v18;
      v41 = 1026;
      v42 = v19;
      v43 = 1026;
      v44 = v20;
      _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_INFO, "%{public}@ State changed for %{public}@ from %{public}d to %{public}d", buf, 0x22u);
    }

    v21 = [v5 isEnabled];
    v22 = MTLogForCategory(10);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (v21)
    {
      if (v23)
      {
        v24 = *(a1 + 40);
        v25 = [v5 alarmIDString];
        *buf = 138543618;
        v38 = v24;
        v39 = 2114;
        v40 = v25;
        _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_INFO, "%{public}@ Alarm is enabled, scheduling %{public}@", buf, 0x16u);
      }

LABEL_19:
      [*(*(a1 + 40) + 32) scheduleAlarm:v5];
      goto LABEL_20;
    }

    if (v23)
    {
      v31 = *(a1 + 40);
      v32 = [v5 alarmIDString];
      *buf = 138543618;
      v38 = v31;
      v39 = 2114;
      v40 = v32;
      _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_INFO, "%{public}@ Alarm is disabled, unscheduling %{public}@", buf, 0x16u);
    }

    v33 = *(*(a1 + 40) + 32);
    v34 = [v5 alarmIDString];
    [v33 cancelAlarm:v34];
  }

LABEL_20:
}

uint64_t __71__MTAlarmKitAdoptionCoordinator_source_didUpdateAlarms_previousAlarms___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 alarmIDString];
  v5 = [v3 alarmIDString];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void __67__MTAlarmKitAdoptionCoordinator_source_didUpdateTimers_fromTimers___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ Unknown timer state encountered for %{public}@", &v4, 0x16u);
}

@end