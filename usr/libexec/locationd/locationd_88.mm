id *sub_10061DFB0(id *result, uint64_t a2, char a3)
{
  if ((a3 & 2) != 0)
  {
    v3 = result;
    [result[14] setRestrictedMode:sub_10061EF18(result)];
    v5[0] = [v3[14] restrictedMode];
    v4 = 14;
    return (*(*v3 + 19))(v3, &v4, v5, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

uint64_t sub_10061E040(_BYTE *a1, uint64_t a2)
{
  v15 = 0;
  v3 = sub_1000206B4(a1, a2);
  v4 = sub_10001CB4C(v3, off_1025D76D0, &v15, 0xFFFFFFFFLL);
  if (v4 && !v15)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018E688C();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "locationd was started after an unclean shutdown", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E74F8();
    }

    a1[312] = 1;
    v13 = 17;
    v4 = (*(*a1 + 144))(a1, &v13, 1, 0xFFFFFFFFLL);
  }

  v7 = sub_1000206B4(v4, v5);
  v12 = 0;
  v8 = sub_100043360(v7, off_1025D76D0, &v12);
  v10 = *sub_1000206B4(v8, v9);
  return (*(v10 + 944))();
}

id sub_10061E19C(uint64_t a1, xpc_activity_t activity)
{
  result = xpc_activity_get_state(activity);
  if (result == 2)
  {
    if (!xpc_activity_set_state(activity, 5))
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018E6794();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        v6 = 134349056;
        state = xpc_activity_get_state(activity);
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "failed to set MetricHeartbeat activity as DONE.  current state is %{public}ld", &v6, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E75DC(activity);
      }
    }

    return [*(a1 + 32) triggerMetricHeartbeatNotification];
  }

  return result;
}

uint64_t sub_10061E2AC(uint64_t a1)
{
  *a1 = off_102464260;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10061E330(uint64_t a1)
{
  *a1 = off_102464050;
  [*(a1 + 264) invalidate];

  *(a1 + 264) = 0;
  *(a1 + 240) = 0;

  *(a1 + 256) = 0;
  if (*(a1 + 152))
  {
    v2 = sub_100107858();
    CFRunLoopRemoveSource(v2, *(a1 + 152), kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(*(a1 + 152));
    CFRelease(*(a1 + 152));
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    IONotificationPortDestroy(v3);
  }

  if (*(a1 + 136))
  {
    v4 = sub_100107858();
    CFRunLoopRemoveSource(v4, *(a1 + 136), kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(*(a1 + 136));
    CFRelease(*(a1 + 136));
  }

  if (*(a1 + 120))
  {
    IODeregisterForSystemPower((a1 + 120));
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    IONotificationPortDestroy(v5);
    *(a1 + 128) = 0;
  }

  v6 = *(a1 + 124);
  if (v6)
  {
    IOServiceClose(v6);
  }

  v7 = *(a1 + 160);
  if (v7)
  {
    v8 = sub_100107858();
    if (SCNetworkReachabilityUnscheduleFromRunLoop(v7, v8, kCFRunLoopCommonModes))
    {
      CFRelease(*(a1 + 160));
      *(a1 + 160) = 0;
    }
  }

  if (*(a1 + 176))
  {
    v9 = sub_100107858();
    CFRunLoopRemoveSource(v9, *(a1 + 176), kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(*(a1 + 176));
    CFRelease(*(a1 + 176));
  }

  v10 = *(a1 + 168);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 208);
  if (v11)
  {
    v12 = [v11 delegate];
    [*(a1 + 208) setDelegate:0];
  }

  sub_10061E50C(a1);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, a1);
  sub_10061E600(a1);

  *(a1 + 112) = 0;
  sub_1003C93BC(a1 + 216, *(a1 + 224));

  return sub_10061E2AC(a1);
}

void sub_10061E50C(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    v11 = v1;
    v12 = v2;
    if (qword_1025D4870 != -1)
    {
      sub_1018E669C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "unregistering for battery status changed", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E76FC();
    }

    v5 = *(a1 + 200);
    if (v5)
    {
      IOObjectRelease(v5);
      *(a1 + 200) = 0;
    }

    v6 = *(a1 + 192);
    if (v6)
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v6);
      if (RunLoopSource)
      {
        v8 = RunLoopSource;
        v9 = sub_100107858();
        CFRunLoopRemoveSource(v9, v8, kCFRunLoopDefaultMode);
      }

      IONotificationPortDestroy(*(a1 + 192));
      *(a1 + 192) = 0;
    }

    *(a1 + 184) = 0;
  }
}

void sub_10061E600(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1)
  {
    v3 = sub_100107858();
    SCPreferencesUnscheduleFromRunLoop(v1, v3, kCFRunLoopDefaultMode);
    CFRelease(*(a1 + 304));
    *(a1 + 304) = 0;
  }
}

void sub_10061E654(uint64_t a1)
{
  sub_10061E330(a1);

  operator delete();
}

uint64_t sub_10061E708(_BYTE *a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 18)
  {
    if (v2 == 20)
    {
      v3 = *(*a1 + 144);
      goto LABEL_11;
    }

    if (v2 == 19)
    {
      v3 = *(*a1 + 144);
      goto LABEL_11;
    }
  }

  else if (v2 == 7)
  {
    sub_10061E7F4(a1);
  }

  else if (v2 == 17 && a1[312] == 1)
  {
    v3 = *(*a1 + 144);
LABEL_11:
    v3();
  }

  return 1;
}

void sub_10061E7F4(uint64_t a1)
{
  if ((*(a1 + 184) & 1) == 0)
  {
    if (sub_100714F08())
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E669C();
      }

      v2 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "registering for battery status changed", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E78C4();
      }

      notification = 0;
      v3 = IONotificationPortCreate(kIOMainPortDefault);
      *(a1 + 192) = v3;
      if (v3)
      {
        RunLoopSource = IONotificationPortGetRunLoopSource(v3);
        if (RunLoopSource)
        {
          v5 = RunLoopSource;
          v6 = sub_100107858();
          CFRunLoopAddSource(v6, v5, kCFRunLoopDefaultMode);
          v7 = *(a1 + 192);
          v8 = IOServiceMatching("IOPMPowerSource");
          if (!IOServiceAddMatchingNotification(v7, "IOServiceFirstMatch", v8, sub_10061ED04, a1, &notification))
          {
            sub_10061EC70(a1, notification);
          }

          IOObjectRelease(notification);
        }

        else
        {
          IONotificationPortDestroy(*(a1 + 192));
          *(a1 + 192) = 0;
        }
      }

      *(a1 + 184) = 1;
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018E669C();
      }

      v9 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Attempting to register for battery status changes on a battery-less device, no-op", v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E77E0();
      }
    }
  }
}

uint64_t sub_10061E9B0(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 20)
  {
    v2 = *(*a1 + 144);
    goto LABEL_5;
  }

  if (*a2 == 19)
  {
    v2 = *(*a1 + 144);
LABEL_5:
    v2();
  }

  return 1;
}

void sub_10061EA48(uint64_t a1)
{
  v1 = *(a1 + 32);

  *(v1 + 256) = 0;
}

void sub_10061EA74(uint64_t a1, uint64_t a2, int a3)
{
  v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 280);
  v6 = [*(a1 + 112) reachability];
  v7 = v6;
  v8 = a3 << 30;
  if ((a3 & 0x40000) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = v9 & (v8 >> 31);
  v14[0] = v6;
  v14[1] = v9 & (v8 >> 31);
  v11 = *(a1 + 248);
  v15 = *(a1 + 248);
  v12 = v5 >= 0.0;
  if (v5 >= 3.0)
  {
    v12 = 0;
  }

  v16 = v12;
  sub_10061CBA8(a1, v10);
  if (qword_1025D4870 != -1)
  {
    sub_1018E669C();
  }

  v13 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290050;
    v19 = 2082;
    v18 = 0;
    v20 = "";
    v21 = 1026;
    v22 = v11;
    v23 = 2050;
    v24 = v10;
    v25 = 1026;
    v26 = a3;
    v27 = 2050;
    v28 = v5;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:reachability information, aboutToSleep:%{public}hhd, reachability:%{public, location:CLDaemonStatus_Type::Reachability}lld, reachabilityFlags:%{public}d, timeSinceWake_s:%{public}.09f}", buf, 0x32u);
  }

  if (v7 != v10)
  {
    *buf = 6;
    (*(*a1 + 152))(a1, buf, v14, 1, 0xFFFFFFFFLL, 0);
  }
}

