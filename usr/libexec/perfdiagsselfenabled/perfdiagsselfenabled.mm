id sub_100000F48(const __CFString *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSString stringWithFormat:@"%@.", a3];
  v7 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = CFPreferencesCopyKeyList(a1, v5, kCFPreferencesAnyHost);
  v9 = [(__CFArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 hasPrefix:v6])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [(__CFArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

void sub_10000139C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void start(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000B598(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "perfdiagsselfenabled: launched", buf, 2u);
  }

  xpc_activity_register("com.apple.perfdiagsselfenabled", XPC_ACTIVITY_CHECK_IN, &stru_1000183E0);
  v4 = sub_10000B598(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "perfdiagsselfenabled: setup prefs", v6, 2u);
  }

  v5 = +[HTPrefs sharedPrefs];
  [v5 setupPrefsWithQueue:&_dispatch_main_q];

  dispatch_main();
}

void sub_1000014A0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (!xpc_activity_get_state(v2))
  {
    v12 = sub_10000B598(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C12C(v12, v20, v21, v22, v23, v24, v25, v26);
    }

    goto LABEL_9;
  }

  if (xpc_activity_get_state(v2) == 2)
  {
    v3 = sub_10000B598(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C0BC(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    dispatch_sync(&_dispatch_main_q, &stru_100018400);
    v12 = sub_10000B598(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C0F4(v12, v13, v14, v15, v16, v17, v18, v19);
    }

LABEL_9:
  }
}

void sub_100001568(id a1)
{
  v1 = sub_10000B598(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "perfdiagsselfenabled: begin evaluateSelfEnablement", buf, 2u);
  }

  v2 = sub_10000B598(+[PerfDiagsSelfEnablementController evaluateSelfEnablement]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "perfdiagsselfenabled: finished evaluateSelfEnablement", v6, 2u);
  }

  v4 = sub_10000B598(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "perfdiagsselfenabled: exit cleanly", v5, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100001668(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

id sub_100001D1C(uint64_t a1)
{
  v9[0] = @"enable";
  v2 = [NSNumber numberWithBool:*(a1 + 56)];
  v10[0] = v2;
  v9[1] = @"last_enablement";
  v3 = [NSNumber numberWithDouble:*(a1 + 32)];
  v10[1] = v3;
  v9[2] = @"log_count_threshold";
  v4 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  v10[2] = v4;
  v9[3] = @"duration_threshold_ms";
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v10[3] = v5;
  v9[4] = @"minimum_break_days";
  v6 = [NSNumber numberWithUnsignedInt:*(a1 + 52)];
  v10[4] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

uint64_t sub_100001E80(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 durationSeconds];
  if (v4 >= *(a1 + 40))
  {
    v5 = [v3 beginEvent];
    v6 = [v5 attributes];
    v7 = [v6 objectForKeyedSubscript:@"BundleIdOverride"];

    if (v7 && [v7 hasPrefix:@"com.apple."])
    {
      [*(a1 + 32) addObject:v7];
    }
  }

  return 1;
}

void sub_100002780(id a1)
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v3 count:9];
  v2 = qword_10001E760;
  qword_10001E760 = v1;
}

