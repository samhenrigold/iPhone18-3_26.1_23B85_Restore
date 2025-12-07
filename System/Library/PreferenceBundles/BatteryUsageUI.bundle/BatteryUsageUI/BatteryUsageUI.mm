id PLBatteryUIDetailQueryEnumToStringByDay(void *a1)
{
  v1 = a1;
  if ([v1 intValue])
  {
    v2 = BatteryUILocalization(@"USAGE_FOR_%@_DAYS");
    v3 = v1;
  }

  else
  {
    v2 = BatteryUILocalization(@"USAGE_FOR_%@_HOURS");
    v3 = &off_173508;
  }

  v4 = [NSNumberFormatter localizedStringFromNumber:v3 numberStyle:0];
  v5 = [NSString stringWithFormat:v2, v4];

  return v5;
}

id sub_3D54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 getSortValueForKey:a2];
  v8 = [*(a1 + 32) getSortValueForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

id sub_4A3C(void *a1)
{
  v1 = [a1 description];
  v2 = +[NSCharacterSet URLHostAllowedCharacterSet];
  v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  return v3;
}

void sub_50DC(uint64_t a1)
{
  ADClientAddValueForScalarKey();
  v2 = objc_opt_new();
  [v2 setObject:@"disabled" forKeyedSubscript:@"action"];
  v4 = v2;
  v3 = v2;
  AnalyticsSendEventLazy();
  [*(a1 + 32) userDidDisable];
}

void sub_51B4(uint64_t a1)
{
  ADClientAddValueForScalarKey();
  v2 = objc_opt_new();
  [v2 setObject:@"leftOn" forKeyedSubscript:@"action"];
  v4 = v2;
  v3 = v2;
  AnalyticsSendEventLazy();
  [*(a1 + 32) userDidLeaveOn];
}

void sub_5A64(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setUpModelingView:a2];
  v3 = [*(a1 + 32) activityIndicator];
  [v3 stopAnimating];
}

void sub_6B0C(id a1)
{
  v1 = MGGetStringAnswer();
  if ([v1 hasSuffix:@"DEV"])
  {
    byte_187A90 = 1;
  }
}

void sub_6C0C(id a1)
{
  qword_187AB0 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_6C8C(id a1)
{
  qword_187AC0 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_6D0C(id a1)
{
  qword_187AD0 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_6D8C(id a1)
{
  qword_187AE0 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_6E6C(id a1)
{
  v3 = MobileGestalt_get_current_device();
  v1 = MobileGestalt_copy_hwModelDescriptionForPowerPerf_obj();
  v2 = qword_187AF0;
  qword_187AF0 = v1;
}

void sub_6F04(id a1)
{
  qword_187B00 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_6F84(id a1)
{
  qword_187B10 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_7004(id a1)
{
  v3 = MobileGestalt_get_current_device();
  v1 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();
  v2 = qword_187B20;
  qword_187B20 = v1;
}

void sub_709C(id a1)
{
  qword_187B30 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_7304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained lastChargeInfoChanged];
}

void sub_976C(uint64_t a1, double a2)
{
  LODWORD(a2) = -1.0;
  [*(a1 + 32) setActivationPercent:a2];
  usleep(0x7A120u);
  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_31;
      }

      v15 = +[MCProfileConnection sharedConnection];
      v16 = [NSNumber numberWithInt:30];
      [v15 setValue:v16 forSetting:MCFeatureAutoLockTime];

      v29 = [NSString stringWithFormat:@"%@_ENABLED_TEXT", @"AUTOLOCK"];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v17 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v17 = BatteryUILocalization(v29);
      }

      [*(a1 + 32) setInfoText:v17];

      v5 = 0;
      v13 = 0;
      v7 = 0;
      v14 = @"autolock";
    }

    else
    {
      BKSDisplayBrightnessSetAutoBrightnessEnabled();
      v29 = [NSString stringWithFormat:@"%@_ENABLED_TEXT", @"AUTOBRIGHTNESS"];
      if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v27 = _CFPreferencesCopyValueWithContainer()) == 0))
      {
        v27 = BatteryUILocalization(v29);
      }

      [*(a1 + 32) setInfoText:v27];

      v5 = 0;
      v13 = 0;
      v7 = 0;
      v14 = @"autobrightness";
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        BKSDisplayBrightnessGetCurrent();
        BKSDisplayBrightnessSet();
        v29 = [NSString stringWithFormat:@"%@_ENABLED_TEXT", @"REDUCEBRIGHTNESS"];
        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v18 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v18 = BatteryUILocalization(v29);
        }

        [*(a1 + 32) setInfoText:v18];

        v5 = 0;
        v13 = 0;
        v7 = 0;
        v14 = @"reducebrightness";
        break;
      case 6:
        v19 = *(a1 + 48);
        v20 = [*(a1 + 40) identifier];
        v13 = [v19 objectForKey:v20];

        v21 = [*(a1 + 40) dataDict];
        v5 = [v21 objectForKeyedSubscript:@"PLBatteryUIInsightAppNameKey"];

        [CLLocationManager setEntityAuthorization:2 forLocationDictionary:v13];
        v22 = [v13 objectForKeyedSubscript:@"BundleId"];
        v23 = [v22 isEqualToString:@"com.apple.Maps"];

        if (v23)
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Maps.LocationAuthorizationChangedNotification", 0, 0, 1u);
        }

        v29 = [NSString stringWithFormat:@"%@_ENABLED_TEXT", @"BACKGROUNDLOCATION"];
        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v25 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v25 = BatteryUILocalization(v29);
        }

        v26 = [NSString stringWithFormat:v25, v5];
        [*(a1 + 32) setInfoText:v26];

        v7 = 0;
        v14 = @"bglocation";
        break;
      case 7:
        v4 = [*(a1 + 40) dataDict];
        v5 = [v4 objectForKeyedSubscript:@"PLBatteryUIInsightAppNameKey"];

        v6 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
        v7 = [v6 mutableCopy];

        if (!v7)
        {
          v7 = objc_opt_new();
        }

        v8 = [*(a1 + 40) identifier];
        [v7 setObject:&__kCFBooleanFalse forKey:v8];

        CFPreferencesSetAppValue(@"KeepAppsUpToDateAppList", v7, @"com.apple.mt");
        CFPreferencesAppSynchronize(@"com.apple.mt");
        v9 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(v9, @"kKeepAppsUpToDateEnabledChangedNotification", 0, 0, 1u);
        v29 = [NSString stringWithFormat:@"%@_ENABLED_TEXT", @"BACKGROUNDCPU"];
        if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v10 = _CFPreferencesCopyValueWithContainer()) == 0))
        {
          v10 = BatteryUILocalization(v29);
        }

        v11 = [NSString stringWithFormat:v10, v5];
        [*(a1 + 32) setInfoText:v11];

        v13 = 0;
        v14 = @"bgprocessing";
        break;
      default:
LABEL_31:
        [*(a1 + 32) setInfoText:@"Enabled"];
        v14 = 0;
        v5 = 0;
        v13 = 0;
        v7 = 0;
        v29 = 0;
        break;
    }
  }

  LODWORD(v12) = 1.0;
  [*(a1 + 32) setActivationPercent:v12];
  v28 = [@"com.apple.batteryui.suggestions." stringByAppendingString:v14];
  [v28 stringByAppendingString:@".action"];
  ADClientAddValueForScalarKey();
}

void sub_A48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A4B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_A4CC(uint64_t a1)
{
  v2 = [*(a1 + 32) backend];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 backend];
    [v4 runQuery];

    v5 = [*(a1 + 32) backend];
    [v5 queryResult];
  }

  else
  {
    v5 = [v3 functionName];
    PLBatteryUsageUIQuery();
  }
  v6 = ;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 48);

  return dispatch_semaphore_signal(v9);
}

void sub_A714(id a1)
{
  qword_187B60 = objc_alloc_init(BatteryUsageQueryModule);

  _objc_release_x1();
}

void sub_B478(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queryPayload];
  v8 = [v7 objectForKeyedSubscript:v5];

  v10 = BUILogCommon(v9);
  v11 = v10;
  if (!v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10FBC8();
    }

    goto LABEL_50;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10F904();
  }

  v13 = BUILogCommon(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10F974();
  }

  v15 = BUILogCommon(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10F9E4();
  }

  v16 = [v8 objectForKeyedSubscript:@"enum"];
  v17 = [v16 intValue];

  v18 = [v8 objectForKeyedSubscript:@"start"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v8 objectForKeyedSubscript:@"end"];
  [v21 doubleValue];
  v23 = v22;

  v24 = v23 - v20;
  v26 = BUILogCommon(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_10FA54();
  }

  if (v17 == 6)
  {
    v31 = BUILogCommon(v27);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v50 = 6;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "paused charging state, type=%ld", buf, 0xCu);
    }

    v27 = [a1[5] setObject:v6 forKeyedSubscript:@"PLBatteryUIPausedChargingKey"];
  }

  else if (v17 == 1)
  {
    v28 = BUILogCommon(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Last charge level!", buf, 2u);
    }

    v29 = a1[5];
    v30 = @"PLBatteryUILastChargeKey";
    goto LABEL_15;
  }

  if (v24 != 86400.0)
  {
    if (v17 == 2)
    {
      v11 = v6;
      v38 = BUILogCommon(v11);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_10FAD8(v11);
      }

      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_BBA4;
      v45[3] = &unk_163F28;
      v46 = a1[7];
      [v11 enumerateObjectsUsingBlock:v45];
      v37 = v46;
    }

    else
    {
      if (v17 != 5)
      {
        goto LABEL_51;
      }

      v11 = [v6 objectForKeyedSubscript:@"PLBatteryUIGraphByBucket"];
      v36 = BUILogCommon(v11);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_10FB50(v11);
      }

      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_BB00;
      v47[3] = &unk_163F00;
      v48 = a1[7];
      [v11 enumerateObjectsUsingBlock:v47];
      v37 = v48;
    }

    goto LABEL_50;
  }

  if (v17 > 4)
  {
    if (v17 != 5)
    {
      if (v17 != 7)
      {
        goto LABEL_51;
      }

      v29 = a1[6];
      v30 = @"PLBatteryUIChargingStateIntervalsDictKey";
      goto LABEL_15;
    }

    v39 = BUILogCommon(v27);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "24 hour usage times", buf, 2u);
    }

    v11 = +[NSMutableDictionary dictionary];
    v40 = [v6 objectForKeyedSubscript:@"PLBatteryUIGraphByBucket"];
    v41 = BUILogCommon(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v40 count];
      *buf = 134217984;
      v50 = v42;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Got %lu screen on times", buf, 0xCu);
    }

    v44 = BUILogCommon(v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v40;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, " %@", buf, 0xCu);
    }

    [v11 setObject:v40 forKeyedSubscript:@"PLBatteryUIGraphHourly"];
    [a1[6] setObject:v11 forKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];

LABEL_50:
    goto LABEL_51;
  }

  if (v17)
  {
    if (v17 != 4)
    {
      goto LABEL_51;
    }

    v11 = v6;
    v32 = BUILogCommon(v11);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v11 count];
      *buf = 134217984;
      v50 = v33;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "got %lu UISoC levels", buf, 0xCu);
    }

    v35 = BUILogCommon(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v11;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, " %@", buf, 0xCu);
    }

    [a1[6] setObject:v11 forKeyedSubscript:@"PLBatteryUIBatteryLevelsKey"];
    goto LABEL_50;
  }

  v29 = a1[6];
  v30 = @"PLBatteryUIChargingIntervalsKey";
LABEL_15:
  [v29 setObject:v6 forKeyedSubscript:v30];
LABEL_51:
}

void sub_BB00(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 objectAtIndex:a3];
  v6 = +[NSMutableDictionary dictionary];
  [v6 setObject:v5 forKeyedSubscript:@"PLBatteryUIGraphTotal"];

  [v7 setObject:v6 forKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
}

void sub_BBA4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 objectAtIndex:a3];
  v6 = [v5 objectForKeyedSubscript:@"PLBatteryUIEnergyKey"];

  [v7 setObject:v6 forKeyedSubscript:@"PLBatteryUIEnergyKey"];
}

void sub_CB6C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_EA98(id a1, BOOL a2)
{
  if (a2)
  {
    AnalyticsSendEventLazy();
  }
}

id sub_F1D4(uint64_t a1)
{
  v2 = [*(a1 + 32) interactionAnalyticsDictionary];
  v3 = [v2 copy];

  v4 = objc_opt_new();
  [*(a1 + 32) setInteractionAnalyticsDictionary:v4];

  return v3;
}

void sub_F858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_F894(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAsRecommended];
}

void sub_F8D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained closeRCLCard];
}

id sub_FA08(uint64_t a1)
{
  v5[0] = @"value";
  [*(a1 + 32) getSegmentedControlValue];
  v2 = [NSNumber numberWithInt:v1];
  v5[1] = @"action";
  v6[0] = v2;
  v6[1] = @"xTapped";
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

uint64_t sub_109CC(uint64_t a1)
{
  [*(a1 + 32) setChargeLimit:100];

  return AnalyticsSendEventLazy();
}

NSDictionary *__cdecl sub_10A0C(id a1)
{
  v3[0] = @"disableTapped";
  v3[1] = @"action";
  v4[0] = &off_1735C8;
  v4[1] = @"disabled";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];

  return v1;
}

uint64_t sub_10AA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 getSegmentedControlValue];
  [v1 moveToValue:v2];

  return AnalyticsSendEventLazy();
}

NSDictionary *__cdecl sub_10AFC(id a1)
{
  v3[0] = @"cancelTapped";
  v3[1] = @"action";
  v4[0] = &off_1735C8;
  v4[1] = @"cancelled";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];

  return v1;
}

void sub_10B98(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) defaults];
  [*(a1 + 32) getSegmentedControlValue];
  [v4 setDouble:@"PRIOR_MCL_LIMIT_KEY" forKey:v5];

  v6 = [*(a1 + 32) chargingClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10CCC;
  v7[3] = &unk_164088;
  objc_copyWeak(&v8, &location);
  [v6 temporarilyDisableMCLWithHandler:v7];

  AnalyticsSendEventLazy();
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void sub_10CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10CCC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained BHUILog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_11063C();
    }
  }

  v8 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10DD4;
  block[3] = &unk_164020;
  objc_copyWeak(&v10, (a1 + 32));
  dispatch_after(v8, &_dispatch_main_q, block);
  objc_destroyWeak(&v10);
}

void sub_10DD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

NSDictionary *__cdecl sub_10E14(id a1)
{
  v3[0] = @"tempDisableTapped";
  v3[1] = @"action";
  v4[0] = &off_1735C8;
  v4[1] = @"temporarilyDisabled";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];

  return v1;
}

void sub_111F4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_12D9C(id a1)
{
  v1 = objc_opt_new();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 copyPropertyForKey:@"AABConstraints"];
    if (v3)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v5 = [v3 objectForKeyedSubscript:@"L0b"];
        v6 = v5;
        if (v5)
        {
          [v5 doubleValue];
          *&qword_182B28 = v7 * 1.15;
          v8 = +[BatteryUIResourceClass get_log_handle_bui];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            sub_1107C0(v6, v8);
          }
        }

        else
        {
          v8 = BUILogCommon(0);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_11084C(v8, v23, v24, v25, v26, v27, v28, v29);
          }
        }
      }

      else
      {
        v6 = BUILogCommon(isKindOfClass);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_110748(v6, v16, v17, v18, v19, v20, v21, v22);
        }
      }
    }

    else
    {
      v6 = BUILogCommon(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1108C4(v6, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  else
  {
    v3 = BUILogCommon(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_11093C(v3);
    }
  }
}

void sub_131E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) suggestionHeaderSpecifier];
  [v1 refreshCellContentsWithSpecifier:v2];
}

void sub_13D24(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

const __CFString *batteryGraphErrorString(int a1)
{
  v1 = @"Not Enough Data Points";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"Negative Power Value";
  }

  else
  {
    return v1;
  }
}

int64_t sub_14270(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndexedSubscript:0];
  v6 = [v4 objectAtIndexedSubscript:0];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_15568(uint64_t a1)
{
  v2 = [*(a1 + 32) BHUILog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1109E8();
  }

  v3 = [*(a1 + 32) chargingClient];
  v8 = 0;
  v4 = [v3 disableSmartCharging:&v8];
  v5 = v8;

  v6 = *(a1 + 32);
  if (!v4 || v5)
  {
    v7 = [v6 BHUILog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_110A1C();
    }
  }

  else
  {
    [v6 setState:2];
  }

  AnalyticsSendEventLazy();
  [*(a1 + 32) reloadSpecifiers];
}

id sub_15678(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
  {
    sub_110A84();
  }

  AnalyticsSendEventLazy();
  [*(a1 + 40) setState:0];
  return [*(a1 + 40) reloadSpecifiers];
}

void sub_156EC(uint64_t a1)
{
  v2 = [*(a1 + 32) BHUILog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_110AB8();
  }

  v3 = [*(a1 + 32) chargingClient];
  v8 = 0;
  v4 = [v3 temporarilyDisableSmartCharging:&v8];
  v5 = v8;

  v6 = *(a1 + 32);
  if (!v4 || v5)
  {
    v7 = [v6 BHUILog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_110AEC();
    }
  }

  else
  {
    [v6 setState:2];
  }

  AnalyticsSendEventLazy();
  [*(a1 + 32) reloadSpecifiers];
}

void sub_160E8(id a1, BOOL a2)
{
  if (a2)
  {
    AnalyticsSendEventLazy();
  }
}

void sub_16824(id a1, BOOL a2)
{
  if (a2)
  {
    AnalyticsSendEventLazy();
  }
}

void sub_16D94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User disabled clean energy charging", buf, 2u);
  }

  v5 = *(a1 + 40);
  v12 = 0;
  v6 = [v5 disableCEC:&v12];
  v7 = v12;
  v8 = v7;
  v9 = *(a1 + 32);
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Clean energy charging disabled", v11, 2u);
    }
  }

  else if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_110EDC();
  }

  [*(a1 + 48) reloadSpecifiers];
}

id sub_16EA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "User left clean energy charging on", v4, 2u);
  }

  return [*(a1 + 40) reloadSpecifiers];
}

void sub_16F14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User temporarily disabled clean energy charging", buf, 2u);
  }

  v5 = *(a1 + 40);
  v10 = 0;
  v6 = [v5 temporarilyDisableCEC:&v10];
  v7 = v10;
  [*(a1 + 48) reloadSpecifiers];
  v8 = *(a1 + 32);
  if (!v6 || v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_110F44();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Clean energy charging temporarily disabled", v9, 2u);
  }
}

void sub_17F58(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

id sub_18564(uint64_t a1)
{
  v4 = @"state";
  v1 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_18AEC(uint64_t a1)
{
  v4 = @"state";
  v1 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) batteryHealthServiceState]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_18D10(id a1, BOOL a2)
{
  if (a2)
  {
    ADClientAddValueForScalarKey();

    AnalyticsSendEventLazy();
  }
}

void sub_18E14(id a1, BOOL a2, NSError *a3)
{
  ADClientAddValueForScalarKey();

  AnalyticsSendEventLazy();
}

void sub_18F60(id a1, BOOL a2)
{
  if (a2)
  {
    ADClientAddValueForScalarKey();

    AnalyticsSendEventLazy();
  }
}

void sub_1A14C(id a1, BOOL a2, NSError *a3)
{
  ADClientAddValueForScalarKey();

  AnalyticsSendEventLazy();
}

void sub_1A38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 + 48));
  _Block_object_dispose((v18 - 104), 8);
  objc_destroyWeak((v18 - 72));
  _Unwind_Resume(a1);
}

void sub_1A3D8(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v2 startSpinnerInCell:WeakRetained];
  }
}

void sub_1A440(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A560;
  block[3] = &unk_1644C8;
  block[4] = *(a1 + 32);
  objc_copyWeak(&v7, (a1 + 40));
  objc_copyWeak(&v8, (a1 + 48));
  dispatch_async(&_dispatch_main_q, block);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained BHUILog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1116B4();
    }
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
}

