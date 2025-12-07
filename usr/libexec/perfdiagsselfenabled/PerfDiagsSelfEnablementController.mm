@interface PerfDiagsSelfEnablementController
+ (BOOL)getKillSwitchSettingForPrefix:(id)prefix;
+ (BOOL)hasTimeoutExpiredForPrefix:(id)prefix;
+ (BOOL)isAnyModeActive;
+ (double)getTimeoutForPrefix:(id)prefix;
+ (id)clientClasses;
+ (id)timeoutPrefNameForPrefix:(id)prefix;
+ (void)evaluateSelfEnablement;
@end

@implementation PerfDiagsSelfEnablementController

+ (BOOL)isAnyModeActive
{
  v16[0] = @"PDSEHangTracer";
  v16[1] = @"PDSEHTThirdParty";
  v16[2] = @"PDSESentry";
  v16[3] = @"PDSEAppLaunch";
  v16[4] = @"PDSEWorkflowResponsiveness";
  [NSArray arrayWithObjects:v16 count:5];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = sub_100000F48(@"com.apple.da", @"mobile", *(*(&v11 + 1) + 8 * i));
        v9 = [v8 count];

        v5 |= v9 != 0;
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

+ (id)clientClasses
{
  if (qword_10001E768 != -1)
  {
    sub_10000C374();
  }

  v3 = qword_10001E760;

  return v3;
}

+ (void)evaluateSelfEnablement
{
  v80 = tailspin_config_create_with_default_config();
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  clientClasses = [self clientClasses];
  v4 = [clientClasses countByEnumeratingWithState:&v117 objects:v127 count:16];
  selfCopy = self;
  if (!v4)
  {

    LOBYTE(v23) = 0;
LABEL_26:
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    obja = [self clientClasses];
    v88 = [obja countByEnumeratingWithState:&v104 objects:v125 count:16];
    if (!v88)
    {
      goto LABEL_93;
    }

    v24 = 0;
    v86 = *v105;
    while (1)
    {
      for (i = 0; i != v88; i = i + 1)
      {
        if (*v105 != v86)
        {
          objc_enumerationMutation(obja);
        }

        v26 = *(*(&v104 + 1) + 8 * i);
        prefixForDefaults = [v26 prefixForDefaults];
        v28 = [self getKillSwitchSettingForPrefix:prefixForDefaults];
        v29 = DiagnosticLogSubmissionEnabled();
        v30 = v29;
        v31 = sub_10000B598(v29);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v122 = prefixForDefaults;
          v123 = 1024;
          *v124 = v28;
          *&v124[4] = 1024;
          *&v124[6] = v30;
          *&v124[10] = 1024;
          *&v124[12] = v24 & 1;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: kill switch setting = %{BOOL}i, diagCollectionEnable = %{BOOL}i, haveEnabledClientAlready = %{BOOL}i", buf, 0x1Eu);
        }

        v32 = [v26 isEqual:objc_opt_class()];
        if (v32)
        {
          v33 = v28;
        }

        else
        {
          v33 = v28 | ~v30;
        }

        v34 = v33 | v24;
        v35 = sub_10000B598(v32);
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        if (v34)
        {
          if (v36)
          {
            *buf = 138412290;
            v122 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: shouldDisable == TRUE, do not enable today", buf, 0xCu);
          }

          v37 = 0;
        }

        else
        {
          if (v36)
          {
            *buf = 138412290;
            v122 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: calling client's to determine if it wantsEnablement", buf, 0xCu);
          }

          wantsEnablement = [v26 wantsEnablement];
          v37 = wantsEnablement;
          v35 = sub_10000B598(wantsEnablement);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v39 = @"NO";
            if (v37)
            {
              v39 = @"YES";
            }

            v122 = prefixForDefaults;
            v123 = 2112;
            *v124 = v39;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: client's wantsEnablement returned %@", buf, 0x16u);
          }
        }

        v40 = sub_100000F48(@"com.apple.da", @"mobile", prefixForDefaults);
        v41 = [v40 count];

        v43 = sub_10000B598(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v122 = prefixForDefaults;
          v123 = 1024;
          *v124 = v41 != 0;
          *&v124[4] = 2048;
          *&v124[6] = v41;
          *&v124[14] = 2112;
          *&v124[16] = prefixForDefaults;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: client enabled state = %{BOOL}i, found %lu settings with prefix %@", buf, 0x26u);
        }

        self = selfCopy;
        if (!((v41 != 0) | v37 & 1))
        {
          v45 = sub_10000B598(v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v122 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "PDSE: evaluateSelfEnablement %@: Transition from Disable to Disable", buf, 0xCu);
          }

          v99 = _NSConcreteStackBlock;
          v100 = 3221225472;
          v101 = sub_100003878;
          v102 = &unk_1000188A0;
          v103 = prefixForDefaults;
          AnalyticsSendEventLazy();
        }

        if (!v41 && ((v37 ^ 1) & 1) == 0)
        {
          v46 = sub_10000B598(v44);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v122 = prefixForDefaults;
            v123 = 2112;
            *v124 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: Transition from Disable to Enable, calling %@'s willEnableDiagnostics", buf, 0x16u);
          }

          [v26 timeoutDurationSec];
          if (v47 <= 432000.0)
          {
            v48 = v47;
          }

          else
          {
            v48 = 432000.0;
          }

          v49 = +[NSDate date];
          [v49 timeIntervalSinceReferenceDate];
          v51 = v48 + v50;

          CFPreferencesSetValue([selfCopy timeoutPrefNameForPrefix:prefixForDefaults], +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v51), @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
          v53 = sub_10000B598(v52);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = [selfCopy timeoutPrefNameForPrefix:prefixForDefaults];
            *buf = 138413058;
            v122 = prefixForDefaults;
            v123 = 2112;
            *v124 = v54;
            *&v124[8] = 2048;
            *&v124[10] = v51;
            *&v124[18] = 2048;
            *&v124[20] = v48;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: set setting %@ to %f secs_after_ref_date, which is %f seconds in the future", buf, 0x2Au);
          }

          willEnableDiagnostics = [v26 willEnableDiagnostics];
          v23 = willEnableDiagnostics;
          v56 = sub_10000B598(willEnableDiagnostics);
          v57 = v56;
          if (v23)
          {
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v122 = prefixForDefaults;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: Successful Transition from Disable to Enable", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v122 = prefixForDefaults;
            _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "PDSE: evaluateSelfEnablement %@: FAILED Transition from Disable to Enable", buf, 0xCu);
          }

          v63 = v97;
          v97[0] = _NSConcreteStackBlock;
          v97[1] = 3221225472;
          v97[2] = sub_100003910;
          v97[3] = &unk_1000188C8;
          v97[4] = prefixForDefaults;
          v98 = v23;
