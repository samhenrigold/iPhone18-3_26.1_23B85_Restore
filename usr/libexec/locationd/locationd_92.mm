void sub_100672660(uint64_t a1, unsigned int *a2, CLMotionActivity *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onMotionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onMotionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100673DD0(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10067283C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onMotionStateObserverNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onMotionStateObserverNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100673F58(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100672A18(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onMobileAssetNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onMobileAssetNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006739C0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100672BE4(uint64_t a1, int *a2, unsigned int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onSignalEnvironmentNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onSignalEnvironmentNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100674028(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100672DC0(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onStepCountNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onStepCountNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006740F8(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100672F9C(uint64_t a1, int *a2, const __CFDictionary **a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100673A54(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_100673178(void *a1)
{
  if (objc_opt_class())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100673644, kRegulatoryDomainUpdateNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  result = objc_opt_class();
  if (result)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = a1[86];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100673870;
    v9[3] = &unk_10245B770;
    v9[4] = a1;
    [(NSNotificationCenter *)v4 addObserverForName:PDRDidPairNotification object:v5 queue:0 usingBlock:v9];
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = a1[86];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100673918;
    v8[3] = &unk_10245B770;
    v8[4] = a1;
    return [(NSNotificationCenter *)v6 addObserverForName:PDRDidUnpairNotification object:v7 queue:0 usingBlock:v8];
  }

  return result;
}

void sub_1006732D4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationController,error fetching visits, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }
    }

    v5 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LocationController,error fetching visits", "{msg%{public}.0s:LocationController,error fetching visits, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [[CLVisit alloc] initWithVisit:{objc_msgSend(a2, "firstObject")}];
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "LocationController,fetched most recent visit", &v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9030();
    }

    sub_10066BBE0(v6, v7);
  }
}

void sub_100673610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1018F910C((v12 + 8), (v11 + 8), (v10 + 8));
  operator delete();
}

void sub_100673644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLLocationController::onRegulatoryDomainUpdateNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onRegulatoryDomainUpdateNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006787F4;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_100673870(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006738E4;
  v4[3] = &unk_102449A78;
  v4[4] = v1;
  return [v2 async:v4];
}

uint64_t sub_1006738E4(uint64_t a1)
{
  result = *(*(a1 + 32) + 280);
  if (result)
  {
    return (*(*result + 120))();
  }

  return result;
}

id sub_100673918(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10067398C;
  v4[3] = &unk_102449A78;
  v4[4] = v1;
  return [v2 async:v4];
}

uint64_t sub_10067398C(uint64_t a1)
{
  result = *(*(a1 + 32) + 280);
  if (result)
  {
    return (*(*result + 120))();
  }

  return result;
}

void sub_1006739C0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = *(a1 + 280);
  if (v7)
  {
    (*(*v7 + 104))(v7, a3, a4);
  }

  v8 = *(a1 + 312);
  if (v8)
  {

    sub_100DAAC88(v8, a3, a4);
  }
}

void sub_100673A54(uint64_t a1, uint64_t a2, int *a3, const __CFDictionary **a4)
{
  v23[0].i32[2] = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(&v23[0].i64[1] + 4);
  sub_10000B324(v7, (&v23[0].i64[1] + 4));
  v23[0].i32[3] = 11;
  v23[0].i32[0] = 11;
  v8 = sub_10000AD98(&v23[0].u32[3]);
  v23[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v23[0].i32[3] = 4;
  sub_1005D19F8(v10, &v23[0].u32[3], v23, (a1 + 5220), &v23[0].i32[2], a3);
  v11 = sub_100072010(a3);
  if (CFEqual(v11, kCTRegistrationStatusChangedNotification))
  {
    if ([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")])
    {
      return;
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v23[0].i16[6] = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "device lost registration - no longer has active cell", &v23[0].u8[12], 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9154();
    }

    goto LABEL_9;
  }

  v14 = sub_100072010(a3);
  if (CFEqual(v14, kCTCallStatusChangeNotification))
  {
    v22 = 1;
    if ([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")] && v22 == 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v15 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v23[0].i16[6] = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "device on active call - no longer has active cell", &v23[0].u8[12], 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F9238();
      }

LABEL_9:
      v13 = *(a1 + 280);
      if (v13)
      {
        (*(*v13 + 80))(v13, a3, a4);
      }
    }
  }

  else
  {
    v16 = sub_100072010(a3);
    if (CFEqual(v16, @"kStewieStatus"))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v17 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v23[0].i16[6] = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "device stewie status", &v23[0].u8[12], 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F931C();
      }

      v18 = *a4;
      if (*a4)
      {
        v22 = 0;
        sub_100005548(&v23[0].i32[3], v18);
        if (sub_10001CBC0(&v23[0].i64[1] + 4, @"kStewieUseCaseActiveKey", &v22) && v22 != *(a1 + 1667))
        {
          *(a1 + 1667) = v22;
          v19 = [objc_msgSend(*(a1 + 32) "vendor")];
          if (*(a1 + 5176))
          {
            v20 = 1;
          }

          else
          {
            v20 = *(a1 + 1667);
          }

          [v19 isInEmegencyState:v20 & 1];
          if (*(a1 + 5176))
          {
            v21 = 1;
          }

          else
          {
            v21 = *(a1 + 1667);
          }

          sub_1003E084C(a1 + 800, v21 & 1);
        }

        sub_100005DA4();
      }
    }
  }
}

void sub_100673DD0(uint64_t a1, uint64_t a2, unsigned int *a3, CLMotionActivity *a4)
{
  v20 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v21);
  sub_10000B324(v7, v21[0].i64);
  v22 = 8;
  v21[0].i32[0] = 8;
  v8 = sub_10000AD98(&v22);
  v21[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v22 = 4;
  sub_1005CFE5C(v10, &v22, v21, (a1 + 5220), &v20, a3, a4);
  v11 = *(a1 + 280);
  if (v11)
  {
    (*(*v11 + 16))(v11, a3, a4);
  }

  v12 = *(a1 + 312);
  if (v12)
  {
    sub_100DAA908(v12, a3, a4);
  }

  sub_1003E00A4(a1 + 800, a3, a4);
  sub_1010598F8(a1 + 5296, a3, a4);
  if (*a3 - 1 <= 1)
  {
    v13 = *(a1 + 768);
    if (v13)
    {
      sub_1000DD340(v13, a4);
    }
  }

  v15 = *(a1 + 304);
  if (v15)
  {
    v16 = sub_10000B1F8(v13, v14);
    v22 = 1;
    sub_10001A6B0(v16, &v22);
    sub_100EA85E0(v15, a3, a4);
  }

  v17 = *(a1 + 320);
  if (v17)
  {
    if (*a3 - 1 <= 1)
    {
      v18 = sub_10000B1F8(v13, v14);
      v22 = 0;
      v19 = sub_10001A6B0(v18, &v22);
      sub_10054A5E0(v17, a4, v19);
    }
  }
}

uint64_t sub_100673F58(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v12 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v13);
  sub_10000B324(v7, v13[0].i64);
  v14 = 9;
  v13[0].i32[0] = 9;
  v8 = sub_10000AD98(&v14);
  v13[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v14 = 4;
  sub_1005CF304(v10, &v14, v13, (a1 + 5220), &v12, a3, a4);
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 32))(result, a3, a4);
  }

  return result;
}

uint64_t sub_100674028(uint64_t a1, uint64_t a2, int *a3, unsigned int *a4)
{
  v12 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v13);
  sub_10000B324(v7, v13[0].i64);
  v14 = 10;
  v13[0].i32[0] = 10;
  v8 = sub_10000AD98(&v14);
  v13[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v14 = 4;
  sub_1005D0798(v10, &v14, v13, (a1 + 5220), &v12, a3, a4);
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 64))(result, a3, a4);
  }

  return result;
}

uint64_t sub_1006740F8(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v12 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v13);
  sub_10000B324(v7, v13[0].i64);
  v14 = 27;
  v13[0].i32[0] = 27;
  v8 = sub_10000AD98(&v14);
  v13[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v14 = 4;
  sub_1005D1128(v10, &v14, v13, (a1 + 5220), &v12, a3, a4);
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 72))(result, a3, a4);
  }

  return result;
}

uint64_t sub_1006741C8(uint64_t a1, double a2)
{
  *a1 = off_102467388;
  if (*(a1 + 1664) == 1)
  {
    [*(*(a1 + 1600) + 16) unregister:*(*(a1 + 1600) + 8) forNotification:{1, a2}];
  }

  if (*(a1 + 1665) == 1)
  {
    [*(*(a1 + 1600) + 16) unregister:*(*(a1 + 1600) + 8) forNotification:2];
  }

  v3 = *(a1 + 1600);
  *(a1 + 1600) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 1632);
  if (v4)
  {
    [*(v4 + 16) unregister:*(v4 + 8) forNotification:4];
    [*(*(a1 + 1632) + 16) unregister:*(*(a1 + 1632) + 8) forNotification:9];
    [*(*(a1 + 1632) + 16) unregister:*(*(a1 + 1632) + 8) forNotification:3];
    [*(*(a1 + 1632) + 16) unregister:*(*(a1 + 1632) + 8) forNotification:1];
    v5 = *(a1 + 1632);
    *(a1 + 1632) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  if (*(a1 + 1608))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "LocationController,unregistered from motion state observer", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8644(buf);
      v55[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "LocationController,unregistered from motion state observer", v55, 2);
      v51 = v50;
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLLocationController::~CLLocationController()", "%s\n", v50);
      if (v51 != buf)
      {
        free(v51);
      }
    }

    [*(*(a1 + 1608) + 16) unregister:*(*(a1 + 1608) + 8) forNotification:0];
    v7 = *(a1 + 1608);
    *(a1 + 1608) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  if (*(a1 + 1616))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "LocationController,unregistered from motion state mediator", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8644(buf);
      v55[0] = 0;
      LODWORD(v54) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "LocationController,unregistered from motion state mediator", v55, v54);
      v53 = v52;
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLLocationController::~CLLocationController()", "%s\n", v52);
      if (v53 != buf)
      {
        free(v53);
      }
    }

    [*(*(a1 + 1616) + 16) unregister:*(*(a1 + 1616) + 8) forNotification:0];
    [*(*(a1 + 1616) + 16) unregister:*(*(a1 + 1616) + 8) forNotification:2];
    v9 = *(a1 + 1616);
    *(a1 + 1616) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = *(a1 + 1624);
  if (v10)
  {
    [*(v10 + 16) unregister:*(v10 + 8) forNotification:0];
    v11 = *(a1 + 1624);
    *(a1 + 1624) = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = *(a1 + 1648);
  if (v12)
  {
    sub_1001CBE2C(buf, kCTRegistrationStatusChangedNotification);
    [*(v12 + 16) unregister:*(v12 + 8) forNotification:{sub_10006E830(buf, v13)}];
    v14 = *(a1 + 1648);
    sub_1001CBE2C(buf, kCTCallStatusChangeNotification);
    [*(v14 + 16) unregister:*(v14 + 8) forNotification:{sub_10006E830(buf, v15)}];
    v16 = *(a1 + 1648);
    sub_1001CBE2C(buf, @"kStewieStatus");
    [*(v16 + 16) unregister:*(v16 + 8) forNotification:{sub_10006E830(buf, v17)}];
    v18 = *(a1 + 1648);
    *(a1 + 1648) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  v19 = *(a1 + 168);
  if (v19)
  {
    [*(v19 + 16) unregister:*(v19 + 8) forNotification:2];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:3];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:6];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:8];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:15];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:7];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:13];
    [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:10];
    v20 = *(a1 + 168);
    *(a1 + 168) = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  if (objc_opt_class())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, kRegulatoryDomainUpdateNotification, 0);
  }

  if (objc_opt_class())
  {
    [*(a1 + 688) stop];
    v22 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v22 removeObserver:*(a1 + 688) forKeyPath:PDRDidPairNotification];
    v23 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v23 removeObserver:*(a1 + 688) forKeyPath:PDRDidUnpairNotification];

    *(a1 + 688) = 0;
  }

  v24 = *(a1 + 5208);
  if (v24)
  {

    *(a1 + 5208) = 0;
  }

  v25 = *(a1 + 5280);
  if (v25 && *(a1 + 5272))
  {
    [v25 stopLeechingVisitsForClient:?];
    v25 = *(a1 + 5280);
  }

  *(a1 + 5280) = 0;
  *(a1 + 5272) = 0;
  [*(a1 + 5232) invalidate];

  *(a1 + 5232) = 0;
  sub_100678B08((a1 + 6080));
  v26 = *(a1 + 6064);
  if (v26)
  {
    sub_100008080(v26);
  }

  sub_1001FB750((a1 + 6000));
  v27 = *(a1 + 5992);
  if (v27)
  {
    sub_100008080(v27);
  }

  v28 = *(a1 + 5976);
  if (v28)
  {
    sub_100008080(v28);
  }

  sub_100678ABC((a1 + 5960), 0);
  sub_1003C93BC(a1 + 5864, *(a1 + 5872));
  v29 = *(a1 + 5640);
  if (v29)
  {
    *(a1 + 5648) = v29;
    operator delete(v29);
  }

  sub_100678750(a1 + 2032);
  v30 = *(a1 + 1656);
  *(a1 + 1656) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(a1 + 1648);
  *(a1 + 1648) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(a1 + 1640);
  *(a1 + 1640) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(a1 + 1624);
  *(a1 + 1624) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(a1 + 1616);
  *(a1 + 1616) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(a1 + 1608);
  *(a1 + 1608) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *(a1 + 1600);
  *(a1 + 1600) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = *(a1 + 1592);
  if (v38)
  {
    sub_100008080(v38);
  }

  v39 = *(a1 + 792);
  if (v39)
  {
    sub_100008080(v39);
  }

  v40 = *(a1 + 776);
  if (v40)
  {
    sub_100008080(v40);
  }

  sub_100675664((a1 + 720), 0);
  v41 = *(a1 + 640);
  *(a1 + 640) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  sub_10092EF24(a1 + 360);
  sub_100678A70((a1 + 320), 0);
  sub_100678A24((a1 + 312), 0);
  sub_1006789D8((a1 + 304), 0);
  v42 = *(a1 + 288);
  if (v42)
  {
    sub_100008080(v42);
  }

  sub_100678954(a1 + 256, *(a1 + 264));
  sub_1006788D4(a1 + 232, *(a1 + 240));
  v43 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  v47 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  sub_1006A5E8C(a1);
  return a1;
}

void sub_100674C20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100674C30(uint64_t a1, double a2)
{
  sub_1006741C8(a1, a2);

  operator delete();
}

void sub_100674C68(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v20 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v21);
  sub_10000B324(v7, v21[0].i64);
  *buf = 4;
  v21[0].i32[0] = 4;
  v8 = sub_10000AD98(buf);
  v21[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  *buf = 4;
  sub_1005CCBB0(v10, buf, v21, (a1 + 5220), &v20, a3, a4);
  v11 = *a3;
  if (*a3 == 7)
  {
    v14 = *(a1 + 312);
    if (v14)
    {
      sub_100DA8DE0(v14);
    }
  }

  else
  {
    if (v11 != 6)
    {
      if (v11 == 1)
      {
        sub_100278C3C(a1, 0, *a4 == 0);
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v16 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *a3;
          *buf = 67240192;
          v23 = v17;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "LocationController,onWifiServiceNotification,#Warning,Unhandled status notification,%{public}u", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F983C(a3);
        }
      }

      goto LABEL_21;
    }

    v12 = *(a1 + 312);
    if (v12)
    {
      sub_100DA8DE0(v12);
    }

    if (*(a4 + 48) > 0)
    {
      v13 = *(a4 + 96);
    }

    else
    {
      v13 = 0;
    }

    sub_100278C3C(a1, 4, v13 ^ 1);
    sub_10092E5F4(a1 + 360, v13);
  }

  v15 = *(a1 + 280);
  if (v15)
  {
    (*(*v15 + 528))(v15, a4);
  }

LABEL_21:
  v18 = *(a1 + 312);
  if (v18)
  {
    sub_100DAB2C8(v18, a3, a4);
  }

  v19 = *(a1 + 768);
  if (v19)
  {
    sub_100D24624(v19, a3, a4);
  }
}

void sub_100674E94(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v17 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v18);
  sub_10000B324(v7, v18[0].i64);
  *buf = 5;
  v18[0].i32[0] = 5;
  v8 = sub_10000AD98(buf);
  v18[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  *buf = 4;
  sub_1005CD610(v10, buf, v18, (a1 + 5220), &v17, a3, a4);
  if (*a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v11 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a3;
      *buf = 67240192;
      v20 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "LocationController,onDataProtectionNotification,#Warning,Unhandled status notification,%{public}u", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9928(a3);
    }
  }

  else
  {
    v13 = *a4;
    sub_100278C3C(a1, 2, *a4 != 1);
    if (v13 == 1)
    {
      v16 = sub_10000AE98(v14, v15);
      sub_1005CB16C(v16);
    }
  }
}

void sub_100675010(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v15 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v16);
  sub_10000B324(v7, v16[0].i64);
  v17 = 6;
  v16[0].i32[0] = 6;
  v8 = sub_10000AD98(&v17);
  v16[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v17 = 4;
  sub_1005CE0BC(v10, &v17, v16, (a1 + 5220), &v15, a3, a4);
  v11 = *a3;
  if (*a3 == 9)
  {
    v14 = *(a4 + 113) == 0;
    v12 = a1;
    v13 = 8;
  }

  else if (v11 == 5)
  {
    v12 = a1;
    v13 = 9;
    v14 = 0;
  }

  else
  {
    if (v11 != 4)
    {
      return;
    }

    v12 = a1;
    v13 = 9;
    v14 = 1;
  }

  sub_100278C3C(v12, v13, v14);
}

void sub_100675100(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4)
{
  v11 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v12);
  sub_10000B324(v7, v12[0].i64);
  v13 = 7;
  v12[0].i32[0] = 7;
  v8 = sub_10000AD98(&v13);
  v12[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v13 = 4;
  sub_1005CE950(v10, &v13, v12, (a1 + 5220), &v11, a3, a4);
  if (*a3 == 5)
  {
    sub_100278C3C(a1, 10, (*a4 & 1) == 0);
  }
}

void sub_1006751C0(uint64_t a1, uint64_t a2)
{
  sub_10001A3E8(a1, a2);
  sub_100241210(__p);
  if (v44 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = *__p;
  }

  sub_10000EC00(&v31, v3);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(*__p);
  }

  v4 = v33;
  if (v33 < 0)
  {
    v4 = v32;
  }

  if (!v4)
  {
    if (v33 < 0)
    {
      v32 = 5;
      v5 = v31;
    }

    else
    {
      v33 = 5;
      v5 = &v31;
    }

    strcpy(v5, "Local");
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F97D0();
  }

  v6 = qword_1025D4628;
  v7 = os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    sub_10001A3E8(v7, v8);
    v9 = v34;
    sub_1002412B0(v34);
    if (v37 < 0)
    {
      v9 = *v34;
    }

    v12 = sub_10001A3E8(v10, v11);
    sub_100241350(v12, v29);
    if (v30 >= 0)
    {
      v13 = v29;
    }

    else
    {
      v13 = v29[0];
    }

    v14 = &v31;
    if (v33 < 0)
    {
      v14 = v31;
    }

    *__p = 136446979;
    *&__p[4] = v9;
    v42 = 2081;
    v43 = v13;
    v44 = 2082;
    v45 = v14;
    v46 = 1026;
    v47 = 10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "@ClxVersion, Init, os, %{public}s, model, %{private}s, build, %{public}s, triage, %{public}d", __p, 0x26u);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(*v34);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F97F8(__p);
    v16 = qword_1025D4628;
    sub_10001A3E8(v17, v18);
    v19 = v29;
    sub_1002412B0(v29);
    if (v30 < 0)
    {
      v19 = v29[0];
    }

    v22 = sub_10001A3E8(v20, v21);
    sub_100241350(v22, v27);
    if (v28 >= 0)
    {
      v23 = v27;
    }

    else
    {
      v23 = v27[0];
    }

    v24 = &v31;
    if (v33 < 0)
    {
      v24 = v31;
    }

    *v34 = 136446979;
    *&v34[4] = v19;
    v35 = 2081;
    v36 = v23;
    v37 = 2082;
    v38 = v24;
    v39 = 1026;
    v40 = 10;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v16, 0, "@ClxVersion, Init, os, %{public}s, model, %{private}s, build, %{public}s, triage, %{public}d", v34, 38);
    v26 = v25;
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationController::start()", "%s\n", v26);
    if (v26 != __p)
    {
      free(v26);
    }
  }

  CFRunLoopSourceSignal(*(a1 + 696));
  v15 = sub_100107858();
  CFRunLoopWakeUp(v15);
  sub_1003DDA5C(a1);
  [*(a1 + 5200) registerForUpdates:*(a1 + 32)];
  [*(a1 + 648) setHarvestingEnabled:1];
  if (v33 < 0)
  {
    operator delete(v31);
  }
}