void sub_1A544(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1A560(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained stopSpinnerInCell:v2];
}

void sub_1AFA0(id a1, BOOL a2, NSError *a3)
{
  ADClientAddValueForScalarKey();

  AnalyticsSendEventLazy();
}

void sub_1C33C(id a1, BOOL a2)
{
  if (a2)
  {
    AnalyticsSendEventLazy();
  }
}

id sub_1CC3C(uint64_t a1)
{
  v4 = @"state";
  v1 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) perfManagementState]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_1E0B8(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_1E604(id a1, BOOL a2)
{
  if (a2)
  {
    AnalyticsSendEventLazy();
  }
}

void sub_1EC94(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_187B78;
  qword_187B78 = v1;

  [qword_187B78 setFormattingContext:2];
  [qword_187B78 setLocalizedDateFormatFromTemplate:@"MMMM yyyy"];
  v3 = [NSTimeZone timeZoneWithName:@"UTC"];
  [qword_187B78 setTimeZone:v3];
}

void sub_1FC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v28 - 112));
  _Unwind_Resume(a1);
}

void sub_1FC90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained smartChargingClient];
  v9 = 0;
  v4 = [v3 disableMCL:&v9];
  v5 = v9;

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  if (!v4 || v5)
  {
    v8 = [v6 BHUILog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_111E84();
    }
  }

  else
  {
    [v6 reloadSpecifiers];
    v8 = v7;
  }
}

void sub_1FD64(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifierForID:@"MANUAL_CHARGE_LIMIT_TOGGLE_IDENTIFIER"];
  [v2 animateSwitchSpecifier:v1 toState:1];
}

void sub_1FDE0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained smartChargingClient];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1FEBC;
  v6[3] = &unk_164088;
  objc_copyWeak(&v7, (a1 + 32));
  [v5 temporarilyDisableMCLWithHandler:v6];

  objc_destroyWeak(&v7);
}

void sub_1FEBC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained BHUILog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_11063C();
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1FFAC;
  block[3] = &unk_164020;
  objc_copyWeak(&v9, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v9);
}

void sub_1FFAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_201C0(id a1, BOOL a2)
{
  if (a2)
  {
    AnalyticsSendEventLazy();
  }
}

id sub_20404(uint64_t a1)
{
  v2 = [*(a1 + 32) isAuthSpinner];
  v3 = [*(a1 + 32) BHUILog];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      sub_112024();
    }

    ADClientAddValueForScalarKey();
    AnalyticsSendEventLazy();
  }

  else
  {
    if (v4)
    {
      sub_111FF0();
    }
  }

  return [*(a1 + 32) reloadSpecifiersFromSpinner];
}

id sub_2072C(uint64_t a1)
{
  v4 = @"time";
  v1 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_20BD8(uint64_t a1)
{
  v2 = [*(a1 + 32) BHUILog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_112200();
  }

  result = [BatteryUIResourceClass getManagementStateWithSync:1];
  if (result != 3)
  {
    v4 = [*(a1 + 32) BHUILog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_112234();
    }

    [*(a1 + 32) setPerfManagementState:1];
    return [*(a1 + 32) reloadSpecifiers];
  }

  return result;
}

void sub_223BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User disabled smart charging", buf, 2u);
  }

  v5 = *(a1 + 40);
  v12 = 0;
  v6 = [v5 disableSmartCharging:&v12];
  v7 = v12;
  v8 = v7;
  v9 = *(a1 + 32);
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Smart charging disabled", v11, 2u);
    }

    ADClientAddValueForScalarKey();
    ADClientSetValueForScalarKey();
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_10FF60();
    }

    ADClientAddValueForScalarKey();
  }

  AnalyticsSendEventLazy();
  [*(a1 + 48) reloadSpecifiers];
}

id sub_22538(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "User left smart charging on", v4, 2u);
  }

  ADClientAddValueForScalarKey();
  AnalyticsSendEventLazy();
  return [*(a1 + 40) reloadSpecifiers];
}

void sub_225D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User temporarily disabled smart charging", buf, 2u);
  }

  v5 = *(a1 + 40);
  v10 = 0;
  v6 = [v5 temporarilyDisableSmartCharging:&v10];
  v7 = v10;
  [*(a1 + 48) reloadSpecifiers];
  v8 = *(a1 + 32);
  if (!v6 || v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10FEF0();
    }

    ADClientAddValueForScalarKey();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Smart charging temporarily disabled", v9, 2u);
    }

    ADClientAddValueForScalarKey();
    ADClientSetValueForScalarKey();
  }

  AnalyticsSendEventLazy();
}

void sub_22E68(id a1, BOOL a2)
{
  if (a2)
  {
    AnalyticsSendEventLazy();
  }
}

void sub_233E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User disabled clean energy charging", buf, 2u);
  }

  v5 = *(a1 + 40);
  v12 = 0;
  v6 = [v5 disableCEC:&v12];
  v7 = v12;
  v8 = v7;
  v9 = *(a1 + 32);
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Clean energy charging disabled", v11, 2u);
    }
  }

  else if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
  {
    sub_10FF60();
  }

  [*(a1 + 48) reloadSpecifiers];
}

id sub_234F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "User left clean energy charging on", v4, 2u);
  }

  return [*(a1 + 40) reloadSpecifiers];
}

void sub_23564(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User temporarily disabled clean energy charging", buf, 2u);
  }

  v5 = *(a1 + 40);
  v10 = 0;
  v6 = [v5 temporarilyDisableCEC:&v10];
  v7 = v10;
  [*(a1 + 48) reloadSpecifiers];
  v8 = *(a1 + 32);
  if (!v6 || v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_112654();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Clean energy charging temporarily disabled", v9, 2u);
  }
}

void sub_23A14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 8u);
}

void sub_24160(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 textColor];
  v7 = +[UIColor systemGreenColor];

  if (v6 == v7)
  {
    [v13 floatValue];
    v9 = v8;
    v10 = [*(a1 + 32) slider];
    [v10 value];
    if (v9 == v11)
    {
      +[UIColor labelColor];
    }

    else
    {
      +[UIColor systemGrayColor];
    }
    v12 = ;
    [v5 setTextColor:v12];
  }
}

void sub_24D00(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"PLSegmentedLabelSliderCellForceRemoveHighlightKey"];
  v3 = v2;
  if (v2 && [v2 BOOLValue])
  {
    [*(a1 + 32) setProperty:&__kCFBooleanFalse forKey:@"PLSegmentedLabelSliderCellForceRemoveHighlightKey"];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained removeHighlight:1];
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"PLSegmentedLabelSliderCellMoveToValueKey"];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
    [*(a1 + 32) setProperty:0 forKey:@"PLSegmentedLabelSliderCellMoveToValueKey"];
    v9 = objc_loadWeakRetained((a1 + 48));
    LODWORD(v10) = v8;
    [v9 sliderValueChangedToValue:v10];
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v13.receiver = *(a1 + 40);
  v13.super_class = PLSegmentedLabelSliderCell;
  objc_msgSendSuper2(&v13, "reloadWithSpecifier:animated:", v11, v12);
}

void sub_24FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 text];
  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
  [v4 sizeWithFont:v5];
  v7 = v6;

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 24);
  if (v9 < v7)
  {
    v9 = v7;
  }

  *(v8 + 24) = v9;
}

void sub_2507C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 intValue];
  if (v6 != [*(a1 + 32) minValue])
  {
    v7 = [v8 intValue];
    if (v7 != [*(a1 + 32) maxValue])
    {
      [v5 setHidden:*(a1 + 40)];
    }
  }
}

void sub_256E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2570C(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 specifier];
  [v2 updateLabelsWithSpecifier:v1];
}

void sub_25DF0(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_1126F8();
    }
  }
}

void sub_27CF4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_187B98;
  qword_187B98 = v1;

  [qword_187B98 setUnitsStyle:2];
  v3 = qword_187B98;

  [v3 setAllowedUnits:64];
}

void sub_28B4C(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 120) = 0;
  v10 = v3;
  v4 = [v3 objectForKeyedSubscript:@"ModelData"];

  if (v4)
  {
    v5 = [v10 objectForKeyedSubscript:@"ModelData"];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKeyedSubscript:@"ModelGraphArray"];
    [*(a1 + 32) setGraphArray:v7];
  }

  v8 = [*(a1 + 32) activityIndicator];
  [v8 stopAnimating];

  v9 = [*(a1 + 32) activityIndicator];
  [v9 removeFromSuperview];
}

id PLLogUrsaUtilities(uint64_t a1)
{
  if (qword_187BB0 != -1)
  {
    sub_112E6C();
  }

  v2 = qword_187BA8;

  return v2;
}

void sub_28F4C(id a1)
{
  qword_187BA8 = os_log_create("com.apple.powerlog", "Ursa");

  _objc_release_x1();
}

void sub_29860(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id createFollowUpTitle()
{
  v0 = objc_alloc_init(UILabel);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setNumberOfLines:0];
  [v0 setLineBreakMode:0];
  v1 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v0 setFont:v1];

  v2 = +[PSListController appearance];
  v3 = [v2 textColor];
  if (v3)
  {
    [v0 setTextColor:v3];
  }

  else
  {
    v4 = +[UIColor blackColor];
    [v0 setTextColor:v4];
  }

  LODWORD(v5) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v5];

  return v0;
}

id createFollowUpSubtitle()
{
  v0 = objc_alloc_init(UILabel);
  v1 = +[PSListController appearance];
  v2 = [v1 textColor];
  if (v2)
  {
    [v0 setTextColor:v2];
  }

  else
  {
    v3 = +[UIColor blackColor];
    [v0 setTextColor:v3];
  }

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setNumberOfLines:0];
  [v0 setLineBreakMode:0];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v0 setFont:v4];

  LODWORD(v5) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v5];

  return v0;
}

id createFollowUpTitleInformation()
{
  v0 = objc_alloc_init(UILabel);
  v1 = +[UIColor _secondaryLabelColor];
  [v0 setTextColor:v1];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setNumberOfLines:0];
  [v0 setLineBreakMode:0];
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v2];

  LODWORD(v3) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];

  return v0;
}

void sub_2BD48(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectForKeyedSubscript:@"ModelData"];

  if (v3)
  {
    v4 = [v9 objectForKeyedSubscript:@"ModelData"];
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 objectForKeyedSubscript:@"ModelGraphArray"];
    v7 = *(a1 + 32);
    v8 = *(v7 + 264);
    *(v7 + 264) = v6;
  }
}

void sub_2BE08(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 environment];

  v4 = [v3 objectForKeyedSubscript:@"BUI_UNIT_TEST_PATH"];
  v5 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v21 = 138412290;
    v22 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Reading from sample plist: %@", &v21, 0xCu);
  }

  v6 = [NSURL fileURLWithPath:v4];
  v7 = [NSDictionary dictionaryWithContentsOfURL:v6];

  v8 = [*(a1 + 32) currentDictionary];
  if (!v8 || (v9 = v8, [*(a1 + 32) currentGraphDictionary], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
  {
    [*(a1 + 32) setUpBatteryUIDictionary:v7];
    v11 = *(a1 + 32);
    v12 = [v11 currentDictionary];
    v13 = [v11 generateBatteryEntrySpecifiers:v12];
    v14 = *(a1 + 32);
    v15 = *(v14 + 224);
    *(v14 + 224) = v13;

    v16 = *(a1 + 32);
    v17 = [v16 currentDictionary];
    v18 = [v17 objectForKeyedSubscript:@"PLBatteryUISuggestionArrayKey"];
    [v16 generateSuggestionsEntryObjects:v18];

    [*(a1 + 32) removeSpinnerSpecifers];
    v19 = +[NSMutableDictionary dictionary];
    [*(a1 + 32) setTableCellHeights:v19];

    v20 = +[NSMutableDictionary dictionary];
    [*(a1 + 32) setTableCellHeightEstimated:v20];

    [*(a1 + 32) reloadSpecifiers];
    [*(a1 + 32) setWaitingForResponse:0];
  }
}

void sub_2C064(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2C124;
  block[3] = &unk_164B78;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_2C124(uint64_t a1)
{
  v2 = [*(a1 + 32) currentDictionary];
  if (!v2 || (v3 = v2, [*(a1 + 32) currentGraphDictionary], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"PLBatteryUIXPCVersionKey"];
    v6 = +[BatteryUIResourceClass get_log_handle_bui];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) allKeys];
      *buf = 134217984;
      v33 = [v7 count];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Keys count in battery breakdown response: %lu", buf, 0xCu);
    }

    if (v5)
    {
      [v5 doubleValue];
      if (v8 == 1.0)
      {
        v10 = mach_absolute_time();
        v11 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [*(a1 + 40) objectForKeyedSubscript:@"Graph"];
          v13 = [v12 objectForKeyedSubscript:@"PLBatteryUIGraphEndDate"];
          *buf = 138412290;
          v33 = v13;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "End date: %@", buf, 0xCu);
        }

        [*(a1 + 32) setUpBatteryUIDictionary:*(a1 + 40)];
        v14 = *(a1 + 32);
        v15 = [v14 currentDictionary];
        v16 = [v14 generateBatteryEntrySpecifiers:v15];
        v17 = *(a1 + 32);
        v18 = *(v17 + 224);
        *(v17 + 224) = v16;

        v19 = [*(a1 + 32) currentDictionary];
        v9 = [v19 objectForKeyedSubscript:@"PLBatteryUISuggestionArrayKey"];

        [*(a1 + 32) generateSuggestionsEntryObjects:v9];
        +[BatteryUIResourceClass containerPath];
        v20 = _CFPreferencesCopyValueWithContainer();
        if (+[PLModelingUtilities internalBuild])
        {
          _os_feature_enabled_impl();
        }

        if (v20)
        {
          [v20 BOOLValue];
        }

        [BatteryUIResourceClass millisecondsFromMachTime:v10];
        v22 = v21;
        v23 = [BatteryUIResourceClass millisecondsFromMachTime:*(a1 + 48)];
        v25 = (v22 - v24);
        v26 = BUILogCommon(v23);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v33 = v25;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Time taken to get the xpc response: %llu", buf, 0xCu);
        }

        ADClientPushValueForDistributionKey();
        v27 = objc_opt_new();
        v28 = [NSNumber numberWithUnsignedLongLong:v25];
        [v27 setObject:v28 forKeyedSubscript:@"elapsedTime"];

        v30[5] = _NSConcreteStackBlock;
        v30[6] = 3221225472;
        v30[7] = sub_2C5C0;
        v30[8] = &unk_163870;
        v31 = v27;
        v29 = v27;
        AnalyticsSendEventLazy();
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_2C5C8;
        v30[3] = &unk_163FF8;
        v30[4] = *(a1 + 32);
        dispatch_async(&_dispatch_main_q, v30);
      }

      else
      {
        v9 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Battery UI Version Mismatch...", buf, 2u);
        }
      }
    }
  }
}

void sub_2C5C8(uint64_t a1)
{
  [*(a1 + 32) removeSpinnerSpecifers];
  v2 = +[NSMutableDictionary dictionary];
  [*(a1 + 32) setTableCellHeights:v2];

  v3 = +[NSMutableDictionary dictionary];
  [*(a1 + 32) setTableCellHeightEstimated:v3];

  v4 = BUILogLoadTimes([*(a1 + 32) reloadSpecifiers]);
  if (os_signpost_enabled(v4))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BUILoadTime", "BUI Specifiers loaded", v6, 2u);
  }

  [*(a1 + 32) setWaitingForResponse:0];
  v5 = +[NSDate now];
  [*(a1 + 32) setLastBatteryBreakdownQueryTime:v5];
}

void sub_2CE44(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"PLBatteryUIDailyCoalescedBreakdown"];
  v3 = objc_opt_new();
  [*(a1 + 40) setCoalescedBreakdownDictionary:v3];

  v4 = [*(a1 + 40) coalescedBreakdownDictionary];
  [v4 setObject:v2 forKeyedSubscript:@"PLBatteryUIDailyCoalescedBreakdown"];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"PLBatteryUIUsageSummaryKey"];

  if (v5)
  {
    v6 = [*(a1 + 40) coalescedBreakdownDictionary];
    v25 = @"PLBatteryUIUsageSummaryKey";
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"PLBatteryUIUsageSummaryKey"];
    v26 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v6 addEntriesFromDictionary:v8];

    v9 = [_TtC14BatteryUsageUI26UsageSummaryViewController createControllerWith:*(*(a1 + 40) + 480)];
    [*(a1 + 40) setUsageSummaryViewTableViewController:v9];
  }

  v10 = [*(a1 + 40) coalescedBreakdownDictionary];
  v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIDailyCoalescedBreakdown"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) objectForKeyedSubscript:{@"PLBatteryUIErrorCodeKey", v20}];
        v18 = [v17 intValue];

        if (v18 != 1)
        {
          v19 = 0;
          goto LABEL_13;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_13:

  *(*(a1 + 40) + 313) = v19;
}

void sub_2D0CC(uint64_t a1)
{
  if (+[PLModelingUtilities internalBuild])
  {
    if (_os_feature_enabled_impl())
    {
      v2 = objc_opt_new();
      v7 = @"PLBatteryUIUrsaIssuesKey";
      v3 = [*(a1 + 32) objectForKeyedSubscript:@"Breakdown"];
      v4 = [v3 objectForKeyedSubscript:@"PLBatteryUIUrsaIssuesKey"];
      v8 = v4;
      v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      [v2 addEntriesFromDictionary:v5];

      v6 = [_TtC14BatteryUsageUI22InternalViewController createControllerWith:v2];
      [*(a1 + 40) setInternalViewController:v6];
    }
  }
}

uint64_t sub_2E118(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 propertyForKey:@"PLBatteryUIAppEnergyValueKey"];
  v8 = [v6 propertyForKey:@"PLBatteryUIAppEnergyValueKey"];
  v9 = [v8 compare:v7];
  if (!v9)
  {
    v10 = *(a1 + 32);
    v11 = [v5 propertyForKey:@"PLBatteryUIAppQualifiersKey"];
    v12 = [v10 appQualifiers:v11 containsQualifier:11];

    v13 = *(a1 + 32);
    v14 = [v6 propertyForKey:@"PLBatteryUIAppQualifiersKey"];
    v15 = [v13 appQualifiers:v14 containsQualifier:11];

    if (!v12 || v15)
    {
      if (v12 & 1 | ((v15 & 1) == 0))
      {
        v16 = [v5 propertyForKey:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v16 doubleValue];
        v18 = v17;
        v19 = [v5 propertyForKey:@"PLBatteryUIAppBackgroundRuntimeKey"];
        [v19 doubleValue];
        v21 = [NSNumber numberWithDouble:v18 + v20];

        v22 = [v6 propertyForKey:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v22 doubleValue];
        v24 = v23;
        v25 = [v6 propertyForKey:@"PLBatteryUIAppBackgroundRuntimeKey"];
        [v25 doubleValue];
        v27 = [NSNumber numberWithDouble:v24 + v26];

        v9 = [v27 compare:v21];
      }

      else
      {
        v9 = -1;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

void sub_2EF24(uint64_t a1)
{
  v2 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_113B60();
  }

  v3 = [*(a1 + 40) specifierAtIndex:{objc_msgSend(*(a1 + 40), "indexOfSpecifierID:", @"LOW_POWER_MODE_IDENTIFIER"}];
  v4 = *(a1 + 40);
  v5 = [v4 getBatterySaverMode:v3];
  [v4 animateSwitchSpecifier:v3 toState:{objc_msgSend(v5, "BOOLValue")}];

  [*(a1 + 40) reloadSpecifierID:@"LOW_POWER_MODE_IDENTIFIER" animated:0];
  [*(a1 + 40) reloadSpecifierID:@"POWER_MODE_SPECIFIER_IDENTIFIER" animated:0];
}

void sub_328A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_328C8(uint64_t a1)
{
  v2 = *(a1 + 48);
  switch(v2)
  {
    case 2:
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v4 = [WeakRetained chargingClient];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_32BB0;
      v5[3] = &unk_164BE8;
      v5[4] = *(a1 + 32);
      [v4 temporarilyDisableSmartChargingWithHandler:v5];
      break;
    case 7:
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v4 = [WeakRetained chargingClient];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_32B0C;
      v6[3] = &unk_164BE8;
      v6[4] = *(a1 + 32);
      [v4 temporarilyDisableCECWithHandler:v6];
      break;
    case 8:
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v4 = [WeakRetained chargingClient];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_32A68;
      v7[3] = &unk_164BE8;
      v7[4] = *(a1 + 32);
      [v4 temporarilyDisableMCLWithHandler:v7];
      break;
    default:
      return;
  }
}

void sub_32A68(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    v7 = BUILogCommon(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_114174();
    }
  }

  v8 = [*(a1 + 32) stateProvider];
  [v8 refreshData];

  AnalyticsSendEventLazy();
}

void sub_32B0C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    v7 = BUILogCommon(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1141DC();
    }
  }

  v8 = [*(a1 + 32) stateProvider];
  [v8 refreshData];

  AnalyticsSendEventLazy();
}

