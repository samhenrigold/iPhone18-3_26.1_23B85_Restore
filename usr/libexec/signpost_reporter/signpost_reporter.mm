double sub_100001C70(uint64_t a1, uint64_t a2)
{
  if (qword_100019E70 != -1)
  {
    sub_10000BDF0();
  }

  return *&qword_100019E68;
}

void sub_100001CA8(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  v1 = 1.0;
  if (info.numer != info.denom)
  {
    v1 = info.numer / info.denom;
  }

  qword_100019E68 = *&v1;
}

uint64_t sub_100001CF4(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"macOS"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"iPhoneOS"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"watchOS"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"tvOS"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"bridgeOS"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

const __CFString *sub_100001DA8(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100014718 + a1 - 1);
  }
}

void sub_100001DE0(void *a1)
{
  if (a1)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v1 = [a1 executablePathToStallAggregation];
    v2 = [v1 objectEnumerator];

    v3 = [v2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v3)
    {
      goto LABEL_40;
    }

    v5 = v3;
    v6 = *v33;
    *&v4 = 138412290;
    v31 = v4;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        v9 = [v8 processExecutablePath];

        if (v9)
        {
          v11 = [v8 processExecutablePath];
          v12 = sub_1000038A0(v11);

          v14 = sub_100003BAC(v12, v13);
          if ((v14 & 1) == 0)
          {
            if (!v12)
            {
              goto LABEL_32;
            }

            v16 = sub_100002620(v14);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = v31;
              v40 = v12;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Skipping non-internal bundle ID %@.", buf, 0xCu);
            }

            goto LABEL_30;
          }

          if (!v12)
          {
            goto LABEL_24;
          }

          v15 = [v8 longCommitStats];
          if (v15 || ([v8 longTransactionLifetimeStats], (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "longTransactionLifetimeStats"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "longResponsibleFrameLifetimeStats"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "responsibleGlitchStats"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "glitchStats"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "responsibleFirstFrameGlitchStats"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "firstFrameGlitchStats"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v8, "responsibleNonFirstFrameNonSkipGlitchStats"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
          {

LABEL_20:
            v16 = +[NSMutableDictionary dictionary];
            [v16 setObject:v12 forKeyedSubscript:@"BundleID"];
            v17 = [v8 longCommitStats];
            sub_1000022D8(@"Commit", v17, v16);

            v18 = [v8 longTransactionLifetimeStats];
            sub_1000022D8(@"TransactionLifetime", v18, v16);

            v19 = [v8 longHIDLatencyStats];
            sub_1000022D8(@"HIDLatency", v19, v16);

            v20 = [v8 longResponsibleFrameLifetimeStats];
            sub_1000022D8(@"FrameLifetime", v20, v16);

            v21 = [v8 responsibleGlitchStats];
            sub_1000022D8(@"GlitchLongPole", v21, v16);

            v22 = [v8 glitchStats];
            sub_1000022D8(@"GlitchContributor", v22, v16);

            v23 = [v8 responsibleFirstFrameGlitchStats];
            sub_1000022D8(@"FirstFrameGlitchLongPole", v23, v16);

            v24 = [v8 firstFrameGlitchStats];
            sub_1000022D8(@"FirstFrameGlitchContributor", v24, v16);

            v25 = [v8 responsibleNonFirstFrameNonSkipGlitchStats];
            sub_1000022D8(@"NonFirstFrameNonSkipGlitchLongPole", v25, v16);

            v26 = [v8 responsibleNonFirstFrameNonSkipPerceivedGlitchStats];
            sub_1000022D8(@"NonFirstFrameNonSkipPerceivedGlitchLongPole", v26, v16);

            v28 = sub_100002620(v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              sub_10000BE04(v37, v16);
            }

            j__AnalyticsSendEvent(@"com.apple.performance.ca_stall_stats", v16);
LABEL_30:

            goto LABEL_32;
          }

          v29 = [v8 responsibleNonFirstFrameNonSkipPerceivedGlitchStats];

          if (v29)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v14 = sub_100003BAC(0, v10);
          if (v14)
          {
LABEL_24:
            v16 = sub_100002620(v14);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              sub_10000BE60(v38, v8);
            }

            v12 = 0;
            goto LABEL_30;
          }

          v12 = 0;
        }

LABEL_32:

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v30 = [v2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v5 = v30;
      if (!v30)
      {
        goto LABEL_40;
      }
    }
  }

  v2 = sub_100002620(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000BEBC(v2);
  }

LABEL_40:
}

void sub_1000022D8(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    v6 = a2;
    v7 = a1;
    v12 = [NSString stringWithFormat:@"%@Count", v7];
    v8 = [NSString stringWithFormat:@"%@TotalMs", v7];

    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 intervalCount]);
    [v5 setObject:v9 forKeyedSubscript:v12];

    v10 = [v6 totalIntervalDurationNs];
    v11 = [NSNumber numberWithUnsignedLongLong:v10 / 0xF4240];
    [v5 setObject:v11 forKeyedSubscript:v8];
  }
}

