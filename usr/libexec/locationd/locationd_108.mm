void sub_1007D73DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10193D5C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLFitnessTrackingNotifierWatch::nanoLifestyleEnableFitnessDataCollectionSettingChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10193D5DC();
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
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFitnessTrackingNotifierWatch::nanoLifestyleEnableFitnessDataCollectionSettingChanged, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007D9F4C;
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

id sub_1007D7608(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007D767C;
  v4[3] = &unk_102449A78;
  v4[4] = v1;
  return [v2 async:v4];
}

id sub_1007D7684(_BYTE *a1)
{
  if (qword_1025D44A0 != -1)
  {
    sub_10193D604();
  }

  v2 = qword_1025D44A8;
  if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#SystemState, Pairing state changed", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193D618();
  }

  a1[121] = (*(*a1 + 208))(a1);
  a1[122] = sub_1007D6F28();
  (*(*a1 + 224))(a1);
  return sub_1007D79C8(a1);
}

id sub_1007D7780(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007D77F4;
  v4[3] = &unk_102449A78;
  v4[4] = v1;
  return [v2 async:v4];
}

void sub_1007D77FC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10193D5C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFitnessTrackingNotifierWatch::onBatteryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10193D5DC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFitnessTrackingNotifierWatch::onBatteryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1007D82C8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_1007D79C8(_DWORD *a1)
{
  result = +[CMFitnessShared isDeviceSatellitePaired];
  if (result)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = a1 + 34;
  if (a1[34] != v3)
  {
    *v4 = v3;
    if (qword_1025D44A0 != -1)
    {
      sub_10193D604();
    }

    v5 = qword_1025D44A8;
    if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *v4;
      v7[0] = 67240192;
      v7[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CM Satellite Pairing State,%{public}d", v7, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193D6FC(a1 + 34);
    }

    return sub_1007D7ADC(a1);
  }

  return result;
}

uint64_t sub_1007D7ADC(_DWORD *a1)
{
  if (sub_1007D8520(a1))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_1007D86A0(a1, a1 + 31, v2, 1);
  if (sub_1007D85A8(a1))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  sub_1007D86A0(a1, a1 + 32, v3, 2);
  if (sub_1007D8624(a1))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_1007D86A0(a1, a1 + 33, v4, 7);
}

uint64_t sub_1007D7B6C(void *a1)
{
  *a1 = off_102471EE0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"NanoLifestylePrivacyPreferencesChangedNotification", 0);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v3, a1, @"NanoLifestyleSessionTrackerAppPreferencesChangedNotification", 0);
  if (objc_opt_class())
  {
    [a1[39] stop];
    v4 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v4 removeObserver:a1[39] forKeyPath:PDRDidSetupNotification];
    v5 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v5 removeObserver:a1[39] forKeyPath:PDRDidUnpairNotification];

    a1[39] = 0;
  }

  v6 = a1[35];
  a1[35] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_10054B4D4((a1 + 18));

  return sub_10086763C(a1);
}

void sub_1007D7C8C(void *a1)
{
  sub_1007D7B6C(a1);

  operator delete();
}

uint64_t sub_1007D7CC4(uint64_t a1)
{
  if (*(a1 + 109) == 1)
  {
    if (qword_1025D44A0 != -1)
    {
      sub_10193D604();
    }

    v1 = qword_1025D44A8;
    if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEFAULT, "#SystemState, Overriding device activation status check.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193D9B8();
    }

    return 1;
  }

  if (!objc_opt_class())
  {
    if (qword_1025D44A0 != -1)
    {
      sub_10193D604();
    }

    v3 = qword_1025D44A8;
    if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#SystemState, PDRRegistry is unavailable, cannot check activation status", v6, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_10193D8D4();
    return 0;
  }

  if ([+[PDRRegistry pairingID] sharedInstance]
  {
    return 1;
  }

  if (qword_1025D44A0 != -1)
  {
    sub_10193D604();
  }

  v4 = qword_1025D44A8;
  if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#SystemState, Unable to obtain pairing id, suspending activity tracking.", v5, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10193D7F0();
    return 0;
  }

  return result;
}

uint64_t sub_1007D7E70()
{
  v0 = CFPreferencesCopyValue(@"EnableFitnessTracking", @"com.apple.nanolifestyle.privacy", @"mobile", kCFPreferencesAnyHost);
  if (!v0)
  {
    if (qword_1025D44A0 != -1)
    {
      sub_10193D604();
    }

    v5 = qword_1025D44A8;
    if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#SystemState, Failed to get fitness tracking state in Bridge->Motion&Fitness. It may not have been set yet. Assuming default.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193DB80();
    }

    return 1;
  }

  v1 = v0;
  Value = CFBooleanGetValue(v0);
  CFRelease(v1);
  if (Value)
  {
    return 1;
  }

  if (qword_1025D44A0 != -1)
  {
    sub_10193D604();
  }

  v3 = qword_1025D44A8;
  if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#SystemState, Fitness tracking is disabled, suspending activity tracking.", v6, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10193DA9C();
    return 0;
  }

  return result;
}

void sub_1007D7FC0(uint64_t a1)
{
  v2 = *(a1 + 300);
  v3 = sub_1001A5778(a1);
  BYTE4(v13) = v3;
  *(&v13 + 5) = *(a1 + 121);
  if (BYTE5(v13) == 1)
  {
    v4 = sub_1001A5778(a1);
    if (v2 == 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  HIBYTE(v13) = v5;
  if (qword_1025D44A0 != -1)
  {
    sub_10193D604();
  }

  v6 = qword_1025D44A8;
  if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 300);
    *buf = 67240960;
    v22 = v3;
    v23 = 1026;
    v24 = BYTE5(v13);
    v25 = 1026;
    v26 = v7;
    v27 = 1026;
    v28 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#SystemState, Watch, Enabled, %{public}d, DeviceActivated, %{public}d, OnCharger, %{public}d, allowed, %{public}d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44A0 != -1)
    {
      sub_10193DC64();
    }

    v10 = *(a1 + 300);
    v14[0] = 67240960;
    v14[1] = v3;
    v15 = 1026;
    v16 = BYTE5(v13);
    v17 = 1026;
    v18 = v10;
    v19 = 1026;
    v20 = v5;
    LODWORD(v13) = 26;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44A8, 0, "#SystemState, Watch, Enabled, %{public}d, DeviceActivated, %{public}d, OnCharger, %{public}d, allowed, %{public}d", v14, v13);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLFitnessTrackingNotifierWatch::notifyClients()", "%s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  *buf = 0;
  if (sub_10000608C(a1, buf, 1))
  {
    *buf = 0;
    (*(*a1 + 152))(a1, buf, &v13 + 4, 1, 0xFFFFFFFFLL, 0);
  }

  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v9 setTimestamp:CFAbsoluteTimeGetCurrent()];
  [(ALActivityLog *)v9 setFitnessTracking:objc_alloc_init(ALCMFitnessTracking)];
  [(ALCMFitnessTracking *)[(ALActivityLog *)v9 fitnessTracking] setFitnessTrackingEnabled:BYTE4(v13)];
  [(ALCMFitnessTracking *)[(ALActivityLog *)v9 fitnessTracking] setPowerSource:v2];
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v8);
}

void sub_1007D82C8(int *result, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 == 7)
  {
    v5 = result[81];
    v6 = result[75];
    if (v6 != *(a4 + 12) || v5 != 0)
    {
      v8 = result + 75;
      if (v5)
      {
        v9 = result[81];
      }

      else
      {
        v9 = *(a4 + 12);
      }

      *v8 = v9;
      if (qword_1025D44A0 != -1)
      {
        sub_10193D604();
      }

      v10 = qword_1025D44A8;
      if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = result[81];
        v12 = *v8;
        v17 = 67240448;
        v18 = v11;
        v19 = 1026;
        v20 = v12;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#SystemState, OverrideChargerType, %{public}d, NotifyChargerType, %{public}d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193DD80(result + 81, result + 75);
      }

      (*(*result + 224))(result);
      v6 = result[75];
    }

    if (v6 == 3)
    {
      if (qword_1025D44A0 != -1)
      {
        sub_10193DC64();
      }

      v13 = qword_1025D44A8;
      if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#SystemState, Device on-charger, suspending activity tracking.", &v17, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193DE9C();
      }
    }
  }

  else
  {
    if (qword_1025D44A0 != -1)
    {
      sub_10193D604();
    }

    v15 = qword_1025D44A8;
    if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_ERROR))
    {
      v16 = *a3;
      v17 = 67240192;
      v18 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#SystemState, Un-handled notification,%{public}d", &v17, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193DC8C(a3);
    }
  }
}

id sub_1007D8520(uint64_t a1)
{
  v4 = 0;
  if (sub_10001CBC0(a1 + 144, @"NLPredictedActivityStartEnableNotification", &v4))
  {
    v2 = [NSNumber numberWithBool:v4];
  }

  else
  {
    v2 = 0;
  }

  return [CMFitnessShared isWorkoutStartReminderEnabledWhenDeviceIsSatellitePaired:*(a1 + 136) == 2 isInMoveTimeMode:*(a1 + 116) == 2 withCurrentSetting:v2];
}

id sub_1007D85A8(uint64_t a1)
{
  v4 = 0;
  if (sub_10001CBC0(a1 + 144, @"NLPredictedActivityEndEnableNotification", &v4))
  {
    v2 = [NSNumber numberWithBool:v4];
  }

  else
  {
    v2 = 0;
  }

  return [CMFitnessShared isWorkoutEndReminderEnabledWhenDeviceIsInMoveTimeMode:*(a1 + 116) == 2 withCurrentSetting:v2];
}

id sub_1007D8624(uint64_t a1)
{
  v4 = 0;
  if (sub_10001CBC0(a1 + 144, @"NLPredictedActivityResumeEnableNotification", &v4))
  {
    v2 = [NSNumber numberWithBool:v4];
  }

  else
  {
    v2 = 0;
  }

  return [CMFitnessShared isWorkoutResumeReminderEnabledWhenDeviceIsInMoveTimeMode:*(a1 + 116) == 2 withCurrentSetting:v2];
}

uint64_t sub_1007D86A0(uint64_t result, _DWORD *a2, int a3, int a4)
{
  v9 = a4;
  if (*a2 != a3)
  {
    v6 = result;
    *a2 = a3;
    v8 = a3 == 2;
    if (qword_1025D43F0 != -1)
    {
      sub_10193DF80();
    }

    v7 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = a4;
      v16 = 1026;
      v17 = a3 == 2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Workout Alert Flag, notification:%{public}d, enabled:%{public}hhd}", buf, 0x1Eu);
    }

    return (*(*v6 + 152))(v6, &v9, &v8, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

uint64_t sub_1007D87F8(int *a1)
{
  sub_100867BA0(a1);

  return sub_1007D7ADC(a1);
}

uint64_t sub_1007D8830(uint64_t a1, uint64_t a2)
{
  v2 = sub_10001A3E8(a1, a2);
  if (!sub_100328630(v2, v3))
  {
    return 0;
  }

  sub_10054B43C(v7, @"com.apple.nanolifestyle", 1, @"mobile");
  v8 = 0;
  v4 = sub_10001CB4C(v7, "AlwaysOnMotionSensorLogging", &v8, 0xFFFFFFFFLL);
  v5 = v4 & v8;
  sub_10054B4D4(v7);
  return v5;
}

void sub_1007D88CC(_BYTE *result, void *a2)
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
        sub_10193D5C8();
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
        sub_10193DF94(result, a2);
      }
    }
  }
}