void sub_32BB0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    v7 = BUILogCommon(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_114244();
    }
  }

  v8 = [*(a1 + 32) stateProvider];
  [v8 refreshData];

  AnalyticsSendEventLazy();
}

void sub_33268(uint64_t a1)
{
  v6 = [*(a1 + 32) specifierForID:@"OVERRIDE_CARD_IDENTIFIER"];
  if (v6)
  {
    v2 = [v6 objectForKeyedSubscript:@"OVERRIDE_CARD_TYPE_KEY"];
    v3 = [v2 shortValue];
    v4 = *(a1 + 40);

    if (v4 == v3)
    {
      goto LABEL_7;
    }

    [*(a1 + 32) removeSpecifierID:@"OVERRIDE_CARD_IDENTIFIER" animated:0];
  }

  v5 = [*(a1 + 32) setUpOverrideCardSpecifierWith:*(a1 + 40)];
  if (v5)
  {
    [*(a1 + 32) insertSpecifier:v5 afterSpecifierID:@"CHARGING_MODULE_IDENTIFIER" animated:1];
  }

LABEL_7:
}

void sub_33554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_33574(uint64_t a1)
{
  v2 = +[_PMLowPowerMode sharedInstance];
  v3 = kPMLPMSourceSettings;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_33660;
  v4[3] = &unk_164088;
  objc_copyWeak(&v5, (a1 + 32));
  [v2 setPowerMode:1 fromSource:v3 withCompletion:v4];
  AnalyticsSendEventLazy();
  objc_destroyWeak(&v5);
}

void sub_33660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateProvider];
  [v1 refreshData];
}

void sub_33788(uint64_t a1)
{
  v2 = [*(a1 + 32) specifierForID:@"LPM_ACTION_CARD_IDENTIFIER"];

  if (!v2)
  {
    v3 = [*(a1 + 32) setUpCardSpecifierForLPM];
    if (v3)
    {
      [*(a1 + 32) insertSpecifier:v3 afterSpecifierID:@"CHARGING_MODULE_IDENTIFIER" animated:1];
    }

    _objc_release_x1();
  }
}

id sub_33898(uint64_t a1)
{
  [*(a1 + 32) removeSpecifierID:@"OVERRIDE_CARD_IDENTIFIER" animated:1];
  v2 = *(a1 + 32);

  return [v2 removeSpecifierID:@"LPM_ACTION_CARD_IDENTIFIER" animated:1];
}

void sub_33960(uint64_t a1)
{
  v2 = BUILogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1142AC(a1);
  }

  v3 = [*(a1 + 32) stateProvider];
  v4 = [v3 shouldShowLowPowerModeCard];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 showActionCardForLPM];
  }

  else
  {
    [v5 removeSpecifierID:@"LPM_ACTION_CARD_IDENTIFIER" animated:1];
  }

  v6 = [*(a1 + 32) stateProvider];
  v7 = [v6 shouldShowOverrideCard];

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 stateProvider];
    [v8 showActionCardForType:{objc_msgSend(v9, "chargingState")}];
  }

  else
  {
    [v8 removeSpecifierID:@"OVERRIDE_CARD_IDENTIFIER" animated:1];
  }
}

void sub_36A70(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectForKeyedSubscript:@"ModelData"];

  if (v3)
  {
    v4 = [v9 objectForKeyedSubscript:@"ModelData"];
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 objectForKeyedSubscript:@"ModelGraphArray"];
    v7 = *(a1 + 32);
    v8 = *(v7 + 264);
    *(v7 + 264) = v6;
  }
}

void sub_37250(id a1)
{
  +[BatteryUIResourceClass containerPath];
  qword_187BC0 = _CFPreferencesCopyValueWithContainer();

  _objc_release_x1();
}

void sub_37318(id a1)
{
  +[BatteryUIResourceClass containerPath];
  qword_187BD0 = _CFPreferencesCopyValueWithContainer();

  _objc_release_x1();
}

void sub_374E0(id a1)
{
  +[BatteryUIResourceClass containerPath];
  qword_187BE0 = _CFPreferencesCopyValueWithContainer();

  _objc_release_x1();
}

void sub_3759C(id a1)
{
  +[BatteryUIResourceClass containerPath];
  qword_187BF0 = _CFPreferencesCopyValueWithContainer();

  _objc_release_x1();
}

void sub_37CB8(id a1)
{
  v1 = MKBUserTypeDeviceMode();
  if (v1)
  {
    v5 = v1;
    v2 = [v1 objectForKeyedSubscript:kMKBDeviceModeKey];
    v3 = [v5 objectForKeyedSubscript:kMKBUserTypeKey];
    v4 = [v2 isEqualToString:kMKBDeviceModeMultiUser];
    if (v4)
    {
      LOBYTE(v4) = [v3 isEqualToString:kMKBUserTypeEphemeral];
    }

    byte_187BF8 = v4;

    v1 = v5;
  }
}

id sub_37F4C(uint64_t a1)
{
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  notify_post([@"com.apple.powerlogd.logBatteryUIVisit" UTF8String]);
  v2 = *(a1 + 32);

  return [v2 handleBiomeDonationForBUIVisit];
}

id ChargingStateProviderLog(uint64_t a1)
{
  if (qword_187C10 != -1)
  {
    sub_114410();
  }

  v2 = qword_187C08;

  return v2;
}

void sub_38D54(id a1)
{
  v1 = os_log_create("com.apple.batteryui", "ChargingStateProvider");
  v2 = qword_187C08;
  qword_187C08 = v1;

  if (!qword_187C08)
  {

    objc_storeStrong(&qword_187C08, &_os_log_default);
  }
}

void sub_38E0C(id a1)
{
  v3[0] = @"TLC";
  v3[1] = @"optimizedBatteryCharging";
  v4[0] = &off_173778;
  v4[1] = &off_173790;
  v3[2] = @"cleanEnergyCharging";
  v3[3] = @"manualChargeLimit";
  v4[2] = &off_1737A8;
  v4[3] = &off_1737C0;
  v3[4] = @"optimizedChargeLimit";
  v3[5] = @"mobileChargeMode";
  v4[4] = &off_1737D8;
  v4[5] = &off_1737F0;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_187C18;
  qword_187C18 = v1;
}

void sub_38F3C(id a1)
{
  v3[0] = @"TLC";
  v3[1] = @"optimizedBatteryCharging";
  v4[0] = &off_173808;
  v4[1] = &off_173820;
  v3[2] = @"cleanEnergyCharging";
  v3[3] = @"manualChargeLimit";
  v4[2] = &off_173838;
  v4[3] = &off_173850;
  v3[4] = @"optimizedChargeLimit";
  v3[5] = @"PowerD-BatteryGaugingMitigation";
  v4[4] = &off_173868;
  v4[5] = &off_173880;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_187C28;
  qword_187C28 = v1;
}

void sub_39588(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_395BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained powerSourceChanged];
}

void sub_395FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained chargeLevelChanged];
}

void sub_3963C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained chargingStateChanged];
}

void sub_3967C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained chargingStateChanged];
}

void sub_396BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained chargingStateChanged];
}

void sub_39880(uint64_t a1)
{
  v2 = ChargingStateProviderLog([*(a1 + 32) stateCalculation]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) debugDescription];
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Data changed %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(*(a1 + 32) + 40);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = *(*(a1 + 32) + 32);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_39A4C;
        block[3] = &unk_163FF8;
        block[4] = v9;
        dispatch_async(v10, block);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

uint64_t sub_39A4C(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 dataChanged];
  }

  return result;
}

uint64_t sub_39C08(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) isLowPowerModeEnabled];

    return [v3 lowPowerModeChangedWithEnabled:v4];
  }

  return result;
}

uint64_t sub_39E2C(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) isExternallyConnected];

    return [v3 powerSourceChangedWithConnected:v4];
  }

  return result;
}

uint64_t sub_3A120(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 uisocChangedWithUisoc:v4];
  }

  return result;
}

uint64_t sub_3A2E0(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) chargingState];

    return [v3 chargingStateChangedWithState:v4];
  }

  return result;
}

uint64_t sub_3AD58(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = a1[6];
    v5 = a1[7];

    return [v3 chargeTimeEstimateChangedForTarget:v5 newEstimate:v4 error:v6];
  }

  return result;
}

id sub_3AE40(uint64_t a1)
{
  [*(a1 + 32) _refreshTimeEstimates];
  [*(a1 + 32) refreshChargingState];
  v2 = *(a1 + 32);

  return [v2 computeStates];
}

void sub_3BBD8(uint64_t a1)
{
  v2 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_114864(a1, v2);
  }

  v3 = [*(a1 + 40) specifierAtIndex:{objc_msgSend(*(a1 + 40), "indexOfSpecifierID:", @"LOW_POWER_MODE_IDENTIFIER"}];
  v4 = *(a1 + 40);
  v5 = [v4 getBatterySaverMode:v3];
  [v4 animateSwitchSpecifier:v3 toState:{objc_msgSend(v5, "BOOLValue")}];

  [*(a1 + 40) reloadSpecifierID:@"LOW_POWER_MODE_IDENTIFIER" animated:0];
}

id sub_3C10C(uint64_t a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_187C40;
  qword_187C40 = v1;

  [qword_187C40 setUnitsStyle:{objc_msgSend(objc_opt_class(), "localizedDateComponentsUnitsStyle")}];
  [qword_187C40 setIncludesApproximationPhrase:0];
  [qword_187C40 setIncludesTimeRemainingPhrase:0];
  v3 = qword_187C40;

  return [v3 setAllowedUnits:32];
}

id sub_3C250(uint64_t a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_187C50;
  qword_187C50 = v1;

  [qword_187C50 setUnitsStyle:{objc_msgSend(objc_opt_class(), "localizedDateComponentsUnitsStyle")}];
  [qword_187C50 setIncludesApproximationPhrase:0];
  [qword_187C50 setIncludesTimeRemainingPhrase:0];
  v3 = qword_187C50;

  return [v3 setAllowedUnits:64];
}

void sub_3CF9C(id a1)
{
  v1 = +[NSProcessInfo processInfo];
  v3 = [v1 environment];

  v2 = [v3 objectForKeyedSubscript:@"BUI_UNIT_TEST"];
  byte_187C58 = [v2 BOOLValue];
}

void sub_3F758(uint64_t a1)
{
  v1 = *(a1 + 32);
  AnalyticsSendEventLazy();
}

id BatteryUILocalizationHeySiri(void *a1)
{
  v1 = a1;
  v2 = BatteryUIResourceBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_16CDB8 table:@"HeySiri-BatteryUI"];

  return v3;
}

const __CFString *QualifierStringForEnum(uint64_t a1)
{
  if ((a1 - 1) > 0x12)
  {
    return @"APPQUALIFIER_UNKNOWN";
  }

  else
  {
    return off_165128[a1 - 1];
  }
}

__CFString *BatteryUIPrintQualifierString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 count])
    {
      v3 = 0;
      v4 = &stru_16CDB8;
      do
      {
        v5 = [v2 objectAtIndexedSubscript:v3];
        v6 = QualifierStringForEnum([v5 intValue]);

        v7 = BatteryUILocalization(v6);
        v8 = [(__CFString *)v4 stringByAppendingString:v7];

        if ([v2 count] - 1 > v3)
        {
          v9 = BatteryUILocalization(@"APPQUALIFIER_SEPARATOR");
          v10 = [(__CFString *)v8 stringByAppendingString:v9];

          v8 = v10;
        }

        ++v3;
        v4 = v8;
      }

      while ([v2 count] > v3);
    }

    else
    {
      v8 = &stru_16CDB8;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id BatteryUISuggestionQueryEnumToString(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_13;
      }

      v2 = @"ENABLE_AUTOLOCK";
    }

    else
    {
      v2 = @"AUTOBRIGHTNESS";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v2 = @"REDUCEBRIGHTNESS";
        break;
      case 3:
        v3 = LocalizableGTStringKeyForKey();
        v1 = BatteryUILocalization(v3);

        goto LABEL_13;
      case 4:
        v2 = @"LTE";
        break;
      default:
        goto LABEL_13;
    }
  }

  v1 = BatteryUILocalization(v2);
LABEL_13:

  return v1;
}

id BatteryUIAppTypeToString(unint64_t a1)
{
  if (a1 > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = BatteryUILocalization(off_1651C0[a1]);
  }

  return v2;
}

id BatteryUIGetImage(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
  v3 = [v2 intValue];

  if (v3 != 4)
  {
    if (v3 == 1)
    {
      v14 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      v6 = [PLBatteryUIUtilities iconUTTypeIdentifierForNonApp:v14];

      v7 = [[ISIcon alloc] initWithType:v6];
      v9 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorTableUIName];
      v15 = +[UIScreen mainScreen];
      [v15 scale];
      [v9 setScale:?];

      v13 = [v7 imageForDescriptor:v9];
      v16 = [v13 placeholder];
      v11 = [UIImage alloc];
      if (v16)
      {
        v17 = [v7 prepareImageForDescriptor:v9];
        v18 = [v11 initWithCGImage:{objc_msgSend(v17, "CGImage")}];

LABEL_12:
LABEL_14:

        goto LABEL_15;
      }

      v12 = v13;
    }

    else
    {
      if (v3)
      {
        v18 = PSBlankIconImage();
        goto LABEL_16;
      }

      v4 = [ISIcon alloc];
      v5 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      v6 = [v4 initWithBundleIdentifier:v5];

      v7 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorTableUIName];
      v8 = +[UIScreen mainScreen];
      [v8 scale];
      [v7 setScale:?];

      v9 = [v6 imageForDescriptor:v7];
      v10 = [v9 placeholder];
      v11 = [UIImage alloc];
      if ((v10 & 1) == 0)
      {
        v18 = [v11 initWithCGImage:{objc_msgSend(v9, "CGImage")}];
        goto LABEL_14;
      }

      v12 = [v6 prepareImageForDescriptor:v7];
      v13 = v12;
    }

    v18 = [v11 initWithCGImage:{objc_msgSend(v12, "CGImage")}];
    goto LABEL_12;
  }

  v19 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v6 = [UIWebClip webClipWithIdentifier:v19];

  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v18 = [v6 generateIconImageForFormat:0 scale:?];
LABEL_15:

LABEL_16:

  return v18;
}

id convertRootNodeIdToString(void *a1)
{
  v1 = a1;
  if (qword_187C68 != -1)
  {
    sub_114A70();
  }

  v2 = [qword_187C70 objectForKey:v1];

  if (v2)
  {
    v2 = [qword_187C70 objectForKeyedSubscript:v1];
  }

  return v2;
}

void sub_3FEAC(id a1)
{
  v1 = qword_187C70;
  qword_187C70 = &off_174C58;
}

__CFString *BatteryUIGetDisplayName(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
  v3 = [v2 intValue];

  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 != 1)
      {
LABEL_16:
        v4 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if (v4)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v8 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      v6 = v8;
    }

    else
    {
      v14 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      v15 = SBSCopyLocalizedApplicationNameForDisplayIdentifier();

      v16 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      LODWORD(v14) = [v16 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

      if (v14)
      {
        v23 = 0;
        v17 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.NanoUniverse.AegirProxyApp" allowPlaceholder:1 error:&v23];
        v18 = v23;
        if (v17)
        {
          v6 = [v17 localizedName];
        }

        else
        {
          v6 = 0;
        }

        v19 = +[BatteryUIResourceClass get_log_handle_bui];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v25 = v17;
          v26 = 2112;
          v27 = v6;
          v28 = 2112;
          v29 = v18;
          _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "appRecord=%@, localizedName=%@, error=%@", buf, 0x20u);
        }
      }

      else
      {
        v6 = v15;
      }

      v20 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppNameKey"];
      v21 = [v20 isEqualToString:@"Apple Watch"];

      if (!v21)
      {
        if (v6)
        {
          v13 = v6;
        }

        else
        {
          v13 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppNameKey"];
        }

        goto LABEL_26;
      }

      v8 = @"APPLE_WATCH_APP";
    }

    v13 = BatteryUILocalization(v8);
LABEL_26:
    v4 = v13;
    goto LABEL_27;
  }

  if (v3 != 3)
  {
    if (v3 != 4)
    {
      if (v3 == 5)
      {
        v4 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v5 = convertRootNodeIdToString(v4);
        v6 = v5;
        if (v5)
        {
          v7 = v5;

          v4 = v7;
        }

LABEL_27:

        if (v4)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      goto LABEL_16;
    }

    v12 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
    v6 = [UIWebClip webClipWithIdentifier:v12];

    v13 = [v6 title];
    goto LABEL_26;
  }

  v9 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppNameKey"];
  v10 = BatteryUILocalization(@"DELETED_APP");
  v11 = [NSString stringWithFormat:@" (%@)", v10];
  v4 = [v9 stringByAppendingString:v11];

  if (v4)
  {
    goto LABEL_29;
  }

LABEL_28:
  v4 = [v1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
LABEL_29:

  return v4;
}

void sub_402BC(id a1)
{
  v1 = container_create_or_lookup_system_group_paths();
  if (v1)
  {
    v2 = _CFXPCCreateCFObjectFromXPCObject();
    v3 = [v2 objectForKeyedSubscript:@"systemgroup.com.apple.powerlog"];
    v4 = qword_187C78;
    qword_187C78 = v3;
  }

  else
  {
    NSLog(@"Error fetching group containers for %@ : %llu", @"com.apple.systemcontainer", 1);
  }
}

void sub_40388(id a1)
{
  +[BatteryUIResourceClass containerPath];
  v1 = _CFPreferencesCopyValueWithContainer();
  byte_187C90 = [v1 BOOLValue];
}

void sub_40B04(id a1)
{
  info = 0;
  if (mach_timebase_info(&info))
  {
    _os_assumes_log();
    v1 = 1.0;
  }

  else
  {
    v1 = (info.numer / info.denom);
  }

  qword_187CA0 = *&v1;
}

void sub_40EB0(id a1)
{
  v1 = os_log_create("com.apple.batteryui", "graph");
  if (!v1)
  {
    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  v3 = qword_187CA8;
  qword_187CA8 = v1;
}

void sub_40F54(id a1)
{
  v1 = os_log_create("com.apple.batteryui", "");
  if (!v1)
  {
    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  v3 = qword_187CB8;
  qword_187CB8 = v1;
}

void sub_40FF8(id a1)
{
  v1 = os_log_create("com.apple.batteryui.health", "");
  if (!v1)
  {
    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  v3 = qword_187CC8;
  qword_187CC8 = v1;
}

void sub_4114C(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_187CE0;
  qword_187CE0 = v1;

  [qword_187CE0 setUnitsStyle:1];
  [qword_187CE0 setIncludesApproximationPhrase:0];
  [qword_187CE0 setIncludesTimeRemainingPhrase:0];
  v3 = qword_187CE0;

  [v3 setAllowedUnits:32];
}

void sub_41564(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 8u);
}

void sub_428EC(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [NSString stringWithFormat:@"%@/%@.daemons.plist", @"Library/Logs/BatteryUIDemos", *(a1 + 32)];
  v4 = [NSString stringWithFormat:@"%@/%@.plist", @"Library/Logs/BatteryUIDemos", *(a1 + 32)];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) currentDictionary];
  v7 = v6;
  if (v5 == 2)
  {
    v8 = [v6 writeToFile:v3 atomically:1];

    v9 = v4;
  }

  else
  {
    v8 = [v6 writeToFile:v4 atomically:1];

    v9 = v3;
  }

  if (v14)
  {
    v8 &= [v14 writeToFile:v9 atomically:1];
  }

  v10 = [*(a1 + 40) activityIndicator];
  [v10 stopAnimating];

  v11 = [*(a1 + 40) activityIndicator];
  [v11 removeFromSuperview];

  if (v8)
  {
    v12 = @"Success!";
  }

  else
  {
    v12 = @"Failed to create demo";
  }

  v13 = [[UIAlertView alloc] initWithTitle:0 message:v12 delegate:0 cancelButtonTitle:@"OK" otherButtonTitles:0];
  [v13 show];
}

NSBundle *BatteryUIResourceBundle()
{
  v0 = objc_opt_class();

  return [NSBundle bundleForClass:v0];
}

id BatteryUILocalization(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_16CDB8 table:@"BatteryUI-longbeach"];

  if ([v3 isEqualToString:v1])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v1 value:&stru_16CDB8 table:@"BatteryUI-lotx"];

    if (([v5 isEqualToString:v1] & 1) == 0)
    {
      v9 = v5;
      goto LABEL_7;
    }

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v6 localizedStringForKey:v1 value:&stru_16CDB8 table:@"BatteryUI-chargetimeestimate"];

    if ([v3 isEqualToString:v1])
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:v1 value:&stru_16CDB8 table:@"BatteryUI"];

      goto LABEL_8;
    }
  }

  v9 = v3;