uint64_t sub_10061EC2C(uint64_t a1)
{
  v1 = a1;
  v2 = sub_100040E24(a1);
  if (v1 == 4 && v2)
  {
    return 1;
  }

  LODWORD(result) = sub_10071C698(v2);
  if (v1 == 3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10061EC70(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      if (!IOServiceAddInterestNotification(*(a1 + 192), v5, "IOGeneralInterest", sub_1000E8BEC, a1, (a1 + 200)))
      {
        sub_1000E8E10(a1, v5);
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_10061ED04(uint64_t a1, int a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onMatchedBatteries", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a1;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onMatchedBatteries, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  v6 = [*(a1 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10061FE0C;
  v7[3] = &unk_102455A60;
  v7[4] = a1;
  v8 = a2;
  [v6 sync:v7];
  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

const __SCPreferences *sub_10061EF18(uint64_t a1)
{
  result = *(a1 + 304);
  if (result)
  {
    SCPreferencesSynchronize(result);
    result = SCPreferencesGetValue(*(a1 + 304), @"LowPowerMode");
    if (result)
    {
      v3 = result;
      v4 = CFGetTypeID(result);
      if (v4 == CFBooleanGetTypeID())
      {
        return (CFBooleanGetValue(v3) != 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10061EF88(uint64_t a1, int a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onRestrictedPowerMode", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onRestrictedPowerMode, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10061FE1C;
  v9[3] = &unk_102464210;
  v9[4] = a3;
  v9[5] = a1;
  v10 = a2;
  [v8 sync:v9];
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10061F260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_10061F35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10061F38C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &off_1024643B0;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_10061F470(_BYTE *result, void *a2)
{
  v9 = a2;
  if ((result[108] & 1) == 0)
  {
    v4 = *(result + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (result + 80);
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1018E68F8();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = result + 8;
        if (result[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E853C(result, a2);
      }
    }
  }
}

BOOL sub_10061F6A4(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1018E68F8();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_1018E874C(a1, a2);
      return 0;
    }
  }

  return result;
}

void sub_10061F918(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018E68F8();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E8978(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018E68F8();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E8854(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1018E690C();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1018E690C();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLDaemonStatus_Type::Notification, CLDaemonStatus_Type::NotificationData, char, char>::listClients() [Notification_T = CLDaemonStatus_Type::Notification, NotificationData_T = CLDaemonStatus_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

void sub_10061FCDC(uint64_t a1)
{
  sub_10061FF54(a1);

  operator delete();
}

void sub_10061FE4C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102464340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10061FED0(uint64_t **a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    if (v2[4] >= v3)
    {
      v4 = v2;
    }

    v2 = v2[v2[4] < v3];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < v4[4])
  {
    return 0;
  }

  sub_10045E8A0(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t sub_10061FF54(uint64_t a1)
{
  *a1 = &off_1024643B0;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_100620078(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

double sub_100620098(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 28) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

_DWORD *sub_1006200A8(_DWORD *result, int a2)
{
  ++*result;
  result[5] += a2;
  return result;
}

uint64_t sub_1006200C4(unsigned int *a1)
{
  memset(v19, 0, 44);
  result = sub_100620490(a1, v19);
  if ((result & 1) == 0)
  {
    v5 = a1[10];
    v6 = 0.0;
    v7 = 0.0;
    if (v5)
    {
      LODWORD(v3) = *a1;
      v3 = *&v3;
      v4 = v5;
      v7 = v3 / v5;
    }

    v8 = a1[4];
    v9 = a1[1];
    if (v8)
    {
      v3 = v9;
      v4 = v8;
      v6 = v9 / v8;
    }

    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    if (v9)
    {
      LODWORD(v3) = a1[2];
      LODWORD(v4) = a1[3];
      v11 = *&v3 / v9;
      v3 = *&v4;
      v12 = *&v4 / v9;
    }

    if (v8)
    {
      LODWORD(v3) = a1[5];
      v3 = *&v3;
      v4 = v8;
      v10 = v3 / v8;
    }

    if (v5)
    {
      LODWORD(v3) = a1[6];
      v4 = v5;
      v13 = *&v3 / v5;
      v14 = a1[7];
      v3 = v14;
      v15 = v14 / v4;
      if (v14)
      {
LABEL_12:
        LODWORD(v3) = a1[8];
        LODWORD(v4) = a1[9];
        v16 = *&v3 / v14;
        v17 = *&v4 / v14;
LABEL_15:
        v18 = v17;
        v20[0] = @"alsRequestResponseCount";
        v21[0] = [NSNumber numberWithUnsignedInt:*a1];
        v20[1] = @"alsRequestResponseScanBufferFractionUpperBound";
        v21[1] = [NSNumber numberWithDouble:v7];
        v20[2] = @"apLocationFoundCount";
        v21[2] = [NSNumber numberWithUnsignedInt:a1[1]];
        v20[3] = @"apLocationFoundFraction";
        v21[3] = [NSNumber numberWithDouble:v6];
        v20[4] = @"apLocationFoundInAlsCacheCount";
        v21[4] = [NSNumber numberWithUnsignedInt:a1[2]];
        v20[5] = @"apLocationFoundInAlsCacheFraction";
        v21[5] = [NSNumber numberWithDouble:v11];
        v20[6] = @"apLocationFoundInTilesCount";
        v21[6] = [NSNumber numberWithUnsignedInt:a1[3]];
        v20[7] = @"apLocationFoundInTilesFraction";
        v21[7] = [NSNumber numberWithDouble:v12];
        v20[8] = @"apLocationLookupCount";
        v21[8] = [NSNumber numberWithUnsignedInt:a1[4]];
        v20[9] = @"apLocationsInAlsRequestResponseCount";
        v21[9] = [NSNumber numberWithUnsignedInt:a1[5]];
        v20[10] = @"apLocationsInAlsRequestResponseFractionUpperBound";
        v21[10] = [NSNumber numberWithDouble:v10];
        v20[11] = @"emptyScanBufferLookupCount";
        v21[11] = [NSNumber numberWithUnsignedInt:a1[6]];
        v20[12] = @"emptyScanBufferLookupFraction";
        v21[12] = [NSNumber numberWithDouble:v13];
        v20[13] = @"scanBufferFoundApLocationCount";
        v21[13] = [NSNumber numberWithUnsignedInt:a1[7]];
        v20[14] = @"scanBufferFoundApLocationFraction";
        v21[14] = [NSNumber numberWithDouble:v15];
        v20[15] = @"scanBufferFoundApLocationInAlsCacheCount";
        v21[15] = [NSNumber numberWithUnsignedInt:a1[8]];
        v20[16] = @"scanBufferFoundApLocationInAlsCacheFraction";
        v21[16] = [NSNumber numberWithDouble:v16];
        v20[17] = @"scanBufferFoundApLocationInTilesCount";
        v21[17] = [NSNumber numberWithUnsignedInt:a1[9]];
        v20[18] = @"scanBufferFoundApLocationInTilesFraction";
        v21[18] = [NSNumber numberWithDouble:v18];
        v20[19] = @"scanBufferLookupCount";
        v21[19] = [NSNumber numberWithUnsignedInt:a1[10]];
        [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:20];
        result = AnalyticsSendEvent();
        *(a1 + 7) = 0u;
        *a1 = 0u;
        *(a1 + 1) = 0u;
        return result;
      }
    }

    else
    {
      v14 = a1[7];
      v13 = 0.0;
      v15 = 0.0;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_15;
  }

  return result;
}

void sub_100620A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100620F84(CFDictionaryRef *a1, uint64_t a2)
{
  sub_100005548(v53, *a1);
  v52 = 0;
  *(a2 + 68) = 0xFFFF;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = xmmword_101C75BF0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a2 + 104) = _Q1;
  *(a2 + 120) = _Q1;
  *(a2 + 136) = _Q1;
  *(a2 + 152) = 0;
  *(a2 + 156) = 0xBFF0000000000000;
  *(a2 + 172) = 0;
  *(a2 + 164) = 0;
  *(a2 + 180) = 0;
  *(a2 + 184) = 0xBFF0000000000000;
  *(a2 + 192) = 0x7FFFFFFF;
  *(a2 + 196) = 0;
  *(a2 + 212) = 0;
  *(a2 + 204) = 0;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a2 + 48) = -1;
  *(a2 + 220) = 0;
  *(a2 + 224) = 0x30000000BLL;
  *a2 = -1;
  *(a2 + 232) = -1;
  *(a2 + 56) = -1;
  *(a2 + 32) = v8;
  *(a2 + 264) = 0xFFFF;
  *(a2 + 268) = 0;
  *(a2 + 276) = 0;
  *(a2 + 284) = xmmword_101C75BF0;
  *(a2 + 300) = _Q1;
  *(a2 + 316) = _Q1;
  *(a2 + 332) = _Q1;
  *(a2 + 348) = 0;
  *(a2 + 376) = 0;
  *(a2 + 352) = 0xBFF0000000000000;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a2 + 380) = 0xBFF0000000000000;
  *(a2 + 388) = 0x7FFFFFFF;
  *(a2 + 416) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  if (qword_102658388 != -1)
  {
    sub_1018E8CEC();
  }

  if (byte_102658390 == 1)
  {
    sub_1004FFDC0(v53, "cdmaCellFromCellMonitorDict");
  }

  cf = 0;
  if ((sub_10006EB64(v53, kCTCellMonitorCellRadioAccessTechnology, &cf) & 1) == 0)
  {
    *(a2 + 224) = 11;
LABEL_23:
    v10 = 1;
    goto LABEL_24;
  }

  if (!cf)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018E8D14();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Unsupported kCTCellMonitorCellRadioAccessTechnology, no cfstring", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E8D3C(buf);
      LOWORD(v59.__r_.__value_.__l.__data_) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Unsupported kCTCellMonitorCellRadioAccessTechnology, no cfstring", &v59, 2);
      v40 = v39;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v39);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    goto LABEL_23;
  }

  *(a2 + 224) = sub_10006BCC0(cf);
  memset(&v59, 0, sizeof(v59));
  sub_100005A24(cf, &v59);
  v9 = *(a2 + 224) - 3;
  v10 = v9 < 3;
  if (v9 >= 3)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018E8D14();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v12 = &v59;
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v59.__r_.__value_.__r.__words[0];
      }

      v13 = *(a2 + 224);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446466;
      *(buf[0].__r_.__value_.__r.__words + 4) = v12;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 1026;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Unsupported kCTCellMonitorCellRadioAccessTechnology, it's not CDMA! %{public}s %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E8D3C(buf);
      v43 = &v59;
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v43 = v59.__r_.__value_.__r.__words[0];
      }

      v44 = *(a2 + 224);
      v54 = 136446466;
      v55 = v43;
      v56 = 1026;
      v57 = v44;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Unsupported kCTCellMonitorCellRadioAccessTechnology, it's not CDMA! %{public}s %{public}d", &v54, 18);
      v46 = v45;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v45);
      if (v46 != buf)
      {
        free(v46);
      }
    }
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

LABEL_24:
  sub_1000052CC(v53, kCTCellMonitorBandClass, (a2 + 48));
  sub_1000052CC(v53, kCTCellMonitorBaseStationId, (a2 + 44));
  if (sub_1000052CC(v53, kCTCellMonitorBaseStationLat, &v52 + 1) && sub_1000052CC(v53, kCTCellMonitorBaseStationLong, &v52))
  {
    *(a2 + 88) = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v16 = SHIDWORD(v52);
    *(a2 + 144) = Current;
    v17 = v52 * 0.0000694444444;
    *(a2 + 72) = v16 * 0.0000694444444;
    *(a2 + 80) = v17;
    *(a2 + 200) = 1;
  }

  v50 = 0;
  if (sub_10006EB64(v53, kCTCellMonitorCellType, &v50))
  {
    if (v50)
    {
      *(a2 + 228) = sub_10006F020(v50);
      memset(buf, 0, 24);
      sub_100005A24(v50, buf);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018E8D14();
      }

      v18 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "Unsupported kCTCellMonitorCellType, no cfstring", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E8D3C(buf);
        LOWORD(v59.__r_.__value_.__l.__data_) = 0;
        LODWORD(v47) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Unsupported kCTCellMonitorCellType, no cfstring", &v59, *&v47);
        v42 = v41;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v41);
        if (v42 != buf)
        {
          free(v42);
        }
      }
    }
  }

  sub_1000052CC(v53, kCTCellMonitorChannelNumber, (a2 + 52));
  sub_1000052CC(v53, kCTCellMonitorMCC, a2);
  sub_1000052CC(v53, kCTCellMonitorMNC, (a2 + 232));
  sub_1000052CC(v53, kCTCellMonitorNID, (a2 + 36));
  sub_1000052CC(v53, kCTCellMonitorPNOffset, (a2 + 56));
  sub_1000052CC(v53, kCTCellMonitorSID, (a2 + 32));
  sub_1000052CC(v53, kCTCellMonitorZoneId, (a2 + 40));
  sub_100005050(v53, kCTCellMonitorSectorId, (a2 + 240));
  if (sub_1000052CC(v53, kCTCellMonitorSectorLat, &v52 + 1) && sub_1000052CC(v53, kCTCellMonitorSectorLong, &v52) && v52)
  {
    *(a2 + 284) = 0;
    v19 = CFAbsoluteTimeGetCurrent();
    v20 = SHIDWORD(v52);
    *(a2 + 340) = v19;
    v21 = v52 * 0.0000694444444;
    *(a2 + 268) = v20 * 0.0000694444444;
    *(a2 + 276) = v21;
    *(a2 + 396) = 1;
  }

  sub_1000052CC(v53, kCTCellMonitorLtmOffset, (a2 + 420));
  sub_1000052CC(v53, kCTCellMonitorDayLightSaving, (a2 + 424));
  v48 = 0.0;
  v49 = 0.0;
  if (sub_100023B78(v53, kCTCellMonitorEcio, &v49))
  {
    *(a2 + 60) = v49;
    if (qword_1025D48A0 != -1)
    {
      sub_1018E8D14();
    }

    v22 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a2 + 60);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v23;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2048;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = v49;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "kCTCellMonitorEcio: %d, %.1lf", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E8D3C(buf);
      v24 = *(a2 + 60);
      LODWORD(v59.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(v59.__r_.__value_.__r.__words[0]) = v24;
      LOWORD(v59.__r_.__value_.__r.__words[1]) = 2048;
      *(&v59.__r_.__value_.__r.__words[1] + 2) = v49;
      LODWORD(v47) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "kCTCellMonitorEcio: %d, %.1lf", &v59, v47);
      v26 = v25;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  else
  {
    *(a2 + 60) = 0;
  }

  if (sub_100023B78(v53, kCTCellMonitorEcioFiltered, &v48))
  {
    *(a2 + 64) = v48;
    if (qword_1025D48A0 != -1)
    {
      sub_1018E8D14();
    }

    v27 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a2 + 64);
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v28;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2048;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = v48;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "kCTCellMonitorEcioFiltered: %d, %.1lf", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E8D3C(buf);
      v29 = *(a2 + 64);
      LODWORD(v59.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(v59.__r_.__value_.__r.__words[0]) = v29;
      LOWORD(v59.__r_.__value_.__r.__words[1]) = 2048;
      *(&v59.__r_.__value_.__r.__words[1] + 2) = v48;
      LODWORD(v47) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "kCTCellMonitorEcioFiltered: %d, %.1lf", &v59, v47);
      v31 = v30;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  else
  {
    *(a2 + 64) = 0;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E8D14();
  }

  v32 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100621C1C(a2, buf);
    v33 = (buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? buf : buf[0].__r_.__value_.__r.__words[0];
    LODWORD(v59.__r_.__value_.__l.__data_) = 136315138;
    *(v59.__r_.__value_.__r.__words + 4) = v33;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "CELL_LOC: got cell from dict, %s", &v59, 0xCu);
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D3C(buf);
    v35 = qword_1025D48A8;
    sub_100621C1C(a2, &v59);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v59;
    }

    else
    {
      v36 = v59.__r_.__value_.__r.__words[0];
    }

    v54 = 136315138;
    v55 = v36;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v35, 2, "CELL_LOC: got cell from dict, %s", &v54);
    v38 = v37;
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::cdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::CdmaCell &)", "%s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  sub_100005DA4();
  return v10;
}

void sub_100621BA8(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  sub_100005DA4();
  _Unwind_Resume(a1);
}

uint64_t sub_100621C1C@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  sub_10003848C(v30);
  v4 = sub_100038730(&v31, "[", 1);
  sub_100038730(v4, " MCC=", 5);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, " Derived=", 9);
  v6 = std::ostream::operator<<();
  sub_100038730(v6, " AND SID=", 9);
  v7 = std::ostream::operator<<();
  sub_100038730(v7, " AND NID=", 9);
  v8 = std::ostream::operator<<();
  sub_100038730(v8, " AND BSID=", 10);
  v9 = std::ostream::operator<<();
  sub_100038730(v9, " AND ZONEID=", 12);
  v10 = std::ostream::operator<<();
  sub_100038730(v10, " AND PNOFFSET=", 14);
  v11 = std::ostream::operator<<();
  sub_100038730(v11, " AND RSCP=", 10);
  v12 = std::ostream::operator<<();
  sub_100038730(v12, " AND ECN0=", 10);
  v13 = std::ostream::operator<<();
  sub_100038730(v13, " AND BANDCLASS=", 15);
  v14 = std::ostream::operator<<();
  sub_100038730(v14, " AND CHANNEL=", 13);
  v15 = std::ostream::operator<<();
  v16 = sub_100038730(v15, " AND SectorID='", 15);
  v19 = *(a1 + 30);
  v18 = a1 + 60;
  v17 = v19;
  v20 = *(v18 + 23);
  if (v20 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  if (v20 >= 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = *(v18 + 1);
  }

  v23 = sub_100038730(v16, v21, v22);
  v24 = sub_100038730(v23, "'", 1);
  sub_100038730(v24, " ]", 2);
  sub_100073518(v30, __p);
  if (v29 >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  sub_10000EC00(a2, v25);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v31 = v26;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100621F40(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_100621F84(CFDictionaryRef *a1, _DWORD *a2)
{
  sub_100005548(v13, *a1);
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(a2 + 1) = v3;
  *a2 = v3;
  if (qword_102658388 != -1)
  {
    sub_1018E8CEC();
  }

  if (byte_102658390 == 1)
  {
    sub_1004FFDC0(v13, "gsmCellFromCellMonitorDict");
  }

  sub_1000052CC(v13, kCTCellMonitorMCC, a2);
  sub_1000052CC(v13, kCTCellMonitorMNC, a2 + 1);
  sub_1000052CC(v13, kCTCellMonitorLAC, a2 + 2);
  sub_1000052CC(v13, kCTCellMonitorCellId, a2 + 3);
  sub_1000052CC(v13, kCTCellMonitorUARFCN, a2 + 4);
  sub_1000052CC(v13, kCTCellMonitorARFCN, a2 + 4);
  sub_1000052CC(v13, kCTCellMonitorPSC, a2 + 5);
  sub_1000052CC(v13, kCTCellMonitorSCN, a2 + 5);
  sub_1000052CC(v13, kCTCellMonitorRSCP, a2 + 6);
  sub_1000052CC(v13, kCTCellMonitorECN0, a2 + 7);
  v4 = 0;
  if (*a2 >= 1 && (a2[1] & 0x80000000) == 0)
  {
    v4 = a2[3] >= 0;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E8D14();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_10016B7CC(__p);
    v6 = v22 >= 0 ? __p : __p[0];
    *buf = 67109378;
    *&buf[4] = v4;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CELL_LOC: got cell from dict, result, %d, %s", buf, 0x12u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D3C(__p);
    v8 = qword_1025D48A8;
    sub_10016B7CC(buf);
    if (v17 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    v18[0] = 67109378;
    v18[1] = v4;
    v19 = 2080;
    v20 = v9;
    LODWORD(v12) = 18;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v8, 2, "CELL_LOC: got cell from dict, result, %d, %s", v18, v12);
    v11 = v10;
    if (v17 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::gsmCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::Cell &)", "%s\n", v11);
    if (v11 != __p)
    {
      free(v11);
    }
  }

  sub_100005DA4();
  return v4;
}

uint64_t sub_10062233C@<X0>(void *a2@<X8>)
{
  sub_10003848C(v21);
  v3 = sub_100038730(&v22, "[", 1);
  sub_100038730(v3, " MCC=", 5);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, " AND MNC=", 9);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, " AND TAC=", 9);
  v6 = std::ostream::operator<<();
  sub_100038730(v6, " AND CI=", 8);
  v7 = std::ostream::operator<<();
  sub_100038730(v7, " AND NRARFCN=", 13);
  v8 = std::ostream::operator<<();
  sub_100038730(v8, " AND PID=", 9);
  v9 = std::ostream::operator<<();
  sub_100038730(v9, " AND RSCP=", 10);
  v10 = std::ostream::operator<<();
  sub_100038730(v10, " AND ECN0=", 10);
  v11 = std::ostream::operator<<();
  sub_100038730(v11, " AND BANDINFO=", 14);
  v12 = std::ostream::operator<<();
  sub_100038730(v12, " AND SCS=", 9);
  v13 = std::ostream::operator<<();
  sub_100038730(v13, " AND GSCN=", 10);
  v14 = std::ostream::operator<<();
  sub_100038730(v14, " AND BANDWIDTH=", 15);
  v15 = std::ostream::operator<<();
  sub_100038730(v15, " ]", 2);
  sub_100073518(v21, __p);
  if (v20 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  sub_10000EC00(a2, v16);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = v17;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100622624(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_100622668(CFDictionaryRef *a1, _DWORD *a2)
{
  sub_100005548(v13, *a1);
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(a2 + 1) = v3;
  *a2 = v3;
  if (qword_102658388 != -1)
  {
    sub_1018E8CEC();
  }

  if (byte_102658390 == 1)
  {
    sub_1004FFDC0(v13, "scdmaCellFromCellMonitorDict");
  }

  sub_1000052CC(v13, kCTCellMonitorMCC, a2);
  sub_1000052CC(v13, kCTCellMonitorMNC, a2 + 1);
  sub_1000052CC(v13, kCTCellMonitorLAC, a2 + 2);
  sub_1000052CC(v13, kCTCellMonitorCellId, a2 + 3);
  sub_1000052CC(v13, kCTCellMonitorUARFCN, a2 + 4);
  sub_1000052CC(v13, kCTCellMonitorARFCN, a2 + 4);
  sub_1000052CC(v13, kCTCellMonitorPSC, a2 + 5);
  sub_1000052CC(v13, kCTCellMonitorSCN, a2 + 5);
  sub_1000052CC(v13, kCTCellMonitorRSCP, a2 + 6);
  sub_1000052CC(v13, kCTCellMonitorECN0, a2 + 7);
  v4 = 0;
  if (*a2 >= 1 && (a2[1] & 0x80000000) == 0)
  {
    v4 = a2[3] >= 0;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E8D14();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_10016B7CC(__p);
    v6 = v22 >= 0 ? __p : __p[0];
    *buf = 67109378;
    *&buf[4] = v4;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CELL_LOC: got cell from dict, result, %d, %s", buf, 0x12u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D3C(__p);
    v8 = qword_1025D48A8;
    sub_10016B7CC(buf);
    if (v17 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    v18[0] = 67109378;
    v18[1] = v4;
    v19 = 2080;
    v20 = v9;
    LODWORD(v12) = 18;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v8, 2, "CELL_LOC: got cell from dict, result, %d, %s", v18, v12);
    v11 = v10;
    if (v17 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::scdmaCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::ScdmaCell &)", "%s\n", v11);
    if (v11 != __p)
    {
      free(v11);
    }
  }

  sub_100005DA4();
  return v4;
}

void sub_100622A20(id a1)
{
  sub_10001CAF4(&v2);
  v4 = 0;
  v1 = sub_10001CB4C(v2, "printCellMonitorCSV", &v4, 0xFFFFFFFFLL);
  byte_102658390 = v1 & v4;
  if (v3)
  {
    sub_100008080(v3);
  }
}

void sub_100622A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100622ACC(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 32))(a2) && (*(*a2 + 48))(a2) && (*(*a2 + 40))(a2))
  {
    if ((*(a2 + 3128) & 1) == 0)
    {
      sub_100173BA0();
    }

    v4 = cbrtf(fmaxf(*(a2 + 1048), 0.0));
    v5 = powf(*(a2 + 4532), 0.66667);
    v6 = 0;
    v7 = *(a2 + 1056);
    v31[0] = *(a2 + 1036);
    v31[1] = v7;
    v8 = *(a2 + 1296);
    v31[2] = v4;
    v31[3] = v8;
    v9 = *(a2 + 1544);
    v31[4] = *(a2 + 1340);
    v31[5] = v9;
    v10 = *(a2 + 1740);
    v31[6] = *(a2 + 1720);
    v31[7] = v10;
    v11 = *(a2 + 1884);
    v31[8] = *(a2 + 1808);
    v31[9] = v11;
    v12 = *(a2 + 2064);
    v31[10] = *(a2 + 1904);
    v31[11] = v12;
    v13 = *(a2 + 2096);
    v31[12] = *(a2 + 2076);
    v31[13] = v13;
    v14 = *(a2 + 2384);
    v31[14] = *(a2 + 2236);
    v31[15] = v14;
    v15 = *(a2 + 2664);
    v31[16] = *(a2 + 2612);
    v31[17] = v15;
    v16 = *(a2 + 3056);
    v31[18] = *(a2 + 3004);
    v31[19] = v16;
    v17 = &qword_101C81A68;
    v18 = 4.32357269;
    v31[20] = *(a2 + 4528);
    v31[21] = v5;
    do
    {
      v19 = *(v17 - 1);
      v20 = v17[1];
      v21 = 0.0;
      if (v20 > 2.22044605e-16 && v19 > 2.22044605e-16)
      {
        v21 = v19 * ((v31[v6] - *v17) / v20);
      }

      v18 = v18 + v21;
      ++v6;
      v17 += 3;
    }

    while (v6 != 22);
    v30 = 0;
    v23 = v18;
    v29 = v23;
    if (v23 <= 0.0)
    {
      v24 = &v30;
    }

    else
    {
      v24 = &v29;
    }

    sub_100623A2C((a1 + 24), v24);
    *(a1 + 8) = 1;
    v25 = a1 + 8;
    sub_100457CE4(v25);
    v26 = *(v25 + 4);
    v27 = dword_100000000;
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  return v26 | v27;
}

unint64_t sub_100622D30(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 32))(a2) && (*(*a2 + 48))(a2) && (*(*a2 + 40))(a2))
  {
    if ((*(a2 + 3128) & 1) == 0)
    {
      sub_100173BA0();
    }

    v4 = 0;
    v5 = *(a2 + 1052);
    v6.f32[0] = sqrtf(fmaxf(*(a2 + 1056), 0.0));
    v6.f32[1] = *(a2 + 4528) * v5.f32[0];
    v30[0] = vcvtq_f64_f32(v5);
    v30[1] = vcvtq_f64_f32(v6);
    v7 = *(a2 + 1188);
    v31 = *(a2 + 1180);
    v32 = v7;
    v8 = *(a2 + 1952);
    v33 = *(a2 + 1816);
    v34 = v8;
    v9 = *(a2 + 2076);
    v35 = *(a2 + 2064);
    v36 = v9;
    v10 = *(a2 + 2260);
    v37 = *(a2 + 2096);
    v38 = v10;
    v11 = *(a2 + 2384);
    v39 = *(a2 + 2272);
    v40 = v11;
    v12 = *(a2 + 2556);
    v41 = *(a2 + 2548);
    v42 = v12;
    v13 = *(a2 + 2676);
    v43 = *(a2 + 2596);
    v44 = v13;
    v14 = *(a2 + 2988);
    v45 = *(a2 + 2844);
    v46 = v14;
    v15 = *(a2 + 3056);
    v47 = *(a2 + 3040);
    v48 = v15;
    v16 = &qword_101C81C78;
    v49 = *(a2 + 3104);
    v17 = 2.80570798;
    do
    {
      v18 = *(v16 - 1);
      v19 = v16[1];
      v20 = 0.0;
      if (v19 > 2.22044605e-16 && v18 > 2.22044605e-16)
      {
        v20 = v18 * ((*(v30 + v4) - *v16) / v19);
      }

      v17 = v17 + v20;
      v4 += 8;
      v16 += 3;
    }

    while (v4 != 184);
    v29 = 0;
    v22 = v17;
    v28 = v22;
    if (v22 <= 0.0)
    {
      v23 = &v29;
    }

    else
    {
      v23 = &v28;
    }

    sub_100623A2C((a1 + 60), v23);
    *(a1 + 44) = 1;
    v24 = a1 + 44;
    sub_100457CE4(v24);
    v25 = *(v24 + 4);
    v26 = dword_100000000;
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  return v25 | v26;
}

unint64_t sub_100622F8C(uint64_t a1, float *a2, double *a3, double *a4)
{
  v8 = a2[1133];
  v9 = a2[1132];
  v10 = sub_100622ACC(a1, a2);
  v11 = sub_100622D30(a1, a2);
  v13 = v11;
  v14 = *&v11;
  v15 = 0.0;
  if ((v10 & 0x100000000) != 0 && (v11 & 0x100000000) != 0)
  {
    LODWORD(v12) = v10;
    v15 = sub_10111AF98(v12, *&v11, v8);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(*a2 + 32))(a2);
  v18 = -1.0;
  v19 = 2.1;
  v20 = -1.0;
  v21 = -1.0;
  if (v17)
  {
    v22 = 0.0;
    if ((v13 & 0x100000000) != 0)
    {
      v22 = v14;
    }

    if (a2[262] >= v22)
    {
      v23 = a2[262];
    }

    else
    {
      v23 = v22;
    }

    v24 = sub_10111AF1C(a2[264], v23, a2[263] * 60.0, v9);
    v19 = sub_10111AF60(v24, v23, v8);
    v21 = v24;
    v20 = v23;
    v18 = v19;
  }

  v25 = v20;
  if (v16)
  {
    v19 = v15;
  }

  v26 = a2[263] == 0.0;
  if (a2[262] < 0.4)
  {
    v26 = 1;
  }

  v27 = a2[264] < 40.0;
  v28 = v26 && v27;
  if (v26 && v27)
  {
    v29 = 2.1;
  }

  else
  {
    v29 = v19;
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018E8DC4();
  }

  v30 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219776;
    v31 = *&v10;
    v32 = -1.0;
    if ((v10 & dword_100000000) == 0)
    {
      v31 = -1.0;
    }

    v64 = v31;
    v65 = 2048;
    if ((v13 & 0x100000000) != 0)
    {
      v33 = v14;
    }

    else
    {
      v33 = -1.0;
    }

    v66 = v33;
    v67 = 2048;
    if (v16)
    {
      v32 = v15;
    }

    v68 = v32;
    v69 = 2048;
    v70 = v18;
    v71 = 2048;
    v72 = v21;
    v73 = 2048;
    v74 = v25;
    v75 = 2048;
    v76 = v29;
    v77 = 1024;
    v78 = v28;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "RowingPhoneWorkRate,speedML,%f,amplitudeML,%f,metsDM,%f,metsLegacy,%f,speedLegacy,%f,ampLegacy,%f,finalMets,%f,notRowing,%d", buf, 0x4Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018E8DD8();
    }

    v35 = *&v10;
    v41 = *&v10;
    v47 = 134219776;
    v42 = -1.0;
    if ((v10 & dword_100000000) == 0)
    {
      v41 = -1.0;
    }

    v48 = v41;
    v49 = 2048;
    v34 = HIDWORD(v13);
    v36 = v14;
    v43 = *&v36;
    if ((v13 & 0x100000000) == 0)
    {
      v43 = 0xBFF0000000000000;
    }

    v50 = v43;
    v51 = 2048;
    if (v16)
    {
      v42 = v15;
    }

    v52 = v42;
    v53 = 2048;
    v54 = v18;
    v55 = 2048;
    v56 = v21;
    v57 = 2048;
    v58 = v25;
    v59 = 2048;
    v60 = v29;
    v61 = 1024;
    v62 = v28;
    LODWORD(v46) = 78;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "RowingPhoneWorkRate,speedML,%f,amplitudeML,%f,metsDM,%f,metsLegacy,%f,speedLegacy,%f,ampLegacy,%f,finalMets,%f,notRowing,%d", COERCE_DOUBLE(&v47), v46);
    v45 = v44;
    sub_100152C7C("Generic", 1, 0, 2, "std::optional<float> CLCalorieRowingModelPhone::computeWorkRate(const CLNatalieModelInput &, double &, double &)", "%s\n", v44);
    if (v45 != buf)
    {
      free(v45);
    }
  }

  else
  {
    v34 = HIDWORD(v13);
    v35 = *&v10;
    v36 = v14;
  }

  v37 = 0.0;
  if ((v10 & dword_100000000) != 0)
  {
    v38 = v35;
  }

  else
  {
    v38 = 0.0;
  }

  *a3 = v38;
  if (v34)
  {
    v37 = v36;
  }

  *a4 = v37;
  v39 = fmaxf(v29, 2.1);
  if (v16 | v17)
  {
    return LODWORD(v39) | dword_100000000;
  }

  else
  {
    return 0;
  }
}