uint64_t sub_1007D8A70(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_1007D8C28(char *a1, void *a2, int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0((v20 + 40), &v32, &unk_101C66300, buf) + 32) = v28;
        *buf = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1007DA8A0(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_1025D8741;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014((a1 + 56), &v29, &unk_101C66300, buf) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014((a1 + 56), &v29, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29, &unk_101C66300, buf);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410((v31 + 40), buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_10193D5C8();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v34 = 1026;
    v35 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_10193E09C(a1, a2);
    return 0;
  }

  return result;
}

BOOL sub_1007D8FE0(uint64_t a1, void *a2, int *a3)
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
      sub_10193D5C8();
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
      sub_10193E1A4(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007D9174(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_10193D5DC();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10193D5DC();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLFitnessTrackingNotifier_Type::Notification, CLFitnessTrackingNotifier_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLFitnessTrackingNotifier_Type::Notification, NotificationData_T = CLFitnessTrackingNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

void sub_1007D9644(uint64_t a1, int *a2, _DWORD *a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_1007DA014(a3);
    }
  }
}

void sub_1007D9B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_1007D9B40(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10193D5C8();
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
      sub_10193E3D0(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10193D5C8();
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
      sub_10193E2AC(a1);
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
              sub_10193D5DC();
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
                sub_10193D5DC();
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
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLFitnessTrackingNotifier_Type::Notification, CLFitnessTrackingNotifier_Type::NotificationData>::listClients() [Notification_T = CLFitnessTrackingNotifier_Type::Notification, NotificationData_T = CLFitnessTrackingNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
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

uint64_t sub_1007D9F4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(*v1 + 232))(v1))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return sub_100867900(v1, v2);
}

void sub_1007DA0C0(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_100311844(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_1007DA47C(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_10193D5DC();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10193D5DC();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLFitnessTrackingNotifier_Type::Notification, CLFitnessTrackingNotifier_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLFitnessTrackingNotifier_Type::Notification, NotificationData_T = CLFitnessTrackingNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

_BYTE *sub_1007DA47C(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_100311844(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

void sub_1007DA594(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102472060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007DA5F0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_1007DA610(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1007DA7E8(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10193E4E4();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101CA72F9 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193E4F8();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10193E4E4();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101CA72F9 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193E600();
    }
  }

  return 0;
}

id sub_1007DA7E8(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EF78))
  {
    if ([objc_msgSend(a2 "serialized")] != 4)
    {
      sub_10193E918();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_1007DA94C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_1007DAC20(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v15[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v15[0] & 0x7F) << v5;
        if ((v15[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((*&v11 & 0x7FFF8) == 8)
      {
        v12 = objc_alloc_init(TRANSITPbLocationFingerprint);
        [a1 addLocationFingerprint:v12];

        v15[0] = 0;
        v15[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = sub_100AF1848(v12, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1007DB254(uint64_t a1)
{
  sub_10018D404(a1);
  *(v2 + 56) = 0;
  v3 = v2 + 56;
  *(v2 + 46) = 0;
  *(v2 + 40) = 0;
  *(v2 + 54) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  sub_1007E8AD4(v2 + 80);
  sub_1007E882C(a1 + 384);
  sub_1007E8AD4(a1 + 113744);
  *(v3 + 113992) = 0;
  *(v3 + 114104) = 0;
  sub_10000EC00(&__p, "CLRouteSmoother");
  sub_100CE1DE4(a1 + 114168, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(v3 + 114144) = 0;
  *(v3 + 114152) = 0xBFF0000000000000;
  *(v3 + 114152) = sub_1000081AC();
  *(v3 + 114160) = 0xBFF0000000000000;
  *(v3 + 114160) = sub_1000081AC();
  *(v3 + 114168) = 0;
  *(v3 + 114172) = 0;
  *(a1 + 114232) = 0u;
  *(a1 + 114248) = 0;
  *(v3 + 114200) = 16842753;
  *(v3 + 114204) = 1;
  *(v3 + 114205) = 0;
  *(v3 + 114209) = 65537;
  *(v3 + 114213) = 0;
  *(v3 + 114215) = 1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v3 + 114216) = _Q0;
  *(v3 + 114232) = 256;
  *(v3 + 114240) = 0;
  *(v3 + 114248) = 0;
  *(v3 + 114256) = 0x3FE6666666666666;
  sub_1007DB45C(a1);
  return a1;
}

void sub_1007DB3B8(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v21 = v17;
  v22 = a2;
  v24 = *(v21 + 3656);
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10193EA9C(v16, a1, v22, &__p);
  v25 = __p;
  sub_100CE1E30(v15 + v20);
  sub_1007ECD0C(v15 + v19);
  sub_1007ECDAC(&v18->private_2);
  __p = v18;
  sub_1007ECEBC(&__p);
  _Unwind_Resume(v25);
}

void sub_1007DB45C(uint64_t a1)
{
  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v2 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22[0]) = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CLRS,reset CLRouteSmoother", v22, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193EB1C();
  }

  *(a1 + 48) = 0;
  *(a1 + 53) = 256;
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v3 != v4)
  {
    do
    {
      v5 = v3 - 56;
      v22[0] = (v3 - 40);
      sub_1004CA974(v22);
      v3 = v5;
    }

    while (v5 != v4);
  }

  *(a1 + 64) = v4;
  swan::RouteSmoother::Reset((a1 + 80));
  memset(v38, 0, sizeof(v38));
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(__p, 0, sizeof(__p));
  *v22 = 0u;
  sub_1007E8AD4(v22);
  std::string::operator=((a1 + 113752), &v22[1]);
  *(a1 + 113776) = __p[0];
  v6 = (a1 + 113784);
  if (*(a1 + 113807) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *&__p[1];
  *(a1 + 113800) = __p[3];
  HIBYTE(__p[3]) = 0;
  LOBYTE(__p[1]) = 0;
  v7 = v28;
  *(a1 + 113840) = v27;
  *(a1 + 113856) = v7;
  *(a1 + 113872) = v29;
  *(a1 + 113888) = v30;
  v8 = v26;
  *(a1 + 113808) = v25;
  *(a1 + 113824) = v8;
  v9 = a1 + 113904;
  sub_1003C93BC(a1 + 113896, *(a1 + 113904));
  v10 = v31;
  *(a1 + 113896) = *(&v30 + 1);
  *(a1 + 113904) = v10;
  v11 = *(&v31 + 1);
  *(a1 + 113912) = *(&v31 + 1);
  if (v11)
  {
    *(v10 + 16) = v9;
    *(&v30 + 1) = &v31;
    v31 = 0uLL;
  }

  else
  {
    *(a1 + 113896) = v9;
  }

  v12 = a1 + 113928;
  sub_1003C93BC(a1 + 113920, *(a1 + 113928));
  v13 = *(&v32 + 1);
  *(a1 + 113920) = v32;
  *(a1 + 113928) = v13;
  v14 = v33;
  *(a1 + 113936) = v33;
  if (v14)
  {
    *(v13 + 16) = v12;
    *&v32 = &v32 + 8;
    *(&v32 + 1) = 0;
    *&v33 = 0;
  }

  else
  {
    *(a1 + 113920) = v12;
  }

  v15 = a1 + 113952;
  sub_10018F070(a1 + 113944, *(a1 + 113952));
  v16 = v34;
  *(a1 + 113944) = *(&v33 + 1);
  *(a1 + 113952) = v16;
  v17 = *(&v34 + 1);
  *(a1 + 113960) = *(&v34 + 1);
  if (v17)
  {
    v16[2] = v15;
    *(&v33 + 1) = &v34;
    v34 = 0uLL;
    v16 = 0;
  }

  else
  {
    *(a1 + 113944) = v15;
  }

  v18 = v38[0];
  *(a1 + 114000) = v37;
  *(a1 + 114016) = v18;
  *(a1 + 114025) = *(v38 + 9);
  v19 = v36;
  *(a1 + 113968) = v35;
  *(a1 + 113984) = v19;
  v22[0] = &off_102472248;
  sub_10018F070(&v33 + 8, v16);
  sub_1003C93BC(&v32, *(&v32 + 1));
  sub_1003C93BC(&v30 + 8, v31);
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  v22[0] = off_1024722A8;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  if (*(a1 + 114160) == 1)
  {
    *(a1 + 114160) = 0;
  }

  *(a1 + 114208) = sub_1000081AC();
  *(a1 + 114216) = sub_1000081AC();
  *(a1 + 40) = 0;
  if (*(a1 + 114228) == 1)
  {
    *(a1 + 114228) = 0;
  }

  *(a1 + 114200) = 0;
  v20 = *(a1 + 114232);
  *(a1 + 114232) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(a1 + 114248);
  *(a1 + 114240) = 0u;
  if (v21)
  {
    sub_100008080(v21);
  }

  sub_10025CAF4((a1 + 114168));
}

void sub_1007DB818(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v5 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v6 = a2;
        }

        else
        {
          v6 = *a2;
        }

        v7 = *v2;
        v8 = *(v2 + 8);
        v9 = *(v2 + 16);
        v10 = *(v2 + 24);
        v11 = *(v2 + 32);
        v12 = *(v2 + 40);
        v13 = *(v2 + 64);
        v14 = *(v2 + 72);
        v16 = *(v2 + 48);
        v15 = *(v2 + 56);
        v17 = *(v2 + 104);
        *buf = 134351875;
        v58 = v7;
        v59 = 2082;
        v60 = v6;
        v61 = 2053;
        v62 = v8;
        v63 = 2053;
        v64 = v9;
        v65 = 2049;
        v66 = v11;
        v67 = 2050;
        v68 = v13;
        v69 = 2049;
        v70 = v16;
        v71 = 2050;
        v72 = v10;
        v73 = 2050;
        v74 = v12;
        v75 = 2050;
        v76 = v14;
        v77 = 2050;
        v78 = v15;
        v79 = 1026;
        v80 = v17;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLRS,%{public}.1lf,%{public}s,latitude,%{sensitive}.8lf,longitude,%{sensitive}.8lf,altitude,%{private}.2lf,speed,%{public}.2lf,course,%{private}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,speedUnc,%{public}.2lf,courseUnc,%{public}.2lf,signalEnvironment,%{public}d", buf, 0x76u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        if (*(a2 + 23) >= 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = *a2;
        }

        v19 = *v2;
        v20 = *(v2 + 8);
        v21 = *(v2 + 16);
        v22 = *(v2 + 24);
        v23 = *(v2 + 32);
        v24 = *(v2 + 40);
        v25 = *(v2 + 64);
        v26 = *(v2 + 72);
        v28 = *(v2 + 48);
        v27 = *(v2 + 56);
        v29 = *(v2 + 104);
        v33 = 134351875;
        v34 = v19;
        v35 = 2082;
        v36 = v18;
        v37 = 2053;
        v38 = v20;
        v39 = 2053;
        v40 = v21;
        v41 = 2049;
        v42 = v23;
        v43 = 2050;
        v44 = v25;
        v45 = 2049;
        v46 = v28;
        v47 = 2050;
        v48 = v22;
        v49 = 2050;
        v50 = v24;
        v51 = 2050;
        v52 = v26;
        v53 = 2050;
        v54 = v27;
        v55 = 1026;
        v56 = v29;
        LODWORD(v32) = 118;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,%{public}.1lf,%{public}s,latitude,%{sensitive}.8lf,longitude,%{sensitive}.8lf,altitude,%{private}.2lf,speed,%{public}.2lf,course,%{private}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,speedUnc,%{public}.2lf,courseUnc,%{public}.2lf,signalEnvironment,%{public}d", &v33, v32);
        v31 = v30;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLRouteSmoother::outputPerEpochLog(const std::vector<swan::RouteSmootherEpoch> &, const std::string &)", "%s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v2 += 112;
    }

    while (v2 != v3);
  }
}

id sub_1007DBAF0(id result, uint64_t *a2)
{
  obj = result;
  if (result)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(result, a2, &v61, v117, 16);
    if (result)
    {
      v3 = result;
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v5 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v6 = *v62;
      do
      {
        v7 = 0;
        do
        {
          if (*v62 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v61 + 1) + 8 * v7);
          if (v8)
          {
            if (p_info[210] != -1)
            {
              sub_10193EC08();
            }

            v9 = v5[211];
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              [objc_msgSend(v8 "timestamp")];
              v59 = v10;
              if (*(a2 + 23) >= 0)
              {
                v11 = a2;
              }

              else
              {
                v11 = *a2;
              }

              [v8 latitude];
              v57 = v12;
              [v8 longitude];
              v14 = v13;
              [v8 altitude];
              v16 = v15;
              [v8 speed];
              v18 = v17;
              [v8 course];
              v20 = v19;
              [v8 horizontalAccuracy];
              v22 = v21;
              [v8 altitudeAccuracy];
              v24 = v23;
              [v8 speedAccuracy];
              v26 = v25;
              [v8 courseAccuracy];
              v28 = v27;
              v29 = [v8 signalEnvironmentType];
              v30 = [v8 locType];
              *buf = 134352131;
              v92 = v59;
              v93 = 2082;
              v94 = v11;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v95 = 2053;
              v96 = v57;
              v97 = 2053;
              v98 = v14;
              v99 = 2049;
              v100 = v16;
              v101 = 2050;
              v102 = v18;
              v103 = 2049;
              v104 = v20;
              v105 = 2050;
              v106 = v22;
              v107 = 2050;
              v108 = v24;
              v109 = 2050;
              v110 = v26;
              v111 = 2050;
              v112 = v28;
              v113 = 1026;
              v114 = v29;
              v5 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v115 = 1026;
              v116 = v30;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLRS,%{public}.1lf,%{public}s,latitude,%{sensitive}.8lf,longitude,%{sensitive}.8lf,altitude,%{private}.2lf,speed,%{public}.2lf,course,%{private}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,speedUnc,%{public}.2lf,courseUnc,%{public}.2lf,signalEnvironment,%{public}d,locType,%{public}d", buf, 0x7Cu);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (p_info[210] != -1)
              {
                sub_10193EC08();
              }

              v31 = v5[211];
              [objc_msgSend(v8 "timestamp")];
              v60 = v32;
              if (*(a2 + 23) >= 0)
              {
                v33 = a2;
              }

              else
              {
                v33 = *a2;
              }

              [v8 latitude];
              v58 = v34;
              [v8 longitude];
              v36 = v35;
              [v8 altitude];
              v38 = v37;
              [v8 speed];
              v40 = v39;
              [v8 course];
              v42 = v41;
              [v8 horizontalAccuracy];
              v44 = v43;
              [v8 altitudeAccuracy];
              v46 = v45;
              [v8 speedAccuracy];
              v48 = v47;
              [v8 courseAccuracy];
              v50 = v49;
              v51 = [v8 signalEnvironmentType];
              v52 = [v8 locType];
              v65 = 134352131;
              v66 = v60;
              v67 = 2082;
              v68 = v33;
              v69 = 2053;
              v70 = v58;
              v71 = 2053;
              v72 = v36;
              v73 = 2049;
              v74 = v38;
              v75 = 2050;
              v76 = v40;
              v77 = 2049;
              v78 = v42;
              v79 = 2050;
              v80 = v44;
              v81 = 2050;
              v82 = v46;
              v83 = 2050;
              v84 = v48;
              v85 = 2050;
              v86 = v50;
              v87 = 1026;
              v88 = v51;
              v89 = 1026;
              v90 = v52;
              LODWORD(v55) = 124;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v31, 0, "CLRS,%{public}.1lf,%{public}s,latitude,%{sensitive}.8lf,longitude,%{sensitive}.8lf,altitude,%{private}.2lf,speed,%{public}.2lf,course,%{private}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,speedUnc,%{public}.2lf,courseUnc,%{public}.2lf,signalEnvironment,%{public}d,locType,%{public}d", &v65, v55);
              v54 = v53;
              sub_100152C7C("Generic", 1, 0, 2, "static void CLRouteSmoother::outputPerEpochLog(NSArray<CLTripSegmentLocation *> *, const std::string &)", "%s\n", v53);
              if (v54 != buf)
              {
                free(v54);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              v5 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }
          }

          v7 = v7 + 1;
        }

        while (v3 != v7);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_1007DBF80(uint64_t a1)
{
  sub_10001CAF4(buf);
  v2 = a1 + 110592;
  v3 = *(a1 + 114256);
  LOBYTE(v84) = 0;
  v4 = sub_10001CB4C(*buf, "EnablePerEpochSmoothLogOutput", &v84, 0xFFFFFFFFLL);
  v5 = LOBYTE(v84);
  if (!v4)
  {
    v5 = v3;
  }

  *(v2 + 3664) = v5;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v6 = *(v2 + 3665);
  LOBYTE(v84) = 0;
  v7 = sub_10001CB4C(*buf, "EnableMapMatchingBeforeSmoothing", &v84, 0xFFFFFFFFLL);
  v8 = LOBYTE(v84);
  if (!v7)
  {
    v8 = v6;
  }

  *(v2 + 3665) = v8;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v9 = *(v2 + 3666);
  LOBYTE(v84) = 0;
  v10 = sub_10001CB4C(*buf, "CLRSAllowRouteReconstruction", &v84, 0xFFFFFFFFLL);
  v11 = LOBYTE(v84);
  if (!v10)
  {
    v11 = v9;
  }

  *(v2 + 3666) = v11;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v12 = *(v2 + 3696);
  LOBYTE(v84) = 0;
  v13 = sub_10001CB4C(*buf, "fUseTripSegmentProcessorForReconstruction", &v84, 0xFFFFFFFFLL);
  v14 = LOBYTE(v84);
  if (!v13)
  {
    v14 = v12;
  }

  *(v2 + 3696) = v14;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v15 = *(v2 + 3674);
  LOBYTE(v84) = 0;
  v16 = sub_10001CB4C(*buf, "CLRSForceRouteReconstruction", &v84, 0xFFFFFFFFLL);
  v17 = LOBYTE(v84);
  if (!v16)
  {
    v17 = v15;
  }

  *(v2 + 3674) = v17;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v18 = *(v2 + 3679);
  LOBYTE(v84) = 0;
  v19 = sub_10001CB4C(*buf, "CLRSPreferCachedMapData", &v84, 0xFFFFFFFFLL);
  v20 = LOBYTE(v84);
  if (!v19)
  {
    v20 = v18;
  }

  *(v2 + 3679) = v20;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v21 = *(v2 + 3673);
  LOBYTE(v84) = 0;
  v22 = sub_10001CB4C(*buf, "EnableRunningTrackDetectionDuringSmoothing", &v84, 0xFFFFFFFFLL);
  v23 = LOBYTE(v84);
  if (!v22)
  {
    v23 = v21;
  }

  *(v2 + 3673) = v23;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v24 = *(v2 + 3667);
  LOBYTE(v84) = 0;
  v25 = sub_10001CB4C(*buf, "CLRSEnablePTSDuringReconstruction", &v84, 0xFFFFFFFFLL);
  v26 = LOBYTE(v84);
  if (!v25)
  {
    v26 = v24;
  }

  *(v2 + 3667) = v26;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v27 = *(v2 + 3668);
  LOBYTE(v84) = 0;
  v28 = sub_10001CB4C(*buf, "EnableMapMatchingDuringReconstructionOfSparseLocations", &v84, 0xFFFFFFFFLL);
  v29 = LOBYTE(v84);
  if (!v28)
  {
    v29 = v27;
  }

  *(v2 + 3668) = v29;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v30 = *(v2 + 3669);
  LOBYTE(v84) = 0;
  v31 = sub_10001CB4C(*buf, "EnableMapMatchingDuringReconstructionOf1HzLocations", &v84, 0xFFFFFFFFLL);
  v32 = LOBYTE(v84);
  if (!v31)
  {
    v32 = v30;
  }

  *(v2 + 3669) = v32;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v33 = *(v2 + 3697);
  LOBYTE(v84) = 0;
  v34 = sub_10001CB4C(*buf, "CLRSUseXPCServiceForMapQuery", &v84, 0xFFFFFFFFLL);
  v35 = LOBYTE(v84);
  if (!v34)
  {
    v35 = v33;
  }

  *(v2 + 3697) = v35;
  if (v112)
  {
    sub_100008080(v112);
  }

  if ((*(v2 + 3665) & 1) == 0)
  {
    sub_10001CAF4(buf);
    v36 = *(v2 + 3670);
    LOBYTE(v84) = 0;
    v37 = sub_10001CB4C(*buf, "EnableMapMatchingAfterSmoothing", &v84, 0xFFFFFFFFLL);
    v38 = LOBYTE(v84);
    if (!v37)
    {
      v38 = v36;
    }

    *(v2 + 3670) = v38;
    if (v112)
    {
      sub_100008080(v112);
    }

    sub_10001CAF4(buf);
    v39 = *(v2 + 3671);
    LOBYTE(v84) = 0;
    v40 = sub_10001CB4C(*buf, "EnableReSmoothingAfterMapMatching", &v84, 0xFFFFFFFFLL);
    v41 = LOBYTE(v84);
    if (!v40)
    {
      v41 = v39;
    }

    *(v2 + 3671) = v41;
    if (v112)
    {
      sub_100008080(v112);
    }
  }

  v83 = 0x3FF0000000000000;
  sub_10001CAF4(buf);
  v42 = sub_1000B9370(*buf, "CLRSDesiredTimeBetweenReconstructedPointsSeconds", &v83);
  if (v112)
  {
    sub_100008080(v112);
  }

  if (v42)
  {
    *(v2 + 3704) = v83;
    *(v2 + 3712) = 1;
  }

  sub_10001CAF4(buf);
  v43 = *(v2 + 3675);
  LOBYTE(v84) = 0;
  v44 = sub_10001CB4C(*buf, "CLRSAllow1HzGnssIOFusionInSupportedSignalEnvironments", &v84, 0xFFFFFFFFLL);
  v45 = LOBYTE(v84);
  if (!v44)
  {
    v45 = v43;
  }

  *(v2 + 3675) = v45;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v46 = *(v2 + 3676);
  LOBYTE(v84) = 0;
  v47 = sub_10001CB4C(*buf, "CLRSForce1HzGnssIOFusionInAllSignalEnvironments", &v84, 0xFFFFFFFFLL);
  v48 = LOBYTE(v84);
  if (!v47)
  {
    v48 = v46;
  }

  *(v2 + 3676) = v48;
  if (v112)
  {
    sub_100008080(v112);
  }

  sub_10001CAF4(buf);
  v49 = *(v2 + 3720);
  v84 = 0.0;
  v50 = sub_1000B9370(*buf, "CLRSRouteLinearityThreshold", &v84);
  v51 = v84;
  if (!v50)
  {
    v51 = v49;
  }

  *(v2 + 3720) = v51;
  if (v112)
  {
    sub_100008080(v112);
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v52 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
  {
    v53 = *(v2 + 3665);
    v54 = *(v2 + 3666);
    v55 = *(v2 + 3674);
    v56 = *(v2 + 3670);
    v57 = *(v2 + 3671);
    v58 = *(v2 + 3664);
    v59 = *(v2 + 3672);
    v60 = *(v2 + 3673);
    v61 = *(v2 + 3696);
    v62 = *(v2 + 3667);
    v63 = *(v2 + 3668);
    v64 = *(v2 + 3669);
    v65 = *(v2 + 3697);
    v66 = *(v2 + 3675);
    *buf = 67243520;
    *&buf[4] = v53;
    LOWORD(v112) = 1026;
    *(&v112 + 2) = v54;
    HIWORD(v112) = 1026;
    v113 = v55;
    v114 = 1026;
    v115 = v56;
    v116 = 1026;
    v117 = v57;
    v118 = 1026;
    v119 = v58;
    v120 = 1026;
    v121 = v59;
    v122 = 1026;
    v123 = v60;
    v124 = 1026;
    v125 = v61;
    v126 = 1026;
    v127 = v62;
    v128 = 1026;
    v129 = v63;
    v130 = 1026;
    v131 = v64;
    v132 = 1026;
    v133 = v65;
    v134 = 1026;
    v135 = v66;
    _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_INFO, "CLRS,EnableMapMatchingBeforeSmoothing,%{public}d,AllowRouteReconstruction,%{public}d,ForceRouteReconstruction,%{public}d,EnableMapMatchingAfterSmoothing,%{public}d,EnableReSmoothingAfterMapMatching,%{public}d,EnablePerEpochSmoothLogOutput,%{public}d,EnableCornerDetectionDuringSmoothing,%{public}d,EnableRunningTrackDetectionDuringSmoothing,%{public}d,UseTripSegmentProcessorForReconstruction,%{public}d,EnablePTSDuringReconstruction,%{public}d,EnableMapMatchingDuringReconstructionOfSparseLocations,%{public}d,EnableMapMatchingDuringReconstructionOf1HzLocations,%{public}d,UseXPCServiceForMapQuery,%{public}d,Allow1HzGnssIOFusion,%{public}d", buf, 0x56u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v67 = *(v2 + 3665);
    v68 = *(v2 + 3666);
    v69 = *(v2 + 3674);
    v70 = *(v2 + 3670);
    v71 = *(v2 + 3671);
    v72 = *(v2 + 3664);
    v73 = *(v2 + 3672);
    v74 = *(v2 + 3673);
    v75 = *(v2 + 3696);
    v76 = *(v2 + 3667);
    v77 = *(v2 + 3668);
    v78 = *(v2 + 3669);
    v79 = *(v2 + 3697);
    v80 = *(v2 + 3675);
    LODWORD(v84) = 67243520;
    HIDWORD(v84) = v67;
    v85 = 1026;
    v86 = v68;
    v87 = 1026;
    v88 = v69;
    v89 = 1026;
    v90 = v70;
    v91 = 1026;
    v92 = v71;
    v93 = 1026;
    v94 = v72;
    v95 = 1026;
    v96 = v73;
    v97 = 1026;
    v98 = v74;
    v99 = 1026;
    v100 = v75;
    v101 = 1026;
    v102 = v76;
    v103 = 1026;
    v104 = v77;
    v105 = 1026;
    v106 = v78;
    v107 = 1026;
    v108 = v79;
    v109 = 1026;
    v110 = v80;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 1, "CLRS,EnableMapMatchingBeforeSmoothing,%{public}d,AllowRouteReconstruction,%{public}d,ForceRouteReconstruction,%{public}d,EnableMapMatchingAfterSmoothing,%{public}d,EnableReSmoothingAfterMapMatching,%{public}d,EnablePerEpochSmoothLogOutput,%{public}d,EnableCornerDetectionDuringSmoothing,%{public}d,EnableRunningTrackDetectionDuringSmoothing,%{public}d,UseTripSegmentProcessorForReconstruction,%{public}d,EnablePTSDuringReconstruction,%{public}d,EnableMapMatchingDuringReconstructionOfSparseLocations,%{public}d,EnableMapMatchingDuringReconstructionOf1HzLocations,%{public}d,UseXPCServiceForMapQuery,%{public}d,Allow1HzGnssIOFusion,%{public}d", &v84, 86);
    v82 = v81;
    sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::readDefaultSettings()", "%s\n", v81);
    if (v82 != buf)
    {
      free(v82);
    }
  }
}

void sub_1007DC6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    sub_100008080(a26);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007DC758()
{
  result = objc_opt_class();
  if (result)
  {
    v1 = +[MCProfileConnection sharedConnection];

    return [v1 isHealthDataSubmissionAllowed];
  }

  return result;
}

void sub_1007DC7A8(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 56);
  if (v2 != a2)
  {
    sub_1007ECF68(v2, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  }
}

void sub_1007DC7E0(uint64_t a1, uint64_t a2, int a3, char a4, char a5, char a6)
{
  sub_1007DB45C(a1);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 53) = a4;
  *(a1 + 54) = a5;
  *(a1 + 52) = a6;
  sub_1007DBF80(a1);
  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v12 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 53);
    v15 = *(a1 + 54);
    v16 = *(a1 + 52);
    *buf = 67240960;
    v31 = v13;
    v32 = 1026;
    v33 = v14;
    v34 = 1026;
    v35 = v15;
    v36 = 1026;
    v37 = v16;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "CLRS,initialize,workoutActivity,%{public}u,shouldReconstructEntireRoute,%{public}d,networkAccessAllowed,%{public}d,isWatch,%{public}d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v17 = *(a1 + 48);
    v18 = *(a1 + 53);
    v19 = *(a1 + 54);
    v20 = *(a1 + 52);
    v23[0] = 67240960;
    v23[1] = v17;
    v24 = 1026;
    v25 = v18;
    v26 = 1026;
    v27 = v19;
    v28 = 1026;
    v29 = v20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,initialize,workoutActivity,%{public}u,shouldReconstructEntireRoute,%{public}d,networkAccessAllowed,%{public}d,isWatch,%{public}d", v23, 26);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::initialize(dispatch_queue_t, CLMotionActivity::Type, const BOOL, const BOOL, const BOOL)", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  *(a1 + 114200) = 1;
}

uint64_t sub_1007DCA10(uint64_t a1, uint64_t a2, size_t *a3, uint64_t a4)
{
  v4 = a1 + 110592;
  if (*(a1 + 114200))
  {
    sub_1001B8A14(a1 + 114168);
    v9 = sub_1000081AC();
    v123 = a3;
    if (*(v4 + 3636) == 1)
    {
      v10 = *(v4 + 3632) + 1;
    }

    else
    {
      v10 = 0;
    }

    *(v4 + 3632) = v10;
    *(v4 + 3636) = 1;
    v14 = *a2;
    v13 = *(a2 + 8);
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v15 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 4);
    v16 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "Non-Final";
      if (!a4)
      {
        v17 = "Final";
      }

      v18 = *(a1 + 48);
      v19 = *(a1 + 53);
      v20 = *(a1 + 54);
      v21 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
      *buf = 136447490;
      *&buf[4] = v17;
      *&buf[12] = 1026;
      *&buf[14] = v18;
      *&buf[18] = 2050;
      *&buf[20] = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 4);
      v146 = 1026;
      *v147 = v19;
      *&v147[4] = 1026;
      *&v147[6] = v20;
      LOWORD(v148[0]) = 2050;
      *(v148 + 2) = v21;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "CLRS,Smoothing batchType,%{public}s,workoutActivity,%{public}u,batchSize,%{public}zu,shouldReconstructEntireRoute,%{public}d,networkAccessAllowed,%{public}d,reconstructionIntervalData,size,%{public}zu", buf, 0x32u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v99 = "Non-Final";
      if (!a4)
      {
        v99 = "Final";
      }

      v100 = *(a1 + 48);
      v101 = *(a1 + 53);
      v102 = *(a1 + 54);
      v103 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
      *v144 = 136447490;
      *&v144[4] = v99;
      *&v144[12] = 1026;
      *&v144[14] = v100;
      *&v144[18] = 2050;
      *&v144[20] = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 4);
      *&v144[28] = 1026;
      *&v144[30] = v101;
      *&v144[34] = 1026;
      *&v144[36] = v102;
      *&v144[40] = 2050;
      *&v144[42] = v103;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,Smoothing batchType,%{public}s,workoutActivity,%{public}u,batchSize,%{public}zu,shouldReconstructEntireRoute,%{public}d,networkAccessAllowed,%{public}d,reconstructionIntervalData,size,%{public}zu", v144, 50);
      v105 = v104;
      sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v104);
      if (v105 != buf)
      {
        free(v105);
      }
    }

    v22 = sub_1000081AC();
    sub_10000EC00(&v138, "Input");
    sub_10000EC00(&v136, "PreSmt");
    sub_10000EC00(&v134, "Sparse");
    sub_1007DB818(a2, &v138);
    v124 = v4;
    if ((*(a1 + 53) & 1) == 0 && *(v4 + 3674) != 1 || *(v4 + 3666) != 1)
    {
      v125 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 4);
      if (*(a1 + 56) != *(a1 + 64))
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v23 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
        {
          v24 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
          *buf = 134349056;
          *&buf[4] = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "CLRS,reconstructionIntervalInputData,numIntervals,%{public}zu", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193ED1C(buf);
          v106 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
          *v144 = 134349056;
          *&v144[4] = v106;
          LODWORD(v122) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 2, "CLRS,reconstructionIntervalInputData,numIntervals,%{public}zu", v144, v122);
          v108 = v107;
          sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v107);
          if (v108 != buf)
          {
            free(v108);
          }
        }

        *(v4 + 3696) = 1;
        memset(v144, 0, 24);
        v25 = *(a1 + 56);
        v26 = 0;
        if (*(a1 + 64) == v25)
        {
          v125 = v15;
        }

        else
        {
          v27 = 0;
          v125 = v15;
          do
          {
            v28 = v25 + 56 * v27;
            if ((*(v28 + 40) & 1) == 0)
            {
              if ([*v28 count])
              {
                if (!a4 || *(a2 + 8) != *a2 && ([objc_msgSend(objc_msgSend(*v28 "lastObject")], v29 < *(*(a2 + 8) - 112)))
                {
                  v30 = [*v28 count];
                  while (0xAAAAAAAAAAAAAAABLL * ((*&v144[8] - *v144) >> 3) <= v27)
                  {
                    memset(buf, 0, 24);
                    sub_1007E0E80(v144, buf);
                    if (*buf)
                    {
                      *&buf[8] = *buf;
                      operator delete(*buf);
                    }
                  }

                  sub_1007E0FC0(a1, v28, v27, (*v144 + 24 * v27));
                  v125 += v30;
                  *(v28 + 40) = 1;
                  v26 += 0x6DB6DB6DB6DB6DB7 * ((*(*v144 + 24 * v27 + 8) - *(*v144 + 24 * v27)) >> 4);
                }
              }
            }

            ++v27;
            v25 = *(a1 + 56);
          }

          while (v27 < 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - v25) >> 3));
        }

        sub_1007ED734(&__p, v26 + 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 4));
        v31 = *a2;
        v32 = *(a2 + 8);
        v33 = *v144;
        if (*a2 == v32)
        {
          v35 = 0;
          v34 = 0;
        }

        else
        {
          v34 = 0;
          v35 = 0;
          do
          {
            if (v35 < 0xAAAAAAAAAAAAAAABLL * ((*&v144[8] - v33) >> 3))
            {
              v36 = *(v33 + 24 * v35 + 8);
              v37 = v36 - *(v33 + 24 * v35);
              if (v37)
              {
                if (*v31 >= *(v36 - 112))
                {
                  sub_1007E1824(&__p, 0x6DB6DB6DB6DB6DB7 * (v37 >> 4) + v34);
                  v33 = *v144;
                  v38 = (*v144 + 24 * v35);
                  v39 = *v38;
                  v40 = v38[1];
                  if (v39 != v40)
                  {
                    v41 = (__p + 112 * v34);
                    do
                    {
                      v42 = *v39;
                      v43 = v39[2];
                      v41[1] = v39[1];
                      v41[2] = v43;
                      *v41 = v42;
                      v44 = v39[3];
                      v45 = v39[4];
                      v46 = v39[5];
                      *(v41 + 89) = *(v39 + 89);
                      v41[4] = v45;
                      v41[5] = v46;
                      v41[3] = v44;
                      ++v34;
                      v39 += 7;
                      v41 += 7;
                    }

                    while (v39 != v40);
                  }

                  ++v35;
                }
              }
            }

            v47 = (__p + 112 * v34);
            v48 = *v31;
            v49 = *(v31 + 1);
            v47[2] = *(v31 + 2);
            v51 = *(v31 + 4);
            v50 = *(v31 + 5);
            v52 = *(v31 + 3);
            *(v47 + 89) = *(v31 + 89);
            v47[4] = v51;
            v47[5] = v50;
            v47[3] = v52;
            *v47 = v48;
            v47[1] = v49;
            ++v34;
            v31 += 14;
          }

          while (v31 != v32);
        }

        for (i = *&v144[8]; v35 < 0xAAAAAAAAAAAAAAABLL * ((*&v144[8] - v33) >> 3); i = *&v144[8])
        {
          sub_1007E1824(&__p, v34 + 0x6DB6DB6DB6DB6DB7 * ((*(v33 + 24 * v35 + 8) - *(v33 + 24 * v35)) >> 4));
          v33 = *v144;
          v54 = (*v144 + 24 * v35);
          v55 = *v54;
          v56 = v54[1];
          if (v55 != v56)
          {
            v57 = (__p + 112 * v34);
            do
            {
              v58 = *v55;
              v59 = v55[2];
              v57[1] = v55[1];
              v57[2] = v59;
              *v57 = v58;
              v60 = v55[3];
              v61 = v55[4];
              v62 = v55[5];
              *(v57 + 89) = *(v55 + 89);
              v57[4] = v61;
              v57[5] = v62;
              v57[3] = v60;
              ++v34;
              v55 += 7;
              v57 += 7;
            }

            while (v55 != v56);
          }

          ++v35;
        }

        if (v34 != 0x6DB6DB6DB6DB6DB7 * ((*(&__p + 1) - __p) >> 4))
        {
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v63 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349312;
            *&buf[4] = v34;
            *&buf[12] = 2050;
            *&buf[14] = 0x6DB6DB6DB6DB6DB7 * ((*(&__p + 1) - __p) >> 4);
            _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_ERROR, "CLRS,Unexpected need to resize route_epochs_expanded_vector,new size,%{public}zu,original size,%{public}zu", buf, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10193ED1C(buf);
            v140 = 134349312;
            v141 = v34;
            v142 = 2050;
            v143 = 0x6DB6DB6DB6DB6DB7 * ((*(&__p + 1) - __p) >> 4);
            LODWORD(v122) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,Unexpected need to resize route_epochs_expanded_vector,new size,%{public}zu,original size,%{public}zu", &v140, v122);
            v113 = v112;
            sub_100152C7C("Generic", 1, 0, 0, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v112);
            if (v113 != buf)
            {
              free(v113);
            }
          }

          sub_1007E1A28(&__p, v34);
          v33 = *v144;
          i = *&v144[8];
        }

        if (i != v33)
        {
          v64 = i;
          do
          {
            v66 = *(v64 - 24);
            v64 -= 24;
            v65 = v66;
            if (v66)
            {
              *(i - 16) = v65;
              operator delete(v65);
            }

            i = v64;
          }

          while (v64 != v33);
        }

        *&v144[8] = v33;
        v67 = *a2;
        *a2 = __p;
        v68 = *(a2 + 16);
        *(a2 + 16) = v131;
        *&__p = v67;
        v131 = v68;
        if (SHIBYTE(v139) < 0)
        {
          *(&v138 + 1) = 19;
          v69 = v138;
        }

        else
        {
          HIBYTE(v139) = 19;
          v69 = &v138;
        }

        v4 = v124;
        strcpy(v69, "CombinedPreSmoothed");
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        *buf = v144;
        sub_1002EC52C(buf);
      }

