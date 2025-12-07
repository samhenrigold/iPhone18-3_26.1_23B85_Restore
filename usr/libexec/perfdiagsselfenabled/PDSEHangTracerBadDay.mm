@interface PDSEHangTracerBadDay
+ (BOOL)wantsEnablement;
+ (double)timeoutDurationSec;
+ (void)writeEnablementSettings;
@end

@implementation PDSEHangTracerBadDay

+ (BOOL)wantsEnablement
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = +[HTPrefs sharedPrefs];
    badDayEnablementForPreviousDays = [v3 badDayEnablementForPreviousDays];

    v5 = +[HTPrefs sharedPrefs];
    badDayEnablementForHangDurationMSec = [v5 badDayEnablementForHangDurationMSec];

    v7 = +[HTPrefs sharedPrefs];
    badDayEnablementForLogCount = [v7 badDayEnablementForLogCount];

    v9 = +[HTPrefs sharedPrefs];
    badDayEnablementMinimumBreakDurationDays = [v9 badDayEnablementMinimumBreakDurationDays];

    v11 = +[HTPrefs sharedPrefs];
    [v11 badDaySecondsBetweenLastEnablementAndReferenceDate];
    v13 = v12;

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100001C90;
    v49[3] = &unk_100018440;
    *&v49[4] = v13;
    v49[5] = badDayEnablementForHangDurationMSec;
    v50 = badDayEnablementForLogCount;
    v51 = badDayEnablementMinimumBreakDurationDays;
    v14 = objc_retainBlock(v49);
    +[NSDate timeIntervalSinceReferenceDate];
    v16 = v15;
    v17 = v15 - v13;
    timeoutDurationSec = [objc_opt_class() timeoutDurationSec];
    if (v17 < v19 || v17 >= v19 + badDayEnablementMinimumBreakDurationDays * 86400.0)
    {
      if (v17 >= v19)
      {
        v20 = CFPreferencesCopyValue(@"BadDaySecondsBetweenLastEvaluationAndReferenceDate", @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
        [v20 doubleValue];
        if (v16 - v23 >= 43200.0)
        {
          CFPreferencesSetValue(@"BadDaySecondsBetweenLastEvaluationAndReferenceDate", [NSNumber numberWithDouble:v16], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
          CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
          v26 = badDayEnablementForPreviousDays;
          v27 = badDayEnablementForHangDurationMSec / 1000.0;
          v28 = [[NSCountedSet alloc] initWithCapacity:0];
          v29 = [NSDate dateWithTimeIntervalSinceNow:v26 * -86400.0];
          v30 = +[NSDate date];
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_100001E80;
          v46[3] = &unk_100018468;
          v48 = v27;
          v24 = v28;
          v47 = v24;
          v41 = v29;
          sub_100004280(v29, v30, 0, v46);

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          objectEnumerator = [v24 objectEnumerator];
          v32 = [objectEnumerator countByEnumeratingWithState:&v42 objects:v52 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = 0;
            v35 = *v43;
            while (2)
            {
              for (i = 0; i != v33; i = i + 1)
              {
                if (*v43 != v35)
                {
                  objc_enumerationMutation(objectEnumerator);
                }

                v37 = *(*(&v42 + 1) + 8 * i);
                v38 = sub_10000AFB4(v37);
                if ((v38 & 1) == 0)
                {
                  v38 = [v24 countForObject:v37];
                  v34 += v38;
                }

                if (v34 >= badDayEnablementForLogCount)
                {
                  v39 = sub_10000B598(v38);
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "PDSE: enabling bad day log collection", buf, 2u);
                  }

                  v22 = 1;
                  (*(v14 + 16))(v14, 1);

                  goto LABEL_32;
                }
              }

              v33 = [objectEnumerator countByEnumeratingWithState:&v42 objects:v52 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }
          }

          (*(v14 + 16))(v14, 0);
          v22 = 0;
LABEL_32:
        }

        else
        {
          [v20 doubleValue];
          v24 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          v25 = sub_10000B598(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v54 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "PDSE: bad day log not evaluated since last evaluation (%@) is too close", buf, 0xCu);
          }

          (*(v14 + 16))(v14, 0);
          v22 = 0;
        }
      }

      else
      {
        v20 = sub_10000B598(timeoutDurationSec);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_10000C164(v20);
        }

        v22 = 1;
      }
    }

    else
    {
      v20 = [NSDate dateWithTimeIntervalSinceReferenceDate:v13];
      v21 = sub_10000B598(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PDSE: bad day log not enabled since last enablement (%@) is too close", buf, 0xCu);
      }

      (*(v14 + 16))(v14, 0);
      v22 = 0;
    }
  }

  else
  {
    v14 = sub_10000B598(v2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PDSE: bad day log collection feature is turned off", buf, 2u);
    }

    v22 = 0;
  }

  return v22;
}

+ (void)writeEnablementSettings
{
  +[NSDate timeIntervalSinceReferenceDate];
  CFPreferencesSetValue(@"BadDaySecondsBetweenLastEnablementAndReferenceDate", [NSNumber numberWithDouble:?], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v3 = +[HTPrefs sharedPrefs];
  isInternal = [v3 isInternal];

  if (isInternal)
  {
    prefixForDefaults = [self prefixForDefaults];
    v6 = sub_100000F10(@"HangTracerEnabled", prefixForDefaults);
    CFPreferencesSetValue(v6, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

    v8 = sub_10000B598(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C1A8(self, @"HangTracerEnabled", v8);
    }

    CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  }

  else
  {
    v31[0] = @"HangTracerDailyLogLimit";
    v31[1] = @"HangTracerDailyMicroHangLogLimit";
    v31[2] = @"HangTracerFenceHangLogLimit";
    [NSArray arrayWithObjects:v31 count:3];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v27 = 0u;
    v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v25;
      *&v10 = 138412290;
      v21 = v10;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          prefixForDefaults2 = [self prefixForDefaults];
          v16 = sub_100000F10(v14, prefixForDefaults2);
          CFPreferencesSetValue(v16, [NSNumber numberWithInt:0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

          v18 = sub_10000B598(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            prefixForDefaults3 = [self prefixForDefaults];
            v20 = sub_100000F10(v14, prefixForDefaults3);
            *buf = v21;
            v29 = v20;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "PDSE: set setting %@ to 0 for bad day log collection", buf, 0xCu);
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v11);
    }

    v23.receiver = self;
    v23.super_class = &OBJC_METACLASS___PDSEHangTracerBadDay;
    objc_msgSendSuper2(&v23, "writeEnablementSettings");
  }
}

+ (double)timeoutDurationSec
{
  v2 = +[HTPrefs sharedPrefs];
  badDayEnablementDurationDays = [v2 badDayEnablementDurationDays];

  return badDayEnablementDurationDays * 86400.0 + 43200.0;
}

@end