void sub_100002430(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

id sub_100002450(uint64_t a1)
{
  if (a1 == 2)
  {
    if (qword_100019E90 != -1)
    {
      sub_10000BF14();
    }

    v1 = &qword_100019E88;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (qword_100019E80 != -1)
    {
      sub_10000BF00();
    }

    v1 = &qword_100019E78;
LABEL_9:
    v2 = *v1;
    goto LABEL_11;
  }

  v2 = 0;
LABEL_11:

  return v2;
}

void sub_1000024D8(id a1)
{
  v1 = [SRSubsystemCategoryNameFilter alloc];
  if (qword_100019EA0 != -1)
  {
    sub_10000BF28();
  }

  v4 = qword_100019E98;
  v2 = [(SRSubsystemCategoryNameFilter *)v1 initWithDictionaryArray:v4];
  v3 = qword_100019E78;
  qword_100019E78 = v2;
}

void sub_100002564(id a1)
{
  v1 = [SRSubsystemCategoryNameFilter alloc];
  if (qword_100019EB0 != -1)
  {
    sub_10000BF3C();
  }

  v4 = qword_100019EA8;
  v2 = [(SRSubsystemCategoryNameFilter *)v1 initWithDictionaryArray:v4];
  v3 = qword_100019E88;
  qword_100019E88 = v2;
}

void sub_1000025F0(id a1)
{
  v1 = qword_100019E98;
  qword_100019E98 = &off_100016940;
}

void sub_100002608(id a1)
{
  v1 = qword_100019EA8;
  qword_100019EA8 = &off_100016958;
}

id sub_100002620(uint64_t a1)
{
  if (qword_100019EB8 != -1)
  {
    sub_10000BF50();
  }

  v2 = qword_100019EC0;

  return v2;
}

void sub_100002664(id a1)
{
  qword_100019EC0 = os_log_create("com.apple.SignpostSupport", "signpost_reporter");

  _objc_release_x1();
}

void sub_100003234(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

uint64_t sub_10000325C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 == 2)
  {
    v5 = [v3 string1Name];
    if ([v5 isEqualToString:@"<workflowID>"])
    {
      v6 = [v4 subsystem];
      v7 = [v6 isEqualToString:@"com.apple.CoreIDV.telemetry"];

      if (v7)
      {
        v8 = [v4 category];
        v9 = [v8 isEqualToString:@"api"];

        if (v9)
        {
          v10 = [v4 name];
          if (qword_100019EE0 != -1)
          {
            sub_10000C0CC();
          }

          v11 = qword_100019ED8;
LABEL_25:
          v29 = [v11 containsObject:v10];

          goto LABEL_26;
        }

        v30 = [v4 category];
        v31 = [v30 isEqualToString:@"requests"];

        if (v31)
        {
          v10 = [v4 name];
          if (qword_100019EF0 != -1)
          {
            sub_10000C0B8();
          }

          v11 = qword_100019EE8;
          goto LABEL_25;
        }

        v32 = [v4 category];
        v33 = [v32 isEqualToString:@"library"];

        if (v33)
        {
          v10 = [v4 name];
          if (qword_100019F00 != -1)
          {
            sub_10000C0A4();
          }

          v11 = qword_100019EF8;
          goto LABEL_25;
        }
      }
    }

    else
    {
    }
  }

  v12 = sub_100003478(v4);
  if (v12)
  {
    v13 = sub_1000035A8(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C06C(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    v21 = sub_1000036B4(v4);
    if (!v21)
    {
      v29 = 0;
      goto LABEL_26;
    }

    v13 = sub_1000035A8(v21);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C034(v13, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = 1;
LABEL_26:

  return v29;
}

BOOL sub_100003478(void *a1)
{
  v1 = a1;
  if (qword_100019ED0 != -1)
  {
    sub_10000C0E0();
  }

  v2 = [v1 string1Name];
  if ([@"AppVersion" isEqualToString:v2])
  {
    v3 = qword_100019EC8;
    v4 = [v1 name];
    if ([v3 containsObject:v4])
    {
      v5 = off_100019CA0;
      v6 = [v1 category];
      if ([(__CFString *)v5 isEqualToString:v6])
      {
        v7 = off_100019CA8;
        v8 = [v1 subsystem];
        if ([(__CFString *)v7 isEqualToString:v8])
        {
          v9 = [v1 durationMachContinuousTime] != 0;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1000035A8(uint64_t a1)
{
  if (qword_100019F08 != -1)
  {
    sub_10000C0F4();
  }

  v2 = qword_100019F10;

  return v2;
}

id sub_1000035F0(void *a1)
{
  v1 = sub_1000036B4(a1);
  v2 = v1;
  if (v1)
  {
    v3 = sub_1000035A8(v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C108(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return v2;
}

void sub_100003644(id a1)
{
  qword_100019EC8 = [NSSet setWithObjects:off_100019CB0, off_100019CB8, off_100019CC0, off_100019CD8, 0];

  _objc_release_x1();
}

id sub_1000036B4(void *a1)
{
  v1 = a1;
  v2 = off_100019CF0;
  v3 = [v1 name];
  if ([(__CFString *)v2 isEqualToString:v3])
  {
    v4 = off_100019CE8;
    v5 = [v1 category];
    if ([(__CFString *)v4 isEqualToString:v5])
    {
      v6 = off_100019CE0;
      v7 = [v1 subsystem];
      v8 = [(__CFString *)v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100003780(id a1)
{
  qword_100019ED8 = [NSSet setWithArray:&off_100016970];

  _objc_release_x1();
}

void sub_1000037C8(id a1)
{
  qword_100019EE8 = [NSSet setWithArray:&off_100016988];

  _objc_release_x1();
}

void sub_100003810(id a1)
{
  qword_100019EF8 = [NSSet setWithArray:&off_1000169A0];

  _objc_release_x1();
}

void sub_100003858(id a1)
{
  qword_100019F10 = os_log_create("com.apple.SignpostSupport", "TelemetryStringAllowlistingExemption");

  _objc_release_x1();
}

id sub_1000038A0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_100019F20 != -1)
  {
    sub_10000C140();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if (!v1)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = [qword_100019F18 objectForKeyedSubscript:v2];
  v4 = +[NSNull null];

  if (v3 == v4)
  {
    v5 = 0;
  }

  else if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v2 lastPathComponent];
    v7 = [NSString stringWithFormat:@"%@.", v6];

    v8 = [v2 stringByDeletingLastPathComponent];
    if (v8)
    {
      v9 = 0;
      while (([v8 isEqualToString:&stru_100015580] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"/") & 1) == 0 && v9 <= 0x63)
      {
        v10 = [v8 lastPathComponent];
        if ([v10 hasPrefix:v7])
        {
          v8 = v8;

          v13 = [NSBundle bundleWithPath:v8];
          v14 = v13;
          if (!v13)
          {
            goto LABEL_23;
          }

          v15 = [v13 bundleIdentifier];

          if (!v15)
          {
            goto LABEL_23;
          }

          v16 = [v14 bundleIdentifier];
          [qword_100019F18 setObject:v16 forKeyedSubscript:v2];

          v5 = [v14 bundleIdentifier];
          v17 = sub_100002620(v5);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_10000C154(v5, v2, v17);
          }

          if (v5)
          {
            [qword_100019F18 setObject:v5 forKeyedSubscript:v2];
          }

          else
          {
LABEL_23:
            v18 = +[NSNull null];
            [qword_100019F18 setObject:v18 forKeyedSubscript:v2];

            v5 = 0;
          }

          goto LABEL_15;
        }

        ++v9;
        v11 = [v8 stringByDeletingLastPathComponent];

        v8 = v11;
        if (!v11)
        {
          break;
        }
      }
    }

    v12 = +[NSNull null];
    [qword_100019F18 setObject:v12 forKeyedSubscript:v2];

    v5 = 0;
LABEL_15:
  }

LABEL_27:

  return v5;
}

void sub_100003B6C(id a1)
{
  qword_100019F18 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

void *sub_100003BAC(void *result, const char *a2)
{
  if (result)
  {
    return [result hasPrefix:@"com.apple."];
  }

  return result;
}

uint64_t sub_100004094(void *a1)
{
  v1 = a1;
  v2 = [v1 attributes];
  v3 = [v2 objectForKeyedSubscript:@"BundleIdOverride"];

  if (v3)
  {
    v4 = v1;
    v5 = [v4 subsystem];
    v6 = [v5 isEqualToString:@"com.apple.runningboard"];

    if (v6 && ([v4 category], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"sp_telemetry"), v7, v8))
    {
      if (qword_100019F50 != -1)
      {
        sub_10000C2A8();
      }

      v9 = qword_100019F48;
      v10 = [v4 name];
      LOBYTE(v9) = [v9 containsObject:v10];

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v11 = [v4 subsystem];
    v12 = [v11 isEqualToString:@"com.apple.spindump"];

    if (v12)
    {
LABEL_10:
      v3 = 1;
      goto LABEL_29;
    }

    v13 = [v4 subsystem];
    if ([v13 isEqualToString:@"com.apple.SplashBoard"])
    {
      v14 = [v4 category];
      v15 = [v14 isEqualToString:@"Snapshot"];

      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v16 = [v4 subsystem];
    if ([v16 isEqualToString:@"com.apple.SplashBoard"])
    {
      v17 = [v4 category];
      if ([v17 isEqualToString:@"Memory"])
      {
        v18 = [v4 name];
        v19 = [v18 isEqualToString:@"OverMemoryLimit"];

        if (v19)
        {
          goto LABEL_10;
        }

LABEL_21:
        v20 = v4;
        v21 = [v20 name];
        if ([v21 isEqualToString:@"HangInterval"])
        {
          v22 = [v20 subsystem];
          v23 = [v22 isEqualToString:@"com.apple.hangtracer"];

          if (v23)
          {
            v24 = [v20 category];
            v25 = [v24 isEqualToString:@"signpost_hang"];

            if (v25 & 1) != 0 || ([v20 category], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", @"always_on_hang"), v26, (v27))
            {
              v3 = 1;
LABEL_28:

              goto LABEL_29;
            }
          }
        }

        else
        {
        }

        v3 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_21;
  }

LABEL_29:

  return v3;
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_create("signpost_reporter processing queue", 0);
  v2 = qword_100019F28;
  qword_100019F28 = v1;

  v3 = dispatch_queue_create("signpost_reporter CoreAnalytics reporting queue", 0);
  v4 = qword_100019F30;
  qword_100019F30 = v3;

  v5 = dispatch_source_create(&_dispatch_source_type_signal, 2uLL, 0, qword_100019F28);
  v6 = qword_100019F38;
  qword_100019F38 = v5;

  dispatch_source_set_event_handler(qword_100019F38, &stru_1000148A8);
  xpc_activity_register("com.apple.signpost.signpost_reporter_activity", XPC_ACTIVITY_CHECK_IN, &stru_1000148E8);
  dispatch_resume(qword_100019F38);
  dispatch_main();
}

void sub_100004928(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = os_transaction_create();
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    if (xpc_activity_should_defer(v2))
    {
      v7 = xpc_activity_set_state(v2, 3);
      if (v7)
      {
        v6 = sub_100002620(v7);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.f_bsize) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deferred signpost_reporter\n", &buf, 2u);
        }

        goto LABEL_13;
      }
    }

    v88 = v2;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      v9 = sub_100002620(has_internal_diagnostics);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reporting based on os_variant result", &buf, 2u);
      }

      v11 = 1;
    }

    else
    {
      v12 = dispatch_queue_create("signpost_reporter configuration observing queue", 0);
      v13 = dispatch_semaphore_create(0);
      v115 = 0;
      v116 = &v115;
      v117 = 0x2020000000;
      LOBYTE(v118) = 0;
      v14 = objc_alloc_init(AnalyticsConfigurationObserver);
      v15 = [SignpostReporterConfigObserverDelegate alloc];
      *&buf.f_bsize = _NSConcreteStackBlock;
      buf.f_blocks = 3221225472;
      buf.f_bfree = sub_1000077EC;
      buf.f_bavail = &unk_100014A98;
      buf.f_ffree = &v115;
      v16 = v13;
      buf.f_files = v16;
      v17 = [(SignpostReporterConfigObserverDelegate *)v15 initWithCallbackBlock:&buf];
      [v14 setConfigurationObserverDelegate:v17 queue:v12];
      [v14 startObservingConfigurationType:@"com.apple.performance.signpost_reporter_tasking"];
      v18 = dispatch_time(0, 5000000000);
      v19 = dispatch_semaphore_wait(v16, v18);
      if (v19)
      {
        v20 = sub_100002620(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v107 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Not reporting based on not being tasked-on by CoreAnalytics (Timeout waiting for config)", v107, 2u);
        }

        v11 = 0;
      }

      else
      {
        v11 = *(v116 + 24);
      }

      _Block_object_dispose(&v115, 8);
    }

    byte_100019F58 = v11 & 1;
    v21 = sub_100002620(v10);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 138412802;
      if (byte_100019F58)
      {
        v22 = @"Enabled";
      }

      else
      {
        v22 = @"Disabled";
      }

      *&buf.f_iosize = v22;
      WORD2(buf.f_blocks) = 2112;
      *(&buf.f_blocks + 6) = @"Enabled";
      HIWORD(buf.f_bfree) = 2112;
      buf.f_bavail = @"Enabled";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "os_signpost CA Telemetry: %@, aggregation CA telemetry: %@, CAMetalLayer CA telemetry: %@", &buf, 0x20u);
    }

    v23 = sub_10000585C();
    if (v23)
    {
      v24 = sub_100002620(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Bailing due to cookie file", &buf, 2u);
      }

      sub_1000058F4();
      goto LABEL_74;
    }

    v25 = +[NSFileManager defaultManager];
    if (sub_10000585C())
    {

LABEL_74:
      goto LABEL_75;
    }

    v26 = [v25 createFileAtPath:@"/var/run/signpost_reporter_running" contents:0 attributes:0];
    v27 = v26;
    v28 = sub_100002620(v26);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (!v27)
    {
      if (v29)
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Could not create cookie file", &buf, 2u);
      }

      goto LABEL_74;
    }

    if (v29)
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Created cookie file", &buf, 2u);
    }

    v79 = mach_continuous_time();
    val = objc_alloc_init(SignpostSupportObjectExtractor);
    if (byte_100019F58 != 1)
    {
      v31 = 0;
      v32 = 0;
      v75 = 0;
      v78 = 0;
      v83 = 0;
LABEL_51:
      v37 = +[SignpostWorkflowResponsiveness allWorkflows];
      v38 = [[SignpostAggregationAccumulator alloc] initWithIncludeRawIntervals:0];
      v39 = [[SSCAMetalLayerClientSessionAccumulator alloc] initWithIncludeTimelines:0];
      v40 = sub_100002620(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 138412290;
        *&buf.f_iosize = v32;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Boot disk type: %@", &buf, 0xCu);
      }

      v115 = _NSConcreteStackBlock;
      v116 = 3221225472;
      v117 = sub_100005D10;
      v118 = &unk_100014980;
      v77 = v38;
      v119 = v77;
      v41 = v83;
      v120 = v41;
      v42 = v37;
      v121 = v42;
      v43 = v31;
      v123 = v43;
      v44 = v39;
      v122 = v44;
      [val setIntervalCompletionProcessingBlock:&v115];
      *v107 = _NSConcreteStackBlock;
      v108 = 3221225472;
      v109 = sub_100005E88;
      v110 = &unk_1000149A8;
      v45 = v41;
      v111 = v45;
      v46 = v42;
      v112 = v46;
      v82 = v43;
      v114 = v82;
      v47 = v44;
      v113 = v47;
      [val setEmitEventProcessingBlock:v107];
      v103[0] = _NSConcreteStackBlock;
      v103[1] = 3221225472;
      v103[2] = sub_100005FE4;
      v103[3] = &unk_1000149D0;
      v84 = v45;
      v104 = v84;
      v81 = v46;
      v105 = v81;
      v76 = v47;
      v106 = v76;
      [val setDeviceRebootProcessingBlock:v103];

      if (byte_100019F58 == 1)
      {
        v101[0] = _NSConcreteStackBlock;
        v101[1] = 3221225472;
        v101[2] = sub_1000060F8;
        v101[3] = &unk_1000149F8;
        v102 = v82;
        [val setAnimationIntervalCompletionProcessingBlock:v101];
        v98[0] = _NSConcreteStackBlock;
        v98[1] = 3221225472;
        v98[2] = sub_100006120;
        v98[3] = &unk_100014A20;
        v99 = v84;
        v100 = v81;
        [val setBeginEventProcessingBlock:v98];
        [val setBuildSkyLightAnimationCompositeIntervalTimelines:0];
        v48 = [val intervalBuilder];
        [v48 setMaximumAnimationIntervalProcessingDuration:60.0];
      }

      v94 = 0;
      v95 = &v94;
      v96 = 0x2020000000;
      v97 = 0;
      v49 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
      v50 = +[NSDate date];
      v51 = dispatch_queue_create("signpost_reporter defer polling queue", 0);
      v52 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v51);
      v53 = qword_100019F40;
      qword_100019F40 = v52;

      dispatch_source_set_timer(qword_100019F40, 0, 0x9502F900uLL, 0x9502F900uLL);
      objc_initWeak(&buf, val);
      v54 = qword_100019F40;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100006230;
      handler[3] = &unk_100014A48;
      v55 = v88;
      v91 = v55;
      objc_copyWeak(&v93, &buf);
      v92 = &v94;
      dispatch_source_set_event_handler(v54, handler);
      dispatch_resume(qword_100019F40);
      objc_destroyWeak(&v93);

      objc_destroyWeak(&buf);
      v89 = 0;
      LOBYTE(v54) = [val processLogArchiveWithPath:0 startDate:v49 endDate:v50 errorOut:&v89];
      v56 = v89;
      v80 = v56;
      if ((v54 & 1) == 0)
      {
        v57 = sub_100002620(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [v80 localizedDescription];
          buf.f_bsize = 138412290;
          *&buf.f_iosize = v58;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Failed to process signpost data due to error: %@", &buf, 0xCu);
        }
      }

      v59 = mach_continuous_time();
      if (qword_100019F98 != -1)
      {
        sub_10000C43C();
      }

      v60 = *&qword_100019FA0 * (v59 - v79);
      v61 = qword_100019F30;
      *&buf.f_bsize = _NSConcreteStackBlock;
      buf.f_blocks = 3221225472;
      buf.f_bfree = sub_10000633C;
      buf.f_bavail = &unk_100014A70;
      v62 = v77;
      buf.f_files = v62;
      v63 = v76;
      buf.f_ffree = v63;
      v64 = v78;
      buf.f_fsid = v64;
      v85 = v84;
      *&buf.f_owner = v85;
      *&buf.f_mntonname[16] = v60;
      v65 = val;
      *&buf.f_mntonname[8] = &v94;
      vala = v65;
      *&buf.f_flags = v65;
      *buf.f_fstypename = 0;
      v66 = v49;
      *&buf.f_fstypename[8] = v66;
      v67 = v50;
      *buf.f_mntonname = v67;
      dispatch_sync(v61, &buf);
      sub_1000058F4();
      if (v55)
      {
        if (*(v95 + 24))
        {
          v68 = 3;
        }

        else
        {
          v68 = 5;
        }

        v69 = xpc_activity_set_state(v55, v68);
        v70 = v69;
        v71 = sub_100002620(v69);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = "Unable";
          if (v70)
          {
            v72 = "Able";
          }

          if (*(v95 + 24))
          {
            v73 = "deferred";
          }

          else
          {
            v73 = "done";
          }

          *v128 = 136315394;
          v129 = v72;
          v130 = 2080;
          v131 = v73;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%s to mark activity as %s", v128, 0x16u);
        }
      }

      _Block_object_dispose(&v94, 8);
      goto LABEL_74;
    }

    if (sub_100001DD8())
    {
      v83 = objc_alloc_init(SignpostCAStallAggregationBuilder);
      LODWORD(v30) = dword_100019C98;
      [v83 setMaxDurationSec:v30];
    }

    else
    {
      v83 = 0;
    }

    v33 = objc_alloc_init(SignpostReporterObjectFilter);
    bzero(&buf, 0x878uLL);
    v34 = statfs("/", &buf);
    if (v34)
    {
      v35 = sub_100002620(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
LABEL_48:
        sub_10000C388();
      }
    }

    else
    {
      v36 = [NSString stringWithCString:buf.f_fstypename encoding:4];
      v35 = sub_100002620(v36);
      v74 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
      if (v36)
      {
        if (v74)
        {
          sub_10000C3C8();
        }

        goto LABEL_50;
      }

      if (v74)
      {
        goto LABEL_48;
      }
    }

    v36 = 0;
LABEL_50:

    v124[0] = _NSConcreteStackBlock;
    v124[1] = 3221225472;
    v124[2] = sub_1000059D0;
    v124[3] = &unk_100014958;
    v78 = v33;
    v125 = v78;
    v75 = v36;
    v126 = v75;
    v127 = @"SSD";
    v31 = objc_retainBlock(v124);

    v32 = @"SSD";
    goto LABEL_51;
  }

  v5 = state;
  if (state)
  {
    v6 = sub_100002620(state);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 134217984;
      *&buf.f_iosize = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unknown state %ld\n", &buf, 0xCu);
    }
  }

  else
  {
    v6 = sub_100002620(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Checking in\n", &buf, 2u);
    }
  }

LABEL_13:

LABEL_75:
  xpc_transaction_exit_clean();
}

void sub_100005814(id a1)
{
  qword_100019F48 = [NSSet setWithArray:&off_1000169B8];

  _objc_release_x1();
}

id sub_10000585C()
{
  v0 = +[NSFileManager defaultManager];
  v5 = 0;
  v1 = [v0 fileExistsAtPath:@"/var/run/signpost_reporter_running" isDirectory:&v5];
  v2 = v1;
  if (v1 && v5 == 1)
  {
    v3 = sub_100002620(v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10000C464();
    }
  }

  return v2;
}

void sub_1000058F4()
{
  if (sub_10000585C())
  {
    v0 = +[NSFileManager defaultManager];
    v6 = 0;
    v1 = [v0 removeItemAtPath:@"/var/run/signpost_reporter_running" error:&v6];
    v2 = v6;
    v3 = sub_100002620(v2);
    v4 = v3;
    if (v1)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cleared cookie file", v5, 2u);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000C4A4(v2, v4);
    }
  }
}

void sub_1000059D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldReportSignpostObject:v3 classificationOut:0])
  {
    v4 = [v3 coreAnalyticsPayload];
    v5 = v4;
    if (v4)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        [v4 setObject:v6 forKeyedSubscript:@"BootPartitionFS"];
      }

      [v5 setObject:*(a1 + 48) forKeyedSubscript:@"BootDiskType"];
      sub_100005B0C();
      v7 = qword_100019F30;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100005BFC;
      v9[3] = &unk_100014930;
      v10 = v3;
      v11 = v5;
      dispatch_async(v7, v9);

      v8 = v10;
    }

    else
    {
      v8 = sub_100002620(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C560(v3);
      }
    }
  }
}

