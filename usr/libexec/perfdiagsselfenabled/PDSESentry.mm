@interface PDSESentry
+ (BOOL)didDisableDiagnostics;
+ (BOOL)wantsEnablement;
+ (BOOL)willEnableDiagnostics;
+ (tailspin_config)desiredTailspinConfig;
@end

@implementation PDSESentry

+ (BOOL)wantsEnablement
{
  v2 = +[HTPrefs sharedPrefs];
  pdseSentryPeriodDays = [v2 pdseSentryPeriodDays];
  v4 = sub_10000BE10(@"PDSESentry");
  LOBYTE(pdseSentryPeriodDays) = sub_10000BB68(pdseSentryPeriodDays, 1, v4);

  return pdseSentryPeriodDays;
}

+ (BOOL)willEnableDiagnostics
{
  v2 = sub_10000B598(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = @"PDSESentry";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HTSTYE: Enable HTSTYE: enable tailspin and set necessary settings with Sentry-Enablement prefix = %@", &v7, 0xCu);
  }

  v3 = sub_100000F10(@"HangTracerEnableSignpostMonitoring", @"PDSESentry");
  CFPreferencesSetValue(v3, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v5 = sub_10000B598(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D284(@"HangTracerEnableSignpostMonitoring", @"PDSESentry", v5);
  }

  return 1;
}

+ (BOOL)didDisableDiagnostics
{
  v2 = sub_10000B598(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = @"PDSESentry";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HTSTYE: Disable HTSTYE: disable tailspin and delete all settings with Sentry-Enablement prefix = %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = sub_100000F48(@"com.apple.da", @"mobile", @"PDSESentry");
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        CFPreferencesSetValue(v8, 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
        v10 = sub_10000B598(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v8;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "HTSTYE: Disable HTSTYE: delete setting %@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v11 = sub_100000F48(@"com.apple.da", @"mobile", @"PDSESentry");
  v12 = [v11 count];

  v14 = sub_10000B598(v13);
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000D31C(@"PDSESentry", v15);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "HTSTYE: Disable HTSTYE: All prefix'ed settings were successfully deleted", buf, 2u);
  }

  return 1;
}

+ (tailspin_config)desiredTailspinConfig
{
  v2 = tailspin_config_create_with_default_config();
  if (v2)
  {
    tailspin_enabled_set();
  }

  else
  {
    v3 = sub_10000B598(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000C078(v3);
    }
  }

  return v2;
}

@end