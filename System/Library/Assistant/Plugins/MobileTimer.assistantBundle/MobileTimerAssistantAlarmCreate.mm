@interface MobileTimerAssistantAlarmCreate
- (id)validateCommandArguments;
- (void)_performWithCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MobileTimerAssistantAlarmCreate

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_C7CC(v5);
  }

  [(MobileTimerAssistantAlarmCreate *)self _performWithCompletion:completionCopy];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_C850(v6);
  }
}

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  validateCommandArguments = [(MobileTimerAssistantAlarmCreate *)self validateCommandArguments];
  if (validateCommandArguments)
  {
    v5 = MTLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_C8D4();
    }

    dictionary = [validateCommandArguments dictionary];
    completionCopy[2](completionCopy, dictionary);
    goto LABEL_34;
  }

  dictionary = [(MobileTimerAssistantAlarmCreate *)self alarmToCreate];
  v7 = objc_opt_new();
  relativeOffsetMinutes = [dictionary relativeOffsetMinutes];

  if (relativeOffsetMinutes)
  {
    minute2 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v10 = +[NSTimeZone defaultTimeZone];
    [minute2 setTimeZone:v10];

    v11 = objc_alloc_init(NSDateComponents);
    relativeOffsetMinutes2 = [dictionary relativeOffsetMinutes];
    [v11 setMinute:{objc_msgSend(relativeOffsetMinutes2, "unsignedIntValue")}];

    if ([v11 minute] <= 4)
    {
      [v11 setSecond:40];
    }

    v13 = +[NSDate date];
    v14 = [minute2 dateByAddingComponents:v11 toDate:v13 options:0];

    v15 = [minute2 components:96 fromDate:v14];
    [v7 setHour:{objc_msgSend(v15, "hour")}];
    [v7 setMinute:{objc_msgSend(v15, "minute")}];
  }

  else
  {
    hour = [dictionary hour];

    if (hour)
    {
      hour2 = [dictionary hour];
      [v7 setHour:{objc_msgSend(hour2, "unsignedIntValue")}];
    }

    minute = [dictionary minute];

    if (!minute)
    {
      goto LABEL_14;
    }

    minute2 = [dictionary minute];
    [v7 setMinute:{objc_msgSend(minute2, "unsignedIntValue")}];
  }

LABEL_14:
  frequency = [dictionary frequency];

  if (frequency)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    frequency2 = [dictionary frequency];
    v21 = 0;
    v22 = [frequency2 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v22)
    {
      v23 = *v64;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v64 != v23)
          {
            objc_enumerationMutation(frequency2);
          }

          v25 = SAAlarmDayOfWeekForString();
          v21 |= MTAlarmRepeatDayFromSAAlarmDayOfWeek(v25);
        }

        v22 = [frequency2 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v22);
    }

    [v7 setRepeatSchedule:v21];
  }

  label = [dictionary label];
  v27 = label == 0;

  if (!v27)
  {
    label2 = [dictionary label];
    [v7 setTitle:label2];
  }

  sound = [v7 sound];
  isSilent = [sound isSilent];

  if (isSilent)
  {
    v31 = +[TLToneManager sharedToneManager];
    v32 = [v31 defaultToneIdentifierForAlertType:13];

    sound2 = [v7 sound];
    vibrationIdentifier = [sound2 vibrationIdentifier];
    sound3 = [v7 sound];
    soundVolume = [sound3 soundVolume];
    v37 = [MTSound toneSoundWithIdentifier:v32 vibrationIdentifer:vibrationIdentifier volume:soundVolume];

    [v7 setSound:v37];
  }

  v51 = objc_opt_new();
  v38 = MTLogForCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ adding alarm: %{public}@", buf, 0x16u);
  }

  v39 = [v51 addAlarm:v7];
  objc_initWeak(&location, self);
  v40 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v70 = sub_3638;
  v71 = sub_3648;
  v72 = 0;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_3650;
  v57[3] = &unk_14518;
  objc_copyWeak(&v61, &location);
  v41 = v7;
  v58 = v41;
  v60 = buf;
  v42 = v40;
  v59 = v42;
  v43 = [v39 addSuccessBlock:v57];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_3780;
  v53[3] = &unk_14540;
  objc_copyWeak(&v56, &location);
  v55 = buf;
  v44 = v42;
  v54 = v44;
  v45 = [v39 addFailureBlock:v53];
  dispatch_semaphore_wait(v44, 0xFFFFFFFFFFFFFFFFLL);
  v46 = MTLogForCategory();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    dictionary2 = [*(*&buf[8] + 40) dictionary];
    sub_C93C(self, dictionary2, v68);
  }

  dictionary3 = [*(*&buf[8] + 40) dictionary];
  completionCopy[2](completionCopy, dictionary3);

  v49 = MTLogForCategory();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    dictionary4 = [*(*&buf[8] + 40) dictionary];
    sub_C9A0(self, dictionary4, v67);
  }

  objc_destroyWeak(&v56);
  objc_destroyWeak(&v61);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
LABEL_34:
}

- (id)validateCommandArguments
{
  alarmToCreate = [(MobileTimerAssistantAlarmCreate *)self alarmToCreate];
  relativeOffsetMinutes = [alarmToCreate relativeOffsetMinutes];

  if (relativeOffsetMinutes)
  {
    relativeOffsetMinutes2 = [alarmToCreate relativeOffsetMinutes];
    v28 = 0;
    v5 = MTValidateAlarmRelativeOffsetMinutes([relativeOffsetMinutes2 unsignedIntegerValue], &v28);
    relativeOffsetMinutes = v28;

    v6 = relativeOffsetMinutes;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  hour = [alarmToCreate hour];

  if (hour)
  {
    hour2 = [alarmToCreate hour];
    v27 = relativeOffsetMinutes;
    v9 = MTValidateAlarmHour([hour2 unsignedIntegerValue], &v27);
    v6 = v27;

    relativeOffsetMinutes = v6;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  minute = [alarmToCreate minute];

  if (minute)
  {
    minute2 = [alarmToCreate minute];
    v26 = relativeOffsetMinutes;
    v12 = MTValidateAlarmMinute([minute2 unsignedIntegerValue], &v26);
    v6 = v26;

    relativeOffsetMinutes = v6;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  frequency = [alarmToCreate frequency];

  if (frequency)
  {
    frequency2 = [alarmToCreate frequency];
    v25 = relativeOffsetMinutes;
    v15 = MTValidateAlarmFrequency(frequency2, &v25);
    v6 = v25;

    relativeOffsetMinutes = v6;
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  label = [alarmToCreate label];

  if (label)
  {
    label2 = [alarmToCreate label];
    v24 = relativeOffsetMinutes;
    v18 = MTValidateAlarmLabel(label2, &v24);
    v6 = v24;

    if (v18)
    {
      v19 = 0;
LABEL_13:
      relativeOffsetMinutes = v6;
      goto LABEL_14;
    }

LABEL_12:
    v20 = [SACommandFailed alloc];
    userInfo = [v6 userInfo];
    v22 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v19 = [v20 initWithReason:v22];

    [v19 setErrorCode:{objc_msgSend(v6, "code")}];
    goto LABEL_13;
  }

  v19 = 0;
LABEL_14:

  return v19;
}

@end