LABEL_7:
  v8 = v9;
  v3 = v9;
LABEL_8:

  return v8;
}

id BUILogCommon(uint64_t a1)
{
  if (qword_187D48 != -1)
  {
    sub_115138();
  }

  v2 = qword_187D40;

  return v2;
}

void sub_42EE0(id a1)
{
  info = 0;
  if (mach_timebase_info(&info))
  {
    _os_assumes_log();
    v1 = 1.0;
  }

  else
  {
    v1 = (info.numer / info.denom);
  }

  qword_187CF0 = *&v1;
}

void sub_43030(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_187CF8;
  qword_187CF8 = v1;

  v3 = qword_187CF8;

  [v3 setNumberStyle:3];
}

void sub_430C4(id a1)
{
  v5 = 1;
  v1 = container_create_or_lookup_system_group_paths();
  if (v1)
  {
    v2 = _CFXPCCreateCFObjectFromXPCObject();
    v3 = [v2 objectForKeyedSubscript:@"systemgroup.com.apple.powerlog"];
    v4 = qword_187D08;
    qword_187D08 = v3;
  }

  else
  {
    v2 = BUILogCommon(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1151F8(&v5, v2);
    }
  }
}

void sub_4319C(id a1)
{
  v1 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUI_DEMO_MODE"];
  byte_187D20 = [v1 BOOLValue];
}

void sub_43470(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_187D28;
  qword_187D28 = v1;

  v3 = qword_187D28;
  v4 = +[NSLocale currentLocale];
  [v3 setLocale:v4];

  if (+[PLBatteryUIUtilities is24HourClock])
  {
    v5 = @"H:mm";
  }

  else
  {
    v5 = @"h:mm a";
  }

  [qword_187D28 setLocalizedDateFormatFromTemplate:v5];
  qword_187D30 = +[NSCalendar autoupdatingCurrentCalendar];

  _objc_release_x1();
}

void sub_43900(id a1)
{
  v1 = os_log_create("com.apple.batteryui", "");
  v2 = qword_187D40;
  qword_187D40 = v1;

  if (!qword_187D40)
  {

    objc_storeStrong(&qword_187D40, &_os_log_default);
  }
}

id BUILogCharts(uint64_t a1)
{
  if (qword_187D58 != -1)
  {
    sub_1153A0();
  }

  v2 = qword_187D50;

  return v2;
}

void sub_439B8(id a1)
{
  v1 = os_log_create("com.apple.batteryui", "charts");
  v2 = qword_187D50;
  qword_187D50 = v1;

  if (!qword_187D50)
  {

    objc_storeStrong(&qword_187D50, &_os_log_default);
  }
}

id BUILogLoadTimes(uint64_t a1)
{
  if (qword_187D68 != -1)
  {
    sub_1153B4();
  }

  v2 = qword_187D60;

  return v2;
}

void sub_43A70(id a1)
{
  v1 = os_log_create("com.apple.batteryui", "BUILoadTime");
  v2 = qword_187D60;
  qword_187D60 = v1;

  if (!qword_187D60)
  {

    objc_storeStrong(&qword_187D60, &_os_log_default);
  }
}

void sub_43C00(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_187D70;
  qword_187D70 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_187D70 setLocale:v3];

  v4 = +[NSCalendar autoupdatingCurrentCalendar];
  [qword_187D70 setCalendar:v4];

  v5 = qword_187D70;

  [v5 setLocalizedDateFormatFromTemplate:@"j"];
}

void sub_43D28(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_187D80;
  qword_187D80 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_187D80 setLocale:v3];

  v4 = +[NSCalendar autoupdatingCurrentCalendar];
  [qword_187D80 setCalendar:v4];

  v5 = qword_187D80;

  [v5 setLocalizedDateFormatFromTemplate:@"jm"];
}

void sub_43E50(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_187D90;
  qword_187D90 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_187D90 setLocale:v3];

  v4 = +[NSCalendar autoupdatingCurrentCalendar];
  [qword_187D90 setCalendar:v4];

  v5 = qword_187D90;

  [v5 setLocalizedDateFormatFromTemplate:@"MMMM d"];
}

void sub_43F78(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_187DA0;
  qword_187DA0 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_187DA0 setLocale:v3];

  v4 = +[NSCalendar autoupdatingCurrentCalendar];
  [qword_187DA0 setCalendar:v4];

  v5 = qword_187DA0;

  [v5 setLocalizedDateFormatFromTemplate:@"MMMM d jm"];
}

void sub_44094(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_187DB0;
  qword_187DB0 = v1;

  [qword_187DB0 setAllowedUnits:96];
  [qword_187DB0 setUnitsStyle:3];
  v3 = +[NSCalendar autoupdatingCurrentCalendar];
  [qword_187DB0 setCalendar:v3];
}

const __CFString *moveableBatteryGraphErrorString(int a1)
{
  v1 = @"Not Enough Data Points";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"Negative Power Value";
  }

  else
  {
    return v1;
  }
}

int64_t sub_44B30(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndexedSubscript:0];
  v6 = [v4 objectAtIndexedSubscript:0];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t internalBuild(uint64_t a1, uint64_t a2)
{
  if (qword_187DC8 != -1)
  {
    sub_11542C();
  }

  return byte_187DC0;
}

void sub_467B0(id a1)
{
  v1 = MGCopyAnswer();
  byte_187DC0 = CFBooleanGetValue(v1) != 0;

  CFRelease(v1);
}

BOOL isTapToRadarEnabled()
{
  CFPreferencesAppSynchronize(@"com.apple.TapToRadar");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SBIconVisibility", @"com.apple.TapToRadar", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppBooleanValue == 0;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

id sub_46E48(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UsageSummaryViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_46E7C(void *a1)
{
  v7 = sub_8FFA8(a1);
  v8 = v1;
  v2 = objc_allocWithZone(sub_46F9C(&qword_182D38, &unk_1246C0));

  v3 = sub_116440();
  result = [v3 view];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:v6];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_46F9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double sub_46FE4@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_46F9C(&qword_182D40, &qword_1246E0);
  sub_116CB0();
  sub_116CB0();
  type metadata accessor for OverviewBreakdownViewModel(0);

  sub_8F6DC(a1);
  sub_116CB0();

  result = *&v7;
  *a3 = v7;
  *(a3 + 16) = a2;
  *(a3 + 24) = v7;
  *(a3 + 32) = *(&v7 + 1);
  return result;
}

uint64_t sub_470E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = type metadata accessor for BreakdownCellButtonStyle(0);
  __chkstk_darwin(v51);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_46F9C(&qword_182D48, &qword_1246E8);
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v40 - v6;
  v50 = sub_46F9C(&qword_182D50, &qword_1246F0);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v40 - v8;
  v9 = sub_46F9C(&qword_182D58, &qword_1246F8);
  __chkstk_darwin(v9);
  v47 = &v40 - v10;
  v53 = sub_46F9C(&qword_182D60, &qword_124700);
  v11 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v40 - v12;
  v13 = *v1;
  v14 = *(v1 + 8);
  v55 = *v1;
  v56 = v14;
  sub_46F9C(&qword_182D68, &qword_124708);
  sub_116CC0();
  if (v65)
  {
    v41 = v5;
    v15 = v65;
    v42 = v65;
    type metadata accessor for ShowAllUsageViewModel(0);
    v44 = a1;
    v16 = *(v15 + 16);

    sub_6D878(0, 1, v16);
    sub_6260C();
    sub_FF630(&v55);
    v66 = v13;
    v67 = v14;
    v65 = *(v1 + 24);
    v17 = swift_allocObject();
    v18 = *(v2 + 16);
    *(v17 + 16) = *v2;
    *(v17 + 32) = v18;
    *(v17 + 48) = *(v2 + 32);
    v19 = swift_allocObject();
    v20 = *(v2 + 16);
    *(v19 + 16) = *v2;
    *(v19 + 32) = v20;
    *(v19 + 48) = *(v2 + 32);
    v59 = sub_479A4;
    v60 = v17;
    v61 = 0u;
    v62 = 0u;
    v63 = sub_479AC;
    v64 = v19;
    sub_479B4(&v66, &v54, &qword_182D40, &qword_1246E0);
    sub_479B4(&v67, &v54, &qword_182D70, &unk_124710);
    sub_479B4(&v65, &v54, &qword_182D78, &qword_12C9A0);
    sub_479B4(&v66, &v54, &qword_182D40, &qword_1246E0);
    sub_479B4(&v67, &v54, &qword_182D70, &unk_124710);
    sub_479B4(&v65, &v54, &qword_182D78, &qword_12C9A0);
    sub_46F9C(&qword_182D80, &qword_124720);
    v43 = v11;
    v40 = v9;
    sub_46F9C(&qword_182D88, &qword_124728);
    sub_48800(&qword_182D90, &qword_182D80, &qword_124720, &protocol conformance descriptor for HStack<A>);
    sub_47A94(&qword_182D98, &qword_182D88, &qword_124728, sub_47A64);
    sub_1160F0();
    v54 = v65;
    sub_46F9C(&qword_182D78, &qword_12C9A0);
    sub_116CE0();
    v21 = v46;
    sub_EFC40(1, v55, v56, v57, v46);
    v22 = sub_48800(&qword_182DB8, &qword_182D48, &qword_1246E8, &protocol conformance descriptor for NavigationLink<A, B>);
    v23 = sub_48654(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle, &unk_12C458);
    v24 = v45;
    v25 = v48;
    v26 = v51;
    sub_116A00();
    sub_47B6C(v21);
    (*(v41 + 8))(v7, v25);
    v27 = *(v2 + 16);
    v28 = sub_46F9C(&qword_182DC8, &qword_124738);
    v55 = v25;
    v56 = v26;
    v57 = v22;
    v58 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = sub_48020();
    v31 = v47;
    v32 = v50;
    v33 = v28;
    v11 = v43;
    sub_8E234(v27, sub_47E88, 0, v50, v33, OpaqueTypeConformance2, v30, v47);
    (*(v49 + 8))(v24, v32);
    v34 = swift_allocObject();
    v35 = *(v2 + 16);
    *(v34 + 16) = *v2;
    *(v34 + 32) = v35;
    *(v34 + 48) = *(v2 + 32);
    v36 = (v31 + *(v40 + 36));
    *v36 = sub_48940;
    v36[1] = v34;
    v36[2] = 0;
    v36[3] = 0;
    sub_479B4(&v66, &v55, &qword_182D40, &qword_1246E0);
    sub_479B4(&v67, &v55, &qword_182D70, &unk_124710);
    sub_479B4(&v65, &v55, &qword_182D78, &qword_12C9A0);
    sub_47A94(&qword_182DD8, &qword_182D58, &qword_1246F8, sub_48208);
    v37 = v52;
    sub_116AA0();

    sub_488C8(v31, &qword_182D58, &qword_1246F8);
    a1 = v44;
    sub_48354(v37, v44);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  return (*(v11 + 56))(a1, v38, 1, v53);
}

void sub_47950(uint64_t a1@<X8>)
{
  *a1 = sub_116320();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_46F9C(&qword_182E18, &qword_1247F8);
  sub_47BC8(a1 + *(v2 + 44));
}

uint64_t sub_479B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_46F9C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_47A1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_47A94(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_47B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_182DB0;
  if (!qword_182DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182DB0);
  }

  return result;
}

uint64_t sub_47B6C(uint64_t a1)
{
  v2 = type metadata accessor for BreakdownCellButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_47BC8(uint64_t a1@<X8>)
{
  v30 = sub_46F9C(&qword_182E20, &qword_124800);
  __chkstk_darwin(v30);
  v31 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v27[-v4];
  v6 = sub_117170();
  v7 = BatteryUILocalization(v6);

  if (v7)
  {
    v8 = sub_1171B0();
    v10 = v9;

    v32 = v8;
    v33 = v10;
    sub_4869C(v11, v12, v13);
    v14 = sub_116900();
    v16 = v15;
    v28 = v17;
    v29 = v18;
    v19 = sub_116C00();
    v20 = sub_116720();
    KeyPath = swift_getKeyPath();
    v32 = v19;
    v33 = KeyPath;
    v34 = v20;
    sub_1166A0();
    sub_46F9C(&qword_182E30, &unk_127C70);
    sub_48748();
    sub_1169E0();

    v22 = [objc_opt_self() systemGray3Color];
    v23 = sub_116BE0();
    v24 = v31;
    *&v5[*(v30 + 36)] = v23;
    sub_48848(v5, v24);
    *a1 = v14;
    *(a1 + 8) = v16;
    v25 = v28 & 1;
    *(a1 + 16) = v28 & 1;
    *(a1 + 24) = v29;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    v26 = sub_46F9C(&qword_182E50, &qword_12AA90);
    sub_48848(v24, a1 + *(v26 + 64));
    sub_488B8(v14, v16, v25);

    sub_488C8(v5, &qword_182E20, &qword_124800);
    sub_488C8(v24, &qword_182E20, &qword_124800);
    sub_48928(v14, v16, v25);
  }

  else
  {
    __break(1u);
  }
}

double sub_47E88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_46F9C(&qword_182E10, &qword_1247F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1246D0;
  v5 = sub_116610();
  *(inited + 32) = v5;
  v6 = sub_116620();
  *(inited + 33) = v6;
  v7 = sub_116600();
  *(inited + 34) = v7;
  v8 = sub_116640();
  sub_116640();
  if (sub_116640() != v5)
  {
    v8 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v6)
  {
    v8 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v7)
  {
    v8 = sub_116640();
  }

  v9 = sub_46F9C(&qword_182D50, &qword_1246F0);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(sub_46F9C(&qword_182DC8, &qword_124738) + 36);
  *v10 = v8;
  result = 0.0;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 1;
  return result;
}

unint64_t sub_48020()
{
  result = qword_182DD0;
  if (!qword_182DD0)
  {
    sub_47A1C(&qword_182DC8, &qword_124738);
    sub_47A1C(&qword_182D48, &qword_1246E8);
    type metadata accessor for BreakdownCellButtonStyle(255);
    sub_48800(&qword_182DB8, &qword_182D48, &qword_1246E8, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_48654(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle, &unk_12C458);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182DD0);
  }

  return result;
}

uint64_t sub_4816C()
{

  return swift_deallocObject();
}

unint64_t sub_48208()
{
  result = qword_182DE0;
  if (!qword_182DE0)
  {
    sub_47A1C(&qword_182DE8, qword_124740);
    sub_48020();
    sub_47A1C(&qword_182D48, &qword_1246E8);
    type metadata accessor for BreakdownCellButtonStyle(255);
    sub_48800(&qword_182DB8, &qword_182D48, &qword_1246E8, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_48654(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle, &unk_12C458);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182DE0);
  }

  return result;
}

uint64_t sub_48354(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_182D60, &qword_124700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_48408(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_4841C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_48478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_484E8()
{
  result = qword_182DF0;
  if (!qword_182DF0)
  {
    sub_47A1C(&qword_182DF8, &qword_1247E8);
    sub_4856C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182DF0);
  }

  return result;
}

unint64_t sub_4856C()
{
  result = qword_182E00;
  if (!qword_182E00)
  {
    sub_47A1C(&qword_182D60, &qword_124700);
    sub_47A94(&qword_182DD8, &qword_182D58, &qword_1246F8, sub_48208);
    sub_48654(&qword_182E08, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182E00);
  }

  return result;
}

uint64_t sub_48654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_4869C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_182E28;
  if (!qword_182E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182E28);
  }

  return result;
}

uint64_t sub_486F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_116240();
  *a1 = result;
  return result;
}

unint64_t sub_48748()
{
  result = qword_182E38;
  if (!qword_182E38)
  {
    sub_47A1C(&qword_182E30, &unk_127C70);
    sub_48800(&qword_182E40, &qword_182E48, qword_124840, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182E38);
  }

  return result;
}

uint64_t sub_48800(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_48848(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_182E20, &qword_124800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_488B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_488C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_46F9C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_48928(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_489C8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InternalViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_489FC(void *a1)
{
  v2 = a1;
  sub_C120C(a1);
  v3 = objc_allocWithZone(sub_46F9C(&unk_182E80, &qword_124878));

  v4 = sub_116440();
  result = [v4 view];
  if (result)
  {
    v6 = result;

    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_48B08()
{
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_48BB4@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_48C68(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_48C98(v1);
}

void sub_48C98(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
    sub_1158F0();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_54960(0, &qword_183028, off_161CF0);
  v3 = v2;
  v4 = sub_1175E0();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for ChargingStatusViewModel(uint64_t a1)
{
  result = qword_188100;
  if (!qword_188100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_48E94()
{
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v1 = v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__viewSize;
  swift_beginAccess();
  return *v1;
}

__n128 sub_48F54@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v4 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__viewSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_49040(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__viewSize);
  result = swift_beginAccess();
  if (*v5 == a1 && v5[1] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
    sub_1158F0();
  }

  return result;
}

uint64_t sub_49180()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__viewSize);
  result = swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
  return result;
}

double sub_491E0()
{
  swift_getKeyPath();
  v4 = v0;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v1 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__viewSize;
  swift_beginAccess();
  v2 = *(v4 + v1);
  return (v2 - *sub_72028()) * 20.0 / 100.0;
}

uint64_t sub_492CC(char a1)
{
  v1 = [objc_opt_self() *off_165B30[a1]];

  return sub_116BE0();
}

Swift::Int sub_4933C()
{
  v1 = *v0;
  sub_117A90();
  sub_117AA0(v1);
  return sub_117AD0();
}

Swift::Int sub_493B0(uint64_t a1)
{
  v2 = *v1;
  sub_117A90();
  sub_117AA0(v2);
  return sub_117AD0();
}

uint64_t sub_4943C(uint64_t a1)
{
  v2 = sub_46F9C(&qword_182EA0, &qword_1248D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_479B4(a1, &v6 - v3, &qword_182EA0, &qword_1248D8);
  return sub_494E8(v4);
}

uint64_t sub_494E8(uint64_t a1)
{
  v3 = sub_46F9C(&qword_182EA0, &qword_1248D8);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__lastChargedToLabel;
  swift_beginAccess();
  sub_479B4(v1 + v6, v5, &qword_182EA0, &qword_1248D8);
  v7 = sub_53624(v5, a1);
  sub_488C8(v5, &qword_182EA0, &qword_1248D8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
    sub_1158F0();
  }

  else
  {
    swift_beginAccess();
    sub_55090(a1, v1 + v6, &qword_182EA0, &qword_1248D8);
    swift_endAccess();
  }

  return sub_488C8(a1, &qword_182EA0, &qword_1248D8);
}

uint64_t sub_496E4()
{
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  return *(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingRateType);
}

uint64_t sub_4978C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  *a2 = *(v3 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingRateType);
  return result;
}

uint64_t sub_49864(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingRateType);
  if (v2 == 4)
  {
    if (result != 4)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
      sub_1158F0();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingRateType) = result;
  return result;
}

uint64_t sub_49A14(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  return *(v2 + *a2);
}

uint64_t sub_49AC8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_49BC8(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
    sub_1158F0();
  }

  return result;
}

uint64_t sub_49D40()
{
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  return *(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__progress);
}

uint64_t sub_49DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  *a2 = *(v3 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__progress);
  return result;
}

uint64_t sub_49EC0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__progress) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
    sub_1158F0();
  }

  return result;
}