id sub_1000037F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"client";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100003878(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = @"client";
  v4[1] = @"transitionType";
  v5[0] = v1;
  v5[1] = @"DisableToDisable";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id sub_100003910(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = @"client";
  v5[1] = @"transitionType";
  v6[0] = v1;
  v6[1] = @"DisableToEnable";
  v5[2] = @"success";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v6[2] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

id sub_1000039E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = @"client";
  v5[1] = @"transitionType";
  v6[0] = v1;
  v6[1] = @"EnableToDisable";
  v5[2] = @"success";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v6[2] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

id sub_100003AC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = @"client";
  v4[1] = @"transitionType";
  v5[0] = v1;
  v5[1] = @"EnableToEnable";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id sub_100003B58(uint64_t a1)
{
  v8[0] = *(a1 + 32);
  v7[0] = @"client";
  v7[1] = @"enabled";
  v1 = [NSNumber numberWithBool:*(a1 + 40)];
  v8[1] = v1;
  v7[2] = @"hasMetricKitClients";
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[MXSourceUtilities anyClientsAvailable]);
  v8[2] = v2;
  v7[3] = @"thirdPartyLogUploadEnabled";
  if (DiagnosticLogSubmissionEnabled())
  {
    v3 = AppAnalyticsEnabled();
  }

  else
  {
    v3 = 0;
  }

  v4 = [NSNumber numberWithInt:v3];
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

BOOL sub_100004280(void *a1, void *a2, float *a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = objc_opt_new();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000044E0;
  v21[3] = &unk_1000188F0;
  v11 = v7;
  v22 = v11;
  [v10 setIntervalCompletionProcessingBlock:v21];
  v12 = objc_opt_new();
  [v12 addSubsystem:@"com.apple.hangtracer" category:@"always_on_hang"];
  [v10 setSubsystemCategoryFilter:v12];
  memset(&v19, 0, sizeof(v19));
  memset(&v20, 0, sizeof(v20));
  getrusage(0, &v20);
  v18 = 0;
  [v10 processLogArchiveWithPath:0 startDate:v9 endDate:v8 errorOut:&v18];

  v13 = v18;
  v14 = getrusage(0, &v19);
  if (a3)
  {
    v15 = ((v19.ru_stime.tv_usec / 1000000.0) + v19.ru_stime.tv_sec) - ((v20.ru_stime.tv_usec / 1000000.0) + v20.ru_stime.tv_sec) + ((v19.ru_utime.tv_usec / 1000000.0) + v19.ru_utime.tv_sec) - ((v20.ru_utime.tv_usec / 1000000.0) + v20.ru_utime.tv_sec);
    *a3 = v15;
  }

  if (v13)
  {
    v16 = sub_10000B598(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000C498(v13, v16);
    }
  }

  return v13 == 0;
}

void sub_100005344(id a1)
{
  v3[0] = @"HTProfile";
  v3[1] = @"HTEPL";
  v3[2] = @"HTThirdPartyDevSupport";
  v3[3] = @"PLTasking";
  v3[4] = &stru_100018A40;
  v3[5] = @"PDSEHangTracer";
  v3[6] = @"PDSEHTBadDay";
  v3[7] = @"PDSEHTThirdParty";
  v3[8] = @"PDSEWorkflowResponsiveness";
  v3[9] = @"PDSEHTRateOnly";
  v3[10] = @"PDSESentry";
  v3[11] = @"PDSEAppLaunch";
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_10001E778;
  qword_10001E778 = v1;
}

void sub_10000709C(id a1)
{
  qword_10001E780 = objc_alloc_init(HTPrefs);

  _objc_release_x1();
}

void sub_1000094E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  objc_destroyWeak((v32 + 80));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 144), 8);
  objc_destroyWeak((v33 - 104));
  _Unwind_Resume(a1);
}

void sub_10000954C(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == a2)
  {
    v3 = sub_10000B598(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Tasking Changed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, buf, 2u);
    }
  }

  else if (*(*(*(a1 + 48) + 8) + 24) == a2)
  {
    v3 = sub_10000B598(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Telemetry Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 56) + 8) + 24) == a2)
  {
    v3 = sub_10000B598(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Profile List Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 64) + 8) + 24) == a2)
  {
    v3 = sub_10000B598(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: EPL State Changed";
      goto LABEL_16;
    }
  }

  else
  {
    if (*(*(*(a1 + 72) + 8) + 24) != a2)
    {
      goto LABEL_18;
    }

    v3 = sub_10000B598(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: HT Self-Enablement State Changed Triggered Refresh";
      goto LABEL_16;
    }
  }

LABEL_18:
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = [WeakRetained hangtracerDaemonEnabled];

  [*(a1 + 32) refreshHTPrefs];
  v7 = objc_loadWeakRetained((a1 + 80));
  v8 = [v7 hangtracerDaemonEnabled];

  if (v6 != v8)
  {
    v10 = sub_10000B598(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v11 = @"ON";
      }

      else
      {
        v11 = @"OFF";
      }

      v12 = objc_loadWeakRetained((a1 + 80));
      if ([v12 hangtracerDaemonEnabled])
      {
        v13 = @"ON";
      }

      else
      {
        v13 = @"OFF";
      }

      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "HTPrefs: HangTracer Enabled State Changed: %@ -> %@", buf, 0x16u);
    }

    v14 = objc_loadWeakRetained((a1 + 80));
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 hangtracerDaemonEnabled]);
    v20 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    v17 = +[NSNotificationCenter defaultCenter];
    v18 = objc_loadWeakRetained((a1 + 80));
    [v17 postNotificationName:@"com.apple.hangtracer.daemonstate" object:v18 userInfo:v16];
  }
}

void sub_10000989C(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 32) + 8) + 24) == a2)
  {
    v6 = v2;
    v7 = v3;
    v4 = sub_10000B598(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "HTPrefs: Test Reset Log Limits", v5, 2u);
    }
  }
}