void sub_100675538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006755A8(uint64_t a1)
{
  sub_1006A5ED0(a1);
  [*(a1 + 40) assertInside];
  sub_1003DD5B0(a1);
  [*(a1 + 648) setHarvestingEnabled:0];
  [*(a1 + 648) shutdown];

  *(a1 + 648) = 0;
  [*(a1 + 1672) invalidate];

  *(a1 + 1672) = 0;
  [*(a1 + 5184) stopMonitoringEmergencyState:CLISP_ME_TOKEN];

  *(a1 + 5184) = 0;
  sub_100675664((a1 + 720), 0);

  *(a1 + 5192) = 0;
  v2 = *(a1 + 5200);
  if (v2)
  {
    [v2 unregisterForUpdates:*(a1 + 32)];

    *(a1 + 5200) = 0;
  }
}

uint64_t *sub_100675664(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100758C6C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006756B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 280);
  if (v8 && ((*(*v8 + 144))(v8, a3, a3, a4) & 1) != 0)
  {
    (*(**(a1 + 280) + 168))(*(a1 + 280), a2);
    result = 1;
    *a5 = 1;
    if (*(a2 + 20) > 0.0)
    {
      if (qword_1025D48C0 != -1)
      {
        sub_1018F9B0C();
      }

      v11 = qword_1025D48C8;
      if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
      {
        v44 = *(a2 + 4);
        v46 = *(a2 + 12);
        v53 = *(a2 + 20);
        v12 = *(a2 + 96);
        v51 = sub_1001FD6E4(v12);
        v57 = *(a2 + 44);
        v59 = *(a2 + 60);
        v61 = *(a2 + 84);
        v63 = *(a2 + 88);
        v65 = *(a2 + 76);
        v14 = sub_10000B1F8(v51, v13);
        *buf = 0;
        v15 = sub_10001A6B0(v14, buf) - *(a2 + 76);
        v16 = *(a2 + 28);
        v17 = *(a2 + 36);
        v18 = *(a2 + 52);
        v19 = *(a2 + 68);
        v45 = *(a3 + 184);
        v47 = *(a2 + 128);
        v49 = *(a2 + 132);
        v55 = *(a2 + 136);
        v22 = sub_10000B1F8(v20, v21);
        v23 = sub_100125220(v22);
        *buf = 136320515;
        *v112 = "CL-filtered";
        *&v112[8] = 1024;
        *&v112[10] = 0;
        v113 = 2053;
        v114 = v44;
        v115 = 2053;
        v116 = v46;
        v117 = 2048;
        v118 = v53;
        v119 = 1026;
        v120 = v12;
        v121 = 2082;
        v122 = v51;
        v123 = 2050;
        v124 = v57;
        v125 = 2050;
        v126 = v59;
        v127 = 1026;
        v128 = v61;
        v129 = 2050;
        v130 = v63;
        v131 = 2050;
        v132 = v65;
        v133 = 2050;
        v134 = v15;
        v135 = 2049;
        v136 = v16;
        v137 = 2050;
        v138 = v17;
        v139 = 2050;
        v140 = v18;
        v141 = 2050;
        v142 = v19;
        v143 = 2050;
        v144 = v45;
        v145 = 1026;
        v146 = v47;
        v147 = 1026;
        v148 = v49;
        v149 = 1026;
        v150 = v55;
        v151 = 2050;
        v152 = v23;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,%{public}s,Speed,%{public}.2f,Course,%{public}.2f,Confidence,%{public}d,Lifespan,%{public}.3f,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Altitude,%{private}.3f,AltitudeAccuracy,%{public}.3f,SpeedAccuracy,%{public}.3f,CourseAccuracy,%{public}.1f,timestampGps,%{public}.3lf,integrity,%{public}d,referenceFrame,%{public}d,rawReferenceFrame,%{public}d,propagation_us,%{public}.3f", buf, 0xC6u);
      }

      if (sub_10000A100(123, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48C0 != -1)
        {
          sub_1018F9B20();
        }

        v66 = qword_1025D48C8;
        v28 = *(a2 + 4);
        v29 = *(a2 + 12);
        v30 = *(a2 + 20);
        v31 = *(a2 + 96);
        v32 = sub_1001FD6E4(v31);
        v33 = *(a2 + 44);
        v34 = *(a2 + 60);
        v50 = *(a2 + 84);
        v54 = *(a2 + 88);
        v58 = *(a2 + 76);
        v36 = sub_1000281DC(v32, v35) - v58;
        v48 = *(a2 + 28);
        v52 = *(a2 + 36);
        v56 = *(a2 + 52);
        v60 = *(a2 + 68);
        v37 = *(a3 + 184);
        v62 = *(a2 + 128);
        v64 = *(a2 + 132);
        v38 = *(a2 + 136);
        v41 = sub_10000B1F8(v39, v40);
        v67 = 136320515;
        v68 = "CL-filtered";
        v69 = 1024;
        v70 = 0;
        v71 = 2053;
        v72 = v28;
        v73 = 2053;
        v74 = v29;
        v75 = 2048;
        v76 = v30;
        v77 = 1026;
        v78 = v31;
        v79 = 2082;
        v80 = v32;
        v81 = 2050;
        v82 = v33;
        v83 = 2050;
        v84 = v34;
        v85 = 1026;
        v86 = v50;
        v87 = 2050;
        v88 = v54;
        v89 = 2050;
        v90 = v58;
        v91 = 2050;
        v92 = v36;
        v93 = 2049;
        v94 = v48;
        v95 = 2050;
        v96 = v52;
        v97 = 2050;
        v98 = v56;
        v99 = 2050;
        v100 = v60;
        v101 = 2050;
        v102 = v37;
        v103 = 1026;
        v104 = v62;
        v105 = 1026;
        v106 = v64;
        v107 = 1026;
        v108 = v38;
        v109 = 2050;
        v110 = sub_100125220(v41);
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v66, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%{public}d,%{public}s,Speed,%{public}.2f,Course,%{public}.2f,Confidence,%{public}d,Lifespan,%{public}.3f,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Altitude,%{private}.3f,AltitudeAccuracy,%{public}.3f,SpeedAccuracy,%{public}.3f,CourseAccuracy,%{public}.1f,timestampGps,%{public}.3lf,integrity,%{public}d,referenceFrame,%{public}d,rawReferenceFrame,%{public}d,propagation_us,%{public}.3f", &v67, 198);
        v43 = v42;
        sub_100152C7C("LOCATION", 1, 0, 2, "BOOL CLLocationController::updateLegacyLCLocationFilter(CLDaemonLocation &, const CLLocationProvider_Type::NotificationData &, const LocationProvider &, BOOL &)", "%s\n", v42);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      return 1;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v24 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v25 = *(a3 + 96);
      v26 = *(a3 + 100);
      v27 = *(a3 + 108);
      *buf = 67240705;
      *v112 = v25;
      *&v112[4] = 2053;
      *&v112[6] = v26;
      v113 = 2053;
      v114 = v27;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "location rejected by KF,%{public}d,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F9B48();
    }

    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t sub_100675C94(uint64_t a1, int **a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1018FA228();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5 = sub_10030D934(a2[101]);
    v7 = 134349056;
    v8 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "GPSODOM,Rhythmic batched locations update,size,%{public}zu", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FA23C(a2);
  }

  v7 = 43;
  (*(*a1 + 152))(a1, &v7, a2, 1, 0xFFFFFFFFLL, 0);
  return sub_100675DCC(a1, a2);
}

uint64_t sub_100675DCC(uint64_t a1, int **a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v5 = a2[101];
    if (v5)
    {
      v5 = sub_10030D934(v5);
    }

    v7 = 134349056;
    v8 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "GPSODOM,Batched locations obtained,size,%{public}zu", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FA340(a2);
  }

  v7 = 23;
  return (*(*a1 + 152))(a1, &v7, a2, 1, 0xFFFFFFFFLL, 0);
}

void sub_100675EFC(uint64_t a1, char a2)
{
  sub_100021AFC(v5);
  v12 = a2;
  v4 = 48;
  (*(*a1 + 152))(a1, &v4, v5, 1, 0xFFFFFFFFLL, 0);

  if (v10)
  {
    sub_100008080(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }

  if (v6)
  {
    sub_100008080(v6);
  }
}

void sub_100675FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_100675FD8(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v11 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v12);
  sub_10000B324(v7, v12[0].i64);
  v13 = 20;
  v12[0].i32[0] = 20;
  v8 = sub_10000AD98(&v13);
  v12[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v13 = 4;
  sub_10001E898(v10, &v13, v12, (a1 + 5220), &v11, a3, a4);
  sub_10092E288(a1 + 360, v11, a3, a4);
}

uint64_t sub_100676088(uint64_t a1, void *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "LocationController,setting simulation to %{public}d for all location providers", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FB1B8(a2);
  }

  v5 = *(a1 + 232);
  if (v5 != (a1 + 240))
  {
    __asm { FMOV            V0.2D, #-1.0 }

    v30 = _Q0;
    do
    {
      if (*(v5 + 8))
      {
        *(v5 + 24) = 0xFFFF;
        *(v5 + 108) = 0;
        *(v5 + 100) = 0;
        *(v5 + 116) = xmmword_101C75BF0;
        *(v5 + 132) = v30;
        *(v5 + 148) = v30;
        *(v5 + 164) = v30;
        *(v5 + 45) = 0;
        v5[24] = 0;
        v5[25] = 0;
        v5[23] = 0xBFF0000000000000;
        *(v5 + 52) = 0;
        *(v5 + 212) = 0xBFF0000000000000;
        *(v5 + 55) = 0x7FFFFFFF;
        v5[29] = 0;
        v5[30] = 0;
        v5[28] = 0;
        *(v5 + 248) = 0;
        *buf = v5 + 5;
        v11 = sub_10010A224(a1 + 256, v5 + 10, &unk_101C66300, buf);
        sub_1006A6C20(v11[5], a2);
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          _ZF = *v13 == v5;
          v5 = v13;
        }

        while (!_ZF);
      }

      v5 = v13;
    }

    while (v13 != (a1 + 240));
  }

  v14 = *(a1 + 280);
  if (v14)
  {
    (*(*v14 + 136))(v14);
  }

  *(a1 + 679) = a2;
  v15 = *(a1 + 5984);
  if (v15)
  {
    sub_10083119C(v15, a2);
  }

  if (a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v16 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "LocationController,#WSB,simulation enabled - clearing notification store", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FB2AC();
    }

    v17 = *(a1 + 6088);
    v18 = *(a1 + 6096);
    if (v18 == v17)
    {
      v23 = (a1 + 6120);
      v18 = *(a1 + 6088);
    }

    else
    {
      v19 = *(a1 + 6112);
      v20 = &v17[v19 / 0x49];
      v21 = *v20;
      v22 = *v20 + 56 * (v19 % 0x49);
      v23 = (a1 + 6120);
      v24 = v17[(*(a1 + 6120) + v19) / 0x49] + 56 * ((*(a1 + 6120) + v19) % 0x49);
      if (v22 != v24)
      {
        do
        {
          v25 = *(v22 + 8);
          if (v25)
          {
            *(v22 + 16) = v25;
            operator delete(v25);
            v21 = *v20;
          }

          v22 += 56;
          if (v22 - v21 == 4088)
          {
            v26 = v20[1];
            ++v20;
            v21 = v26;
            v22 = v26;
          }
        }

        while (v22 != v24);
        v18 = *(a1 + 6096);
        v17 = *(a1 + 6088);
      }
    }

    *v23 = 0;
    v27 = v18 - v17;
    if (v27 >= 3)
    {
      do
      {
        operator delete(*v17);
        v17 = (*(a1 + 6088) + 8);
        *(a1 + 6088) = v17;
        v27 = (*(a1 + 6096) - v17) >> 3;
      }

      while (v27 > 2);
    }

    if (v27 == 1)
    {
      v28 = 36;
      goto LABEL_43;
    }

    if (v27 == 2)
    {
      v28 = 73;
LABEL_43:
      *(a1 + 6112) = v28;
    }
  }

  *buf = 0;
  (*(*a1 + 120))(a1, buf);
  *buf = 9;
  result = (*(*a1 + 120))(a1, buf);
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  return result;
}

void sub_100676490(void *a1, char a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,Clearing all location data from the controller", v16, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FB390();
  }

  (*(*a1 + 304))(a1);
  v5 = a1[35];
  if (v5)
  {
    (*(*v5 + 136))(v5);
    (*(*a1[35] + 200))(a1[35]);
  }

  v6 = a1[29];
  if (v6 != a1 + 30)
  {
    __asm { FMOV            V1.2D, #-1.0 }

    do
    {
      if (*(v6 + 8))
      {
        *(v6 + 24) = 0xFFFF;
        *(v6 + 108) = 0;
        *(v6 + 100) = 0;
        *(v6 + 116) = xmmword_101C75BF0;
        *(v6 + 132) = _Q1;
        *(v6 + 148) = _Q1;
        *(v6 + 164) = _Q1;
        *(v6 + 45) = 0;
        v6[24] = 0;
        v6[25] = 0;
        v6[23] = 0xBFF0000000000000;
        *(v6 + 52) = 0;
        *(v6 + 212) = 0xBFF0000000000000;
        *(v6 + 55) = 0x7FFFFFFF;
        v6[29] = 0;
        v6[30] = 0;
        v6[28] = 0;
        *(v6 + 248) = 0;
      }

      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          _ZF = *v13 == v6;
          v6 = v13;
        }

        while (!_ZF);
      }

      v6 = v13;
    }

    while (v13 != a1 + 30);
  }

  if (a2)
  {
    v14 = a1[38];
    if (v14)
    {
      sub_100EA861C(v14);
    }

    v15 = a1[748];
    if (v15)
    {
      sub_100831194(v15);
    }
  }
}

void sub_10067667C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v28 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(buf);
  sub_10000B324(v7, buf);
  *buf = 3;
  v27[0] = 3;
  v8 = sub_10000AD98(buf);
  v27[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  *buf = 4;
  sub_1005CC0FC(v10, buf, v27, (a1 + 5220), &v28, a3, a4);
  if (*a3 == 4)
  {
    v13 = *(a4 + 188);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v14 = qword_1025D4608;
    v15 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v30 = 2082;
      v31 = "";
      v32 = 1026;
      v33 = v13 == 1;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocationController,Location Services, enabled:%{public}d}", buf, 0x18u);
    }

    if (*(a1 + 5217) == 1 && v13 == 1)
    {
      v17 = sub_10000AE98(v15, v16);
      if (*(v17 + 24) == 1)
      {
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v19 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "#locctl,#rec,session already open,no-op", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FB46C();
        }
      }

      else
      {
        v21 = sub_10000AE98(v17, v18);
        sub_1005CAEDC(v21);
        v24 = sub_10000AE98(v22, v23);
        sub_1005CB17C(v24);
        *buf = 0x4000000000000000;
        sub_100671BD8(a1, buf);
      }
    }

    else if (*(a1 + 5217) && v13 != 1)
    {
      v20 = sub_10000AE98(v15, v16);
      sub_1005CADAC(v20);
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v25 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,Location Services state changed,clearing local cache", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FB548();
    }

    sub_100278C3C(a1, 6, *(a4 + 188) != 1);
    sub_100676490(a1, *(a4 + 188) == 0);
    v26 = *(a1 + 312);
    if (v26)
    {
      sub_100DAAB4C(v26, v13 == 1);
    }
  }

  else if (!*a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v11 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,Location Services reset,clearing local cache", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FB624();
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F97D0();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "@ClxNotify, LpReset, 0", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FB700();
    }

    sub_100676490(a1, 1);
    [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  }
}

uint64_t sub_100676A88(uint64_t a1)
{
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 352))();
  }

  return result;
}

void sub_100676AC0(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[12];
    *buf = 134217984;
    *v17 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "LocationController,requested client list,size,%zu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FB9A4();
  }

  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v6 = a1[10];
  v7 = a1 + 11;
  if (v6 != v7)
  {
    do
    {
      sub_10000EC00(__p, [objc_msgSend(v6[8] "description")]);
      *buf = *(v6 + 8);
      if (SHIBYTE(v15) < 0)
      {
        sub_100007244(&v17[1], __p[0], __p[1]);
        v19 = 0;
        v20 = 0;
        v18 = &v19;
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *&v17[1] = *__p;
        *&v17[5] = v15;
        v19 = 0;
        v20 = 0;
        v18 = &v19;
      }

      v8 = v6[5];
      if (v8 != (v6 + 6))
      {
        do
        {
          sub_1003C9410(&v18, v8 + 7, v8 + 7);
          v9 = *(v8 + 1);
          if (v9)
          {
            do
            {
              v10 = v9;
              v9 = *v9;
            }

            while (v9);
          }

          else
          {
            do
            {
              v10 = *(v8 + 2);
              v11 = *v10 == v8;
              v8 = v10;
            }

            while (!v11);
          }

          v8 = v10;
        }

        while (v10 != (v6 + 6));
      }

      sub_10067A508(a2, buf, buf);
      sub_100678894(buf);
      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          v11 = *v13 == v6;
          v6 = v13;
        }

        while (!v11);
      }

      v6 = v13;
    }

    while (v13 != v7);
  }
}

void sub_100676D38(void *a1, uint64_t a2)
{
  v3 = sub_10000B1F8(a1, a2);
  v4 = sub_10000AED4(v3, &v26);
  v5 = a1[35];
  if (v5)
  {
    v6 = (*(*v5 + 504))(v5, v4) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = a1[751];
  while (v7 != (a1 + 750))
  {
    if ([*(v7 + 3) machContinuousTimeSeconds])
    {
      v8 = v26.n128_f64[0];
      [objc_msgSend(*(v7 + 3) "machContinuousTimeSeconds")];
    }

    else
    {
      if (![*(v7 + 3) date])
      {
        v10 = 0;
        goto LABEL_10;
      }

      v8 = v27;
      [objc_msgSend(*(v7 + 3) "date")];
    }

    v10 = v8 - v9 > 895.0;
LABEL_10:
    if ((v6 | v10))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v11 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        v12 = v26.n128_f64[0];
        v13 = v7[5];
        v14 = [*(v7 + 3) description];
        v15 = a1[752];
        *buf = 134350082;
        v39 = v12;
        v40 = 2050;
        v41 = v13;
        v42 = 2050;
        v43 = v12 - v13;
        v44 = 2114;
        v45 = v14;
        v46 = 1026;
        v47 = v15;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#ADL,queue servicing fetch request, mct,%{public}.3f,queue mct,%{public}.3f,delay_s,%{public}.3f, options,%{public}@, queue size, %{public}d", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v18 = qword_1025D4608;
        v19 = v26.n128_f64[0];
        v20 = v7[5];
        v21 = [*(v7 + 3) description];
        v22 = a1[752];
        v28 = 134350082;
        v29 = v19;
        v30 = 2050;
        v31 = v20;
        v32 = 2050;
        v33 = v19 - v20;
        v34 = 2114;
        v35 = v21;
        v36 = 1026;
        v37 = v22;
        LODWORD(v25) = 48;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v18, 1, "#ADL,queue servicing fetch request, mct,%{public}.3f,queue mct,%{public}.3f,delay_s,%{public}.3f, options,%{public}@, queue size, %{public}d", &v28, v25);
        v24 = v23;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::tryServiceRecentLocationsFetchQueue()", "%s\n", v23);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      (*(*(v7 + 2) + 16))();
      _Block_release(*(v7 + 2));
      _Block_release(*(v7 + 4));

      v16 = *v7;
      v17 = *(v7 + 1);
      *(*&v16 + 8) = v17;
      *v17 = v16;
      --a1[752];
      operator delete(v7);
      v7 = v17;
    }

    else
    {
      v7 = *(v7 + 1);
    }
  }
}

void sub_1006770A8(void *result, void *a2)
{
  if (a2 && result[660] && [a2 _placeInference])
  {
    if ([objc_msgSend(a2 "_placeInference")])
    {
      [result[660] fetchLocationOfInterestWithIdentifier:? withReply:?];
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1002976C8();
      }

      v4 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "LocationController,updateCAHomeLoiFromVisit,invalid loi identifier", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018FBA9C();
      }
    }
  }
}

void sub_1006771D0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 68289539;
      *v91 = 0;
      *&v91[4] = 2082;
      *&v91[6] = "";
      *&v91[14] = 2113;
      *&v91[16] = v6;
      *&v91[24] = 2114;
      *&v91[26] = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationController,updateCAHomeLoiFromVisit,error fetching LOI, loiIdentifier:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }
    }

    v7 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      v8 = *(a1 + 32);
      *buf = 68289539;
      *v91 = 0;
      *&v91[4] = 2082;
      *&v91[6] = "";
      *&v91[14] = 2113;
      *&v91[16] = v8;
      *&v91[24] = 2114;
      *&v91[26] = a3;
      v9 = "LocationController,updateCAHomeLoiFromVisit,error fetching LOI";
      v10 = "{msg%{public}.0s:LocationController,updateCAHomeLoiFromVisit,error fetching LOI, loiIdentifier:%{private, location:escape_only}@, error:%{public, location:escape_only}@}";
      v11 = v7;
      v12 = 38;
