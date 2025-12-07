@interface MobileTimerAssistantAlarmSearch
+ (id)sanitizeAlarmLabelForComparison:(id)comparison;
- (MobileTimerAssistantAlarmSearch)searchWithAlarms:(id)alarms;
- (id)sanitizedAlarmLabelForComparison;
- (id)validateCommandArguments;
- (void)_performWithCompletion:(id)completion;
- (void)performWithCompletion:(id)completion;
@end

@implementation MobileTimerAssistantAlarmSearch

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_D018(v5);
  }

  [(MobileTimerAssistantAlarmSearch *)self _performWithCompletion:completionCopy];
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_D09C(v6);
  }
}

- (void)_performWithCompletion:(id)completion
{
  completionCopy = completion;
  validateCommandArguments = [(MobileTimerAssistantAlarmSearch *)self validateCommandArguments];
  if (validateCommandArguments)
  {
    v6 = MTLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_D120(self, validateCommandArguments, v6);
    }

    dictionary = [validateCommandArguments dictionary];
    completionCopy[2](completionCopy, dictionary);
  }

  else
  {
    v8 = dispatch_group_create();
    v9 = dispatch_semaphore_create(0);
    v10 = MTLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[MobileTimerAssistantAlarmSearch _performWithCompletion:]";
      *&buf[12] = 2114;
      *&buf[14] = self;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s %{public}@ fetching alarms", buf, 0x16u);
    }

    v11 = objc_opt_new();
    alarms = [v11 alarms];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v47 = sub_6680;
    v48 = sub_6690;
    v49 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = sub_6680;
    v44[4] = sub_6690;
    v45 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = sub_6680;
    v42[4] = sub_6690;
    v43 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = sub_6680;
    v40[4] = sub_6690;
    v41 = 0;
    if (MTShouldHandleForEucalyptus())
    {
      includesSleepAlarms = [(MobileTimerAssistantAlarmSearch *)self includesSleepAlarms];
      bOOLValue = [includesSleepAlarms BOOLValue];

      if (bOOLValue)
      {
        nextSleepAlarm = [v11 nextSleepAlarm];
        objc_initWeak(location, self);
        dispatch_group_enter(v8);
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_6698;
        v35[3] = &unk_14738;
        objc_copyWeak(&v39, location);
        v37 = v42;
        v38 = v40;
        v36 = v8;
        v15 = [nextSleepAlarm addCompletionBlock:v35];

        objc_destroyWeak(&v39);
        objc_destroyWeak(location);
      }
    }

    objc_initWeak(&from, self);
    dispatch_group_enter(v8);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_67D4;
    v29[3] = &unk_14760;
    objc_copyWeak(&v33, &from);
    v31 = buf;
    v32 = v44;
    dictionary = v8;
    v30 = dictionary;
    v16 = [alarms addCompletionBlock:v29];
    location[0] = 0;
    location[1] = location;
    location[2] = 0x3032000000;
    location[3] = sub_6680;
    location[4] = sub_6690;
    v28 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_690C;
    block[3] = &unk_14788;
    block[4] = self;
    v22 = v44;
    v23 = v40;
    v24 = location;
    v25 = v42;
    v26 = buf;
    v20 = v9;
    v21 = completionCopy;
    v17 = v9;
    dispatch_group_notify(dictionary, &_dispatch_main_q, block);
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

    _Block_object_dispose(location, 8);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&from);
    _Block_object_dispose(v40, 8);

    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v44, 8);

    _Block_object_dispose(buf, 8);
  }
}