uint64_t sub_49FF0@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v10 = *a2;
  swift_beginAccess();
  return sub_479B4(v12 + v10, a5, a3, a4);
}

uint64_t sub_4A0F4@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v11 = *a3;
  swift_beginAccess();
  return sub_479B4(v10 + v11, a6, a4, a5);
}

uint64_t sub_4A1D8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_46F9C(&qword_182EA8, &qword_1249D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_479B4(a1, &v9[-v5], &qword_182EA8, &qword_1249D0);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_1158F0();

  return sub_488C8(v6, &qword_182EA8, &qword_1249D0);
}

uint64_t sub_4A328(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingState;
  swift_beginAccess();
  sub_55090(a2, a1 + v4, &qword_182EA8, &qword_1249D0);
  return swift_endAccess();
}

void *sub_4A56C()
{
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v1 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__refreshTimer);
  v2 = v1;
  return v1;
}

id sub_4A61C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v4 = *(v3 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__refreshTimer);
  *a2 = v4;

  return v4;
}

void sub_4A6DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_4A70C(v1);
}

void sub_4A70C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__refreshTimer;
  v5 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__refreshTimer);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
    sub_1158F0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_54960(0, &qword_182FD0, NSTimer_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1175E0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

char *sub_4A8D8(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_46F9C(&qword_182EB0, &qword_124AA0);
  __chkstk_darwin(v3 - 8);
  v70 = &v68 - v4;
  v5 = sub_46F9C(&qword_182EA8, &qword_1249D0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v68 - v6);
  v8 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel_smartChargingClient;
  *&v1[v8] = [objc_allocWithZone(PowerUISmartChargeClient) initWithClientName:PowerUISmartChargeClientSettings];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__viewSize];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__lastChargedToLabel;
  v11 = sub_115520();
  v12 = *(*(v11 - 8) + 56);
  v12(&v1[v10], 1, 1, v11);
  v12(&v1[v10], 1, 1, v11);
  v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingRateType] = 4;
  v13 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingState;
  v14 = type metadata accessor for ChargingState(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v16(&v1[v13], 1, 1, v14);
  v16(&v1[v13], 1, 1, v14);
  *&v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__refreshTimer] = 0;
  v17 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__timeToChargeToInitialChargeTargetString];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__timeToChargeToChargeLimitString];
  *v18 = 0;
  v18[1] = 0;
  *&v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit] = 100;
  v19 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel_isChargeLimitSupported;
  v1[v19] = [objc_opt_self() supportsChargingFixedLimit];
  sub_115930();
  if (a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = [objc_allocWithZone(BUIChargingStateProvider) init];
  }

  v71 = a1;
  v21 = v20;
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakInit();
  v22 = [v21 isLowPowerModeEnabled];
  v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isLowPowerModeEnabled] = v22;
  v23 = [v21 isCriticalLevel];
  v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCriticalLevel] = v23;
  v24 = [v21 isExternallyConnected];
  v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCharging] = v24;
  v25 = [v21 isPaused];
  v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isPaused] = v25;
  v26 = [v21 uisocLevel];
  *&v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__progress] = v26;
  v27 = [v21 isEoc];

  v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isFullyCharged] = v27;
  v28 = [v21 shouldShowOverrideCard];
  v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__shouldShowOverrideCard] = v28;
  v29 = [v21 shouldShowLowPowerModeCard];
  v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__shouldShowLowPowerModeCard] = v29;
  v72.receiver = v1;
  v72.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v72, "init");
  sub_4B5C4();
  sub_4BB18();
  swift_getKeyPath();
  aBlock[0] = v30;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v31 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingState;
  swift_beginAccess();
  sub_479B4(&v30[v31], v7, &qword_182EA8, &qword_1249D0);
  if ((*(v15 + 48))(v7, 1, v14))
  {
    sub_488C8(v7, &qword_182EA8, &qword_1249D0);
  }

  else
  {
    v32 = *v7;
    sub_488C8(v7, &qword_182EA8, &qword_1249D0);
    if (v32 == 9)
    {
      v33 = 0;
      goto LABEL_9;
    }
  }

  v33 = 1;
LABEL_9:
  if (v30[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingRateType] != v33)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v68 - 2) = v30;
    *(&v68 - 8) = v33;
    aBlock[0] = v30;
    sub_1158F0();
  }

  v35 = sub_117410();
  v36 = *(*(v35 - 8) + 56);
  v37 = v70;
  v36(v70, 1, 1, v35);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v30;
  v39 = v30;
  sub_4DE94(0, 0, v37, &unk_124AB0, v38);

  v36(v37, 1, 1, v35);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v39;
  v41 = v39;
  sub_4DE94(0, 0, v37, &unk_124AC0, v40);

  swift_getKeyPath();
  aBlock[0] = v41;
  sub_115900();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v43 = Strong, v44 = [Strong lastChargeLevel], v43, v44))
  {
    v45 = [v44 integerValue];

    v46 = 0;
  }

  else
  {
    v45 = 0;
    v46 = 1;
  }

  swift_getKeyPath();
  aBlock[0] = v41;
  sub_115900();

  v47 = swift_unknownObjectWeakLoadStrong();
  if (v47 && (v48 = v47, v49 = [v47 lastChargeTimeInterval], v48, v49))
  {
    [v49 doubleValue];
    v51 = v50;

    v52 = 0;
    v53 = v51;
  }

  else
  {
    v53 = 0;
    v52 = 1;
  }

  sub_4CAD8(v45, v46, v53, v52);
  swift_getKeyPath();
  aBlock[0] = v41;
  sub_115900();

  v54 = swift_unknownObjectWeakLoadStrong();
  if (v54)
  {
    v55 = v54;
    [v54 setDelegate:v41];
  }

  swift_getKeyPath();
  aBlock[0] = v41;
  sub_115900();

  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {
    v57 = v56;
    [v56 setLastChargeInfoDelegate:v41];
  }

  sub_A77D0(sub_4E60C, 0);
  v58 = objc_opt_self();
  v59 = swift_allocObject();
  *(v59 + 16) = v41;
  aBlock[4] = sub_54570;
  aBlock[5] = v59;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4E860;
  aBlock[3] = &unk_165860;
  v60 = _Block_copy(aBlock);
  v61 = v41;

  v62 = [v58 scheduledTimerWithTimeInterval:1 repeats:v60 block:60.0];
  _Block_release(v60);
  sub_4A70C(v62);
  swift_getKeyPath();
  aBlock[0] = v61;
  sub_115900();

  v63 = *&v61[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__refreshTimer];
  if (v63)
  {
    v64 = objc_opt_self();
    v65 = v63;
    v66 = [v64 mainRunLoop];
    [v66 addTimer:v65 forMode:NSRunLoopCommonModes];
  }

  return v61;
}