void sub_1006233DC(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018E8DC4();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Keeping source active, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8E00(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_100623A80(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_100623B10(a1, 0, *(a1 + 5));
  }
}

uint64_t sub_100623538(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_1018E8DC4();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v29 = v11;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v5;
      v34 = 1024;
      v35 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018E8DD8();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      LODWORD(v20) = 30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", &v21, v20, 67109888, *v22);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryReducedEmbeddings>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCalorimetryReducedEmbeddings>]", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_1018E8DC4();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v29 = v15;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v12;
      v34 = 1024;
      v35 = v13 & 1;
      v36 = 1024;
      v37 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018E8DD8();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      LODWORD(v20) = 36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", &v21, v20, 67110144, *v22, *&v22[8]);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryReducedEmbeddings>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCalorimetryReducedEmbeddings>]", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

unsigned __int16 *sub_100623A2C(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[2 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

uint64_t sub_100623A80(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  if ((v4 & 1) == 0)
  {
    if ((*(*a1 + 64))(a1))
    {
      *(a1 + 72) = v2;
      v4 = 1;
      *(a1 + 80) = 1;
      *(a1 + 120) = 0;
    }

    else
    {
      v4 = *(a1 + 80);
    }
  }

  v5 = v2 + v3;
  if (*(a1 + 88) >= v2 + v3)
  {
    v5 = *(a1 + 88);
  }

  *(a1 + 88) = v5;
  return v4 & 1;
}

void sub_100623B10(uint64_t *a1, uint64_t a2, double a3)
{
  v3 = a2;
  if (qword_1025D4230 != -1)
  {
    sub_1018E8DC4();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 12);
    v8 = *(a1 + 6);
    v9 = *(a1 + 28);
    if (v8)
    {
      v10 = *(a1 + 28);
      if (v8 == 1)
      {
        v9 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    *buf = 67110144;
    v28 = v7;
    v29 = 1024;
    v30 = v10;
    v31 = 1024;
    v32 = v9;
    v33 = 2048;
    v34 = a3;
    v35 = 1024;
    v36 = v3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Requesting source active, legacyMode, %d, dataProviderMode, %d, duration, %f, hardReset, %d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018E8DD8();
    }

    v17 = *(a1 + 6);
    v18 = *(a1 + 28);
    if (v17)
    {
      v19 = *(a1 + 28);
      if (v17 == 1)
      {
        v18 = 1;
      }
    }

    else
    {
      v19 = 1;
    }

    LOWORD(v23) = 1024;
    *(&v23 + 2) = v19;
    HIWORD(v23) = 1024;
    v24 = a3;
    v25 = 1024;
    v26 = v3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Requesting source active, legacyMode, %d, dataProviderMode, %d, duration, %f, hardReset, %d", &v22, 36, 67110144, v23, v18);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 2, "void CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryReducedEmbeddings>>::requestActive(CFTimeInterval, BOOL) [LegacySourceT = CLNatalieInput<CLCalorimetryReducedEmbeddings>]", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  v11 = *(a1 + 6);
  if (!v11 || *(a1 + 28) == 1)
  {
    v12 = *a1;
    Current = CFAbsoluteTimeGetCurrent();
    sub_100623DF0(v12, v3, Current, a3);
    v11 = *(a1 + 6);
  }

  if (v11 == 1 || *(a1 + 28) == 1)
  {
    if ((a1[8] & 1) == 0)
    {
      sub_101200484(a1[1], *(a1 + 12));
    }

    v14 = sub_1000081AC();
    if (v3)
    {
      v15 = v14 + a3;
    }

    else
    {
      v16 = 0.0;
      if (*(a1 + 64) == 1)
      {
        v16 = *(a1 + 7);
      }

      v15 = v14 + a3;
      if (v16 >= v15)
      {
        v15 = v16;
      }
    }

    *(a1 + 7) = v15;
    *(a1 + 64) = 1;
  }
}

uint64_t sub_100623DF0(uint64_t a1, int a2, double a3, double a4)
{
  if ((*(a1 + 80) & 1) == 0 && (*(*a1 + 64))(a1))
  {
    *(a1 + 72) = a3;
    *(a1 + 80) = 1;
    *(a1 + 120) = 0;
  }

  v8 = a3 + a4;
  if (!a2 && *(a1 + 88) >= v8)
  {
    v8 = *(a1 + 88);
  }

  *(a1 + 88) = v8;
  return *(a1 + 80);
}

double sub_100623E84(uint64_t a1)
{
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 356) = 0;
  *(a1 + 360) = 0;
  *(a1 + 516) = 0;
  *(a1 + 520) = 0;
  *(a1 + 676) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 25) = 0u;
  return result;
}

void sub_100623EE0()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

uint64_t sub_100623F98(uint64_t a1)
{
  v3 = 0x100000003;
  v4 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_100624028(a1, &v3, &off_102464580);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100624000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100624028(uint64_t a1, uint64_t *a2, const char **a3)
{
  v5 = sub_1006062D8(a1, a2);
  if (sub_100023B68(v5))
  {
    sub_100608EC8(a1, "Status", a3, 0, 0);
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E918C();
    }

    v6 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Fence: No access to state DB", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E91A0(buf);
      v10[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 17, "Fence: No access to state DB", v10, 2);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 0, "CLFenceMonitorDatabase::CLFenceMonitorDatabase(const CLSqliteDatabase::SqliteProperties &, const CLSqliteDatabase::ColumnInfo *)", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return a1;
}

uint64_t sub_1006241D4(uint64_t a1, double *a2)
{
  if (sub_100023B68(a1))
  {
    v4 = sub_100BC97B0(a2);
    if (qword_1025D4640 != -1)
    {
      sub_1018E918C();
    }

    v5 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      sub_100BC8988(a2, __p);
      v6 = v26 >= 0 ? __p : *__p;
      *buf = 134283779;
      *&buf[4] = v4;
      v19 = 2081;
      v20 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Fence: state remove, %{private}lld, %{private}s", buf, 0x16u);
      if (v26 < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_1018E92C0();
      }

      v14 = off_1025D4648;
      sub_100BC8988(a2, buf);
      if (v21 >= 0)
      {
        v15 = buf;
      }

      else
      {
        v15 = *buf;
      }

      v22[0] = 134283779;
      *&v22[1] = v4;
      v23 = 2081;
      v24 = v15;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v14, 2, "Fence: state remove, %{private}lld, %{private}s", v22, 22);
      v17 = v16;
      if (v21 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitorDatabase::removeFenceState(const CLFenceManager_Type::Fence &)", "%s\n", v17);
      if (v17 != __p)
      {
        free(v17);
      }
    }

    sub_10003848C(buf);
    v7 = sub_100038730((&v20 + 2), "DELETE FROM ", 12);
    v8 = sub_100038730(v7, "Status", 6);
    v9 = sub_100038730(v8, " WHERE ", 7);
    v10 = sub_100038730(v9, "Key", 3);
    sub_100038730(v10, "=?", 2);
    sub_100073518(buf, __p);
    if (v26 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    sub_1000388D8(a1, v11);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E918C();
  }

  v12 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    *__p = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Fence: state No access to DB", __p, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018E93C4();
  }

  return 0;
}

void sub_100624838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (v56)
  {
    (*(*v56 + 8))(v56, a2, a3, a4, a5, a6, a7, a8);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1006248BC@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  sub_10003848C(v9);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    do
    {
      sub_100BC97B0(v4);
      if (v6)
      {
        sub_100038730(&v10, ", ", 2);
      }

      std::ostream::operator<<();
      v4 += 248;
      v6 = 1;
    }

    while (v4 != v5);
  }

  sub_100073518(v9, a2);
  v10 = v7;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100624A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_100624AC8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100023B68(a1);
  if (v4)
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E918C();
    }

    v5 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1] - *a2) >> 3);
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Fence: state scrub, remaining, %{public}lu", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E957C(a2);
    }

    sub_1006248BC(a2, &buf);
    *(&v30.__r_.__value_.__s + 23) = 12;
    strcpy(&v30, "DELETE FROM ");
    v7 = std::string::append(&v30, "Status", 6uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v29 = 7;
    strcpy(__s, " WHERE ");
    v9 = std::string::append(&v31, __s, 7uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v32, "Key", 3uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v27 = 9;
    strcpy(v26, " NOT IN (");
    v13 = std::string::append(&v33, v26, 9uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if ((v39 & 0x80u) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf;
    }

    if ((v39 & 0x80u) == 0)
    {
      v16 = v39;
    }

    else
    {
      v16 = *(&buf + 1);
    }

    v17 = std::string::append(&v34, p_buf, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v25 = 1;
    LOWORD(__p) = 41;
    v19 = std::string::append(&v35, &__p, 1uLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v37 = v19->__r_.__value_.__r.__words[2];
    v36 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v25 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v29 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (v37 >= 0)
    {
      v21 = &v36;
    }

    else
    {
      v21 = v36;
    }

    sub_1000388D8(a1, v21);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E918C();
  }

  v22 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "Fence: state can't scrub DB", &buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018E94A0();
  }

  return v4;
}

void sub_100624F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 89) < 0)
  {
    operator delete(*(v52 - 112));
  }

  if (*(v52 - 57) < 0)
  {
    operator delete(*(v52 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062500C(uint64_t a1, uint64_t *a2)
{
  if (sub_100023B68(a1))
  {
    sub_100BC97B0(a2);
    *(&v25.__r_.__value_.__s + 23) = 7;
    strcpy(&v25, "SELECT ");
    v4 = std::string::append(&v25, "State", 5uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v24 = 6;
    strcpy(__s, " FROM ");
    v6 = std::string::append(&v26, __s, 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v27, "Status", 6uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v22 = 7;
    strcpy(v21, " WHERE ");
    v10 = std::string::append(&v28, v21, 7uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v31, "Key", 3uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v20 = 2;
    strcpy(v19, "=?");
    v14 = std::string::append(&v32, v19, 2uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v30 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v20 < 0)
    {
      operator delete(*v19);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(*v21);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (v24 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (v30 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    sub_1000388D8(a1, v16);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E918C();
  }

  v17 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v32.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "Fence: state No access to DB", &v32, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018E96B8();
  }

  return 0xFFFFFFFFLL;
}

void sub_100625A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v40)
  {
    (*(*v40 + 8))(v40, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_100625C4C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, float a5, float a6, float a7)
{
  v7 = a2;
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v12 = *a1;
  v11 = a1[1];
  v80 = a4;
  if (*a1 == v11)
  {
    v13 = 0;
    v28 = 0.0;
    v29 = 0.0;
  }

  else
  {
    v13 = 0;
    v86 = a5;
    v83 = (a6 / (a5 * a5)) * -0.003134 + 1.06246 + a7 * 0.003425 + (a7 * a7) * -0.00004952;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      v16 = *(v12 + 8);
      if (v16 < 2.33333325)
      {
        v17 = *(v12 + 16);
        if (v17 <= 1)
        {
          v17 = 1;
        }

        v18 = v17 - 1;
        if (v17 != 1)
        {
          v19 = *(v12 + 24);
          if (qword_1025D4430 != -1)
          {
            sub_1018E9794();
          }

          v20 = v83 * ((fmax(fmin(v16, 2.16666675), 1.16666663) * 0.266799986 + 0.510867) * 0.414999992 * v86);
          v21 = qword_1025D4438;
          if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
          {
            v22 = *(v12 + 16);
            v23 = *(v12 + 24);
            *buf = 134284289;
            *v97 = v16;
            *&v97[8] = 1025;
            *&v97[10] = v22;
            v98 = 2049;
            v99 = v23;
            v100 = 2049;
            v101 = v20;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "Type,WatchCals,binCadenceCenter,%{private}.2f,binState,%{private}d,binValue,%{private}.3f,predictedStrideLength,%{private}.3f", buf, 0x26u);
          }

          v14 = v14 + v18 * (v19 - v20);
          v13 = (v13 + v18);
          v15 = v15 + v18 * v16;
          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 != -1)
            {
              sub_1018E9794();
            }

            v24 = *(v12 + 16);
            v25 = *(v12 + 24);
            v88 = 134284289;
            v89 = v16;
            v90 = 1025;
            v91 = v24;
            v92 = 2049;
            v93 = v25;
            v94 = 2049;
            v95 = v20;
            LODWORD(v74) = 38;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 2, "Type,WatchCals,binCadenceCenter,%{private}.2f,binState,%{private}d,binValue,%{private}.3f,predictedStrideLength,%{private}.3f", &v88, v74);
            v27 = v26;
            sub_100152C7C("Generic", 1, 0, 2, "double CLPredictedWalkDistanceUtils::calcCadenceStrideLengthOffset(const std::vector<P6MWDStrideCal> &, float, float, float, const std::vector<P6MWDStrideCal> &, const std::vector<WalkingSpeedStrideCal> &, StrideCalInfo &)", "%s\n", v26);
            if (v27 != buf)
            {
              free(v27);
            }
          }
        }
      }

      v12 += 32;
    }

    while (v12 != v11);
    if (v13 <= 0)
    {
      v28 = 0.0;
      v29 = 0.0;
    }

    else
    {
      v28 = v14 / v13;
      v29 = v15 / v13;
    }

    v7 = a2;
    a4 = v80;
    v8 = a7;
    v10 = a5;
    v9 = a6;
  }

  *a4 = v13;
  *(a4 + 16) = v28;
  *(a4 + 48) = v29;
  if (qword_1025D4430 != -1)
  {
    sub_1018E9794();
  }

  v30 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v97 = v13;
    *&v97[4] = 2048;
    *&v97[6] = v28;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "numCalsWatch,%d,offsetWatch,%.3f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E97BC();
  }

  v31 = *v7;
  v32 = v7[1];
  v33 = *v7 == v32;
  v79 = v28;
  v34 = 0;
  if (v33)
  {
    v50 = 0.0;
    v51 = 0.0;
    v49 = v80;
  }

  else
  {
    v84 = (v9 / (v10 * v10)) * -0.003134 + 1.06246 + v8 * 0.003425 + (v8 * v8) * -0.00004952;
    v35 = 0.0;
    v36 = 0.0;
    do
    {
      v37 = *(v31 + 8);
      if (v37 < 2.33333325)
      {
        v38 = *(v31 + 16);
        if (v38 <= 1)
        {
          v38 = 1;
        }

        v39 = v38 - 1;
        if (v38 != 1)
        {
          v40 = *(v31 + 24);
          if (qword_1025D4430 != -1)
          {
            sub_1018E9794();
          }

          v41 = v84 * ((fmax(fmin(v37, 2.16666675), 1.16666663) * 0.266799986 + 0.510867) * 0.414999992 * v10);
          v42 = qword_1025D4438;
          if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
          {
            v43 = *(v31 + 16);
            v44 = *(v31 + 24);
            *buf = 134284289;
            *v97 = v37;
            *&v97[8] = 1025;
            *&v97[10] = v43;
            v98 = 2049;
            v99 = v44;
            v100 = 2049;
            v101 = v41;
            _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "Type,PhoneCals,binCadenceCenter,%{private}.2f,binState,%{private}d,binValue,%{private}.3f,predictedStrideLength,%{private}.3f", buf, 0x26u);
          }

          v35 = v35 + v39 * (v40 - v41);
          v34 = (v34 + v39);
          v36 = v36 + v39 * v37;
          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 != -1)
            {
              sub_1018E9794();
            }

            v45 = *(v31 + 16);
            v46 = *(v31 + 24);
            v88 = 134284289;
            v89 = v37;
            v90 = 1025;
            v91 = v45;
            v92 = 2049;
            v93 = v46;
            v94 = 2049;
            v95 = v41;
            LODWORD(v74) = 38;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 2, "Type,PhoneCals,binCadenceCenter,%{private}.2f,binState,%{private}d,binValue,%{private}.3f,predictedStrideLength,%{private}.3f", &v88, v74);
            v48 = v47;
            sub_100152C7C("Generic", 1, 0, 2, "double CLPredictedWalkDistanceUtils::calcCadenceStrideLengthOffset(const std::vector<P6MWDStrideCal> &, float, float, float, const std::vector<P6MWDStrideCal> &, const std::vector<WalkingSpeedStrideCal> &, StrideCalInfo &)", "%s\n", v47);
            if (v48 != buf)
            {
              free(v48);
            }
          }
        }
      }

      v31 += 32;
    }

    while (v31 != v32);
    v49 = v80;
    if (v34 <= 0)
    {
      v50 = 0.0;
      v51 = 0.0;
    }

    else
    {
      v50 = v35 / v34;
      v51 = v36 / v34;
    }

    v28 = v79;
    v8 = a7;
    v10 = a5;
    v9 = a6;
  }

  *(v49 + 4) = v34;
  *(v49 + 24) = v50;
  *(v49 + 56) = v51;
  if (qword_1025D4430 != -1)
  {
    sub_1018E9794();
  }

  v52 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v97 = v34;
    *&v97[4] = 2048;
    *&v97[6] = v50;
    _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_INFO, "numCalsPhone,%d,offsetPhone,%.3f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E98A8();
  }

  v54 = *a3;
  v53 = a3[1];
  if (*a3 == v53)
  {
    v55 = 0;
    *(v49 + 8) = 0;
    *(v49 + 32) = 0;
    v67 = 0.0;
    v68 = 0.0;
  }

  else
  {
    v76 = v50;
    v55 = 0;
    v87 = v10;
    v85 = (v9 / (v10 * v10)) * -0.003134 + 1.06246 + v8 * 0.003425 + (v8 * v8) * -0.00004952;
    v56 = 0.0;
    v57 = 0.0;
    v58 = 0.0;
    do
    {
      v59 = *(v54 + 24);
      if (v59 < 2.33333325)
      {
        v60 = *(v54 + 32);
        if (qword_1025D4430 != -1)
        {
          sub_1018E9794();
        }

        v61 = v85 * ((fmax(fmin(v59, 2.16666675), 1.16666663) * 0.266799986 + 0.510867) * 0.414999992 * v87);
        v62 = v60 / v59;
        v63 = qword_1025D4438;
        if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134284289;
          *v97 = v59;
          *&v97[8] = 1025;
          *&v97[10] = 2;
          v98 = 2049;
          v99 = v62;
          v100 = 2049;
          v101 = v61;
          _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "Type,WalkingSpeed,binCadenceCenter,%{private}.2f,binState,%{private}d,binValue,%{private}.3f,predictedStrideLength,%{private}.3f", buf, 0x26u);
        }

        v64 = 1.0 / ((v62 - v61) / 0.07 * ((v62 - v61) / 0.07) + 1.0);
        v56 = v56 + v64 * (v62 - v61);
        v57 = v57 + v64;
        ++v55;
        v58 = v58 + v59;
        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4430 != -1)
          {
            sub_1018E9794();
          }

          v88 = 134284289;
          v89 = v59;
          v90 = 1025;
          v91 = 2;
          v92 = 2049;
          v93 = v62;
          v94 = 2049;
          v95 = v61;
          LODWORD(v74) = 38;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 2, "Type,WalkingSpeed,binCadenceCenter,%{private}.2f,binState,%{private}d,binValue,%{private}.3f,predictedStrideLength,%{private}.3f", &v88, v74);
          v66 = v65;
          sub_100152C7C("Generic", 1, 0, 2, "double CLPredictedWalkDistanceUtils::calcCadenceStrideLengthOffset(const std::vector<P6MWDStrideCal> &, float, float, float, const std::vector<P6MWDStrideCal> &, const std::vector<WalkingSpeedStrideCal> &, StrideCalInfo &)", "%s\n", v65);
          if (v66 != buf)
          {
            free(v66);
          }
        }
      }

      v54 += 48;
    }

    while (v54 != v53);
    if (v55 <= 0)
    {
      v67 = 0.0;
    }

    else
    {
      v67 = v56 / v57;
    }

    v49 = v80;
    *(v80 + 8) = v55;
    *(v80 + 32) = v67;
    v68 = v58 / v55;
    if (v55 <= 0)
    {
      v68 = 0.0;
    }

    v28 = v79;
    v50 = v76;
  }

  *(v49 + 64) = v68;
  if (qword_1025D4430 != -1)
  {
    sub_1018E9794();
  }

  v69 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v97 = v55;
    *&v97[4] = 2048;
    *&v97[6] = v67;
    _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_INFO, "numCalsWalkingSpeed,%d,offsetWalkingSpeed,%.3f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E9994();
  }

  if (v13 >= 40)
  {
    v70 = 0;
  }

  else
  {
    v70 = 40 - v13;
  }

  if (v70 >= v34)
  {
    v70 = v34;
  }

  v71 = (40 - v13 - v70) & ~((40 - v13 - v70) >> 31);
  if (v71 >= v55)
  {
    v71 = v55;
  }

  v72 = v70 + v13 + v71;
  *(v49 + 40) = v72;
  if (v72 <= 13)
  {
    v72 = 13;
  }

  return (v50 * v70 + v28 * v13 + v67 * v71) / v72;
}