- (id)validateCommandArguments
{
  hour = [(MobileTimerAssistantAlarmSearch *)self hour];

  if (hour)
  {
    hour2 = [(MobileTimerAssistantAlarmSearch *)self hour];
    v24 = 0;
    v5 = MTValidateAlarmHour([hour2 unsignedIntegerValue], &v24);
    hour = v24;

    v6 = hour;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  minute = [(MobileTimerAssistantAlarmSearch *)self minute];

  if (minute)
  {
    minute2 = [(MobileTimerAssistantAlarmSearch *)self minute];
    v23 = hour;
    v9 = MTValidateAlarmMinute([minute2 unsignedIntegerValue], &v23);
    v6 = v23;

    hour = v6;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  frequency = [(MobileTimerAssistantAlarmSearch *)self frequency];

  if (frequency)
  {
    frequency2 = [(MobileTimerAssistantAlarmSearch *)self frequency];
    v22 = hour;
    v12 = MTValidateAlarmFrequency(frequency2, &v22);
    v6 = v22;

    hour = v6;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  label = [(MobileTimerAssistantAlarmSearch *)self label];

  if (label)
  {
    label2 = [(MobileTimerAssistantAlarmSearch *)self label];
    v21 = hour;
    v15 = MTValidateAlarmLabel(label2, &v21);
    v6 = v21;

    if (v15)
    {
      v16 = 0;
LABEL_11:
      hour = v6;
      goto LABEL_12;
    }

LABEL_10:
    v17 = [SACommandFailed alloc];
    userInfo = [v6 userInfo];
    v19 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v16 = [v17 initWithReason:v19];

    [v16 setErrorCode:{objc_msgSend(v6, "code")}];
    goto LABEL_11;
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (MobileTimerAssistantAlarmSearch)searchWithAlarms:(id)alarms
{
  alarmsCopy = alarms;
  v83 = objc_opt_new();
  sanitizedAlarmLabelForComparison = [(MobileTimerAssistantAlarmSearch *)self sanitizedAlarmLabelForComparison];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v6 = alarmsCopy;
  v7 = sanitizedAlarmLabelForComparison;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v93 objects:v99 count:16];
  v82 = sanitizedAlarmLabelForComparison;
  if (v8)
  {
    v9 = v8;
    v10 = *v94;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v94 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v93 + 1) + 8 * i);
        if (MTShouldHandleForEucalyptus() && [v12 isSleepAlarm])
        {
          if (![v12 isSingleTimeAlarm])
          {
            goto LABEL_42;
          }

          v13 = objc_alloc_init(NSDateComponents);
          [v13 setMinute:{objc_msgSend(v12, "bedtimeMinute")}];
          [v13 setHour:{objc_msgSend(v12, "bedtimeHour")}];
          [v13 setDay:{objc_msgSend(v12, "day")}];
          [v13 setMonth:{objc_msgSend(v12, "month")}];
          [v13 setYear:{objc_msgSend(v12, "year")}];
          v14 = +[NSCalendar currentCalendar];
          v15 = [v14 dateFromComponents:v13];

          v16 = +[NSDate date];
          v17 = [v15 compare:v16];

          if (v17 != -1)
          {
            [v83 addObject:v12];
          }

          continue;
        }

        identifier = [(MobileTimerAssistantAlarmSearch *)self identifier];
        if (identifier)
        {
          v19 = identifier;
          identifier2 = [(MobileTimerAssistantAlarmSearch *)self identifier];
          alarmURL = [v12 alarmURL];
          v22 = [identifier2 isEqual:alarmURL];

          if (!v22)
          {
            continue;
          }
        }

        hour = [(MobileTimerAssistantAlarmSearch *)self hour];
        if (hour)
        {
          v24 = hour;
          hour2 = [(MobileTimerAssistantAlarmSearch *)self hour];
          unsignedIntegerValue = [hour2 unsignedIntegerValue];
          hour3 = [v12 hour];

          if (unsignedIntegerValue != hour3)
          {
            continue;
          }
        }

        minute = [(MobileTimerAssistantAlarmSearch *)self minute];
        if (minute)
        {
          v29 = minute;
          minute2 = [(MobileTimerAssistantAlarmSearch *)self minute];
          unsignedIntegerValue2 = [minute2 unsignedIntegerValue];
          minute3 = [v12 minute];

          if (unsignedIntegerValue2 != minute3)
          {
            continue;
          }
        }

        enabled = [(MobileTimerAssistantAlarmSearch *)self enabled];
        if (enabled)
        {
          v34 = enabled;
          enabled2 = [(MobileTimerAssistantAlarmSearch *)self enabled];
          bOOLValue = [enabled2 BOOLValue];
          isEnabled = [v12 isEnabled];

          if (bOOLValue != isEnabled)
          {
            continue;
          }
        }

        frequency = [(MobileTimerAssistantAlarmSearch *)self frequency];

        if (frequency)
        {
          frequency2 = [(MobileTimerAssistantAlarmSearch *)self frequency];
          if ([frequency2 count] != &dword_0 + 1)
          {

LABEL_26:
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            frequency3 = [(MobileTimerAssistantAlarmSearch *)self frequency];
            v44 = [frequency3 countByEnumeratingWithState:&v89 objects:v98 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = 0;
              v47 = *v90;
              do
              {
                for (j = 0; j != v45; ++j)
                {
                  if (*v90 != v47)
                  {
                    objc_enumerationMutation(frequency3);
                  }

                  v49 = SAAlarmDayOfWeekForString();
                  v46 |= MTAlarmRepeatDayFromSAAlarmDayOfWeek(v49);
                }

                v45 = [frequency3 countByEnumeratingWithState:&v89 objects:v98 count:16];
              }

              while (v45);
            }

            else
            {
              v46 = 0;
            }

            v50 = ([v12 repeatSchedule] & v46) == 0;
            v7 = v82;
            if (v50)
            {
              continue;
            }

            goto LABEL_36;
          }

          frequency4 = [(MobileTimerAssistantAlarmSearch *)self frequency];
          v41 = [frequency4 objectAtIndexedSubscript:0];
          v42 = SAAlarmDayOfWeekForString();

          if (v42 != 1)
          {
            goto LABEL_26;
          }

          if ([v12 repeatSchedule])
          {
            continue;
          }
        }

LABEL_36:
        if (v7)
        {
          v51 = v7;
          v52 = objc_opt_class();
          displayTitle = [v12 displayTitle];
          v54 = [v52 sanitizeAlarmLabelForComparison:displayTitle];

          if ([&stru_14A20 isEqualToString:v51] && objc_msgSend(&stru_14A20, "isEqualToString:", v54))
          {
            label = [(MobileTimerAssistantAlarmSearch *)self label];

            displayTitle2 = [v12 displayTitle];

            v54 = displayTitle2;
          }

          else
          {
            label = v51;
          }

          v57 = [v51 length];
          v58 = +[NSLocale currentLocale];
          v59 = [label compare:v54 options:129 range:0 locale:{v57, v58}];

          if (v59)
          {
            continue;
          }
        }

LABEL_42:
        [v83 addObject:v12];
        continue;
      }

      v9 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
    }

    while (v9);
  }

  v60 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v83, "count")}];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v61 = v83;
  v62 = [v61 countByEnumeratingWithState:&v85 objects:v97 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v86;
    do
    {
      for (k = 0; k != v63; k = k + 1)
      {
        if (*v86 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = *(*(&v85 + 1) + 8 * k);
        if ([v66 isSleepAlarm])
        {
          v67 = objc_alloc_init(SAAlarmSleepAlarm);
          v68 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 bedtimeHour]);
          [v67 setBedtimeHour:v68];

          v69 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 bedtimeMinute]);
          [v67 setBedtimeMinute:v69];

          [v67 setIsFiringNext:&__kCFBooleanFalse];
          if (MTShouldHandleForEucalyptus())
          {
            v70 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v66 isSingleTimeAlarm]);
            [v67 setIsOverride:v70];
          }

          else
          {
            [v67 setIsOverride:&__kCFBooleanFalse];
          }
        }

        else
        {
          v67 = objc_alloc_init(SAAlarmObject);
        }

        alarmURL2 = [v66 alarmURL];
        [v67 setIdentifier:alarmURL2];

        v72 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 hour]);
        [v67 setHour:v72];

        v73 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v66 minute]);
        [v67 setMinute:v73];

        repeatSchedule = [v66 repeatSchedule];
        v76 = SAAlarmFrequencyFromRepeatSchedule(repeatSchedule, v75);
        [v67 setFrequency:v76];

        displayTitle3 = [v66 displayTitle];
        [v67 setLabel:displayTitle3];

        v78 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v66 isEnabled]);
        [v67 setEnabled:v78];

        v79 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v66 isFiring]);
        [v67 setFiring:v79];

        [v60 addObject:v67];
      }

      v63 = [v61 countByEnumeratingWithState:&v85 objects:v97 count:16];
    }

    while (v63);
  }

  v80 = [[SAAlarmSearchCompleted alloc] initWithResults:v60];

  return v80;
}

- (id)sanitizedAlarmLabelForComparison
{
  v3 = objc_opt_class();
  label = [(MobileTimerAssistantAlarmSearch *)self label];
  v5 = [v3 sanitizeAlarmLabelForComparison:label];

  return v5;
}

+ (id)sanitizeAlarmLabelForComparison:(id)comparison
{
  comparisonCopy = comparison;
  if (comparisonCopy)
  {
    if (qword_1BE08 != -1)
    {
      sub_D2D8();
    }

    v4 = [comparisonCopy componentsSeparatedByCharactersInSet:qword_1BDF8];
    v5 = [v4 componentsJoinedByString:&stru_14A20];

    v6 = [v5 componentsSeparatedByCharactersInSet:qword_1BE00];
    v7 = [NSMutableArray arrayWithArray:v6];

    [v7 removeObject:&stru_14A20];
    v8 = [v7 componentsJoinedByString:@" "];

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end