void sub_100005B0C()
{
  if (qword_100019F60 != -1)
  {
    sub_10000C638();
  }

  if (++qword_100019F80 >= 0xA)
  {
    v0 = mach_continuous_time();
    v1 = *&qword_100019F68 * (v0 - qword_100019F78);
    if (v1 < *&dword_100019F70)
    {
      v2 = (*&dword_100019F70 - v1);
      v3 = sub_100002620(v0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C64C();
      }

      usleep(v2);
      qword_100019F88 += v2;
      ++qword_100019F90;
    }

    qword_100019F80 = 0;
    qword_100019F78 = mach_continuous_time();
  }
}

void sub_100005BFC(uint64_t a1)
{
  v2 = [*(a1 + 32) subsystem];
  v3 = [*(a1 + 32) category];
  v4 = [*(a1 + 32) name];
  v9[0] = @"sp";
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v5 = v2;
  v6 = v3;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  v8 = [v7 componentsJoinedByString:@"__"];

  AnalyticsSendEvent();
}

uint64_t sub_100005D10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 subsystem];
  v5 = [v4 isEqualToString:@"com.apple.Telemetry.PeriodicAggregations"];

  if (v5)
  {
    [*(a1 + 32) handleInterval:v3];
  }

  if (byte_100019F58 == 1)
  {
    [*(a1 + 40) handleSignpostInterval:v3];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = *(a1 + 48);
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * i) handleSignpostInterval:{v3, v12}];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    (*(*(a1 + 64) + 16))();
  }

  [*(a1 + 56) processInterval:{v3, v12}];

  return 1;
}