uint64_t sub_1006267A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *&a3;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v60 = (*(*a2 + 24))(a2, &v64, *(a1 + 8), *(a1 + 16));
  if (qword_1025D4430 != -1)
  {
    sub_1018E9794();
  }

  v4 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    *buf = 134284289;
    v75 = v5;
    v76 = 2049;
    v77 = v6;
    v78 = 1025;
    *v79 = v7;
    *&v79[4] = 2049;
    *&v79[6] = 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 5);
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Looking for metrics during bout,startTime,%{private}f,endTime,%{private}f,steps,%{private}u,metrics,%{private}lu", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E9A80(buf);
    v50 = *(a1 + 8);
    v51 = *(a1 + 16);
    v52 = *(a1 + 24);
    v67 = 134284289;
    v68 = v50;
    v69 = 2049;
    v70 = v51;
    v71 = 1025;
    *v72 = v52;
    *&v72[4] = 2049;
    *&v72[6] = 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 5);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 1, "Looking for metrics during bout,startTime,%{private}f,endTime,%{private}f,steps,%{private}u,metrics,%{private}lu", &v67, 38);
    v54 = v53;
    sub_100152C7C("Generic", 1, 0, 2, "CMError CLPredictedWalkDistanceUtils::calculateWalkingSpeedStridecals(const CLPredictedWalkDistanceBoutEntry &, CLMobility::GaitMetricsDelegate *, WalkingStrideCalReportingDelegate *)", "%s\n", v53);
    if (v54 != buf)
    {
      free(v54);
    }
  }

  v11 = v64;
  v10 = v65;
  if (v65 != v64)
  {
    v12 = 0;
    LODWORD(v8) = *(a1 + 24);
    v13 = 0.0;
    v62 = 134218240;
    *&v9 = 134219520;
    v61 = v9;
    v14 = v8 / *(a1 + 40);
    v15 = 0.0;
    do
    {
      if (qword_1025D4430 != -1)
      {
        sub_1018E9794();
      }

      v16 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(v11 + 8);
        v18 = *(v11 + 24);
        *buf = v62;
        v75 = v17;
        v76 = 2048;
        v77 = v18;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "startTime,%.3f,walkingSpeed,%.3f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E9A80(buf);
        v28 = *(v11 + 8);
        v29 = *(v11 + 24);
        v67 = v62;
        v68 = v28;
        v69 = 2048;
        v70 = v29;
        LODWORD(v57) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 2, "startTime,%.3f,walkingSpeed,%.3f", COERCE_DOUBLE(&v67), v57);
        v31 = v30;
        sub_100152C7C("Generic", 1, 0, 2, "CMError CLPredictedWalkDistanceUtils::calculateWalkingSpeedStridecals(const CLPredictedWalkDistanceBoutEntry &, CLMobility::GaitMetricsDelegate *, WalkingStrideCalReportingDelegate *)", "%s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v19 = *(v11 + 24);
      v20 = *(v11 + 48);
      if (qword_1025D4430 != -1)
      {
        sub_1018E9794();
      }

      v21 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(v11 + 8);
        v23 = *(v11 + 24);
        v24 = *(v11 + 32);
        v25 = *(a1 + 24);
        v26 = *(a1 + 48);
        v27 = *(v11 + 48);
        *buf = v61;
        v75 = v22;
        v76 = 2048;
        v77 = v23;
        v78 = 2048;
        *v79 = v24;
        *&v79[8] = 1024;
        *&v79[10] = v25;
        *&v79[14] = 2048;
        *&v79[16] = v14;
        *&v79[24] = 1024;
        *&v79[26] = v26;
        *v80 = 2048;
        *&v80[2] = v27;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "startTime,%.3f,walkingSpeed,%.4f,stepLength,%.4f,segmentSteps,%d,segmentCadence,%.4f,segmentEpochCadenceSD,%d,cycleTime,%.3f", buf, 0x40u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E9A80(buf);
        v32 = *(v11 + 8);
        v33 = *(v11 + 24);
        v34 = *(v11 + 32);
        v35 = *(a1 + 24);
        v36 = *(a1 + 48);
        v37 = *(v11 + 48);
        v67 = v61;
        v68 = v32;
        v69 = 2048;
        v70 = v33;
        v71 = 2048;
        *v72 = v34;
        *&v72[8] = 1024;
        *&v72[10] = v35;
        *&v72[14] = 2048;
        *&v72[16] = v14;
        *&v72[24] = 1024;
        *&v72[26] = v36;
        *v73 = 2048;
        *&v73[2] = v37;
        LODWORD(v57) = 64;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 2, "startTime,%.3f,walkingSpeed,%.4f,stepLength,%.4f,segmentSteps,%d,segmentCadence,%.4f,segmentEpochCadenceSD,%d,cycleTime,%.3f", COERCE_DOUBLE(&v67), v57, v58, v59, *&v61, DWORD2(v61), *&v62);
        v39 = v38;
        sub_100152C7C("Generic", 1, 0, 2, "CMError CLPredictedWalkDistanceUtils::calculateWalkingSpeedStridecals(const CLPredictedWalkDistanceBoutEntry &, CLMobility::GaitMetricsDelegate *, WalkingStrideCalReportingDelegate *)", "%s\n", v38);
        if (v39 != buf)
        {
          free(v39);
        }
      }

      v13 = v13 + v19;
      v15 = v15 + v20;
      v11 += 96;
      ++v12;
    }

    while (v11 != v10);
    v40 = v15 / v12;
    v41 = v12 / (*(a1 + 40) / v40);
    if (v41 <= 0.6)
    {
      goto LABEL_33;
    }

    v42 = 2.0 / v40;
    if (vabdd_f64(2.0 / v40, v14) / ((v14 + 2.0 / v40) * 0.5) >= 0.1)
    {
      goto LABEL_33;
    }

    v44 = *(a1 + 8);
    v43 = *(a1 + 16);
    v63[0] = v44;
    *&v63[1] = v43;
    *&v63[2] = v14;
    *&v63[3] = 2.0 / v40;
    v45 = v13 / v12;
    *&v63[4] = v45;
    *&v63[5] = v41;
    if (qword_1025D4430 != -1)
    {
      sub_1018E9794();
    }

    v46 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
    {
      *buf = 134350336;
      v75 = v44;
      v76 = 2050;
      v77 = v43;
      v78 = 2050;
      *v79 = v14;
      *&v79[8] = 2050;
      *&v79[10] = v42;
      *&v79[18] = 2050;
      *&v79[20] = v45;
      *&v79[28] = 2050;
      *v80 = v41;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_INFO, "Writing walkingSpeedCal,startTime,%{public}.3f,endTime,%{public}.3f,cadenceWatch,%{public}.3f,cadenceGaitCycle,%{public}.3f,meanWalkingSpeed,%{public}.3f,gaitCycleYield,%{public}.3f", buf, 0x3Eu);
    }

    v47 = sub_10000A100(121, 2);
    v48 = v58;
    if (v47)
    {
      sub_1018E9A80(buf);
      v67 = 134350336;
      v68 = v44;
      v69 = 2050;
      v70 = v43;
      v71 = 2050;
      *v72 = v14;
      *&v72[8] = 2050;
      *&v72[10] = v42;
      *&v72[18] = 2050;
      *&v72[20] = v45;
      *&v72[28] = 2050;
      *v73 = v41;
      LODWORD(v57) = 62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4438, 1, "Writing walkingSpeedCal,startTime,%{public}.3f,endTime,%{public}.3f,cadenceWatch,%{public}.3f,cadenceGaitCycle,%{public}.3f,meanWalkingSpeed,%{public}.3f,gaitCycleYield,%{public}.3f", &v67, *&v57);
      v56 = v55;
      sub_100152C7C("Generic", 1, 0, 2, "CMError CLPredictedWalkDistanceUtils::calculateWalkingSpeedStridecals(const CLPredictedWalkDistanceBoutEntry &, CLMobility::GaitMetricsDelegate *, WalkingStrideCalReportingDelegate *)", "%s\n", v55);
      if (v56 != buf)
      {
        free(v56);
      }

      v48 = v58;
      if (v58 == 0.0)
      {
        goto LABEL_33;
      }
    }

    else if (v58 == 0.0)
    {
LABEL_33:
      v11 = v64;
      goto LABEL_34;
    }

    (*(**&v48 + 16))(COERCE_DOUBLE(*&v48), v63);
    goto LABEL_33;
  }