uint64_t sub_4B328(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  v9 = v8[1];
  if (v9)
  {
    if (a2)
    {
      v10 = *v8 == a1 && v9 == a2;
      if (v10 || (sub_1179E0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
    sub_1158F0();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v8 = a1;
  v8[1] = a2;
}

uint64_t sub_4B4A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
    sub_1158F0();
  }

  return result;
}

void sub_4B5C4()
{
  v1 = v0;
  v2 = sub_46F9C(&qword_182EA8, &qword_1249D0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = (v23 - v4);
  v6 = *&v0[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel_smartChargingClient];
  if (![v6 isMCLSupported])
  {
    v9 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
    swift_beginAccess();
    if (*&v1[v9] == 100)
    {
      return;
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v23[-2] = v1;
    v23[-1] = 100;
    v24 = v1;
    sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
    goto LABEL_21;
  }

  swift_getKeyPath();
  v25[1] = v0;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v7 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingState;
  swift_beginAccess();
  sub_479B4(&v1[v7], v5, &qword_182EA8, &qword_1249D0);
  v8 = type metadata accessor for ChargingState(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    sub_488C8(v5, &qword_182EA8, &qword_1249D0);
  }

  else
  {
    v11 = *v5;
    sub_488C8(v5, &qword_182EA8, &qword_1249D0);
    if (v11 == 10)
    {
      v12 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
      swift_beginAccess();
      if (*&v1[v12] == 100)
      {
        return;
      }

      v13 = swift_getKeyPath();
      __chkstk_darwin(v13);
      v23[-2] = v1;
      v23[-1] = 100;
      v25[0] = v1;
      goto LABEL_21;
    }
  }

  v24 = 0;
  v14 = [v6 getMCLLimitWithError:&v24];
  v25[0] = v24;
  if (v24)
  {
    __chkstk_darwin(v14);
    v23[-2] = v25;
    v16 = v15;
    sub_A7800(sub_54F94, &v23[-4]);
    v17 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
    swift_beginAccess();
    if (*&v1[v17] != 100)
    {
      v18 = swift_getKeyPath();
      __chkstk_darwin(v18);
      v23[-2] = v1;
      v23[-1] = 100;
      v23[0] = v1;
      sub_1158F0();
    }

    return;
  }

  if (v14 >= 0x64)
  {
    v19 = 100;
  }

  else
  {
    v19 = v14;
  }

  if (v19 <= 0x50)
  {
    v20 = 80;
  }

  else
  {
    v20 = v19;
  }

  v21 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
  swift_beginAccess();
  if (*&v1[v21] != v20)
  {
    v22 = swift_getKeyPath();
    __chkstk_darwin(v22);
    v23[-2] = v1;
    v23[-1] = v20;
    v23[0] = v1;
LABEL_21:
    sub_1158F0();
  }
}

void *sub_4BB18()
{
  v1 = v0;
  v2 = sub_115760();
  v95 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v91 - v9;
  __chkstk_darwin(v11);
  v13 = &v91 - v12;
  __chkstk_darwin(v14);
  v16 = &v91 - v15;
  __chkstk_darwin(v17);
  v19 = &v91 - v18;
  __chkstk_darwin(v20);
  v96 = &v91 - v21;
  v22 = sub_46F9C(&qword_182EA8, &qword_1249D0);
  __chkstk_darwin(v22 - 8);
  v98 = &v91 - v23;
  swift_getKeyPath();
  v24 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel___observationRegistrar;
  v102[0] = v1;
  v25 = sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  v97 = v24;
  v100 = v25;
  sub_115900();

  v99 = v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;
    if ([v27 chargingState] != -1)
    {
      v94 = v19;
      v28 = v2;
      v29 = [v27 chargingState];
      if (v29 <= 0xA && ((1 << v29) & 0x60A) != 0)
      {
        v30 = [v27 chargingState];

        swift_getKeyPath();
        v31 = v99;
        v102[0] = v99;
        sub_115900();

        v32 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
        swift_beginAccess();
        v33 = *&v31[v32];
        v34 = v96;
        v35 = *(v95 + 56);
        v35(v96, 1, 1, v2);
        v36 = v94;
        v35(v94, 1, 1, v2);
        v37 = v98;
        sub_64A5C(v30, v33, 0, v34, v36, v98);
        v38 = type metadata accessor for ChargingState(0);
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        KeyPath = swift_getKeyPath();
        v40 = v27;
        __chkstk_darwin(KeyPath);
        *(&v91 - 2) = v31;
        *(&v91 - 1) = v37;
        v101 = v31;
        goto LABEL_7;
      }

      if ([v27 shouldShowOverrideCard])
      {
        if ([v27 chargingState] == 2)
        {
          v93 = v27;

          v44 = *(v95 + 56);
          v44(v16, 1, 1, v2);
          v45 = *&v99[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel_smartChargingClient];
          v102[0] = 0;
          v46 = [v45 fullChargeDeadline:v102];
          v47 = v102[0];
          if (v46)
          {
            v48 = v46;
            sub_115730();
            v49 = v47;

            sub_488C8(v16, &qword_182EF0, &unk_124BB0);
            v44(v13, 0, 1, v2);
            sub_548D0(v13, v16, &qword_182EF0, &unk_124BB0);
          }

          else
          {
            v65 = v102[0];
            v66 = sub_1155A0();

            v67 = swift_willThrow();
            __chkstk_darwin(v67);
            *(&v91 - 2) = v66;
            sub_A7800(sub_54EF4, (&v91 - 4));

            sub_488C8(v16, &qword_182EF0, &unk_124BB0);
            v44(v16, 1, 1, v2);
          }

          v92 = 0;
          v68 = v94;
          if (sub_53D50())
          {
            sub_115750();
            v69 = v96;
            sub_1156A0();
            (*(v95 + 8))(v4, v28);
            sub_488C8(v16, &qword_182EF0, &unk_124BB0);
            v44(v69, 0, 1, v28);
            sub_548D0(v69, v16, &qword_182EF0, &unk_124BB0);
          }

          swift_getKeyPath();
          v70 = v99;
          v102[0] = v99;
          sub_115900();

          v71 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
          swift_beginAccess();
          v72 = *&v70[v71];
          v73 = v44;
          v74 = v96;
          sub_479B4(v16, v96, &qword_182EF0, &unk_124BB0);
          v73(v68, 1, 1, v28);
          v37 = v98;
          sub_64A5C(2, v72, 0, v74, v68, v98);
          v75 = type metadata accessor for ChargingState(0);
          (*(*(v75 - 8) + 56))(v37, 0, 1, v75);
          v76 = swift_getKeyPath();
          __chkstk_darwin(v76);
          *(&v91 - 2) = v70;
          *(&v91 - 1) = v37;
          v101 = v70;
          sub_1158F0();

          sub_488C8(v16, &qword_182EF0, &unk_124BB0);
          return sub_488C8(v37, &qword_182EA8, &qword_1249D0);
        }

        if ([v27 chargingState] == 7)
        {
          v93 = v27;

          v50 = *(v95 + 56);
          v50(v10, 1, 1, v2);
          v51 = *&v99[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel_smartChargingClient];
          v102[0] = 0;
          v52 = [v51 cecFullChargeDeadline:v102];
          v53 = v102[0];
          if (v52)
          {
            v54 = v52;
            sub_115730();
            v55 = v53;

            sub_488C8(v10, &qword_182EF0, &unk_124BB0);
            v50(v7, 0, 1, v2);
            sub_548D0(v7, v10, &qword_182EF0, &unk_124BB0);
          }

          else
          {
            v80 = v102[0];
            v81 = sub_1155A0();

            v82 = swift_willThrow();
            __chkstk_darwin(v82);
            *(&v91 - 2) = v81;
            sub_A7800(sub_54E54, (&v91 - 4));

            sub_488C8(v10, &qword_182EF0, &unk_124BB0);
            v50(v10, 1, 1, v2);
          }

          v92 = 0;
          if (sub_53D50())
          {
            sub_115750();
            v83 = v96;
            sub_1156A0();
            (*(v95 + 8))(v4, v2);
            sub_488C8(v10, &qword_182EF0, &unk_124BB0);
            v50(v83, 0, 1, v2);
            sub_548D0(v83, v10, &qword_182EF0, &unk_124BB0);
          }

          swift_getKeyPath();
          v84 = v99;
          v102[0] = v99;
          sub_115900();

          v85 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
          swift_beginAccess();
          v86 = *&v84[v85];
          v87 = v96;
          v50(v96, 1, 1, v2);
          v88 = v94;
          sub_479B4(v10, v94, &qword_182EF0, &unk_124BB0);
          v37 = v98;
          sub_64A5C(7, v86, 0, v87, v88, v98);
          v89 = type metadata accessor for ChargingState(0);
          (*(*(v89 - 8) + 56))(v37, 0, 1, v89);
          v90 = swift_getKeyPath();
          __chkstk_darwin(v90);
          *(&v91 - 2) = v84;
          *(&v91 - 1) = v37;
          v101 = v84;
          sub_1158F0();

          sub_488C8(v10, &qword_182EF0, &unk_124BB0);
          return sub_488C8(v37, &qword_182EA8, &qword_1249D0);
        }

        v56 = [v27 chargingState];

        v40 = v27;
        if (v56 == 8)
        {
          swift_getKeyPath();
          v57 = v99;
          v102[0] = v99;
          sub_115900();

          v58 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
          swift_beginAccess();
          v59 = *&v57[v58];
          v60 = v96;
          v61 = *(v95 + 56);
          v61(v96, 1, 1, v2);
          v62 = v94;
          v61(v94, 1, 1, v2);
          v37 = v98;
          sub_64A5C(8, v59, 0, v60, v62, v98);
          v63 = type metadata accessor for ChargingState(0);
          (*(*(v63 - 8) + 56))(v37, 0, 1, v63);
          v64 = swift_getKeyPath();
          __chkstk_darwin(v64);
          *(&v91 - 2) = v57;
          *(&v91 - 1) = v37;
          v101 = v57;
        }

        else
        {
          v77 = type metadata accessor for ChargingState(0);
          v37 = v98;
          (*(*(v77 - 8) + 56))(v98, 1, 1, v77);
          v78 = swift_getKeyPath();
          __chkstk_darwin(v78);
          v79 = v99;
          *(&v91 - 2) = v99;
          *(&v91 - 1) = v37;
          v102[0] = v79;
        }

LABEL_7:
        sub_1158F0();

        return sub_488C8(v37, &qword_182EA8, &qword_1249D0);
      }
    }

    v41 = type metadata accessor for ChargingState(0);
    v37 = v98;
    (*(*(v41 - 8) + 56))(v98, 1, 1, v41);
    v42 = swift_getKeyPath();
    v40 = v27;
    __chkstk_darwin(v42);
    v43 = v99;
    *(&v91 - 2) = v99;
    *(&v91 - 1) = v37;
    v102[0] = v43;
    goto LABEL_7;
  }

  return result;
}

void sub_4CAD8(uint64_t a1, char a2, void *a3, int a4)
{
  LODWORD(v141) = a4;
  v134 = a3;
  v7 = sub_46F9C(&qword_182EA0, &qword_1248D8);
  __chkstk_darwin(v7 - 8);
  v9 = v110 - v8;
  v10 = sub_116FA0();
  v139 = *(v10 - 8);
  v140 = v10;
  __chkstk_darwin(v10);
  v136 = v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_116FE0();
  v137 = *(v12 - 8);
  v138 = v12;
  __chkstk_darwin(v12);
  v135 = v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_46F9C(&qword_182FE0, &unk_127BB0);
  __chkstk_darwin(v14 - 8);
  v131 = v110 - v15;
  v16 = sub_46F9C(&qword_182FE8, &unk_124E20);
  __chkstk_darwin(v16 - 8);
  v132 = v110 - v17;
  v133 = sub_46F9C(&qword_182FF0, &unk_127BC0);
  v130 = *(v133 - 8);
  __chkstk_darwin(v133);
  v127 = v110 - v18;
  v146 = sub_115520();
  v19 = *(v146 - 8);
  __chkstk_darwin(v146);
  v129 = v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v128 = v110 - v22;
  v143 = sub_115760();
  v145 = *(v143 - 8);
  __chkstk_darwin(v143);
  v24 = v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v144 = v110 - v26;
  v27 = sub_46F9C(&qword_182FF8, &qword_124E30);
  __chkstk_darwin(v27 - 8);
  v29 = v110 - v28;
  v142 = sub_116740();
  v30 = *(v142 - 8);
  __chkstk_darwin(v142);
  v32 = v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_115570();
  v34 = __chkstk_darwin(v33 - 8);
  if ((a2 & 1) != 0 || (v35 = objc_opt_self(), (v36 = [v35 localizedStringWithPercentage:a1]) == 0))
  {
    (*(v19 + 56))(v9, 1, 1, v146, v34);
    sub_494E8(v9);
    return;
  }

  v122 = v35;
  v126 = v29;
  v120 = v19;
  v125 = v4;
  v37 = v36;
  v38 = sub_1171B0();
  v40 = v39;

  v41 = sub_117170();
  v42 = BatteryUILocalization(v41);

  if (!v42)
  {
    __break(1u);
    goto LABEL_18;
  }

  v124 = swift_allocBox();
  v44 = v43;
  sub_1171B0();

  v117 = sub_46F9C(&qword_182EF8, &unk_125990);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_124890;
  *(v45 + 56) = &type metadata for String;
  v114 = sub_53EE8(v45, v46, v47);
  *(v45 + 64) = v114;
  v118 = v38;
  *(v45 + 32) = v38;
  *(v45 + 40) = v40;

  sub_117180();
  v123 = v40;

  sub_115560();
  sub_115530();
  aBlock = sub_116BB0();
  v121 = sub_547C8(aBlock, v48, v49);
  sub_115540();
  v50 = v30;
  v51 = *(v30 + 104);
  v116 = enum case for Font.TextStyle.footnote(_:);
  v52 = v142;
  v115 = v51;
  v51(v32);
  v53 = sub_116690();
  v54 = *(v53 - 8);
  v55 = v126;
  v113 = *(v54 + 56);
  v112 = v54 + 56;
  v113(v126, 1, 1, v53);
  sub_1166C0();
  v56 = sub_1166E0();
  sub_488C8(v55, &qword_182FF8, &qword_124E30);
  v58 = *(v50 + 8);
  v57 = v50 + 8;
  v111 = v58;
  v59 = (v58)(v32, v52);
  aBlock = v56;
  v110[1] = sub_5481C(v59, v60, v61);
  v119 = v44;
  sub_115540();
  if ((v141 & 1) == 0)
  {
    v110[0] = v57;
    sub_115700();
    sub_115750();
    sub_550F8(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v71 = v143;
    v72 = sub_117120();
    v73 = *(v145 + 8);
    v145 += 8;
    v141 = v73;
    v73(v24, v71);
    if ((v72 & 1) != 0 || (isa = sub_1156B0().super.isa, v75 = [v122 getRelativeDateStringForDate:isa], isa, !v75))
    {

      sub_54960(0, &qword_182EC8, OS_dispatch_queue_ptr);
      v98 = sub_117540();
      v99 = swift_allocObject();
      v100 = v125;
      v101 = v124;
      *(v99 + 16) = v125;
      *(v99 + 24) = v101;
      v152 = sub_55284;
      v153 = v99;
      aBlock = _NSConcreteStackBlock;
      v149 = 1107296256;
      v150 = sub_4E4A8;
      v151 = &unk_165978;
      v102 = _Block_copy(&aBlock);
      v103 = v100;

      v104 = v135;
      sub_116FC0();
      aBlock = _swiftEmptyArrayStorage;
      sub_550F8(&qword_182ED0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_46F9C(&qword_182ED8, &unk_124BA0);
      sub_48800(&qword_182EE0, &qword_182ED8, &unk_124BA0, &protocol conformance descriptor for [A]);
      v105 = v136;
      v106 = v140;
      sub_117680();
      sub_117550();
      _Block_release(v102);

      (*(v139 + 8))(v105, v106);
      (*(v137 + 8))(v104, v138);
      v141(v144, v143);
      goto LABEL_14;
    }

    v134 = sub_1171B0();
    v77 = v76;

    v78 = sub_117170();
    v79 = BatteryUILocalization(v78);

    if (v79)
    {
      sub_1171B0();

      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1248A0;
      v81 = v114;
      *(v80 + 56) = &type metadata for String;
      *(v80 + 64) = v81;
      v82 = v123;
      *(v80 + 32) = v118;
      *(v80 + 40) = v82;
      *(v80 + 96) = &type metadata for String;
      *(v80 + 104) = v81;
      *(v80 + 72) = v134;
      *(v80 + 80) = v77;

      sub_117180();
      v123 = v77;

      sub_115560();
      v83 = v128;
      sub_115530();
      v84 = v120;
      v85 = v119;
      v86 = v83;
      v87 = v146;
      (*(v120 + 40))(v119, v86, v146);
      aBlock = sub_116BB0();
      sub_115540();
      v115(v32, v116, v52);
      v88 = v53;
      v89 = v85;
      v113(v55, 1, 1, v88);
      sub_1166C0();
      v90 = sub_1166E0();
      sub_488C8(v55, &qword_182FF8, &qword_124E30);
      v111(v32, v52);
      aBlock = v90;
      sub_115540();
      v91 = v129;
      (*(v84 + 16))(v129, v89, v87);
      aBlock = v134;
      v149 = v123;
      v92 = sub_115820();
      v93 = v131;
      (*(*(v92 - 8) + 56))(v131, 1, 1, v92);
      v94 = sub_550F8(&unk_183010, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      sub_4869C(v94, v95, v96);
      v97 = v132;
      sub_1155B0();
      sub_488C8(v93, &qword_182FE0, &unk_127BB0);
      (*(v84 + 8))(v91, v87);

      if ((*(v130 + 48))(v97, 1, v133) == 1)
      {
        v141(v144, v143);
        sub_488C8(v97, &qword_182FE8, &unk_124E20);
      }

      else
      {
        v107 = v127;
        sub_548D0(v97, v127, &qword_182FF0, &unk_127BC0);
        v108 = sub_116BC0();
        sub_48800(&qword_183020, &qword_182FF0, &unk_127BC0, &protocol conformance descriptor for Range<A>);
        v109 = sub_115550();
        v147 = v108;
        sub_115580();
        v109(&aBlock, 0);
        sub_488C8(v107, &qword_182FF0, &unk_127BC0);
        v141(v144, v143);
      }

      goto LABEL_6;
    }

LABEL_18:
    __break(1u);
    return;
  }

LABEL_6:
  sub_54960(0, &qword_182EC8, OS_dispatch_queue_ptr);
  v62 = sub_117540();
  v63 = swift_allocObject();
  v64 = v125;
  v65 = v124;
  *(v63 + 16) = v125;
  *(v63 + 24) = v65;
  v152 = sub_54870;
  v153 = v63;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v150 = sub_4E4A8;
  v151 = &unk_165928;
  v66 = _Block_copy(&aBlock);
  v67 = v64;

  v68 = v135;
  sub_116FC0();
  aBlock = _swiftEmptyArrayStorage;
  sub_550F8(&qword_182ED0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_46F9C(&qword_182ED8, &unk_124BA0);
  sub_48800(&qword_182EE0, &qword_182ED8, &unk_124BA0, &protocol conformance descriptor for [A]);
  v69 = v136;
  v70 = v140;
  sub_117680();
  sub_117550();
  _Block_release(v66);

  (*(v139 + 8))(v69, v70);
  (*(v137 + 8))(v68, v138);
LABEL_14:
}

uint64_t sub_4DC6C()
{
  v1 = sub_46F9C(&qword_182EB0, &qword_124AA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_117410();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_4DE94(0, 0, v3, &unk_124B70, v5);
}

uint64_t sub_4DD90()
{
  v1 = v0[3];
  sub_4B5C4();
  swift_getKeyPath();
  v0[2] = v1;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong refreshData];
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_4DE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_46F9C(&qword_182EB0, &qword_124AA0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_479B4(a3, v25 - v10, &qword_182EB0, &qword_124AA0);
  v12 = sub_117410();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_488C8(v11, &qword_182EB0, &qword_124AA0);
  }

  else
  {
    sub_117400();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1173D0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1171E0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_488C8(a3, &qword_182EB0, &qword_124AA0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_488C8(a3, &qword_182EB0, &qword_124AA0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_4E194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_46F9C(&qword_182EB0, &qword_124AA0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_479B4(a3, v25 - v10, &qword_182EB0, &qword_124AA0);
  v12 = sub_117410();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_488C8(v11, &qword_182EB0, &qword_124AA0);
  }

  else
  {
    sub_117400();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1173D0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1171E0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_46F9C(&qword_182FD8, &qword_124E08);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_488C8(a3, &qword_182EB0, &qword_124AA0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_488C8(a3, &qword_182EB0, &qword_124AA0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_46F9C(&qword_182FD8, &qword_124E08);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_4E4A8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_4E4EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_46F9C(&qword_182EA0, &qword_1248D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_115520();
  v6 = swift_projectBox();
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  return sub_494E8(v4);
}

uint64_t sub_4E628(void *a1)
{
  v2 = sub_46F9C(&qword_182EB0, &qword_124AA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_117410();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v7 = a1;
  sub_4E194(0, 0, v4, &unk_124DF0, v6);
}

uint64_t sub_4E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a4;
  return _swift_task_switch(sub_4E750, 0, 0);
}

uint64_t sub_4E750()
{
  v1 = *(v0 + 32);
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    [Strong refreshData];
  }

  **(v0 + 24) = v3 == 0;
  v4 = *(v0 + 8);

  return v4();
}

void sub_4E860(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_4E948(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_4EA10@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t sub_4EAF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v10 = a1[1];

  return sub_4B328(v11, v10, a5, a6, a7);
}

uint64_t sub_4EB54()
{
  swift_getKeyPath();
  v3 = v0;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v1 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_4EC10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v4 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_4ECFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = sub_116FA0();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_116FE0();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_4EE18, 0, 0);
}

uint64_t sub_4EE18()
{
  v1 = v0[17];
  swift_getKeyPath();
  v0[14] = v1;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong timeEstimateTo80], v3, v4) && (objc_msgSend(v4, "doubleValue"), v6 = v5, v4, sub_549A8(0, v6), v8))
  {
    v9 = v7;
    v10 = v8;
    v11 = v0[17];
    sub_54960(0, &qword_182EC8, OS_dispatch_queue_ptr);
    v12 = sub_117540();
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v9;
    v13[4] = v10;
    v0[12] = sub_54DC4;
    v0[13] = v13;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_4E4A8;
    v0[11] = &unk_165B08;
    v14 = _Block_copy(v0 + 8);
    v15 = v11;

    sub_116FC0();
    v0[16] = _swiftEmptyArrayStorage;
    sub_550F8(&qword_182ED0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_46F9C(&qword_182ED8, &unk_124BA0);
    sub_48800(&qword_182EE0, &qword_182ED8, &unk_124BA0, &protocol conformance descriptor for [A]);
  }

  else
  {
    v16 = v0[17];
    sub_54960(0, &qword_182EC8, OS_dispatch_queue_ptr);
    v12 = sub_117540();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v0[6] = sub_54D44;
    v0[7] = v17;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_4E4A8;
    v0[5] = &unk_165AB8;
    v14 = _Block_copy(v0 + 2);
    v18 = v16;

    sub_116FC0();
    v0[15] = _swiftEmptyArrayStorage;
    sub_550F8(&qword_182ED0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_46F9C(&qword_182ED8, &unk_124BA0);
    sub_48800(&qword_182EE0, &qword_182ED8, &unk_124BA0, &protocol conformance descriptor for [A]);
  }

  sub_117680();
  v20 = v0[22];
  v19 = v0[23];
  v22 = v0[20];
  v21 = v0[21];
  v23 = v0[18];
  v24 = v0[19];
  sub_117550();
  _Block_release(v14);

  (*(v24 + 8))(v22, v23);
  (*(v20 + 8))(v19, v21);

  v25 = v0[1];

  return v25();
}

uint64_t sub_4F2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = sub_116FA0();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_116FE0();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_4F3D8, 0, 0);
}

uint64_t sub_4F3D8()
{
  v1 = v0[17];
  swift_getKeyPath();
  v0[14] = v1;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong timeEstimateToLimit], v3, v4) && (objc_msgSend(v4, "doubleValue"), v6 = v5, v4, sub_549A8(1, v6), v8))
  {
    v9 = v7;
    v10 = v8;
    v11 = v0[17];
    sub_54960(0, &qword_182EC8, OS_dispatch_queue_ptr);
    v12 = sub_117540();
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v9;
    v13[4] = v10;
    v0[12] = sub_54C10;
    v0[13] = v13;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_4E4A8;
    v0[11] = &unk_165A18;
    v14 = _Block_copy(v0 + 8);
    v15 = v11;

    sub_116FC0();
    v0[16] = _swiftEmptyArrayStorage;
    sub_550F8(&qword_182ED0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_46F9C(&qword_182ED8, &unk_124BA0);
    sub_48800(&qword_182EE0, &qword_182ED8, &unk_124BA0, &protocol conformance descriptor for [A]);
  }

  else
  {
    v16 = v0[17];
    sub_54960(0, &qword_182EC8, OS_dispatch_queue_ptr);
    v12 = sub_117540();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v0[6] = sub_54BCC;
    v0[7] = v17;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_4E4A8;
    v0[5] = &unk_1659C8;
    v14 = _Block_copy(v0 + 2);
    v18 = v16;

    sub_116FC0();
    v0[15] = _swiftEmptyArrayStorage;
    sub_550F8(&qword_182ED0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_46F9C(&qword_182ED8, &unk_124BA0);
    sub_48800(&qword_182EE0, &qword_182ED8, &unk_124BA0, &protocol conformance descriptor for [A]);
  }

  sub_117680();
  v20 = v0[22];
  v19 = v0[23];
  v22 = v0[20];
  v21 = v0[21];
  v23 = v0[18];
  v24 = v0[19];
  sub_117550();
  _Block_release(v14);

  (*(v24 + 8))(v22, v23);
  (*(v20 + 8))(v19, v21);

  v25 = v0[1];

  return v25();
}

uint64_t sub_4F87C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = (a1 + *a4);
  v9 = v8[1];
  if (v9 && (*v8 == a2 ? (v10 = v9 == a3) : (v10 = 0), v10 || (sub_1179E0() & 1) != 0))
  {
    *v8 = a2;
    v8[1] = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
    sub_1158F0();
  }
}

uint64_t sub_4F9F4(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = (result + *a2);
  if (v4[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
    sub_1158F0();
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
  }

  return result;
}

id sub_4FAF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_A77D0(sub_4E8C8, 0);
  swift_getKeyPath();
  v7 = v0;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v3 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__refreshTimer;
  [*&v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__refreshTimer] invalidate];
  if (*&v1[v3])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v7 = v1;
    sub_1158F0();
  }

  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_4FDE0()
{
  v1 = sub_116FA0();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_116FE0();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_54960(0, &qword_182EC8, OS_dispatch_queue_ptr);
  v7 = sub_117540();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_53D14;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4E4A8;
  aBlock[3] = &unk_165690;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_116FC0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_550F8(&qword_182ED0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_46F9C(&qword_182ED8, &unk_124BA0);
  sub_48800(&qword_182EE0, &qword_182ED8, &unk_124BA0, &protocol conformance descriptor for [A]);
  sub_117680();
  sub_117550();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_500D4()
{
  v1 = v0;
  v2 = sub_46F9C(&qword_182EB0, &qword_124AA0);
  __chkstk_darwin(v2 - 8);
  v70[0] = v70 - v3;
  v4 = sub_46F9C(&qword_182EA8, &qword_1249D0);
  __chkstk_darwin(v4 - 8);
  v6 = (v70 - v5);
  swift_getKeyPath();
  v71 = v0;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong lastChargeLevel];

    if (v9)
    {
      v10 = [v9 integerValue];

      v11 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
    v10 = 0;
  }

  swift_getKeyPath();
  v71 = v1;
  sub_115900();

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12 && (v13 = v12, v14 = [v12 lastChargeTimeInterval], v13, v14))
  {
    [v14 doubleValue];
    v16 = v15;

    v17 = 0;
    v18 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 1;
  }

  sub_4CAD8(v10, v11, v18, v17);
  swift_getKeyPath();
  v71 = v1;
  sub_115900();

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 isLowPowerModeEnabled];

    v22 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isLowPowerModeEnabled];
    if (v21 != v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isLowPowerModeEnabled])
    {
LABEL_12:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v70[-2] = v1;
      LOBYTE(v70[-1]) = v21;
      v71 = v1;
      sub_1158F0();

      goto LABEL_15;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
    v22 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isLowPowerModeEnabled];
    if (v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isLowPowerModeEnabled])
    {
      goto LABEL_12;
    }
  }

  *v22 = v21;
LABEL_15:
  swift_getKeyPath();
  v71 = v1;
  sub_115900();

  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 isCriticalLevel];

    v27 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCriticalLevel];
    if (v26 != v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCriticalLevel])
    {
LABEL_17:
      v28 = swift_getKeyPath();
      __chkstk_darwin(v28);
      v70[-2] = v1;
      LOBYTE(v70[-1]) = v26;
      v71 = v1;
      sub_1158F0();

      goto LABEL_20;
    }
  }

  else
  {
    LOBYTE(v26) = 0;
    v27 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCriticalLevel];
    if (v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCriticalLevel])
    {
      goto LABEL_17;
    }
  }

  *v27 = v26;
LABEL_20:
  swift_getKeyPath();
  v71 = v1;
  sub_115900();

  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    v31 = [v29 isExternallyConnected];

    v32 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCharging];
    if (v31 != v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCharging])
    {
LABEL_22:
      v33 = swift_getKeyPath();
      __chkstk_darwin(v33);
      v70[-2] = v1;
      LOBYTE(v70[-1]) = v31;
      v71 = v1;
      sub_1158F0();

      goto LABEL_25;
    }
  }

  else
  {
    LOBYTE(v31) = 0;
    v32 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCharging];
    if (v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCharging])
    {
      goto LABEL_22;
    }
  }

  *v32 = v31;
LABEL_25:
  swift_getKeyPath();
  v71 = v1;
  sub_115900();

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = [v34 isPaused];

    v37 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isPaused];
    if (v36 != v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isPaused])
    {
LABEL_27:
      v38 = swift_getKeyPath();
      __chkstk_darwin(v38);
      v70[-2] = v1;
      LOBYTE(v70[-1]) = v36;
      v71 = v1;
      sub_1158F0();

      goto LABEL_30;
    }
  }

  else
  {
    LOBYTE(v36) = 0;
    v37 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isPaused];
    if (v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isPaused])
    {
      goto LABEL_27;
    }
  }

  *v37 = v36;
LABEL_30:
  swift_getKeyPath();
  v71 = v1;
  sub_115900();

  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    v41 = [v39 isEoc];

    v42 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isFullyCharged];
    if (v41 != v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isFullyCharged])
    {
LABEL_32:
      v43 = swift_getKeyPath();
      __chkstk_darwin(v43);
      v70[-2] = v1;
      LOBYTE(v70[-1]) = v41;
      v71 = v1;
      sub_1158F0();

      goto LABEL_35;
    }
  }

  else
  {
    LOBYTE(v41) = 0;
    v42 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isFullyCharged];
    if (v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isFullyCharged])
    {
      goto LABEL_32;
    }
  }

  *v42 = v41;
LABEL_35:
  swift_getKeyPath();
  v71 = v1;
  sub_115900();

  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = v44;
    v46 = [v44 uisocLevel];

    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (*&v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__progress] != v47)
  {
    v48 = swift_getKeyPath();
    __chkstk_darwin(v48);
    v70[-2] = v1;
    v70[-1] = v47;
    v71 = v1;
    sub_1158F0();
  }

  swift_getKeyPath();
  v71 = v1;
  sub_115900();

  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    v50 = v49;
    v51 = [v49 shouldShowOverrideCard];

    v52 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__shouldShowOverrideCard];
    if (v51 != v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__shouldShowOverrideCard])
    {
LABEL_42:
      v53 = swift_getKeyPath();
      __chkstk_darwin(v53);
      v70[-2] = v1;
      LOBYTE(v70[-1]) = v51;
      v71 = v1;
      sub_1158F0();

      goto LABEL_45;
    }
  }

  else
  {
    LOBYTE(v51) = 0;
    v52 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__shouldShowOverrideCard];
    if (v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__shouldShowOverrideCard])
    {
      goto LABEL_42;
    }
  }

  *v52 = v51;
