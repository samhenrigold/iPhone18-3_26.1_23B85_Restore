@interface MobileTimerAssistantAlarmUpdate
- (id)updateAlarm:(id)alarm withModification:(id)modification;
- (id)updateAlarmsWithManager:(id)manager;
- (id)validateCommandArguments;
- (void)_performWithCompletion:(id)completion;
- (void)dealloc;
- (void)performWithCompletion:(id)completion;
@end

@implementation MobileTimerAssistantAlarmUpdate

- (void)dealloc
{
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MobileTimerAssistantAlarmUpdate;
  [(MobileTimerAssistantAlarmUpdate *)&v4 dealloc];
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_CCC4(v5);
  }

  [(MobileTimerAssistantAlarmUpdate *)self _performWithCompletion:completionCopy];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_CD48(v6);
  }
}

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  validateCommandArguments = [(MobileTimerAssistantAlarmUpdate *)self validateCommandArguments];
  if (validateCommandArguments)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_CDCC();
    }

    dictionary = [validateCommandArguments dictionary];
    completionCopy[2](completionCopy, dictionary);
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = objc_opt_new();
    v9 = dispatch_semaphore_create(0);
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_4B6C;
    v32 = sub_4B7C;
    v33 = 0;
    v10 = [(MobileTimerAssistantAlarmUpdate *)self updateAlarmsWithManager:v8];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_4B84;
    v24[3] = &unk_14620;
    objc_copyWeak(&v27, &location);
    v26 = &v28;
    v11 = v9;
    v25 = v11;
    v12 = [v10 addSuccessBlock:v24];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_4CC0;
    v20[3] = &unk_14540;
    objc_copyWeak(&v23, &location);
    v22 = &v28;
    v13 = v11;
    v21 = v13;
    v14 = [v10 addFailureBlock:v20];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    v15 = MTLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      dictionary2 = [v29[5] dictionary];
      sub_CE34(self, dictionary2, v36);
    }

    dictionary3 = [v29[5] dictionary];
    completionCopy[2](completionCopy, dictionary3);

    v18 = MTLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      dictionary4 = [v29[5] dictionary];
      sub_CE98(self, dictionary4, v35);
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v27);

    _Block_object_dispose(&v28, 8);
    objc_destroyWeak(&location);
  }
}

- (id)validateCommandArguments
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_4B6C;
  v13 = sub_4B7C;
  v14 = 0;
  modifications = [(MobileTimerAssistantAlarmUpdate *)self modifications];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4F78;
  v8[3] = &unk_14670;
  v8[4] = &v15;
  v8[5] = &v9;
  [modifications enumerateObjectsUsingBlock:v8];

  if (v16[3])
  {
    v3 = 0;
  }

  else
  {
    v4 = [SACommandFailed alloc];
    userInfo = [v10[5] userInfo];
    v6 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v3 = [v4 initWithReason:v6];

    [v3 setErrorCode:{objc_msgSend(v10[5], "code")}];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v3;
}

- (id)updateAlarmsWithManager:(id)manager
{
  managerCopy = manager;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[MobileTimerAssistantAlarmUpdate updateAlarmsWithManager:]";
    v15 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ fetching alarms", buf, 0x16u);
  }

  alarms = [managerCopy alarms];
  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_55FC;
  v10[3] = &unk_14710;
  objc_copyWeak(&v12, buf);
  v7 = managerCopy;
  v11 = v7;
  v8 = [alarms flatMap:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  return v8;
}

- (id)updateAlarm:(id)alarm withModification:(id)modification
{
  modificationCopy = modification;
  v6 = [alarm mutableCopy];
  hour = [modificationCopy hour];
  v8 = hour != 0;

  if (hour)
  {
    hour2 = [modificationCopy hour];
    [v6 setHour:{objc_msgSend(hour2, "unsignedIntegerValue")}];
  }

  minute = [modificationCopy minute];

  if (minute)
  {
    minute2 = [modificationCopy minute];
    [v6 setMinute:{objc_msgSend(minute2, "unsignedIntegerValue")}];

    v8 = 1;
  }

  addedFrequency = [modificationCopy addedFrequency];

  if (addedFrequency)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    addedFrequency2 = [modificationCopy addedFrequency];
    v14 = [addedFrequency2 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v44;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(addedFrequency2);
          }

          v19 = SAAlarmDayOfWeekForString();
          v16 |= MTAlarmRepeatDayFromSAAlarmDayOfWeek(v19);
        }

        v15 = [addedFrequency2 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    [v6 setRepeatSchedule:{objc_msgSend(v6, "repeatSchedule") | v16}];
    v8 = 1;
  }

  removedFrequency = [modificationCopy removedFrequency];

  if (removedFrequency)
  {
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    removedFrequency2 = [modificationCopy removedFrequency];
    v22 = [removedFrequency2 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(removedFrequency2);
          }

          v26 = SAAlarmDayOfWeekForString();
          v27 = MTAlarmRepeatDayFromSAAlarmDayOfWeek(v26);
        }

        v28 = v27;
        v23 = [removedFrequency2 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v23);
      v29 = ~v28;
    }

    else
    {
      v29 = -1;
    }

    [v6 setRepeatSchedule:{objc_msgSend(v6, "repeatSchedule") & v29}];
    v8 = 1;
  }

  label = [modificationCopy label];

  if (label)
  {
    label2 = [modificationCopy label];
    [v6 setTitle:label2];

LABEL_30:
    enabled = [modificationCopy enabled];
    if (enabled)
    {
      enabled2 = [modificationCopy enabled];
      [v6 setEnabled:{objc_msgSend(enabled2, "BOOLValue")}];
    }

    else
    {
      [v6 setEnabled:1];
    }

    goto LABEL_34;
  }

  if (v8)
  {
    goto LABEL_30;
  }

  enabled3 = [modificationCopy enabled];

  if (enabled3)
  {
    enabled4 = [modificationCopy enabled];
    bOOLValue = [enabled4 BOOLValue];

    [v6 setEnabled:bOOLValue];
    v38 = &kMTCASiriAlarmDeactivations;
    if (bOOLValue)
    {
      v38 = &kMTCASiriAlarmActivations;
    }

    [MTAnalytics incrementEventCount:*v38];
  }

LABEL_34:

  return v6;
}

@end