LABEL_34:
  if (v11)
  {
    v65 = v11;
    operator delete(v11);
  }

  return v60;
}

void sub_100626F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100626FA4(uint64_t a1@<X0>, _DWORD *a2@<X1>, double **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int32x2_t *a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0xBFF0000000000000;
  __asm { FMOV            V0.4S, #-1.0 }

  *(a7 + 64) = _Q0;
  *(a7 + 8) = *(a1 + 16);
  *(a7 + 12) = *(a1 + 80);
  *(a7 + 20) = *(a1 + 88);
  *&_Q0 = *(a1 + 24);
  *(a7 + 36) = _Q0;
  *&_Q0 = *(a1 + 56);
  *(a7 + 24) = _Q0;
  *(a7 + 28) = vcvt_f32_f64(*(a1 + 32));
  *(a7 + 40) = a6->i32[1];
  *(a7 + 44) = a6[2].i32[1];
  *(a7 + 48) = vrev64_s32(a6[1]);
  v16 = a2[2];
  *(a7 + 56) = *a2;
  *(a7 + 60) = v16;
  sub_1006270AC(a7, a3);
  v17 = *(a1 + 120);
  *(a7 + 80) = 0;
  *(a7 + 84) = v17;
  *(a7 + 88) = vrev64_s32(vcvt_f32_f64(*(a1 + 128)));
  v18 = *(a4 + 16);
  if (*a4 <= 0)
  {
    v18 = 0.0;
  }

  *(a7 + 96) = *(a1 + 92);
  *(a7 + 100) = v18;
  v19 = *(a5 + 16);
  if (*a5 <= 0)
  {
    v19 = 0.0;
  }

  *(a7 + 104) = v19;
}

void sub_1006270AC(float *a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3);
  if (v4 >= 2)
  {
    a1[18] = v4 / 13.0;
    __src = 0;
    v35 = 0;
    v36 = 0;
    if (v3 == v2)
    {
      v29 = 0.0;
      v30 = 0.0;
    }

    else
    {
      v7 = 0;
      v8 = v3 - 3;
      v9 = 0.0;
      v10 = 0.0;
      v11 = 1;
      v12 = 0.0;
      v13 = 0.0;
      do
      {
        v14 = v11;
        v15 = v3[2];
        v16 = 0.0;
        v17 = v15;
        if (v11 != 1)
        {
          v17 = v9 + (v15 - v9) / v11;
          v13 = v12 + (v15 - v9) * (v15 - v17);
          v16 = v13;
        }

        v18 = *v3;
        if (v7 >= v36)
        {
          v19 = __src;
          v20 = v7 - __src;
          v21 = (v7 - __src) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            sub_10028C64C();
          }

          v23 = v36 - __src;
          if ((v36 - __src) >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            sub_1003E5FE8(&__src, v24);
          }

          v25 = (v7 - __src) >> 4;
          v26 = 16 * v21;
          *v26 = v18;
          *(v26 + 8) = v15;
          v7 = 16 * v21 + 16;
          v27 = (16 * v21 - 16 * v25);
          memcpy((v26 - 16 * v25), v19, v20);
          v28 = __src;
          __src = v27;
          v35 = v7;
          v36 = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v7 = v18;
          *(v7 + 8) = v15;
          v7 += 16;
        }

        v35 = v7;
        if (v3 != *a2)
        {
          v10 = vabdd_f64(v3[2], v8[2]) + v10;
        }

        v3 += 3;
        v11 = v14 + 1;
        v8 += 3;
        v9 = v17;
        v12 = v16;
      }

      while (v3 != a2[1]);
      v29 = v10;
      v30 = 0.0;
      if (v14 != 1)
      {
        v30 = v13 / (v14 - 1);
      }
    }

    v31 = sqrt(v30);
    a1[16] = v31;
    v32 = sub_1010BD338(&__src, 0) * 86400.0;
    a1[19] = v32;
    v33 = (*(a2[1] - 1) - (*a2)[2]) / v29;
    a1[17] = v33;
    if (__src)
    {
      v35 = __src;
      operator delete(__src);
    }
  }
}