LABEL_95:
      if (*(v4 + 3665) == 1)
      {
        if ((sub_1007E1A6C(a1) & 1) == 0)
        {
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v74 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_ERROR, "CLRS,CLMM,could not configure map matcher", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10193ED1C(buf);
            *v144 = 0;
            LODWORD(v122) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,CLMM,could not configure map matcher", v144, v122);
            v111 = v110;
            sub_100152C7C("Generic", 1, 0, 0, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v110);
            if (v111 != buf)
            {
              free(v111);
            }
          }
        }

        if (SHIBYTE(v137) < 0)
        {
          sub_100007244(&v128, v136, *(&v136 + 1));
        }

        else
        {
          v128 = v136;
          v129 = v137;
        }

        sub_1007E1DE0(a1, &v128, a2, a4);
        if (SHIBYTE(v129) < 0)
        {
          operator delete(v128);
        }

        if (SHIBYTE(v139) < 0)
        {
          *(&v138 + 1) = 6;
          v75 = v138;
        }

        else
        {
          HIBYTE(v139) = 6;
          v75 = &v138;
        }

        strcpy(v75, "PostMM");
      }

      if (SHIBYTE(v139) < 0)
      {
        sub_100007244(&v126, v138, *(&v138 + 1));
      }

      else
      {
        v126 = v138;
        v127 = v139;
      }

      v12 = sub_1007E269C(a1, &v126, a2, a4);
      if (SHIBYTE(v127) < 0)
      {
        operator delete(v126);
      }

      v76 = *(a1 + 56);
      for (j = *(a1 + 64); v76 != j; v76 += 56)
      {
        if ((*(v76 + 41) & 1) == 0)
        {
          v78 = *a2;
          v79 = *(a2 + 8);
          while (v78 != v79)
          {
            if ([*(v76 + 8) count] >= 2)
            {
              v80 = *v78;
              [objc_msgSend(objc_msgSend(*(v76 + 8) "firstObject")];
              if (v80 >= v81)
              {
                v82 = *v78;
                [objc_msgSend(objc_msgSend(*(v76 + 8) "lastObject")];
                if (v82 <= v83)
                {
                  *(v78 + 2) = xmmword_101C76220;
                }
              }
            }

            if ([*v76 count] >= 2)
            {
              v84 = *v78;
              [objc_msgSend(objc_msgSend(*v76 "firstObject")];
              if (v84 >= v85)
              {
                v86 = *v78;
                [objc_msgSend(objc_msgSend(*v76 "lastObject")];
                if (v86 <= v87)
                {
                  *(v78 + 2) = xmmword_101C76220;
                }
              }
            }

            v78 += 14;
          }
        }
      }

      v88 = v124;
      if ((*(v124 + 3664) & 1) != 0 && (sub_10000EC00(buf, "Smoothed"), sub_1007DB818(a2, buf), (buf[23] & 0x80000000) != 0))
      {
        operator delete(*buf);
        if (v12)
        {
LABEL_134:
          v89 = 0.0;
          if (v22 >= 0.0)
          {
            v89 = vabdd_f64(sub_1000081AC(), v22) * 1000.0;
          }

          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v90 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2050;
            *&buf[20] = v12;
            v146 = 1026;
            *v147 = v89;
            _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRS,warning,smoother returned error, smootherErrorCode:%{public, location:CLSmootherErrorCode}lld, elapsedTime,msec:%{public}d}", buf, 0x22u);
          }

          if (!sub_1007DC758())
          {
            goto LABEL_165;
          }

          goto LABEL_164;
        }
      }

      else if (v12)
      {
        goto LABEL_134;
      }

      sub_1007E38BC(a2, v123);
      v91 = 0.0;
      if (v9 >= 0.0)
      {
        v91 = vabdd_f64(sub_1000081AC(), v9) * 1000.0;
      }

      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v92 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v124 + 3636) == 1)
        {
          v93 = *(v124 + 3632);
        }

        else
        {
          v93 = -1;
        }

        v94 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 4);
        *buf = 67241216;
        *&buf[4] = v93;
        *&buf[8] = 2050;
        *&buf[10] = v125;
        *&buf[18] = 2050;
        *&buf[20] = v94;
        v146 = 2048;
        *v147 = 0;
        *&v147[8] = 2050;
        v148[0] = v91;
        _os_log_impl(dword_100000000, v92, OS_LOG_TYPE_DEFAULT, "CLRS,Finished smoothing batch,%{public}d,inputCount,%{public}zu,outputCount,%{public}zu,returnCode,%ld,elapsedTime,%{public}.0f,msec", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        if (*(v124 + 3636) == 1)
        {
          v109 = *(v124 + 3632);
        }

        else
        {
          v109 = -1;
        }

        v116 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 4);
        *v144 = 67241216;
        *&v144[4] = v109;
        *&v144[8] = 2050;
        *&v144[10] = v125;
        *&v144[18] = 2050;
        *&v144[20] = v116;
        *&v144[28] = 2048;
        *&v144[30] = 0;
        *&v144[38] = 2050;
        *&v144[40] = v91;
        LODWORD(v122) = 48;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,Finished smoothing batch,%{public}d,inputCount,%{public}zu,outputCount,%{public}zu,returnCode,%ld,elapsedTime,%{public}.0f,msec", v144, v122);
        v118 = v117;
        sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v117);
        if (v118 != buf)
        {
          free(v118);
        }

        v88 = v124;
      }

      if (!a4)
      {
        v95 = 0.0;
        if (*(v88 + 3624) >= 0.0)
        {
          v95 = vabdd_f64(sub_1000081AC(), *(v88 + 3624)) * 1000.0;
        }

        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v96 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v88 + 3636) == 1)
          {
            v97 = *(v88 + 3632) + 1;
          }

          else
          {
            v97 = 0;
          }

          *buf = 67240448;
          *&buf[4] = v97;
          *&buf[8] = 2050;
          *&buf[10] = v95;
          _os_log_impl(dword_100000000, v96, OS_LOG_TYPE_DEFAULT, "CLRS,Finished smoothing all batches,numBatches,%{public}d,elapsedTime,%{public}.0f,msec", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          if (*(v124 + 3636) == 1)
          {
            v119 = *(v124 + 3632) + 1;
          }

          else
          {
            v119 = 0;
          }

          *v144 = 67240448;
          *&v144[4] = v119;
          *&v144[8] = 2050;
          *&v144[10] = v95;
          LODWORD(v122) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,Finished smoothing all batches,numBatches,%{public}d,elapsedTime,%{public}.0f,msec", v144, v122);
          v121 = v120;
          sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v120);
          if (v121 != buf)
          {
            free(v121);
          }
        }
      }

LABEL_164:
      AnalyticsSendEventLazy();
LABEL_165:
      if (SHIBYTE(v135) < 0)
      {
        operator delete(v134);
      }

      if (SHIBYTE(v137) < 0)
      {
        operator delete(v136);
      }

      if (SHIBYTE(v139) < 0)
      {
        operator delete(v138);
      }

      return v12;
    }

    *(v4 + 3696) = 0;
    *&v144[48] = 0;
    memset(v144, 0, 42);
    if (SHIBYTE(v135) < 0)
    {
      sub_100007244(&__dst, v134, *(&v134 + 1));
    }

    else
    {
      __dst = v134;
      v133 = v135;
    }

    v70 = sub_1007DE178(a1, &__dst, a2, v144);
    v71 = v70;
    if (SHIBYTE(v133) < 0)
    {
      operator delete(__dst);
      if (v71)
      {
        goto LABEL_83;
      }
    }

    else if (v70)
    {
LABEL_83:
      if (SHIBYTE(v139) < 0)
      {
        *(&v138 + 1) = 13;
        v72 = v138;
      }

      else
      {
        HIBYTE(v139) = 13;
        v72 = &v138;
      }

      strcpy(v72, "Reconstructed");
LABEL_94:
      *buf = &v144[16];
      sub_1004CA974(buf);
      v125 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 4);
      goto LABEL_95;
    }

    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v73 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_ERROR, "CLRS,Route Reconstruction before smoothing failed", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193ED1C(buf);
      LOWORD(__p) = 0;
      LODWORD(v122) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,Route Reconstruction before smoothing failed", &__p, v122);
      v115 = v114;
      sub_100152C7C("Generic", 1, 0, 0, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v114);
      if (v115 != buf)
      {
        free(v115);
      }
    }

    sub_1016B1A70(*(a1 + 40), "routesmoother", "pasture_reconstruction_failure", 0);
    goto LABEL_94;
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v11 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLRS,smoother not initialized. Cannot proceed", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10193EC30();
  }

  return 5;
}

void sub_1007DE030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007DE178(uint64_t a1, char *a2, uint64_t a3, id *a4)
{
  context = objc_autoreleasePoolPush();
  v140 = sub_1000081AC();
  v5 = 1.0;
  v6 = 1.0;
  if ([a4[1] count] >= 2)
  {
    [objc_msgSend(objc_msgSend(a4[1] "lastObject")];
    v8 = v7;
    [objc_msgSend(objc_msgSend(a4[1] "firstObject")];
    v6 = vabdd_f64(v8, v9);
  }

  if ([*a4 count] >= 2)
  {
    [objc_msgSend(objc_msgSend(*a4 "lastObject")];
    v11 = v10;
    [objc_msgSend(objc_msgSend(*a4 "firstObject")];
    v5 = vabdd_f64(v11, v12);
  }

  v143 = 1.0;
  if ((0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - *a3) >> 4)) >= 2)
  {
    v143 = vabdd_f64(*(*(a3 + 8) - 112), **a3);
  }

  if (*(a1 + 114288) == 1)
  {
    if (v6 >= v5)
    {
      v13 = v6;
    }

    else
    {
      v13 = v5;
    }

    v143 = v13;
    [*a4 count];
  }

  if (*(a1 + 114304) != 1 || *(a1 + 114296) < 1.0)
  {
    v14 = v143 / 10000.0;
    if (v143 / 10000.0 < 1.0)
    {
      v14 = 1.0;
    }

    if (v14 > 5.0)
    {
      v14 = 5.0;
    }

    *(a1 + 114296) = v14;
    *(a1 + 114304) = 1;
  }

  v146 = a4;
  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v15 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a2;
    if (a2[23] < 0)
    {
      v16 = *a2;
    }

    v17 = *(a1 + 114288);
    v18 = *(a1 + 48);
    if (*v146)
    {
      v19 = [*v146 count];
    }

    else
    {
      v19 = 0;
    }

    v20 = v146[1];
    if (v20)
    {
      v20 = [v20 count];
    }

    v21 = (v146[3] - v146[2]) >> 4;
    if (*(a1 + 114304) == 1)
    {
      v22 = *(a1 + 114296);
    }

    else
    {
      v22 = 0x3FF0000000000000;
    }

    *buf = 136448002;
    *&buf[4] = v16;
    *&buf[12] = 1026;
    *&buf[14] = v17;
    *&buf[18] = 1026;
    *&buf[20] = v18;
    *v185 = 2050;
    *&v185[2] = v19;
    *v186 = 2050;
    *&v186[2] = v20;
    *v187 = 2050;
    *&v187[2] = v21;
    *&v187[10] = 2050;
    *&v187[12] = v143;
    v188 = 2050;
    *v189 = v22;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "CLRS,%{public}s,reconstructRoute,useTsp,%{public}d,workout,%{public}u,locationSamples,count,%{public}zu,odometrySamples,count,%{public}zu,altitudeSamples,count,%{public}zu,workoutDurationSec,%{public}.1lf,timeBetweenReconstructedPointsSeconds,%{public}.1lf", buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v107 = qword_1025D4698;
    v108 = a2;
    if (a2[23] < 0)
    {
      v108 = *a2;
    }

    v109 = *(a1 + 114288);
    v110 = *(a1 + 48);
    if (*v146)
    {
      v111 = [*v146 count];
    }

    else
    {
      v111 = 0;
    }

    v112 = v146[1];
    if (v112)
    {
      v112 = [v112 count];
    }

    v113 = (v146[3] - v146[2]) >> 4;
    if (*(a1 + 114304) == 1)
    {
      v114 = *(a1 + 114296);
    }

    else
    {
      v114 = 0x3FF0000000000000;
    }

    LODWORD(v176[0]) = 136448002;
    *(v176 + 4) = v108;
    WORD2(v176[1]) = 1026;
    *(&v176[1] + 6) = v109;
    WORD1(v176[2]) = 1026;
    HIDWORD(v176[2]) = v110;
    *v177 = 2050;
    *&v177[2] = v111;
    *v178 = 2050;
    *&v178[2] = v112;
    *v179 = 2050;
    *&v179[2] = v113;
    *&v179[10] = 2050;
    *&v179[12] = v143;
    v180 = 2050;
    *v181 = v114;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v107, 0, "CLRS,%{public}s,reconstructRoute,useTsp,%{public}d,workout,%{public}u,locationSamples,count,%{public}zu,odometrySamples,count,%{public}zu,altitudeSamples,count,%{public}zu,workoutDurationSec,%{public}.1lf,timeBetweenReconstructedPointsSeconds,%{public}.1lf", v176, 74);
    v116 = v115;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v115);
    if (v116 != buf)
    {
      free(v116);
    }
  }

  v23 = objc_alloc_init(NSMutableArray);
  v24 = 0.0;
  if (*(a1 + 114288) == 1 && ((*(a1 + 48) - 4) & 0xFFFFFFFB) == 0)
  {
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v25 = *v146;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(*v146);
    if (v26)
    {
      v27 = 0;
      v28 = *v172;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v172 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v171 + 1) + 8 * i);
          v31 = *(v146 + 41) == 1 && [*(*(&v171 + 1) + 8 * i) type] == 0;
          v32 = [CLTripSegmentLocation alloc];
          v33 = [v30 timestamp];
          [v30 coordinate];
          v147 = v34;
          [v30 coordinate];
          v36 = v35;
          [v30 horizontalAccuracy];
          v38 = v37;
          [v30 course];
          v40 = v39;
          [v30 courseAccuracy];
          v42 = v41;
          [v30 speed];
          v44 = v43;
          [v30 speedAccuracy];
          v46 = v45;
          [v30 altitude];
          v48 = v47;
          [v30 verticalAccuracy];
          v50 = v49;
          if (v31)
          {
            v51 = 1;
          }

          else
          {
            v51 = [v30 type];
          }

          v52 = [v32 initWithTime:v33 latitude:v51 longitude:v147 horizontalAccuracy:v36 course:v38 courseAccuracy:v40 speed:v42 speedAccuracy:v44 altitude:v46 altitudeAccuracy:v48 locType:v50];
          [v52 setSignalEnvironmentType:{objc_msgSend(v30, "signalEnvironmentType")}];
          [v23 addObject:v52];
          if ([v30 signalEnvironmentType] - 3 >= 2)
          {
            v53 = *(a1 + 114268);
          }

          else
          {
            v53 = 1;
          }

          v27 += v53;
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25);
      }

      while (v26);
      v54 = v27;
    }

    else
    {
      v54 = 0.0;
    }

    v24 = 0.0;
    if ([*v146 count] >= 2)
    {
      v24 = v54 / [*v146 count];
    }
  }

  v55 = a1 + 110592;
  if (*(a1 + 114256) == 1)
  {
    if (*(a1 + 114288))
    {
      sub_1007DBAF0(v23, a2);
    }

    else
    {
      sub_1007DB818(a3, a2);
    }

    v55 = a1 + 110592;
  }

  v167 = 0;
  v168 = &v167;
  v169 = 0x2020000000;
  v170 = 0;
  if (*(v55 + 3696) != 1)
  {
    isTypeCycling = CLMotionActivity::isTypeCycling();
    if ((CLMotionActivity::isTypePedestrian() | isTypeCycling))
    {
      __src = 0;
      v163 = 0;
      v164 = 0;
      v159 = 0;
      v160 = 0;
      v161 = 0;
      memset(&__p, 0, sizeof(__p));
      LODWORD(v151) = 0;
      v152 = 0x3FE0000000000000;
      LOWORD(v153) = 0;
      v154 = xmmword_101CA7370;
      v155 = 1;
      v156 = xmmword_101CA7380;
      v157 = 1;
      v158 = 0;
      sub_100006BE0(&__p, "CLRouteSmootherPedestrian", 0x19uLL);
      LODWORD(v151) = 2;
      v152 = 0x3FE0000000000000;
      LOWORD(v153) = 1;
      LOBYTE(v155) = *(a1 + 54);
      HIBYTE(v155) = *(a1 + 114271);
      v156 = xmmword_101CA7390;
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v69 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
      {
        *buf = 67240960;
        *&buf[4] = BYTE1(v153);
        *&buf[8] = 2050;
        *&buf[10] = v152;
        *&buf[18] = 1026;
        *&buf[20] = v153;
        *v185 = 1026;
        *&v185[2] = v155;
        _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_INFO, "CLRS,reconstruction,CLGeoMapFeatureGeometrySettings,UseXPCServiceForDataQuery,%{public}d,IntersectionRoadSearchDistance,%{public}.1lf,StoringRoadConnectionEnabled,%{public}d,AllowNetworkTileDownload,%{public}d", buf, 0x1Eu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193ED1C(buf);
        LODWORD(v176[0]) = 67240960;
        HIDWORD(v176[0]) = BYTE1(v153);
        LOWORD(v176[1]) = 2050;
        *(&v176[1] + 2) = v152;
        WORD1(v176[2]) = 1026;
        HIDWORD(v176[2]) = v153;
        *v177 = 1026;
        *&v177[2] = v155;
        LODWORD(v139) = 30;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 1, "CLRS,reconstruction,CLGeoMapFeatureGeometrySettings,UseXPCServiceForDataQuery,%{public}d,IntersectionRoadSearchDistance,%{public}.1lf,StoringRoadConnectionEnabled,%{public}d,AllowNetworkTileDownload,%{public}d", v176, v139);
        v123 = v122;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v122);
        if (v123 != buf)
        {
          free(v123);
        }
      }

      sub_1007EF2D4();
    }

    *(v168 + 24) = 1;
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v89 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_DEBUG, "CLRS,reconstruction failed,unsupported activity type", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_148;
    }

    sub_10193ED1C(buf);
    LOWORD(v176[0]) = 0;
    LODWORD(v139) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 2, "CLRS,reconstruction failed,unsupported activity type", v176, v139);
    v91 = v90;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v90);
    goto LABEL_135;
  }

  v56 = 1.0;
  if (*v146 && [*v146 count] && *(v146 + 41) == 1)
  {
    [CLRouteAnalyzer calculateRouteLinearity:*v146];
    v56 = v57;
  }

  if (*(v146 + 41) == 1)
  {
    if (*(a1 + 114267) != 1 || ((*(a1 + 48) - 4) & 0xFFFFFFFB) != 0 || v24 < 0.5 || (*(a1 + 52) & 1) == 0 && v56 >= *(a1 + 114312))
    {
      goto LABEL_72;
    }
  }

  else if (*(a1 + 48) != 4)
  {
LABEL_72:
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v58 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v59 = *(v146 + 41);
      v60 = *(a1 + 48) != 4;
      v61 = ((*(a1 + 48) - 4) & 0xFFFFFFFB) == 0;
      *buf = 67241216;
      *&buf[4] = v59;
      *&buf[8] = 1024;
      *&buf[10] = v61;
      *&buf[14] = 2050;
      *&buf[16] = v24;
      *v185 = 2050;
      *&v185[2] = v56;
      *v186 = 1026;
      *&v186[2] = v60;
      _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "CLRS,Criteria not met to reconstruct,is1HzData,%{public}d,isIOSupportedWorkoutType,%d,ratioOfLocationsThatAreDenseUrban,%{public}.1lf,routeLinearity,%{public}.3lf,WorkoutActivityNotWalking,%{public}d", buf, 0x28u);
    }

    v62 = sub_10000A100(121, 2);
    if (v62)
    {
      sub_10193ED1C(buf);
      v117 = *(v146 + 41);
      v118 = *(a1 + 48) != 4;
      v119 = ((*(a1 + 48) - 4) & 0xFFFFFFFB) == 0;
      LODWORD(v176[0]) = 67241216;
      HIDWORD(v176[0]) = v117;
      LOWORD(v176[1]) = 1024;
      *(&v176[1] + 2) = v119;
      HIWORD(v176[1]) = 2050;
      *&v176[2] = v24;
      *v177 = 2050;
      *&v177[2] = v56;
      *v178 = 1026;
      *&v178[2] = v118;
      LODWORD(v139) = 40;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,Criteria not met to reconstruct,is1HzData,%{public}d,isIOSupportedWorkoutType,%d,ratioOfLocationsThatAreDenseUrban,%{public}.1lf,routeLinearity,%{public}.3lf,WorkoutActivityNotWalking,%{public}d", v176, v139);
      v121 = v120;
      v62 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v120);
      if (v121 != buf)
      {
        free(v121);
      }
    }

    memset(v176, 0, sizeof(v176));
    v63 = v146;
    sub_1007E4E10(v62, v146, v176);
    if (v176[0] == v176[1])
    {
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v64 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEFAULT, "CLRS,empty interpolated altitude vector", buf, 2u);
      }

      v63 = v146;
      if (sub_10000A100(121, 2))
      {
        sub_10193ED1C(buf);
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        LODWORD(v139) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,empty interpolated altitude vector", &__p, v139);
        v136 = v135;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v135);
        if (v136 != buf)
        {
          free(v136);
        }

        v63 = v146;
      }
    }

    sub_1007E4704(*v63, v176, a3, *(v63 + 41));
    v65 = v176[1];
    v66 = v176[0];
    while (v65 != v66)
    {
      v67 = *(v65 - 8);
      if (v67)
      {
        sub_100008080(v67);
      }

      v65 -= 16;
    }

    v176[1] = v66;
    *buf = v176;
    sub_1004CA974(buf);
    v70 = 1;
    goto LABEL_152;
  }

  if (![v23 count])
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v92 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v92, OS_LOG_TYPE_ERROR, "CLRS,tslSampleArray count < 1, cannot reconstruct", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_148;
    }

    sub_10193ED1C(buf);
    LOWORD(v176[0]) = 0;
    LODWORD(v139) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,tslSampleArray count < 1, cannot reconstruct", v176, v139);
    v91 = v93;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v93);