LABEL_80:
          AnalyticsSendEventLazy();

          goto LABEL_81;
        }

        if (!((v41 == 0) | v37 & 1))
        {
          v58 = sub_10000B598(v44);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v122 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: Transition from Enable to Disable", buf, 0xCu);
          }

          CFPreferencesSetValue([selfCopy timeoutPrefNameForPrefix:prefixForDefaults], 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
          didDisableDiagnostics = [v26 didDisableDiagnostics];
          v60 = didDisableDiagnostics;
          v61 = sub_10000B598(didDisableDiagnostics);
          v62 = v61;
          if (v60)
          {
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v122 = prefixForDefaults;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: Successful Transition from Enable to Disable", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v122 = prefixForDefaults;
            _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "PDSE: evaluateSelfEnablement %@: FAILED Transition from Enable to Disable", buf, 0xCu);
          }

          v94[5] = _NSConcreteStackBlock;
          v94[6] = 3221225472;
          v94[7] = sub_1000039E8;
          v94[8] = &unk_1000188C8;
          v95 = prefixForDefaults;
          v96 = v60;
          AnalyticsSendEventLazy();

          LOBYTE(v23) = 1;
        }

        if (((v41 != 0) & v37) == 1)
        {
          v64 = sub_10000B598(v44);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v122 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "PDSE: evaluateSelfEnablement %@: Transition from Enable to Enable", buf, 0xCu);
          }

          v63 = v94;
          v94[0] = _NSConcreteStackBlock;
          v94[1] = 3221225472;
          v94[2] = sub_100003AC0;
          v94[3] = &unk_1000188A0;
          v94[4] = prefixForDefaults;
          goto LABEL_80;
        }