LABEL_45:
  swift_getKeyPath();
  v71 = v1;
  sub_115900();

  v54 = swift_unknownObjectWeakLoadStrong();
  if (v54)
  {
    v55 = v54;
    v56 = [v54 shouldShowLowPowerModeCard];

    v57 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__shouldShowLowPowerModeCard];
    if (v56 != v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__shouldShowLowPowerModeCard])
    {
LABEL_47:
      v58 = swift_getKeyPath();
      __chkstk_darwin(v58);
      v70[-2] = v1;
      LOBYTE(v70[-1]) = v56;
      v71 = v1;
      sub_1158F0();

      goto LABEL_50;
    }
  }

  else
  {
    LOBYTE(v56) = 0;
    v57 = &v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__shouldShowLowPowerModeCard];
    if (v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__shouldShowLowPowerModeCard])
    {
      goto LABEL_47;
    }
  }

  *v57 = v56;
LABEL_50:
  sub_4BB18();
  swift_getKeyPath();
  v71 = v1;
  sub_115900();

  v59 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingState;
  swift_beginAccess();
  sub_479B4(&v1[v59], v6, &qword_182EA8, &qword_1249D0);
  v60 = type metadata accessor for ChargingState(0);
  if ((*(*(v60 - 8) + 48))(v6, 1, v60))
  {
    sub_488C8(v6, &qword_182EA8, &qword_1249D0);
  }

  else
  {
    v61 = *v6;
    sub_488C8(v6, &qword_182EA8, &qword_1249D0);
    if (v61 == 9)
    {
      v62 = 0;
      goto LABEL_55;
    }
  }

  v62 = 1;
LABEL_55:
  if (v1[OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingRateType] != v62)
  {
    v63 = swift_getKeyPath();
    __chkstk_darwin(v63);
    v70[-2] = v1;
    LOBYTE(v70[-1]) = v62;
    v70[1] = v1;
    sub_1158F0();
  }

  v64 = sub_117410();
  v65 = *(*(v64 - 8) + 56);
  v66 = v70[0];
  v65(v70[0], 1, 1, v64);
  v67 = swift_allocObject();
  v67[2] = 0;
  v67[3] = 0;
  v67[4] = v1;
  v68 = v1;
  sub_4DE94(0, 0, v66, &unk_124DD8, v67);

  v65(v66, 1, 1, v64);
  v69 = swift_allocObject();
  v69[2] = 0;
  v69[3] = 0;
  v69[4] = v68;
  v68;
  sub_4DE94(0, 0, v66, &unk_124DE0, v69);

  sub_4B5C4();
}

uint64_t sub_50EDC()
{
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v1 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
  swift_beginAccess();
  if (*(v0 + v1) >= 80 && (swift_getKeyPath(), sub_115900(), , v2 = *(v0 + v1), swift_getKeyPath(), sub_115900(), , *(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCharging) == 1) && (swift_getKeyPath(), sub_115900(), , *(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__progress) < v2))
  {
    swift_getKeyPath();
    sub_115900();

    v3 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isPaused) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_510B4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  if (*(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCharging) != 1)
  {
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_115900();

  if (*(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__progress) > 79)
  {
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_115900();

  v2 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__timeToChargeToInitialChargeTargetString + 8);
  if (v2)
  {
    swift_getKeyPath();
    sub_115900();

    v2 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__timeToChargeToChargeLimitString + 8);
    if (v2)
    {
      swift_getKeyPath();
      sub_115900();

      v3 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
      swift_beginAccess();
      if (*(v1 + v3) >= 81)
      {
        swift_getKeyPath();
        sub_115900();

        LOBYTE(v2) = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isPaused) ^ 1;
        return v2 & 1;
      }

LABEL_7:
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_512E0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  if (*(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__progress) > 80)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_115900();

  v2 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
  swift_beginAccess();
  if (*(v1 + v2) == 80 || (sub_510B4() & 1) == 0)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_115900();

  return *(v1 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isPaused);
}

uint64_t sub_51444()
{
  v1 = v0;
  v2 = type metadata accessor for ChargingState(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_46F9C(&qword_182EA8, &qword_1249D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ChargingState.State(0);
  __chkstk_darwin(v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v17 = v0;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v12 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingState;
  swift_beginAccess();
  sub_479B4(v1 + v12, v8, &qword_182EA8, &qword_1249D0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_488C8(v8, &qword_182EA8, &qword_1249D0);
  }

  else
  {
    sub_53E24(v8, v5);
    sub_488C8(v8, &qword_182EA8, &qword_1249D0);
    sub_645F8(v11);
    sub_53E88(v5, type metadata accessor for ChargingState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v13 = *v11;
      v14 = sub_46F9C(&qword_182EE8, &qword_1259F0);
      sub_488C8(v11 + *(v14 + 48), &qword_182EF0, &unk_124BB0);
      switch(v13)
      {
        case 7:
          return 0xD000000000000012;
        case 3:
          return 0x616C732E746C6F62;
        case 2:
          return 0xD000000000000015;
      }
    }

    else
    {
      sub_53E88(v11, type metadata accessor for ChargingState.State);
    }
  }

  return 0x6C69662E746C6F62;
}

void sub_517BC()
{
  v1 = v0;
  v2 = type metadata accessor for ChargingState(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_46F9C(&qword_182EA8, &qword_1249D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v52 = type metadata accessor for ChargingState.State(0);
  __chkstk_darwin(v52);
  v10 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v54 = v0;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v11 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingState;
  swift_beginAccess();
  sub_479B4(v0 + v11, v8, &qword_182EA8, &qword_1249D0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_488C8(v8, &qword_182EA8, &qword_1249D0);
LABEL_3:
    v12 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_4;
  }

  sub_53E24(v8, v5);
  sub_488C8(v8, &qword_182EA8, &qword_1249D0);
  sub_645F8(v10);
  sub_53E88(v5, type metadata accessor for ChargingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    swift_getKeyPath();
    v53 = v0;
    sub_115900();

    if (*(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isFullyCharged) != 1)
    {
LABEL_25:
      swift_getKeyPath();
      v53 = v1;
      sub_115900();

      if (*(v1 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isPaused) == 1)
      {
        v33 = sub_117170();
        v16 = BatteryUILocalization(v33);

        if (v16)
        {
          goto LABEL_9;
        }

        __break(1u);
      }

      swift_getKeyPath();
      v53 = v1;
      sub_115900();

      if (*(v1 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingRateType))
      {
        goto LABEL_3;
      }

      v34 = sub_117170();
      v35 = BatteryUILocalization(v34);

      if (!v35)
      {
LABEL_42:
        __break(1u);
        return;
      }

      v12 = sub_1171B0();
      v13 = v36;

      goto LABEL_4;
    }

    v29 = sub_117170();
    v16 = BatteryUILocalization(v29);

    if (v16)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_20:
    v30 = *v10;
    if (v30 != 2)
    {
      if (v30 != 3)
      {
        if (v30 != 7)
        {
          v41 = 0;
          v43 = 0xE000000000000000;
          goto LABEL_36;
        }

        v31 = sub_117170();
        v32 = BatteryUILocalization(v31);

        if (!v32)
        {
          __break(1u);
          goto LABEL_25;
        }

LABEL_34:
        v41 = sub_1171B0();
        v43 = v42;

LABEL_36:
        v44 = sub_117170();
        v45 = BatteryUILocalization(v44);

        if (!v45)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v46 = *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
        sub_1171B0();

        sub_46F9C(&qword_182EF8, &unk_125990);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_124890;
        *(v47 + 56) = &type metadata for String;
        *(v47 + 64) = sub_53EE8(v47, v48, v49);
        *(v47 + 32) = v41;
        *(v47 + 40) = v43;
        v12 = sub_117180();
        v13 = v50;

        sub_488C8(v10 + v46, &qword_182EF0, &unk_124BB0);
        goto LABEL_4;
      }

      v37 = objc_opt_self();
      v38 = sub_117170();
      v39 = [v37 modelSpecificLocalizedStringKeyForKey:v38];

      v32 = BatteryUILocalization(v39);
      if (v32)
      {
        goto LABEL_34;
      }

      __break(1u);
    }

    v40 = sub_117170();
    v32 = BatteryUILocalization(v40);

    if (!v32)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_20;
  }

  if (*v10 != 8)
  {
    goto LABEL_3;
  }

  v18 = [objc_opt_self() localizedStringWithPercentage:v10[1]];
  if (!v18)
  {
    goto LABEL_3;
  }

  v19 = v18;
  v20 = sub_1171B0();
  v22 = v21;

  v23 = sub_117170();
  v24 = BatteryUILocalization(v23);

  if (!v24)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_1171B0();

  sub_46F9C(&qword_182EF8, &unk_125990);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_124890;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_53EE8(v25, v26, v27);
  *(v25 + 32) = v20;
  *(v25 + 40) = v22;
  v12 = sub_117180();
  v13 = v28;

LABEL_4:
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    v15 = sub_117170();
    v16 = BatteryUILocalization(v15);

    if (v16)
    {

LABEL_9:
      sub_1171B0();

      return;
    }

    __break(1u);
    goto LABEL_39;
  }
}

void sub_51FC0()
{
  v1 = v0;
  v2 = sub_115760();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v56 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v55 - v5;
  v6 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v6 - 8);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for ChargingState(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_46F9C(&qword_182EA8, &qword_1249D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = sub_46F9C(&qword_182F08, &qword_124BC0);
  __chkstk_darwin(v18 - 8);
  v20 = (&v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = &v55 - v22;
  swift_getKeyPath();
  v60 = v0;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v24 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingState;
  swift_beginAccess();
  sub_479B4(v1 + v24, v17, &qword_182EA8, &qword_1249D0);
  if ((*(v12 + 48))(v17, 1, v11))
  {
    sub_488C8(v17, &qword_182EA8, &qword_1249D0);
    v25 = type metadata accessor for ChargingState.State(0);
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = &qword_182F08;
    v27 = &qword_124BC0;
    v28 = v23;
LABEL_3:
    sub_488C8(v28, v26, v27);
    return;
  }

  v30 = v57;
  v29 = v58;
  v31 = v59;
  sub_53E24(v17, v14);
  sub_488C8(v17, &qword_182EA8, &qword_1249D0);
  sub_645F8(v23);
  sub_53E88(v14, type metadata accessor for ChargingState);
  v32 = type metadata accessor for ChargingState.State(0);
  (*(*(v32 - 8) + 56))(v23, 0, 1, v32);
  sub_479B4(v23, v20, &qword_182F08, &qword_124BC0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v33 = *v20;
    v34 = v20 + *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
    v35 = v10;
    sub_548D0(v34, v10, &qword_182EF0, &unk_124BB0);
    if (v33 == 3)
    {
      sub_488C8(v23, &qword_182F08, &qword_124BC0);
      v36 = objc_opt_self();
      v37 = sub_117170();
      v38 = [v36 modelSpecificLocalizedStringKeyForKey:v37];

      v39 = BatteryUILocalization(v38);
      if (v39)
      {
        sub_1171B0();
      }

      sub_488C8(v35, &qword_182EF0, &unk_124BB0);
    }

    else
    {
      sub_479B4(v10, v30, &qword_182EF0, &unk_124BB0);
      if ((*(v29 + 48))(v30, 1, v31) == 1)
      {
        sub_488C8(v10, &qword_182EF0, &unk_124BB0);
        sub_488C8(v23, &qword_182F08, &qword_124BC0);
        v28 = v30;
        v26 = &qword_182EF0;
        v27 = &unk_124BB0;
        goto LABEL_3;
      }

      v40 = v55;
      (*(v29 + 32))(v55, v30, v31);
      v41 = v56;
      sub_115750();
      sub_550F8(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v42 = sub_117120();
      v43 = *(v29 + 8);
      v43(v41, v31);
      if ((v42 & 1) != 0 || (v44 = objc_opt_self(), isa = sub_1156B0().super.isa, v46 = [v44 getLocalizedTimeStringFromFutureDate:isa], isa, !v46))
      {
        v43(v40, v31);
        sub_488C8(v35, &qword_182EF0, &unk_124BB0);
        v26 = &qword_182F08;
        v27 = &qword_124BC0;
        v28 = v23;
        goto LABEL_3;
      }

      v47 = sub_1171B0();
      v49 = v48;

      v50 = sub_117170();
      v51 = BatteryUILocalization(v50);

      if (v51)
      {
        sub_488C8(v23, &qword_182F08, &qword_124BC0);
        sub_1171B0();

        sub_46F9C(&qword_182EF8, &unk_125990);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_124890;
        *(v52 + 56) = &type metadata for String;
        *(v52 + 64) = sub_53EE8(v52, v53, v54);
        *(v52 + 32) = v47;
        *(v52 + 40) = v49;
        sub_117180();

        v43(v40, v31);
        sub_488C8(v35, &qword_182EF0, &unk_124BB0);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_488C8(v23, &qword_182F08, &qword_124BC0);
    sub_53E88(v20, type metadata accessor for ChargingState.State);
  }
}

uint64_t sub_5287C()
{
  swift_getKeyPath();
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  if (*(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isLowPowerModeEnabled) == 1)
  {
    v1 = [objc_opt_self() systemYellowColor];
LABEL_5:
    v2 = v1;
    return sub_116BE0();
  }

  swift_getKeyPath();
  sub_115900();

  if (*(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCriticalLevel) == 1)
  {
    v1 = [objc_opt_self() systemRedColor];
    goto LABEL_5;
  }

  return sub_116BB0();
}

uint64_t sub_529CC()
{
  v1 = v0;
  v2 = type metadata accessor for ChargingState(0);
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_46F9C(&qword_182EA8, &qword_1249D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ChargingState.State(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v20 = v0;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  if ((*(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCharging) & 1) == 0)
  {
    swift_getKeyPath();
    v20 = v0;
    sub_115900();

    if (*(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isLowPowerModeEnabled) == 1)
    {
      return sub_116B90();
    }

    swift_getKeyPath();
    v20 = v0;
    sub_115900();

    if (*(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isCriticalLevel) == 1)
    {
      return sub_116B20();
    }

LABEL_7:
    v12 = [objc_opt_self() systemGrayColor];
LABEL_18:
    v16 = v12;
    return sub_116BE0();
  }

  swift_getKeyPath();
  v20 = v0;
  sub_115900();

  if (*(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isFullyCharged) == 1)
  {
    goto LABEL_17;
  }

  swift_getKeyPath();
  v20 = v0;
  sub_115900();

  if (*(v0 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__isPaused) == 1)
  {
    goto LABEL_7;
  }

  swift_getKeyPath();
  v20 = v0;
  sub_115900();

  v13 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingState;
  swift_beginAccess();
  sub_479B4(v1 + v13, v7, &qword_182EA8, &qword_1249D0);
  if ((*(v18 + 48))(v7, 1, v2))
  {
    sub_488C8(v7, &qword_182EA8, &qword_1249D0);
  }

  else
  {
    sub_53E24(v7, v4);
    sub_488C8(v7, &qword_182EA8, &qword_1249D0);
    sub_645F8(v10);
    sub_53E88(v4, type metadata accessor for ChargingState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v14 = sub_46F9C(&qword_182EE8, &qword_1259F0);
      sub_488C8(&v10[*(v14 + 48)], &qword_182EF0, &unk_124BB0);
      v12 = [objc_opt_self() systemGrayColor];
      goto LABEL_18;
    }

    sub_53E88(v10, type metadata accessor for ChargingState.State);
  }

  swift_getKeyPath();
  v19 = v1;
  sub_115900();

  v15 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingRateType);
  if (v15 == 4)
  {
LABEL_17:
    v12 = [objc_opt_self() systemGreenColor];
    goto LABEL_18;
  }

  return sub_492CC(v15);
}

uint64_t sub_52F08()
{
  v1 = v0;
  v2 = type metadata accessor for ChargingState(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_46F9C(&qword_182EA8, &qword_1249D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ChargingState.State(0);
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v0;
  sub_550F8(&qword_182E90, type metadata accessor for ChargingStatusViewModel, &unk_124C30);
  sub_115900();

  v12 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargingState;
  swift_beginAccess();
  sub_479B4(v1 + v12, v8, &qword_182EA8, &qword_1249D0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_488C8(v8, &qword_182EA8, &qword_1249D0);
  }

  else
  {
    sub_53E24(v8, v5);
    sub_488C8(v8, &qword_182EA8, &qword_1249D0);
    sub_645F8(v11);
    sub_53E88(v5, type metadata accessor for ChargingState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v13 = sub_46F9C(&qword_182EE8, &qword_1259F0);
      sub_488C8(&v11[*(v13 + 48)], &qword_182EF0, &unk_124BB0);
      return sub_116BB0();
    }

    sub_53E88(v11, type metadata accessor for ChargingState.State);
  }

  return sub_529CC();
}

_WORD *sub_53210@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_5322C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_53324;

  return v6(a1);
}

uint64_t sub_53324()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5341C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_53510;

  return v5(v2 + 32);
}

uint64_t sub_53510()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_53624(uint64_t a1, uint64_t a2)
{
  v4 = sub_115520();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_182EA0, &qword_1248D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_46F9C(&qword_183040, &qword_124E60);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_479B4(a1, &v21 - v12, &qword_182EA0, &qword_1248D8);
  sub_479B4(a2, &v13[v15], &qword_182EA0, &qword_1248D8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_479B4(v13, v10, &qword_182EA0, &qword_1248D8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_550F8(&qword_183048, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      v18 = sub_117160();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_488C8(v13, &qword_182EA0, &qword_1248D8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_488C8(v13, &qword_183040, &qword_124E60);
    v17 = 1;
    return v17 & 1;
  }

  sub_488C8(v13, &qword_182EA0, &qword_1248D8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_53944()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__lastChargedToLabel;
  swift_beginAccess();
  sub_55090(v1, v2 + v3, &qword_182EA0, &qword_1248D8);
  return swift_endAccess();
}

uint64_t sub_53AC0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_551D8;

  return sub_4ECFC(v3, v4, v5, v2);
}

uint64_t sub_53B54()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_551D8;

  return sub_4F2BC(v3, v4, v5, v2);
}

uint64_t sub_53C40()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_551D8;

  return sub_4DD70(v3, v4, v5, v2);
}

void sub_53CD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__refreshTimer);
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__refreshTimer) = v2;
  v4 = v2;
}

uint64_t sub_53D38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_53D50()
{
  v0 = objc_opt_self();
  v1 = sub_117170();
  v2 = [v0 getDefaultValueForKey:v1];

  if (v2)
  {
    sub_117660();
    swift_unknownObjectRelease();
    sub_543D8(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_488C8(v5, &qword_182FC8, &qword_124DD0);
  return v2 != 0;
}

uint64_t sub_53E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChargingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_53E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_53EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_182F00;
  if (!qword_182F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182F00);
  }

  return result;
}

unint64_t sub_53F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_182F18;
  if (!qword_182F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182F18);
  }

  return result;
}

void sub_53F9C(uint64_t a1)
{
  sub_54148(319, &qword_182F48, &type metadata accessor for AttributedString);
  if (v1 <= 0x3F)
  {
    sub_54148(319, &qword_182F50, type metadata accessor for ChargingState);
    if (v2 <= 0x3F)
    {
      sub_115940();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_54148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_117620();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ChargingStatusViewModel.ChargingRateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChargingStatusViewModel.ChargingRateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ChargingInfo(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ChargingInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ChargingInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_5438C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

_OWORD *sub_543D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_543E8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5447C;

  return sub_4ECFC(v3, v4, v5, v2);
}

uint64_t sub_5447C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_54578()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_545B8(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_551D8;

  return sub_4E730(a1, v5, v6, v4);
}

uint64_t sub_54658(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_551D8;

  return sub_5341C(a1, v4);
}

uint64_t sub_54710(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5447C;

  return sub_5341C(a1, v4);
}

unint64_t sub_547C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183000;
  if (!qword_183000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183000);
  }

  return result;
}

unint64_t sub_5481C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183008;
  if (!qword_183008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183008);
  }

  return result;
}

uint64_t sub_54890()
{

  return swift_deallocObject();
}

uint64_t sub_548D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_46F9C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_54960(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_549A8(uint64_t a1, double a2)
{
  if (a2 >= 60.0)
  {
    if (a1)
    {
      v5 = 7200.0;
    }

    else
    {
      v5 = 3600.0;
    }

    v6 = sub_8D8B4()[8];
    if (v5 >= a2)
    {
      v17 = [v6 stringFromTimeInterval:a2];
      if (v17)
      {
        v4 = v17;
LABEL_13:
        sub_1171B0();
      }
    }

    else
    {
      v7 = [v6 stringFromTimeInterval:v5];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1171B0();
        v11 = v10;

        v12 = sub_117170();
        v13 = BatteryUILocalization(v12);

        if (v13)
        {
          sub_1171B0();

          sub_46F9C(&qword_182EF8, &unk_125990);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_124890;
          *(v14 + 56) = &type metadata for String;
          *(v14 + 64) = sub_53EE8(v14, v15, v16);
          *(v14 + 32) = v9;
          *(v14 + 40) = v11;
          sub_117180();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
    v3 = sub_117170();
    v4 = BatteryUILocalization(v3);

    if (v4)
    {
      goto LABEL_13;
    }
  }
}

uint64_t sub_54B94()
{

  return swift_deallocObject();
}

uint64_t sub_54C54()
{

  return swift_deallocObject();
}

uint64_t sub_54C8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_551D8;

  return sub_5322C(a1, v4);
}

uint64_t sub_54D84()
{

  return swift_deallocObject();
}

uint64_t sub_54E08(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_54E54()
{
  sub_117710(34);
  v1._object = 0x80000000001337C0;
  v1._countAndFlagsBits = 0xD000000000000020;
  sub_117220(v1);
  sub_46F9C(&qword_183030, &qword_124E50);
  sub_1177E0();
  return 0;
}

uint64_t sub_54EF4()
{
  sub_117710(34);
  v1._object = 0x8000000000133790;
  v1._countAndFlagsBits = 0xD000000000000020;
  sub_117220(v1);
  sub_46F9C(&qword_183030, &qword_124E50);
  sub_1177E0();
  return 0;
}

uint64_t sub_54F94()
{
  sub_117710(52);
  v1._object = 0x80000000001337F0;
  v1._countAndFlagsBits = 0xD000000000000032;
  sub_117220(v1);
  sub_46F9C(&qword_183038, &qword_124E58);
  sub_1177E0();
  return 0;
}

uint64_t sub_55038()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14BatteryUsageUI23ChargingStatusViewModel__chargeLimit;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

uint64_t sub_55090(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_46F9C(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_550F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_55304()
{
  sub_1167E0();
  sub_1167B0();
  sub_1167D0();
  sub_1167C0();
  sub_1167C0();
  sub_1167C0();
  sub_1167D0();
  sub_1167D0();
  sub_1167C0();
  sub_1167C0();
  sub_1167D0();
  sub_1167C0();
  sub_1167C0();
  sub_1167C0();
  sub_1167D0();
  sub_1167D0();
  sub_1167C0();
  sub_1167C0();
  sub_1167A0();
  v22[0] = v19;
  v22[1] = v20;
  v23 = v21;
  sub_116790();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1167E0();
  CGAffineTransformMakeScale(&v24, 1.0, 1.0);
  tx = v24.tx;
  ty = v24.ty;
  v13 = *&v24.c;
  v14 = *&v24.a;
  v25.origin.x = v1;
  v25.origin.y = v3;
  v25.size.width = v5;
  v25.size.height = v7;
  v10 = -CGRectGetMidX(v25);
  v26.origin.x = v1;
  v26.origin.y = v3;
  v26.size.width = v5;
  v26.size.height = v7;
  MidY = CGRectGetMidY(v26);
  *&v15.a = v14;
  *&v15.c = v13;
  v15.tx = tx;
  v15.ty = ty;
  CGAffineTransformTranslate(&v24, &v15, v10, -MidY);
  sub_116760();
  sub_556E0(v22);
  result = *&v16;
  xmmword_191B90 = v16;
  *&qword_191BA0 = v17;
  byte_191BB0 = v18;
  return result;
}

uint64_t sub_5566C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return v5;
}

double sub_55734@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1167E0();
  if (qword_188210 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16[0] = xmmword_191B90;
  v16[1] = *&qword_191BA0;
  v17 = byte_191BB0;
  v19[0] = xmmword_191B90;
  v19[1] = *&qword_191BA0;
  v20 = byte_191BB0;
  sub_55684(v19, &v18);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  MidY = CGRectGetMidY(v22);
  CGAffineTransformMakeTranslation(&v18, MidX, MidY);
  sub_116760();
  sub_556E0(v16);
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

uint64_t (*sub_55878(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_115FB0();
  return sub_55900;
}

uint64_t sub_55908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_573E4(a1, a2, a3);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_5596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_573E4(a1, a2, a3);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_559D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_573E4(a1, a2, a3);

  return Shape.body.getter(a1, v4);
}

uint64_t sub_55A30()
{
  if (qword_188210 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_191BB8 = xmmword_191B90;
  qword_191BC8 = qword_191BA0;
  unk_191BD0 = qword_191BA8;
  byte_191BD8 = byte_191BB0;
  return sub_5566C(xmmword_191B90, *(&xmmword_191B90 + 1), qword_191BA0, qword_191BA8, byte_191BB0);
}

double sub_55AC4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_56DF8(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t (*sub_55B08(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_115FB0();
  return sub_57B6C;
}

uint64_t sub_55B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5743C(a1, a2, a3);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_55BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5743C(a1, a2, a3);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_55C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_5743C(a1, a2, a3);

  return Shape.body.getter(a1, v4);
}

double sub_55CA4()
{
  sub_1167E0();
  sub_1167B0();
  sub_1167C0();
  sub_116780();
  sub_116780();
  sub_1167C0();
  sub_116780();
  sub_116780();
  sub_1167C0();
  sub_116780();
  sub_116780();
  sub_1167C0();
  sub_116780();
  sub_116780();
  sub_1167A0();
  sub_1167B0();
  sub_1167C0();
  sub_116780();
  sub_116780();
  sub_1167C0();
  sub_116780();
  sub_116780();
  sub_1167C0();
  sub_116780();
  sub_116780();
  sub_1167C0();
  sub_116780();
  sub_116780();
  sub_1167A0();
  v22[0] = v19;
  v22[1] = v20;
  v23 = v21;
  sub_116790();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1167E0();
  CGAffineTransformMakeScale(&v24, 0.692, 0.692);
  tx = v24.tx;
  ty = v24.ty;
  v13 = *&v24.c;
  v14 = *&v24.a;
  v25.origin.x = v1;
  v25.origin.y = v3;
  v25.size.width = v5;
  v25.size.height = v7;
  v10 = -CGRectGetMidX(v25);
  v26.origin.x = v1;
  v26.origin.y = v3;
  v26.size.width = v5;
  v26.size.height = v7;
  MidY = CGRectGetMidY(v26);
  *&v15.a = v14;
  *&v15.c = v13;
  v15.tx = tx;
  v15.ty = ty;
  CGAffineTransformTranslate(&v24, &v15, v10, -MidY);
  sub_116760();
  sub_556E0(v22);
  result = *&v16;
  xmmword_191BE0 = v16;
  *&qword_191BF0 = v17;
  byte_191C00 = v18;
  return result;
}

double sub_560B8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1167E0();
  if (qword_188220 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16[0] = xmmword_191BE0;
  v16[1] = *&qword_191BF0;
  v17 = byte_191C00;
  v19[0] = xmmword_191BE0;
  v19[1] = *&qword_191BF0;
  v20 = byte_191C00;
  sub_55684(v19, &v18);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  MidY = CGRectGetMidY(v22);
  CGAffineTransformMakeTranslation(&v18, MidX, MidY);
  sub_116760();
  sub_556E0(v16);
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

uint64_t (*sub_561F0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_115FB0();
  return sub_57B6C;
}

uint64_t sub_56278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_57654(a1, a2, a3);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_562DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_57654(a1, a2, a3);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_56340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_57654(a1, a2, a3);

  return Shape.body.getter(a1, v4);
}

uint64_t sub_5638C()
{
  if (qword_188220 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_191C08 = xmmword_191BE0;
  qword_191C18 = qword_191BF0;
  unk_191C20 = qword_191BF8;
  byte_191C28 = byte_191C00;
  return sub_5566C(xmmword_191BE0, *(&xmmword_191BE0 + 1), qword_191BF0, qword_191BF8, byte_191C00);
}

double sub_56420@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_56F88(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t (*sub_56464(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_115FB0();
  return sub_57B6C;
}

uint64_t sub_564EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_576AC(a1, a2, a3);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_56550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_576AC(a1, a2, a3);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_565B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_576AC(a1, a2, a3);

  return Shape.body.getter(a1, v4);
}

double sub_56600()
{
  sub_1167E0();
  sub_1167B0();
  sub_116780();
  sub_116780();
  sub_1167C0();
  sub_116780();
  sub_116780();
  sub_1167C0();
  sub_116780();
  sub_116780();
  sub_1167C0();
  sub_116780();
  sub_116780();
  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  sub_116790();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1167E0();
  v20.origin.x = v1;
  v20.origin.y = v3;
  v20.size.width = v5;
  v20.size.height = v7;
  v8 = -CGRectGetMidX(v20);
  v21.origin.x = v1;
  v21.origin.y = v3;
  v21.size.width = v5;
  v21.size.height = v7;
  MidY = CGRectGetMidY(v21);
  CGAffineTransformMakeTranslation(&v19, v8, -MidY);
  sub_116760();
  sub_556E0(v17);
  result = *&v11;
  xmmword_191C30 = v11;
  *&qword_191C40 = v12;
  byte_191C50 = v13;
  return result;
}

double sub_56850@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1167E0();
  if (qword_188230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16[0] = xmmword_191C30;
  v16[1] = *&qword_191C40;
  v17 = byte_191C50;
  v19[0] = xmmword_191C30;
  v19[1] = *&qword_191C40;
  v20 = byte_191C50;
  sub_55684(v19, &v18);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  MidY = CGRectGetMidY(v22);
  CGAffineTransformMakeTranslation(&v18, MidX, MidY);
  sub_116760();
  sub_556E0(v16);
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

uint64_t (*sub_56988(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_115FB0();
  return sub_57B6C;
}

uint64_t sub_56A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_57894(a1, a2, a3);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_56A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_57894(a1, a2, a3);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_56AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_57894(a1, a2, a3);

  return Shape.body.getter(a1, v4);
}

uint64_t sub_56B24()
{
  if (qword_188230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_191C58 = xmmword_191C30;
  qword_191C68 = qword_191C40;
  unk_191C70 = qword_191C48;
  byte_191C78 = byte_191C50;
  return sub_5566C(xmmword_191C30, *(&xmmword_191C30 + 1), qword_191C40, qword_191C48, byte_191C50);
}

double sub_56BB8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_57118(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t (*sub_56C14(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_115FB0();
  return sub_57B6C;
}

void sub_56C9C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_56CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5791C(a1, a2, a3);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_56D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5791C(a1, a2, a3);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_56DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_5791C(a1, a2, a3);

  return Shape.body.getter(a1, v4);
}

double sub_56DF8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1167E0();
  if (qword_188218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23[0] = xmmword_191BB8;
  v23[1] = *&qword_191BC8;
  v24 = byte_191BD8;
  v26[0] = xmmword_191BB8;
  v26[1] = *&qword_191BC8;
  v27 = byte_191BD8;
  sub_55684(v26, &v25);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  MidY = CGRectGetMidY(v29);
  CGAffineTransformMakeTranslation(&v25, MidX, MidY);
  sub_116760();
  sub_556E0(v23);
  v21[0] = v14;
  v21[1] = v15;
  v22 = v16;
  sub_116010();
  sub_116770();
  sub_57B04(v17);
  sub_556E0(v21);
  result = *&v18;
  v13 = v19;
  *a1 = v18;
  *(a1 + 16) = v13;
  *(a1 + 32) = v20;
  return result;
}

double sub_56F88@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1167E0();
  if (qword_188228 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23[0] = xmmword_191C08;
  v23[1] = *&qword_191C18;
  v24 = byte_191C28;
  v26[0] = xmmword_191C08;
  v26[1] = *&qword_191C18;
  v27 = byte_191C28;
  sub_55684(v26, &v25);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  MidY = CGRectGetMidY(v29);
  CGAffineTransformMakeTranslation(&v25, MidX, MidY);
  sub_116760();
  sub_556E0(v23);
  v21[0] = v14;
  v21[1] = v15;
  v22 = v16;
  sub_116010();
  sub_116770();
  sub_57B04(v17);
  sub_556E0(v21);
  result = *&v18;
  v13 = v19;
  *a1 = v18;
  *(a1 + 16) = v13;
  *(a1 + 32) = v20;
  return result;
}

double sub_57118@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1167E0();
  if (qword_188238 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23[0] = xmmword_191C58;
  v23[1] = *&qword_191C68;
  v24 = byte_191C78;
  v26[0] = xmmword_191C58;
  v26[1] = *&qword_191C68;
  v27 = byte_191C78;
  sub_55684(v26, &v25);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  MidY = CGRectGetMidY(v29);
  CGAffineTransformMakeTranslation(&v25, MidX, MidY);
  sub_116760();
  sub_556E0(v23);
  v21[0] = v14;
  v21[1] = v15;
  v22 = v16;
  sub_116010();
  sub_116770();
  sub_57B04(v17);
  sub_556E0(v21);
  result = *&v18;
  v13 = v19;
  *a1 = v18;
  *(a1 + 16) = v13;
  *(a1 + 32) = v20;
  return result;
}

unint64_t sub_572AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1830B0;
  if (!qword_1830B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1830B0);
  }

  return result;
}

unint64_t sub_57304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1830B8;
  if (!qword_1830B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1830B8);
  }

  return result;
}

unint64_t sub_5735C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1830C0;
  if (!qword_1830C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1830C0);
  }

  return result;
}

unint64_t sub_573E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1830D8;
  if (!qword_1830D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1830D8);
  }

  return result;
}

unint64_t sub_5743C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1830E0;
  if (!qword_1830E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1830E0);
  }

  return result;
}

unint64_t sub_57494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1830E8;
  if (!qword_1830E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1830E8);
  }

  return result;
}

unint64_t sub_574EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1830F0;
  if (!qword_1830F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1830F0);
  }

  return result;
}

unint64_t sub_57574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183108;
  if (!qword_183108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183108);
  }

  return result;
}

unint64_t sub_575CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183110;
  if (!qword_183110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183110);
  }

  return result;
}