uint64_t sub_100005E88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![NSFESelEvent handle:v3])
  {
    if (byte_100019F58 == 1)
    {
      [*(a1 + 32) handleSignpostEvent:v3];
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v4 = *(a1 + 40);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v10 + 1) + 8 * i) handleSignpostEmitEvent:{v3, v10}];
          }

          v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }

      (*(*(a1 + 56) + 16))();
    }

    [*(a1 + 48) processEvent:{v3, v10}];
  }

  return 1;
}

uint64_t sub_100005FE4(id *a1)
{
  if (byte_100019F58 == 1)
  {
    [a1[4] handleDeviceReboot];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = a1[5];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v8 + 1) + 8 * i) handleDeviceReboot];
        }

        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  [a1[6] processDeviceReboot];
  return 1;
}

uint64_t sub_100006120(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) handleSignpostIntervalBegin:v3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8) handleSignpostIntervalBegin:{v3, v10}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return 1;
}

void sub_100006230(uint64_t a1)
{
  should_defer = xpc_activity_should_defer(*(a1 + 32));
  v3 = should_defer;
  v4 = sub_100002620(should_defer);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trying to stop in-flight reporting work.", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained stopProcessing];

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v4 = sub_100002620(v7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "Concluding processing due to deferral request";
      v9 = &v10;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else if (v5)
  {
    *v11 = 0;
    v8 = "Deferral not requested, continuing.";
    v9 = v11;
    goto LABEL_8;
  }
}

void sub_10000633C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v155 = v1;
  if (v1)
  {
    v2 = sub_100002620(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v155 signatureToAccumulatorEntry];
      *buf = 134217984;
      v191 = [v3 count];
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Accumulated information on %llu aggregations", buf, 0xCu);
    }

    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v4 = [v155 signatureToAccumulatorEntry];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v225 objects:buf count:16];
    if (v6)
    {
      v7 = *v226;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v226 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v225 + 1) + 8 * i);
          v10 = [v9 accumulatedAggregation];
          v11 = [v10 telemetryEnabled];
          if (v11)
          {
            v12 = [v10 _coreAnalyticsEventPayloadDictionary];
            v13 = sub_100002620(v12);
            v14 = v13;
            if (v12)
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v15 = [v9 aggregationSignature];
                LODWORD(v224[0]) = 138412290;
                *(v224 + 4) = v15;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Submitting CA event payload for %@", v224, 0xCu);
              }

              v14 = [v10 _coreAnalyticsEventName];
              AnalyticsSendEvent();
            }

            else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              sub_10000C6C0(v188, v10, &v189, v14);
            }
          }

          else
          {
            v12 = sub_100002620(v11);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v9 aggregationSignature];
              LODWORD(v224[0]) = 138412290;
              *(v224 + 4) = v16;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ is not telemetry enabled", v224, 0xCu);
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v225 objects:buf count:16];
      }

      while (v6);
    }
  }

  v17 = *(a1 + 40);
  v18 = v17;
  if (v17)
  {
    v19 = [v17 coreAnalyticsEvents];
    v20 = sub_100002620(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v19 count];
      v22 = [v18 processingErrors];
      v23 = [v22 count];
      *buf = 134218240;
      v191 = v21;
      v192 = 2048;
      v193 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Reporting information on %llu CAMetalLayer clients with %llu errors encountered", buf, 0x16u);
    }

    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v24 = v19;
    v25 = [v24 countByEnumeratingWithState:&v225 objects:buf count:16];
    if (v25)
    {
      v26 = *v226;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v226 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = +[SSCAMetalLayerClientSessionAccumulator coreAnalyticsEventName];
          AnalyticsSendEvent();
        }

        v25 = [v24 countByEnumeratingWithState:&v225 objects:buf count:16];
      }

      while (v25);
    }

    v223[0] = @"ErrorCount";
    v29 = [v18 processingErrors];
    v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v29 count]);
    *&v224[0] = v30;
    v223[1] = @"CAMetalLayerSessionCount";
    v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 count]);
    *(&v224[0] + 1) = v31;
    v32 = [NSDictionary dictionaryWithObjects:v224 forKeys:v223 count:2];

    v33 = +[SSCAMetalLayerClientSessionAccumulator coreAnalyticsProcessingMetadataName];
    AnalyticsSendEvent();
  }

  v35 = *(a1 + 48);
  v34 = *(a1 + 56);
  v36 = *(a1 + 104);
  v151 = [*(a1 + 64) processedEventCount];
  v150 = *(*(*(a1 + 96) + 8) + 24);
  v153 = *(a1 + 72);
  if (v153)
  {
    v152 = 0;
    v37 = @"log archive end";
    v38 = @"log archive begin";
  }

  else
  {
    v38 = [NSDateFormatter localizedStringFromDate:*(a1 + 80) dateStyle:1 timeStyle:2];
    if (*(a1 + 72))
    {
      v152 = 0;
      v37 = @"log archive end";
    }

    else
    {
      v37 = [NSDateFormatter localizedStringFromDate:*(a1 + 88) dateStyle:1 timeStyle:2];
      v152 = 1;
    }
  }

  v158 = v35;
  v156 = v34;
  v149 = v38;
  v154 = v38;
  v39 = v37;
  if (byte_100019F58 == 1)
  {
    v148 = v39;
    v184 = 0;
    v185 = &v184;
    v186 = 0x2020000000;
    v187 = 0;
    v183[0] = _NSConcreteStackBlock;
    v183[1] = 3221225472;
    v183[2] = sub_100007C58;
    v183[3] = &unk_100014B00;
    v183[4] = &v184;
    v40 = objc_retainBlock(v183);
    v41 = sub_100002620(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v158 allInspectedSignpostObjectsAggregation];
      v43 = [v42 totalCount];
      *buf = 134217984;
      v191 = v43;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "**************\nTotal signpost object count: %llu", buf, 0xCu);
    }

    v44 = [v158 allInspectedSignpostObjectsAggregation];
    v45 = [v44 keysInDescendingCountOrder];

    v185[3] = 0;
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    v46 = v45;
    v47 = [v46 countByEnumeratingWithState:&v179 objects:&v225 count:16];
    v48 = v37;
    if (v47)
    {
      v49 = *v180;
      do
      {
        for (k = 0; k != v47; k = k + 1)
        {
          if (*v180 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v179 + 1) + 8 * k);
          v52 = [v158 allInspectedSignpostObjectsAggregation];
          (v40[2])(v40, v51, v52, @"AllInspected");
        }

        v37 = v48;
        v47 = [v46 countByEnumeratingWithState:&v179 objects:&v225 count:16];
      }

      while (v47);
    }

    v54 = sub_100002620(v53);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [v158 telemetryReportedAggregation];
      v56 = [v55 totalCount];
      *buf = 134217984;
      v191 = v56;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "**************\nReported signpost object count: %llu", buf, 0xCu);
    }

    v57 = [v158 telemetryReportedAggregation];
    v58 = [v57 keysInDescendingCountOrder];

    v185[3] = 0;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v59 = v58;
    v60 = [v59 countByEnumeratingWithState:&v175 objects:v224 count:16];
    if (v60)
    {
      v61 = *v176;
      do
      {
        for (m = 0; m != v60; m = m + 1)
        {
          if (*v176 != v61)
          {
            objc_enumerationMutation(v59);
          }

          v63 = *(*(&v175 + 1) + 8 * m);
          v64 = [v158 telemetryReportedAggregation];
          (v40[2])(v40, v63, v64, @"Reported");
        }

        v37 = v48;
        v60 = [v59 countByEnumeratingWithState:&v175 objects:v224 count:16];
      }

      while (v60);
    }

    v66 = sub_100002620(v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = [v158 telemetryReportedEventsAggregation];
      v68 = [v67 totalCount];
      *buf = 134217984;
      v191 = v68;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "**************\nReported signpost event count: %llu", buf, 0xCu);
    }

    v69 = [v158 telemetryReportedEventsAggregation];
    v70 = [v69 keysInDescendingCountOrder];

    v185[3] = 0;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v71 = v70;
    v72 = [v71 countByEnumeratingWithState:&v171 objects:v223 count:16];
    if (v72)
    {
      v73 = *v172;
      do
      {
        for (n = 0; n != v72; n = n + 1)
        {
          if (*v172 != v73)
          {
            objc_enumerationMutation(v71);
          }

          v75 = *(*(&v171 + 1) + 8 * n);
          v76 = [v158 telemetryReportedEventsAggregation];
          (v40[2])(v40, v75, v76, @"ReportedEvents");
        }

        v37 = v48;
        v72 = [v71 countByEnumeratingWithState:&v171 objects:v223 count:16];
      }

      while (v72);
    }

    v78 = sub_100002620(v77);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v79 = [v158 telemetryNotReportedFailedSCFilterAggregation];
      v80 = [v79 totalCount];
      *buf = 134217984;
      v191 = v80;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "**************\nSubsystem/category filtered signpost object count: %llu", buf, 0xCu);
    }

    v81 = [v158 telemetryNotReportedFailedSCFilterAggregation];
    v82 = [v81 keysInDescendingCountOrder];

    v185[3] = 0;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v83 = v82;
    v84 = [v83 countByEnumeratingWithState:&v167 objects:v222 count:16];
    if (v84)
    {
      v85 = *v168;
      do
      {
        for (ii = 0; ii != v84; ii = ii + 1)
        {
          if (*v168 != v85)
          {
            objc_enumerationMutation(v83);
          }

          v87 = *(*(&v167 + 1) + 8 * ii);
          v88 = [v158 telemetryNotReportedFailedSCFilterAggregation];
          (v40[2])(v40, v87, v88, @"SubsystemCategoryFiltered");
        }

        v37 = v48;
        v84 = [v83 countByEnumeratingWithState:&v167 objects:v222 count:16];
      }

      while (v84);
    }

    v90 = sub_100002620(v89);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = [v158 telemetryNotReportedDurationThresholdAggregation];
      v92 = [v91 totalCount];
      *buf = 134217984;
      v191 = v92;
      _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "**************\nDuration filtered signpost object count: %llu", buf, 0xCu);
    }

    v93 = [v158 telemetryNotReportedDurationThresholdAggregation];
    v94 = [v93 keysInDescendingCountOrder];

    v185[3] = 0;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v95 = v94;
    v96 = [v95 countByEnumeratingWithState:&v163 objects:v221 count:16];
    if (v96)
    {
      v97 = *v164;
      do
      {
        for (jj = 0; jj != v96; jj = jj + 1)
        {
          if (*v164 != v97)
          {
            objc_enumerationMutation(v95);
          }

          v99 = *(*(&v163 + 1) + 8 * jj);
          v100 = [v158 telemetryNotReportedDurationThresholdAggregation];
          (v40[2])(v40, v99, v100, @"DurationThresholdFiltered");
        }

        v37 = v48;
        v96 = [v95 countByEnumeratingWithState:&v163 objects:v221 count:16];
      }

      while (v96);
    }

    v102 = sub_100002620(v101);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v103 = [v158 telemetryNotReportedFailedStringAllowlistAggregation];
      v104 = [v103 totalCount];
      *buf = 134217984;
      v191 = v104;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "**************\nString allowlist filtered signpost object count: %llu", buf, 0xCu);
    }

    v105 = [v158 telemetryNotReportedFailedStringAllowlistAggregation];
    v106 = [v105 keysInDescendingCountOrder];

    v185[3] = 0;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v107 = v106;
    v108 = [v107 countByEnumeratingWithState:&v159 objects:v220 count:16];
    if (v108)
    {
      v109 = *v160;
      do
      {
        for (kk = 0; kk != v108; kk = kk + 1)
        {
          if (*v160 != v109)
          {
            objc_enumerationMutation(v107);
          }

          v111 = *(*(&v159 + 1) + 8 * kk);
          v112 = [v158 telemetryNotReportedFailedStringAllowlistAggregation];
          (v40[2])(v40, v111, v112, @"StringWhitelistFiltered");
        }

        v37 = v48;
        v108 = [v107 countByEnumeratingWithState:&v159 objects:v220 count:16];
      }

      while (v108);
    }

    v113 = +[NSMutableDictionary dictionary];
    *&v114 = v36;
    v115 = [NSNumber numberWithFloat:v114];
    [v113 setObject:v115 forKeyedSubscript:@"ProcessingDurationInSeconds"];

    v116 = [NSNumber numberWithUnsignedLongLong:v151];
    [v113 setObject:v116 forKeyedSubscript:@"LogObjectsProcessed"];

    v117 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v158 totalReportedAnimationCount]);
    [v113 setObject:v117 forKeyedSubscript:@"AnimationsReported"];

    v118 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v158 totalReportedIntervalCount]);
    [v113 setObject:v118 forKeyedSubscript:@"IntervalsReported"];

    v119 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v158 totalReportedEventCount]);
    [v113 setObject:v119 forKeyedSubscript:@"EventsReported"];

    v120 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v158 totalUnreportedAnimationCount]);
    [v113 setObject:v120 forKeyedSubscript:@"AnimationsNotReported"];

    v121 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v158 totalUnreportedIntervalCount]);
    [v113 setObject:v121 forKeyedSubscript:@"IntervalsNotReported"];

    v122 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v158 totalUnreportedEventCount]);
    [v113 setObject:v122 forKeyedSubscript:@"EventsNotReported"];

    v123 = [NSNumber numberWithBool:v150];
    [v113 setObject:v123 forKeyedSubscript:@"WasInterrupted"];

    v124 = AnalyticsSendEvent();
    v125 = sub_100002620(v124);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
    {
      v146 = [v158 totalReportedEventCount];
      v145 = [v158 totalUnreportedEventCount];
      v144 = [v158 totalReportedIntervalCount];
      v143 = COERCE_DOUBLE([v158 totalUnreportedIntervalCount]);
      v142 = [v158 totalReportedAnimationCount];
      v141 = [v158 totalUnreportedAnimationCount];
      v147 = [v158 telemetryNotReportedFailedSCFilterAggregation];
      v126 = [v147 totalCount];
      v127 = [v158 telemetryNotReportedDurationThresholdAggregation];
      v128 = [v127 totalCount];
      v129 = [v158 telemetryNotReportedFailedStringAllowlistAggregation];
      v130 = [v129 totalCount];
      v131 = [v158 telemetryDisabledAggregation];
      v132 = [v131 totalCount];
      *buf = 134221570;
      v133 = "";
      v191 = v146;
      v192 = 2048;
      if (v150)
      {
        v133 = " (Interrupted by deferral)";
      }

      v193 = v145;
      v194 = 2048;
      v195 = v144;
      v196 = 2048;
      v197 = v143;
      v198 = 2048;
      v199 = v142;
      v200 = 2048;
      v201 = v141;
      v202 = 2048;
      v203 = v126;
      v204 = 2048;
      v205 = v128;
      v206 = 2048;
      v207 = v130;
      v208 = 2048;
      v209 = v132;
      v210 = 2048;
      v211 = v151;
      v212 = 2048;
      v213 = v36;
      v214 = 2112;
      v215 = v154;
      v216 = 2112;
      v217 = v148;
      v218 = 2080;
      v219 = v133;
      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "Done processing %llu reported and %llu unreported events, %llu reported and %llu unreported intervals and %llu reported and %llu unreported animations (%llu blocklisted, %llu too short, %llu allowlisted, %llu telemetry not enabled) from %llu log events in %.2fs between %@ and %@%s\n", buf, 0x98u);

      v37 = v48;
    }

    if (qword_100019F90)
    {
      v135 = sub_100002620(v134);
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v191 = qword_100019F90;
        v192 = 2048;
        v193 = qword_100019F88;
        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "Throttled %llu times for a total of %llu usec", buf, 0x16u);
      }
    }

    if (v156)
    {
      v136 = [v156 stallAggregationSnapshot];
      sub_100001DE0(v136);
    }

    _Block_object_dispose(&v184, 8);
    v39 = v148;
  }

  if (v152)
  {
  }

  if (!v153)
  {
  }

  v138 = sub_100002620(v137);
  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
  {
    v139 = *(a1 + 104);
    if (byte_100019F58)
    {
      v140 = @"Enabled";
    }

    else
    {
      v140 = @"Disabled";
    }

    *buf = 138413058;
    v191 = v140;
    v192 = 2112;
    v193 = @"Enabled";
    v194 = 2112;
    v195 = @"Enabled";
    v196 = 2048;
    v197 = v139;
    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "Processing for:\n\tos_signpost CA telemetry: %@\n\tAggregation CA telemetry: %@\n\tCAMetalLayer CA telemetry: %@ took %.2f seconds", buf, 0x2Au);
  }
}

