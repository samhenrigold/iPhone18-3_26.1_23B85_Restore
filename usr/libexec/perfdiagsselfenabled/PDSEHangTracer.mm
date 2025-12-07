@interface PDSEHangTracer
+ (BOOL)didDisableDiagnostics;
+ (BOOL)wantsEnablement;
+ (BOOL)willEnableDiagnostics;
+ (tailspin_config)desiredTailspinConfig;
+ (void)writeEnablementSettings;
@end

@implementation PDSEHangTracer

+ (BOOL)wantsEnablement
{
  v3 = +[HTPrefs sharedPrefs];
  pdseHTPeriodDays = [v3 pdseHTPeriodDays];
  prefixForDefaults = [self prefixForDefaults];
  v6 = sub_10000BE10(prefixForDefaults);
  LOBYTE(pdseHTPeriodDays) = sub_10000BB68(pdseHTPeriodDays, 2, v6);

  return pdseHTPeriodDays;
}

+ (BOOL)willEnableDiagnostics
{
  v3 = sub_10000B598(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    prefixForDefaults = [self prefixForDefaults];
    v8 = 138412290;
    v9 = prefixForDefaults;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDSE: Enable HangTracer: set necessary settings with HT's Self-Enablement prefix = %@", &v8, 0xCu);
  }

  v6 = sub_10000A720(v5);
  if (os_signpost_enabled(v6))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HTSelfEnable.DisableToEnable", " enableTelemetry=YES ", &v8, 2u);
  }

  [self writeEnablementSettings];

  return 1;
}

+ (void)writeEnablementSettings
{
  prefixForDefaults = [self prefixForDefaults];
  v4 = sub_100000F10(@"HangTracerEnabled", prefixForDefaults);
  CFPreferencesSetValue(v4, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v6 = sub_10000B598(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D01C();
  }

  prefixForDefaults2 = [self prefixForDefaults];
  v8 = sub_100000F10(@"HangTracerReportPeriod", prefixForDefaults2);
  CFPreferencesSetValue(v8, [NSNumber numberWithDouble:3600.0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v10 = sub_10000B598(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D0B8();
  }

  prefixForDefaults3 = [self prefixForDefaults];
  v12 = sub_100000F10(@"HangTracerDailyThirdPartyLogLimit", prefixForDefaults3);
  CFPreferencesSetValue(v12, [NSNumber numberWithInt:0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v14 = sub_10000B598(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D154();
  }

  v15 = +[HTPrefs sharedPrefs];
  pdseAllowEnableTailspin = [v15 pdseAllowEnableTailspin];

  if (pdseAllowEnableTailspin)
  {
    prefixForDefaults4 = [self prefixForDefaults];
    v18 = sub_100000F10(@"HangTracerEnableTailspin", prefixForDefaults4);
    CFPreferencesSetValue(v18, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

    v20 = sub_10000B598(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10000D01C();
    }
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
}

+ (BOOL)didDisableDiagnostics
{
  v3 = sub_10000B598(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    prefixForDefaults = [self prefixForDefaults];
    *buf = 138412290;
    v29 = prefixForDefaults;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HTSE: Disable HTSE: disable tailspin and delete all settings with Self-Enablement prefix = %@", buf, 0xCu);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  prefixForDefaults2 = [self prefixForDefaults];
  v6 = sub_100000F48(@"com.apple.da", @"mobile", prefixForDefaults2);

  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        CFPreferencesSetValue(v11, 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
        v13 = sub_10000B598(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v29 = v11;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "HTSE: Disable HTSE: delete setting %@", buf, 0xCu);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  prefixForDefaults3 = [selfCopy prefixForDefaults];
  v15 = sub_100000F48(@"com.apple.da", @"mobile", prefixForDefaults3);
  v16 = [v15 count];

  v18 = sub_10000B598(v17);
  v19 = v18;
  if (v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000D1F0(selfCopy, v19);
    }
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "HTSE: Disable HTSE: All prefix'ed settings were successfully deleted", buf, 2u);
    }

    v19 = sub_10000A720(v20);
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HTSelfEnable.EnableToDisable", " enableTelemetry=YES ", buf, 2u);
    }
  }

  return v16 == 0;
}

+ (tailspin_config)desiredTailspinConfig
{
  v2 = tailspin_config_create_with_default_config();
  if (v2)
  {
    tailspin_enabled_set();
    tailspin_buffer_size_set();
    tailspin_oncore_sampling_period_set();
    tailspin_full_sampling_period_set();
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