LABEL_9:
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v9, v10, buf, v12);
    }
  }

  else if (a2)
  {
    v14 = *(a1 + 48);
    v15 = [CLVisit alloc];
    [objc_msgSend_location(a2) latitude];
    v17 = v16;
    [objc_msgSend_location(a2) longitude];
    v19 = CLLocationCoordinate2DMake(v17, v18);
    [objc_msgSend_location(a2) horizontalUncertainty];
    v21 = [v15 initWithCoordinate:objc_msgSend(*(a1 + 40) horizontalAccuracy:"arrivalDate") arrivalDate:objc_msgSend(*(a1 + 40) departureDate:"departureDate") detectionDate:objc_msgSend(*(a1 + 40) placeInference:{"detectionDate"), objc_msgSend(*(a1 + 40), "_placeInference"), v19.latitude, v19.longitude, v20}];
    *buf = 23;
    v79[0] = 23;
    v22 = sub_10000AD98(buf);
    v79[1] = v22;
    v24 = sub_10000AE98(v22, v23);
    sub_1005D2D94(v24, v79, (v14 + 5220), v21, 1);
    if ([a2 type])
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v25 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v26 = [a2 type];
        *buf = 67109120;
        *v91 = v26;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "LocationController,updateCAHomeLoiFromVisit,place type is not home,%d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FBB80(a2);
      }
    }

    else if ([objc_msgSend(a2 "visits")])
    {
      if ([objc_msgSend_location(a2) referenceFrame] != 2)
      {
        [a2 confidence];
        if (v31 >= 0.0)
        {
          HIDWORD(v60) = 0xFFFF;
          v64 = xmmword_101C76220;
          __asm { FMOV            V0.2D, #-1.0 }

          v65 = _Q0;
          v66 = _Q0;
          v67 = 0xBFF0000000000000;
          v68 = 0;
          v71 = 0;
          v69 = 0xBFF0000000000000;
          v70 = 0;
          v72 = 0;
          v73 = 0xBFF0000000000000;
          v74 = 0x7FFFFFFF;
          v77 = 0;
          v75 = 0;
          v76 = 0;
          v78 = 0;
          [objc_msgSend_location(a2) latitude];
          v61 = v37;
          [objc_msgSend_location(a2) longitude];
          v62 = v38;
          [objc_msgSend_location(a2) horizontalUncertainty];
          v63 = v39;
          v40 = sub_1010589B8(v14 + 5296, &v60 + 4);
          v41 = *(v14 + 280);
          if (v41)
          {
            (*(*v41 + 536))(v41, 1, v40);
          }

          if (qword_1025D4600 != -1)
          {
            sub_1018F7C0C();
          }

          v42 = qword_1025D4608;
          v43 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO);
          if (v43)
          {
            v45 = v61;
            v46 = v62;
            v47 = v63;
            v48 = sub_10000B1F8(v43, v44);
            v49 = sub_100125220(v48);
            *buf = 136381699;
            *v91 = "home";
            *&v91[8] = 2053;
            *&v91[10] = v45;
            *&v91[18] = 2053;
            *&v91[20] = v46;
            *&v91[28] = 2050;
            *&v91[30] = v47;
            v92 = 2050;
            v93 = v49;
            _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_INFO, "LocationController,updateCAHomeLoiFromVisit,LOI %{private}s location latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,acc,%{public}.2f,propagation_us,%{public}.3f", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_1018F7C0C();
            }

            v52 = qword_1025D4608;
            v53 = v61;
            v54 = v62;
            v55 = v63;
            v56 = sub_10000B1F8(v50, v51);
            v57 = sub_100125220(v56);
            v80 = 136381699;
            v81 = "home";
            v82 = 2053;
            v83 = v53;
            v84 = 2053;
            v85 = v54;
            v86 = 2050;
            v87 = v55;
            v88 = 2050;
            v89 = v57;
            LODWORD(v60) = 52;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v52, 1, "LocationController,updateCAHomeLoiFromVisit,LOI %{private}s location latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,acc,%{public}.2f,propagation_us,%{public}.3f", &v80, v60);
            v59 = v58;
            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::updateCAHomeLoiFromVisit(const CLVisit *)_block_invoke", "%s\n", v58);
            if (v59 != buf)
            {
              free(v59);
            }
          }
        }
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v27 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 32);
      *buf = 68289283;
      *v91 = 0;
      *&v91[4] = 2082;
      *&v91[6] = "";
      *&v91[14] = 2113;
      *&v91[16] = v28;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationController,updateCAHomeLoiFromVisit,received nil LOI, loiIdentifier:%{private, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }
    }

    v29 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      v30 = *(a1 + 32);
      *buf = 68289283;
      *v91 = 0;
      *&v91[4] = 2082;
      *&v91[6] = "";
      *&v91[14] = 2113;
      *&v91[16] = v30;
      v9 = "LocationController,updateCAHomeLoiFromVisit,received nil LOI";
      v10 = "{msg%{public}.0s:LocationController,updateCAHomeLoiFromVisit,received nil LOI, loiIdentifier:%{private, location:escape_only}@}";
      v11 = v29;
      v12 = 28;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1006778C8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 1512);
    v6 = *(a2 + 1520);
    v8[0] = 67240448;
    v8[1] = v5;
    v9 = 2050;
    v10 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,ntfy,session start,%{public}d,gnss usage sec,%{public}0.2f", v8, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FBEF0();
  }

  v8[0] = 46;
  return (*(*a1 + 152))(a1, v8, a2, 1, 0xFFFFFFFFLL, 0);
}

void sub_100677A00(id a1)
{
  sub_10001CAF4(buf);
  v3 = 0;
  v1 = sub_10001CB4C(*buf, "LCRouteReconstructionDebugLogs", &v3, 0xFFFFFFFFLL);
  byte_102658590 = v1 & v3;
  if (v5)
  {
    sub_100008080(v5);
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = byte_102658590;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLJR,#ADL,enable JIT-RR locations to protobuf,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FBFF4();
  }
}