uint64_t sub_10000A3AC(uint64_t a1)
{
  v2 = sub_10000B598(a1);
  v3 = v2;
  if (a1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ApplyTailspinConfig: change tailspin config", v5, 2u);
    }

    return tailspin_config_apply_sync();
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10000CF6C();
    }

    return 0;
  }
}

uint64_t sub_10000A448(uint64_t a1)
{
  v2 = sub_100000F48(@"com.apple.da", @"mobile", @"HTEPL");
  v3 = [v2 count];

  v4 = sub_100000F48(@"com.apple.da", @"mobile", @"HTThirdPartyDevSupport");
  v5 = [v4 count];

  v7 = sub_10000B598(v6);
  v8 = v7;
  if (v3 | v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000CFD4();
    }

    if (v3)
    {
      v10 = sub_10000B598(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "ConfigureTailspinForSelfEnableConfig: EPL is ACTIVE, do not attempt to configure tailspin", buf, 2u);
      }
    }

    if (!v5)
    {
      return 0;
    }

    v11 = sub_10000B598(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ConfigureTailspinForSelfEnableConfig: ThirdPartyDevEnablement is ACTIVE, do not attempt to configure tailspin", v14, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "ConfigureTailspinForSelfEnableConfig: Other HangTracer enablement modes are NOT active, attempt to configure tailspin", v16, 2u);
    }

    v12 = sub_10000A3AC(a1);
    if (v12)
    {
      return 1;
    }

    v11 = sub_10000B598(v12);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000CFA0();
    }
  }

  return 0;
}

void sub_10000A628()
{
  if (tailspin_config_create_with_current_state())
  {
    v0 = tailspin_config_copy_description();
    v1 = sub_10000B598(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 138543362;
      v3 = v0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Current tailspin config: %{public}@", &v2, 0xCu);
    }

    tailspin_config_free();
  }
}

void sub_10000A6F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id sub_10000A720(uint64_t a1)
{
  if (qword_10001E798 != -1)
  {
    sub_10000D008();
  }

  v2 = qword_10001E790;

  return v2;
}

void sub_10000A764(id a1)
{
  qword_10001E790 = os_log_create("com.apple.hangtracer", "hangtracer_enablement");

  _objc_release_x1();
}

uint64_t sub_10000AFB4(void *a1)
{
  v1 = a1;
  v2 = +[HTPrefs sharedPrefs];
  v3 = [v2 enableLoggingForWidgetRenderer];

  if ((v3 & 1) != 0 || ([v1 containsString:@"WidgetRenderer-Default"] & 1) == 0)
  {
    v5 = +[HTPrefs sharedPrefs];
    v6 = [v5 enableLoggingForPoster];

    if (v6 & 1) != 0 || ([v1 containsString:@"PosterBoard"])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v7 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:v1 error:0];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 extensionPointRecord];
        v4 = v9;
        if (v9)
        {
          v10 = [v9 identifier];
          v11 = [v10 isEqualToString:@"com.apple.posterkit.provider"];

          LODWORD(v4) = (v11 << 31) >> 31;
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

id sub_10000B598(uint64_t a1)
{
  if (qword_10001E7A8 != -1)
  {
    sub_10000D394();
  }

  v2 = qword_10001E7A0;

  return v2;
}

void sub_10000B5DC(id a1)
{
  qword_10001E7A0 = os_log_create("com.apple.hangtracer", "");

  _objc_release_x1();
}

double sub_10000BAE0(uint64_t a1, uint64_t a2)
{
  if (qword_10001E7B8 != -1)
  {
    sub_10000D4B8();
  }

  return *&qword_10001E7B0;
}

void sub_10000BB18(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  *&qword_10001E7B0 = ((info.numer * 0.000001) / info.denom);
}

BOOL sub_10000BB68(uint64_t a1, int a2, int a3)
{
  v5 = a1;
  v6 = sub_10000B598(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    LODWORD(v26) = v5;
    WORD2(v26) = 1024;
    *(&v26 + 6) = a2;
    WORD5(v26) = 1024;
    HIDWORD(v26) = a3;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "PDSE: determineTodayEnablement: repeatPeriod = %i, enableDurationLengthInDays = %i, CRKeyOffset = %i", buf, 0x14u);
  }

  v7 = v5 / a2;
  v8 = MGCopyAnswer();
  v9 = [v8 substringWithRange:{a3, 8}];
  v24 = 0;
  v10 = [NSScanner scannerWithString:v9];
  [v10 scanHexInt:&v24];

  v11 = v24 % v7;
  v13 = sub_10000B598(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    LODWORD(v26) = v11;
    WORD2(v26) = 2112;
    *(&v26 + 6) = v8;
    HIWORD(v26) = 1024;
    v27 = v24;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "PDSE: determineTodayEnablement: targetEnableDurationNum based off crKey = %i (crKey string = %@ numerical = %u)", buf, 0x18u);
  }

  v14 = +[NSDate date];
  [v14 timeIntervalSinceReferenceDate];
  v16 = (v15 / (a2 * 86400.0));

  v17 = v16 % v7;
  v19 = sub_10000B598(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D4CC(v16 % v7, v16, v19);
  }

  v21 = sub_10000B598(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = @"Disable";
    *buf = 138412802;
    if (v11 == v17)
    {
      v22 = @"Enable";
    }

    *&v26 = v22;
    WORD4(v26) = 1024;
    *(&v26 + 10) = v11;
    HIWORD(v26) = 1024;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PDSE: determineTodayEnablement: Should %@ Today, since TargetEnableDurationNum = %i and TodayEnableDurationNum = %i", buf, 0x18u);
  }

  return v11 == v17;
}

