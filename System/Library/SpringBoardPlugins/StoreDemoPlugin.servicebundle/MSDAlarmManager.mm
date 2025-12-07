@interface MSDAlarmManager
+ (id)sharedInstance;
- (MSDAlarmManager)init;
- (id)getCurrentSleepAlarms;
- (void)disableAlarms;
- (void)disableSleepAlarm;
@end

@implementation MSDAlarmManager

+ (id)sharedInstance
{
  if (qword_1E038 != -1)
  {
    sub_BDE8();
  }

  v3 = qword_1E030;

  return v3;
}

- (MSDAlarmManager)init
{
  v11.receiver = self;
  v11.super_class = MSDAlarmManager;
  v2 = [(MSDAlarmManager *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mtAlarmManager = v2->_mtAlarmManager;
    v2->_mtAlarmManager = v3;

    v5 = objc_opt_new();
    sleepStore = v2->_sleepStore;
    v2->_sleepStore = v5;

    if (!v2->_sleepStore)
    {
      v8 = defaultLogHandle(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_BDFC(v8);
      }
    }

    v9 = v2;
  }

  return v2;
}

- (id)getCurrentSleepAlarms
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v6 = defaultLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_BE40(v6);
    }

    sleepAlarmsSync = 0;
  }

  else
  {
    sleepAlarmsSync = [(MTAlarmManager *)self->_mtAlarmManager sleepAlarmsSync];
    if (!sleepAlarmsSync)
    {
      sleepAlarmsSync = +[NSArray array];
    }
  }

  return sleepAlarmsSync;
}

- (void)disableSleepAlarm
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v6 = defaultLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_BEC4(v6);
    }
  }

  else
  {
    sleepStore = [(MSDAlarmManager *)self sleepStore];
    v27 = 0;
    v8 = [sleepStore currentSleepScheduleWithError:&v27];
    v6 = v27;

    v9 = [v8 mutableCopy];
    v10 = v9;
    if (v8)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      occurrences = [v9 occurrences];
      v12 = [occurrences countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v21 = v8;
        v22 = v6;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(occurrences);
            }

            v16 = [*(*(&v23 + 1) + 8 * i) mutableCopy];
            alarmConfiguration = [v16 alarmConfiguration];
            v18 = [alarmConfiguration mutableCopy];

            if ([v18 isEnabled])
            {
              v19 = defaultLogHandle([v18 setEnabled:0]);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *&buf[4] = v18;
                _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, " Set mutableAlarmConfiguration enabled to NO : %{public}@", buf, 0xCu);
              }

              [v16 setAlarmConfiguration:v18];
              [v10 saveOccurrence:v16];
              sleepStore2 = [(MSDAlarmManager *)self sleepStore];
              [sleepStore2 saveCurrentSleepSchedule:v10 options:4 completion:&stru_18650];
            }
          }

          v13 = [occurrences countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v13);
        v8 = v21;
        v6 = v22;
      }
    }

    else
    {
      sub_BF48(v6, buf);
      occurrences = *buf;
    }
  }
}

- (void)disableAlarms
{
  mtAlarmManager = [(MSDAlarmManager *)self mtAlarmManager];
  alarmsSync = [mtAlarmManager alarmsSync];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = alarmsSync;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v20;
    *&v7 = 138543362;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        isEnabled = [v12 isEnabled];
        if (isEnabled)
        {
          v14 = defaultLogHandle(isEnabled);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = v12;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Disabling alarm %{public}@", buf, 0xCu);
          }

          v15 = [v12 mutableCopy];
          [v15 setEnabled:0];
          mtAlarmManager2 = [(MSDAlarmManager *)self mtAlarmManager];
          v17 = [mtAlarmManager2 updateAlarm:v15];

          v9 = v15;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }
}

@end