LABEL_135:
    if (v91 != buf)
    {
      free(v91);
    }

LABEL_148:
    v70 = 0;
    goto LABEL_152;
  }

  v71 = [CLTripSegmentInputData alloc];
  v72 = objc_alloc_init(NSUUID);
  if (*(a1 + 48) == 6)
  {
    v73 = 3;
  }

  else
  {
    v73 = 2;
  }

  v74 = [v71 initWithTripSegmentID:v72 isFinalPart:1 modeOfTransport:v73 tripLocations:v23 startTripLocation:objc_msgSend(v23 stopTripLocation:"firstObject") inertialOdometryData:{objc_msgSend(v23, "lastObject"), v146[1]}];
  v183 = 0;
  *(v176 + *(v176[0] - 24)) = v75;
  v76 = (v176 + *(v176[0] - 24));
  std::ios_base::init(v76, &v176[1]);
  v76[1].__vftable = 0;
  v76[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  __p.__r_.__value_.__r.__words[0] = 0;
  __p.__r_.__value_.__l.__size_ = &__p;
  __p.__r_.__value_.__r.__words[2] = 0x3052000000;
  v151 = sub_1000475D8;
  v152 = sub_1000484E0;
  v153 = dispatch_semaphore_create(0);
  v77 = objc_alloc_init(CLTripSegmentProcessorOptions);
  [v77 setNetworkAccessAllowed:*(a1 + 54)];
  [v77 setRunInertialIntegrator:*(a1 + 114259)];
  v78 = 114260;
  if (*(v146 + 41))
  {
    v78 = 114261;
  }

  [v77 setRunMapIntegrator:*(a1 + v78)];
  [v77 setRunLocationOutlierRejector:*(v146 + 41)];
  [v77 setIsWatch:*(a1 + 52)];
  if ((*(a1 + 114304) & 1) == 0)
  {
    sub_100173BA0();
  }

  [v77 setTimeBetweenReconstructedPointsSeconds:*(a1 + 114296)];
  [v77 setTripSegmentRecorderLoggingDirectory:@"/var/mobile/Library/Logs/locationd/routesmoother"];
  [v77 setUseParticleMapMatcherForSnappingInMapIntegrator:1];
  [v77 setUseXPCService:*(a1 + 114289)];
  [v77 setUseNonGNSSFixesForRouteReconstruction:0];
  v79 = *(a1 + 114272);
  if (v79 > 0.0 && *(a1 + 114280) > 0.0)
  {
    [v77 setWindowSizeForLocationOutlierRejector:v79];
    [v77 setStepSizeForLocationOutlierRejector:*(a1 + 114280)];
  }

  [v77 setMaxProcessingTimeInMilliSec:23000.0];
  [v77 setMaxTripSegmentDurationSeconds:28800.0];
  v166[0] = _NSConcreteStackBlock;
  v166[1] = 3221225472;
  v166[2] = sub_1007E52C8;
  v166[3] = &unk_1024720E8;
  v166[5] = a1;
  v166[4] = &v167;
  v166[6] = v146;
  v166[7] = a3;
  v165[0] = _NSConcreteStackBlock;
  v165[1] = 3221225472;
  v165[2] = sub_1007E61EC;
  v165[3] = &unk_102472110;
  v165[4] = &v167;
  v165[5] = &__p;
  v80 = objc_alloc_init(CLTripSegmentProcessorManager);
  [v80 processTripSegmentData:v74 withOptions:v77 outputHandler:v166 completionHandler:v165];
  sub_10001CAF4(buf);
  *v175 = 0;
  v81 = sub_10005BBE4(*buf, "CLRSTripSegmentProcessorTimeoutInSeconds", v175);
  v82 = *v175;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v83 = *(__p.__r_.__value_.__l.__size_ + 40);
  if (v81)
  {
    v84 = 1000000000 * v82;
  }

  else
  {
    v84 = 25000000000;
  }

  v85 = dispatch_time(0, v84);
  v86 = dispatch_semaphore_wait(v83, v85);
  v87 = *(__p.__r_.__value_.__l.__size_ + 40);
  if (v87)
  {
    dispatch_release(v87);
    *(__p.__r_.__value_.__l.__size_ + 40) = 0;
  }

  if (v86)
  {
    [v80 cancelMapHelperRoadDataRequest];
    *(v168 + 24) = 1;
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v88 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_ERROR, "CLRS,CLTSP,processTripSegmentData timed out", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193ED1C(buf);
      *v175 = 0;
      LODWORD(v139) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,CLTSP,processTripSegmentData timed out", v175, v139);
      v138 = v137;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v137);
      if (v138 != buf)
      {
        free(v138);
      }
    }
  }

  if (*(v168 + 24) == 1)
  {
    memset(buf, 0, sizeof(buf));
    sub_1007E4704(*v146, buf, a3, *(v146 + 41));
    *v175 = buf;
    sub_1004CA974(v175);
  }

  _Block_object_dispose(&__p, 8);
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  v94 = 0.0;
  if (v140 >= 0.0)
  {
    v94 = vabdd_f64(sub_1000081AC(), v140) * 1000.0;
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v95 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v96 = a2;
    if (a2[23] < 0)
    {
      v96 = *a2;
    }

    v98 = *a3;
    v97 = *(a3 + 8);
    v99 = [v146[1] count];
    v100 = *(a1 + 48);
    v101 = *(a1 + 114288);
    v102 = *(a1 + 54);
    v103 = *(v168 + 24);
    *buf = 136448258;
    *&buf[4] = v96;
    *&buf[12] = 2050;
    *&buf[14] = 0x6DB6DB6DB6DB6DB7 * ((v97 - v98) >> 4);
    *&buf[22] = 2050;
    *v185 = v99;
    *&v185[8] = 2050;
    *v186 = v94;
    *&v186[8] = 1026;
    *v187 = v100;
    *&v187[4] = 2050;
    *&v187[6] = v143;
    *&v187[14] = 1026;
    *&v187[16] = v101;
    v188 = 1026;
    *v189 = v102;
    *&v189[4] = 1026;
    *&v189[6] = v103;
    _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_DEFAULT, "CLRS,type,%{public}s,reconstruction complete,locationCount,%{public}zu,inertialOdometryCount,%{public}zu,totalElapsedTimeMs,%{public}.0lf,workout,%{public}u,workoutDurationSec,%{public}.1lf,UseTripSegmentProcessorForReconstruction,%{public}d,NetworkAccessAllowed,%{public}d,reconstructionFailed,%{public}d", buf, 0x4Cu);
  }

  v104 = sub_10000A100(121, 2);
  v105 = a2;
  if (v104)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v124 = a2;
    if (a2[23] < 0)
    {
      v124 = *a2;
    }

    v125 = qword_1025D4698;
    v127 = *a3;
    v126 = *(a3 + 8);
    v128 = [v146[1] count];
    v129 = *(a1 + 48);
    v130 = *(a1 + 114288);
    v131 = *(a1 + 54);
    v132 = *(v168 + 24);
    LODWORD(v176[0]) = 136448258;
    *(v176 + 4) = v124;
    WORD2(v176[1]) = 2050;
    *(&v176[1] + 6) = 0x6DB6DB6DB6DB6DB7 * ((v126 - v127) >> 4);
    HIWORD(v176[2]) = 2050;
    *v177 = v128;
    *&v177[8] = 2050;
    *v178 = v94;
    *&v178[8] = 1026;
    *v179 = v129;
    *&v179[4] = 2050;
    *&v179[6] = v143;
    *&v179[14] = 1026;
    *&v179[16] = v130;
    v180 = 1026;
    *v181 = v131;
    *&v181[4] = 1026;
    *&v181[6] = v132;
    LODWORD(v139) = 76;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v125, 0, "CLRS,type,%{public}s,reconstruction complete,locationCount,%{public}zu,inertialOdometryCount,%{public}zu,totalElapsedTimeMs,%{public}.0lf,workout,%{public}u,workoutDurationSec,%{public}.1lf,UseTripSegmentProcessorForReconstruction,%{public}d,NetworkAccessAllowed,%{public}d,reconstructionFailed,%{public}d", v176, v139);
    v134 = v133;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)", "%s\n", v133);
    if (v134 != buf)
    {
      free(v134);
    }

    v105 = a2;
  }

  if (v105[23] < 0)
  {
    sub_100007244(&v148, *v105, *(v105 + 1));
  }

  else
  {
    v148 = *v105;
    v149 = *(v105 + 2);
  }

  AnalyticsSendEventLazy();
  v70 = *(v168 + 24) ^ 1;
  if (SHIBYTE(v149) < 0)
  {
    operator delete(v148);
  }

LABEL_152:
  _Block_object_dispose(&v167, 8);
  objc_autoreleasePoolPop(context);
  return v70 & 1;
}

void sub_1007E0C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a56)
  {
    sub_100008080(a56);
  }

  if (a62 < 0)
  {
    operator delete(__p);
  }

  STACK[0x320] = &a65;
  sub_1007EE3E8(&STACK[0x320]);
  v67 = a66;
  if (a66)
  {
    STACK[0x200] = a66;
    operator delete(v67);
  }

  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

const void **sub_1007E0E80(const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10028C64C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      sub_100288820(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_1002EC088(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void sub_1007E0FC0(uint64_t a1, uint64_t a2, std::string::size_type a3, size_t *a4)
{
  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v8 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
    *(buf.__r_.__value_.__r.__words + 4) = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "CLRS,reconstructInterval,intervalIndex,%{public}zu", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193ED60(a3);
  }

  sub_10000EC00(&v47, "Sparse");
  *(a1 + 114288) = 1;
  v9 = *(a1 + 56) + 56 * a3;
  if ([*v9 count] <= 1)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v10 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*v9 count];
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
      *(buf.__r_.__value_.__r.__words + 4) = a3;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "CLRS,warning,interval %{public}zu has fewer than 2 location samples, cannot reconstruct route,count,%{public}zu", &buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193ED1C(&buf);
      v25 = qword_1025D4698;
      v26 = [*v9 count];
      *v49 = 134349312;
      *&v49[4] = a3;
      v50 = 2050;
      v51 = v26;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v25, 0, "CLRS,warning,interval %{public}zu has fewer than 2 location samples, cannot reconstruct route,count,%{public}zu", v49, 22);
      v28 = v27;
      sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::reconstructInterval(ReconstructionIntervalData &, size_t, std::vector<swan::RouteSmootherEpoch> &)", "%s\n", v27);
      if (v28 != &buf)
      {
        free(v28);
      }
    }

    memset(&buf, 0, sizeof(buf));
    sub_1007E4704(*v9, &buf, a4, *(a2 + 41));
    *v49 = &buf;
    sub_1004CA974(v49);
    goto LABEL_49;
  }

  sub_10000EC00(v45, "Interval-");
  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v12 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    if (*v9)
    {
      v13 = [*v9 count];
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v9 + 8);
    if (v14)
    {
      v14 = [v14 count];
    }

    v15 = (*(v9 + 24) - *(v9 + 16)) >> 4;
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
    *(buf.__r_.__value_.__r.__words + 4) = v13;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v14;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
    v55 = v15;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "CLRS,reconstructRoute,intervalEpochs,locationSamples,size,%{public}zu,odometrySamples,size,%{public}zu,altitudeSamples,size,%{public}zu", &buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v29 = qword_1025D4698;
    if (*v9)
    {
      v30 = [*v9 count];
    }

    else
    {
      v30 = 0;
    }

    v38 = *(v9 + 8);
    if (v38)
    {
      v38 = [v38 count];
    }

    v39 = (*(v9 + 24) - *(v9 + 16)) >> 4;
    *v49 = 134349568;
    *&v49[4] = v30;
    v50 = 2050;
    v51 = v38;
    v52 = 2050;
    v53 = v39;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v29, 0, "CLRS,reconstructRoute,intervalEpochs,locationSamples,size,%{public}zu,odometrySamples,size,%{public}zu,altitudeSamples,size,%{public}zu", v49, 32);
    v41 = v40;
    sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::reconstructInterval(ReconstructionIntervalData &, size_t, std::vector<swan::RouteSmootherEpoch> &)", "%s\n", v40);
    if (v41 != &buf)
    {
      free(v41);
    }
  }

  std::to_string(&buf, a3);
  if ((v46 & 0x80u) == 0)
  {
    v16 = v45;
  }

  else
  {
    v16 = v45[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v17 = v46;
  }

  else
  {
    v17 = v45[1];
  }

  v18 = std::string::insert(&buf, 0, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v44 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = sub_1007DE178(a1, __p, a4, v9);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v20)
    {
      goto LABEL_42;
    }

LABEL_36:
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v21 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349056;
      *(buf.__r_.__value_.__r.__words + 4) = a3;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "CLRS,Interval Route Reconstruction before smoothing failed,interval,%{public}zu", &buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193ED1C(&buf);
      *v49 = 134349056;
      *&v49[4] = a3;
      LODWORD(v42) = 12;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,Interval Route Reconstruction before smoothing failed,interval,%{public}zu", v49, v42);
      v37 = v36;
      sub_100152C7C("Generic", 1, 0, 0, "void CLRouteSmoother::reconstructInterval(ReconstructionIntervalData &, size_t, std::vector<swan::RouteSmootherEpoch> &)", "%s\n", v36);
      if (v37 != &buf)
      {
        free(v37);
      }
    }

    sub_1016B1A70(*(a1 + 40), "routesmoother", "autostart_reconstruction_failure", 0);
    goto LABEL_42;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if ((v20 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_42:
  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v22 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*v9 count];
    v24 = 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 4);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
    *(buf.__r_.__value_.__r.__words + 4) = a3;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v23;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
    v55 = v24;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "CLRS,reconstructInterval,success,interval,%{public}zu,inputSize,%{public}zu,outputSize,%{public}zu", &buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193ED1C(&buf);
    v31 = qword_1025D4698;
    v32 = [*v9 count];
    v33 = 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 4);
    *v49 = 134349568;
    *&v49[4] = a3;
    v50 = 2050;
    v51 = v32;
    v52 = 2050;
    v53 = v33;
    LODWORD(v42) = 32;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v31, 0, "CLRS,reconstructInterval,success,interval,%{public}zu,inputSize,%{public}zu,outputSize,%{public}zu", v49, v42);
    v35 = v34;
    sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::reconstructInterval(ReconstructionIntervalData &, size_t, std::vector<swan::RouteSmootherEpoch> &)", "%s\n", v34);
    if (v35 != &buf)
    {
      free(v35);
    }
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

LABEL_49:
  if (v48 < 0)
  {
    operator delete(v47);
  }
}

void sub_1007E1774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E1824(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 4) < a2)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v4 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 4);
      *buf = 134349312;
      v14 = a2;
      v15 = 2050;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLRS,Increasing size of route_epochs_expanded_vector,new size,%{public}zu,original size,%{public}zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v6 = 0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 4);
      v9 = 134349312;
      v10 = a2;
      v11 = 2050;
      v12 = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,Increasing size of route_epochs_expanded_vector,new size,%{public}zu,original size,%{public}zu", &v9, 22);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 2, "auto CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)::(anonymous class)::operator()(std::vector<swan::RouteSmootherEpoch> &, const size_t) const", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    sub_1007E1A28(result, a2);
  }
}

void sub_1007E1A28(void *result, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((result[1] - *result) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1007ED8AC(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 112 * a2;
  }
}

uint64_t sub_1007E1A6C(uint64_t a1)
{
  if (*(a1 + 114240))
  {
    return 1;
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v3 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLRS,CLMM,configureMapMatcher", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193EE64();
  }

  v4 = (a1 + 48);
  isTypeCycling = CLMotionActivity::isTypeCycling();
  if (CLMotionActivity::isTypePedestrian() & 1) != 0 || (isTypeCycling)
  {
    sub_1007EF7EC();
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v5 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *v4;
    *buf = 67240192;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLRS,CLMM,Unsupported activity type,%{public}d", buf, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10193EF50(v4);
    return 0;
  }

  return result;
}

void sub_1007E1DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

uint64_t sub_1007E1DE0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  sub_10018D404(v45);
  v44 = 0;
  v5 = sub_1000081AC();
  v7 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    v39 = _Q0;
    do
    {
      *v50 = 0;
      *&v50[8] = 0;
      *&v50[16] = v39;
      v51 = 0uLL;
      v52 = 0xBFF0000000000000;
      v66 = 0;
      v67 = 0;
      v63 = 0u;
      v64 = 0u;
      v65 = 0;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      memset(v71, 0, 27);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      memset(v62, 0, 30);
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = 0u;
      v76 = 0xBFF0000000000000;
      v75 = 0;
      v13 = *(a1 + 114240);
      v14 = *(a1 + 114248);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 48);
      if (sub_10002807C(*(v7 + 8), *(v7 + 16)))
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v16 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLRS,CLMM,fillCrumb,Null Island", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193ED1C(buf);
          LOWORD(v49[0]) = 0;
          LODWORD(v35) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 2, "CLRS,CLMM,fillCrumb,Null Island", v49, v35);
          v18 = v17;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL fillCrumb(CLMapGeometryPtr, CLGeoLocationShifter &, const swan::RouteSmootherEpoch &, const CLMotionActivity::Type, CLMapCrumb &)", "%s\n", v17);
          goto LABEL_45;
        }
      }

      else if (v13)
      {
        v51 = *(v7 + 8);
        v53 = v51;
        DWORD1(v74) = 1;
        *(&v74 + 1) = 0x4014000000000000;
        HIBYTE(v71[1]) = 0;
        *&v56 = *(v7 + 48);
        *(&v61 + 1) = *(v7 + 56);
        v54 = vextq_s8(*(v7 + 24), *(v7 + 24), 8uLL);
        *&v55 = *(v7 + 40);
        *(&v55 + 1) = *(v7 + 64);
        *&v61 = *(v7 + 72);
        v72 = v51;
        *&v50[16] = *v7;
        *&v50[24] = *&v50[16];
        *&v50[8] = *&v50[16];
        LOBYTE(v71[3]) = 0;
        v62[6] = v15;
        LODWORD(v71[1]) = 2;
        LOWORD(v62[7]) = 0;
        v71[2] = 0xBFF0000000000000;
        v75 = *(v7 + 104);
        if (!sub_1001B4788(*&v51, *(&v51 + 1)))
        {
          goto LABEL_42;
        }

        v48 = *(&v53 + 1);
        *&v49[0] = v53;
        v47 = v54.i64[1];
        v19 = sub_100D8D8D4(&v44, 1, v49, &v48, &v47, 5, *&v53, *(&v53 + 1), *&v54.i64[1]);
        if (v19 == 2)
        {
          *&v53 = v49[0];
          *(&v53 + 1) = v48;
          v54.i64[1] = v47;
          HIBYTE(v71[1]) = 1;
LABEL_42:
          v23 = 1;
          if (!v14)
          {
            goto LABEL_29;
          }

LABEL_28:
          sub_100008080(v14);
          goto LABEL_29;
        }

        if (v19 != 1)
        {
          goto LABEL_42;
        }

        if (qword_1025D45E0 != -1)
        {
          sub_10193F224();
        }

        v20 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "CLRS,CLMM,China shift returned false", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193F24C(buf);
          v46[0] = 0;
          LODWORD(v35) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLRS,CLMM,China shift returned false", v46, v35);
          v18 = v21;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL fillCrumb(CLMapGeometryPtr, CLGeoLocationShifter &, const swan::RouteSmootherEpoch &, const CLMotionActivity::Type, CLMapCrumb &)", "%s\n", v21);
          goto LABEL_45;
        }
      }

      else
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v22 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "CLRS,CLMM,fillCrumb,Null fMapGeometryPtr", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10193ED1C(buf);
          LOWORD(v49[0]) = 0;
          LODWORD(v35) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,CLMM,fillCrumb,Null fMapGeometryPtr", v49, v35);
          v18 = v24;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL fillCrumb(CLMapGeometryPtr, CLGeoLocationShifter &, const swan::RouteSmootherEpoch &, const CLMotionActivity::Type, CLMapCrumb &)", "%s\n", v24);
LABEL_45:
          if (v18 != buf)
          {
            free(v18);
          }
        }
      }

      v23 = 0;
      if (v14)
      {
        goto LABEL_28;
      }

LABEL_29:
      if (v23)
      {
        sub_10000EC00(__p, "aPriori");
        sub_1002B7B0C(v50, __p, -1.0);
        if (v43 < 0)
        {
          operator delete(__p[0]);
        }

        if (sub_10118EF8C(*(a1 + 114232), v50))
        {
          sub_1002BD298(v50, v45);
          if ((v65 & 0x100) == 0)
          {
            *(v7 + 8) = v72;
            *(v7 + 48) = v60;
            *(v7 + 24) = v54.i64[1];
            *(v7 + 56) = *(&v61 + 1);
          }
        }

        sub_10000EC00(v40, "aPosteriori");
        sub_1002B7B0C(v50, v40, -1.0);
        if (v41 < 0)
        {
          operator delete(v40[0]);
        }
      }

      if (SHIBYTE(v58) < 0)
      {
        operator delete(*(&v57 + 1));
      }

      v7 += 112;
    }

    while (v7 != v6);
  }

  v25 = 0.0;
  if (v5 >= 0.0)
  {
    v25 = vabdd_f64(sub_1000081AC(), v5) * 1000.0;
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v26 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v27 = a2;
    if (*(a2 + 23) < 0)
    {
      v27 = *a2;
    }

    v28 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
    v29 = *(a1 + 48);
    *buf = 136447234;
    v78 = v27;
    v79 = 2050;
    v80 = v28;
    v81 = 2050;
    v82 = v25;
    v83 = 1026;
    v84 = v29;
    v85 = 2050;
    v86 = a4;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "CLRS,CLMM,type,%{public}s,dataCount,%{public}zu,elapsedTime,%{public}.0lf,msec,workout,%{public}u,batchType,%{public}lu", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v31 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
    v32 = *(a1 + 48);
    *v50 = 136447234;
    *&v50[4] = a2;
    *&v50[12] = 2050;
    *&v50[14] = v31;
    *&v50[22] = 2050;
    *&v50[24] = v25;
    LOWORD(v51) = 1026;
    *(&v51 + 2) = v32;
    WORD3(v51) = 2050;
    *(&v51 + 1) = a4;
    LODWORD(v35) = 48;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,CLMM,type,%{public}s,dataCount,%{public}zu,elapsedTime,%{public}.0lf,msec,workout,%{public}u,batchType,%{public}lu", v50, v35);
    v34 = v33;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::mapMatchPoints(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v33);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  sub_100D8D8D0(&v44);
  return 1;
}

uint64_t sub_1007E269C(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t a4)
{
  v7 = a1 + 110592;
  v8 = sub_1000081AC();
  if (*(v7 + 3664) == 1)
  {
    sub_1007DB818(a3, a2);
  }

  v94 = 0;
  v95 = 0;
  v96 = 0;
  __p = 0;
  __dst = 0;
  v93 = 0;
  sub_1007E4638(&__p, 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4));
  sub_1007E4638(&v94, 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4));
  v88 = a3;
  v95 = v94;
  if (*(v7 + 3568) == 1)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v9 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "Non-Final";
      if (!a4)
      {
        v10 = "Final";
      }

      v11 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
      *buf = 136446466;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLRS,Continuing smoothing,batchType,%{public}s,size,%lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193ED1C(buf);
      v12 = "Non-Final";
      if (!a4)
      {
        v12 = "Final";
      }

      v13 = (a3[1] - *a3) >> 4;
      v97 = 136446466;
      *v98 = v12;
      *&v98[8] = 2048;
      *&v98[10] = 0x6DB6DB6DB6DB6DB7 * v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,Continuing smoothing,batchType,%{public}s,size,%lu", &v97, 22);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v14);