void sub_1000077EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = [(__CFString *)v8 isEqualToString:@"com.apple.performance.signpost_reporter_tasking"];
  if (v9)
  {
    if (v7)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v11 = [v7 objectForKeyedSubscript:@"TaskedOn"];
        if (v11)
        {
          objc_opt_class();
          v12 = objc_opt_isKindOfClass();
          if (v12)
          {
            v13 = [v11 BOOLValue];
            v14 = v13;
            v15 = sub_100002620(v13);
            v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
            if (v14)
            {
              if (v16)
              {
                LOWORD(v22) = 0;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Reporting based on being tasked-on by CoreAnalytics", &v22, 2u);
              }

              v17 = 1;
              goto LABEL_28;
            }

            if (v16)
            {
              v22 = 138412290;
              v23 = @"TaskedOn";
              v21 = "Not reporting based on not being tasked-on by CoreAnalytics ('%@' is false)";
              goto LABEL_26;
            }

LABEL_27:
            v17 = 0;
LABEL_28:

            goto LABEL_19;
          }

          v15 = sub_100002620(v12);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          v22 = 138412290;
          v23 = @"TaskedOn";
          v21 = "Not reporting since not tasked-on by CoreAnalytics (Wrong value class for class for %@)";
        }

        else
        {
          v15 = sub_100002620(0);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          v22 = 138412290;
          v23 = @"TaskedOn";
          v21 = "Not reporting since is not tasked-on by CoreAnalytics (nil value for %@ key)";
        }

LABEL_26:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v21, &v22, 0xCu);
        goto LABEL_27;
      }

      v11 = sub_100002620(isKindOfClass);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        v18 = "Not reporting based on not being tasked-on by CoreAnalytics (Non-NSDictionary configuration object)";
        goto LABEL_16;
      }
    }

    else
    {
      v11 = sub_100002620(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        v18 = "Not reporting based on not being tasked-on by CoreAnalytics (nil configuration object)";
LABEL_16:
        v19 = v11;
        v20 = 2;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v11 = sub_100002620(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v8;
      v18 = "Not reporting based on not being tasked-on by CoreAnalytics (unexpected type string: '%@')";
      v19 = v11;
      v20 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v22, v20);
    }
  }

  v17 = 0;