void sub_10062731C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100627370(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v66 = 0;
  v67 = 0;
  v68 = 0;
  sub_1006277F8(*(a2 + 56), a1, a3, &v66);
  v56 = v66;
  v54 = v67;
  if (v66 != v67)
  {
    v5 = *(a2 + 56) + 120.0;
    v6 = *(a2 + 64) - *(a2 + 72);
    do
    {
      __src = 0;
      v64 = 0;
      v65 = 0;
      __p = 0;
      v61 = 0;
      v62 = 0;
      v7 = *a3;
      v8 = a3[1];
      while (v7 != v8)
      {
        v9 = *(v7 + 8);
        if (v9 > *v56 && v9 < v5)
        {
          v11 = v9 - *v56;
          v12 = v64;
          if (v64 >= v65)
          {
            v14 = __src;
            v15 = v64 - __src;
            v16 = (v64 - __src) >> 3;
            v17 = v16 + 1;
            if ((v16 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v18 = v65 - __src;
            if ((v65 - __src) >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              sub_1000B9708(&__src, v19);
            }

            v20 = (8 * v16);
            v21 = &v20[-((v64 - __src) >> 3)];
            *v20 = v11;
            v13 = v20 + 1;
            memcpy(v21, v14, v15);
            v4 = __src;
            __src = v21;
            v64 = v13;
            v65 = 0;
            if (v4)
            {
              operator delete(v4);
            }
          }

          else
          {
            *v64 = v11;
            v13 = v12 + 1;
          }

          v64 = v13;
          v22 = v61;
          if (v61 >= v62)
          {
            v24 = __p;
            v25 = v61 - __p;
            v26 = (v61 - __p) >> 3;
            v27 = v26 + 1;
            if ((v26 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v28 = v62 - __p;
            if ((v62 - __p) >> 2 > v27)
            {
              v27 = v28 >> 2;
            }

            if (v28 >= 0x7FFFFFFFFFFFFFF8)
            {
              v29 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v27;
            }

            if (v29)
            {
              sub_1000B9708(&__p, v29);
            }

            v30 = (8 * v26);
            v31 = &v30[-((v61 - __p) >> 3)];
            *v30 = *(v7 + 16);
            v23 = (v30 + 1);
            memcpy(v31, v24, v25);
            v4 = __p;
            __p = v31;
            v61 = v23;
            v62 = 0;
            if (v4)
            {
              operator delete(v4);
            }
          }

          else
          {
            *v61 = *(v7 + 16);
            v23 = v22 + 8;
          }

          v61 = v23;
        }

        v7 += 32;
      }

      v32 = qword_102658398;
      v33 = qword_1026583A0;
      while (v32 != v33)
      {
        v34 = *v32;
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v36 = __src;
        v35 = v64;
        if (__src != v64)
        {
          v37 = 0;
          do
          {
            v38 = *(a2 + 72) + v6 * exp(*v36 * -v34);
            if (v37 >= v59)
            {
              v39 = v57;
              v40 = v37 - v57;
              v41 = (v37 - v57) >> 3;
              v42 = v41 + 1;
              if ((v41 + 1) >> 61)
              {
                sub_10028C64C();
              }

              v43 = v59 - v57;
              if ((v59 - v57) >> 2 > v42)
              {
                v42 = v43 >> 2;
              }

              if (v43 >= 0x7FFFFFFFFFFFFFF8)
              {
                v44 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v42;
              }

              if (v44)
              {
                sub_1000B9708(&v57, v44);
              }

              v45 = v41;
              v46 = (8 * v41);
              v47 = &v46[-v45];
              *v46 = v38;
              v37 = v46 + 1;
              memcpy(v47, v39, v40);
              v4 = v57;
              v57 = v47;
              v58 = v37;
              v59 = 0;
              if (v4)
              {
                operator delete(v4);
              }
            }

            else
            {
              *v37++ = v38;
            }

            v58 = v37;
            ++v36;
          }

          while (v36 != v35);
        }

        v49 = sub_100627934(v4, &__p, &v57);
        if (v49 != -1.0)
        {
          v50 = *(a2 + 88);
          if (v50 == -1.0 || v49 < v50)
          {
            *(a2 + 80) = v34;
            *(a2 + 88) = v49;
            *(a2 + 104) = *v56;
            *(a2 + 96) = sub_1006279B0(v48, &__p, &v57);
          }
        }

        v4 = v57;
        if (v57)
        {
          v58 = v57;
          operator delete(v57);
        }

        ++v32;
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      v4 = __src;
      if (__src)
      {
        v64 = __src;
        operator delete(__src);
      }

      ++v56;
    }

    while (v56 != v54);
  }

  v52 = *(a2 + 80);
  if (v52 == 0.0)
  {
    *a2 = 17;
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  return v52 != 0.0;
}

void sub_100627788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006277F8(double a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    v7 = a1 + -10.0;
    v8 = a1 + 25.0;
    do
    {
      while (1)
      {
        v9 = *(v4 + 8);
        if (v9 > v7 && v9 < v8)
        {
          break;
        }

        v4 += 32;
        if (v9 > v8 || v4 == v5)
        {
          return;
        }
      }

      v13 = a4[1];
      v12 = a4[2];
      if (v13 >= v12)
      {
        v15 = *a4;
        v16 = v13 - *a4;
        v17 = v16 >> 3;
        v18 = (v16 >> 3) + 1;
        if (v18 >> 61)
        {
          sub_10028C64C();
        }

        v19 = v12 - v15;
        if (v19 >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          sub_1000B9708(a4, v20);
        }

        *(8 * v17) = v9;
        v14 = (8 * v17 + 8);
        memcpy(0, v15, v16);
        v21 = *a4;
        *a4 = 0;
        a4[1] = v14;
        a4[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v13 = v9;
        v14 = v13 + 1;
      }

      a4[1] = v14;
      v4 += 32;
    }

    while (v4 != v5);
  }
}

double sub_100627934(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  result = -1.0;
  if (*a2 != v4 && v4 - v3 == a3[1] - *a3)
  {
    v6 = 0;
    v7 = (v4 - v3) >> 3;
    v8 = v7;
    v9 = 0.0;
    do
    {
      if (v7 == v6)
      {
        sub_10046F324();
      }

      v9 = v9 + (*(v3 + 8 * v6) - *(*a3 + 8 * v6)) * (*(v3 + 8 * v6) - *(*a3 + 8 * v6));
      ++v6;
    }

    while (v6 < v8);
    return v9 / v8;
  }

  return result;
}

double sub_1006279B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  result = -1.0;
  if (*a2 != v4)
  {
    v6 = v4 - v3;
    v7 = *a3;
    if (v6 == *(a3 + 8) - *a3)
    {
      v8 = v6 >> 3;
      v9 = v8;
      v10 = -v8;
      v11 = 0uLL;
      v12 = 1;
      v13 = 0uLL;
      do
      {
        if (v10 + v12 == 1)
        {
          sub_10046F324();
        }

        v14 = *v3++;
        v15.f64[0] = v14;
        v16 = *v7++;
        v15.f64[1] = v15.f64[0] - v16;
        v17 = vsubq_f64(v15, v13);
        v13 = vaddq_f64(v13, vdivq_f64(v17, vdupq_lane_s64(COERCE__INT64(v12), 0)));
        v11 = vmlaq_f64(v11, vsubq_f64(v15, v13), v17);
        v15.f64[0] = v12++;
      }

      while (v15.f64[0] < v9);
      v18 = v12 - 2;
      if (v12 != 2)
      {
        v19 = v11.f64[0] / v18;
        if (v19 != 0.0)
        {
          return 1.0 - v11.f64[1] / v18 / v19;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100627A78()
{
  memcpy(__dst, &unk_101C81F30, sizeof(__dst));
  qword_1026583A0 = 0;
  unk_1026583A8 = 0;
  qword_102658398 = 0;
  sub_1003F6D44(&qword_102658398, __dst, &v2, 0x64uLL);
  return __cxa_atexit(sub_1003F5F88, &qword_102658398, dword_100000000);
}

uint64_t sub_100627B2C(uint64_t a1)
{
  v3 = dword_100000000;
  v4 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_100627BB0(a1, &v3, &off_102464670);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100627B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100627BB0(uint64_t a1, uint64_t *a2, const char **a3)
{
  v5 = sub_1006062D8(a1, a2);
  if (sub_100023B68(v5))
  {
    sub_100608EC8(a1, off_1025D7800, a3, 0, 0);
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E9AC4();
    }

    v6 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v13 = "CLFenceCentroidDatabase";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "%s, No access to DB", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E9AD8(buf);
      v10 = 136315138;
      v11 = "CLFenceCentroidDatabase";
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 17, "%s, No access to DB", &v10);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 0, "CLFenceCentroidDatabase::CLFenceCentroidDatabase(const CLSqliteDatabase::SqliteProperties &, const CLSqliteDatabase::ColumnInfo *)", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return a1;
}

uint64_t sub_100627D80(uint64_t a1, int a2, double a3, double a4)
{
  if (sub_100023B68(a1))
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E9AC4();
    }

    v8 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315907;
      *&buf[4] = "storeFenceCentroid";
      v31 = 1025;
      v32 = a2;
      v33 = 2048;
      v34 = a3;
      v35 = 2053;
      v36 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "%s, foreignKey, %{private}d, coordinate, <%{senstive}f, %{sensitive}f>", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_1018E9C20();
      }

      *v23 = 136315907;
      *&v23[4] = "storeFenceCentroid";
      v24 = 1025;
      v25 = a2;
      v26 = 2048;
      v27 = a3;
      v28 = 2053;
      v29 = a4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "%s, foreignKey, %{private}d, coordinate, <%{senstive}f, %{sensitive}f>", v23, 38);
      v22 = v21;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceCentroidDatabase::storeFenceCentroid(const CLClientLocationCoordinate, const int)", "%s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    sub_10003848C(v23);
    v9 = sub_100038730((&v25 + 2), "INSERT OR REPLACE INTO ", 23);
    v10 = strlen(off_1025D7800);
    v11 = sub_100038730(v9, off_1025D7800, v10);
    v12 = sub_100038730(v11, " (", 2);
    v13 = sub_100038730(v12, "ForeignKey", 10);
    v14 = sub_100038730(v13, ", ", 2);
    v15 = sub_100038730(v14, "Latitude", 8);
    v16 = sub_100038730(v15, ", ", 2);
    v17 = sub_100038730(v16, "Longitude", 9);
    sub_100038730(v17, ") VALUES (?, ?, ?)", 18);
    sub_100073518(v23, buf);
    if ((SBYTE3(v34) & 0x80u) == 0)
    {
      v18 = buf;
    }

    else
    {
      v18 = *buf;
    }

    sub_1000388D8(a1, v18);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E9AC4();
  }

  v19 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "storeFenceCentroid";
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "%s, No access to DB", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018E9B1C();
  }

  return 0;
}

void sub_1006283EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (v54)
  {
    (*(*v54 + 8))(v54, a2, a3, a4, a5, a6, a7, a8);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100628470(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_1025D4640 != -1)
  {
    sub_1018E9AC4();
  }

  v4 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67174657;
    *&buf[4] = v2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: Removing vertices, key, %{private}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E9C48(v2);
  }

  if (sub_100023B68(a1))
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E9C20();
    }

    v5 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315395;
      *&buf[4] = "removeFenceCentroid";
      v17 = 1025;
      v18 = v2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%s, foreignKey, %{private}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E9E54();
    }

    sub_10003848C(v14);
    v6 = sub_100038730(&v15, "DELETE FROM ", 12);
    v7 = strlen(off_1025D7800);
    v8 = sub_100038730(v6, off_1025D7800, v7);
    v9 = sub_100038730(v8, " WHERE ", 7);
    v10 = sub_100038730(v9, "ForeignKey", 10);
    sub_100038730(v10, "=?", 2);
    sub_100073518(v14, buf);
    if (v19 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    sub_1000388D8(a1, v11);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E9C20();
  }

  v12 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "removeFenceCentroid";
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "%s, No access to DB", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018E9D50();
  }

  return 0;
}

void sub_1006289EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (v52)
  {
    (*(*v52 + 8))(v52, a2, a3, a4, a5, a6, a7, a8);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100628A70@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  sub_10003848C(v9);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        sub_100038730(&v10, ", ", 2);
      }

      std::ostream::operator<<();
      v4 += 248;
      v6 = 1;
    }

    while (v4 != v5);
  }

  sub_100073518(v9, a2);
  v10 = v7;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100628C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100628C74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if (qword_1025D4640 != -1)
  {
    sub_1018E9AC4();
  }

  v6 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315395;
    *&buf[4] = "getFenceCentroid";
    v34 = 1025;
    v35 = v3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "%s, Attempting to fetch centroid for key %{private}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E9F5C();
  }

  v30 = *(&xmmword_101CE6D48 + 4);
  v31 = *(&xmmword_101CE6D58 + 4);
  v32 = 0;
  v26 = *(&xmmword_101CE6D08 + 4);
  v27 = *(&xmmword_101CE6D18 + 4);
  v28 = *(&xmmword_101CE6D28 + 4);
  v29 = *(&xmmword_101CE6D38 + 4);
  v24 = *(&xmmword_101CE6CE8 + 4);
  v25 = *(&xmmword_101CE6CF8 + 4);
  if (sub_100023B68(a1))
  {
    sub_10003848C(v22);
    v7 = sub_100038730(&v23, "SELECT ", 7);
    v8 = sub_100038730(v7, "Latitude", 8);
    v9 = sub_100038730(v8, ", ", 2);
    v10 = sub_100038730(v9, "Longitude", 9);
    v11 = sub_100038730(v10, " FROM ", 6);
    v12 = strlen(off_1025D7800);
    v13 = sub_100038730(v11, off_1025D7800, v12);
    v14 = sub_100038730(v13, " WHERE ", 7);
    v15 = sub_100038730(v14, "ForeignKey", 10);
    sub_100038730(v15, "=?", 2);
    sub_100073518(v22, buf);
    if (v36 >= 0)
    {
      v16 = buf;
    }

    else
    {
      v16 = *buf;
    }

    sub_1000388D8(a1, v16);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E9C20();
  }

  v17 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "getFenceCentroid";
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "%s, No access to DB", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018EA064();
  }

  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  v18 = v28;
  *(a3 + 100) = v29;
  v19 = v31;
  *(a3 + 116) = v30;
  *(a3 + 132) = v19;
  v20 = v24;
  *(a3 + 36) = v25;
  v21 = v27;
  *(a3 + 52) = v26;
  *(a3 + 68) = v21;
  *a3 = 0xFFFF;
  *(a3 + 148) = v32;
  *(a3 + 84) = v18;
  *(a3 + 20) = v20;
}

void sub_100629660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    (*(*v28 + 8))(v28, a2, a3, a4, a5, a6, a7, a8);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_1006296F4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100023B68(a1);
  if (v4)
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E9AC4();
    }

    v5 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0xEF7BDEF7BDEF7BDFLL * ((a2[1] - *a2) >> 3);
      *buf = 136315394;
      *&buf[4] = "scrubFenceCentroids";
      *&buf[12] = 2050;
      *&buf[14] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%s, scrubbing centroids, number of valid foreign keys, %{public}lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EA26C(a2);
    }

    sub_100628A70(a2, buf);
    *(&v31.__r_.__value_.__s + 23) = 12;
    strcpy(&v31, "DELETE FROM ");
    v7 = strlen(off_1025D7800);
    v8 = std::string::append(&v31, off_1025D7800, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v30 = 7;
    strcpy(__s, " WHERE ");
    v10 = std::string::append(&v32, __s, 7uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v33, "ForeignKey", 0xAuLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v28 = 9;
    strcpy(v27, " NOT IN (");
    v14 = std::string::append(&v34, v27, 9uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if ((v40 & 0x80u) == 0)
    {
      v16 = buf;
    }

    else
    {
      v16 = *buf;
    }

    if ((v40 & 0x80u) == 0)
    {
      v17 = v40;
    }

    else
    {
      v17 = *&buf[8];
    }

    v18 = std::string::append(&v35, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v26 = 1;
    LOWORD(__p) = 41;
    v20 = std::string::append(&v36, &__p, 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v38 = v20->__r_.__value_.__r.__words[2];
    v37 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v26 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v38 >= 0)
    {
      v22 = &v37;
    }

    else
    {
      v22 = v37;
    }

    sub_1000388D8(a1, v22);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E9AC4();
  }

  v23 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "scrubFenceCentroids";
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "%s, can't scrub fence centroids, invalid database", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018EA168();
  }

  return v4;
}

void sub_100629B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 89) < 0)
  {
    operator delete(*(v52 - 112));
  }

  if (*(v52 - 57) < 0)
  {
    operator delete(*(v52 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_100629CA0(uint64_t a1@<X8>)
{
  *(v2 + 4) = a1;
  *(v3 - 52) = 1025;
  *(v2 + 14) = v1;
}

void sub_100629CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a1 = off_102464760;
  bzero((a1 + 8), 0xC38uLL);
  *(a1 + 324) = 1;
  *(a1 + 336) = 0;
  *(a1 + 896) = 0;
  *(a1 + 3128) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 466) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 533) = 0;
  *(a1 + 696) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0;
  *(a1 + 824) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 872) = 0;
  *(a1 + 877) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 920) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 976) = 0;
  *(a1 + 960) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 984) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1080) = 0;
  *(a1 + 3264) = 0;
  *(a1 + 3248) = 0u;
  *(a1 + 3232) = 0u;
  *(a1 + 3216) = 0u;
  *(a1 + 3200) = 0u;
  *(a1 + 3184) = 0u;
  *(a1 + 3168) = 0u;
  *(a1 + 3152) = 0u;
  *(a1 + 3136) = 0u;
  *(a1 + 3272) = 0x403E000000000000;
  sub_10062F02C();
}

void sub_10062A77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = v10[558];
  if (v12)
  {
    sub_100008080(v12);
  }

  v13 = v10[549];
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = v10[540];
  if (v14)
  {
    sub_100008080(v14);
  }

  v15 = v10[531];
  if (v15)
  {
    sub_100008080(v15);
  }

  v16 = v10[522];
  if (v16)
  {
    sub_100008080(v16);
  }

  v17 = v10[513];
  if (v17)
  {
    sub_100008080(v17);
  }

  v18 = v10[504];
  if (v18)
  {
    sub_100008080(v18);
  }

  v19 = v10[495];
  if (v19)
  {
    sub_100008080(v19);
  }

  v20 = v10[486];
  if (v20)
  {
    sub_100008080(v20);
  }

  v21 = v10[477];
  if (v21)
  {
    sub_100008080(v21);
  }

  v22 = v10[468];
  if (v22)
  {
    sub_100008080(v22);
  }

  v23 = v10[459];
  if (v23)
  {
    sub_100008080(v23);
  }

  v24 = v10[450];
  if (v24)
  {
    sub_100008080(v24);
  }

  v25 = v10[441];
  if (v25)
  {
    sub_100008080(v25);
  }

  v26 = v10[432];
  if (v26)
  {
    sub_100008080(v26);
  }

  v27 = v10[423];
  if (v27)
  {
    sub_100008080(v27);
  }

  v28 = v10[414];
  if (v28)
  {
    sub_100008080(v28);
  }

  v29 = v10[411];
  if (v29)
  {
    sub_100008080(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_10062A8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (!a22)
  {
    JUMPOUT(0x10062A808);
  }

  JUMPOUT(0x10062A804);
}

void sub_10062A8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (!a24)
  {
    JUMPOUT(0x10062A814);
  }

  JUMPOUT(0x10062A810);
}

void sub_10062A8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (!a26)
  {
    JUMPOUT(0x10062A820);
  }

  JUMPOUT(0x10062A81CLL);
}

void sub_10062A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (!a28)
  {
    JUMPOUT(0x10062A82CLL);
  }

  JUMPOUT(0x10062A828);
}

void sub_10062A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (!a30)
  {
    JUMPOUT(0x10062A838);
  }

  JUMPOUT(0x10062A834);
}

void sub_10062A92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (!a32)
  {
    JUMPOUT(0x10062A844);
  }

  JUMPOUT(0x10062A840);
}

void sub_10062A93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (!a34)
  {
    JUMPOUT(0x10062A850);
  }

  JUMPOUT(0x10062A84CLL);
}

void sub_10062A94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (!a36)
  {
    JUMPOUT(0x10062A85CLL);
  }

  JUMPOUT(0x10062A858);
}

void sub_10062A95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (!a38)
  {
    JUMPOUT(0x10062A868);
  }

  JUMPOUT(0x10062A864);
}

void sub_10062A96C()
{
  if (!*(v0 - 200))
  {
    JUMPOUT(0x10062A874);
  }

  JUMPOUT(0x10062A870);
}

void sub_10062A97C()
{
  if (!*(v0 - 184))
  {
    JUMPOUT(0x10062A880);
  }

  JUMPOUT(0x10062A87CLL);
}

void sub_10062A98C()
{
  if (!*(v0 - 168))
  {
    JUMPOUT(0x10062A88CLL);
  }

  JUMPOUT(0x10062A888);
}

void sub_10062A99C()
{
  if (!*(v0 - 152))
  {
    JUMPOUT(0x10062A898);
  }

  JUMPOUT(0x10062A894);
}

void sub_10062A9AC()
{
  if (!*(v0 - 136))
  {
    JUMPOUT(0x10062A8A4);
  }

  JUMPOUT(0x10062A8A0);
}

void sub_10062A9BC()
{
  if (!*(v0 - 120))
  {
    JUMPOUT(0x10062A8B0);
  }

  JUMPOUT(0x10062A8ACLL);
}

void sub_10062A9CC()
{
  if (!*(v0 - 104))
  {
    JUMPOUT(0x10062A8BCLL);
  }

  JUMPOUT(0x10062A8B8);
}

void sub_10062A9DC()
{
  if (!*(v0 - 88))
  {
    JUMPOUT(0x10062A8C8);
  }

  JUMPOUT(0x10062A8C4);
}

void *sub_10062A9EC(void *result)
{
  v1 = result;
  if (result >= 4)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA5C0();
    }

    v2 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67174657;
      v4[1] = v1;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "Unsupported CLHKBiologicalSex value: %{private}d", v4, 8u);
    }

    v3 = sub_10000A100(121, 0);
    result = 0;
    if (v3)
    {
      sub_1018EA5D4(v1);
      return 0;
    }
  }

  return result;
}

void sub_10062AADC(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 20);
  v4 = (*(a1 + 12) / (*(a1 + 8) * *(a1 + 8)));
  v5 = (v2 * 1.921 + 56.363 + v3 * -0.381 + v4 * -0.754 + (1 - *a1) * 10.987) / 3.5;
  v6 = v3 * -0.039 + 14.889 + v4 * -0.151 + *a1 * -3.1391 + v2 * 0.429;
  v7 = v6;
  if (v5 >= v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (*(a1 + 48))
  {
    v9 = v8 * 0.65;
  }

  else
  {
    v9 = v8;
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v10 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    *buf = 134219008;
    v27 = v5;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = 0x401C000000000000;
    v32 = 1024;
    v33 = v11;
    v34 = 2048;
    v35 = v9;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Derived Vo2max, %.1f, Revised Vo2max, %.1f, Minimum Vo2max, %.1f, Beta Blocker Use, %d, Beta Blocker Vo2max, %.1f", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v12 = *(a1 + 48);
    v16 = 134219008;
    v17 = v5;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = 0x401C000000000000;
    v22 = 1024;
    v23 = v12;
    v24 = 2048;
    v25 = v9;
    LODWORD(v15) = 48;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "Derived Vo2max, %.1f, Revised Vo2max, %.1f, Minimum Vo2max, %.1f, Beta Blocker Use, %d, Beta Blocker Vo2max, %.1f", COERCE_DOUBLE(&v16), v15);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "static float CLNatalieModelInput::computeDerivedVo2max(const CLBodyMetrics)", "%s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }
}