void sub_100677B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100677B30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 5984);
  if (v4)
  {
    (*(*v4 + 16))(v4, a2, 0);
    v6 = *(a1 + 6056);
    if (v6)
    {
      v6 = sub_100E608F8(v6, a2);
    }

    if (*(a2 + 136) == 5)
    {
      v7 = *(a2 + 16);
      if (*(a1 + 6048) >= v7)
      {
        v7 = *(a1 + 6048);
      }

      *(a1 + 6048) = v7;
    }

    v8 = sub_10000B1F8(v6, v5);
    v19 = 1;
    v9 = sub_10001A6B0(v8, &v19);
    v10 = *(a1 + 6024);
    if (v9 - *(a1 + 6032) <= v10)
    {
      goto LABEL_18;
    }

    v11 = v9 + -900.0;
    v12 = v9 - v10;
    if (v9 - *(a1 + 6048) >= 900.0)
    {
      if (v12 <= 0.0 || v11 <= 0.0 || (*(a1 + 6040) & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    else if (v11 <= 0.0 || v12 <= 0.0)
    {
      goto LABEL_17;
    }

    sub_100E6F1C0(a1, v9, v11, v12);
LABEL_17:
    *(a1 + 6032) = v9;
LABEL_18:
    sub_100677CE4(a1, a2);
  }

  v19 = 0xFFFF;
  v20 = 0;
  v21 = 0;
  v22 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v23 = _Q0;
  v24 = _Q0;
  v25 = _Q0;
  v26 = 0;
  v29 = 0;
  v27 = 0xBFF0000000000000;
  v28 = 0;
  v30 = 0;
  v31 = 0xBFF0000000000000;
  v32 = 0x7FFFFFFF;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v36 = 0;
  sub_10002790C(a2, &v19);
  sub_10002DEDC(a1, &v19);
  sub_100676D38(a1, v18);
}

void sub_100677CE4(uint64_t a1, uint64_t a2)
{
  if (qword_1026585A8 != -1)
  {
    sub_1018FC0E8();
  }

  if (byte_1026585A0 == 1 && (*(a1 + 679) & 1) == 0 && *(a2 + 40) < 200.0)
  {
    v4 = sub_10000B1F8(a1, a2);
    *buf = 1;
    if (sub_10001A6B0(v4, buf) - *(a1 + 6072) > 3.0)
    {
      sub_1000280A0(*(a1 + 5984), &v38);
      v5 = sub_100027FB4(&v38);
      if (v5)
      {
        v7 = sub_10000B1F8(v5, v6);
        *buf = 0;
        v10 = sub_10001A6B0(v7, buf);
        if (v10 - v41 < 3.0)
        {
          v11 = sub_10000B1F8(v8, v9);
          *buf = 1;
          sub_10001A6B0(v11, buf);
          v14 = sub_10000B1F8(v12, v13);
          *buf = 1;
          v15.n128_f64[0] = sub_10001A6B0(v14, buf);
          *(a1 + 6072) = v15.n128_u64[0];
          sub_10002364C(a1, &v38, v15);
          if (sub_100027FB4(&v38))
          {
            v39 = round(v39 * 10.0) / 10.0 + 0.095014;
          }

          v21 = 0xFFFF;
          v23 = 0;
          v22 = 0;
          v24 = xmmword_101C75BF0;
          __asm { FMOV            V0.2D, #-1.0 }

          v25 = _Q0;
          v26 = _Q0;
          v27 = _Q0;
          v28 = 0;
          v32 = 0;
          v30 = 0;
          v31 = 0;
          v29 = 0xBFF0000000000000;
          v33 = 0xBFF0000000000000;
          *v34 = 0x7FFFFFFF;
          v35 = 0;
          v36 = 0;
          *&v34[4] = 0;
          v37 = 0;
          (*(**(a1 + 280) + 168))(*(a1 + 280), &v21);
          v42 = *v34;
          LODWORD(v38) = v21;
          v43 = HIDWORD(v35);
          v45 = v37;
          if ((*(a2 + 112) - 1) <= 1)
          {
            v44 = v40 + *(a2 + 64);
          }

          sub_1000235B0(a1, &v38);
        }
      }
    }
  }
}

void sub_100678108(id a1)
{
  sub_10001CAF4(buf);
  v3 = 0;
  v1 = sub_10001CB4C(*buf, "ADLEnableCachedLocation", &v3, 0xFFFFFFFFLL);
  byte_1026585A0 = v3 || (v1 & 1) == 0;
  if (*v5)
  {
    sub_100008080(*v5);
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v5 = 2082;
    *&v5[2] = "";
    v6 = 1026;
    v7 = byte_1026585A0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ADL,Enable updating cached location, enable:%{public}d}", buf, 0x18u);
  }
}

void sub_100678224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100678244(uint64_t a1)
{
  v1 = *(a1 + 5984);
  if (v1)
  {
    return *(*(v1 + 40) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100678260(void *a1, void *aBlock, void *a3, const void *a4)
{
  if (aBlock && a3 && a4)
  {
    if (a1[752] <= 0x1F3uLL)
    {
      _Block_copy(aBlock);
      v8 = a3;
      v9 = _Block_copy(a4);
      v11 = sub_10000B1F8(v9, v10);
      v17 = 1;
      sub_10001A6B0(v11, &v17);
      operator new();
    }

    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v15 = [a3 description];
      v16 = a1[752];
      v17 = 138543618;
      v18 = v15;
      v19 = 1026;
      v20 = v16;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "#ADL,queue has reached maximum allowed size, executing fetch request immediately, %{public}@, queue size, %{public}d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FC0FC(a3, a1 + 752);
    }

    (*(aBlock + 2))(aBlock, a3, a4);
    return 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v12 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v17 = 138543362;
    v18 = [a3 description];
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "#ADL,queue cannot add invalid fetch request to queue, options,%{public}@", &v17, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018FC33C(a3);
    return 0;
  }

  return result;
}

void sub_100678620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_100678710(uint64_t a1)
{
  sub_1003C93BC(a1 + 568, *(a1 + 576));
  v2 = *(a1 + 344);
  if (v2)
  {
    *(a1 + 352) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100678750(uint64_t a1)
{
  v2 = *(a1 + 2728);
  if (v2)
  {
    sub_100008080(v2);
  }

  if (*(a1 + 2487) < 0)
  {
    operator delete(*(a1 + 2464));
  }

  v3 = *(a1 + 2376);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 2248);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(a1 + 1168);
  if (v5)
  {
    sub_100008080(v5);
  }

  if (*(a1 + 927) < 0)
  {
    operator delete(*(a1 + 904));
  }

  v6 = *(a1 + 816);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(a1 + 688);
  if (v7)
  {
    sub_100008080(v7);
  }

  return a1;
}

uint64_t sub_1006787F4(void *a1)
{
  result = *(a1[4] + 280);
  if (result)
  {
    return (*(*result + 112))(result, a1[5], a1[6], a1[7], a1[8]);
  }

  return result;
}

uint64_t sub_100678894(uint64_t a1)
{
  sub_1003C93BC(a1 + 32, *(a1 + 40));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1006788D4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1006788D4(a1, *a2);
    sub_1006788D4(a1, *(a2 + 1));
    v4 = *(a2 + 98);
    if (v4)
    {
      sub_100008080(v4);
    }

    if (a2[95] < 0)
    {
      operator delete(*(a2 + 9));
    }

    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

void sub_100678954(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100678954(a1, *a2);
    sub_100678954(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_1006789D8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100EA83A0(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100678A24(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100DA89FC(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100678A70(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100549B08(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100678ABC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100D58D7C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100678B08(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x49];
    v7 = *v6;
    v8 = *v6 + 56 * (v5 % 0x49);
    v9 = v2[(a1[5] + v5) / 0x49] + 56 * ((a1[5] + v5) % 0x49);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          *(v8 + 16) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 56;
        if (v8 - v7 == 4088)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 36;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 73;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_1003EE22C(a1);
}

void sub_100678D8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024676B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100678E08(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467708;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100678EF4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467758;
  a2[1] = v2;
  return result;
}

id sub_100678F20(uint64_t a1)
{
  v1 = [objc_msgSend(**(a1 + 8) "vendor")];

  return [v1 syncgetNonSystemLocationClientKeys];
}

uint64_t sub_100678F5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100678FA8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_100679048(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024677E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100679134(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467838;
  a2[1] = v2;
  return result;
}

uint64_t sub_100679160(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067921C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024678B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100679250(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067930C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467948;
  a2[1] = v2;
  return result;
}

uint64_t sub_100679340(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067938C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10067940C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1006794F8(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024679D8;
  sub_1006795DC(a1 + 3, a2);
  return a1;
}

void sub_100679574(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024679D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1006795C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100008080(v1);
  }
}

uint64_t *sub_1006795DC(uint64_t *a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  sub_100D9BFBC(a1, &v4);
  if (*(&v4 + 1))
  {
    sub_100008080(*(&v4 + 1));
  }

  return a1;
}

void sub_100679628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006796CC(void *a1, uint64_t *a2, uint64_t *a3, double *a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102467A28;
  sub_1006797C4((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_100679748(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467A28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006797C4(uint64_t a1, uint64_t *a2, uint64_t *a3, double *a4, double *a5)
{
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10082FC28(a1, &v10, *a4, *a5);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v11)
  {
    sub_100008080(v11);
  }

  return a1;
}

void sub_100679850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1006798E8(char *a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = off_102467A78;
  sub_100679A1C(a1 + 24, a2, a3);
  return a1;
}

void sub_100679964(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1006799B8(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_1001FB750(a1 + 19);
  sub_1001FB750(a1 + 16);
  v3 = a1[14];
  if (v3)
  {

    sub_100008080(v3);
  }
}

char *sub_100679A1C(char *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100E608F4(a1, &v9, &v7);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  return a1;
}

void sub_100679AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100679AE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467AC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100679BB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467B18;
  a2[1] = v2;
  return result;
}

uint64_t sub_100679BEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100679C38(uint64_t a1)
{
  sub_100176170(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_100008080(v2);
  }
}

uint64_t sub_100679CF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100679DB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467C38;
  a2[1] = v2;
  return result;
}

id sub_100679DE0(uint64_t a1, __int128 *a2)
{
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v5 = *a2;
  v6 = a2[1];
  v2 = *(a1 + 8);
  if (qword_1025D4650 != -1)
  {
    sub_1018FA228();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:BarometricAltitude callback}", buf, 0x12u);
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  *buf = v5;
  *&buf[16] = v6;
  return sub_100F2817C(v2, buf);
}

uint64_t sub_100679EE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100679F34(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10067A024(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467CC8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10067A050(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067A09C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10067A18C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467D58;
  a2[1] = v2;
  return result;
}

uint64_t sub_10067A1C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067A27C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467DE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10067A2A8(uint64_t a1)
{
  result = *(*(a1 + 8) + 280);
  if (result)
  {
    return (*(*result + 544))();
  }

  return result;
}

uint64_t sub_10067A2E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067A3A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467E78;
  a2[1] = v2;
  return result;
}

void sub_10067A3CC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 784);
  if (v2)
  {
    sub_1007D6A4C(v2, a2);
  }
}

uint64_t sub_10067A3E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067A42C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_10067A4AC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10067A4AC(a1, *a2);
    sub_10067A4AC(a1, a2[1]);
    sub_100678894((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_10067A508(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    sub_10067A5C8();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10067A68C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100678894(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10067A6F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067A7C0(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x49;
  v3 = v1 - 73;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_10067A948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10067A994(int a1@<W8>, float a2@<S0>)
{
  *(v5 - 80) = a2;
  *(v5 - 76) = a1;
  *(v5 - 72) = 2053;
  *(v4 + 10) = v2;
  *(v5 - 62) = 2053;
  *(v4 + 20) = v3;
}

void sub_10067A9F4()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_10067AAB8()
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

void sub_10067AB70()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C84D00;
      v0[3] = unk_101C84D10;
      v0[4] = xmmword_101C84D20;
      v0[0] = xmmword_101C84CE0;
      v0[1] = unk_101C84CF0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

uint64_t sub_10067AC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100D8A428(a1, a2, a3);
  *v4 = off_102467F48;
  *(v4 + 80) = 0;
  sub_10001CAF4(&v8);
  v10 = 0;
  v5 = sub_10001CB4C(v8, "CLProactiveInertialOdometryIsEnabled", &v10, 0xFFFFFFFFLL);
  *(a1 + 80) = v10 || (v5 & 1) == 0;
  if (v9)
  {
    sub_100008080(v9);
  }

  sub_10001CAF4(&v8);
  v10 = 0;
  v6 = sub_10001CB4C(v8, "CLProactiveInertialOdometryAlwaysOnPolicyOverride", &v10, 0xFFFFFFFFLL);
  *(a1 + 81) = v10 || (v6 & 1) == 0;
  if (v9)
  {
    sub_100008080(v9);
  }

  return a1;
}

void sub_10067AD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  sub_100D8A4F8(v11);
  _Unwind_Resume(a1);
}

void sub_10067AD6C(uint64_t result, double a2)
{
  v3 = (result + 48);
  v2 = *(result + 48);
  v4 = *(result + 80);
  if (v4 == 1)
  {
    if (*(result + 49) == 1 && a2 - *(result + 56) > 600.0)
    {
      if (*(result + 64))
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = *(result + 81);
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v5 = v4 & 1;
  *v3 = v5;
  if (v2 != v5)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018FC444();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v3;
      v8[0] = 67240192;
      v8[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#pbio, CLProactiveInertialOdometrySubscription_Watch, fPolicyStateIsSubscribe, %{public}d", v8, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FC458(v3);
    }
  }
}

void sub_10067AEA8(uint64_t a1)
{
  sub_100D8A4F8(a1);

  operator delete();
}

uint64_t sub_10067B074(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10067B694;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026585D0 != -1)
  {
    dispatch_once(&qword_1026585D0, block);
  }

  return qword_1026371C0;
}

void sub_10067B3D8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, emergencyState", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FC898();
  }

  v7 = sub_100C3DAB0(a2);
  v6 = 23;
  sub_1000FFE90(a1);
}

void sub_10067B4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

void sub_10067B668(id a1)
{
  v2 = sub_10001A3E8(a1, v1);
  if ((sub_10003A088(v2, v3) & 2) != 0)
  {
    byte_1026585C0 = 1;
  }
}

void sub_10067B778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067B7A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = sub_1006A597C(a1, "wifi", a2);
  *v6 = off_102467FE8;
  v6[15] = *a3;
  v7 = a3[1];
  v6[16] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_10067E2EC();
}

void sub_10067C1FC(_Unwind_Exception *a1)
{
  sub_10049C768(v1 + 3632);
  sub_100107AE0(v1 + 224);
  sub_10067DF18(v1 + 168);
  v3 = *(v1 + 160);
  *(v1 + 160) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 128);
  if (v4)
  {
    sub_100008080(v4);
  }

  sub_1006A5E8C(v1);
  _Unwind_Resume(a1);
}

void sub_10067C320(uint64_t a1)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v2 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, wsbtimer", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCCCC();
  }

  v4[0] = 28;
  sub_1000FFE90(a1);
}

void sub_10067C408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067C424(uint64_t a1)
{
  *a1 = off_102467FE8;
  sub_10067C6A0(a1);

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_10049CA54((a1 + 3632));
  if (*(a1 + 160))
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v2 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "@WifiLogic, unregistering for leeched Cell location notification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      v10[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WifiLogic, unregistering for leeched Cell location notification", v10, 2);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLWifiLocationProvider::~CLWifiLocationProvider()", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    [*(*(a1 + 160) + 16) unregister:*(*(a1 + 160) + 8) forNotification:5];
  }

  sub_10049C768(a1 + 3632);
  sub_100107AE0(a1 + 224);
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    sub_100008080(v6);
  }

  sub_1006A5E8C(a1);
  return a1;
}

void sub_10067C658(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10067C668(uint64_t a1)
{
  sub_10067C424(a1);

  operator delete();
}

id sub_10067C6A0(uint64_t a1)
{
  sub_1006A5ED0(a1);
  (*(**(a1 + 120) + 16))(*(a1 + 120));
  [*(a1 + 136) invalidate];
  v2 = *(a1 + 144);

  return [v2 invalidate];
}

_BYTE *sub_10067C708(_BYTE *a1)
{
  v3[0] = 0;
  v6 = 0;
  sub_1000FB724(a1, v3);
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10067C760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067C788(unsigned int *a1, uint64_t a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_100C5D210(*a1);
    sub_100C5CFB0(a2 + 8, __p);
    v6 = v21 >= 0 ? __p : __p[0];
    *buf = 136380931;
    *&buf[4] = v5;
    v13 = 2081;
    v14 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "@WifiLogic, wifi notification %{private}s, associated state, %{private}s", buf, 0x16u);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v7 = qword_1025D4638;
    v8 = sub_100C5D210(*a1);
    sub_100C5CFB0(a2 + 8, buf);
    if (v15 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    v16 = 136380931;
    v17 = v8;
    v18 = 2081;
    v19 = v9;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v7, 0, "@WifiLogic, wifi notification %{private}s, associated state, %{private}s", &v16, 22);
    v11 = v10;
    if (v15 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void logAssociatedStateFromWifiNotification(const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v11);
    if (v11 != __p)
    {
      free(v11);
    }
  }
}

void sub_10067C9B8(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v13[0] = 0;
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v7 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, motion", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCB90(buf);
    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@WifiLogic, entry, motion", v10, 2);
    v9 = v8;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onMotionNotification(int, const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (!*a3)
  {
    *buf = *a4;
    sub_10067F1C0(v13, buf);
    sub_100271780(v11, v13);
    sub_1000FFE90(a1);
  }

  sub_1001039FC(v13);
}

void sub_10067CB98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, signalEnvironment", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FD388();
  }

  v9 = *a4;
  v8 = 15;
  sub_1000FFE90(a1);
}

void sub_10067CC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

void sub_10067CCA8(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v22[0] = 0;
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v7 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, clientNotify", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCB90(buf);
    v19[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@WifiLogic, entry, clientNotify", v19, 2);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if (*a3 == 4)
  {
    *buf = *(a4 + 188) == 1;
    sub_10067F2D4(v22, buf);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v11 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "@WifiLogic, entry, event, location services toggle", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      v19[0] = 0;
      LODWORD(v18) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WifiLogic, entry, event, location services toggle", v19, v18);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    if (*(a4 + 188) == 1)
    {
LABEL_26:
      sub_100271780(v20, v22);
      sub_1000FFE90(a1);
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v12 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "@WifiLogic, #Warning Location Services disabled, clearing database entries", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
LABEL_25:
      sub_10067D194();
      goto LABEL_26;
    }

    sub_1018FCB90(buf);
    v19[0] = 0;
    LODWORD(v18) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WifiLogic, #Warning Location Services disabled, clearing database entries", v19, v18);
    v10 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v17);
LABEL_33:
    if (v10 != buf)
    {
      free(v10);
    }

    goto LABEL_25;
  }

  if (!*a3)
  {
    *buf = 2;
    sub_10067F2D4(v22, buf);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "@WifiLogic, entry, event, privacy reset", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_25;
    }

    sub_1018FCB90(buf);
    v19[0] = 0;
    LODWORD(v18) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WifiLogic, entry, event, privacy reset", v19, v18);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v9);
    goto LABEL_33;
  }

  sub_1001039FC(v22);
}

void sub_10067D194()
{
  sub_1001A74F0(&v0);
  sub_100C94B18(v0);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void sub_10067D1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067D1EC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v14[0] = 0;
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v7 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, alsNotify", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCB90(buf);
    v11[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@WifiLogic, entry, alsNotify", v11, 2);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onNetworkLocationNotification(int, const CLNetworkLocationProvider_Type::Notification &, const CLNetworkLocationProvider_Type::NotificationData &)", "%s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v8 = *a3;
  if (*a3 == 1)
  {
    *buf = *a4;
    sub_10067F6DC(v14, buf);
    goto LABEL_13;
  }

  if (v8 == 2)
  {
    if (!*(a4 + 4))
    {
      *buf = *a4;
      sub_10067F564(v14, buf);
    }

LABEL_13:
    sub_100271780(v12, v14);
    sub_1000FFE90(a1);
  }

  if (v8 == 3)
  {
    *buf = *a4;
    sub_10067F450(v14, buf);
    goto LABEL_13;
  }

  sub_1001039FC(v14);
}

void sub_10067D420(uint64_t a1, uint64_t a2, _DWORD *a3, uint8_t *a4)
{
  v17[0] = 0;
  if (*a3 == 5)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v6 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a4;
      *buf = 67240192;
      v16 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, companionnearby, %{public}d", buf, 8u);
    }

    v8 = sub_10000A100(121, 2);
    if (v8)
    {
      sub_1018FCB90(buf);
      v10 = *a4;
      v14[0] = 67240192;
      v14[1] = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@WifiLogic, entry, companionnearby, %{public}d", v14, 8);
      v12 = v11;
      v8 = sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onCompanionNotification(int, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    sub_10001A3E8(v8, v9);
    if (sub_10001CF3C())
    {
      buf[0] = *a4;
      sub_10067FB6C(v17, buf);
      sub_100271780(v13, v17);
      sub_1000FFE90(a1);
    }
  }

  sub_1001039FC(v17);
}

void sub_10067D6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_10067D7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_10067D8A4(void *a1, uint64_t *a2, __int128 *a3)
{
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A9ED28(a1, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }

  sub_10067D98C();
}

void sub_10067D950(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    sub_100008080(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a13)
  {
    JUMPOUT(0x10067D974);
  }

  JUMPOUT(0x10067D970);
}

void *sub_10067D9F8(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024681E8;
  sub_100F218B4((a1 + 3), a2);
  return a1;
}

void sub_10067DA74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024681E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DB10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DB84(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468288;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DBF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024682D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DC4C(void *a1)
{
  *a1 = off_102468328;
  sub_100102BC8(a1 + 1);

  operator delete();
}

void sub_10067DCD0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468360;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DD44(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024683B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DDB8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DE0C(uint64_t a1)
{
  v1 = (a1 + 24);
  sub_1004906DC(a1 + 48);
  v2 = v1;
  sub_1000F8D88(&v2);
}

void sub_10067DE6C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DEC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_10067DF18(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100008080(v3);
  }

  return a1;
}

uint64_t sub_10067DF64(uint64_t a1)
{
  if (*(a1 + 120) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v3 = a1;
  sub_1000B96B4(&v3);
  return a1;
}

uint64_t sub_10067DFB8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void **sub_10067E028(uint64_t a1)
{
  if (*(a1 + 144) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  return sub_100103B14(a1);
}

uint64_t sub_10067E0A8(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return sub_1004906DC(a1);
}

uint64_t sub_10067E0EC(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return sub_1004906DC(a1);
}

uint64_t sub_10067E130(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      *(a1 + 64) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_10067E180(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  return a1;
}

uint64_t sub_10067E1D0(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 80) == 1)
    {
      v2 = *(a1 + 56);
      if (v2)
      {
        *(a1 + 64) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  return a1;
}

uint64_t sub_10067E22C(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    sub_1004906DC(a1);
  }

  return a1;
}

uint64_t sub_10067E274(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    sub_1004906DC(a1);
  }

  return a1;
}

void *sub_10067E358(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102468540;
  sub_10067E450(a1 + 3, a2);
  return a1;
}

void sub_10067E3D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468540;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10067E450(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10099E820(a1, &v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  return a1;
}

void sub_10067E4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_10067E4C4(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = *a2;
  sub_10067E514(a3, *a2);
  *(a3 + 40) = v4[5];
  *(a3 + 48) = *(v4 + 48);
  *&result = sub_1000F8A78(a3 + 56, (v4 + 7)).n128_u64[0];
  return result;
}

void sub_10067E514(uint64_t a1, uint64_t *a2)
{
  sub_10067E5B8(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_10067E5B8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100103B50(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

double sub_10067E614(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  sub_1000BB5F0(a3);
  *a3 = *v4;
  *(a3 + 16) = *(v4 + 16);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(a3 + 24) = *(v4 + 24);
  *&result = sub_1000F8A78(a3 + 32, v4 + 32).n128_u64[0];
  return result;
}

__n128 sub_10067E670(_OWORD **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  *a2 = **a1;
  *(a2 + 16) = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  *(a2 + 64) = v3[4];
  *(a2 + 80) = v7;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[8];
  *(a2 + 140) = *(v3 + 140);
  *(a2 + 112) = v9;
  *(a2 + 128) = v10;
  *(a2 + 96) = v8;
  memcpy((a2 + 160), v3 + 10, 0x201uLL);
  v11 = *(v3 + 680);
  *(v3 + 680) = 0u;
  v12 = *(a2 + 688);
  *(a2 + 680) = v11;
  if (v12)
  {
    sub_100008080(v12);
  }

  v13 = *(v3 + 696);
  v14 = *(v3 + 728);
  *(a2 + 712) = *(v3 + 712);
  *(a2 + 728) = v14;
  *(a2 + 696) = v13;
  result = *(v3 + 744);
  v16 = *(v3 + 760);
  v17 = *(v3 + 776);
  *(a2 + 785) = *(v3 + 785);
  *(a2 + 760) = v16;
  *(a2 + 776) = v17;
  *(a2 + 744) = result;
  return result;
}

__n128 sub_10067E728(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = **a2;
  *(a3 + 8) = *(*a2 + 8);
  *a3 = v5;
  if (*(a3 + 39) < 0)
  {
    operator delete(*(a3 + 16));
  }

  v6 = *(v4 + 1);
  *(a3 + 32) = v4[4];
  *(a3 + 16) = v6;
  *(v4 + 39) = 0;
  *(v4 + 16) = 0;
  v7 = *(v4 + 100);
  v8 = *(v4 + 11);
  v9 = *(v4 + 9);
  *(a3 + 56) = *(v4 + 7);
  *(a3 + 72) = v9;
  *(a3 + 88) = v8;
  *(a3 + 100) = v7;
  *(a3 + 40) = *(v4 + 5);
  if (*(a3 + 143) < 0)
  {
    operator delete(*(a3 + 120));
  }

  result = *(v4 + 15);
  *(a3 + 136) = v4[17];
  *(a3 + 120) = result;
  *(v4 + 143) = 0;
  *(v4 + 120) = 0;
  return result;
}

void sub_10067E7D4(uint64_t a1, uint64_t a2)
{
  sub_1001039FC(*a1);
  v4 = *a1;
  *(v4 + 8) = 0;
  *(v4 + 96) = 0;
  if (*(a2 + 88) == 1)
  {
    *(v4 + 8) = *a2;
    v5 = *(a2 + 8);
    *(v4 + 32) = *(a2 + 24);
    *(v4 + 16) = v5;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(a2 + 64);
    *(v4 + 88) = *(a2 + 80);
    *(v4 + 72) = v8;
    *(v4 + 56) = v7;
    *(v4 + 40) = v6;
    *(v4 + 96) = 1;
  }

  **a1 = *(a1 + 8);
}

void sub_10067E868(int *a1, uint64_t a2)
{
  if ((sub_10067E904(a1) & 1) == 0)
  {
    v3[0] = 1;
    sub_100103D88(a1, v3);
    sub_1001039FC(v3);
  }
}

void sub_10067E8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067E904(int *a1)
{
  result = 0;
  v3 = *a1 ^ (*a1 >> 31);
  if ((v3 - 2) >= 0x1C)
  {
    if (v3 <= 0)
    {
      if (!v3)
      {
        return result;
      }
    }

    else if (v3 > 29)
    {
      if (v3 > 34)
      {
        if (v3 > 38)
        {
          sub_10053508C();
        }
      }

      else if (v3 <= 31)
      {
        if (v3 != 30)
        {
          sub_10053508C();
        }
      }

      else if (v3 != 32 && v3 != 33)
      {
        sub_10053508C();
      }
    }

    else if (v3 == 1)
    {
      return 1;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067E9C4(int *a1, _BYTE *a2)
{
  v4 = a2;
  if ((sub_10067EA74(a1, &v4) & 1) == 0)
  {
    v6 = *a2;
    v5 = 3;
    sub_100103D88(a1, &v5);
    sub_1001039FC(&v5);
  }
}

void sub_10067EA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067EA74(uint64_t a1, _BYTE **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 4) >= 0x1A)
  {
    if (v4 > 2)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 3)
      {
        *(a1 + 8) = **a2;
        return 1;
      }
    }

    else if (v4 < 3)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067EB44(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_10067EBF4(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 4;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_10067EBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067EBF4(int *a1, int **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 5) >= 0x19)
  {
    if (v4 > 3)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 4)
      {
        a1[2] = **a2;
        return 1;
      }
    }

    else if (v4 < 4)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067ECC4(int *a1, uint64_t a2)
{
  if ((sub_10067ED60(a1) & 1) == 0)
  {
    v3[0] = 2;
    sub_100103D88(a1, v3);
    sub_1001039FC(v3);
  }
}

void sub_10067ED44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067ED60(int *a1)
{
  result = 0;
  v3 = *a1 ^ (*a1 >> 31);
  if ((v3 - 3) >= 0x1B)
  {
    if (v3 > 1)
    {
      if (v3 > 29)
      {
        if (v3 > 34)
        {
          if (v3 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v3 <= 31)
        {
          if (v3 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v3 != 32 && v3 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 < 2)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067EE24(int *a1, uint64_t *a2)
{
  v5 = a2;
  if ((sub_10067EF20(a1, &v5) & 1) == 0)
  {
    LOBYTE(v7) = 0;
    v14 = 0;
    if (*(a2 + 88) == 1)
    {
      v8 = *(a2 + 1);
      v4 = *(a2 + 3);
      v10 = *(a2 + 2);
      v11 = v4;
      v7 = *a2;
      v9 = a2[3];
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
      v12 = *(a2 + 4);
      v13 = a2[10];
      v14 = 1;
    }

    v6 = 5;
    sub_100103D88(a1, &v6);
    sub_1001039FC(&v6);
  }
}

void sub_10067EF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067EF20(int *a1, uint64_t *a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 6) >= 0x18)
  {
    if (v4 > 4)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 5)
      {
        sub_1000F8A78((a1 + 2), *a2);
        return 1;
      }
    }

    else if (v4 < 5)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067EFF4(int *a1, uint64_t *a2)
{
  v5 = a2;
  if ((sub_10067F0F0(a1, &v5) & 1) == 0)
  {
    LOBYTE(v7) = 0;
    v14 = 0;
    if (*(a2 + 88) == 1)
    {
      v8 = *(a2 + 1);
      v4 = *(a2 + 3);
      v10 = *(a2 + 2);
      v11 = v4;
      v7 = *a2;
      v9 = a2[3];
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
      v12 = *(a2 + 4);
      v13 = a2[10];
      v14 = 1;
    }

    v6 = 6;
    sub_100103D88(a1, &v6);
    sub_1001039FC(&v6);
  }
}

void sub_10067F0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F0F0(int *a1, uint64_t *a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 7) >= 0x17)
  {
    if (v4 > 5)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 6)
      {
        sub_1000F8A78((a1 + 2), *a2);
        return 1;
      }
    }

    else if (v4 < 6)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067F1C0(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_10067F270(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 11;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_10067F254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F270(int *a1, int **a2)
{
  v2 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      return v2;
    case 0xB:
      a1[2] = **a2;
      v2 = 1;
      break;
    default:
      sub_10053508C();
  }

  return v2;
}

void sub_10067F2D4(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_10067F384(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 9;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_10067F368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F384(int *a1, int **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 10) >= 0x14)
  {
    if (v4 > 8)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 9)
      {
        a1[2] = **a2;
        return 1;
      }
    }

    else if (v4 < 9)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067F450(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_10067F500(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 19;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_10067F4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F500(int *a1, int **a2)
{
  v2 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      return v2;
    case 0x13:
      a1[2] = **a2;
      v2 = 1;
      break;
    default:
      sub_10053508C();
  }

  return v2;
}

void sub_10067F564(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_10067F614(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 22;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_10067F5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F614(int *a1, int **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if (v4 >= 0x16)
  {
    if (v4 <= 29)
    {
      if ((v4 - 23) < 7)
      {
        return result;
      }

      if (v4 == 22)
      {
        a1[2] = **a2;
        return 1;
      }
    }

    else if (v4 > 34)
    {
      if (v4 <= 36 && v4 != 35)
      {
        sub_10053508C();
      }
    }

    else if (v4 <= 31)
    {
      if (v4 != 30)
      {
        sub_10053508C();
      }
    }

    else if (v4 != 32 && v4 != 33)
    {
      sub_10053508C();
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067F6DC(int *a1, void *a2)
{
  v4 = a2;
  if ((sub_10067F78C(a1, &v4) & 1) == 0)
  {
    v6 = *a2;
    v5 = 20;
    sub_100103D88(a1, &v5);
    sub_1001039FC(&v5);
  }
}

void sub_10067F770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F78C(uint64_t a1, void **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if (v4 >= 0x14)
  {
    if (v4 <= 29)
    {
      if ((v4 - 21) < 9)
      {
        return result;
      }

      if (v4 == 20)
      {
        *(a1 + 8) = **a2;
        return 1;
      }
    }

    else if (v4 > 34)
    {
      if (v4 <= 36 && v4 != 35)
      {
        sub_10053508C();
      }
    }

    else if (v4 <= 31)
    {
      if (v4 != 30)
      {
        sub_10053508C();
      }
    }

    else if (v4 != 32 && v4 != 33)
    {
      sub_10053508C();
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067F854(int *a1, void *a2)
{
  v4 = a2;
  if ((sub_10067F904(a1, &v4) & 1) == 0)
  {
    v6 = *a2;
    v5 = 10;
    sub_100103D88(a1, &v5);
    sub_1001039FC(&v5);
  }
}

void sub_10067F8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F904(uint64_t a1, void **a2)
{
  v2 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      return v2;
    case 0xA:
      *(a1 + 8) = **a2;
      v2 = 1;
      break;
    default:
      sub_10053508C();
  }

  return v2;
}

void sub_10067F968(int *a1, _BYTE *a2)
{
  v4 = a2;
  if ((sub_10067FA18(a1, &v4) & 1) == 0)
  {
    v6 = *a2;
    v5 = 12;
    sub_100103D88(a1, &v5);
    sub_1001039FC(&v5);
  }
}

void sub_10067F9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067FA18(uint64_t a1, _BYTE **a2)
{
  v2 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      return v2;
    case 0xC:
      *(a1 + 8) = **a2;
      v2 = 1;
      break;
    default:
      sub_10053508C();
  }

  return v2;
}

void sub_10067FA7C(int *a1, uint64_t a2)
{
  if ((sub_10067FB18(a1) & 1) == 0)
  {
    v3[0] = 17;
    sub_100103D88(a1, v3);
    sub_1001039FC(v3);
  }
}

void sub_10067FAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067FB18(int *a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  result = 0;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
      return result;
    case 17:
      result = 1;
      break;
    default:
      sub_10053508C();
  }

  return result;
}

void sub_10067FB6C(int *a1, _BYTE *a2)
{
  v4 = a2;
  if ((sub_10067FC1C(a1, &v4) & 1) == 0)
  {
    v6 = *a2;
    v5 = 14;
    sub_100103D88(a1, &v5);
    sub_1001039FC(&v5);
  }
}

void sub_10067FC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067FC1C(uint64_t a1, _BYTE **a2)
{
  v2 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      return v2;
    case 0xE:
      *(a1 + 8) = **a2;
      v2 = 1;
      break;
    default:
      sub_10053508C();
  }

  return v2;
}

void sub_10067FC80()
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

double sub_10067FD68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1015E3B04(a2);
  v4 = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
  *(v3 + 48) = *a1;
  *(v3 + 64) = v4;
  *v4.i8 = vrev64_s32(*(a1 + 56));
  *(v3 + 96) = *(a1 + 48);
  *(v3 + 104) = v4.i64[0];
  *(v3 + 24) = vextq_s8(*(a1 + 104), *(a1 + 104), 8uLL);
  *(v3 + 8) = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
  result = *(a1 + 88);
  v4.i64[0] = *(a1 + 96);
  *(v3 + 40) = result;
  v6 = *(v3 + 128);
  *(v3 + 124) = *(a1 + 40);
  *(v3 + 125) = *(a1 + 64);
  *(v3 + 123) = *(a1 + 16);
  *(v3 + 80) = v4.i64[0];
  *(v3 + 121) = *(a1 + 120);
  *(v3 + 120) = *(a1 + 128);
  *(v3 + 122) = *(a1 + 129);
  v7 = *(a1 + 124);
  v8 = *(a1 + 132);
  *(v3 + 128) = v6 | 0x3FFBFF;
  *(v3 + 112) = v8;
  *(v3 + 116) = v7;
  return result;
}

double sub_10067FE20@<D0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>)
{
  sub_10156CAEC(a2);
  a2[5] = vextq_s8(*a1, *a1, 8uLL);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  a2[4].i64[0] = *(a1 + 40);
  v6 = *(a1 + 80);
  a2[7].i64[1] = *(a1 + 72);
  v7 = a2[9].i32[2];
  a2[6].i32[0] = *(a1 + 24);
  a2[2].i64[1] = v5;
  a2[3].i64[0] = v4;
  a2[2].i64[0] = v6;
  a2[1] = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
  v8 = *(a1 + 104);
  a2[9].i32[2] = v7 | 0x8C1FF;
  a2[8].i32[3] = v8;
  v9 = *(a1 + 112);
  if (v9)
  {
    CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
    v11 = CStringPtr;
    if (CStringPtr)
    {
      v12 = strlen(CStringPtr);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100061080();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v26 = v12;
      if (v12)
      {
        memmove(&__dst, v11, v12);
      }

      __dst.n128_u8[v13] = 0;
      sub_10068004C(a2, &__dst);
      if (v26 < 0)
      {
        operator delete(__dst.n128_u64[0]);
      }
    }
  }

  v14 = a2[9].i32[2];
  a2[9].i16[2] = *(a1 + 120);
  v15 = *(a1 + 156);
  a2[8].i32[2] = *(a1 + 152);
  a2[9].i32[0] = v15;
  v16 = *(a1 + 160);
  a2[6].i64[1] = *(a1 + 164);
  v17 = *(a1 + 173);
  a2[6].i32[1] = *(a1 + 174);
  a2[7].i32[0] = *(a1 + 172);
  a2[7].i32[1] = v17;
  v18 = *(a1 + 176);
  a2[9].i32[2] = v14 | 0x773E00;
  a2[8].i32[0] = v18;
  a2[8].i32[1] = v16;
  sub_10156E894(a2);
  v19 = a2->i64[1];
  v20 = *(a1 + 128);
  *(v19 + 32) |= 1u;
  *(v19 + 8) = v20;
  v21 = a2->i64[1];
  v22 = *(a1 + 136);
  *(v21 + 32) |= 2u;
  *(v21 + 16) = v22;
  v23 = a2->i64[1];
  result = *(a1 + 144);
  *(v23 + 32) |= 4u;
  *(v23 + 24) = result;
  return result;
}

void sub_100680018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10156CBD8(v15);
  _Unwind_Resume(a1);
}

__n128 sub_10068004C(void *a1, __n128 *a2)
{
  sub_1006801D8(a1);
  v4 = a1[9];
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  result = *a2;
  *(v4 + 16) = a2[1].n128_u64[0];
  *v4 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

uint64_t sub_1006800A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10156E924(a2);
  v4 = *(a1 + 24);
  v5 = *(result + 72);
  *(result + 64) = *(a1 + 32);
  *(result + 24) = *(a1 + 40);
  *(result + 40) = *(a1 + 56);
  *(result + 48) = v4;
  *(result + 69) = *(a1 + 64);
  v6 = *(a1 + 72);
  *(result + 56) = *(a1 + 80);
  *(result + 70) = *(a1 + 88);
  v7 = *(a1 + 96);
  *(result + 8) = v6;
  *(result + 16) = v7;
  *(result + 72) = v5 | 0x7FF;
  *(result + 68) = v7 != 0.0;
  return result;
}

__n128 sub_10068011C@<Q0>(int8x16_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_101556BA4(a2);
  v4 = a1->i64[0];
  v5 = a1->i64[1];
  *(v3 + 152) = a1[1].i64[0];
  *(v3 + 160) = v4;
  *(v3 + 136) = vextq_s8(a1[2], a1[2], 8uLL);
  *(v3 + 56) = a1[3].i64[1];
  *(v3 + 64) = v5;
  v6 = a1[5];
  *(v3 + 24) = a1[4];
  *(v3 + 40) = vextq_s8(v6, v6, 8uLL);
  v7 = a1[7];
  *(v3 + 8) = a1[6];
  *(v3 + 120) = vextq_s8(v7, v7, 8uLL);
  v8 = a1[9];
  *(v3 + 72) = a1[8];
  v9 = *(v3 + 188);
  *(v3 + 184) = a1[1].i8[8];
  *(v3 + 182) = a1[3].i16[0];
  v10 = a1[11].i32[0];
  v11 = a1[11].u8[5];
  *(v3 + 168) = a1[11].u8[4];
  *(v3 + 172) = v11;
  *(v3 + 176) = v10;
  *(v3 + 180) = a1[11].i8[6];
  *(v3 + 104) = v8;
  result = a1[10];
  *(v3 + 88) = result;
  v13 = a1[11].i8[7];
  *(v3 + 188) = v9 | 0xFFFFFFF;
  *(v3 + 181) = v13;
  return result;
}

void *sub_1006801D8(void *result)
{
  if (!result[9])
  {
    operator new();
  }

  return result;
}

void sub_10068024C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

uint64_t sub_1006802A8(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 0xBFF0000000000000;
  CLMotionActivity::getInit(a1);
  *(a1 + 176) = xmmword_101C85F60;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  sub_100680338(a1);
  return a1;
}

double sub_100680338(uint64_t a1)
{
  memset(v8 + 8, 0, 136);
  *&v8[0] = 0xBFF0000000000000;
  CLMotionActivity::getInit(a1);
  v2 = v8[7];
  *(a1 + 128) = v8[6];
  *(a1 + 144) = v2;
  *(a1 + 160) = v8[8];
  v3 = v8[3];
  *(a1 + 64) = v8[2];
  *(a1 + 80) = v3;
  v4 = v8[5];
  *(a1 + 96) = v8[4];
  *(a1 + 112) = v4;
  v5 = v8[1];
  *(a1 + 32) = v8[0];
  *(a1 + 48) = v5;
  *(a1 + 24) = 0;
  sub_1003C93BC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v7 = 0;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7, &unk_101C66300, v8)[5] = 0xBFF0000000000000;
  v7 = 1;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7, &unk_101C66300, v8)[5] = 0xBFF0000000000000;
  v7 = 2;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7, &unk_101C66300, v8)[5] = 0xBFF0000000000000;
  v7 = 3;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7, &unk_101C66300, v8)[5] = 0xBFF0000000000000;
  v7 = 4;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7, &unk_101C66300, v8)[5] = 0xBFF0000000000000;
  v7 = 5;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7, &unk_101C66300, v8)[5] = 0xBFF0000000000000;
  v7 = 6;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7, &unk_101C66300, v8)[5] = 0xBFF0000000000000;
  v7 = 7;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7, &unk_101C66300, v8)[5] = 0xBFF0000000000000;
  v7 = 8;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7, &unk_101C66300, v8)[5] = 0xBFF0000000000000;
  v7 = 9;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7, &unk_101C66300, v8)[5] = 0xBFF0000000000000;
  v7 = 10;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7, &unk_101C66300, v8)[5] = 0xBFF0000000000000;
  result = -1.0;
  *(a1 + 176) = xmmword_101C85F60;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return result;
}

uint64_t sub_100680608(uint64_t result, __int128 *a2, double a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = *(a2 + 16);
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v11 = *a2;
  v10 = a2[1];
  *(result + 32) = a3;
  *(result + 40) = v11;
  *(result + 104) = v9;
  *(result + 88) = v7;
  *(result + 72) = v6;
  *(result + 56) = v10;
  *(result + 168) = v5;
  *(result + 152) = v4;
  *(result + 136) = v3;
  *(result + 120) = v8;
  return result;
}

BOOL sub_100680650(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  if (v3 < 0.0)
  {
    return 1;
  }

  if (v3 <= a2)
  {
    return a2 - v3 > a3;
  }

  return 0;
}

double *sub_100680684(uint64_t a1, __int128 *a2, double a3)
{
  *(a1 + 176) = a3;
  v6 = *a2;
  *(a1 + 200) = *(a2 + 4);
  *(a1 + 184) = v6;
  v7 = *(a1 + 24);
  if (CLMotionActivity::isTypePedestrian())
  {
    if (CLMotionActivity::isTypeWalking())
    {
      v8 = *(a1 + 24) == 4;
    }

    else
    {
      v8 = 1;
    }

    v35 = 4;
    *buf = &v35;
    v12 = *(sub_1000AE2AC(a1, &v35, &unk_101C66300, buf) + 5);
    if (CLMotionActivity::isTypeRunning())
    {
      v13 = *(a1 + 24) == 5;
    }

    else
    {
      v13 = 1;
    }

    v35 = 5;
    *buf = &v35;
    v14 = sub_1000AE2AC(a1, &v35, &unk_101C66300, buf);
    v15 = v12 > 0.0 || v8;
    if (v15)
    {
      v16 = *(v14 + 5);
      v17 = v16 > 0.0 || v13;
      if (v17)
      {
        v18 = *(a1 + 24);
        if (v18 > 0xA || ((1 << v18) & 0x7C7) == 0)
        {
          v19 = v12 <= 0.0 || v8;
          if (v19)
          {
            v20 = v16 <= 0.0 || v13;
            if ((v20 & 1) == 0)
            {
              v35 = 5;
              *buf = &v35;
              if (*(sub_1000AE2AC(a1, &v35, &unk_101C66300, buf) + 5) > 0.0)
              {
                v35 = 5;
                *buf = &v35;
                if (a3 - *(sub_1000AE2AC(a1, &v35, &unk_101C66300, buf) + 5) > 10.0)
                {
                  v21 = 5;
LABEL_46:
                  *(a1 + 24) = v21;
                  goto LABEL_52;
                }
              }
            }
          }

          else
          {
            v35 = 4;
            *buf = &v35;
            if (*(sub_1000AE2AC(a1, &v35, &unk_101C66300, buf) + 5) > 0.0)
            {
              v35 = 4;
              *buf = &v35;
              if (a3 - *(sub_1000AE2AC(a1, &v35, &unk_101C66300, buf) + 5) > 10.0)
              {
                v21 = 4;
                goto LABEL_46;
              }
            }
          }
        }

        goto LABEL_52;
      }

      *(a1 + 24) = 5;
      if (qword_1025D4770 != -1)
      {
        sub_1018FE864();
      }

      v24 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#workout,setting dynamics running mode for the first time,mct,%{public}.3f", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_52;
      }

      sub_1018FE820(buf);
      v35 = 134349056;
      v36 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#workout,setting dynamics running mode for the first time,mct,%{public}.3f", &v35, 12);
      v11 = v33;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionMotionActivity::fitnessActivityUpdate(const CFTimeInterval, const CLWorkoutUpdate &)", "%s\n", v33);
    }

    else
    {
      *(a1 + 24) = 4;
      if (qword_1025D4770 != -1)
      {
        sub_1018FE864();
      }

      v22 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#workout,setting dynamics walking mode for the first time,mct,%{public}.3f", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_52;
      }

      sub_1018FE820(buf);
      v35 = 134349056;
      v36 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#workout,setting dynamics walking mode for the first time,mct,%{public}.3f", &v35, 12);
      v11 = v23;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionMotionActivity::fitnessActivityUpdate(const CFTimeInterval, const CLWorkoutUpdate &)", "%s\n", v23);
    }

LABEL_64:
    if (v11 != buf)
    {
      free(v11);
    }

    goto LABEL_52;
  }

  if (CLMotionActivity::isTypeCycling() && *(a1 + 24) != 6)
  {
    v21 = 6;
    goto LABEL_46;
  }

  if (!*(a2 + 2) && (*(a1 + 24) - 5) <= 1)
  {
    *(a1 + 24) = 3;
    if (qword_1025D4770 != -1)
    {
      sub_1018FE80C();
    }

    v9 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = a3;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#workout,workout ended from a running or cycling session, reverting dynamics mode to moving pedestrian,mct,%{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE820(buf);
      v35 = 134349056;
      v36 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#workout,workout ended from a running or cycling session, reverting dynamics mode to moving pedestrian,mct,%{public}.3f", &v35, 12);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionMotionActivity::fitnessActivityUpdate(const CFTimeInterval, const CLWorkoutUpdate &)", "%s\n", v10);
      goto LABEL_64;
    }
  }

LABEL_52:
  if (qword_1025D4770 != -1)
  {
    sub_1018FE864();
  }

  v25 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a2 + 2);
    v27 = *(a1 + 24);
    *buf = 134349824;
    *&buf[4] = a3;
    v44 = 1026;
    v45 = v26;
    v46 = 1026;
    v47 = v7;
    v48 = 1026;
    v49 = v27;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#workout,dynamics mode on workout update,mct,%{public}.3f,workoutType,%{public}d,old dynamics mode,%{public}d,new dynamics mode,%{public}d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE820(buf);
    v29 = *(a2 + 2);
    v30 = *(a1 + 24);
    v35 = 134349824;
    v36 = a3;
    v37 = 1026;
    v38 = v29;
    v39 = 1026;
    v40 = v7;
    v41 = 1026;
    v42 = v30;
    LODWORD(v34) = 30;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#workout,dynamics mode on workout update,mct,%{public}.3f,workoutType,%{public}d,old dynamics mode,%{public}d,new dynamics mode,%{public}d", &v35, v34);
    v32 = v31;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionMotionActivity::fitnessActivityUpdate(const CFTimeInterval, const CLWorkoutUpdate &)", "%s\n", v31);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  v35 = *(a1 + 24);
  *buf = &v35;
  result = sub_1000AE2AC(a1, &v35, &unk_101C66300, buf);
  result[5] = a3;
  return result;
}

void sub_100680DE8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100680DF4(uint64_t a1, double a2, double a3)
{
  v19 = 0;
  v20 = 9;
  *buf = &v20;
  v6 = -1.0;
  if (*(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5) <= -1.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 9;
    v20 = 9;
    *buf = &v20;
    v6 = *(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5);
    v19 = 9;
  }

  v20 = 8;
  *buf = &v20;
  if (*(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5) > v6)
  {
    v7 = 8;
    v20 = 8;
    *buf = &v20;
    v6 = *(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5);
    v19 = 8;
  }

  v20 = 7;
  *buf = &v20;
  if (*(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5) > v6)
  {
    v7 = 7;
    v20 = 7;
    *buf = &v20;
    v6 = *(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5);
    v19 = 7;
  }

  v20 = 6;
  *buf = &v20;
  if (*(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5) > v6)
  {
    v7 = 6;
    v20 = 6;
    *buf = &v20;
    v6 = *(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5);
    v19 = 6;
  }

  v20 = 5;
  *buf = &v20;
  if (*(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5) > v6)
  {
    v7 = 5;
    v20 = 5;
    *buf = &v20;
    v6 = *(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5);
    v19 = 5;
  }

  v20 = 4;
  *buf = &v20;
  if (*(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5) > v6)
  {
    v7 = 4;
    v20 = 4;
    *buf = &v20;
    v6 = *(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5);
    v19 = 4;
  }

  v20 = 3;
  *buf = &v20;
  if (*(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5) > v6)
  {
    v7 = 3;
    v20 = 3;
    *buf = &v20;
    v6 = *(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5);
    v19 = 3;
  }

  v20 = 2;
  *buf = &v20;
  if (*(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5) > v6)
  {
    v7 = 2;
    v20 = 2;
    *buf = &v20;
    v6 = *(sub_1000AE2AC(a1, &v20, &unk_101C66300, buf) + 5);
    v19 = 2;
  }

  if (v6 > 0.0 && (a3 < 0.0 || vabdd_f64(a2, v6) <= a3))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018FE864();
    }

    v14 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 24);
      *buf = 134349824;
      *&buf[4] = a2;
      v27 = 1026;
      v28 = v15;
      v29 = 1026;
      *v30 = v7;
      *&v30[4] = 2050;
      *&v30[6] = v6;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#motion,last known non-static dynamics mode used,mct,%{public}.3f,current dynamics mode,%{public}d,last non-static dynamics mode,%{public}d,last non-static dynamics mct,%{public}.3f", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE820(buf);
      v16 = *(a1 + 24);
      v20 = 134349824;
      v21 = a2;
      v22 = 1026;
      v23 = v16;
      v24 = 1026;
      *v25 = v7;
      *&v25[4] = 2050;
      *&v25[6] = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#motion,last known non-static dynamics mode used,mct,%{public}.3f,current dynamics mode,%{public}d,last non-static dynamics mode,%{public}d,last non-static dynamics mct,%{public}.3f", &v20, 34);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionMotionActivity::setDynamicsModeToLastKnownNonStatic(const CFTimeInterval, const double)", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    *(a1 + 24) = v7;
    *buf = &v19;
    *(sub_1000AE2AC(a1, &v19, &unk_101C66300, buf) + 5) = a2;
    return 1;
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018FE864();
    }

    v8 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 24);
      *buf = 134349824;
      *&buf[4] = a2;
      v27 = 1026;
      v28 = v9;
      v29 = 2050;
      *v30 = v6;
      *&v30[8] = 2050;
      *&v30[10] = a2 - v6;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#motion,cannot get last known non-static dynamics mode used,mct,%{public}.3f,current dynamics mode,%{public}d,last non-static dynamics mct,%{public}.3f,age of non-static dynamics mode,%{public}.3f", buf, 0x26u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018FE820(buf);
      v11 = *(a1 + 24);
      v20 = 134349824;
      v21 = a2;
      v22 = 1026;
      v23 = v11;
      v24 = 2050;
      *v25 = v6;
      *&v25[8] = 2050;
      *&v25[10] = a2 - v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#motion,cannot get last known non-static dynamics mode used,mct,%{public}.3f,current dynamics mode,%{public}d,last non-static dynamics mct,%{public}.3f,age of non-static dynamics mode,%{public}.3f", &v20, 38);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionMotionActivity::setDynamicsModeToLastKnownNonStatic(const CFTimeInterval, const double)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }

      return 0;
    }
  }

  return result;
}