LABEL_118:
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v16 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "Non-Final";
      if (!a4)
      {
        v17 = "Final";
      }

      v18 = 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4);
      *buf = 136446466;
      *&buf[4] = v17;
      *&buf[12] = 2048;
      *&buf[14] = v18;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "CLRS,Starting smoothing,batchType,%{public}s,size,%lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193ED1C(buf);
      v71 = "Non-Final";
      if (!a4)
      {
        v71 = "Final";
      }

      v72 = (a3[1] - *a3) >> 4;
      v97 = 136446466;
      *v98 = v71;
      *&v98[8] = 2048;
      *&v98[10] = 0x6DB6DB6DB6DB6DB7 * v72;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,Starting smoothing,batchType,%{public}s,size,%lu", &v97, 22);
      v15 = v73;
      sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v73);
      goto LABEL_118;
    }
  }

  v19 = *a3;
  v20 = a3[1];
  if (*a3 != v20)
  {
    v21 = (v7 + 3456);
    v22 = *(v7 + 3568);
    do
    {
      if (v22)
      {
        v23 = vabdd_f64(*v19, *v21);
        if (v23 > 20.0)
        {
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v24 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *v19;
            *buf = 134349312;
            *&buf[4] = v25;
            *&buf[12] = 2050;
            *&buf[14] = v23;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "CLRS,gap found,time,%{public}.1lf,gap duration,%{public}.1lf", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10193ED1C(buf);
            v51 = *v19;
            v97 = 134349312;
            *v98 = v51;
            *&v98[8] = 2050;
            *&v98[10] = v23;
            LODWORD(v86) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 0, "CLRS,gap found,time,%{public}.1lf,gap duration,%{public}.1lf", &v97, v86);
            v53 = v52;
            sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v52);
            if (v53 != buf)
            {
              free(v53);
            }
          }

          swan::RouteSmoother::Finish();
          sub_1007EDAC8(&__p, __dst, v94, v95, 0x6DB6DB6DB6DB6DB7 * ((v95 - v94) >> 4));
          v95 = v94;
          sub_1007E3E24(a1);
        }
      }

      else
      {
        *(v7 + 3616) = sub_1000081AC();
        sub_1007E3E24(a1);
      }

      v89 = sub_1007E44A4((a1 + 48));
      *buf = &v89;
      v26 = sub_1007EE8E0(a1 + 113944, &v89, &unk_101C66300, buf);
      if (*(v7 + 3677))
      {
        v27 = (a1 + 114270);
      }

      else
      {
        v27 = (v19 + 13);
      }

      *buf = v27;
      v90 = sub_1007EF200((v26 + 5), v27, &unk_101C66300, buf)[5];
      v28 = *(a1 + 48);
      if (v28 == 6 || v28 == 519150 || v28 == 19150)
      {
        v29 = *(v19 + 8);
        v30 = *&v29 <= -1 || ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
        v31 = v30 && (*&v29 - 1) >= 0xFFFFFFFFFFFFFLL;
        if (!v31 || (*&v29 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v33 = v19[9];
          v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL) == 0;
          if ((v33 - 1) < 0xFFFFFFFFFFFFFLL)
          {
            v34 = 1;
          }

          v36 = ((v33 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v33 >= 0 || v34;
          if (v29 > 6.7056 && v36 && v29 - *(v19 + 9) > 5.7056 && *(v19 + 104) != 4)
          {
            if (qword_1025D4690 != -1)
            {
              sub_10193EC08();
            }

            v37 = qword_1025D4698;
            if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
            {
              v38 = *(v19 + 8);
              v39 = *(v19 + 9);
              *buf = 134350080;
              *&buf[4] = v38;
              *&buf[12] = 2050;
              *&buf[14] = v39;
              *&buf[22] = 2050;
              *&buf[24] = v38 - v39;
              *&buf[32] = 2050;
              *&buf[34] = 0x4024000000000000;
              *&buf[42] = 2050;
              *&buf[44] = 0x4034000000000000;
              _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "CLRS,HIGH_SPEED_TRIGGERED,speed,%{public}.2f,speedUnc,%{public}.2f,speed-speedUnc,%{public}.2f,processNoise,%{public}.2f,courseUnc,%{public}.2f", buf, 0x34u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10193ED1C(buf);
              v54 = *(v19 + 8);
              v55 = *(v19 + 9);
              v97 = 134350080;
              *v98 = v54;
              *&v98[8] = 2050;
              *&v98[10] = v55;
              *&v98[18] = 2050;
              *&v98[20] = v54 - v55;
              *&v98[28] = 2050;
              *&v98[30] = 0x4024000000000000;
              *&v98[38] = 2050;
              *&v98[40] = 0x4034000000000000;
              LODWORD(v86) = 52;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 2, "CLRS,HIGH_SPEED_TRIGGERED,speed,%{public}.2f,speedUnc,%{public}.2f,speed-speedUnc,%{public}.2f,processNoise,%{public}.2f,courseUnc,%{public}.2f", &v97, v86);
              v57 = v56;
              sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v56);
              if (v57 != buf)
              {
                free(v57);
              }
            }

            v90 = 0x4024000000000000;
            v19[7] = 0x4034000000000000;
          }
        }
      }

      v40 = swan::RouteSmoother::Update();
      if (*(v7 + 3568) == 1)
      {
        v41 = *v19;
        v42 = *(v19 + 2);
        *(v7 + 3472) = *(v19 + 1);
        *(v7 + 3488) = v42;
        *v21 = v41;
        v43 = *(v19 + 3);
        v44 = *(v19 + 4);
        v45 = *(v19 + 5);
        *(v7 + 3545) = *(v19 + 89);
        *(v7 + 3520) = v44;
        *(v7 + 3536) = v45;
        *(v7 + 3504) = v43;
        if (v40)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v46 = *v19;
        v47 = *(v19 + 2);
        *(v7 + 3472) = *(v19 + 1);
        *(v7 + 3488) = v47;
        *v21 = v46;
        v48 = *(v19 + 3);
        v49 = *(v19 + 4);
        v50 = *(v19 + 6);
        *(v7 + 3536) = *(v19 + 5);
        *(v7 + 3552) = v50;
        *(v7 + 3504) = v48;
        *(v7 + 3520) = v49;
        *(v7 + 3568) = 1;
        if (v40)
        {
LABEL_83:
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v60 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_ERROR, "CLRS,smoother is unhealthy", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10193ED1C(buf);
            LOWORD(v97) = 0;
            LODWORD(v86) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,smoother is unhealthy", &v97, v86);
            v75 = v74;
            sub_100152C7C("Generic", 1, 0, 0, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v74);
            if (v75 != buf)
            {
              goto LABEL_130;
            }
          }

          goto LABEL_95;
        }
      }

      v19 += 14;
      v22 = 1;
    }

    while (v19 != v20);
  }

  if (a4 || !swan::RouteSmoother::Finish())
  {
    sub_1007EDAC8(&__p, __dst, v94, v95, 0x6DB6DB6DB6DB6DB7 * ((v95 - v94) >> 4));
    v95 = v94;
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v58 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v7 + 3636) == 1)
      {
        v59 = *(v7 + 3632);
      }

      else
      {
        v59 = -1;
      }

      v64 = *v88;
      v63 = v88[1];
      v65 = 0.0;
      v67 = __p;
      v66 = __dst;
      if (v8 >= 0.0)
      {
        v65 = vabdd_f64(sub_1000081AC(), v8) * 1000.0;
      }

      *buf = 67241218;
      *&buf[4] = v59;
      *&buf[8] = 2050;
      *&buf[10] = 0x6DB6DB6DB6DB6DB7 * ((v63 - v64) >> 4);
      v68 = "Final";
      *&buf[18] = 2050;
      *&buf[20] = 0x6DB6DB6DB6DB6DB7 * ((v66 - v67) >> 4);
      if (a4)
      {
        v68 = "Non-Final";
      }

      *&buf[28] = 2082;
      *&buf[30] = v68;
      *&buf[38] = 2050;
      *&buf[40] = v65;
      _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "CLRS,runSmoother,completed smoothing batch number,%{public}d,dataCountIn,%{public}zu,dataCountOut,%{public}zu,batchType,%{public}s,batchElapsedTime,%{public}.0lf,msec", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      if (*(v7 + 3636) == 1)
      {
        v70 = *(v7 + 3632);
      }

      else
      {
        v70 = -1;
      }

      v76 = qword_1025D4698;
      v78 = *v88;
      v77 = v88[1];
      v79 = 0.0;
      v81 = __p;
      v80 = __dst;
      if (v8 >= 0.0)
      {
        v79 = vabdd_f64(sub_1000081AC(), v8) * 1000.0;
      }

      v97 = 67241218;
      *v98 = v70;
      *&v98[4] = 2050;
      *&v98[6] = 0x6DB6DB6DB6DB6DB7 * ((v77 - v78) >> 4);
      v82 = "Final";
      *&v98[14] = 2050;
      *&v98[16] = 0x6DB6DB6DB6DB6DB7 * ((v80 - v81) >> 4);
      if (a4)
      {
        v82 = "Non-Final";
      }

      *&v98[24] = 2082;
      *&v98[26] = v82;
      *&v98[34] = 2050;
      *&v98[36] = v79;
      LODWORD(v86) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v76, 0, "CLRS,runSmoother,completed smoothing batch number,%{public}d,dataCountIn,%{public}zu,dataCountOut,%{public}zu,batchType,%{public}s,batchElapsedTime,%{public}.0lf,msec", &v97, v86);
      v84 = v83;
      sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v83);
      if (v84 != buf)
      {
        free(v84);
      }
    }

    if (&__p != v88)
    {
      sub_1007EDDB0(v88, __p, __dst, 0x6DB6DB6DB6DB6DB7 * ((__dst - __p) >> 4));
    }

    v62 = 0;
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v61 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_ERROR, "CLRS,smoother is unhealthy,could not finish", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193ED1C(buf);
      LOWORD(v97) = 0;
      LODWORD(v86) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,smoother is unhealthy,could not finish", &v97, v86);
      v75 = v85;
      sub_100152C7C("Generic", 1, 0, 0, "CLSmootherErrorCode CLRouteSmoother::runSmoother(std::string, std::vector<swan::RouteSmootherEpoch> &, const CLSmootherBatchType)", "%s\n", v85);
      if (v75 != buf)
      {
LABEL_130:
        free(v75);
      }
    }

LABEL_95:
    sub_1016B1A70(*(a1 + 40), "routesmoother", "smoother_failure", 0);
    v62 = 3;
  }

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  return v62;
}

void sub_1007E35AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_1007E3624(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = @"fWorkoutActivity";
  v10[0] = [NSNumber numberWithUnsignedInt:*(v2 + 48)];
  v9[1] = @"outputDataCount";
  v10[1] = [NSNumber numberWithUnsignedLong:0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 4)];
  v9[2] = @"processingTimeMsec";
  v10[2] = [NSNumber numberWithInt:*(a1 + 48)];
  v9[3] = @"numEpochsInBatch";
  v10[3] = [NSNumber numberWithUnsignedLong:*(a1 + 56)];
  v9[4] = @"smootherErrorCode";
  v10[4] = [NSNumber numberWithLong:*(a1 + 64)];
  v9[5] = @"fShouldReconstructEntireRoute";
  v10[5] = [NSNumber numberWithBool:*(v2 + 53)];
  v9[6] = @"fNetworkAccessAllowed";
  v10[6] = [NSNumber numberWithBool:*(v2 + 54)];
  v9[7] = @"numReconstructionIntervals";
  v10[7] = [NSNumber numberWithUnsignedLong:0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - *(v2 + 56)) >> 3)];
  v9[8] = @"numBackgroundIOSamplesForFirstReconstructionInterval";
  v3 = *(v2 + 56);
  if ((0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - v3) >> 3)) < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(v3 + 8) count];
  }

  v10[8] = [NSNumber numberWithUnsignedInteger:v4];
  v9[9] = @"numLocationSamplesForFirstReconstructionInterval";
  v5 = *(v2 + 56);
  if ((0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - v5) >> 3)) < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*v5 count];
  }

  v10[9] = [NSNumber numberWithUnsignedInteger:v6];
  v9[10] = @"batchNumber";
  if (*(v2 + 114228) == 1)
  {
    v7 = *(v2 + 114224);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v10[10] = [NSNumber numberWithInt:v7];
  v9[11] = @"batchType";
  v10[11] = [NSNumber numberWithInt:*(a1 + 72)];
  v9[12] = @"isWatch";
  v10[12] = [NSNumber numberWithBool:*(v2 + 52)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:13];
}

void sub_1007E38BC(char **a1, size_t *a2)
{
  a2[1] = *a2;
  sub_1007E7354(a2, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4));
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = *(v4 + 1);
      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      v10 = *(v4 + 8);
      v9 = *(v4 + 9);
      v11 = *(v4 + 6);
      v29 = *(v4 + 7);
      v30 = *v4;
      v12 = *(v4 + 4);
      v13 = *(v4 + 5);
      v14 = v4[104];
      if (v14 < 7 && ((0x5Fu >> v14) & 1) != 0)
      {
        v15 = dword_101CA7A60[v14];
      }

      else
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v16 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "CLRS,Unhandled signal environment type", buf, 2u);
        }

        v15 = 0;
        if (sub_10000A100(121, 0))
        {
          sub_10193F290(&v31, v32);
          v15 = 0;
        }
      }

      v17 = a2[1];
      v18 = a2[2];
      if (v17 >= v18)
      {
        v20 = 0x6F96F96F96F96F97 * ((v17 - *a2) >> 2);
        v21 = v20 + 1;
        if ((v20 + 1) > 0x1A41A41A41A41A4)
        {
          sub_10028C64C();
        }

        v22 = 0x6F96F96F96F96F97 * ((v18 - *a2) >> 2);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0xD20D20D20D20D2)
        {
          v23 = 0x1A41A41A41A41A4;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          sub_100238948(a2, v23);
        }

        v24 = 156 * v20;
        *(v24 + 4) = v6;
        *(v24 + 12) = v8;
        *(v24 + 20) = v7;
        *(v24 + 28) = v12;
        *(v24 + 36) = v13;
        *(v24 + 44) = v10;
        *(v24 + 52) = v9;
        *(v24 + 60) = v11;
        *(v24 + 68) = v29;
        *(v24 + 140) = v15;
        v19 = 156 * v20 + 156;
        v25 = *a2;
        v26 = a2[1] - *a2;
        *(v24 + 76) = v30;
        v27 = v24 - v26;
        memcpy((v24 - v26), v25, v26);
        v28 = *a2;
        *a2 = v27;
        a2[1] = v19;
        a2[2] = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *(v17 + 4) = v6;
        *(v17 + 12) = v8;
        *(v17 + 20) = v7;
        *(v17 + 28) = v12;
        *(v17 + 36) = v13;
        *(v17 + 44) = v10;
        *(v17 + 52) = v9;
        *(v17 + 60) = v11;
        *(v17 + 68) = v29;
        *(v17 + 76) = v30;
        v19 = v17 + 156;
        *(v17 + 140) = v15;
      }

      a2[1] = v19;
      v4 += 112;
    }

    while (v4 != v5);
  }
}

NSDictionary *sub_1007E3B6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = @"fWorkoutActivity";
  v10[0] = [NSNumber numberWithUnsignedInt:*(v2 + 48)];
  v9[1] = @"outputDataCount";
  v10[1] = [NSNumber numberWithUnsignedLong:0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 4)];
  v9[2] = @"processingTimeBatchMsec";
  v10[2] = [NSNumber numberWithInt:*(a1 + 48)];
  v9[3] = @"processingTimeCumulativeMsec";
  v10[3] = [NSNumber numberWithInt:*(a1 + 56)];
  v9[4] = @"numEpochsInBatch";
  v10[4] = [NSNumber numberWithUnsignedLong:*(a1 + 64)];
  v9[5] = @"smootherErrorCode";
  v10[5] = [NSNumber numberWithLong:*(a1 + 72)];
  v9[6] = @"fShouldReconstructEntireRoute";
  v10[6] = [NSNumber numberWithBool:*(v2 + 53)];
  v9[7] = @"fNetworkAccessAllowed";
  v10[7] = [NSNumber numberWithBool:*(v2 + 54)];
  v9[8] = @"numReconstructionIntervals";
  v10[8] = [NSNumber numberWithUnsignedLong:0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - *(v2 + 56)) >> 3)];
  v9[9] = @"numBackgroundIOSamplesForFirstReconstructionInterval";
  v3 = *(v2 + 56);
  if ((0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - v3) >> 3)) < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(v3 + 8) count];
  }

  v10[9] = [NSNumber numberWithUnsignedInteger:v4];
  v9[10] = @"numLocationSamplesForFirstReconstructionInterval";
  v5 = *(v2 + 56);
  if ((0x6DB6DB6DB6DB6DB7 * ((*(v2 + 64) - v5) >> 3)) < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*v5 count];
  }

  v10[10] = [NSNumber numberWithUnsignedInteger:v6];
  v9[11] = @"batchNumber";
  if (*(v2 + 114228) == 1)
  {
    v7 = *(v2 + 114224);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v10[11] = [NSNumber numberWithInt:v7];
  v9[12] = @"batchType";
  v10[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v9[13] = @"isWatch";
  v10[13] = [NSNumber numberWithBool:*(v2 + 52)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:14];
}

uint64_t sub_1007E3E24(uint64_t a1)
{
  v33 = xmmword_101CA7480;
  v34 = unk_101CA7490;
  v35 = xmmword_101CA74A0;
  *buf = xmmword_101CA7440;
  v30 = unk_101CA7450;
  v31 = xmmword_101CA7460;
  v32 = unk_101CA7470;
  sub_1007EEC80(&v27, buf, 7);
  v33 = xmmword_101CA74F0;
  v34 = unk_101CA7500;
  v35 = xmmword_101CA7510;
  *buf = xmmword_101CA74B0;
  v30 = unk_101CA74C0;
  v31 = xmmword_101CA74D0;
  v32 = unk_101CA74E0;
  sub_1007EEC80(&v25, buf, 7);
  v33 = xmmword_101CA7560;
  v34 = unk_101CA7570;
  v35 = xmmword_101CA7580;
  *buf = xmmword_101CA7520;
  v30 = unk_101CA7530;
  v31 = xmmword_101CA7540;
  v32 = unk_101CA7550;
  sub_1007EEC80(&v23, buf, 7);
  v33 = xmmword_101CA75D0;
  v34 = unk_101CA75E0;
  v35 = xmmword_101CA75F0;
  *buf = xmmword_101CA7590;
  v30 = unk_101CA75A0;
  v31 = xmmword_101CA75B0;
  v32 = unk_101CA75C0;
  sub_1007EEC80(&v21, buf, 7);
  v18[0] = 1;
  *buf = v18;
  v2 = sub_1007EE8E0(a1 + 113944, v18, &unk_101C66300, buf) + 5;
  if (v2 != &v27)
  {
    sub_1007EED00(v2, v27, &v28);
  }

  v18[0] = 2;
  *buf = v18;
  v3 = sub_1007EE8E0(a1 + 113944, v18, &unk_101C66300, buf) + 5;
  if (v3 != &v25)
  {
    sub_1007EED00(v3, v25, &v26);
  }

  v18[0] = 3;
  *buf = v18;
  v4 = sub_1007EE8E0(a1 + 113944, v18, &unk_101C66300, buf) + 5;
  if (v4 != &v23)
  {
    sub_1007EED00(v4, v23, &v24);
  }

  v18[0] = 6;
  *buf = v18;
  v5 = sub_1007EE8E0(a1 + 113944, v18, &unk_101C66300, buf) + 5;
  if (v5 != &v21)
  {
    sub_1007EED00(v5, v21, &v22);
  }

  *buf = xmmword_101CA775C;
  v30 = unk_101CA776C;
  v31 = xmmword_101CA777C;
  *&v32 = 0xA00000006;
  sub_1007EE9C0(v20, buf, 7);
  *buf = xmmword_101CA7600;
  v30 = unk_101CA7610;
  v31 = xmmword_101CA7620;
  *&v32 = 0xA00000006;
  sub_1007EE9C0(v18, buf, 7);
  *buf = xmmword_101CA7600;
  v30 = unk_101CA7610;
  v31 = xmmword_101CA7620;
  *&v32 = 0xA00000006;
  sub_1007EE9C0(v17, buf, 7);
  *buf = xmmword_101CA7638;
  v30 = unk_101CA7648;
  v31 = xmmword_101CA7658;
  *&v32 = 0x3200000006;
  sub_1007EE9C0(v16, buf, 7);
  *buf = xmmword_101CA7670;
  v30 = unk_101CA7680;
  v31 = xmmword_101CA7690;
  *&v32 = 0xA00000006;
  sub_1007EE9C0(v15, buf, 7);
  v6 = sub_1007E44A4((a1 + 48));
  v7 = (a1 + 113896);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v8 = v18;
      if (v7 == v18)
      {
        goto LABEL_25;
      }

      v9 = v18;
      goto LABEL_24;
    }

    if (v6 == 2)
    {
      v8 = v17;
      if (v7 == v17)
      {
        goto LABEL_25;
      }

      v9 = v17;
      goto LABEL_24;
    }

LABEL_18:
    v8 = v20;
    if (v7 == v20)
    {
      goto LABEL_25;
    }

    v9 = v20;
    goto LABEL_24;
  }

  if (v6 != 3)
  {
    if (v6 == 6)
    {
      v8 = v15;
      if (v7 == v15)
      {
        goto LABEL_25;
      }

      v9 = v15;
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v8 = v16;
  if (v7 == v16)
  {
    goto LABEL_25;
  }

  v9 = v16;
LABEL_24:
  sub_1007EEF80(v7, *v8, v9 + 1);
LABEL_25:
  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v10 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "CLRS,Configure or reconfigure RouteSmoother", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193ED1C(buf);
    v14 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 1, "CLRS,Configure or reconfigure RouteSmoother", &v14, 2);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::configureSmoother()", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  swan::RouteSmoother::Reset((a1 + 80));
  swan::RouteSmoother::Configure();
  sub_1003C93BC(v15, v15[1]);
  sub_1003C93BC(v16, v16[1]);
  sub_1003C93BC(v17, v17[1]);
  sub_1003C93BC(v18, v19);
  sub_1003C93BC(v20, v20[1]);
  sub_1003C93BC(&v21, v22);
  sub_1003C93BC(&v23, v24);
  sub_1003C93BC(&v25, v26);
  sub_1003C93BC(&v27, v28);
  return 1;
}

void sub_1007E43D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43)
{
  sub_1003C93BC(&a18, a19);
  sub_1003C93BC(&a21, a22);
  sub_1003C93BC(&a24, a25);
  sub_1003C93BC(&a27, a28);
  sub_1003C93BC(&a30, a31);
  sub_1003C93BC(&a33, a34);
  sub_1003C93BC(&a36, a37);
  sub_1003C93BC(&a39, a40);
  sub_1003C93BC(&a42, a43);
  _Unwind_Resume(a1);
}

uint64_t sub_1007E44A4(int *a1)
{
  v2 = *a1;
  result = 1;
  if (v2 <= 15254)
  {
    if (v2 > 7)
    {
      if (v2 == 8)
      {
        return 2;
      }

      if (v2 == 62)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == 4)
      {
        return result;
      }

      if (v2 == 6)
      {
        return 3;
      }
    }
  }

  else if (v2 <= 19149)
  {
    if (v2 == 15255)
    {
      return result;
    }

    if (v2 == 18240)
    {
      return 4;
    }
  }

  else
  {
    switch(v2)
    {
      case 19150:
        return 6;
      case 90603:
        return 7;
      case 519150:
        return 6;
    }
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v4 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLRS,Unhandled CLMotionActivity workout type,%{public}d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10193F3AC(a1);
    return 0;
  }

  return result;
}