void sub_10062ADF4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_10062AEB4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_10062AF74(void **a1)
{
  sub_10062AFD4(a1 + 421);
  sub_10062B13C(a1 + 430);
  sub_10062B2A4(a1 + 538);
  sub_10062B40C(a1 + 547);

  sub_10062B574(a1 + 556);
}

void sub_10062AFD4(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Disabling source, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EA810(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_10062F7A4(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1012004D8(a1[1], *(a1 + 12));
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }
}

void sub_10062B13C(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Disabling source, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EA920(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_10062FB60(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1012004D8(a1[1], *(a1 + 12));
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }
}

void sub_10062B2A4(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Disabling source, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAA30(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_100632474(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1012004D8(a1[1], *(a1 + 12));
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }
}

void sub_10062B40C(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Disabling source, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAB40(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_100632830(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1012004D8(a1[1], *(a1 + 12));
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }
}

void sub_10062B574(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Disabling source, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAC50(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_100632BEC(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_1012004D8(a1[1], *(a1 + 12));
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }
}

void sub_10062B6DC(void **a1)
{
  sub_10062B73C(a1 + 421);
  sub_10062B870(a1 + 430);
  sub_10062B9A4(a1 + 538);
  sub_10062BAD8(a1 + 547);

  sub_10062BC0C(a1 + 556);
}

void sub_10062B73C(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v7[0] = 67109632;
    v7[1] = v3;
    v8 = 1024;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Enabling source, legacyMode, %d, dataProviderMode, %d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAD60(a1);
  }

  if (!*(a1 + 6) || *(a1 + 28) == 1)
  {
    sub_100633128(*a1);
  }
}

void sub_10062B870(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v7[0] = 67109632;
    v7[1] = v3;
    v8 = 1024;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Enabling source, legacyMode, %d, dataProviderMode, %d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAE70(a1);
  }

  if (!*(a1 + 6) || *(a1 + 28) == 1)
  {
    sub_100311E80(*a1);
  }
}

void sub_10062B9A4(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v7[0] = 67109632;
    v7[1] = v3;
    v8 = 1024;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Enabling source, legacyMode, %d, dataProviderMode, %d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EAF80(a1);
  }

  if (!*(a1 + 6) || *(a1 + 28) == 1)
  {
    sub_100633228(*a1);
  }
}

void sub_10062BAD8(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v7[0] = 67109632;
    v7[1] = v3;
    v8 = 1024;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Enabling source, legacyMode, %d, dataProviderMode, %d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB090(a1);
  }

  if (!*(a1 + 6) || *(a1 + 28) == 1)
  {
    sub_100633328(*a1);
  }
}

void sub_10062BC0C(void **a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v7[0] = 67109632;
    v7[1] = v3;
    v8 = 1024;
    v9 = v6;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Enabling source, legacyMode, %d, dataProviderMode, %d", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB1A0(a1);
  }

  if (!*(a1 + 6) || *(a1 + 28) == 1)
  {
    sub_100633428(*a1);
  }
}

float sub_10062BD40(float *a1, double a2)
{
  result = -1.0;
  if (a1[1136] + -10.0 > a2)
  {
    v4 = a1[1138];
    if (vabdd_f64(a2, v4) < 0.001)
    {
      return ((a1[1137] * 2.6232) / v4) + 3.9865;
    }
  }

  return result;
}

void sub_10062BDA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v9[0] = *(a1 + 32);
  *(v9 + 12) = *(a1 + 44);
  sub_10062AADC(v8);
  v3 = *(a1 + 28) * 15.3;
  v5 = v4 * 3.5;
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v6 = qword_1025D4238;
  v7 = v3 / v5;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8[0]) = 134217984;
    *(v8 + 4) = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Estimated HRmin, %.1f ", v8, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB2B0(v7);
  }
}

uint64_t sub_10062BECC(uint64_t a1, __int128 *a2, double a3)
{
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  v20 = 0u;
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v8 = sub_100633528(*(a1 + 8), &v19, a3, *(a1 + 32));
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      *buf = 67110656;
      v36 = v10;
      v37 = 2048;
      v38 = a3;
      v39 = 1024;
      v40 = v7;
      v41 = 2048;
      v42 = *&v21[0];
      v43 = 1024;
      v44 = v8;
      v45 = 2048;
      v46 = v19;
      v47 = 1024;
      v48 = *v21 == *&v19;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v15 = *(a1 + 48);
      v22[0] = 67110656;
      v22[1] = v15;
      v23 = 2048;
      v24 = a3;
      v25 = 1024;
      v26 = v7;
      v27 = 2048;
      v28 = *&v21[0];
      v29 = 1024;
      v30 = v8;
      v31 = 2048;
      v32 = v19;
      v33 = 1024;
      v34 = *v21 == *&v19;
      LODWORD(v18) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v22, v18, v19, *(&v19 + 1), v20, *(&v20 + 1), LODWORD(v21[0]));
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLRawHR>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLRawHR>, T = CLRawHR, LegacyT = CLRawHR, ConverterT = void]", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    v12 = v21;
    goto LABEL_20;
  }

  if (v11 == 1)
  {
    v12 = &v19;
    LOBYTE(v7) = v8;
LABEL_20:
    v13 = v12[1];
    *a2 = *v12;
    a2[1] = v13;
  }

  return v7 & 1;
}

uint64_t sub_10062C1E4(uint64_t a1, __int128 *a2, double a3)
{
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    sub_10063360C(*(a1 + 8), a3, *(a1 + 32));
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v38 = v9;
      v39 = 2048;
      v40 = a3;
      v41 = 1024;
      v42 = v7;
      v43 = 2048;
      v44 = *(&v23[0] + 1);
      v45 = 1024;
      v46 = 0;
      v47 = 2048;
      v48 = *(&v19 + 1);
      v49 = 1024;
      v50 = *(v23 + 1) == *(&v19 + 1);
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v15 = *(a1 + 48);
      v24[0] = 67110656;
      v24[1] = v15;
      v25 = 2048;
      v26 = a3;
      v27 = 1024;
      v28 = v7;
      v29 = 2048;
      v30 = *(&v23[0] + 1);
      v31 = 1024;
      v32 = 0;
      v33 = 2048;
      v34 = *(&v19 + 1);
      v35 = 1024;
      v36 = *(v23 + 1) == *(&v19 + 1);
      LODWORD(v18) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v24, v18, v19, *(&v19 + 1), v20, *(&v20 + 1), v21);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLElevationChangeEntry>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLElevationChangeEntry>, T = CLElevationChangeEntry, LegacyT = CLElevationChangeEntry, ConverterT = void]", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v23;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = &v19;
    LOBYTE(v7) = 0;
LABEL_19:
    v12 = v11[1];
    *a2 = *v11;
    a2[1] = v12;
    v13 = v11[3];
    a2[2] = v11[2];
    a2[3] = v13;
  }

  return v7 & 1;
}

uint64_t sub_10062C514(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v4 = a3.n128_f64[0];
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    sub_1006336F0(*(a1 + 8), v4, *(a1 + 32));
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v34 = v9;
      v35 = 2048;
      v36 = v4;
      v37 = 1024;
      v38 = v7;
      v39 = 2048;
      v40 = v18;
      v41 = 1024;
      v42 = 0;
      v43 = 2048;
      v44 = v16;
      v45 = 1024;
      v46 = v18 == v16;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v21 = 2048;
      v22 = v4;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = v18;
      v27 = 1024;
      v28 = 0;
      v29 = 2048;
      v30 = v16;
      v31 = 1024;
      v32 = v18 == v16;
      LODWORD(v15) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", &v20, v15, LODWORD(v16), v17, LODWORD(v18), v19, 67110656);
      v14 = v13;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCoarseElevationChangeEntry>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCoarseElevationChangeEntry>, T = CLCoarseElevationChangeEntry, LegacyT = CLCoarseElevationChangeEntry, ConverterT = void]", "%s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = &v18;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = &v16;
    LOBYTE(v7) = 0;
LABEL_19:
    *a2 = *v11;
  }

  return v7 & 1;
}

uint64_t sub_10062C824(uint64_t a1, uint64_t a2, double a3)
{
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  memset(v50, 0, sizeof(v50));
  v49 = 0;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    sub_1006337D4(*(a1 + 8), a3, *(a1 + 32));
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v28 = v9;
      v29 = 2048;
      v30 = a3;
      v31 = 1024;
      v32 = v7;
      v33 = 2048;
      v34 = *(&v51 + 1);
      v35 = 1024;
      v36 = 0;
      v37 = 2048;
      v38 = *(&v42 + 1);
      v39 = 1024;
      v40 = *(&v51 + 1) == *(&v42 + 1);
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      *v21 = 2048;
      *&v21[2] = a3;
      *&v21[10] = 1024;
      *v22 = 2048;
      *&v22[2] = *(&v51 + 1);
      *&v22[10] = 1024;
      v23 = 2048;
      v24 = *(&v42 + 1);
      v25 = 1024;
      v26 = *(&v51 + 1) == *(&v42 + 1);
      LODWORD(v19) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", &v20, v19, 67110656, *v21, *&v21[8], *v22, *&v22[8]);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLSwimEntry>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLSwimEntry>, T = CLSwimEntry, LegacyT = CLSwimEntry, ConverterT = void]", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v50;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = v41;
    LOBYTE(v7) = 0;
LABEL_19:
    v12 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v12;
    *(a2 + 128) = v11[8];
    *(a2 + 144) = *(v11 + 18);
    v13 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v13;
    v14 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v14;
    v15 = v11[1];
    *a2 = *v11;
    *(a2 + 16) = v15;
  }

  return v7 & 1;
}

uint64_t sub_10062CB98(uint64_t a1, uint64_t a2, double a3)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    sub_1006339CC(*(a1 + 8), a3, *(a1 + 32));
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v49 = v9;
      v50 = 2048;
      v51 = a3;
      v52 = 1024;
      v53 = v7;
      v54 = 2048;
      v55 = *&v33[0];
      v56 = 1024;
      v57 = 0;
      v58 = 2048;
      v59 = v22;
      v60 = 1024;
      v61 = *v33 == *&v22;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v18 = *(a1 + 48);
      v35[0] = 67110656;
      v35[1] = v18;
      v36 = 2048;
      v37 = a3;
      v38 = 1024;
      v39 = v7;
      v40 = 2048;
      v41 = *&v33[0];
      v42 = 1024;
      v43 = 0;
      v44 = 2048;
      v45 = v22;
      v46 = 1024;
      v47 = *v33 == *&v22;
      LODWORD(v21) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v35, v21, v22, *(&v22 + 1), v23, *(&v23 + 1), v24);
      v20 = v19;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<_CLFitnessMachineData>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<_CLFitnessMachineData>, T = _CLFitnessMachineData, LegacyT = _CLFitnessMachineData, ConverterT = void]", "%s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v33;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = &v22;
    LOBYTE(v7) = 0;
LABEL_19:
    v12 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v12;
    *(a2 + 160) = *(v11 + 20);
    v13 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v13;
    v14 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v14;
    v15 = v11[1];
    *a2 = *v11;
    *(a2 + 16) = v15;
    v16 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v16;
  }

  return v7 & 1;
}

uint64_t sub_10062CF08(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a3.n128_f64[0];
  v20 = 0.0;
  v21 = 0;
  v22 = 0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0;
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    sub_100633AE0(*(a1 + 8), v4, *(a1 + 32));
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v37 = v9;
      v38 = 2048;
      v39 = v4;
      v40 = 1024;
      v41 = v7;
      v42 = 2048;
      v43 = v20;
      v44 = 1024;
      v45 = 0;
      v46 = 2048;
      v47 = v17;
      v48 = 1024;
      v49 = v20 == v17;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v13 = *(a1 + 48);
      v23[0] = 67110656;
      v23[1] = v13;
      v24 = 2048;
      v25 = v4;
      v26 = 1024;
      v27 = v7;
      v28 = 2048;
      v29 = v20;
      v30 = 1024;
      v31 = 0;
      v32 = 2048;
      v33 = v17;
      v34 = 1024;
      v35 = v20 == v17;
      LODWORD(v16) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v23, v16, LODWORD(v17), v18, v19, v20, v21);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryDanceDMFeatures>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryDanceDMFeatures>, T = CLCalorimetryDanceDMFeatures, LegacyT = CLCalorimetryDanceDMFeatures, ConverterT = void]", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = &v20;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = &v17;
    LOBYTE(v7) = 0;
LABEL_19:
    *a2 = *v11;
    *(a2 + 16) = v11[2];
  }

  return v7 & 1;
}

uint64_t sub_10062D22C(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v4 = a3.n128_f64[0];
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    sub_1006336F0(*(a1 + 8), v4, *(a1 + 32));
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v34 = v9;
      v35 = 2048;
      v36 = v4;
      v37 = 1024;
      v38 = v7;
      v39 = 2048;
      v40 = v18;
      v41 = 1024;
      v42 = 0;
      v43 = 2048;
      v44 = v16;
      v45 = 1024;
      v46 = v18 == v16;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v21 = 2048;
      v22 = v4;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = v18;
      v27 = 1024;
      v28 = 0;
      v29 = 2048;
      v30 = v16;
      v31 = 1024;
      v32 = v18 == v16;
      LODWORD(v15) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", &v20, v15, LODWORD(v16), v17, LODWORD(v18), v19, 67110656);
      v14 = v13;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryFunctionalStrengthDMFeatures>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryFunctionalStrengthDMFeatures>, T = CLCalorimetryFunctionalStrengthDMFeatures, LegacyT = CLCalorimetryFunctionalStrengthDMFeatures, ConverterT = void]", "%s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = &v18;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = &v16;
    LOBYTE(v7) = 0;
LABEL_19:
    *a2 = *v11;
  }

  return v7 & 1;
}

uint64_t sub_10062D53C(uint64_t a1, __int128 *a2, double a3)
{
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  v19 = 0u;
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    sub_100633BCC(*(a1 + 8), a3, *(a1 + 32));
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v35 = v9;
      v36 = 2048;
      v37 = a3;
      v38 = 1024;
      v39 = v7;
      v40 = 2048;
      v41 = *&v20[0];
      v42 = 1024;
      v43 = 0;
      v44 = 2048;
      v45 = v18;
      v46 = 1024;
      v47 = *v20 == *&v18;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v14 = *(a1 + 48);
      v21[0] = 67110656;
      v21[1] = v14;
      v22 = 2048;
      v23 = a3;
      v24 = 1024;
      v25 = v7;
      v26 = 2048;
      v27 = *&v20[0];
      v28 = 1024;
      v29 = 0;
      v30 = 2048;
      v31 = v18;
      v32 = 1024;
      v33 = *v20 == *&v18;
      LODWORD(v17) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v21, v17, v18, *(&v18 + 1), v19, *(&v19 + 1), LODWORD(v20[0]));
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryRowingDMFeatures>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryRowingDMFeatures>, T = CLCalorimetryRowingDMFeatures, LegacyT = CLCalorimetryRowingDMFeatures, ConverterT = void]", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = v20;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = &v18;
    LOBYTE(v7) = 0;
LABEL_19:
    v12 = v11[1];
    *a2 = *v11;
    a2[1] = v12;
  }

  return v7 & 1;
}

uint64_t sub_10062D854(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a3.n128_f64[0];
  v20 = 0.0;
  v21 = 0;
  v22 = 0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0;
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    sub_100633AE0(*(a1 + 8), v4, *(a1 + 32));
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 67110656;
      v37 = v9;
      v38 = 2048;
      v39 = v4;
      v40 = 1024;
      v41 = v7;
      v42 = 2048;
      v43 = v20;
      v44 = 1024;
      v45 = 0;
      v46 = 2048;
      v47 = v17;
      v48 = 1024;
      v49 = v20 == v17;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v13 = *(a1 + 48);
      v23[0] = 67110656;
      v23[1] = v13;
      v24 = 2048;
      v25 = v4;
      v26 = 1024;
      v27 = v7;
      v28 = 2048;
      v29 = v20;
      v30 = 1024;
      v31 = 0;
      v32 = 2048;
      v33 = v17;
      v34 = 1024;
      v35 = v20 == v17;
      LODWORD(v16) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v23, v16, LODWORD(v17), v18, v19, v20, v21);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryKickboxingDMFeatures>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryKickboxingDMFeatures>, T = CLCalorimetryKickboxingDMFeatures, LegacyT = CLCalorimetryKickboxingDMFeatures, ConverterT = void]", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v11 = &v20;
    goto LABEL_19;
  }

  if (v10 == 1)
  {
    v11 = &v17;
    LOBYTE(v7) = 0;
LABEL_19:
    *a2 = *v11;
    *(a2 + 16) = v11[2];
  }

  return v7 & 1;
}