unint64_t sub_57654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183128;
  if (!qword_183128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183128);
  }

  return result;
}

unint64_t sub_576AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183130;
  if (!qword_183130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183130);
  }

  return result;
}

unint64_t sub_57704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183138;
  if (!qword_183138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183138);
  }

  return result;
}

unint64_t sub_5775C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183140;
  if (!qword_183140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183140);
  }

  return result;
}

unint64_t sub_577E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183158;
  if (!qword_183158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183158);
  }

  return result;
}

unint64_t sub_5783C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183160;
  if (!qword_183160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183160);
  }

  return result;
}

unint64_t sub_57894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183168;
  if (!qword_183168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183168);
  }

  return result;
}

unint64_t sub_5791C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183180;
  if (!qword_183180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183180);
  }

  return result;
}

unint64_t sub_57974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183188;
  if (!qword_183188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183188);
  }

  return result;
}

unint64_t sub_579CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183190;
  if (!qword_183190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183190);
  }

  return result;
}

uint64_t sub_57A50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_57B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1831B0;
  if (!qword_1831B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1831B0);
  }

  return result;
}

uint64_t sub_57BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_4869C(a1, a2, a3);

  v5 = sub_116900();
  v7 = v6;
  v9 = v8;
  sub_116670();
  v10 = sub_1168C0();
  v12 = v11;
  v14 = v13;

  sub_48928(v5, v7, v9 & 1);

  sub_1166C0();
  v15 = sub_116810();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_48928(v10, v12, v14 & 1);

  *a4 = v15;
  *(a4 + 8) = v17;
  *(a4 + 16) = v19 & 1;
  *(a4 + 24) = v21;
  return result;
}

void sub_57CF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_4869C(a1, a2, a3);

  v5 = sub_116900();
  v7 = v6;
  v9 = v8;
  v10 = [objc_opt_self() secondaryLabelColor];
  sub_116BE0();
  v11 = sub_116890();
  v13 = v12;
  v15 = v14;
  sub_48928(v5, v7, v9 & 1);

  sub_116720();
  v16 = sub_1168C0();
  v18 = v17;
  v20 = v19;

  sub_48928(v11, v13, v15 & 1);

  sub_1166B0();
  v21 = sub_116810();
  v23 = v22;
  LOBYTE(v13) = v24;
  v26 = v25;
  sub_48928(v16, v18, v20 & 1);

  LOBYTE(v16) = sub_116620();
  sub_115FD0();
  *a4 = v21;
  *(a4 + 8) = v23;
  *(a4 + 16) = v13 & 1;
  *(a4 + 24) = v26;
  *(a4 + 32) = v16;
  *(a4 + 40) = v27;
  *(a4 + 48) = v28;
  *(a4 + 56) = v29;
  *(a4 + 64) = v30;
  *(a4 + 72) = 0;
}

uint64_t sub_57EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  sub_4869C(a1, a2, a3);

  v6 = sub_116900();
  v8 = v7;
  v10 = v9;
  if (v4)
  {
    sub_116B80();
  }

  else
  {
    v11 = [objc_opt_self() secondaryLabelColor];
    sub_116BE0();
  }

  v12 = sub_116890();
  v14 = v13;
  v16 = v15;
  sub_48928(v6, v8, v10 & 1);

  sub_116720();
  v17 = sub_1168C0();
  v19 = v18;
  v21 = v20;

  sub_48928(v12, v14, v16 & 1);

  sub_1166C0();
  v22 = sub_116810();
  v24 = v23;
  LOBYTE(v14) = v25;
  v27 = v26;
  sub_48928(v17, v19, v21 & 1);

  *a4 = v22;
  *(a4 + 8) = v24;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v27;
  return result;
}

uint64_t sub_58080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_4869C(a1, a2, a3);

  v5 = sub_116900();
  v7 = v6;
  v9 = v8;
  v10 = [objc_opt_self() secondaryLabelColor];
  sub_116BE0();
  v11 = sub_116890();
  v13 = v12;
  v15 = v14;
  sub_48928(v5, v7, v9 & 1);

  sub_116720();
  v16 = sub_1168C0();
  v18 = v17;
  v20 = v19;

  sub_48928(v11, v13, v15 & 1);

  sub_1166C0();
  v21 = sub_116810();
  v23 = v22;
  LOBYTE(v13) = v24;
  v26 = v25;
  sub_48928(v16, v18, v20 & 1);

  *a4 = v21;
  *(a4 + 8) = v23;
  *(a4 + 16) = v13 & 1;
  *(a4 + 24) = v26;
  return result;
}

unint64_t sub_5822C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1831B8;
  if (!qword_1831B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1831B8);
  }

  return result;
}

double sub_58280()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_582C4(double a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleHeight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_58378()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent;
  v2 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for BUIChartViewConfig.CachedNumberFormatter()) init];
    v5 = v0;
    isa = sub_1157D0().super.isa;
    [v4 setLocale:isa];

    sub_54960(0, &qword_1831C0, NSNumber_ptr);
    v7 = sub_1175C0(1).super.super.isa;
    [v4 setMultiplier:v7];

    [v4 setNumberStyle:3];
    v8 = *(v5 + v1);
    *(v5 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}