void sub_1007E4638(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      sub_1007ED850(a1, a2);
    }

    sub_10028C64C();
  }
}

id sub_1007E4704(void *a1, void *a2, size_t *a3, int a4)
{
  HIDWORD(v69) = a4;
  v6 = a1;
  a3[1] = *a3;
  sub_1007E4638(a3, [a1 count]);
  v76 = 0;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v6);
  v9 = result;
  if (result)
  {
    v10 = MEMORY[0];
    *&v8 = 134219008;
    v70 = v8;
    __asm { FMOV            V0.2D, #-1.0 }

    v73 = _Q0;
    v72 = v6;
    do
    {
      v16 = 0;
      do
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v6);
        }

        v17 = *(8 * v16);
        if (([v17 type] == 1 || objc_msgSend(v17, "type") == 9 || objc_msgSend(v17, "type") == 3 || objc_msgSend(v17, "type") == 11 || HIDWORD(v69) && !objc_msgSend(v17, "type")) && (objc_msgSend(v17, "horizontalAccuracy"), v18 <= 50.0))
        {
          [objc_msgSend(v17 "timestamp")];
          v28 = v27;
          [v17 coordinate];
          v75 = v29;
          [v17 coordinate];
          v74 = v30;
          [v17 altitude];
          v32 = v31;
          [v17 speed];
          v34 = v33;
          [v17 course];
          v36 = v35;
          [v17 courseAccuracy];
          v38 = v37;
          [v17 verticalAccuracy];
          v39 = 0x40B3880000000000;
          if (v40 > 0.0)
          {
            [v17 verticalAccuracy];
            v39 = v41;
          }

          [v17 horizontalAccuracy];
          v43 = v42;
          [v17 speedAccuracy];
          v45 = v44;
          *buf = [v17 signalEnvironmentType];
          v46 = sub_1007E727C(buf);
          if (sub_1007E5E50(a2, &v76, v28))
          {
            if (qword_1025D4690 != -1)
            {
              sub_10193EC08();
            }

            v47 = qword_1025D4698;
            if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
            {
              v48 = *(*a2 + 16 * v76);
              v50 = *(v48 + 8);
              v49 = *(v48 + 16);
              *buf = v70;
              *&buf[4] = v28;
              *&buf[12] = 2048;
              *&buf[14] = v32;
              v86 = 2048;
              v87 = v50;
              v88 = 2048;
              v89 = v39;
              v90 = 2048;
              v91 = v49;
              _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "CLRS,reconstructInterval,timestamp,%.3f,oldAltitude,%.2f,newAltitude,%.2f,oldUncertainty,%.2f,newUncertainty,%.2f", buf, 0x34u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4690 != -1)
              {
                sub_10193EC08();
              }

              v51 = v76;
              v64 = *(*a2 + 16 * v76);
              v66 = *(v64 + 8);
              v65 = *(v64 + 16);
              v77 = v70;
              *v78 = v28;
              *&v78[8] = 2048;
              *&v78[10] = v32;
              v79 = 2048;
              v80 = v66;
              v81 = 2048;
              v82 = v39;
              v83 = 2048;
              v84 = v65;
              LODWORD(v69) = 52;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 2, "CLRS,reconstructInterval,timestamp,%.3f,oldAltitude,%.2f,newAltitude,%.2f,oldUncertainty,%.2f,newUncertainty,%.2f", COERCE_DOUBLE(&v77), v69, *&v70, *(&v70 + 1), v71);
              v68 = v67;
              sub_100152C7C("Generic", 1, 0, 2, "void ConvertCLLocationArrayToRouteSmootherEpochVector(NSArray<CLLocation *> *, std::vector<AltitudeSamplePtr> &, std::vector<swan::RouteSmootherEpoch> &, BOOL)", "%s\n", v67);
              if (v68 != buf)
              {
                free(v68);
              }
            }

            else
            {
              v51 = v76;
            }

            v52 = *(*a2 + 16 * v51);
            v32 = *(v52 + 8);
            v39 = *(v52 + 16);
          }

          v53 = a3[1];
          v54 = a3[2];
          if (v53 >= v54)
          {
            v56 = 0x6DB6DB6DB6DB6DB7 * ((v53 - *a3) >> 4);
            v57 = v56 + 1;
            if ((v56 + 1) > 0x249249249249249)
            {
              sub_10028C64C();
            }

            v58 = 0x6DB6DB6DB6DB6DB7 * ((v54 - *a3) >> 4);
            if (2 * v58 > v57)
            {
              v57 = 2 * v58;
            }

            if (v58 >= 0x124924924924924)
            {
              v59 = 0x249249249249249;
            }

            else
            {
              v59 = v57;
            }

            if (v59)
            {
              sub_1007ED850(a3, v59);
            }

            v60 = 112 * v56;
            *v60 = v28;
            *(v60 + 8) = v75;
            *(v60 + 16) = v74;
            *(v60 + 24) = v43;
            *(v60 + 32) = v32;
            *(v60 + 40) = v39;
            *(v60 + 48) = v36;
            *(v60 + 56) = v38;
            *(v60 + 64) = v34;
            *(v60 + 72) = v45;
            *(v60 + 80) = v73;
            *(v60 + 96) = 0xBFF0000000000000;
            *(v60 + 104) = v46;
            *(v60 + 105) = *buf;
            *(v60 + 108) = *&buf[3];
            v55 = 112 * v56 + 112;
            v61 = a3[1] - *a3;
            v62 = 112 * v56 - v61;
            memcpy((v60 - v61), *a3, v61);
            v63 = *a3;
            *a3 = v62;
            a3[1] = v55;
            a3[2] = 0;
            if (v63)
            {
              operator delete(v63);
            }

            v6 = v72;
          }

          else
          {
            *v53 = v28;
            *(v53 + 8) = v75;
            *(v53 + 16) = v74;
            *(v53 + 24) = v43;
            *(v53 + 32) = v32;
            *(v53 + 40) = v39;
            *(v53 + 48) = v36;
            *(v53 + 56) = v38;
            *(v53 + 64) = v34;
            *(v53 + 72) = v45;
            *(v53 + 80) = v73;
            *(v53 + 104) = v46;
            *(v53 + 105) = *buf;
            *(v53 + 108) = *&buf[3];
            v55 = v53 + 112;
            *(v53 + 96) = 0xBFF0000000000000;
          }

          a3[1] = v55;
        }

        else
        {
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v19 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v17 type];
            [v17 horizontalAccuracy];
            *buf = 67109376;
            *&buf[4] = v20;
            *&buf[8] = 2048;
            *&buf[10] = v21;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "CLRS,reconstructInterval,unhandled location,type,%d,unc,%.1lf", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4690 != -1)
            {
              sub_10193EC08();
            }

            v22 = qword_1025D4698;
            v23 = [v17 type];
            [v17 horizontalAccuracy];
            v77 = 67109376;
            *v78 = v23;
            *&v78[4] = 2048;
            *&v78[6] = v24;
            LODWORD(v69) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v22, 0, "CLRS,reconstructInterval,unhandled location,type,%d,unc,%.1lf", &v77, v69);
            v26 = v25;
            sub_100152C7C("Generic", 1, 0, 2, "void ConvertCLLocationArrayToRouteSmootherEpochVector(NSArray<CLLocation *> *, std::vector<AltitudeSamplePtr> &, std::vector<swan::RouteSmootherEpoch> &, BOOL)", "%s\n", v25);
            if (v26 != buf)
            {
              free(v26);
            }
          }
        }

        v16 = v16 + 1;
      }

      while (v9 != v16);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v6);
      v9 = result;
    }

    while (result);
  }

  return result;
}

void sub_1007E4E10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v5 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (*(a2 + 24) - *(a2 + 16)) >> 4;
    buf = 134217984;
    buf_4 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLRS,interpolateRouteAltitudes,altitudeSamples,count,%lu", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193F4A0(a2);
  }

  sub_1004C9BF4(a3);
  sub_10028FE90(a3, [*a2 count]);
  if (*(a2 + 24) - *(a2 + 16) >= 0x11uLL && [*a2 count])
  {
    if ([*a2 count])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = [*a2 objectAtIndexedSubscript:v7];
        v10 = v8;
        v11 = *(a2 + 16);
        if (v8 < ((*(a2 + 24) - v11) >> 4))
        {
          v12 = v9;
          v13 = 16 * v8;
          do
          {
            v14 = **(v11 + v13 - 16);
            [objc_msgSend(v12 "timestamp")];
            if (v14 > v15)
            {
              break;
            }

            v16 = **(*(a2 + 16) + v13 - 16);
            [objc_msgSend(v12 "timestamp")];
            if (v16 >= v17)
            {
              v11 = *(a2 + 16);
            }

            else
            {
              [objc_msgSend(v12 "timestamp")];
              v11 = *(a2 + 16);
              if (v18 < **(v11 + v13))
              {
                [objc_msgSend(v12 "timestamp")];
                operator new();
              }
            }

            ++v10;
            v13 += 16;
          }

          while (v10 < (*(a2 + 24) - v11) >> 4);
          v8 = v10;
        }

        ++v7;
      }

      while ([*a2 count] > v7);
    }
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v19 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a2 + 16);
      v20 = *(a2 + 24);
      v22 = [*a2 count];
      buf = 134218240;
      buf_4 = (v20 - v21) >> 4;
      v35 = 2048;
      v36 = v22;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "CLRS,interpolateRouteAltitudes,not enough altitudes or locations,altitudeSamples.count,%lu,locationEpochs.size,%lu", &buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v23 = qword_1025D4698;
      v25 = *(a2 + 16);
      v24 = *(a2 + 24);
      v26 = [*a2 count];
      v29 = 134218240;
      v30 = (v24 - v25) >> 4;
      v31 = 2048;
      v32 = v26;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v23, 0, "CLRS,interpolateRouteAltitudes,not enough altitudes or locations,altitudeSamples.count,%lu,locationEpochs.size,%lu", &v29, 22);
      v28 = v27;
      sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::interpolateRouteAltitudes(ReconstructionIntervalData &, std::vector<AltitudeSamplePtr> &)", "%s\n", v27);
      if (v28 != &buf)
      {
        free(v28);
      }
    }
  }
}

void sub_1007E52A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E52C8(void *a1, void *a2)
{
  if (a2 && [objc_msgSend(a2 "tripLocations")])
  {
    if (*(*(a1[4] + 8) + 24) == 1)
    {
      if (qword_1025D4690 != -1)
      {
        sub_10193EB08();
      }

      v4 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLRS,output received after timeout", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193F780();
      }
    }

    else
    {
      if (qword_1025D4690 != -1)
      {
        sub_10193EB08();
      }

      v6 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [objc_msgSend(objc_msgSend(a2 "tripSegmentID")];
        [a2 distance_m];
        v9 = v8;
        [a2 distanceUnc_m];
        v11 = v10;
        [objc_msgSend(a2 "startDate")];
        v13 = v12;
        [objc_msgSend(a2 "endDate")];
        *buf = 136447746;
        *&buf[4] = v7;
        v106 = 2050;
        v107 = v9;
        v108 = 2050;
        v109 = v11;
        v110 = 2050;
        v111 = v13;
        v112 = 2050;
        v113 = v14;
        v114 = 1026;
        v115 = [a2 modeOfTransport];
        v116 = 1026;
        v117 = [objc_msgSend(a2 "tripLocations")];
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLRS,Received trip output Data,ID,%{public}s,distance,%{public}.2lf,distance unc,%{public}.2lf,startTime,%{public}.2lf,endTime, %{public}.2lf,modeOfTransport,%{public}d,locations,%{public}d", buf, 0x40u);
      }

      v15 = sub_10000A100(121, 2);
      if (v15)
      {
        sub_10193F5B0(a2);
      }

      v86 = 0;
      v87 = 0;
      v88 = 0;
      sub_1007E4E10(v15, a1[6], &v86);
      if (v86 == v87)
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v16 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
        {
          [objc_msgSend(a2 "startDate")];
          v18 = v17;
          [objc_msgSend(a2 "endDate")];
          *buf = 134218240;
          *&buf[4] = v18;
          v106 = 2048;
          v107 = v19;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "CLRS,empty interpolated altitude vector,startTime,%.3lf,endTime,%.3lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193ED1C(buf);
          v70 = qword_1025D4698;
          [objc_msgSend(a2 "startDate")];
          v72 = v71;
          [objc_msgSend(a2 "endDate")];
          *v99 = 134218240;
          *&v99[4] = v72;
          *&v99[12] = 2048;
          *&v99[14] = v73;
          LODWORD(v76) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v70, 0, "CLRS,empty interpolated altitude vector,startTime,%.3lf,endTime,%.3lf", COERCE_DOUBLE(v99), v76);
          v75 = v74;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)_block_invoke", "%s\n", v74);
          if (v75 != buf)
          {
            free(v75);
          }
        }
      }

      *(a1[7] + 8) = *a1[7];
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v20 = [a2 tripLocations];
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20);
      if (v21)
      {
        v22 = 0;
        v23 = *v83;
        __asm { FMOV            V0.2D, #-1.0 }

        v80 = _Q0;
        *&_Q0 = 134219008;
        v77 = _Q0;
        v79 = v20;
        do
        {
          v29 = 0;
          do
          {
            if (*v83 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v30 = *(*(&v82 + 1) + 8 * v29);
            *v99 = xmmword_101CA73A0;
            *&v99[16] = xmmword_101CA73B0;
            *&v100 = 0x7FF8000000000000;
            v101 = v80;
            v102 = v80;
            v103 = v80;
            *&v104 = 0xBFF0000000000000;
            BYTE8(v104) = 0;
            [v30 altitudeAccuracy];
            v31 = 0x40B3880000000000;
            if (v32 > 0.0)
            {
              [v30 altitudeAccuracy];
              v31 = v33;
            }

            *(&v100 + 1) = v31;
            v34 = a1[6];
            if (*(v34 + 41) == 1)
            {
              v81 = 0;
              v35 = *v99;
              while (v22 < [*v34 count])
              {
                [objc_msgSend(objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "timestamp"), "timeIntervalSinceReferenceDate"}];
                v37 = v35 - v36;
                if (v37 <= 0.5)
                {
                  if (fabs(v37) <= 0.5)
                  {
                    [objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "speed"}];
                    *&v102 = v41;
                    [objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "speedAccuracy"}];
                    *(&v102 + 1) = v42;
                    [objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "courseAccuracy"}];
                    *(&v101 + 1) = v43;
                  }

                  if (sub_1007E5E50(&v86, &v81, v35))
                  {
                    if (qword_1025D4690 != -1)
                    {
                      sub_10193EC08();
                    }

                    v44 = qword_1025D4698;
                    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
                    {
                      v45 = *(v86 + 16 * v81);
                      v47 = *(v45 + 8);
                      v46 = *(v45 + 16);
                      *buf = v77;
                      *&buf[4] = v35;
                      v106 = 2048;
                      v107 = v100;
                      v108 = 2048;
                      v109 = v47;
                      v110 = 2048;
                      v111 = v31;
                      v112 = 2048;
                      v113 = v46;
                      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "CLRS,TripSegmentProcessor,timestamp,%.3f,oldAltitude,%.2f,newAltitude,%.2f,oldUncertainty,%.2f,newUncertainty,%.2f", buf, 0x34u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_10193ED1C(buf);
                      v48 = v81;
                      v64 = *(v86 + 16 * v81);
                      v66 = *(v64 + 8);
                      v65 = *(v64 + 16);
                      v89 = v77;
                      v90 = v35;
                      v91 = 2048;
                      v92 = v100;
                      v93 = 2048;
                      v94 = v66;
                      v95 = 2048;
                      v96 = v31;
                      v97 = 2048;
                      v98 = v65;
                      LODWORD(v76) = 52;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 2, "CLRS,TripSegmentProcessor,timestamp,%.3f,oldAltitude,%.2f,newAltitude,%.2f,oldUncertainty,%.2f,newUncertainty,%.2f", COERCE_DOUBLE(&v89), v76, *&v77, *(&v77 + 1), v78);
                      v68 = v67;
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)_block_invoke", "%s\n", v67);
                      if (v68 != buf)
                      {
                        free(v68);
                      }
                    }

                    else
                    {
                      v48 = v81;
                    }

                    v49 = *(v86 + 16 * v48);
                    *&v100 = *(v49 + 8);
                    v50 = *(v49 + 16);
                  }

                  else
                  {
                    [objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "altitude"}];
                    *&v100 = v51;
                    [objc_msgSend(*a1[6] objectAtIndexedSubscript:{v22), "verticalAccuracy"}];
                  }

                  *(&v100 + 1) = v50;
                  goto LABEL_59;
                }

                ++v22;
                v34 = a1[6];
              }

              if (qword_1025D4690 != -1)
              {
                sub_10193EC08();
              }

              v38 = qword_1025D4698;
              if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_ERROR, "CLRS,Reconstructed location speed, speedUnc, and courseUnc, not overwritten with input data", buf, 2u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_10193ED1C(buf);
                LOWORD(v89) = 0;
                LODWORD(v76) = 2;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,Reconstructed location speed, speedUnc, and courseUnc, not overwritten with input data", &v89, *&v76);
                v40 = v39;
                sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::reconstructRoute(std::string, std::vector<swan::RouteSmootherEpoch> &, ReconstructionIntervalData &)_block_invoke", "%s\n", v39);
                if (v40 != buf)
                {
                  free(v40);
                }
              }
            }

LABEL_59:
            v52 = a1[7];
            v53 = *(v52 + 8);
            v54 = *(v52 + 16);
            if (v53 >= v54)
            {
              v56 = 0x6DB6DB6DB6DB6DB7 * ((v53 - *v52) >> 4);
              v57 = v56 + 1;
              if ((v56 + 1) > 0x249249249249249)
              {
                sub_10028C64C();
              }

              v58 = 0x6DB6DB6DB6DB6DB7 * ((v54 - *v52) >> 4);
              if (2 * v58 > v57)
              {
                v57 = 2 * v58;
              }

              if (v58 >= 0x124924924924924)
              {
                v59 = 0x249249249249249;
              }

              else
              {
                v59 = v57;
              }

              if (v59)
              {
                sub_1007ED850(a1[7], v59);
              }

              v60 = 112 * v56;
              *(v60 + 48) = v101;
              *(v60 + 64) = v102;
              *(v60 + 80) = v103;
              *(v60 + 96) = v104;
              *v60 = *v99;
              *(v60 + 16) = *&v99[16];
              *(v60 + 32) = v100;
              v55 = 112 * v56 + 112;
              v61 = *(v52 + 8) - *v52;
              v62 = 112 * v56 - v61;
              memcpy((v60 - v61), *v52, v61);
              v63 = *v52;
              *v52 = v62;
              *(v52 + 8) = v55;
              *(v52 + 16) = 0;
              if (v63)
              {
                operator delete(v63);
              }

              v20 = v79;
            }

            else
            {
              v53[3] = v101;
              v53[4] = v102;
              v53[5] = v103;
              v53[6] = v104;
              *v53 = *v99;
              v53[1] = *&v99[16];
              v53[2] = v100;
              v55 = (v53 + 7);
            }

            *(v52 + 8) = v55;
            v29 = v29 + 1;
          }

          while (v29 != v21);
          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20);
          v21 = v69;
        }

        while (v69);
      }

      *buf = &v86;
      sub_1004CA974(buf);
    }
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v5 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLRS,Received trip output Data,nil", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193F86C();
    }
  }
}

void sub_1007E5D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  STACK[0x200] = &a32;
  sub_1004CA974(&STACK[0x200]);
  _Unwind_Resume(a1);
}

double sub_1007E5D80(void *a1, uint64_t a2)
{
  if (a1)
  {
    [objc_msgSend(a1 "timestamp")];
    *a2 = v4;
    [a1 latitude];
    *(a2 + 8) = v5;
    [a1 longitude];
    *(a2 + 16) = v6;
    [a1 horizontalAccuracy];
    *(a2 + 24) = v7;
    [a1 speed];
    *(a2 + 64) = v8;
    [a1 course];
    *(a2 + 48) = v9;
    [a1 altitude];
    *(a2 + 32) = v10;
    [a1 altitudeAccuracy];
    *(a2 + 40) = v11;
    [a1 speedAccuracy];
    *(a2 + 72) = v12;
    [a1 courseAccuracy];
    *(a2 + 56) = v13;
    v15 = [a1 signalEnvironmentType];
    *(a2 + 104) = sub_1007E727C(&v15);
    result = 0.0;
    *(a2 + 80) = xmmword_101CA73C0;
  }

  return result;
}

uint64_t sub_1007E5E50(void *a1, int *a2, double a3)
{
  if (*a2 < 0)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v6 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      v7 = *a2;
      *buf = 134218240;
      v34 = a3;
      v35 = 1024;
      LODWORD(v36) = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLRS,findAltitudeSampleIndexAndFloorUncForTime received invalid index,desiredTime,%.3f,index,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193F958(a2, a3);
    }

    *a2 = 0;
  }

  if (*a1 == a1[1])
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v8 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v34 = a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLRS,findAltitudeSampleIndexAndFloorUncForTime received empty altitude vector,desiredTime,%.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193FA84(a3);
    }
  }

  v9 = (a1[1] - *a1) >> 4;
  v10 = *a2;
  if (v9 <= v10)
  {
    return 0;
  }

  v11 = (*a1 + 16 * v10);
  v12 = v10 + 1;
  while (1)
  {
    v13 = *v11;
    v14 = **v11;
    if (vabdd_f64(a3, v14) <= 0.001)
    {
      break;
    }

    if (v14 <= a3)
    {
      ++v10;
      *a2 = v12;
      v11 += 2;
      ++v12;
      if (v9 > v10)
      {
        continue;
      }
    }

    return 0;
  }

  v16 = v13[2];
  v15 = v13 + 2;
  v17 = v16;
  if (v16 <= 0.0)
  {
    return 0;
  }

  v18 = &unk_101CA7908;
  if (v17 >= 2.0)
  {
    v18 = v15;
  }

  v19 = *v18;
  *v15 = *v18;
  if (v19 != v17)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v20 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*v11 + 2);
      *buf = 134218496;
      v34 = a3;
      v35 = 2048;
      v36 = v17;
      v37 = 2048;
      v38 = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "CLRS,findAltitudeSampleIndexAndFloorUncForTime floored vertical uncertainty,timestamp,%.3f,original,%.2f,floored,%.2f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v23 = *(*v11 + 2);
      v27 = 134218496;
      v28 = a3;
      v29 = 2048;
      v30 = v17;
      v31 = 2048;
      v32 = v23;
      LODWORD(v26) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 2, "CLRS,findAltitudeSampleIndexAndFloorUncForTime floored vertical uncertainty,timestamp,%.3f,original,%.2f,floored,%.2f", COERCE_DOUBLE(&v27), v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL findAltitudeSampleIndexAndFloorUncForTime(const double, std::vector<AltitudeSamplePtr> &, int &)", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  return 1;
}

void sub_1007E61EC(uint64_t a1, int *a2)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) == 1)
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v4 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLRS,Received completionHandler after timeout", &v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193FD7C();
    }
  }

  else if (a2)
  {
    *(v3 + 24) = 1;
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v6 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLRS,Received error completionHandler,%@", &v10, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193FB9C(a2);
    }
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v7 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CLRS,Received completionHandler", &v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193FC98();
    }
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    dispatch_semaphore_signal(v8);
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v9 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CLRS,Received completionHandler, semaphone is NULL", &v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193FE60();
    }
  }
}