void sub_1006814E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

double *sub_1006814F0@<X0>(void *a1@<X0>, _DWORD *a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  v5 = *a1;
  result = (a1 + 1);
  v4 = v5;
  if (v5 != result)
  {
    v6 = 1.79769313e308;
    do
    {
      v7 = v4[5];
      if (v7 > 0.0 && v7 >= a3 && v7 <= v6)
      {
        *a2 = *(v4 + 8);
        v6 = v7;
      }

      v10 = *(v4 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v4 + 2);
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_100681564(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  if (v3 >= 0.0 && (a3 >= 0.0 ? (v5 = v3 <= a2) : (v5 = 0), v5 ? (v6 = a2 - v3 <= a3) : (v6 = 1), v6))
  {
    return CLMotionActivity::isInVehicle((a1 + 40));
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1006815F8(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  v7 = *(a2 + 120);
  *(a1 + 128) = 0;
  v8 = a1 + 128;
  *(a1 + 120) = v7;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_10038EB38((a1 + 128), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(v8 + 24) = *(a2 + 152);
  v9 = *(a2 + 168);
  v10 = *(a2 + 184);
  v11 = *(a2 + 200);
  *(v8 + 88) = *(a2 + 216);
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = v9;
  v12 = *(a2 + 232);
  v13 = *(a2 + 248);
  v14 = *(a2 + 264);
  *(v8 + 152) = *(a2 + 280);
  *(v8 + 136) = v14;
  *(v8 + 120) = v13;
  *(v8 + 104) = v12;
  v15 = *(a2 + 296);
  v16 = *(a2 + 312);
  v17 = *(a2 + 328);
  *(v8 + 212) = *(a2 + 340);
  *(v8 + 200) = v17;
  *(v8 + 184) = v16;
  *(v8 + 168) = v15;
  if (*(a2 + 383) < 0)
  {
    sub_100007244((v8 + 232), *(a2 + 360), *(a2 + 368));
  }

  else
  {
    v18 = *(a2 + 360);
    *(v8 + 248) = *(a2 + 376);
    *(v8 + 232) = v18;
  }

  v19 = *(a2 + 384);
  v20 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v20;
  *(a1 + 384) = v19;
  v21 = *(a2 + 432);
  v22 = *(a2 + 448);
  v23 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v23;
  *(a1 + 432) = v21;
  *(a1 + 448) = v22;
  v24 = *(a2 + 496);
  v25 = *(a2 + 512);
  v26 = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 512) = v25;
  *(a1 + 528) = v26;
  *(a1 + 496) = v24;
  v27 = *(a2 + 552);
  v28 = *(a2 + 568);
  v29 = *(a2 + 600);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 600) = v29;
  *(a1 + 552) = v27;
  *(a1 + 568) = v28;
  v30 = *(a2 + 616);
  v31 = *(a2 + 632);
  v32 = *(a2 + 664);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 664) = v32;
  *(a1 + 616) = v30;
  *(a1 + 632) = v31;
  v33 = *(a2 + 680);
  v34 = *(a2 + 696);
  v35 = *(a2 + 712);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 696) = v34;
  *(a1 + 712) = v35;
  *(a1 + 680) = v33;
  if (*(a2 + 759) < 0)
  {
    sub_100007244((a1 + 736), *(a2 + 736), *(a2 + 744));
  }

  else
  {
    v36 = *(a2 + 736);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 736) = v36;
  }

  result = (a1 + 760);
  if (*(a2 + 783) < 0)
  {
    return sub_100007244(result, *(a2 + 760), *(a2 + 768));
  }

  v38 = *(a2 + 760);
  *(a1 + 776) = *(a2 + 776);
  *result = v38;
  return result;
}

void sub_1006817E4(_Unwind_Exception *a1)
{
  if (*(v1 + 759) < 0)
  {
    operator delete(*v2);
  }

  sub_10056D2F4(v1 + 40);
  _Unwind_Resume(a1);
}

void sub_100681828(uint64_t a1)
{
  if (*(a1 + 783) < 0)
  {
    operator delete(*(a1 + 760));
  }

  if (*(a1 + 759) < 0)
  {
    operator delete(*(a1 + 736));
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;

    operator delete(v2);
  }
}

NSDictionary *sub_1006818A0(uint64_t a1)
{
  v4[0] = @"cell";
  v3[0] = @"provider";
  v3[1] = @"flow";
  v1 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v1 = *v1;
  }

  v3[2] = @"island";
  v4[1] = [NSString stringWithUTF8String:v1];
  v4[2] = @"null";
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_100681958(uint64_t a1)
{
  v4[0] = @"cell";
  v3[0] = @"provider";
  v3[1] = @"flow";
  v1 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v1 = *v1;
  }

  v3[2] = @"island";
  v4[1] = [NSString stringWithUTF8String:v1];
  v4[2] = @"sentinel";
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

double sub_100681A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 20);
  if (v3 > 0.0)
  {
    v7 = (a3 + 8);
    v8 = (a2 + 76);
    v9 = vabdd_f64(*(a3 + 8), *(a2 + 76));
    if (v9 > *(sub_101227030() + 2))
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018FE88C();
      }

      v11 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v12 = vabdd_f64(*v7, *v8);
        *buf = 134349056;
        v37 = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "getUncBasedOnTAInflation,stale TA, time delta, %{public}.2f, returning original unc", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FEE64(v7, v8);
      }

      return *(a2 + 20);
    }

    v14 = *(a3 + 16) == 1 && *(a1 + 8) == 6;
    if (!v14 || (v15 = sub_10007513C(a1, v10), *(a3 + 24) != *v15) || *(a3 + 28) != v15[1] || *(a3 + 32) != v15[2] || *(a3 + 36) != v15[3] || *a3 < 1)
    {
      if (*(a3 + 17) == 1 && *(a1 + 8) == 10)
      {
        sub_100681E80(a1, v10);
      }

      return *(a2 + 20);
    }

    v16 = *a3 * 4.879;
    v17 = *(sub_101227030() + 4) * *(a2 + 20);
    if (v16 < v17)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018FE88C();
      }

      v18 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        v37 = v16;
        v38 = 2050;
        v39 = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "getUncBasedOnTAInflation,ta_too_small,%{public}f,lower_bound,%{public}f,returning original unc", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FED3C(v16, v17);
      }

      return *(a2 + 20);
    }

    v19 = *(sub_101227030() + 3);
    v20 = *(a2 + 20);
    v21 = v19 * v20;
    if (v19 * v20 >= v16)
    {
      v22 = v16;
    }

    else
    {
      v22 = v19 * v20;
    }

    if (v20 >= v22)
    {
      v3 = *(a2 + 20);
    }

    else
    {
      v3 = v22;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018FE88C();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a2 + 20);
      *buf = 134349824;
      v37 = v24;
      v38 = 2050;
      v39 = v16;
      v40 = 2050;
      v41 = v3;
      v42 = 1026;
      v43 = v3 == v21;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "getUncBasedOnTAInflation,original_unc,%{public}f,ta_unc,%{public}f,final_unc,%{public}f,capped,%{public}d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018FE9CC();
      }

      v25 = *(a2 + 20);
      v28 = 134349824;
      v29 = v25;
      v30 = 2050;
      v31 = v16;
      v32 = 2050;
      v33 = v3;
      v34 = 1026;
      v35 = v3 == v21;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "getUncBasedOnTAInflation,original_unc,%{public}f,ta_unc,%{public}f,final_unc,%{public}f,capped,%{public}d", &v28, 38);
      v27 = v26;
      sub_100152C7C("Generic", 1, 0, 2, "static double CLUnifiedCellLocationProviderLogic::getUncBasedOnTAInflation(const CLCell &, const CLDaemonLocation &, const CellTimingAdvanceInfo &)", "%s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

  return v3;
}