LABEL_81:
        if (!v37)
        {
          goto LABEL_91;
        }

        v65 = +[HTPrefs sharedPrefs];
        pdseAllowEnableTailspin = [v65 pdseAllowEnableTailspin];

        v68 = sub_10000B598(v67);
        v69 = v68;
        if (pdseAllowEnableTailspin)
        {
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v122 = prefixForDefaults;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement %@: get desired tailspin config", buf, 0xCu);
          }

          desiredTailspinConfig = [v26 desiredTailspinConfig];
          if (desiredTailspinConfig)
          {
            v71 = desiredTailspinConfig;
            tailspin_config_free();
            v24 = 1;
            v80 = v71;
            goto LABEL_91;
          }
        }

        else
        {
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            sub_10000C388(&v92, v93, v69);
          }
        }

        v24 = 1;
LABEL_91:
        v72 = prefixForDefaults;
        AnalyticsSendEventLazy();
      }

      v88 = [obja countByEnumeratingWithState:&v104 objects:v125 count:16];
      if (!v88)
      {
LABEL_93:

        goto LABEL_94;
      }
    }
  }

  hostName = 0;
  v5 = 0;
  v87 = *v118;
  v6 = v4;
  obj = clientClasses;
  do
  {
    v7 = 0;
    v84 = v6;
    do
    {
      if (*v118 != v87)
      {
        objc_enumerationMutation(clientClasses);
      }

      v90 = *(*(&v117 + 1) + 8 * v7);
      prefixForDefaults2 = [v90 prefixForDefaults];
      if ([self hasTimeoutExpiredForPrefix:prefixForDefaults2])
      {
        v85 = v7;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v91 = prefixForDefaults2;
        v9 = sub_100000F48(@"com.apple.da", @"mobile", prefixForDefaults2);
        v10 = [v9 countByEnumeratingWithState:&v113 objects:v126 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v114;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v114 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v113 + 1) + 8 * j);
              CFPreferencesSetValue(v14, 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
              v16 = sub_10000B598(v15);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v122 = v14;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "PDSE: Timeout Force Disable, delete setting %@", buf, 0xCu);
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v113 objects:v126 count:16];
          }

          while (v11);
        }

        self = selfCopy;
        CFPreferencesSetValue([selfCopy timeoutPrefNameForPrefix:v91], 0, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
        v18 = sub_10000B598(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [selfCopy timeoutPrefNameForPrefix:v91];
          *buf = 138412290;
          v122 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PDSE: Timeout Force Disable, delete timeout setting %@", buf, 0xCu);
        }

        CFPreferencesSynchronize(@"com.apple.da", @"mobile", kCFPreferencesAnyHost);
        v108 = _NSConcreteStackBlock;
        v109 = 3221225472;
        v110 = sub_1000037F4;
        v111 = &unk_1000188A0;
        v20 = v91;
        v112 = v20;
        v21 = AnalyticsSendEventLazy();
        v22 = sub_10000B598(v21);
        clientClasses = obj;
        v7 = v85;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v122 = v20;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "PDSE: Timeout Force Disable, call %@'s didDisableDiagnostics method", buf, 0xCu);
        }

        [v90 didDisableDiagnostics];
        hostName = 1;
        v5 = 1;
        v6 = v84;
        prefixForDefaults2 = v91;
      }

      v7 = v7 + 1;
    }

    while (v7 != v6);
    v6 = [clientClasses countByEnumeratingWithState:&v117 objects:v127 count:16];
  }

  while (v6);

  LOBYTE(v23) = v5;
  if ((hostName & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_94:
  sub_10000A628();
  v73 = +[HTPrefs sharedPrefs];
  isInternal = [v73 isInternal];

  v76 = sub_10000B598(v75);
  v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
  if (isInternal)
  {
    if (v77)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement: will NOT configure tailspin for internal install", buf, 2u);
    }
  }

  else
  {
    if (v77)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "PDSE: evaluateSelfEnablement: configure tailspin for desired tailspin config", buf, 2u);
    }

    sub_10000A448(v80);
    sub_10000A628();
  }

  v78 = tailspin_config_free();
  if (v23)
  {
    v79 = sub_10000B598(v78);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "PDSE: Posting notification regarding enablement state change", buf, 2u);
    }

    notify_post(off_10001E758);
  }
}