uint64_t sub_1007E6454(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1007EE034(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a2 + 32);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = v5;
    v6 = *(a2 + 48);
    v7 = *(a2 + 64);
    v8 = *(a2 + 96);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 96) = v8;
    *(v3 + 48) = v6;
    *(v3 + 64) = v7;
    v9 = *(a2 + 112);
    v10 = *(a2 + 128);
    v11 = *(a2 + 144);
    *(v3 + 156) = *(a2 + 156);
    *(v3 + 128) = v10;
    *(v3 + 144) = v11;
    *(v3 + 112) = v9;
    result = v3 + 176;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1007E64DC(uint64_t a1, double *a2, double *a3, uint64_t *a4, int a5, char a6, double a7, double a8)
{
  if (*a4)
  {
    if (a7 >= 0.0 && *(a2 + 64) == 1)
    {
      v11 = a2[2] <= 0.0 || *a2 == 0;
      if (!v11 && sub_1007EDFF0(a2) && *(a3 + 64) == 1 && a3[2] > 0.0 && *a3 && sub_1007EDFF0(a3))
      {
        if (a2[13] <= 0.5 && a3[13] <= 0.5)
        {
          sub_10018D404(buf);
          sub_100109D18(buf, a2[3], a2[4], a3[3], a3[4], 0.0);
        }

        v25[5] = 0;
        v26 = 0;
        v29 = 0;
        memset(v25, 0, 36);
        v28 = 0;
        v27 = 0;
        sub_1007EFCE4();
      }
    }

    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v12 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v14 = a2[2];
      if (*(a2 + 64) == 1 && v14 > 0.0 && *a2 != 0)
      {
        v13 = sub_1007EDFF0(a2);
      }

      v16 = 0;
      if (*(a3 + 64) == 1 && a3[2] > 0.0 && *a3)
      {
        v16 = sub_1007EDFF0(a3);
      }

      buf[0] = 134349824;
      *&buf[1] = a7;
      v31 = 2050;
      v32 = v14;
      v33 = 1026;
      v34 = v13;
      v35 = 1026;
      v36 = v16;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "CLRS,%{public}.3lf,buildUserRouteSegmentUsingAstar,invalid snap data,snapTime,%{public}.3lf,startSnapValid,%{public}d,destinationSnapValid,%{public}d", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v17 = 0;
      v18 = qword_1025D4698;
      v19 = a2[2];
      if (*(a2 + 64) == 1 && v19 > 0.0 && *a2)
      {
        v17 = sub_1007EDFF0(a2);
      }

      v20 = 0;
      if (*(a3 + 64) == 1 && a3[2] > 0.0 && *a3)
      {
        v20 = sub_1007EDFF0(a3);
      }

      LODWORD(v25[0]) = 134349824;
      *(v25 + 4) = a7;
      WORD2(v25[1]) = 2050;
      *(&v25[1] + 6) = v19;
      HIWORD(v25[2]) = 1026;
      LODWORD(v25[3]) = v17;
      WORD2(v25[3]) = 1026;
      *(&v25[3] + 6) = v20;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v18, 0, "CLRS,%{public}.3lf,buildUserRouteSegmentUsingAstar,invalid snap data,snapTime,%{public}.3lf,startSnapValid,%{public}d,destinationSnapValid,%{public}d", v25, 34);
      v22 = v21;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRouteSmoother::buildUserRouteSegmentUsingAstar(const CFAbsoluteTime, const CLGeoMapSnapData &, const CLGeoMapSnapData &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::vector<swan::RouteSmootherEpoch> &, const double, const swan::SignalEnvironment)", "%s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }

  else
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v23 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "CLRS,buildUserRouteSegmentUsingAstar,mapGeometryRoadBuffer is nullptr", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193FF44();
    }
  }

  return 0;
}

void sub_1007E6F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    sub_100008080(a26);
  }

  a45 = &a35;
  sub_1004CA974(&a45);
  _Unwind_Resume(a1);
}

NSDictionary *sub_1007E6F98(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7[0] = @"fWorkoutActivity";
  v8[0] = [NSNumber numberWithUnsignedInt:*(v2 + 48)];
  v7[1] = @"reconstructedIntervalDurationSeconds";
  v8[1] = [NSNumber numberWithDouble:*(a1 + 48)];
  v7[2] = @"processingTimeMsec";
  v8[2] = [NSNumber numberWithInt:*(a1 + 56)];
  v7[3] = @"numLocationSamplesInput";
  v8[3] = [NSNumber numberWithUnsignedLong:*(a1 + 64)];
  v7[4] = @"numBackgroundIOSamplesInput";
  v8[4] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(a1 + 72) + 8) count]);
  v7[5] = @"numReconstructedLocationSamplesOutput";
  v8[5] = [NSNumber numberWithUnsignedLong:0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 80) + 8) - **(a1 + 80)) >> 4)];
  v7[6] = @"reconstructionYield";
  v3 = *(a1 + 48);
  v4 = 1.0;
  if (v3 > 0.0)
  {
    v4 = (0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 80) + 8) - **(a1 + 80)) >> 4)) / v3;
  }

  v8[6] = [NSNumber numberWithDouble:v4];
  v7[7] = @"useTripSegmentProcessor";
  v8[7] = [NSNumber numberWithBool:*(v2 + 114288)];
  v7[8] = @"fNetworkAccessAllowed";
  v8[8] = [NSNumber numberWithBool:*(v2 + 54)];
  v7[9] = @"intervalLabel";
  v5 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v5 = *v5;
  }

  v8[9] = [NSString stringWithUTF8String:v5];
  v7[10] = @"reconstructionFailed";
  v8[10] = [NSNumber numberWithBool:*(*(*(a1 + 32) + 8) + 24)];
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:11];
}

char *sub_1007E71C4(char *result, uint64_t a2)
{
  if (*(a2 + 111) < 0)
  {
    return sub_100007244(result + 88, *(a2 + 88), *(a2 + 96));
  }

  v2 = *(a2 + 88);
  *(result + 13) = *(a2 + 104);
  *(result + 88) = v2;
  return result;
}

void sub_1007E71F0(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }
}

double sub_1007E7204(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 76);
  *(a2 + 8) = *(a1 + 4);
  *(a2 + 64) = *(a1 + 44);
  *(a2 + 48) = *(a1 + 60);
  *(a2 + 24) = *(a1 + 20);
  *(a2 + 40) = *(a1 + 36);
  *(a2 + 72) = *(a1 + 52);
  *(a2 + 56) = *(a1 + 68);
  *(a2 + 104) = sub_1007E727C((a1 + 140));
  result = 0.0;
  *(a2 + 80) = xmmword_101CA73C0;
  return result;
}

uint64_t sub_1007E727C(unsigned int *a1)
{
  v3 = *a1;
  if (*a1 < 7 && ((0x5Fu >> v3) & 1) != 0)
  {
    return (0x6000403020100uLL >> (8 * v3));
  }

  else
  {
    v9 = v1;
    v10 = v2;
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v5 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "CLRS,Unhandled CLClient signal environment type", v8, 2u);
    }

    v6 = sub_10000A100(121, 0);
    LOBYTE(v4) = 0;
    if (v6)
    {
      sub_101940030();
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

void sub_1007E7354(void *a1, unint64_t a2)
{
  if (0x6F96F96F96F96F97 * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0x1A41A41A41A41A5)
    {
      sub_100238948(a1, a2);
    }

    sub_10028C64C();
  }
}

double sub_1007E7420(uint64_t *a1, double a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = (v2 - *a1) >> 4;
  v9 = 0.0;
  do
  {
    v10 = *(v3 + v6);
    if (v10)
    {
      if (a2 != 0.0 && v7 < v8 - 1 && *(v3 + v6 + 16))
      {
        v11 = sub_1012968F4(v10, 1);
        v12 = sub_1012968F4(*(v3 + v6 + 16), 0);
        v13 = fmod(v11 + -90.0 + 90.0 - v12 + 180.0, 360.0);
        if (v13 < 0.0)
        {
          v13 = v13 + 360.0;
        }

        v14 = v13 + -360.0;
        if (v13 <= 180.0)
        {
          v14 = v13;
        }

        v15 = fabs(v14);
        v16 = 0.0;
        if (v15 > 5.0 && v15 < 180.0)
        {
          v16 = a2 / tan(v14 * 0.0174532925 * 0.5);
        }

        v9 = v9 + v16 * -2.0;
        v10 = *(v3 + v6);
      }

      v17 = *v10;
      sub_10029244C(*v10);
      v9 = v9 + v17[5];
      v3 = *a1;
      v2 = a1[1];
    }

    ++v7;
    v8 = (v2 - v3) >> 4;
    v6 += 16;
  }

  while (v7 < v8);
  return v9;
}

uint64_t sub_1007E75BC(float64x2_t *a1, uint64_t *a2, uint64_t *a3, double a4, double a5, double a6)
{
  v9 = a2[1];
  if (*a2 == v9 || a4 > 1.0 || ((v10 = *a3, v11 = a3[1], a4 >= 0.0) ? (v12 = v10 == v11) : (v12 = 1), v12))
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v99 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      v100 = -1227133513 * ((a2[1] - *a2) >> 4);
      v101 = (a3[1] - *a3) >> 4;
      *buf = 67240704;
      *&buf[4] = v100;
      v133 = 1026;
      *v134 = v101;
      *&v134[4] = 2050;
      *&v134[6] = a4;
      _os_log_impl(dword_100000000, v99, OS_LOG_TYPE_ERROR, "CLRS,snapLocationsOnRoads,invalid input,locations,%{public}d,roadVectors,%{public}d,startRoadProjection,%{public}.3lf", buf, 0x18u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v103 = -1227133513 * ((a2[1] - *a2) >> 4);
    v104 = (a3[1] - *a3) >> 4;
    LODWORD(__y) = 67240704;
    HIDWORD(__y) = v103;
    v130 = 1026;
    *v131 = v104;
    *&v131[4] = 2050;
    *&v131[6] = a4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,snapLocationsOnRoads,invalid input,locations,%{public}d,roadVectors,%{public}d,startRoadProjection,%{public}.3lf", &__y, 24);
    v106 = v105;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::snapLocationsOnRoads(std::vector<swan::RouteSmootherEpoch> &, const std::vector<CLRouteRoadPtr>, const double, const double, const double, const swan::SignalEnvironment)", "%s\n", v105);
LABEL_135:
    if (v106 != buf)
    {
LABEL_136:
      free(v106);
    }

    return 0;
  }

  v13 = *a2;
  if (a2[1] == *a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = (v11 - v10) >> 4;
  v16 = a5 / (0x6DB6DB6DB6DB6DB7 * ((v9 - *a2) >> 4));
  v127 = v16 / a6;
  while (2)
  {
    v17 = 0;
    v18 = (v13 + 112 * v14++);
    v19 = v16 * v14;
    v20 = a4;
    do
    {
      v21 = *a3;
      if (v19 <= 0.0)
      {
        goto LABEL_50;
      }

      v22 = *(v21 + 16 * v17);
      v24 = *v22;
      v23 = *(v22 + 8);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v24)
      {
        sub_10029244C(v24);
        v25 = 1.0 - v20;
        if (!*(*(*a3 + 16 * v17) + 24))
        {
          v25 = v20;
        }

        v26 = v24[5] * v25;
        if (v19 <= v26 + 0.000000001)
        {
          v29 = 0;
          v28 = 12;
          if (!v23)
          {
            continue;
          }

LABEL_31:
          sub_100008080(v23);
          continue;
        }

        v27 = v17 + 1;
        if (v27 >= v15)
        {
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v32 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
          {
            v33 = *v18;
            *buf = 67240448;
            *&buf[4] = v15;
            v133 = 2050;
            *v134 = v33;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "CLRS,currentRoadIndex over candidate road size,count,%{public}d,locationTime,%{public}.3lf", buf, 0x12u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10193ED1C(buf);
            v37 = *v18;
            LODWORD(__y) = 67240448;
            HIDWORD(__y) = v15;
            v130 = 2050;
            *v131 = v37;
            LODWORD(v122) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,currentRoadIndex over candidate road size,count,%{public}d,locationTime,%{public}.3lf", &__y, v122);
            v39 = v38;
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::snapLocationsOnRoads(std::vector<swan::RouteSmootherEpoch> &, const std::vector<CLRouteRoadPtr>, const double, const double, const double, const swan::SignalEnvironment)", "%s\n", v38);
            if (v39 != buf)
            {
              free(v39);
            }
          }

          v28 = 0;
          v19 = 0.0;
          if (*(*(*a3 + 16 * v17) + 24))
          {
            v20 = 1.0;
          }

          else
          {
            v20 = 0.0;
          }

          v29 = 1;
          if (v23)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v28 = 0;
          v19 = v19 - v26;
          if (*(*(*a3 + 16 * v27) + 24))
          {
            v20 = 0.0;
          }

          else
          {
            v20 = 1.0;
          }

          v29 = 1;
          ++v17;
          if (v23)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v30 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
        {
          v31 = *v18;
          *buf = 67240448;
          *&buf[4] = v15;
          v133 = 2050;
          *v134 = v31;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_ERROR, "CLRS,road pointer invalid,count,%{public}d,locationTime,%{public}.3lf", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10193ED1C(buf);
          v34 = *v18;
          LODWORD(__y) = 67240448;
          HIDWORD(__y) = v15;
          v130 = 2050;
          *v131 = v34;
          LODWORD(v122) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,road pointer invalid,count,%{public}d,locationTime,%{public}.3lf", &__y, v122);
          v36 = v35;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::snapLocationsOnRoads(std::vector<swan::RouteSmootherEpoch> &, const std::vector<CLRouteRoadPtr>, const double, const double, const double, const swan::SignalEnvironment)", "%s\n", v35);
          if (v36 != buf)
          {
            free(v36);
          }
        }

        v29 = 0;
        v28 = 1;
        if (v23)
        {
          goto LABEL_31;
        }
      }
    }

    while (!v28);
    if (v28 != 12)
    {
      if (!v29)
      {
        return 0;
      }

LABEL_94:
      v13 = *a2;
      if (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4) > v14)
      {
        continue;
      }

      return 1;
    }

    break;
  }

  v21 = *a3;
LABEL_50:
  v40 = *(v21 + 16 * v17);
  v41 = *v40;
  if (!*v40 || (sub_10029244C(*v40), v41[5] == 0.0))
  {
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v107 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      v108 = *v18;
      v109 = *(*a3 + 16 * v17);
      v110 = *v109;
      if (*v109)
      {
        sub_10029244C(*v109);
        v111 = *(v110 + 5);
      }

      else
      {
        v111 = 0xBFF0000000000000;
      }

      *buf = 67240704;
      *&buf[4] = v15;
      v133 = 2050;
      *v134 = v108;
      *&v134[8] = 2050;
      *&v134[10] = v111;
      _os_log_impl(dword_100000000, v107, OS_LOG_TYPE_ERROR, "CLRS,road pointer invalid or zero length,count,%{public}d,locationTime,%{public}.3lf,roadLength,%{public}.2lf", buf, 0x1Cu);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v116 = qword_1025D4698;
    v117 = *v18;
    v118 = *(*a3 + 16 * v17);
    v119 = *v118;
    if (*v118)
    {
      sub_10029244C(*v118);
      v120 = *(v119 + 5);
    }

    else
    {
      v120 = 0xBFF0000000000000;
    }

    LODWORD(__y) = 67240704;
    HIDWORD(__y) = v15;
    v130 = 2050;
    *v131 = v117;
    *&v131[8] = 2050;
    *&v131[10] = v120;
    LODWORD(v122) = 28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v116, 16, "CLRS,road pointer invalid or zero length,count,%{public}d,locationTime,%{public}.3lf,roadLength,%{public}.2lf", &__y, v122);
    v106 = v121;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::snapLocationsOnRoads(std::vector<swan::RouteSmootherEpoch> &, const std::vector<CLRouteRoadPtr>, const double, const double, const double, const swan::SignalEnvironment)", "%s\n", v121);
    if (v106 != buf)
    {
      goto LABEL_136;
    }

    return 0;
  }

  v42 = 16 * v17;
  v43 = **(*a3 + v42);
  sub_10029244C(v43);
  v44 = *(*a3 + v42);
  if (*(v44 + 24))
  {
    v45 = v19 / v43[5];
  }

  else
  {
    v45 = -(v19 / v43[5]);
  }

  v47 = *v44;
  v46 = v44[1];
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v47)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101940114();
    }

    v53 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
    }

    v49 = 0.0;
    if (!sub_10000A100(121, 0))
    {
      goto LABEL_87;
    }

    sub_10194013C(buf);
    LOWORD(__y) = 0;
    LODWORD(v122) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM, NULL road", &__y, v122);
    v55 = v54;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v54);
    goto LABEL_125;
  }

  v48 = (*(v47 + 144) - *(v47 + 136)) >> 4;
  if (v48 <= 0)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101940114();
    }

    v56 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
    }

    v49 = 0.0;
    if (!sub_10000A100(121, 2))
    {
      goto LABEL_87;
    }

    sub_10194013C(buf);
    LOWORD(__y) = 0;
    LODWORD(v122) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,interpolateProjections,CoordinateCount is 0", &__y, v122);
    v55 = v57;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v57);
    goto LABEL_125;
  }

  v49 = 0.0;
  if (v48 != 1)
  {
    sub_10029244C(v47);
    v58 = (*(v47 + 168) - *(v47 + 160)) >> 3;
    if (v58 == v48 - 1)
    {
      sub_10029244C(v47);
      v59 = v20 + v45;
      if (v59 < 0.000001)
      {
        v60 = *(v47 + 136);
        v52 = *v60;
        v51 = v60[1];
        v61 = v60[2];
        v62 = v60[3];
        *buf = 0.0;
        v128 = 0;
        __y = 0.0;
        sub_1001063B0(a1, buf, &__y, &v128, v52, v51, 0.0, v61, v62, 0.0);
LABEL_79:
        v63 = atan2(__y, *buf);
        if (v63 < 0.0)
        {
          v63 = v63 + 6.28318531;
        }

        v49 = v63 * 57.2957795;
        goto LABEL_110;
      }

      if (v59 >= 0.999999)
      {
        v74 = *(v47 + 136) + 16 * v58;
        v52 = *v74;
        v51 = *(v74 + 8);
        v75 = sub_1002926F4(a1, *(v74 - 16), *(v74 - 8), *v74, v51);
LABEL_109:
        v49 = v75;
LABEL_110:
        v50 = 1;
LABEL_88:
        if (!v46)
        {
          goto LABEL_90;
        }

        goto LABEL_89;
      }

      v66 = *(v47 + 160);
      v67 = *(v47 + 168);
      if (v66 == v67)
      {
LABEL_102:
        if (qword_1025D46B0 != -1)
        {
          sub_101940114();
        }

        v72 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_87;
        }

        sub_10194013C(buf);
        LOWORD(__y) = 0;
        LODWORD(v122) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,interpolateProjections,Could not interpolate to intended projection", &__y, v122);
        v55 = v73;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v73);
      }

      else
      {
        v68 = 0.0;
        v69 = 2;
        v70 = 24;
        while (1)
        {
          v71 = *v66 / *(v47 + 40);
          if (vabdd_f64(v59, v68 + v71) < 0.000001)
          {
            break;
          }

          if (v68 + v71 > v59)
          {
            v86 = (*(v47 + 136) + v70);
            v87 = *(v86 - 2);
            v123 = *(v86 - 1);
            v125 = *(v86 - 3);
            v88 = sub_1002AADB4(v87, *v86);
            v89 = (v59 - v68) / v71;
            sub_10002DB04(v87 + v88 * v89);
            v51 = v90;
            v91 = (*(v47 + 136) + v70);
            v92 = *(v91 - 3);
            v93 = *(v91 - 2);
            v94 = *(v91 - 1);
            v95 = *v91;
            *buf = 0.0;
            v128 = 0;
            __y = 0.0;
            sub_1001063B0(a1, buf, &__y, &v128, v92, v93, 0.0, v94, v95, 0.0);
            v52 = v125 + (v123 - v125) * v89;
            goto LABEL_79;
          }

          ++v66;
          v70 += 16;
          ++v69;
          v68 = v68 + v71;
          if (v66 == v67)
          {
            goto LABEL_102;
          }
        }

        if (v69 < v48)
        {
          v76 = (*(v47 + 136) + v70);
          v52 = *(v76 - 1);
          v51 = *v76;
          v77 = *(v76 - 3);
          v78 = *(v76 - 2);
          *buf = 0.0;
          v128 = 0;
          __y = 0.0;
          sub_1001063B0(a1, buf, &__y, &v128, v77, v78, 0.0, v52, v51, 0.0);
          v79 = __y;
          v80 = *buf;
          v81 = *(v47 + 136) + v70;
          v82 = *(v81 + 8);
          v83 = *(v81 + 16);
          *buf = 0.0;
          v128 = 0;
          __y = 0.0;
          sub_1001063B0(a1, buf, &__y, &v128, v52, v51, 0.0, v82, v83, 0.0);
          v84 = atan2(v79, v80);
          if (v84 < 0.0)
          {
            v84 = v84 + 6.28318531;
          }

          v124 = v84 * 57.2957795;
          v85 = atan2(__y, *buf);
          if (v85 < 0.0)
          {
            v85 = v85 + 6.28318531;
          }

          sub_1004E60D8(v124, v85 * 57.2957795);
          goto LABEL_109;
        }

        if (qword_1025D46B0 != -1)
        {
          sub_101940114();
        }

        v96 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v96, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
        }

        v49 = 0.0;
        if (!sub_10000A100(121, 0))
        {
LABEL_87:
          v50 = 0;
          v51 = 0.0;
          v52 = 0.0;
          goto LABEL_88;
        }

        sub_10194013C(buf);
        LOWORD(__y) = 0;
        LODWORD(v122) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", &__y, v122);
        v55 = v97;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v97);
      }
    }

    else
    {
      if (qword_1025D46B0 != -1)
      {
        sub_101940114();
      }

      v64 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_87;
      }

      sub_10194013C(buf);
      LOWORD(__y) = 0;
      LODWORD(v122) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,interpolateProjections,inconsistent array size", &__y, v122);
      v55 = v98;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v98);
    }

LABEL_125:
    if (v55 != buf)
    {
      free(v55);
    }

    goto LABEL_87;
  }

  v50 = 1;
  v51 = 0.0;
  v52 = 0.0;
  if (v46)
  {
LABEL_89:
    sub_100008080(v46);
  }

LABEL_90:
  if (v50)
  {
    v65 = v49 + 180.0;
    if (*(*(*a3 + v42) + 24))
    {
      v65 = v49;
    }

    *(v18 + 1) = v52;
    *(v18 + 2) = v51;
    *(v18 + 6) = v65;
    v18[7] = 0x4024000000000000;
    *(v18 + 8) = v127;
    *(v18 + 3) = xmmword_101CA73D0;
    v18[5] = 0x4008000000000000;
    *(v18 + 9) = xmmword_101CA73E0;
    goto LABEL_94;
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v112 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
  {
    v113 = *v18;
    *buf = 67240448;
    *&buf[4] = v15;
    v133 = 2050;
    *v134 = v113;
    _os_log_impl(dword_100000000, v112, OS_LOG_TYPE_ERROR, "CLRS,interpolateOnRoad,interpolateProjections returned false,count,%{public}d,locationTime,%{public}.3lf", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v114 = *v18;
    LODWORD(__y) = 67240448;
    HIDWORD(__y) = v15;
    v130 = 2050;
    *v131 = v114;
    LODWORD(v122) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4698, 16, "CLRS,interpolateOnRoad,interpolateProjections returned false,count,%{public}d,locationTime,%{public}.3lf", &__y, v122);
    v106 = v115;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLRouteSmoother::snapLocationsOnRoads(std::vector<swan::RouteSmootherEpoch> &, const std::vector<CLRouteRoadPtr>, const double, const double, const double, const swan::SignalEnvironment)", "%s\n", v115);
    goto LABEL_135;
  }

  return result;
}