uint64_t sub_100681E80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 10)
  {
    sub_1018FEF78(a1, a2);
  }

  return a1 + 600;
}

uint64_t sub_100681EA4@<X0>(void *a2@<X8>)
{
  sub_10003848C(v16);
  v3 = sub_100038730(&v17, "{", 1);
  sub_100038730(v3, "lte_ta_val, ", 12);
  std::ostream::operator<<();
  sub_100038730(&v17, ", nr_ta_val, ", 13);
  std::ostream::operator<<();
  v4 = sub_100038730(&v17, ", taQuerytimestamp, ", 20);
  v5 = *v4;
  *(v4 + *(*v4 - 24) + 16) = 1;
  *(v4 + *(v5 - 24) + 8) = *(v4 + *(v5 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  sub_100038730(&v17, ", istaLte, ", 11);
  std::ostream::operator<<();
  sub_100038730(&v17, ", istaNr, ", 10);
  std::ostream::operator<<();
  v6 = sub_100038730(&v17, ", lte_key, ", 11);
  v7 = __p;
  sub_100075418(__p);
  if (v15 < 0)
  {
    v7 = __p[0];
  }

  v8 = strlen(v7);
  sub_100038730(v6, v7, v8);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = sub_100038730(&v17, ", nr_key, ", 10);
  sub_100642C8C(__p);
  if (v15 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = strlen(v10);
  sub_100038730(v9, v10, v11);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100038730(&v17, "}", 1);
  sub_100073518(v16, a2);
  v17 = v12;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1006821FC(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10068227C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 16);
      v11 = *(v9 + 32);
      v12 = *(v9 + 48);
      *(v8 + 60) = *(v9 + 60);
      *(v8 + 32) = v11;
      *(v8 + 48) = v12;
      *(v8 + 16) = v10;
      *(v8 + 80) = *(v9 + 80);
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 88) = 0;
      *(v8 + 88) = *(v9 + 88);
      *(v8 + 104) = *(v9 + 104);
      *(v9 + 96) = 0;
      *(v9 + 104) = 0;
      *(v9 + 88) = 0;
      v13 = *(v9 + 176);
      v15 = *(v9 + 128);
      v14 = *(v9 + 144);
      *(v8 + 160) = *(v9 + 160);
      *(v8 + 176) = v13;
      *(v8 + 128) = v15;
      *(v8 + 144) = v14;
      v16 = *(v9 + 240);
      v18 = *(v9 + 192);
      v17 = *(v9 + 208);
      *(v8 + 224) = *(v9 + 224);
      *(v8 + 240) = v16;
      *(v8 + 192) = v18;
      *(v8 + 208) = v17;
      v20 = *(v9 + 272);
      v19 = *(v9 + 288);
      v21 = *(v9 + 256);
      *(v8 + 300) = *(v9 + 300);
      *(v8 + 272) = v20;
      *(v8 + 288) = v19;
      *(v8 + 256) = v21;
      *(v8 + 112) = *(v9 + 112);
      v22 = *(v9 + 320);
      *(v8 + 336) = *(v9 + 336);
      *(v8 + 320) = v22;
      *(v9 + 328) = 0;
      *(v9 + 336) = 0;
      *(v9 + 320) = 0;
      v23 = *(v9 + 440);
      v25 = *(v9 + 392);
      v24 = *(v9 + 408);
      *(v8 + 424) = *(v9 + 424);
      *(v8 + 440) = v23;
      *(v8 + 392) = v25;
      *(v8 + 408) = v24;
      v26 = *(v9 + 344);
      v27 = *(v9 + 376);
      *(v8 + 360) = *(v9 + 360);
      *(v8 + 376) = v27;
      *(v8 + 344) = v26;
      v29 = *(v9 + 472);
      v28 = *(v9 + 488);
      v30 = *(v9 + 456);
      *(v8 + 504) = *(v9 + 504);
      *(v8 + 472) = v29;
      *(v8 + 488) = v28;
      *(v8 + 456) = v30;
      v31 = *(v9 + 512);
      v32 = *(v9 + 528);
      v33 = *(v9 + 560);
      *(v8 + 544) = *(v9 + 544);
      *(v8 + 560) = v33;
      *(v8 + 512) = v31;
      *(v8 + 528) = v32;
      v34 = *(v9 + 576);
      v35 = *(v9 + 592);
      v36 = *(v9 + 624);
      *(v8 + 608) = *(v9 + 608);
      *(v8 + 624) = v36;
      *(v8 + 576) = v34;
      *(v8 + 592) = v35;
      v37 = *(v9 + 640);
      v38 = *(v9 + 656);
      v39 = *(v9 + 672);
      *(v8 + 688) = *(v9 + 688);
      *(v8 + 656) = v38;
      *(v8 + 672) = v39;
      *(v8 + 640) = v37;
      v9 += 696;
      v8 += 696;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_100682754(&v41, a2, v7, v6);
}

__n128 sub_1006823FC(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0xCDFA1D6CDFA1D6CELL * ((v4 - *a1) >> 3);
      }

      v10 = a1[4];
      v43 = a1[4];
      sub_100071EDC(v10, v9);
    }

    v6 = (0x66FD0EB66FD0EB67 * ((v5 - *a1) >> 3) + 1 + ((0x66FD0EB66FD0EB67 * ((v5 - *a1) >> 3) + 1) >> 63)) >> 1;
    v7 = -696 * v6;
    sub_100682930(&v42, v5, v4, v5 - 696 * v6);
    v4 = v8;
    a1[1] += v7;
    a1[2] = v8;
  }

  *v4 = *a2;
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  *(v4 + 60) = *(a2 + 60);
  *(v4 + 32) = v12;
  *(v4 + 48) = v13;
  *(v4 + 16) = v11;
  v14 = *(a2 + 80);
  *(v4 + 88) = 0;
  *(v4 + 80) = v14;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  sub_10038EB38((v4 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v4 + 112) = *(a2 + 112);
  v15 = *(a2 + 128);
  v16 = *(a2 + 144);
  v17 = *(a2 + 160);
  *(v4 + 176) = *(a2 + 176);
  *(v4 + 160) = v17;
  *(v4 + 144) = v16;
  *(v4 + 128) = v15;
  v18 = *(a2 + 192);
  v19 = *(a2 + 208);
  v20 = *(a2 + 224);
  *(v4 + 240) = *(a2 + 240);
  *(v4 + 224) = v20;
  *(v4 + 208) = v19;
  *(v4 + 192) = v18;
  v21 = *(a2 + 256);
  v22 = *(a2 + 272);
  v23 = *(a2 + 288);
  *(v4 + 300) = *(a2 + 300);
  *(v4 + 288) = v23;
  *(v4 + 272) = v22;
  *(v4 + 256) = v21;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v4 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v24 = *(a2 + 320);
    *(v4 + 336) = *(a2 + 336);
    *(v4 + 320) = v24;
  }

  v25 = *(a2 + 344);
  v26 = *(a2 + 376);
  *(v4 + 360) = *(a2 + 360);
  *(v4 + 376) = v26;
  *(v4 + 344) = v25;
  v27 = *(a2 + 392);
  v28 = *(a2 + 408);
  v29 = *(a2 + 440);
  *(v4 + 424) = *(a2 + 424);
  *(v4 + 440) = v29;
  *(v4 + 392) = v27;
  *(v4 + 408) = v28;
  v30 = *(a2 + 456);
  v31 = *(a2 + 472);
  v32 = *(a2 + 488);
  *(v4 + 504) = *(a2 + 504);
  *(v4 + 472) = v31;
  *(v4 + 488) = v32;
  *(v4 + 456) = v30;
  v33 = *(a2 + 512);
  v34 = *(a2 + 528);
  v35 = *(a2 + 560);
  *(v4 + 544) = *(a2 + 544);
  *(v4 + 560) = v35;
  *(v4 + 512) = v33;
  *(v4 + 528) = v34;
  v36 = *(a2 + 576);
  v37 = *(a2 + 592);
  v38 = *(a2 + 624);
  *(v4 + 608) = *(a2 + 608);
  *(v4 + 624) = v38;
  *(v4 + 576) = v36;
  *(v4 + 592) = v37;
  result = *(a2 + 640);
  v40 = *(a2 + 656);
  v41 = *(a2 + 672);
  *(v4 + 688) = *(a2 + 688);
  *(v4 + 656) = v40;
  *(v4 + 672) = v41;
  *(v4 + 640) = result;
  a1[2] += 696;
  return result;
}

uint64_t sub_100682698(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_10006F96C(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_10006F96C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_100682754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = (a4 + v7 - 696);
      *v10 = *(a3 + v7 - 696);
      v11 = *(a3 + v7 - 680);
      v12 = *(a3 + v7 - 664);
      v13 = *(a3 + v7 - 648);
      *(v10 + 60) = *(a3 + v7 - 636);
      v10[2] = v12;
      v10[3] = v13;
      v10[1] = v11;
      *(a4 + v7 - 616) = *(a3 + v7 - 616);
      sub_10007057C(a4 + v7 - 608, (a3 + v7 - 608));
      v14 = (a4 + v7 - 584);
      *v14 = *(a3 + v7 - 584);
      v15 = *(a3 + v7 - 568);
      v16 = *(a3 + v7 - 552);
      v17 = *(a3 + v7 - 520);
      v14[3] = *(a3 + v7 - 536);
      v14[4] = v17;
      v14[1] = v15;
      v14[2] = v16;
      v18 = *(a3 + v7 - 504);
      v19 = *(a3 + v7 - 488);
      v20 = *(a3 + v7 - 456);
      v14[7] = *(a3 + v7 - 472);
      v14[8] = v20;
      v14[5] = v18;
      v14[6] = v19;
      v21 = *(a3 + v7 - 440);
      v22 = *(a3 + v7 - 424);
      v23 = *(a3 + v7 - 408);
      *(v14 + 188) = *(a3 + v7 - 396);
      v14[10] = v22;
      v14[11] = v23;
      v14[9] = v21;
      v24 = (a4 + v7 - 376);
      if (*(a4 + v7 - 353) < 0)
      {
        operator delete(*v24);
      }

      v25 = *(v8 - 376);
      *(v9 - 360) = *(v8 - 360);
      *v24 = v25;
      *(v8 - 353) = 0;
      *(v8 - 376) = 0;
      v26 = (v9 - 352);
      v27 = *(v8 - 256);
      v29 = *(v8 - 288);
      v28 = *(v8 - 272);
      v26[3] = *(v8 - 304);
      v26[4] = v29;
      v26[5] = v28;
      *(v9 - 256) = v27;
      v31 = *(v8 - 336);
      v30 = *(v8 - 320);
      *v26 = *(v8 - 352);
      v26[1] = v31;
      v26[2] = v30;
      v32 = *(v8 - 240);
      v33 = *(v8 - 224);
      v34 = *(v8 - 208);
      *(v9 - 192) = *(v8 - 192);
      *(v9 - 224) = v33;
      *(v9 - 208) = v34;
      *(v9 - 240) = v32;
      v35 = *(v8 - 184);
      v36 = *(v8 - 168);
      v37 = *(v8 - 152);
      *(v9 - 136) = *(v8 - 136);
      *(v9 - 152) = v37;
      *(v9 - 168) = v36;
      *(v9 - 184) = v35;
      v38 = *(v8 - 120);
      v39 = *(v8 - 104);
      v40 = *(v8 - 88);
      *(v9 - 72) = *(v8 - 72);
      *(v9 - 88) = v40;
      *(v9 - 104) = v39;
      *(v9 - 120) = v38;
      v41 = *(v8 - 56);
      v42 = *(v8 - 40);
      v43 = *(v8 - 24);
      *(v9 - 8) = *(v8 - 8);
      *(v9 - 24) = v43;
      *(v9 - 40) = v42;
      *(v9 - 56) = v41;
      v7 -= 696;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t sub_100682930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v7 = *(v5 + 16);
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);
      *(a4 + 60) = *(v5 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 80) = *(v5 + 80);
      v10 = v5 + 88;
      sub_10007057C(a4 + 88, (v5 + 88));
      *(a4 + 112) = *(v5 + 112);
      v11 = *(v5 + 128);
      v12 = *(v5 + 144);
      v13 = *(v5 + 176);
      *(a4 + 160) = *(v5 + 160);
      *(a4 + 176) = v13;
      *(a4 + 128) = v11;
      *(a4 + 144) = v12;
      v14 = *(v5 + 192);
      v15 = *(v5 + 208);
      v16 = *(v5 + 240);
      *(a4 + 224) = *(v5 + 224);
      *(a4 + 240) = v16;
      *(a4 + 192) = v14;
      *(a4 + 208) = v15;
      v17 = *(v5 + 256);
      v18 = *(v5 + 272);
      v19 = *(v5 + 288);
      *(a4 + 300) = *(v5 + 300);
      *(a4 + 272) = v18;
      *(a4 + 288) = v19;
      *(a4 + 256) = v17;
      if (*(a4 + 343) < 0)
      {
        operator delete(*(a4 + 320));
      }

      v20 = *(v5 + 320);
      *(a4 + 336) = *(v5 + 336);
      *(a4 + 320) = v20;
      *(v5 + 343) = 0;
      *(v5 + 320) = 0;
      v22 = *(v5 + 424);
      v21 = *(v5 + 440);
      v23 = *(v5 + 408);
      *(a4 + 392) = *(v5 + 392);
      *(a4 + 408) = v23;
      *(a4 + 424) = v22;
      *(a4 + 440) = v21;
      v25 = *(v5 + 360);
      v24 = *(v5 + 376);
      *(a4 + 344) = *(v5 + 344);
      *(a4 + 360) = v25;
      *(a4 + 376) = v24;
      v26 = *(v5 + 456);
      v27 = *(v5 + 472);
      v28 = *(v5 + 488);
      *(a4 + 504) = *(v5 + 504);
      *(a4 + 472) = v27;
      *(a4 + 488) = v28;
      *(a4 + 456) = v26;
      v29 = *(v5 + 512);
      v30 = *(v5 + 528);
      v31 = *(v5 + 560);
      *(a4 + 544) = *(v5 + 544);
      *(a4 + 560) = v31;
      *(a4 + 512) = v29;
      *(a4 + 528) = v30;
      v32 = *(v5 + 576);
      v33 = *(v5 + 592);
      v34 = *(v5 + 624);
      *(a4 + 608) = *(v5 + 608);
      *(a4 + 624) = v34;
      *(a4 + 576) = v32;
      *(a4 + 592) = v33;
      v35 = *(v5 + 640);
      v36 = *(v5 + 656);
      v37 = *(v5 + 672);
      *(a4 + 688) = *(v5 + 688);
      *(a4 + 656) = v36;
      *(a4 + 672) = v37;
      *(a4 + 640) = v35;
      a4 += 696;
      v5 += 696;
    }

    while (v10 + 608 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_100682AA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (a3)
  {
    v4 = v3 + 696 * a3;
    do
    {
      *v3 = *a2;
      v5 = *(a2 + 16);
      v6 = *(a2 + 32);
      v7 = *(a2 + 48);
      *(v3 + 60) = *(a2 + 60);
      *(v3 + 32) = v6;
      *(v3 + 48) = v7;
      *(v3 + 16) = v5;
      *(v3 + 80) = *(a2 + 80);
      *(v3 + 96) = 0;
      *(v3 + 104) = 0;
      *(v3 + 88) = 0;
      *(v3 + 88) = *(a2 + 88);
      *(v3 + 104) = *(a2 + 104);
      *(a2 + 96) = 0;
      *(a2 + 104) = 0;
      *(a2 + 88) = 0;
      v8 = *(a2 + 176);
      v10 = *(a2 + 128);
      v9 = *(a2 + 144);
      *(v3 + 160) = *(a2 + 160);
      *(v3 + 176) = v8;
      *(v3 + 128) = v10;
      *(v3 + 144) = v9;
      v11 = *(a2 + 240);
      v13 = *(a2 + 192);
      v12 = *(a2 + 208);
      *(v3 + 224) = *(a2 + 224);
      *(v3 + 240) = v11;
      *(v3 + 192) = v13;
      *(v3 + 208) = v12;
      v15 = *(a2 + 272);
      v14 = *(a2 + 288);
      v16 = *(a2 + 256);
      *(v3 + 300) = *(a2 + 300);
      *(v3 + 272) = v15;
      *(v3 + 288) = v14;
      *(v3 + 256) = v16;
      *(v3 + 112) = *(a2 + 112);
      v17 = *(a2 + 320);
      *(v3 + 336) = *(a2 + 336);
      *(v3 + 320) = v17;
      *(a2 + 328) = 0;
      *(a2 + 336) = 0;
      *(a2 + 320) = 0;
      v18 = *(a2 + 440);
      v20 = *(a2 + 392);
      v19 = *(a2 + 408);
      *(v3 + 424) = *(a2 + 424);
      *(v3 + 440) = v18;
      *(v3 + 392) = v20;
      *(v3 + 408) = v19;
      v21 = *(a2 + 344);
      v22 = *(a2 + 376);
      *(v3 + 360) = *(a2 + 360);
      *(v3 + 376) = v22;
      *(v3 + 344) = v21;
      v24 = *(a2 + 472);
      v23 = *(a2 + 488);
      v25 = *(a2 + 456);
      *(v3 + 504) = *(a2 + 504);
      *(v3 + 472) = v24;
      *(v3 + 488) = v23;
      *(v3 + 456) = v25;
      v26 = *(a2 + 512);
      v27 = *(a2 + 528);
      v28 = *(a2 + 560);
      *(v3 + 544) = *(a2 + 544);
      *(v3 + 560) = v28;
      *(v3 + 512) = v26;
      *(v3 + 528) = v27;
      v29 = *(a2 + 576);
      v30 = *(a2 + 592);
      v31 = *(a2 + 624);
      *(v3 + 608) = *(a2 + 608);
      *(v3 + 624) = v31;
      *(v3 + 576) = v29;
      *(v3 + 592) = v30;
      v32 = *(a2 + 640);
      v33 = *(a2 + 656);
      v34 = *(a2 + 672);
      *(v3 + 688) = *(a2 + 688);
      *(v3 + 656) = v33;
      *(v3 + 672) = v34;
      *(v3 + 640) = v32;
      v3 += 696;
      a2 += 696;
    }

    while (v3 != v4);
    v3 = v4;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_100682BEC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, _BYTE *a5)
{
  v10 = *(a1 + 8);
  *v10 = *a2;
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  *(v10 + 60) = *(a2 + 60);
  *(v10 + 32) = v12;
  *(v10 + 48) = v13;
  *(v10 + 16) = v11;
  *(v10 + 80) = *(a2 + 80);
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  sub_10038EB38((v10 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v10 + 112) = *(a2 + 112);
  v14 = *(a2 + 128);
  v15 = *(a2 + 144);
  v16 = *(a2 + 176);
  *(v10 + 160) = *(a2 + 160);
  *(v10 + 176) = v16;
  *(v10 + 128) = v14;
  *(v10 + 144) = v15;
  v17 = *(a2 + 192);
  v18 = *(a2 + 208);
  v19 = *(a2 + 240);
  *(v10 + 224) = *(a2 + 224);
  *(v10 + 240) = v19;
  *(v10 + 192) = v17;
  *(v10 + 208) = v18;
  v20 = *(a2 + 256);
  v21 = *(a2 + 272);
  v22 = *(a2 + 288);
  *(v10 + 300) = *(a2 + 300);
  *(v10 + 272) = v21;
  *(v10 + 288) = v22;
  *(v10 + 256) = v20;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v10 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v23 = *(a2 + 320);
    *(v10 + 336) = *(a2 + 336);
    *(v10 + 320) = v23;
  }

  v24 = *(a2 + 344);
  v25 = *(a2 + 376);
  *(v10 + 360) = *(a2 + 360);
  *(v10 + 376) = v25;
  *(v10 + 344) = v24;
  v26 = *(a2 + 392);
  v27 = *(a2 + 408);
  v28 = *(a2 + 440);
  *(v10 + 424) = *(a2 + 424);
  *(v10 + 440) = v28;
  *(v10 + 392) = v26;
  *(v10 + 408) = v27;
  v29 = *(a2 + 456);
  v30 = *(a2 + 472);
  v31 = *(a2 + 488);
  *(v10 + 504) = *(a2 + 504);
  *(v10 + 472) = v30;
  *(v10 + 488) = v31;
  *(v10 + 456) = v29;
  v32 = *(a2 + 512);
  v33 = *(a2 + 528);
  v34 = *(a2 + 560);
  *(v10 + 544) = *(a2 + 544);
  *(v10 + 560) = v34;
  *(v10 + 512) = v32;
  *(v10 + 528) = v33;
  v35 = *(a2 + 576);
  v36 = *(a2 + 592);
  v37 = *(a2 + 624);
  *(v10 + 608) = *(a2 + 608);
  *(v10 + 624) = v37;
  *(v10 + 576) = v35;
  *(v10 + 592) = v36;
  v38 = *(a2 + 640);
  v39 = *(a2 + 656);
  v40 = *(a2 + 672);
  *(v10 + 688) = *(a2 + 688);
  *(v10 + 656) = v39;
  *(v10 + 672) = v40;
  *(v10 + 640) = v38;
  *(v10 + 696) = *a3;
  v41 = *(a4 + 16);
  *(v10 + 700) = *a4;
  *(v10 + 716) = v41;
  v42 = *(a4 + 32);
  v43 = *(a4 + 48);
  v44 = *(a4 + 80);
  *(v10 + 764) = *(a4 + 64);
  *(v10 + 780) = v44;
  *(v10 + 732) = v42;
  *(v10 + 748) = v43;
  result = *(a4 + 96);
  v46 = *(a4 + 112);
  v47 = *(a4 + 128);
  *(v10 + 840) = *(a4 + 140);
  *(v10 + 812) = v46;
  *(v10 + 828) = v47;
  *(v10 + 796) = result;
  *(v10 + 856) = *a5;
  *(a1 + 8) = v10 + 864;
  return result;
}

void sub_100682DB8(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 96) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

__n128 sub_100682DE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 60) = *(a2 + 60);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 16) = v5;
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  sub_10038EB38((v4 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v4 + 112) = *(a2 + 112);
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  v10 = *(a2 + 176);
  *(v4 + 160) = *(a2 + 160);
  *(v4 + 176) = v10;
  *(v4 + 128) = v8;
  *(v4 + 144) = v9;
  v11 = *(a2 + 192);
  v12 = *(a2 + 208);
  v13 = *(a2 + 240);
  *(v4 + 224) = *(a2 + 224);
  *(v4 + 240) = v13;
  *(v4 + 192) = v11;
  *(v4 + 208) = v12;
  v14 = *(a2 + 256);
  v15 = *(a2 + 272);
  v16 = *(a2 + 288);
  *(v4 + 300) = *(a2 + 300);
  *(v4 + 272) = v15;
  *(v4 + 288) = v16;
  *(v4 + 256) = v14;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v4 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v17 = *(a2 + 320);
    *(v4 + 336) = *(a2 + 336);
    *(v4 + 320) = v17;
  }

  v18 = *(a2 + 344);
  v19 = *(a2 + 376);
  *(v4 + 360) = *(a2 + 360);
  *(v4 + 376) = v19;
  *(v4 + 344) = v18;
  v20 = *(a2 + 392);
  v21 = *(a2 + 408);
  v22 = *(a2 + 440);
  *(v4 + 424) = *(a2 + 424);
  *(v4 + 440) = v22;
  *(v4 + 392) = v20;
  *(v4 + 408) = v21;
  v23 = *(a2 + 456);
  v24 = *(a2 + 472);
  v25 = *(a2 + 488);
  *(v4 + 504) = *(a2 + 504);
  *(v4 + 472) = v24;
  *(v4 + 488) = v25;
  *(v4 + 456) = v23;
  v26 = *(a2 + 512);
  v27 = *(a2 + 528);
  v28 = *(a2 + 560);
  *(v4 + 544) = *(a2 + 544);
  *(v4 + 560) = v28;
  *(v4 + 512) = v26;
  *(v4 + 528) = v27;
  v29 = *(a2 + 576);
  v30 = *(a2 + 592);
  v31 = *(a2 + 624);
  *(v4 + 608) = *(a2 + 608);
  *(v4 + 624) = v31;
  *(v4 + 576) = v29;
  *(v4 + 592) = v30;
  v32 = *(a2 + 640);
  v33 = *(a2 + 656);
  v34 = *(a2 + 672);
  *(v4 + 688) = *(a2 + 688);
  *(v4 + 656) = v33;
  *(v4 + 672) = v34;
  *(v4 + 640) = v32;
  *(v4 + 696) = *(a2 + 696);
  v35 = *(a2 + 716);
  *(v4 + 700) = *(a2 + 700);
  *(v4 + 716) = v35;
  v36 = *(a2 + 732);
  v37 = *(a2 + 748);
  v38 = *(a2 + 780);
  *(v4 + 764) = *(a2 + 764);
  *(v4 + 780) = v38;
  *(v4 + 732) = v36;
  *(v4 + 748) = v37;
  result = *(a2 + 796);
  v40 = *(a2 + 812);
  v41 = *(a2 + 828);
  *(v4 + 840) = *(a2 + 840);
  *(v4 + 812) = v40;
  *(v4 + 828) = v41;
  *(v4 + 796) = result;
  *(v4 + 856) = *(a2 + 856);
  *(a1 + 8) = v4 + 864;
  return result;
}

