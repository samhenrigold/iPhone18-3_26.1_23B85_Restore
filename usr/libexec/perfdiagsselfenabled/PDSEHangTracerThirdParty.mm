@interface PDSEHangTracerThirdParty
+ (BOOL)wantsEnablement;
+ (void)writeEnablementSettings;
@end

@implementation PDSEHangTracerThirdParty

+ (BOOL)wantsEnablement
{
  v3 = +[MXSourceUtilities anyClientsAvailable];
  v4 = DiagnosticLogSubmissionEnabled();
  if (v4)
  {
    v4 = AppAnalyticsEnabled();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10000B598(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C544(v3, v5, v6);
  }

  v8 = sub_10000B598(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v9)
    {
      v10 = +[HTPrefs sharedPrefs];
      v18 = 67109120;
      pdseHTThirdPartyPeriodDays = [v10 pdseHTThirdPartyPeriodDays];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDSE: PDSEHTThirdParty: log upload enabled on device, will use pdseHTThirdPartyPeriod=%i to determine wantsEnablement", &v18, 8u);
    }

    v8 = +[HTPrefs sharedPrefs];
    pdseHTThirdPartyPeriodDays2 = [v8 pdseHTThirdPartyPeriodDays];
LABEL_14:
    v13 = pdseHTThirdPartyPeriodDays2;
    prefixForDefaults = [self prefixForDefaults];
    v15 = sub_10000BE10(prefixForDefaults);
    v16 = sub_10000BB68(v13, 2, v15);

    goto LABEL_18;
  }

  if (v3)
  {
    if (v9)
    {
      v12 = +[HTPrefs sharedPrefs];
      v18 = 67109120;
      pdseHTThirdPartyPeriodDays = [v12 pdseHTThirdPartyNoLogUploadPeriodDays];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDSE: PDSEHTThirdParty: log upload disabled on device and MetricKit clients enabled, will use pdseHTThirdPartyNoLogUploadPeriodDays=%i to determine wantsEnablement", &v18, 8u);
    }

    v8 = +[HTPrefs sharedPrefs];
    pdseHTThirdPartyPeriodDays2 = [v8 pdseHTThirdPartyNoLogUploadPeriodDays];
    goto LABEL_14;
  }

  if (v9)
  {
    v18 = 67109376;
    pdseHTThirdPartyPeriodDays = 0;
    v20 = 1024;
    v21 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDSE: PDSEHTThirdParty: not enabling HT 3rd Party mode due to (enableForMetricKit=%{BOOL}d enableForLogUpload=%{BOOL}d", &v18, 0xEu);
  }

  v16 = 0;
LABEL_18:

  return v16;
}

+ (void)writeEnablementSettings
{
  prefixForDefaults = [self prefixForDefaults];
  v4 = sub_100000F10(@"HangTracerEnabled", prefixForDefaults);
  CFPreferencesSetValue(v4, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v6 = sub_10000B598(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C5D4();
  }

  prefixForDefaults2 = [self prefixForDefaults];
  v8 = sub_100000F10(@"HangTracerReportPeriod", prefixForDefaults2);
  CFPreferencesSetValue(v8, [NSNumber numberWithDouble:3600.0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v10 = sub_10000B598(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C670();
  }

  prefixForDefaults3 = [self prefixForDefaults];
  v12 = sub_100000F10(@"HangTracerEnableTailspin", prefixForDefaults3);
  CFPreferencesSetValue(v12, kCFBooleanTrue, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v14 = sub_10000B598(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C5D4();
  }

  prefixForDefaults4 = [self prefixForDefaults];
  v16 = sub_100000F10(@"HangTracerFenceTrackingEnabled", prefixForDefaults4);
  CFPreferencesSetValue(v16, kCFBooleanFalse, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v18 = sub_10000B598(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C70C();
  }

  prefixForDefaults5 = [self prefixForDefaults];
  v20 = sub_100000F10(@"HangTracerPercentFullSpinReports", prefixForDefaults5);
  CFPreferencesSetValue(v20, [NSNumber numberWithDouble:0.0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v22 = sub_10000B598(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C7A8();
  }

  prefixForDefaults6 = [self prefixForDefaults];
  v24 = sub_100000F10(@"HangTracerDailyLogLimit", prefixForDefaults6);
  CFPreferencesSetValue(v24, [NSNumber numberWithInt:0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v26 = sub_10000B598(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C7A8();
  }

  prefixForDefaults7 = [self prefixForDefaults];
  v28 = sub_100000F10(@"HangTracerDailyLongLogLimit", prefixForDefaults7);
  CFPreferencesSetValue(v28, [NSNumber numberWithInt:0], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

  v30 = sub_10000B598(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C7A8();
  }

  CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
}

@end