LABEL_19:

  *(*(*(a1 + 40) + 8) + 24) = v17;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100007AEC(id a1)
{
  info = 0;
  v1 = mach_timebase_info(&info);
  LODWORD(v3) = info.denom;
  LODWORD(v2) = info.numer;
  *&qword_100019F68 = v2 / v3 / 1000.0;
  dword_100019F70 = 1207182336;
  v4 = sub_100002620(v1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v7 = 0x40FE848000000000;
    v8 = 2048;
    v9 = 125000.0 / *&qword_100019F68;
    v10 = 1024;
    v11 = 10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%f us, %f mach time units per quantum of %u reported events", buf, 0x1Cu);
  }

  qword_100019F78 = mach_continuous_time();
}

void sub_100007C0C(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v2) = info.denom;
  LODWORD(v1) = info.numer;
  *&qword_100019FA0 = v1 * 0.000000001 / v2;
}

void sub_100007C58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  sub_100005B0C();
  if (*(*(*(a1 + 32) + 8) + 24) > 4uLL)
  {
    v18 = sub_100002620(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v7 description];
      v26 = [v8 aggregationDictionary];
      v27 = [v26 objectForKeyedSubscript:v7];
      *buf = 138412546;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = [v27 unsignedLongLongValue];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@:\t%llu (Count not reported)", buf, 0x16u);
    }
  }

  else
  {
    v30[0] = @"Subsystem";
    v11 = v7;
    v29 = v8;
    v12 = v8;
    v28 = v9;
    v13 = v9;
    v14 = [v11 subsystem];
    *buf = v14;
    v30[1] = @"Category";
    v15 = [v11 category];
    *&buf[8] = v15;
    v30[2] = @"Count";
    v16 = [v12 aggregationDictionary];

    v17 = [v16 objectForKeyedSubscript:v11];

    v30[3] = @"Classification";
    *&buf[16] = v17;
    v32 = v13;
    v18 = [NSDictionary dictionaryWithObjects:buf forKeys:v30 count:4];

    v19 = AnalyticsSendEvent();
    v20 = sub_100002620(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v11 description];
      v22 = [v12 aggregationDictionary];
      v23 = [v22 objectForKeyedSubscript:v11];
      v24 = [v23 unsignedLongLongValue];
      *buf = 138412546;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@:\t%llu (Count reported to CoreAnalytics)", buf, 0x16u);
    }

    v9 = v28;
    v8 = v29;
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_100008DE0()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_name);

  return v1;
}

uint64_t sub_100008E1C()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_targetSelector);

  return v1;
}

uint64_t sub_100008E68()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_keyName);

  return v1;
}

uint64_t sub_100008EB4()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_targetClassName);

  return v1;
}

uint64_t sub_100008EF0()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_returnType);

  return v1;
}

uint64_t sub_100008F3C()
{
  v1 = *(v0 + OBJC_IVAR___NSFESelEvent_processName);

  return v1;
}

unint64_t sub_100008F78()
{
  result = sub_10000B698(&_swiftEmptyArrayStorage);
  qword_100019FB0 = result;
  return result;
}