void sub_100682F94(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 96) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

BOOL sub_100682FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 720);
  v3 = *(a2 + 720);
  if (v2 >= 0.0 && v3 < 0.0)
  {
    return 0;
  }

  if (v2 < 0.0 && v3 >= 0.0)
  {
    return 1;
  }

  if (v2 >= 0.0 != v3 >= 0.0)
  {
    sub_1018FF52C();
  }

  v5 = *(a1 + 796);
  v6 = *(a2 + 796);
  if (v5 == 6 && v6 != 6)
  {
    return 0;
  }

  if (v5 != 6 && v6 == 6)
  {
    return 1;
  }

  if (v5 != v6)
  {
    sub_1018FF0F4();
  }

  v8 = *(a1 + 8);
  if (v8 <= 9 && ((1 << v8) & 0x287) != 0 || v8 - 3 <= 2)
  {
    v9 = *(a2 + 8);
    if ((v9 > 9 || ((1 << v9) & 0x287) == 0) && v9 - 3 > 2)
    {
      return 0;
    }
  }

  if (v8 < 0xA && ((0x287u >> v8) & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v11 = v8 - 3 < 3;
    if (v8 - 3 >= 3)
    {
      v13 = *(a2 + 8);
      if (v13 >= 0xA)
      {
        if (v13 - 3 < 3)
        {
          return 1;
        }
      }

      else
      {
        result = 1;
        if (v13 - 3 < 3 || ((0x287u >> v13) & 1) != 0)
        {
          return result;
        }
      }
    }

    if (v8 == 9)
    {
      v11 = 1;
    }

    v10 = v8 == 7 || v11;
  }

  v12 = *(a2 + 8);
  if (v12 <= 9 && ((1 << v12) & 0x287) != 0)
  {
    if (v10)
    {
      goto LABEL_33;
    }

LABEL_51:
    sub_1018FF3C4();
  }

  if (v10 != v12 - 3 < 3)
  {
    goto LABEL_51;
  }

LABEL_33:
  if (v8 == 6)
  {
    if (v12 != 6)
    {
      return 0;
    }

    goto LABEL_37;
  }

  if (v12 == 6)
  {
    return 1;
  }

LABEL_37:
  if ((v8 == 6) != (v12 == 6))
  {
    sub_1018FF25C();
  }

  if (v2 < v3)
  {
    return 0;
  }

  return v2 > v3;
}

void sub_1006831B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100682FBC(a2, a1);
  v7 = sub_100682FBC(a3, a2);
  if (v6)
  {
    v8 = (a1 + 700);
    if (v7)
    {
      v9 = (a1 + 856);
      sub_10068470C(a1, a3);
      v10 = *(a1 + 696);
      *(a1 + 696) = *(a3 + 696);
      *(a3 + 696) = v10;
      v11 = (a3 + 700);
      v79 = *(a1 + 796);
      v83 = *(a1 + 812);
      *v87 = *(a1 + 828);
      *&v87[12] = *(a1 + 840);
      v63 = *(a1 + 732);
      v67 = *(a1 + 748);
      v71 = *(a1 + 764);
      v75 = *(a1 + 780);
      v55 = *v8;
      v59 = *(a1 + 716);
      v12 = *(a3 + 716);
      *v8 = *(a3 + 700);
      *(a1 + 716) = v12;
      v13 = *(a3 + 732);
      v14 = *(a3 + 748);
      v15 = *(a3 + 780);
      *(a1 + 764) = *(a3 + 764);
      *(a1 + 780) = v15;
      *(a1 + 732) = v13;
      *(a1 + 748) = v14;
      v16 = *(a3 + 796);
      v17 = *(a3 + 812);
      v18 = *(a3 + 828);
      *(a1 + 840) = *(a3 + 840);
      *(a1 + 812) = v17;
      *(a1 + 828) = v18;
      *(a1 + 796) = v16;
    }

    else
    {
      sub_10068470C(a1, a2);
      v37 = *(a1 + 696);
      *(a1 + 696) = *(a2 + 696);
      *(a2 + 696) = v37;
      v38 = (a2 + 700);
      v82 = *(a1 + 796);
      v86 = *(a1 + 812);
      *v90 = *(a1 + 828);
      *&v90[12] = *(a1 + 840);
      v66 = *(a1 + 732);
      v70 = *(a1 + 748);
      v74 = *(a1 + 764);
      v78 = *(a1 + 780);
      v58 = *v8;
      v62 = *(a1 + 716);
      v39 = *(a2 + 716);
      *v8 = *(a2 + 700);
      *(a1 + 716) = v39;
      v40 = *(a2 + 732);
      v41 = *(a2 + 748);
      v42 = *(a2 + 780);
      *(a1 + 764) = *(a2 + 764);
      *(a1 + 780) = v42;
      *(a1 + 732) = v40;
      *(a1 + 748) = v41;
      v43 = *(a2 + 796);
      v44 = *(a2 + 812);
      v45 = *(a2 + 828);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 812) = v44;
      *(a1 + 828) = v45;
      *(a1 + 796) = v43;
      *(a2 + 796) = v82;
      *(a2 + 812) = v86;
      *(a2 + 828) = *v90;
      *(a2 + 840) = *&v90[12];
      *(a2 + 732) = v66;
      *(a2 + 748) = v70;
      *(a2 + 764) = v74;
      *(a2 + 780) = v78;
      *(a2 + 700) = v58;
      *(a2 + 716) = v62;
      LOBYTE(v37) = *(a1 + 856);
      *(a1 + 856) = *(a2 + 856);
      *(a2 + 856) = v37;
      if (!sub_100682FBC(a3, a2))
      {
        return;
      }

      v9 = (a2 + 856);
      sub_10068470C(a2, a3);
      v46 = *(a2 + 696);
      *(a2 + 696) = *(a3 + 696);
      *(a3 + 696) = v46;
      v11 = (a3 + 700);
      v79 = *(a2 + 796);
      v83 = *(a2 + 812);
      *v87 = *(a2 + 828);
      *&v87[12] = *(a2 + 840);
      v63 = *(a2 + 732);
      v67 = *(a2 + 748);
      v71 = *(a2 + 764);
      v75 = *(a2 + 780);
      v55 = *v38;
      v59 = *(a2 + 716);
      v47 = *(a3 + 716);
      *v38 = *(a3 + 700);
      *(a2 + 716) = v47;
      v48 = *(a3 + 732);
      v49 = *(a3 + 748);
      v50 = *(a3 + 780);
      *(a2 + 764) = *(a3 + 764);
      *(a2 + 780) = v50;
      *(a2 + 732) = v48;
      *(a2 + 748) = v49;
      v51 = *(a3 + 796);
      v52 = *(a3 + 812);
      v53 = *(a3 + 828);
      *(a2 + 840) = *(a3 + 840);
      *(a2 + 812) = v52;
      *(a2 + 828) = v53;
      *(a2 + 796) = v51;
    }

    v11[6] = v79;
    v11[7] = v83;
    v11[8] = *v87;
    *(v11 + 140) = *&v87[12];
    v11[2] = v63;
    v11[3] = v67;
    v11[4] = v71;
    v11[5] = v75;
    v28 = (a3 + 856);
    *v11 = v55;
    v11[1] = v59;
    goto LABEL_10;
  }

  if (v7)
  {
    sub_10068470C(a2, a3);
    v19 = *(a2 + 696);
    *(a2 + 696) = *(a3 + 696);
    *(a3 + 696) = v19;
    v20 = (a2 + 700);
    v80 = *(a2 + 796);
    v84 = *(a2 + 812);
    *v88 = *(a2 + 828);
    *&v88[12] = *(a2 + 840);
    v64 = *(a2 + 732);
    v68 = *(a2 + 748);
    v72 = *(a2 + 764);
    v76 = *(a2 + 780);
    v56 = *(a2 + 700);
    v60 = *(a2 + 716);
    v21 = *(a3 + 716);
    *(a2 + 700) = *(a3 + 700);
    *(a2 + 716) = v21;
    v22 = *(a3 + 732);
    v23 = *(a3 + 748);
    v24 = *(a3 + 780);
    *(a2 + 764) = *(a3 + 764);
    *(a2 + 780) = v24;
    *(a2 + 732) = v22;
    *(a2 + 748) = v23;
    v25 = *(a3 + 796);
    v26 = *(a3 + 812);
    v27 = *(a3 + 828);
    *(a2 + 840) = *(a3 + 840);
    *(a2 + 812) = v26;
    *(a2 + 828) = v27;
    *(a2 + 796) = v25;
    *(a3 + 796) = v80;
    *(a3 + 812) = v84;
    *(a3 + 828) = *v88;
    *(a3 + 840) = *&v88[12];
    *(a3 + 732) = v64;
    *(a3 + 748) = v68;
    *(a3 + 764) = v72;
    *(a3 + 780) = v76;
    *(a3 + 700) = v56;
    *(a3 + 716) = v60;
    LOBYTE(v19) = *(a2 + 856);
    *(a2 + 856) = *(a3 + 856);
    *(a3 + 856) = v19;
    if (sub_100682FBC(a2, a1))
    {
      v28 = (a2 + 856);
      sub_10068470C(a1, a2);
      v29 = *(a1 + 696);
      *(a1 + 696) = *(a2 + 696);
      *(a2 + 696) = v29;
      v81 = *(a1 + 796);
      v85 = *(a1 + 812);
      *v89 = *(a1 + 828);
      *&v89[12] = *(a1 + 840);
      v65 = *(a1 + 732);
      v69 = *(a1 + 748);
      v73 = *(a1 + 764);
      v77 = *(a1 + 780);
      v57 = *(a1 + 700);
      v61 = *(a1 + 716);
      v30 = *(a2 + 716);
      *(a1 + 700) = *v20;
      *(a1 + 716) = v30;
      v31 = *(a2 + 732);
      v32 = *(a2 + 748);
      v33 = *(a2 + 780);
      *(a1 + 764) = *(a2 + 764);
      *(a1 + 780) = v33;
      *(a1 + 732) = v31;
      *(a1 + 748) = v32;
      v34 = *(a2 + 796);
      v35 = *(a2 + 812);
      v36 = *(a2 + 828);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 812) = v35;
      *(a1 + 828) = v36;
      *(a1 + 796) = v34;
      *(a2 + 796) = v81;
      *(a2 + 812) = v85;
      *(a2 + 828) = *v89;
      *(a2 + 840) = *&v89[12];
      *(a2 + 732) = v65;
      *(a2 + 748) = v69;
      *(a2 + 764) = v73;
      *(a2 + 780) = v77;
      v9 = (a1 + 856);
      *v20 = v57;
      *(a2 + 716) = v61;
LABEL_10:
      v54 = *v9;
      *v9 = *v28;
      *v28 = v54;
    }
  }
}