+ (BOOL)getKillSwitchSettingForPrefix:(id)prefix
{
  prefixCopy = prefix;
  if ([prefixCopy isEqualToString:@"PDSEHangTracer"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseHangTracerKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSEHTBadDay"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseHTBadDayKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSEHTRateOnly"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseHTRateOnlyKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSEHTThirdParty"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseHTThirdPartyKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSESentry"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseSentryKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSEWorkflowResponsiveness"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseWorkflowResponsivenessKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSECATailspin"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseCATailspinKillSwitch];
  }

  else if ([prefixCopy isEqualToString:@"PDSEAppLaunch"])
  {
    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseAppLaunchKillSwitch];
  }

  else
  {
    if (![prefixCopy isEqualToString:@"PDSEWBClientHang"])
    {
      v6 = 1;
      goto LABEL_20;
    }

    v4 = +[HTPrefs sharedPrefs];
    pdseHangTracerKillSwitch = [v4 pdseWBClientHangKillSwitch];
  }

  v6 = pdseHangTracerKillSwitch;

LABEL_20:
  return v6;
}

+ (id)timeoutPrefNameForPrefix:(id)prefix
{
  prefixCopy = prefix;
  if ([prefixCopy isEqualToString:@"PDSEHangTracer"])
  {
    v4 = &off_1000186D0;
LABEL_19:
    v5 = *v4;
    goto LABEL_20;
  }

  if ([prefixCopy isEqualToString:@"PDSEHTBadDay"])
  {
    v4 = &off_1000186D8;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSEHTRateOnly"])
  {
    v4 = &off_1000186E0;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSEHTThirdParty"])
  {
    v4 = &off_1000186E8;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSESentry"])
  {
    v4 = &off_1000186F0;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSEWorkflowResponsiveness"])
  {
    v4 = &off_100018708;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSECATailspin"])
  {
    v4 = &off_1000186F8;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSEAppLaunch"])
  {
    v4 = &off_100018700;
    goto LABEL_19;
  }

  if ([prefixCopy isEqualToString:@"PDSEWBClientHang"])
  {
    v4 = &off_100018710;
    goto LABEL_19;
  }

  v5 = @"PDSEUnknownPrefixTimeout";
LABEL_20:

  return v5;
}

+ (double)getTimeoutForPrefix:(id)prefix
{
  v3 = CFPreferencesCopyValue([self timeoutPrefNameForPrefix:prefix], @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

+ (BOOL)hasTimeoutExpiredForPrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [self getTimeoutForPrefix:prefixCopy];
  v7 = v6;
  v8 = sub_10000B598(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v18 = 138412546;
    v19 = prefixCopy;
    v20 = 2048;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "PDSE: Fetching timeout for %@, it has value = %f", &v18, 0x16u);
  }

  if (v7 == 0.0 || (+[NSDate date](NSDate, "date"), v10 = objc_claimAutoreleasedReturnValue(), [v10 timeIntervalSinceReferenceDate], v12 = v11, v10, v12 < v7))
  {
    v13 = sub_10000B598(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = +[NSDate date];
      [v14 timeIntervalSinceReferenceDate];
      v18 = 138412802;
      v19 = prefixCopy;
      v20 = 2048;
      v21 = v7;
      v22 = 2048;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "PDSE: Timeout for %@ has not expired (timeout = %f, current time = %f)", &v18, 0x20u);
    }

    v16 = 0;
  }

  else
  {
    v13 = sub_10000B598(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000C3C8(prefixCopy, v13, v7);
    }

    v16 = 1;
  }

  return v16;
}

@end