void sub_1007E87A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1007E87D0(int a1, double **a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = *(a3 + 16);
    v9 = *a2;
    do
    {
      if (v8 < *v9)
      {
        break;
      }

      v9 += 14;
      v6 += 112;
    }

    while (v7 != v9);
  }

  return sub_1007EE600(a4, *(a4 + 8), v6, v7, 0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 4));
}

uint64_t sub_1007E882C(uint64_t result)
{
  for (i = 0; i != 112608; i += 1104)
  {
    v2 = result + i;
    *(v2 + 24) = 0x600000006;
    *v2 = off_102472200;
    *(v2 + 8) = xmmword_101CA73F0;
    *(v2 + 32) = result + i + 40;
    *(v2 + 352) = 0x100000006;
    *(v2 + 328) = off_102472178;
    *(v2 + 336) = xmmword_101CA7400;
    *(v2 + 360) = result + i + 368;
    *(v2 + 440) = 0x600000006;
    *(v2 + 416) = off_102472200;
    *(result + i + 424) = xmmword_101CA73F0;
    *(v2 + 448) = result + i + 456;
    *(v2 + 768) = 0x600000006;
    *(v2 + 744) = off_102472200;
    *(v2 + 752) = xmmword_101CA73F0;
    *(v2 + 776) = result + i + 784;
  }

  *(result + 112608) = 0;
  *(result + 112640) = 0x600000006;
  *(result + 112616) = off_102472200;
  *(result + 112624) = xmmword_101CA73F0;
  *(result + 112648) = result + 112656;
  *(result + 112968) = 0x600000006;
  *(result + 112944) = off_102472200;
  *(result + 112952) = xmmword_101CA73F0;
  *(result + 112976) = result + 112984;
  *(result + 113296) = 0x100000006;
  *(result + 113272) = off_102472178;
  *(result + 113280) = xmmword_101CA7400;
  *(result + 113304) = result + 113312;
  return result;
}

uint64_t sub_1007E8AD4(uint64_t a1)
{
  *a1 = off_1024722A8;
  sub_10000EC00((a1 + 8), "");
  *a1 = &off_102472248;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 112) = 0x3FF0000000000000;
  *(a1 + 64) = xmmword_101CA7708;
  *(a1 + 80) = unk_101CA7718;
  *(a1 + 96) = xmmword_101CA7728;
  *(a1 + 120) = xmmword_101CA7740;
  *(a1 + 132) = *(&xmmword_101CA7740 + 12);
  *&v7 = 0xA00000006;
  v4 = xmmword_101CA775C;
  v5 = unk_101CA776C;
  v6 = xmmword_101CA777C;
  sub_1007EE9C0((a1 + 152), &v4, 7);
  v8[0] = xmmword_101CA77D8;
  v8[1] = unk_101CA77E8;
  v9 = xmmword_101CA77F8;
  v4 = xmmword_101CA7798;
  v5 = unk_101CA77A8;
  v6 = xmmword_101CA77B8;
  v7 = unk_101CA77C8;
  sub_1007EEC80(a1 + 176, &v4, 7);
  LOBYTE(v4) = 0;
  sub_1007EA340(&v4 + 1, a1 + 176);
  LOBYTE(v6) = 1;
  sub_1007EA340(&v6 + 1, a1 + 176);
  LOBYTE(v8[0]) = 2;
  sub_1007EA340(v8 + 1, a1 + 176);
  LOBYTE(v9) = 3;
  sub_1007EA340(&v9 + 1, a1 + 176);
  v10 = 4;
  sub_1007EA340(v11, a1 + 176);
  v12 = 5;
  sub_1007EA340(v13, a1 + 176);
  v14 = 6;
  sub_1007EA340(v15, a1 + 176);
  v16 = 7;
  sub_1007EA340(v17, a1 + 176);
  sub_1007EA660((a1 + 200), &v4, 8);
  for (i = 0; i != -32; i -= 4)
  {
    sub_1003C93BC(&v17[i], v17[i + 1]);
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = xmmword_101CA7410;
  *(a1 + 248) = xmmword_101CA7420;
  *(a1 + 264) = 0x4006A09E667F3BCCLL;
  *(a1 + 272) = xmmword_101CA7430;
  *(a1 + 288) = 0x3FF921FF2E48E8A7;
  *(a1 + 296) = 0;
  return a1;
}

void sub_1007E8D9C(_Unwind_Exception *a1)
{
  v6 = v3 + 232;
  v7 = -256;
  do
  {
    sub_1003C93BC(v6, *(v6 + 8));
    v6 -= 32;
    v7 += 32;
  }

  while (v7);
  sub_1003C93BC(v1 + 176, *(v1 + 184));
  sub_1003C93BC(v1 + 152, *(v1 + 160));
  if (*(v1 + 63) < 0)
  {
    operator delete(*v4);
  }

  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_1007E8E5C(uint64_t a1)
{
  *a1 = &off_102472248;
  sub_10018F070(a1 + 200, *(a1 + 208));
  sub_1003C93BC(a1 + 176, *(a1 + 184));
  sub_1003C93BC(a1 + 152, *(a1 + 160));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  *a1 = off_1024722A8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_1007E8F1C(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 32) = a3;
  sub_1007EA860(v26, a2, 8);
  v4 = v26[0];
  if ((*(&v26[4] + *(v26[0] - 3)) & 5) != 0)
  {
    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    v23.__r_.__value_.__s.__data_[0] = 2;
    cnprint::CNPrinter::Print(&__str, &v23, "ConfigLoader: could not open config file, using default values");
  }

  else
  {
    if (*(a1 + 31) < 0)
    {
      *(a1 + 16) = 0;
      v5 = *(a1 + 8);
    }

    else
    {
      *(a1 + 31) = 0;
      v5 = (a1 + 8);
    }

    *v5 = 0;
    memset(&__str, 0, sizeof(__str));
    while (1)
    {
      std::ios_base::getloc((v26 + *(v4 - 3)));
      v6 = std::locale::use_facet(&v23, &std::ctype<char>::id);
      v7 = (v6->__vftable[2].~facet_0)(v6, 10);
      std::locale::~locale(&v23);
      v8 = sub_100485630(v26, &__str, v7);
      v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      LOBYTE(v10) = *(&__str.__r_.__value_.__s + 23);
      if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
      {
        break;
      }

      size = __str.__r_.__value_.__l.__size_;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = __str.__r_.__value_.__l.__size_;
      }

      if (v13 >= 1)
      {
        v14 = p_str + v13;
        v15 = p_str;
        do
        {
          v16 = memchr(v15, 35, v13);
          if (!v16)
          {
            break;
          }

          if (*v16 == 35)
          {
            if (v16 != v14 && v16 - p_str != -1)
            {
              std::string::basic_string(&v23, &__str, 0, v16 - p_str, &v25);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              __str = v23;
              v9 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
              size = v23.__r_.__value_.__l.__size_;
              v10 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
            }

            break;
          }

          v15 = (v16 + 1);
          v13 = v14 - v15;
        }

        while (v14 - v15 >= 1);
      }

      if ((v10 & 0x80u) != 0)
      {
        v9 = size;
      }

      sub_100070148(&v23, v9 + 1);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v23;
      }

      else
      {
        v17 = v23.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &__str;
        }

        else
        {
          v18 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v17, v18, v9);
      }

      *(&v17->__r_.__value_.__l.__data_ + v9) = 10;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v23;
      }

      else
      {
        v19 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v23.__r_.__value_.__l.__size_;
      }

      std::string::append((a1 + 8), v19, v20);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v4 = v26[0];
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v21 = (*(*a1 + 32))(a1);
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v21;
}

void sub_1007E92F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1007E936C(_BYTE *a1, char *a2, char a3)
{
  a1[32] = a3;
  sub_100006044((a1 + 8), a2);
  v4 = *(*a1 + 32);

  return v4(a1);
}

uint64_t sub_1007E93CC(uint64_t a1)
{
  if ((sub_1007EAAEC(a1, (a1 + 40), "input_locationd_data_file", "") & 1) == 0)
  {
    v7 = sub_100038730(&std::cout, "Invalid input_locationd_data_file", 33);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(v114, &std::ctype<char>::id);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(v114);
    std::ostream::put();
    std::ostream::flush();
    v9 = 0;
    *(a1 + 296) = 0;
    return v9;
  }

  v2 = sub_1007EB568(a1, (a1 + 232), "vertical_process_noise_sigma_mps2");
  if ((v2 & 1) == 0)
  {
    *(a1 + 232) = 0x3FB999999999999ALL;
  }

  v114[0].__locale_ = 0;
  v114[1].__locale_ = 0;
  DWORD2(v115) = 0;
  *&v115 = 0;
  if (sub_1007EAB84(a1, v114, 7, "desired_lag_per_environment_array") != -1)
  {
    v3 = *(a1 + 152);
    if (v3 == (a1 + 160))
    {
      goto LABEL_16;
    }

    while (1)
    {
      v4 = *(v3 + 28);
      if (v4 > 6)
      {
        break;
      }

      *(v3 + 8) = *(&v114[0].__locale_ + v4);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v72 = *v6 == v3;
          v3 = v6;
        }

        while (!v72);
      }

      v3 = v6;
      if (v6 == (a1 + 160))
      {
        goto LABEL_16;
      }
    }
  }

  v2 = 0;
LABEL_16:
  sub_10000EC00(__p, "horizontal_process_noise_sigma_mps2_unknown");
  v111 = 0;
  v114[0].__locale_ = &v111;
  v10 = sub_1007EE8E0(a1 + 200, &v111, &unk_101C66300, v114);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v113 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v11) == -1)
  {
    v14 = 0;
  }

  else
  {
    v12 = v10[5];
    if (v12 == v10 + 6)
    {
      v14 = 1;
    }

    else
    {
      do
      {
        v13 = *(v12 + 32);
        v14 = v13 < 7;
        if (v13 > 6)
        {
          break;
        }

        v12[5] = v114[v13].__locale_;
        v15 = v12[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v12[2];
            v72 = *v16 == v12;
            v12 = v16;
          }

          while (!v72);
        }

        v12 = v16;
      }

      while (v16 != v10 + 6);
    }
  }

  if (v113 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000EC00(v109, "horizontal_process_noise_sigma_mps2_walking");
  v111 = 1;
  v114[0].__locale_ = &v111;
  v17 = sub_1007EE8E0(a1 + 200, &v111, &unk_101C66300, v114);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v110 >= 0)
  {
    v18 = v109;
  }

  else
  {
    v18 = v109[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v18) == -1)
  {
    v21 = 0;
  }

  else
  {
    v19 = v17[5];
    if (v19 == v17 + 6)
    {
      v21 = 1;
    }

    else
    {
      do
      {
        v20 = *(v19 + 32);
        v21 = v20 < 7;
        if (v20 > 6)
        {
          break;
        }

        v19[5] = v114[v20].__locale_;
        v22 = v19[1];
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
            v23 = v19[2];
            v72 = *v23 == v19;
            v19 = v23;
          }

          while (!v72);
        }

        v19 = v23;
      }

      while (v23 != v17 + 6);
    }
  }

  if (v110 < 0)
  {
    operator delete(v109[0]);
  }

  sub_10000EC00(v107, "horizontal_process_noise_sigma_mps2_running");
  v111 = 2;
  v114[0].__locale_ = &v111;
  v24 = sub_1007EE8E0(a1 + 200, &v111, &unk_101C66300, v114);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v108 >= 0)
  {
    v25 = v107;
  }

  else
  {
    v25 = v107[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v25) == -1)
  {
    v28 = 0;
  }

  else
  {
    v26 = v24[5];
    if (v26 == v24 + 6)
    {
      v28 = 1;
    }

    else
    {
      do
      {
        v27 = *(v26 + 32);
        v28 = v27 < 7;
        if (v27 > 6)
        {
          break;
        }

        v26[5] = v114[v27].__locale_;
        v29 = v26[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v26[2];
            v72 = *v30 == v26;
            v26 = v30;
          }

          while (!v72);
        }

        v26 = v30;
      }

      while (v30 != v24 + 6);
    }
  }

  if (v108 < 0)
  {
    operator delete(v107[0]);
  }

  sub_10000EC00(v105, "horizontal_process_noise_sigma_mps2_cycling");
  v111 = 3;
  v114[0].__locale_ = &v111;
  v31 = sub_1007EE8E0(a1 + 200, &v111, &unk_101C66300, v114);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v106 >= 0)
  {
    v32 = v105;
  }

  else
  {
    v32 = v105[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v32) == -1)
  {
    v35 = 0;
  }

  else
  {
    v33 = v31[5];
    if (v33 == v31 + 6)
    {
      v35 = 1;
    }

    else
    {
      do
      {
        v34 = *(v33 + 32);
        v35 = v34 < 7;
        if (v34 > 6)
        {
          break;
        }

        v33[5] = v114[v34].__locale_;
        v36 = v33[1];
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = v33[2];
            v72 = *v37 == v33;
            v33 = v37;
          }

          while (!v72);
        }

        v33 = v37;
      }

      while (v37 != v31 + 6);
    }
  }

  if (v106 < 0)
  {
    operator delete(v105[0]);
  }

  sub_10000EC00(v103, "horizontal_process_noise_sigma_mps2_swimming");
  v111 = 4;
  v114[0].__locale_ = &v111;
  v38 = sub_1007EE8E0(a1 + 200, &v111, &unk_101C66300, v114);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v104 >= 0)
  {
    v39 = v103;
  }

  else
  {
    v39 = v103[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v39) == -1)
  {
    v42 = 0;
  }

  else
  {
    v40 = v38[5];
    if (v40 == v38 + 6)
    {
      v42 = 1;
    }

    else
    {
      do
      {
        v41 = *(v40 + 32);
        v42 = v41 < 7;
        if (v41 > 6)
        {
          break;
        }

        v40[5] = v114[v41].__locale_;
        v43 = v40[1];
        if (v43)
        {
          do
          {
            v44 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v44 = v40[2];
            v72 = *v44 == v40;
            v40 = v44;
          }

          while (!v72);
        }

        v40 = v44;
      }

      while (v44 != v38 + 6);
    }
  }

  if (v104 < 0)
  {
    operator delete(v103[0]);
  }

  sub_10000EC00(v101, "horizontal_process_noise_sigma_mps2_golfing");
  v111 = 5;
  v114[0].__locale_ = &v111;
  v45 = sub_1007EE8E0(a1 + 200, &v111, &unk_101C66300, v114);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v102 >= 0)
  {
    v46 = v101;
  }

  else
  {
    v46 = v101[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v46) == -1)
  {
    v49 = 0;
  }

  else
  {
    v47 = v45[5];
    if (v47 == v45 + 6)
    {
      v49 = 1;
    }

    else
    {
      do
      {
        v48 = *(v47 + 32);
        v49 = v48 < 7;
        if (v48 > 6)
        {
          break;
        }

        v47[5] = v114[v48].__locale_;
        v50 = v47[1];
        if (v50)
        {
          do
          {
            v51 = v50;
            v50 = *v50;
          }

          while (v50);
        }

        else
        {
          do
          {
            v51 = v47[2];
            v72 = *v51 == v47;
            v47 = v51;
          }

          while (!v72);
        }

        v47 = v51;
      }

      while (v51 != v45 + 6);
    }
  }

  if (v102 < 0)
  {
    operator delete(v101[0]);
  }

  sub_10000EC00(v99, "horizontal_process_noise_sigma_mps2_downhillskiing");
  v111 = 6;
  v114[0].__locale_ = &v111;
  v52 = sub_1007EE8E0(a1 + 200, &v111, &unk_101C66300, v114);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v100 >= 0)
  {
    v53 = v99;
  }

  else
  {
    v53 = v99[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v53) == -1)
  {
    v56 = 0;
  }

  else
  {
    v54 = v52[5];
    if (v54 == v52 + 6)
    {
      v56 = 1;
    }

    else
    {
      do
      {
        v55 = *(v54 + 32);
        v56 = v55 < 7;
        if (v55 > 6)
        {
          break;
        }

        v54[5] = v114[v55].__locale_;
        v57 = v54[1];
        if (v57)
        {
          do
          {
            v58 = v57;
            v57 = *v57;
          }

          while (v57);
        }

        else
        {
          do
          {
            v58 = v54[2];
            v72 = *v58 == v54;
            v54 = v58;
          }

          while (!v72);
        }

        v54 = v58;
      }

      while (v58 != v52 + 6);
    }
  }

  if (v100 < 0)
  {
    operator delete(v99[0]);
  }

  sub_10000EC00(v97, "horizontal_process_noise_sigma_mps2_outdoorwheelchair");
  v111 = 7;
  v114[0].__locale_ = &v111;
  v59 = sub_1007EE8E0(a1 + 200, &v111, &unk_101C66300, v114);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  *&v114[0].__locale_ = 0u;
  if (v98 >= 0)
  {
    v60 = v97;
  }

  else
  {
    v60 = v97[0];
  }

  if (sub_1007EC8F8(a1, v114, 7, v60) == -1)
  {
    v64 = 0;
  }

  else
  {
    v61 = v59[5];
    v62 = v59 + 6;
    if (v61 == v59 + 6)
    {
      v64 = 1;
    }

    else
    {
      do
      {
        v63 = *(v61 + 32);
        v64 = v63 < 7;
        if (v63 > 6)
        {
          break;
        }

        v61[5] = v114[v63].__locale_;
        v65 = v61[1];
        if (v65)
        {
          do
          {
            v66 = v65;
            v65 = *v65;
          }

          while (v65);
        }

        else
        {
          do
          {
            v66 = v61[2];
            v72 = *v66 == v61;
            v61 = v66;
          }

          while (!v72);
        }

        v61 = v66;
      }

      while (v66 != v62);
    }
  }

  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  v114[0].__locale_ = 0;
  v114[1].__locale_ = 0;
  *&v115 = 0;
  if ((v2 & v14 & v21 & v28 & v35 & v42 & v49 & v56 & v64 & sub_1007EAAEC(a1, v114, "workout_type", "")) != 1)
  {
    goto LABEL_239;
  }

  v67 = BYTE7(v115);
  if ((SBYTE7(v115) & 0x80u) == 0)
  {
    v68 = v114 + BYTE7(v115);
  }

  else
  {
    v68 = v114[0].__locale_ + v114[1].__locale_;
  }

  if ((SBYTE7(v115) & 0x80u) == 0)
  {
    locale = v114;
  }

  else
  {
    locale = v114[0].__locale_;
  }

  if (locale != v68)
  {
    do
    {
      *locale = __tolower(*locale);
      ++locale;
    }

    while (locale != v68);
    v67 = BYTE7(v115);
  }

  if ((v67 & 0x80) != 0)
  {
    if (v114[1].__locale_ == 7)
    {
      if (*v114[0].__locale_ == 1852534389 && *(v114[0].__locale_ + 3) == 1853321070)
      {
        goto LABEL_241;
      }

      if (*v114[0].__locale_ == 1802264951 && *(v114[0].__locale_ + 3) == 1735289195)
      {
        goto LABEL_243;
      }

      if (*v114[0].__locale_ == 1852732786 && *(v114[0].__locale_ + 3) == 1735289198)
      {
        goto LABEL_244;
      }

      if (*v114[0].__locale_ == 1818458467 && *(v114[0].__locale_ + 3) == 1735289196)
      {
        goto LABEL_245;
      }
    }

    if (v114[1].__locale_ == 8 && *v114[0].__locale_ == 0x676E696D6D697773)
    {
      goto LABEL_240;
    }

    if (v114[1].__locale_ == 14)
    {
      if (*v114[0].__locale_ == 0x6C6C69686E776F64 && *(v114[0].__locale_ + 6) == 0x676E69696B736C6CLL)
      {
        goto LABEL_242;
      }
    }

    else if (v114[1].__locale_ == 7)
    {
      v72 = *v114[0].__locale_ == 1718382439 && *(v114[0].__locale_ + 3) == 1735289190;
      if (v72)
      {
LABEL_234:
        v79 = 5;
        goto LABEL_246;
      }
    }

    if (v114[1].__locale_ != 17)
    {
LABEL_239:
      v70 = 0;
      goto LABEL_247;
    }

    v71 = v114[0].__locale_;
    goto LABEL_186;
  }

  v70 = 0;
  v71 = v114;
  if (v67 > 0xDu)
  {
    if (v67 != 14)
    {
      if (v67 != 17)
      {
        goto LABEL_247;
      }

LABEL_186:
      v74 = v71->__locale_;
      v75 = v71[1].__locale_;
      locale_low = LOBYTE(v71[2].__locale_);
      if (v74 != 0x77726F6F6474756FLL || v75 != 0x696168636C656568 || locale_low != 114)
      {
        goto LABEL_239;
      }

      v79 = 7;
LABEL_246:
      *(a1 + 224) = v79;
      v70 = 1;
      goto LABEL_247;
    }

    if (v114[0].__locale_ != 0x6C6C69686E776F64 || *(&v114[0].__locale_ + 6) != 0x676E69696B736C6CLL)
    {
      goto LABEL_239;
    }

LABEL_242:
    v79 = 6;
    goto LABEL_246;
  }

  if (v67 == 7)
  {
    if (LODWORD(v114[0].__locale_) != 1852534389 || *(&v114[0].__locale_ + 3) != 1853321070)
    {
      if (LODWORD(v114[0].__locale_) != 1802264951 || *(&v114[0].__locale_ + 3) != 1735289195)
      {
        if (LODWORD(v114[0].__locale_) != 1852732786 || *(&v114[0].__locale_ + 3) != 1735289198)
        {
          if (LODWORD(v114[0].__locale_) != 1818458467 || *(&v114[0].__locale_ + 3) != 1735289196)
          {
            if (LODWORD(v114[0].__locale_) != 1718382439 || *(&v114[0].__locale_ + 3) != 1735289190)
            {
              goto LABEL_239;
            }

            goto LABEL_234;
          }

LABEL_245:
          v79 = 3;
          goto LABEL_246;
        }

LABEL_244:
        v79 = 2;
        goto LABEL_246;
      }

LABEL_243:
      v79 = 1;
      goto LABEL_246;
    }

LABEL_241:
    v79 = 0;
    goto LABEL_246;
  }

  if (v67 == 8)
  {
    if (v114[0].__locale_ == 0x676E696D6D697773)
    {
LABEL_240:
      v79 = 4;
      goto LABEL_246;
    }

    goto LABEL_239;
  }

LABEL_247:
  v90 = sub_1007EB568(a1, (a1 + 240), "velocity_uncertainty_scale_factor");
  if ((v90 & 1) == 0)
  {
    *(a1 + 240) = 0x3FF0000000000000;
  }

  v91 = sub_1007EB568(a1, (a1 + 248), "vertical_speed_limit_mps");
  if ((v91 & 1) == 0)
  {
    *(a1 + 248) = 0x4049000000000000;
  }

  v92 = sub_1007EB568(a1, (a1 + 256), "minimum_driving_speed_that_requires_speed_uncertainty_floor_mps");
  if ((v92 & 1) == 0)
  {
    *(a1 + 256) = 0x4024000000000000;
  }

  v93 = sub_1007EB568(a1, (a1 + 264), "minimum_driving_speed_uncertainty_mps");
  if ((v93 & 1) == 0)
  {
    *(a1 + 264) = 0x4006A09E667F3BCCLL;
  }

  v94 = sub_1007EB568(a1, (a1 + 280), "speed_uncertainty_threshold_multiplier");
  if ((v94 & 1) == 0)
  {
    *(a1 + 280) = 0x4000000000000000;
  }

  v95 = sub_1007EB568(a1, (a1 + 288), "course_uncertainty_threshold_rad");
  if ((v95 & 1) == 0)
  {
    *(a1 + 288) = 0x3FF921FF2E48E8A7;
  }

  v9 = v70 & v90 & v91 & v92 & v93 & v94 & v95;
  *(a1 + 296) = v9;
  if (SBYTE7(v115) < 0)
  {
    operator delete(v114[0].__locale_);
  }

  return v9;
}