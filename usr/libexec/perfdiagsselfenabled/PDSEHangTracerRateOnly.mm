@interface PDSEHangTracerRateOnly
+ (BOOL)wantsEnablement;
+ (void)writeEnablementSettings;
@end

@implementation PDSEHangTracerRateOnly

+ (BOOL)wantsEnablement
{
  v3 = +[HTPrefs sharedPrefs];
  pdseHTRateOnlyPeriodDays = [v3 pdseHTRateOnlyPeriodDays];
  prefixForDefaults = [self prefixForDefaults];
  v6 = sub_10000BE10(prefixForDefaults);
  LOBYTE(pdseHTRateOnlyPeriodDays) = sub_10000BB68(pdseHTRateOnlyPeriodDays, 2, v6);

  return pdseHTRateOnlyPeriodDays;
}

+ (void)writeEnablementSettings
{
  prefixForDefaults = [self prefixForDefaults];
  v4 = sub_100000F10(@"HangTracerEnabled", prefixForDefaults);
  CFPreferencesSetValue(v4, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v6 = sub_10000B598(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C944(self);
  }

  prefixForDefaults2 = [self prefixForDefaults];
  v8 = sub_100000F10(@"HangTracerReportPeriod", prefixForDefaults2);
  CFPreferencesSetValue(v8, [NSNumber numberWithDouble:3600.0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v10 = sub_10000B598(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C9E8(self);
  }

  prefixForDefaults3 = [self prefixForDefaults];
  v12 = sub_100000F10(@"HangTracerEnableTailspin", prefixForDefaults3);
  CFPreferencesSetValue(v12, kCFBooleanFalse, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v14 = sub_10000B598(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CA8C(self);
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
}

@end