uint64_t sub_100009008()
{
  v1 = 7104878;
  _StringGuts.grow(_:)(125);
  swift_getObjectType();
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + OBJC_IVAR___NSFESelEvent_name));
  v4._countAndFlagsBits = 0x7365636F7270202CLL;
  v4._object = 0xEF203A656D614E73;
  String.append(_:)(v4);
  if (*(v0 + OBJC_IVAR___NSFESelEvent_processName + 8))
  {
    v5 = *(v0 + OBJC_IVAR___NSFESelEvent_processName);
    v6 = *(v0 + OBJC_IVAR___NSFESelEvent_processName + 8);
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x7463656C6573202CLL;
  v8._object = 0xEC000000203A726FLL;
  String.append(_:)(v8);
  String.append(_:)(*(v0 + OBJC_IVAR___NSFESelEvent_targetSelector));
  v9._object = 0x8000000100011AF0;
  v9._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v9);
  if (*(v0 + OBJC_IVAR___NSFESelEvent_bannedSelector))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___NSFESelEvent_bannedSelector))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 0x6D614E79656B202CLL;
  v13._object = 0xEB00000000203A65;
  String.append(_:)(v13);
  if (*(v0 + OBJC_IVAR___NSFESelEvent_keyName + 8))
  {
    v14 = *(v0 + OBJC_IVAR___NSFESelEvent_keyName);
    v15 = *(v0 + OBJC_IVAR___NSFESelEvent_keyName + 8);
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x4E7373616C63202CLL;
  v17._object = 0xED0000203A656D61;
  String.append(_:)(v17);
  String.append(_:)(*(v0 + OBJC_IVAR___NSFESelEvent_targetClassName));
  v18._countAndFlagsBits = 0x6E7275746572202CLL;
  v18._object = 0xEE00203A65707954;
  String.append(_:)(v18);
  if (*(v0 + OBJC_IVAR___NSFESelEvent_returnType + 8))
  {
    v1 = *(v0 + OBJC_IVAR___NSFESelEvent_returnType);
    v19 = *(v0 + OBJC_IVAR___NSFESelEvent_returnType + 8);
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  v20._countAndFlagsBits = v1;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x3A4B46567369202CLL;
  v21._object = 0xE900000000000020;
  String.append(_:)(v21);
  if (*(v0 + OBJC_IVAR___NSFESelEvent_isVFK))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___NSFESelEvent_isVFK))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  v24 = v23;
  String.append(_:)(*&v22);

  v25._countAndFlagsBits = 0x70795479656B202CLL;
  v25._object = 0xEB00000000203A65;
  String.append(_:)(v25);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  return 0;
}

unsigned __int8 *sub_1000093C8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [a1 subsystem];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == 0xD000000000000027 && 0x8000000100011AC0 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = [a1 category];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == 0x6E6576454546534ELL && v14 == 0xE900000000000074)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_15:

LABEL_16:
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  v16 = [a1 metadata];
  if (!v16)
  {
    goto LABEL_15;
  }

  v86 = ObjectType;
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [a1 name];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = &v2[OBJC_IVAR___NSFESelEvent_name];
  *v25 = v22;
  v25[1] = v24;
  v26 = [a1 processName];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v32 = &v2[OBJC_IVAR___NSFESelEvent_processName];
  *v32 = v28;
  v32[1] = v30;
  v90 = v18;
  v91 = v20;
  v88 = 124;
  v89 = 0xE100000000000000;
  sub_100009ECC();
  v33 = StringProtocol.components<A>(separatedBy:)();

  v34 = *v25;
  v35 = v25[1];
  if ((*v25 != 0x655364656E6E6142 || v35 != 0xE90000000000006CLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v33[2] != 4)
  {
    if ((v34 != 0x6E754643564BLL || v35 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v33[2] != 5)
    {

      goto LABEL_16;
    }

    v2[OBJC_IVAR___NSFESelEvent_bannedSelector] = 0;
    v2[OBJC_IVAR___NSFESelEvent_isVFK] = 1;
    v43 = v33[5];
    v44 = &v2[OBJC_IVAR___NSFESelEvent_targetSelector];
    *v44 = v33[4];
    v44[1] = v43;
    v45 = v33[7];
    v46 = &v2[OBJC_IVAR___NSFESelEvent_keyName];
    *v46 = v33[6];
    v46[1] = v45;
    v47 = v33[9];
    v48 = &v2[OBJC_IVAR___NSFESelEvent_targetClassName];
    *v48 = v33[8];
    v48[1] = v47;
    v49 = v33[10];
    v50 = v33[11];
    if (!v49 && v50 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v49 = 0;
      v50 = 0;
    }

    else
    {
    }

    v79 = &v2[OBJC_IVAR___NSFESelEvent_returnType];
    *v79 = v49;
    v79[1] = v50;
    v80 = v33[12];
    v81 = v33[13];

    v82 = sub_100009BCC(v80, v81);
    if (v83)
    {
      v78 = 0;
    }

    else
    {
      v78 = v82;
    }

    goto LABEL_105;
  }

  v2[OBJC_IVAR___NSFESelEvent_bannedSelector] = 1;
  v36 = &v2[OBJC_IVAR___NSFESelEvent_keyName];
  *v36 = 0;
  v36[1] = 0;
  v2[OBJC_IVAR___NSFESelEvent_isVFK] = 0;
  v37 = v33[5];
  v38 = &v2[OBJC_IVAR___NSFESelEvent_targetSelector];
  *v38 = v33[4];
  v38[1] = v37;
  v39 = v33[7];
  v40 = &v2[OBJC_IVAR___NSFESelEvent_targetClassName];
  *v40 = v33[6];
  v40[1] = v39;
  v41 = v33[8];
  v42 = v33[9];
  if (!v41 && v42 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v41 = 0;
    v42 = 0;
  }

  else
  {
  }

  v51 = &v2[OBJC_IVAR___NSFESelEvent_returnType];
  *v51 = v41;
  v51[1] = v42;
  v53 = v33[10];
  v52 = v33[11];

  v54 = HIBYTE(v52) & 0xF;
  v55 = v53 & 0xFFFFFFFFFFFFLL;
  if ((v52 & 0x2000000000000000) != 0)
  {
    v56 = HIBYTE(v52) & 0xF;
  }

  else
  {
    v56 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {

    v78 = 0;
LABEL_105:
    v57 = v86;
LABEL_106:
    *&v2[OBJC_IVAR___NSFESelEvent_keyType] = v78;
    v87.receiver = v2;
    v87.super_class = v57;
    v84 = objc_msgSendSuper2(&v87, "init");

    return v84;
  }

  if ((v52 & 0x1000000000000000) != 0)
  {
    v59 = sub_10000A650(v53, v52, 10);
    v77 = v85;

    v57 = v86;
LABEL_98:
    if (v77)
    {
      v78 = 0;
    }

    else
    {
      v78 = v59;
    }

    goto LABEL_106;
  }

  if ((v52 & 0x2000000000000000) == 0)
  {
    if ((v53 & 0x1000000000000000) != 0)
    {
      result = ((v52 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v57 = v86;
    v58 = *result;
    if (v58 == 43)
    {
      if (v55 >= 1)
      {
        v54 = v55 - 1;
        if (v55 != 1)
        {
          v59 = 0;
          if (result)
          {
            v66 = result + 1;
            while (1)
            {
              v67 = *v66 - 48;
              if (v67 > 9)
              {
                goto LABEL_96;
              }

              v68 = 10 * v59;
              if ((v59 * 10) >> 64 != (10 * v59) >> 63)
              {
                goto LABEL_96;
              }

              v59 = v68 + v67;
              if (__OFADD__(v68, v67))
              {
                goto LABEL_96;
              }

              ++v66;
              if (!--v54)
              {
                goto LABEL_97;
              }
            }
          }

          goto LABEL_88;
        }

        goto LABEL_96;
      }

      goto LABEL_112;
    }

    if (v58 != 45)
    {
      if (v55)
      {
        v59 = 0;
        if (result)
        {
          while (1)
          {
            v72 = *result - 48;
            if (v72 > 9)
            {
              goto LABEL_96;
            }

            v73 = 10 * v59;
            if ((v59 * 10) >> 64 != (10 * v59) >> 63)
            {
              goto LABEL_96;
            }

            v59 = v73 + v72;
            if (__OFADD__(v73, v72))
            {
              goto LABEL_96;
            }

            ++result;
            if (!--v55)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_88;
      }

LABEL_96:
      v59 = 0;
      LOBYTE(v54) = 1;
      goto LABEL_97;
    }

    if (v55 >= 1)
    {
      v54 = v55 - 1;
      if (v55 != 1)
      {
        v59 = 0;
        if (result)
        {
          v60 = result + 1;
          while (1)
          {
            v61 = *v60 - 48;
            if (v61 > 9)
            {
              goto LABEL_96;
            }

            v62 = 10 * v59;
            if ((v59 * 10) >> 64 != (10 * v59) >> 63)
            {
              goto LABEL_96;
            }

            v59 = v62 - v61;
            if (__OFSUB__(v62, v61))
            {
              goto LABEL_96;
            }

            ++v60;
            if (!--v54)
            {
              goto LABEL_97;
            }
          }
        }

LABEL_88:
        LOBYTE(v54) = 0;
LABEL_97:
        LOBYTE(v88) = v54;
        v77 = v54;

        goto LABEL_98;
      }

      goto LABEL_96;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v90 = v53;
  v91 = v52 & 0xFFFFFFFFFFFFFFLL;
  if (v53 != 43)
  {
    v57 = v86;
    if (v53 != 45)
    {
      if (v54)
      {
        v59 = 0;
        v74 = &v90;
        while (1)
        {
          v75 = *v74 - 48;
          if (v75 > 9)
          {
            break;
          }

          v76 = 10 * v59;
          if ((v59 * 10) >> 64 != (10 * v59) >> 63)
          {
            break;
          }

          v59 = v76 + v75;
          if (__OFADD__(v76, v75))
          {
            break;
          }

          v74 = (v74 + 1);
          if (!--v54)
          {
            goto LABEL_97;
          }
        }
      }

      goto LABEL_96;
    }

    if (v54)
    {
      if (--v54)
      {
        v59 = 0;
        v63 = &v90 + 1;
        while (1)
        {
          v64 = *v63 - 48;
          if (v64 > 9)
          {
            break;
          }

          v65 = 10 * v59;
          if ((v59 * 10) >> 64 != (10 * v59) >> 63)
          {
            break;
          }

          v59 = v65 - v64;
          if (__OFSUB__(v65, v64))
          {
            break;
          }

          ++v63;
          if (!--v54)
          {
            goto LABEL_97;
          }
        }
      }

      goto LABEL_96;
    }

    goto LABEL_111;
  }

  v57 = v86;
  if (v54)
  {
    if (--v54)
    {
      v59 = 0;
      v69 = &v90 + 1;
      while (1)
      {
        v70 = *v69 - 48;
        if (v70 > 9)
        {
          break;
        }

        v71 = 10 * v59;
        if ((v59 * 10) >> 64 != (10 * v59) >> 63)
        {
          break;
        }

        v59 = v71 + v70;
        if (__OFADD__(v71, v70))
        {
          break;
        }

        ++v69;
        if (!--v54)
        {
          goto LABEL_97;
        }
      }
    }

    goto LABEL_96;
  }

LABEL_113:
  __break(1u);
  return result;
}

unint64_t sub_100009BCC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10000A650(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_100009ECC()
{
  result = qword_100019E00;
  if (!qword_100019E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019E00);
  }

  return result;
}

unint64_t sub_100009F20()
{
  sub_10000ABDC(&qword_100019E08, &qword_10000EE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000EE30;
  strcpy((inited + 32), "bannedSelector");
  *(inited + 47) = -18;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  *(inited + 56) = 0x6D614E7373616C63;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = String._bridgeToObjectiveC()();
  *(inited + 80) = 0x4B46567369;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  *(inited + 104) = 0x656D614E79656BLL;
  *(inited + 112) = 0xE700000000000000;

  v1 = String._bridgeToObjectiveC()();

  *(inited + 120) = v1;
  *(inited + 128) = 0x4E737365636F7270;
  *(inited + 136) = 0xEB00000000656D61;

  v2 = String._bridgeToObjectiveC()();

  *(inited + 144) = v2;
  *(inited + 152) = 0x79546E7275746572;
  *(inited + 160) = 0xEA00000000006570;

  v3 = String._bridgeToObjectiveC()();

  *(inited + 168) = v3;
  *(inited + 176) = 0x726F7463656C6573;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = String._bridgeToObjectiveC()();
  *(inited + 200) = 0x6570795479656BLL;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = Int._bridgeToObjectiveC()();
  v4 = sub_10000B7A0(inited);
  swift_setDeallocating();
  sub_10000ABDC(&qword_100019E10, &qword_10000EE68);
  swift_arrayDestroy();
  return v4;
}

Class sub_10000A1E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10000BCD4();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_10000A2A4()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10000A338()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000A414(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000A4D0(a1, v4);
}

unint64_t sub_10000A458(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000A598(a1, a2, v4);
}

unint64_t sub_10000A4D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000BD20(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000BC0C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000A598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unsigned __int8 *sub_10000A650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000AC24(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10000ABDC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000AC24(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10000ACA4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10000ACA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000ADFC(v9, 0), v12 = sub_10000AE70(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *sub_10000ADFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000ABDC(&qword_100019E60, &qword_10000EEB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_10000AE70(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000B090(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000B090(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10000B090(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

Swift::Int sub_10000B10C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000ABDC(&qword_100019E48, "$A");
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
      }

      else
      {
        sub_10000BD20(v23, &v36);
      }

      v26 = *(*(v5 + 56) + v22);
      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10000B3A8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10000A414(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 >= result && (a3 & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = sub_10000B508();
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + v10) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  sub_10000B10C(result, a3 & 1);
  result = sub_10000A414(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  result = sub_10000BD20(a2, v24);
  v16[(v10 >> 6) + 8] |= 1 << v10;
  v18 = v16[6] + 40 * v10;
  v19 = v25;
  v20 = v24[1];
  *v18 = v24[0];
  *(v18 + 16) = v20;
  *(v18 + 32) = v19;
  *(v16[7] + v10) = a1 & 1;
  v21 = v16[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16[2] = v23;
  return result;
}

void *sub_10000B508()
{
  v1 = v0;
  sub_10000ABDC(&qword_100019E48, "$A");
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        result = sub_10000BD20(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v23;
        v21 = v22[1];
        *v19 = v22[0];
        *(v19 + 16) = v21;
        *(v19 + 32) = v20;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_10000B698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ABDC(&qword_100019E48, "$A");
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BD7C(v4, v13);
      result = sub_10000A414(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000B7A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ABDC(&qword_100019E58, &qword_10000EEA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000A458(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

BOOL sub_10000B8A4(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for NSFESelEvent());
  v3 = a1;
  v4 = sub_1000093C8(v3);
  if (v4)
  {
    v5 = [v3 metadata];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = String.hashValue.getter();
    }

    else
    {
      v7 = 0;
    }

    v8 = [v3 processName];
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = String.hashValue.getter();

      if (v7 == v10)
      {
        v7 = 0;
        goto LABEL_18;
      }

      v7 ^= v10;
    }

    else if (!v7)
    {
      goto LABEL_18;
    }

    if (qword_100019FA8 != -1)
    {
      swift_once();
    }

    v23 = v7;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v11 = qword_100019FB0;
    if (*(qword_100019FB0 + 16) && (v12 = sub_10000A414(v21), (v13 & 1) != 0))
    {
      v14 = *(*(v11 + 56) + v12);
      swift_endAccess();
      sub_10000BC0C(v21);
      v15 = v4;
      if (v14)
      {
LABEL_21:

        return v4 != 0;
      }
    }

    else
    {
      swift_endAccess();
      sub_10000BC0C(v21);
    }

LABEL_18:
    if (qword_100019FA8 != -1)
    {
      swift_once();
    }

    v23 = v7;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = qword_100019FB0;
    qword_100019FB0 = 0x8000000000000000;
    sub_10000B3A8(1, v21, isUniquelyReferenced_nonNull_native);
    sub_10000BC0C(v21);
    qword_100019FB0 = v22;
    swift_endAccess();
    v15 = String._bridgeToObjectiveC()();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    v21[4] = sub_10000BC98;
    v21[5] = v17;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_10000A1E4;
    v21[3] = &unk_100014C78;
    v18 = _Block_copy(v21);
    v19 = v4;

    AnalyticsSendEventLazy();

    _Block_release(v18);
    goto LABEL_21;
  }

  return v4 != 0;
}

uint64_t sub_10000BC60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BCBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000BCD4()
{
  result = qword_100019E40;
  if (!qword_100019E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019E40);
  }

  return result;
}

uint64_t sub_10000BD7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ABDC(&qword_100019E50, &qword_10000EEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000BE04(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10000241C(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100002430(&_mh_execute_header, v5, v6, "CA Stall Aggregation:\n%@");
}

void sub_10000BE60(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10000241C(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100002430(&_mh_execute_header, v5, v6, "Could not find bundle ID for %@. Skipping");
}

void sub_10000C154(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Found bundle ID: %@ for path:%@", &v3, 0x16u);
}

void sub_10000C1DC(void *a1)
{
  v2 = [a1 subsystem];
  v3 = [a1 category];
  v4 = [a1 name];
  sub_100007F60();
  sub_100007F88();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_10000C2BC(void *a1)
{
  v2 = [a1 subsystem];
  v3 = [a1 category];
  v4 = [a1 name];
  sub_100007F60();
  sub_100007F88();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_10000C4A4(void *a1, os_log_t log)
{
  if (a1)
  {
    v4 = [a1 localizedDescription];
  }

  else
  {
    v4 = @"Unknown error";
  }

  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not clear cookie file: %@", &v5, 0xCu);
  if (a1)
  {
  }
}

void sub_10000C560(void *a1)
{
  v2 = [a1 subsystem];
  v3 = [a1 category];
  v9 = [a1 name];
  sub_100007F88();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10000C6C0(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 _coreAnalyticsEventName];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Could not generate telemetry payload for %@", a1, 0xCu);
}