double sub_1006835D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1006831B0(a1, a2, a3);
  if (sub_100682FBC(a4, a3))
  {
    sub_10068470C(a3, a4);
    v9 = *(a3 + 696);
    *(a3 + 696) = *(a4 + 696);
    *(a4 + 696) = v9;
    v10 = (a3 + 700);
    v53 = *(a3 + 796);
    v56 = *(a3 + 812);
    *v59 = *(a3 + 828);
    *&v59[12] = *(a3 + 840);
    v41 = *(a3 + 732);
    v44 = *(a3 + 748);
    v47 = *(a3 + 764);
    v50 = *(a3 + 780);
    v35 = *(a3 + 700);
    v38 = *(a3 + 716);
    v11 = *(a4 + 716);
    *(a3 + 700) = *(a4 + 700);
    *(a3 + 716) = v11;
    v12 = *(a4 + 732);
    v13 = *(a4 + 748);
    v14 = *(a4 + 780);
    *(a3 + 764) = *(a4 + 764);
    *(a3 + 780) = v14;
    *(a3 + 732) = v12;
    *(a3 + 748) = v13;
    v15 = *(a4 + 796);
    v16 = *(a4 + 812);
    v17 = *(a4 + 828);
    *(a3 + 840) = *(a4 + 840);
    *(a3 + 812) = v16;
    *(a3 + 828) = v17;
    *(a3 + 796) = v15;
    *(a4 + 796) = v53;
    *(a4 + 812) = v56;
    *(a4 + 828) = *v59;
    *(a4 + 840) = *&v59[12];
    *(a4 + 732) = v41;
    *(a4 + 748) = v44;
    *(a4 + 764) = v47;
    *(a4 + 780) = v50;
    *(a4 + 700) = v35;
    *(a4 + 716) = v38;
    LOBYTE(v9) = *(a3 + 856);
    *(a3 + 856) = *(a4 + 856);
    *(a4 + 856) = v9;
    if (sub_100682FBC(a3, a2))
    {
      sub_10068470C(a2, a3);
      v18 = *(a2 + 696);
      *(a2 + 696) = *(a3 + 696);
      *(a3 + 696) = v18;
      v19 = (a2 + 700);
      v54 = *(a2 + 796);
      v57 = *(a2 + 812);
      *v60 = *(a2 + 828);
      *&v60[12] = *(a2 + 840);
      v42 = *(a2 + 732);
      v45 = *(a2 + 748);
      v48 = *(a2 + 764);
      v51 = *(a2 + 780);
      v36 = *(a2 + 700);
      v39 = *(a2 + 716);
      v20 = *(a3 + 716);
      *(a2 + 700) = *v10;
      *(a2 + 716) = v20;
      v21 = *(a3 + 732);
      v22 = *(a3 + 748);
      v23 = *(a3 + 780);
      *(a2 + 764) = *(a3 + 764);
      *(a2 + 780) = v23;
      *(a2 + 732) = v21;
      *(a2 + 748) = v22;
      v24 = *(a3 + 796);
      v25 = *(a3 + 812);
      v26 = *(a3 + 828);
      *(a2 + 840) = *(a3 + 840);
      *(a2 + 812) = v25;
      *(a2 + 828) = v26;
      *(a2 + 796) = v24;
      *(a3 + 796) = v54;
      *(a3 + 812) = v57;
      *(a3 + 828) = *v60;
      *(a3 + 840) = *&v60[12];
      *(a3 + 732) = v42;
      *(a3 + 748) = v45;
      *(a3 + 764) = v48;
      *(a3 + 780) = v51;
      *v10 = v36;
      *(a3 + 716) = v39;
      LOBYTE(v18) = *(a2 + 856);
      *(a2 + 856) = *(a3 + 856);
      *(a3 + 856) = v18;
      if (sub_100682FBC(a2, a1))
      {
        sub_10068470C(a1, a2);
        v27 = *(a1 + 696);
        *(a1 + 696) = *(a2 + 696);
        *(a2 + 696) = v27;
        v55 = *(a1 + 796);
        v58 = *(a1 + 812);
        *v61 = *(a1 + 828);
        *&v61[12] = *(a1 + 840);
        v43 = *(a1 + 732);
        v46 = *(a1 + 748);
        v49 = *(a1 + 764);
        v52 = *(a1 + 780);
        v37 = *(a1 + 700);
        v40 = *(a1 + 716);
        v28 = *(a2 + 716);
        *(a1 + 700) = *v19;
        *(a1 + 716) = v28;
        v29 = *(a2 + 732);
        v30 = *(a2 + 748);
        v31 = *(a2 + 780);
        *(a1 + 764) = *(a2 + 764);
        *(a1 + 780) = v31;
        *(a1 + 732) = v29;
        *(a1 + 748) = v30;
        v32 = *(a2 + 796);
        v33 = *(a2 + 812);
        v34 = *(a2 + 828);
        *(a1 + 840) = *(a2 + 840);
        *(a1 + 812) = v33;
        *(a1 + 828) = v34;
        *(a1 + 796) = v32;
        *(a2 + 796) = v55;
        *(a2 + 812) = v58;
        *(a2 + 828) = *v61;
        *(a2 + 840) = *&v61[12];
        *(a2 + 732) = v43;
        *(a2 + 748) = v46;
        *(a2 + 764) = v49;
        *(a2 + 780) = v52;
        result = *&v37;
        *v19 = v37;
        *(a2 + 716) = v40;
        LOBYTE(v27) = *(a1 + 856);
        *(a1 + 856) = *(a2 + 856);
        *(a2 + 856) = v27;
      }
    }
  }

  return result;
}

double sub_100683898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1006835D8(a1, a2, a3, a4);
  if (sub_100682FBC(a5, a4))
  {
    sub_10068470C(a4, a5);
    v11 = *(a4 + 696);
    *(a4 + 696) = *(a5 + 696);
    *(a5 + 696) = v11;
    v12 = (a4 + 700);
    v70 = *(a4 + 796);
    v74 = *(a4 + 812);
    *v78 = *(a4 + 828);
    *&v78[12] = *(a4 + 840);
    v54 = *(a4 + 732);
    v58 = *(a4 + 748);
    v62 = *(a4 + 764);
    v66 = *(a4 + 780);
    v46 = *(a4 + 700);
    v50 = *(a4 + 716);
    v13 = *(a5 + 716);
    *(a4 + 700) = *(a5 + 700);
    *(a4 + 716) = v13;
    v14 = *(a5 + 732);
    v15 = *(a5 + 748);
    v16 = *(a5 + 780);
    *(a4 + 764) = *(a5 + 764);
    *(a4 + 780) = v16;
    *(a4 + 732) = v14;
    *(a4 + 748) = v15;
    v17 = *(a5 + 796);
    v18 = *(a5 + 812);
    v19 = *(a5 + 828);
    *(a4 + 840) = *(a5 + 840);
    *(a4 + 812) = v18;
    *(a4 + 828) = v19;
    *(a4 + 796) = v17;
    *(a5 + 796) = v70;
    *(a5 + 812) = v74;
    *(a5 + 828) = *v78;
    *(a5 + 840) = *&v78[12];
    *(a5 + 732) = v54;
    *(a5 + 748) = v58;
    *(a5 + 764) = v62;
    *(a5 + 780) = v66;
    *(a5 + 700) = v46;
    *(a5 + 716) = v50;
    LOBYTE(v11) = *(a4 + 856);
    *(a4 + 856) = *(a5 + 856);
    *(a5 + 856) = v11;
    if (sub_100682FBC(a4, a3))
    {
      sub_10068470C(a3, a4);
      v20 = *(a3 + 696);
      *(a3 + 696) = *(a4 + 696);
      *(a4 + 696) = v20;
      v21 = (a3 + 700);
      v71 = *(a3 + 796);
      v75 = *(a3 + 812);
      *v79 = *(a3 + 828);
      *&v79[12] = *(a3 + 840);
      v55 = *(a3 + 732);
      v59 = *(a3 + 748);
      v63 = *(a3 + 764);
      v67 = *(a3 + 780);
      v47 = *(a3 + 700);
      v51 = *(a3 + 716);
      v22 = *(a4 + 716);
      *(a3 + 700) = *v12;
      *(a3 + 716) = v22;
      v23 = *(a4 + 732);
      v24 = *(a4 + 748);
      v25 = *(a4 + 780);
      *(a3 + 764) = *(a4 + 764);
      *(a3 + 780) = v25;
      *(a3 + 732) = v23;
      *(a3 + 748) = v24;
      v26 = *(a4 + 796);
      v27 = *(a4 + 812);
      v28 = *(a4 + 828);
      *(a3 + 840) = *(a4 + 840);
      *(a3 + 812) = v27;
      *(a3 + 828) = v28;
      *(a3 + 796) = v26;
      *(a4 + 796) = v71;
      *(a4 + 812) = v75;
      *(a4 + 828) = *v79;
      *(a4 + 840) = *&v79[12];
      *(a4 + 732) = v55;
      *(a4 + 748) = v59;
      *(a4 + 764) = v63;
      *(a4 + 780) = v67;
      *v12 = v47;
      *(a4 + 716) = v51;
      LOBYTE(v20) = *(a3 + 856);
      *(a3 + 856) = *(a4 + 856);
      *(a4 + 856) = v20;
      if (sub_100682FBC(a3, a2))
      {
        sub_10068470C(a2, a3);
        v29 = *(a2 + 696);
        *(a2 + 696) = *(a3 + 696);
        *(a3 + 696) = v29;
        v30 = (a2 + 700);
        v72 = *(a2 + 796);
        v76 = *(a2 + 812);
        *v80 = *(a2 + 828);
        *&v80[12] = *(a2 + 840);
        v56 = *(a2 + 732);
        v60 = *(a2 + 748);
        v64 = *(a2 + 764);
        v68 = *(a2 + 780);
        v48 = *(a2 + 700);
        v52 = *(a2 + 716);
        v31 = *(a3 + 716);
        *(a2 + 700) = *v21;
        *(a2 + 716) = v31;
        v32 = *(a3 + 732);
        v33 = *(a3 + 748);
        v34 = *(a3 + 780);
        *(a2 + 764) = *(a3 + 764);
        *(a2 + 780) = v34;
        *(a2 + 732) = v32;
        *(a2 + 748) = v33;
        v35 = *(a3 + 796);
        v36 = *(a3 + 812);
        v37 = *(a3 + 828);
        *(a2 + 840) = *(a3 + 840);
        *(a2 + 812) = v36;
        *(a2 + 828) = v37;
        *(a2 + 796) = v35;
        *(a3 + 796) = v72;
        *(a3 + 812) = v76;
        *(a3 + 828) = *v80;
        *(a3 + 840) = *&v80[12];
        *(a3 + 732) = v56;
        *(a3 + 748) = v60;
        *(a3 + 764) = v64;
        *(a3 + 780) = v68;
        *v21 = v48;
        *(a3 + 716) = v52;
        LOBYTE(v29) = *(a2 + 856);
        *(a2 + 856) = *(a3 + 856);
        *(a3 + 856) = v29;
        if (sub_100682FBC(a2, a1))
        {
          sub_10068470C(a1, a2);
          v38 = *(a1 + 696);
          *(a1 + 696) = *(a2 + 696);
          *(a2 + 696) = v38;
          v73 = *(a1 + 796);
          v77 = *(a1 + 812);
          *v81 = *(a1 + 828);
          *&v81[12] = *(a1 + 840);
          v57 = *(a1 + 732);
          v61 = *(a1 + 748);
          v65 = *(a1 + 764);
          v69 = *(a1 + 780);
          v49 = *(a1 + 700);
          v53 = *(a1 + 716);
          v39 = *(a2 + 716);
          *(a1 + 700) = *v30;
          *(a1 + 716) = v39;
          v40 = *(a2 + 732);
          v41 = *(a2 + 748);
          v42 = *(a2 + 780);
          *(a1 + 764) = *(a2 + 764);
          *(a1 + 780) = v42;
          *(a1 + 732) = v40;
          *(a1 + 748) = v41;
          v43 = *(a2 + 796);
          v44 = *(a2 + 812);
          v45 = *(a2 + 828);
          *(a1 + 840) = *(a2 + 840);
          *(a1 + 812) = v44;
          *(a1 + 828) = v45;
          *(a1 + 796) = v43;
          *(a2 + 796) = v73;
          *(a2 + 812) = v77;
          *(a2 + 828) = *v81;
          *(a2 + 840) = *&v81[12];
          *(a2 + 732) = v57;
          *(a2 + 748) = v61;
          *(a2 + 764) = v65;
          *(a2 + 780) = v69;
          result = *&v49;
          *v30 = v49;
          *(a2 + 716) = v53;
          LOBYTE(v38) = *(a1 + 856);
          *(a1 + 856) = *(a2 + 856);
          *(a2 + 856) = v38;
        }
      }
    }
  }

  return result;
}

void sub_100683C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a2;
    v6 = a2 - a1;
    v7 = 0x84BDA12F684BDA13 * ((a2 - a1) >> 5);
    if (a2 - a1 >= 865)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = a1 + 864 * v8;
      do
      {
        sub_100684C64(a1, v7, v10);
        v10 -= 864;
        --v9;
      }

      while (v9);
    }

    if (v4 != a3)
    {
      v11 = (a1 + 700);
      v12 = v4;
      do
      {
        if (sub_100682FBC(v12, a1))
        {
          sub_10068470C(v12, a1);
          v13 = *(v12 + 696);
          *(v12 + 696) = *(a1 + 696);
          *(a1 + 696) = v13;
          v14 = *(v12 + 812);
          *&v160[16] = *(v12 + 796);
          v161 = v14;
          v162[0] = *(v12 + 828);
          *(v162 + 12) = *(v12 + 840);
          v15 = *(v12 + 748);
          v158 = *(v12 + 732);
          *v159 = v15;
          v16 = *(v12 + 780);
          *&v159[16] = *(v12 + 764);
          *v160 = v16;
          v17 = *(v12 + 716);
          v156 = *(v12 + 700);
          v157 = v17;
          v18 = *(a1 + 716);
          *(v12 + 700) = *v11;
          *(v12 + 716) = v18;
          v19 = *(a1 + 732);
          v20 = *(a1 + 748);
          v21 = *(a1 + 780);
          *(v12 + 764) = *(a1 + 764);
          *(v12 + 780) = v21;
          *(v12 + 732) = v19;
          *(v12 + 748) = v20;
          v22 = *(a1 + 796);
          v23 = *(a1 + 812);
          v24 = *(a1 + 828);
          *(v12 + 840) = *(a1 + 840);
          *(v12 + 812) = v23;
          *(v12 + 828) = v24;
          *(v12 + 796) = v22;
          v25 = v161;
          *(a1 + 796) = *&v160[16];
          *(a1 + 812) = v25;
          *(a1 + 828) = v162[0];
          *(a1 + 840) = *(v162 + 12);
          v26 = *v159;
          *(a1 + 732) = v158;
          *(a1 + 748) = v26;
          v27 = *v160;
          *(a1 + 764) = *&v159[16];
          *(a1 + 780) = v27;
          v28 = v157;
          *v11 = v156;
          *(a1 + 716) = v28;
          LOBYTE(v13) = *(v12 + 856);
          *(v12 + 856) = *(a1 + 856);
          *(a1 + 856) = v13;
          sub_100684C64(a1, v7, a1);
        }

        v12 += 864;
      }

      while (v12 != a3);
    }

    if (v6 >= 865)
    {
      v29 = 0x84BDA12F684BDA13 * (v6 >> 5);
      do
      {
        v102 = v4;
        v30 = 0;
        v31 = *(a1 + 48);
        v103[2] = *(a1 + 32);
        v104[0] = v31;
        *(v104 + 12) = *(a1 + 60);
        v32 = *(a1 + 16);
        v103[0] = *a1;
        v103[1] = v32;
        v105 = *(a1 + 80);
        *v106 = *(a1 + 88);
        v107 = *(a1 + 104);
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 88) = 0;
        v33 = *(a1 + 288);
        v118 = *(a1 + 272);
        v119[0] = v33;
        *(v119 + 12) = *(a1 + 300);
        v34 = *(a1 + 224);
        v114 = *(a1 + 208);
        v115 = v34;
        v35 = *(a1 + 256);
        v116 = *(a1 + 240);
        v117 = v35;
        v36 = *(a1 + 160);
        v110 = *(a1 + 144);
        v111 = v36;
        v37 = *(a1 + 192);
        v112 = *(a1 + 176);
        v113 = v37;
        v38 = *(a1 + 128);
        v108 = *(a1 + 112);
        v109 = v38;
        v120 = *(a1 + 320);
        v121 = *(a1 + 336);
        *(a1 + 328) = 0;
        *(a1 + 336) = 0;
        *(a1 + 320) = 0;
        v39 = *(a1 + 488);
        v130 = *(a1 + 472);
        v131 = v39;
        v132 = *(a1 + 504);
        v40 = *(a1 + 424);
        v126 = *(a1 + 408);
        v127 = v40;
        v41 = *(a1 + 456);
        v128 = *(a1 + 440);
        v129 = v41;
        v42 = *(a1 + 360);
        v122 = *(a1 + 344);
        v123 = v42;
        v43 = *(a1 + 392);
        v124 = *(a1 + 376);
        v125 = v43;
        v44 = *(a1 + 656);
        v141 = *(a1 + 640);
        v142 = v44;
        v143 = *(a1 + 672);
        v144 = *(a1 + 688);
        v45 = *(a1 + 592);
        v137 = *(a1 + 576);
        v138 = v45;
        v46 = *(a1 + 624);
        v139 = *(a1 + 608);
        v140 = v46;
        v47 = *(a1 + 528);
        v133 = *(a1 + 512);
        v134 = v47;
        v48 = *(a1 + 560);
        v135 = *(a1 + 544);
        v136 = v48;
        v145 = *(a1 + 696);
        v49 = *(a1 + 812);
        v152 = *(a1 + 796);
        v153 = v49;
        *v154 = *(a1 + 828);
        *&v154[12] = *(a1 + 840);
        v50 = *(a1 + 748);
        v148 = *(a1 + 732);
        v149 = v50;
        v51 = *(a1 + 780);
        v150 = *(a1 + 764);
        v151 = v51;
        v52 = *(a1 + 700);
        v53 = *(a1 + 716);
        v155 = *(a1 + 856);
        v54 = a1;
        v146 = v52;
        v147 = v53;
        do
        {
          v55 = v54 + 864 * v30;
          v56 = v55 + 864;
          v57 = (2 * v30) | 1;
          v58 = 2 * v30 + 2;
          if (v58 < v29)
          {
            v59 = v55 + 1728;
            if (sub_100682FBC(v55 + 864, v55 + 1728))
            {
              v56 = v59;
              v57 = v58;
            }
          }

          sub_100684ADC(v54, v56);
          v54 = v56;
          v30 = v57;
        }

        while (v57 <= ((v29 - 2) >> 1));
        v4 = v102 - 864;
        if (v56 == v102 - 864)
        {
          sub_100684ADC(v56, v103);
        }

        else
        {
          sub_100684ADC(v56, v102 - 864);
          sub_100684ADC(v4, v103);
          v60 = v56 - a1 + 864;
          if (v60 >= 865)
          {
            v61 = (-2 - 0x7B425ED097B425EDLL * (v60 >> 5)) >> 1;
            v62 = a1 + 864 * v61;
            if (sub_100682FBC(v62, v56))
            {
              v156 = *v56;
              v63 = *(v56 + 16);
              v64 = *(v56 + 32);
              v65 = *(v56 + 48);
              *&v159[12] = *(v56 + 60);
              v158 = v64;
              *v159 = v65;
              v157 = v63;
              *v160 = *(v56 + 80);
              *&v160[8] = *(v56 + 88);
              *&v160[24] = *(v56 + 104);
              *(v56 + 96) = 0;
              *(v56 + 104) = 0;
              *(v56 + 88) = 0;
              v161 = *(v56 + 112);
              v66 = *(v56 + 128);
              v67 = *(v56 + 144);
              v68 = *(v56 + 176);
              v162[2] = *(v56 + 160);
              v162[3] = v68;
              v162[0] = v66;
              v162[1] = v67;
              v69 = *(v56 + 192);
              v70 = *(v56 + 208);
              v71 = *(v56 + 240);
              v162[6] = *(v56 + 224);
              v162[7] = v71;
              v162[4] = v69;
              v162[5] = v70;
              v72 = *(v56 + 256);
              v73 = *(v56 + 272);
              v74 = *(v56 + 288);
              *(v163 + 12) = *(v56 + 300);
              v162[9] = v73;
              v163[0] = v74;
              v162[8] = v72;
              v75 = *(v56 + 320);
              v165 = *(v56 + 336);
              __p = v75;
              *(v56 + 328) = 0;
              *(v56 + 336) = 0;
              *(v56 + 320) = 0;
              v76 = *(v56 + 440);
              v78 = *(v56 + 392);
              v77 = *(v56 + 408);
              v171 = *(v56 + 424);
              v172 = v76;
              v169 = v78;
              v170 = v77;
              v79 = *(v56 + 344);
              v80 = *(v56 + 376);
              v167 = *(v56 + 360);
              v168 = v80;
              v166 = v79;
              v82 = *(v56 + 472);
              v81 = *(v56 + 488);
              v83 = *(v56 + 456);
              v176 = *(v56 + 504);
              v174 = v82;
              v175 = v81;
              v173 = v83;
              v84 = *(v56 + 512);
              v85 = *(v56 + 528);
              v86 = *(v56 + 560);
              v179 = *(v56 + 544);
              v180 = v86;
              v177 = v84;
              v178 = v85;
              v87 = *(v56 + 576);
              v88 = *(v56 + 592);
              v89 = *(v56 + 624);
              v183 = *(v56 + 608);
              v184 = v89;
              v181 = v87;
              v182 = v88;
              v90 = *(v56 + 640);
              v91 = *(v56 + 656);
              v92 = *(v56 + 672);
              v188 = *(v56 + 688);
              v186 = v91;
              v187 = v92;
              v185 = v90;
              v189 = *(v56 + 696);
              v93 = *(v56 + 716);
              v190 = *(v56 + 700);
              v191 = v93;
              v94 = *(v56 + 780);
              v96 = *(v56 + 732);
              v95 = *(v56 + 748);
              v194 = *(v56 + 764);
              v195 = v94;
              v192 = v96;
              v193 = v95;
              v98 = *(v56 + 812);
              v97 = *(v56 + 828);
              v99 = *(v56 + 796);
              *&v198[12] = *(v56 + 840);
              v197 = v98;
              *v198 = v97;
              v196 = v99;
              v199 = *(v56 + 856);
              do
              {
                v100 = v62;
                sub_100684ADC(v56, v62);
                if (!v61)
                {
                  break;
                }

                v61 = (v61 - 1) >> 1;
                v62 = a1 + 864 * v61;
                v56 = v100;
              }

              while (sub_100682FBC(v62, &v156));
              sub_100684ADC(v100, &v156);
              if (SHIBYTE(v165) < 0)
              {
                operator delete(__p);
              }

              if (*&v160[8])
              {
                *&v160[16] = *&v160[8];
                operator delete(*&v160[8]);
              }
            }
          }
        }

        if (SHIBYTE(v121) < 0)
        {
          operator delete(v120);
        }

        if (v106[0])
        {
          v106[1] = v106[0];
          operator delete(v106[0]);
        }
      }

      while (v29-- > 2);
    }
  }
}