uint64_t sub_10062DB78(uint64_t a1, uint64_t a2, double a3)
{
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v8 = sub_100633CB0(*(a1 + 8), &v19, a3, *(a1 + 32));
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      *buf = 67110656;
      v39 = v10;
      v40 = 2048;
      v41 = a3;
      v42 = 1024;
      v43 = v7;
      v44 = 2048;
      v45 = *(&v23[0] + 1);
      v46 = 1024;
      v47 = v8;
      v48 = 2048;
      v49 = *(&v19 + 1);
      v50 = 1024;
      v51 = *(v23 + 1) == *(&v19 + 1);
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v15 = *(a1 + 48);
      v25[0] = 67110656;
      v25[1] = v15;
      v26 = 2048;
      v27 = a3;
      v28 = 1024;
      v29 = v7;
      v30 = 2048;
      v31 = *(&v23[0] + 1);
      v32 = 1024;
      v33 = v8;
      v34 = 2048;
      v35 = *(&v19 + 1);
      v36 = 1024;
      v37 = *(v23 + 1) == *(&v19 + 1);
      LODWORD(v18) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v25, v18, v19, *(&v19 + 1), v20, *(&v20 + 1), v21);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLAccessoryDMFeatures>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLAccessoryDMFeatures>, T = CLAccessoryDMFeatures, LegacyT = CLAccessoryDMFeatures, ConverterT = void]", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    v12 = v23;
    goto LABEL_20;
  }

  if (v11 == 1)
  {
    v12 = &v19;
    LOBYTE(v7) = v8;
LABEL_20:
    v13 = v12[1];
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12[2];
    *(a2 + 48) = *(v12 + 6);
  }

  return v7 & 1;
}

uint64_t sub_10062DEB8(uint64_t a1)
{
  v2.n128_f64[0] = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2.n128_f64[0];
  v6 = v1;
  __src = -1.0;
  v26 = 0;
  v27 = 0;
  v19 = -1.0;
  LOBYTE(v20) = 0;
  v24 = 0;
  v7 = *(v1 + 24);
  if (v7 && *(v1 + 28) != 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(**v1 + 24))(v2);
    v7 = *(v6 + 24);
  }

  if ((v7 == 1 || *(v6 + 28) == 1) && *(v6 + 64) == 1)
  {
    v9 = sub_100633D9C(*(v6 + 8), &v19, v5, *(v6 + 32));
  }

  else
  {
    v9 = 0;
  }

  if (*(v6 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(v6 + 48);
      v41[0] = 67110656;
      v41[1] = v11;
      v42 = 2048;
      v43 = v5;
      v44 = 1024;
      v45 = v8;
      v46 = 2048;
      v47 = __src;
      v48 = 1024;
      v49 = v9;
      v50 = 2048;
      v51 = v19;
      v52 = 1024;
      v53 = __src == v19;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v41, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(v41, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v15 = *(v6 + 48);
      v28[0] = 67110656;
      v28[1] = v15;
      v29 = 2048;
      v30 = v5;
      v31 = 1024;
      v32 = v8;
      v33 = 2048;
      v34 = __src;
      v35 = 1024;
      v36 = v9;
      v37 = 2048;
      v38 = v19;
      v39 = 1024;
      v40 = __src == v19;
      LODWORD(v18) = 56;
      _os_log_send_and_compose_impl(2, 0, v41, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v28, v18, LODWORD(v19), v20, v21, v22, v23);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>, T = CLCalorimetryFMEmbeddingsAccessory, LegacyT = CLCalorimetryFMEmbeddingsAccessory, ConverterT = void]", "%s\n", v16);
      if (v17 != v41)
      {
        free(v17);
      }
    }
  }

  v12 = *(v6 + 24);
  if (!v12)
  {
    p_src = &__src;
    goto LABEL_20;
  }

  if (v12 == 1)
  {
    p_src = &v19;
    LOBYTE(v8) = v9;
LABEL_20:
    memcpy(v4, p_src, 0x80CuLL);
  }

  return v8 & 1;
}

uint64_t sub_10062E224(uint64_t a1, uint64_t a2, double a3)
{
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = -1.0;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = -1.0;
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v8 = sub_100633E84(*(a1 + 8), &v21, a3, *(a1 + 32));
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      *buf = 67110656;
      v51 = v10;
      v52 = 2048;
      v53 = a3;
      v54 = 1024;
      v55 = v7;
      v56 = 2048;
      v57 = v29;
      v58 = 1024;
      v59 = v8;
      v60 = 2048;
      v61 = v21;
      v62 = 1024;
      v63 = v29 == v21;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v17 = *(a1 + 48);
      v37[0] = 67110656;
      v37[1] = v17;
      v38 = 2048;
      v39 = a3;
      v40 = 1024;
      v41 = v7;
      v42 = 2048;
      v43 = v29;
      v44 = 1024;
      v45 = v8;
      v46 = 2048;
      v47 = v21;
      v48 = 1024;
      v49 = v29 == v21;
      LODWORD(v20) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v37, v20, LODWORD(v21), *&v22, DWORD2(v22), *&v23, DWORD2(v23));
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryReducedEmbeddings>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCalorimetryReducedEmbeddings>, T = CLCalorimetryReducedEmbeddings, LegacyT = CLCalorimetryReducedEmbeddings, ConverterT = void]", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    v12 = &v29;
    goto LABEL_20;
  }

  if (v11 == 1)
  {
    v12 = &v21;
    LOBYTE(v7) = v8;
LABEL_20:
    v13 = *(v12 + 5);
    *(a2 + 64) = *(v12 + 4);
    *(a2 + 80) = v13;
    *(a2 + 96) = *(v12 + 6);
    *(a2 + 112) = v12[14];
    v14 = *(v12 + 1);
    *a2 = *v12;
    *(a2 + 16) = v14;
    v15 = *(v12 + 3);
    *(a2 + 32) = *(v12 + 2);
    *(a2 + 48) = v15;
  }

  return v7 & 1;
}

void sub_10062E5A0(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 4564) = *(a2 + 44);
  *(a1 + 4536) = v4;
  *(a1 + 4552) = v5;
  *(a1 + 4520) = v3;
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    v11 = *(a2 + 6);
    v12 = *(a2 + 7);
    v13 = *(a2 + 8);
    v14 = *(a2 + 9);
    v15 = *(a2 + 10);
    v16 = *(a2 + 11);
    v17 = *(a2 + 48);
    v18 = *a2;
    v19 = *(a2 + 1);
    v20 = *(a2 + 56);
    v21 = *(a2 + 57);
    v22 = *(a2 + 58);
    v23 = *(a2 + 13);
    v24[0] = 67113216;
    v24[1] = v18;
    v25 = 2048;
    v26 = v7;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v9;
    v31 = 2048;
    v32 = v10;
    v33 = 2048;
    v34 = v11;
    v35 = 2048;
    v36 = v12;
    v37 = 2048;
    v38 = v13;
    v39 = 2048;
    v40 = v14;
    v41 = 1024;
    v42 = v15;
    v43 = 2048;
    v44 = v16;
    v45 = 1024;
    v46 = v17;
    v47 = 1024;
    v48 = v19;
    v49 = 1024;
    v50 = v20;
    v51 = 1024;
    v52 = v21;
    v53 = 1024;
    v54 = v22;
    v55 = 2048;
    v56 = v23;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "ModelInput,gender,%d,height,%f,weight,%f,vo2max,%f,age,%f,hrmin,%f,hrmax,%f,hronset,%f,pal,%f,condition,%d,runVo2max,%f,betaBlockerUse,%d,biologicalSex,%d,isAgeSet,%d,isHeightSet,%d,isWeightSet,%d,adaptiveEMThresh,%f", v24, 0x90u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB83C(a2);
  }
}

uint64_t sub_10062E7A0(uint64_t a1, uint64_t a2)
{
  result = sub_1000D7E48(a1, a2);
  if (result)
  {
    if (result == 3)
    {
      return *(a1 + 248) & ((*(a1 + 324) & 2u) >> 1);
    }

    else if (result == 2 && *(a1 + 248) == 1)
    {
      return (*(a1 + 240) < 0x19uLL) & (0x1028010u >> *(a1 + 240)) | ((*(a1 + 324) & 2u) >> 1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10062E828(uint64_t a1)
{
  result = sub_10062E86C();
  if (result)
  {
    return sub_10062DB78(a1 + 4304, v3, *(a1 + 8));
  }

  return result;
}

uint64_t sub_10062E86C()
{
  if ((atomic_load_explicit(&qword_1026583E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026583E8))
  {
    v1 = 1;
    sub_100126E84(&unk_1026583E0, "UseAccessoryDMDerivedFeaturesForCalorimetry", &v1, 0);
    __cxa_guard_release(&qword_1026583E8);
  }

  return byte_1026583E1;
}

uint64_t sub_10062E904(uint64_t a1)
{
  result = sub_10062E86C();
  if (result)
  {
    sub_10062DEB8(a1 + 4376);
    return 0;
  }

  return result;
}

uint64_t sub_10062E960(uint64_t a1)
{
  v2[0] = -1.0;
  LODWORD(result) = sub_10062E224(a1 + 4448, v2, *(a1 + 8));
  if (v2[0] > 0.0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void sub_10062E9A4(uint64_t *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 != 19)
  {
    if (v3 == 1)
    {
LABEL_8:
      v9 = sub_1000D51F0(result + 448, a2);
      sub_10062ECAC(v9, 10.0, 0.1);
      v11 = sub_1000D51F0(result + 457, v10);
      sub_10062ECAC(v11, 10.0, 0.1);
      v13 = sub_1000D51F0(result + 412, v12);
      sub_10062EAB0(v13, 35.0, 8.0);
      result[409] = 0x403E000000000000;
      return;
    }

    if (v3)
    {
      return;
    }
  }

  if (*(a2 + 208) != 1)
  {
    goto LABEL_8;
  }

  result[409] = 0x4050400000000000;
  v4 = sub_1000D51F0(result + 412, a2);
  sub_10062EAB0(v4, 65.0, 65.0);
  v6 = sub_1000D51F0(result + 448, v5);
  sub_10062ECAC(v6, 150.0, 150.0);
  v8 = sub_1000D51F0(result + 457, v7);

  sub_10062ECAC(v8, 150.0, 150.0);
}

void sub_10062EAB0(double *a1, double a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 12);
    v8 = *(a1 + 1);
    v9 = *(a1 + 2);
    *buf = 136316162;
    v27 = v8;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v9;
    v34 = 2048;
    v35 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, changing behavior timeout(before), %.3f, timeout(after), %.3f, threshold(before), %.3f, threshold(after), %.3f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v10 = *(a1 + 12);
    v11 = *(a1 + 1);
    v12 = *(a1 + 2);
    v16 = 136316162;
    v17 = v11;
    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v12;
    v24 = 2048;
    v25 = a3;
    LODWORD(v15) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, %s, changing behavior timeout(before), %.3f, timeout(after), %.3f, threshold(before), %.3f, threshold(after), %.3f", &v16, v15);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieInput<CLCatherineData>::modifyTimeouts(CFTimeInterval, CFTimeInterval) [Data_T = CLCatherineData]", "%s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  a1[12] = a2;
  a1[2] = a3;
}

void sub_10062ECAC(double *a1, double a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 12);
    v8 = *(a1 + 1);
    v9 = *(a1 + 2);
    *buf = 136316162;
    v27 = v8;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v9;
    v34 = 2048;
    v35 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, changing behavior timeout(before), %.3f, timeout(after), %.3f, threshold(before), %.3f, threshold(after), %.3f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v10 = *(a1 + 12);
    v11 = *(a1 + 1);
    v12 = *(a1 + 2);
    v16 = 136316162;
    v17 = v11;
    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v12;
    v24 = 2048;
    v25 = a3;
    LODWORD(v15) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, %s, changing behavior timeout(before), %.3f, timeout(after), %.3f, threshold(before), %.3f, threshold(after), %.3f", &v16, v15);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieInput<CLStepCountEntry>::modifyTimeouts(CFTimeInterval, CFTimeInterval) [Data_T = CLStepCountEntry]", "%s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  a1[12] = a2;
  a1[2] = a3;
}

void sub_10062EEAC(void *a1)
{
  sub_10062EF14(a1);

  operator delete();
}

void *sub_10062EF14(void *a1)
{
  *a1 = off_102464760;
  v2 = a1[558];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[549];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[540];
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = a1[531];
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = a1[522];
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = a1[513];
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = a1[504];
  if (v8)
  {
    sub_100008080(v8);
  }

  v9 = a1[495];
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = a1[486];
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = a1[477];
  if (v11)
  {
    sub_100008080(v11);
  }

  v12 = a1[468];
  if (v12)
  {
    sub_100008080(v12);
  }

  v13 = a1[459];
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = a1[450];
  if (v14)
  {
    sub_100008080(v14);
  }

  v15 = a1[441];
  if (v15)
  {
    sub_100008080(v15);
  }

  v16 = a1[432];
  if (v16)
  {
    sub_100008080(v16);
  }

  v17 = a1[423];
  if (v17)
  {
    sub_100008080(v17);
  }

  v18 = a1[414];
  if (v18)
  {
    sub_100008080(v18);
  }

  v19 = a1[411];
  if (v19)
  {
    sub_100008080(v19);
  }

  return a1;
}

void *sub_10062F088(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024647E8;
  sub_1011FE42C(a1 + 3);
  return a1;
}

void sub_10062F104(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024647E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10062F164(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_10062F3E8(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCatherineData>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCatherineData>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_10062F3C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062F3E8(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EBB64();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t *sub_10062F520(uint64_t *a1, uint64_t a2, uint64_t *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  a1[1] = *a3;
  v8 = a3[1];
  a1[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 3) = *a4;
  a1[5] = v9;
  *(a1 + 12) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 6) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_10062F7A4(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLOdometerEntry>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLOdometerEntry>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_10062F780(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062F7A4(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EBC50();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t *sub_10062F8DC(uint64_t *a1, uint64_t a2, uint64_t *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  a1[1] = *a3;
  v8 = a3[1];
  a1[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 3) = *a4;
  a1[5] = v9;
  *(a1 + 12) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 6) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_10062FB60(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLElevationChangeEntry>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLElevationChangeEntry>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_10062FB3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062FB60(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EBD3C();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_10062FC98(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_10062FF1C(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCoarseElevationChangeEntry>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCoarseElevationChangeEntry>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_10062FEF8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10062FF1C(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EBE28();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 122) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100630054(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_1006302D8(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLStepCountEntry>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLStepCountEntry>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_1006302B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006302D8(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EBF14();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100630410(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100630694(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_100630670(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100630694(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC000();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_1006307CC(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100630A50(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLSwimEntry>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLSwimEntry>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_100630A2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100630A50(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC0EC();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100630B88(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100630E0C(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<_CLFitnessMachineData>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<_CLFitnessMachineData>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_100630DE8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100630E0C(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC1D8();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100630F44(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_1006311C8(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryFunctionalStrengthDMFeatures>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryFunctionalStrengthDMFeatures>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_1006311A4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006311C8(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC2C4();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100631300(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100631584(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryDanceDMFeatures>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryDanceDMFeatures>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_100631560(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100631584(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC3B0();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_1006316BC(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100631940(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryRowingDMFeatures>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryRowingDMFeatures>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_10063191C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100631940(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC49C();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100631A78(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100631CFC(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryKickboxingDMFeatures>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryKickboxingDMFeatures>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_100631CD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100631CFC(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC588();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100631E34(uint64_t a1, uint64_t a2, void *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = *a3;
  v8 = a3[1];
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 24) = *a4;
  *(a1 + 40) = v9;
  *(a1 + 48) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 24) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_1006320B8(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLRawHR>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLRawHR>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}