uint64_t sub_10000BE10(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PDSEHangTracer"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"PDSESentry"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"PDSECATailspin"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"PDSEHTRateOnly"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"PDSEHTThirdParty"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"PDSEAppLaunch"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"PDSEWorkflowResponsiveness"])
  {
    v2 = 6;
  }

  else
  {
    v3 = [v1 isEqualToString:@"PDSEWBClientHang"];
    if (v3)
    {
      v2 = 7;
    }

    else
    {
      v4 = sub_10000B598(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10000D554(v1, v4);
      }

      v2 = 10;
    }
  }

  return v2;
}

void sub_10000BF68(uint64_t a1, uint64_t a2)
{
  v2 = sub_100000F10(a1, a2);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  sub_10000139C(&_mh_execute_header, v3, v4, "PDSE: Enable CA Tailspin collection: set setting %@ to TRUE", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_10000BFF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100000F10(a1, a2);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  sub_10000139C(&_mh_execute_header, v3, v4, "PDSE: Enable CA Tailspin collection: Delete setting %@", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_10000C1A8(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 prefixForDefaults];
  v6 = sub_100000F10(a2, v5);
  v7 = 138412290;
  v8 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "PDSE: Enable HangTracer: set setting %@ to TRUE", &v7, 0xCu);
}

void sub_10000C264(uint64_t a1, uint64_t a2)
{
  v2 = sub_100000F10(a1, a2);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  sub_10000139C(&_mh_execute_header, v3, v4, "PDSE: Enable WB client hang collection: set setting %@ to TRUE", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_10000C2EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_100000F10(a1, a2);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  sub_10000139C(&_mh_execute_header, v3, v4, "PDSE: Enable WB client hang collection: Delete setting %@", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_10000C388(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "PDSE: evaluateSelfEnablement: will NOT enable tailspin due to PDSE Enable Tailspin is FALSE", buf, 2u);
}

void sub_10000C3C8(uint64_t a1, NSObject *a2, double a3)
{
  v6 = +[NSDate date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = 138412802;
  v9 = a1;
  v10 = 2048;
  v11 = a3;
  v12 = 2048;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PDSE: Timeout for %@ has EXPIRED! (timeout = %f, current time = %f)", &v8, 0x20u);
}

void sub_10000C498(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 136315394;
  v5 = "enumerateHangIntervalsInTimeRange";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s completed with error: %@\n", &v4, 0x16u);
}

void sub_10000C544(char a1, char a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "PDSE: PDSEHTThirdParty: determining enabling HT 3rd Party mode with these device settings: (enableForMetricKit=%{BOOL}d enableForLogUpload=%{BOOL}d", v3, 0xEu);
}

void sub_10000C5D4()
{
  sub_100004B30();
  [v1 prefixForDefaults];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100004B20();
  v4 = sub_100000F10(v2, v3);
  sub_100004B3C();
  sub_10000139C(&_mh_execute_header, v5, v6, "PDSE: Enable Third Party HangTracer: set setting %@ to TRUE", v7, v8, v9, v10);
}

void sub_10000C670()
{
  sub_100004B30();
  [v1 prefixForDefaults];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100004B20();
  v4 = sub_100000F10(v2, v3);
  sub_100004B3C();
  sub_10000139C(&_mh_execute_header, v5, v6, "PDSE: Enable Third Party HangTracer: set setting %@ to 3600", v7, v8, v9, v10);
}

void sub_10000C70C()
{
  sub_100004B30();
  [v1 prefixForDefaults];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100004B20();
  v4 = sub_100000F10(v2, v3);
  sub_100004B3C();
  sub_10000139C(&_mh_execute_header, v5, v6, "PDSE: Enable Third Party HangTracer: set setting %@ to FALSE", v7, v8, v9, v10);
}

void sub_10000C7A8()
{
  sub_100004B30();
  [v1 prefixForDefaults];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100004B20();
  v4 = sub_100000F10(v2, v3);
  sub_100004B3C();
  sub_10000139C(&_mh_execute_header, v5, v6, "PDSE: Enable Third Party HangTracer: set setting %@ to 0", v7, v8, v9, v10);
}

void sub_10000C844(uint64_t a1, uint64_t a2)
{
  v2 = sub_100000F10(a1, a2);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  sub_10000139C(&_mh_execute_header, v3, v4, "PDSE: Enable App Launch Monitoring: setting %@ to TRUE", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_10000C8CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PDSE: Disable App Launch Monitoring: some App Launch Enabement prefs with prefix %@ remain", &v2, 0xCu);
}

void sub_10000C944(void *a1)
{
  [a1 prefixForDefaults];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100004B20();
  v4 = sub_100000F10(v2, v3);
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  sub_10000139C(&_mh_execute_header, v5, v6, "PDSE: Enable HangTracer Rate Only: set setting %@ to TRUE", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_10000C9E8(void *a1)
{
  [a1 prefixForDefaults];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100004B20();
  v4 = sub_100000F10(v2, v3);
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  sub_10000139C(&_mh_execute_header, v5, v6, "PDSE: Enable HangTracer Rate Only: set setting %@ to 3600", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_10000CA8C(void *a1)
{
  [a1 prefixForDefaults];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100004B20();
  v4 = sub_100000F10(v2, v3);
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  sub_10000139C(&_mh_execute_header, v5, v6, "PDSE: Enable HangTracer Rate Only: set setting %@ to FALSE", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_10000CC58()
{
  sub_10000A390();
  sub_10000A3A0();
  sub_10000A380();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10000CCFC()
{
  sub_10000A390();
  sub_10000A3A0();
  sub_10000A380();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10000CDA0()
{
  sub_10000A390();
  sub_10000A3A0();
  sub_10000A380();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10000CE44()
{
  sub_10000A390();
  sub_10000A3A0();
  sub_10000A380();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10000D01C()
{
  sub_100004B30();
  [v1 prefixForDefaults];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100004B20();
  v4 = sub_100000F10(v2, v3);
  sub_100004B3C();
  sub_10000139C(&_mh_execute_header, v5, v6, "PDSE: Enable HangTracer: set setting %@ to TRUE", v7, v8, v9, v10);
}

void sub_10000D0B8()
{
  sub_100004B30();
  [v1 prefixForDefaults];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100004B20();
  v4 = sub_100000F10(v2, v3);
  sub_100004B3C();
  sub_10000139C(&_mh_execute_header, v5, v6, "PDSE: Enable HangTracer: set setting %@ to 3600", v7, v8, v9, v10);
}

void sub_10000D154()
{
  sub_100004B30();
  [v1 prefixForDefaults];
  objc_claimAutoreleasedReturnValue();
  v2 = sub_100004B20();
  v4 = sub_100000F10(v2, v3);
  sub_100004B3C();
  sub_10000139C(&_mh_execute_header, v5, v6, "PDSE: Enable HangTracer: set setting %@ to 0", v7, v8, v9, v10);
}

void sub_10000D1F0(void *a1, NSObject *a2)
{
  v3 = [a1 prefixForDefaults];
  sub_100004B3C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "HTSE: Disable HTSE: some HTSE prefs with prefix %@ remain", v4, 0xCu);
}

void sub_10000D284(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = sub_100000F10(a1, a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "HTSTYE: Enable HTSTYE: set setting %@ to TRUE", &v5, 0xCu);
}

void sub_10000D31C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "HTSTYE: Disable HTSTYE: some HTSTYE prefs with prefix %@ remain", &v2, 0xCu);
}

void sub_10000D3A8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = sub_100000F10(a1, a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "HTWRE: Enable HTWRE: set setting %@ to TRUE", &v5, 0xCu);
}

void sub_10000D440(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "HTWRE: Disable HTWRE: some HTWRE prefs with prefix %@ remain", &v2, 0xCu);
}

void sub_10000D4CC(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "PDSE: determineTodayEnablement: Today's EnableDurationNum Within Period = %i (total EnableDurationsSinceRef = %i)", v3, 0xEu);
}

void sub_10000D554(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PDSE: getCRKeyOffsetForPrefix: Unknown prefix %@", &v2, 0xCu);
}