@interface PDSEAppLaunch
+ (BOOL)didDisableDiagnostics;
+ (BOOL)wantsEnablement;
+ (BOOL)willEnableDiagnostics;
+ (tailspin_config)desiredTailspinConfig;
@end

@implementation PDSEAppLaunch

+ (BOOL)wantsEnablement
{
  v2 = +[HTPrefs sharedPrefs];
  pdseAppLaunchPeriodDays = [v2 pdseAppLaunchPeriodDays];
  v4 = sub_10000BE10(@"PDSEAppLaunch");
  LOBYTE(pdseAppLaunchPeriodDays) = sub_10000BB68(pdseAppLaunchPeriodDays, 1, v4);

  return pdseAppLaunchPeriodDays;
}

+ (BOOL)willEnableDiagnostics
{
  v2 = sub_10000B598(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = @"PDSEAppLaunch";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSE: Enable App Launch Monitoring: enable tailspin and set necessary settings with App launch-Enablement prefix = %@", &v10, 0xCu);
  }

  v3 = sub_100000F10(@"HangTracerEnableAppLaunchMonitoring", @"PDSEAppLaunch");
  CFPreferencesSetValue(v3, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v5 = sub_10000B598(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C844(@"HangTracerEnableAppLaunchMonitoring", @"PDSEAppLaunch");
  }

  v6 = sub_100000F10(@"HangTracerEnableTailspin", @"PDSEAppLaunch");
  CFPreferencesSetValue(v6, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v8 = sub_10000B598(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C844(@"HangTracerEnableTailspin", @"PDSEAppLaunch");
  }

  return 1;
}

+ (BOOL)didDisableDiagnostics
{
  v2 = sub_10000B598(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = @"PDSEAppLaunch";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSE: Disable App Launch Monitoring: disable tailspin and delete all settings with App Launch-Enablement prefix = %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = sub_100000F48(@"com.apple.da", @"mobile", @"PDSEAppLaunch");
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
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "PDSE: Disable App Launch Monitoring: delete setting %@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v11 = sub_100000F48(@"com.apple.da", @"mobile", @"PDSEAppLaunch");
  v12 = [v11 count];

  v14 = sub_10000B598(v13);
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000C8CC(@"PDSEAppLaunch", v15);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PDSE: Disable App Launch Monitoring: All prefix'ed settings were successfully deleted", buf, 2u);
  }

  return v12 == 0;
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