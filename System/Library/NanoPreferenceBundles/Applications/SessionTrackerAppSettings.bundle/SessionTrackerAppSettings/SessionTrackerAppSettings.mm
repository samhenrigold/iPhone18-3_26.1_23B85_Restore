int64_t sub_2DA4(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

void sub_33D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 selectedPlaylistId];
  v4 = +[NMSMediaPinningManager sharedManager];
  v5 = [v4 workoutPlaylistID];

  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[workoutmusic] Workout playlist may have changed. Old ID: %@, new ID: %@", &v7, 0x16u);
  }

  if (v3 && !v5 || ([v3 isEqualToNumber:v5] & 1) == 0)
  {
    [v2 reloadSpecifiers];
  }
}

void sub_3608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3624(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_36DC;
  v5[3] = &unk_34F38;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_36DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setUserPlaylistSpecifiers:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 reloadSpecifiers];
}

void sub_3D20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[workoutmusic] MPModel request failed with error: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = sub_3EF4;
  v13 = sub_3F04;
  v14 = +[NSMutableArray array];
  v8 = [v5 results];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3F0C;
  v9[3] = &unk_34F88;
  v9[4] = &buf;
  [v8 enumerateItemsUsingBlock:v9];

  (*(*(a1 + 32) + 16))();
  _Block_object_dispose(&buf, 8);
}

void sub_3ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3EF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3F0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_alloc_init(PSSpecifier);
  [v9 setCellType:3];
  v4 = [v3 name];
  [v9 setName:v4];

  v5 = [v3 identifiers];

  v6 = [v5 library];
  v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 persistentID]);

  v8 = [NSString stringWithFormat:@"%@", v7];
  [v9 setIdentifier:v8];

  [v9 setProperty:v7 forKey:@"MusicSpecifierPropertyPlaylistID"];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v9];
}

void sub_4744(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_5F78(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4 && (_HKInitializeLogging(), v5 = HKLogWorkouts, os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR)))
  {
    sub_21F48(v5, v4);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    sub_21FF0();
  }

LABEL_6:
}

void sub_608C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_7378(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_412C0;
  qword_412C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_7734(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) object];
  }

  else
  {
    v6 = 0;
  }

  v3 = [v6 endOfDocument];
  v4 = [v6 endOfDocument];
  v5 = [v6 textRangeFromPosition:v3 toPosition:v4];
  [v6 setSelectedTextRange:v5];
}

void sub_8838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_885C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8934;
  block[3] = &unk_351B8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
}

void sub_8934(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _mainThread_handleLoadingActiveConfiguration:*(a1 + 32) inactiveConfiguration:*(a1 + 40)];
}

void sub_93BC(id a1, BOOL a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Open url to Fitness app returned %d", v4, 8u);
  }
}

void sub_B5F0(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) object];
  }

  else
  {
    v6 = 0;
  }

  v3 = [v6 endOfDocument];
  v4 = [v6 endOfDocument];
  v5 = [v6 textRangeFromPosition:v3 toPosition:v4];
  [v6 setSelectedTextRange:v5];
}

void sub_B754(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_412D0;
  qword_412D0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_BCE0(uint64_t a1, void *a2)
{
  [a2 reloadSpecifierID:@"NFC_ENABLED_LABEL_ID"];
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "connectedGymSessionTrackerSettingsDidChange called in Bridge", v3, 2u);
  }
}

void sub_BD5C(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Did receive GuidedWorkoutPreferencesChangedNotification", buf, 2u);
  }

  [v2 reloadSpecifierID:@"GUIDED_WORKOUT_PREFETCH_LABEL_ID"];

  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "guidedWorkoutSettingsDidChange called in Bridge", v5, 2u);
  }
}

void sub_BE2C(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Did receive GuidedRunPreferencesChangedNotification", buf, 2u);
  }

  [v2 reloadSpecifierID:@"GUIDED_RUN_PREFETCH_LABEL_ID"];

  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "guidedRunSettingsDidChange called in Bridge", v5, 2u);
  }
}

id sub_BEFC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_412E0;
  v7 = qword_412E0;
  if (!qword_412E0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1097C;
    v3[3] = &unk_353A8;
    v3[4] = &v4;
    sub_1097C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_BFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_C1A0(uint64_t a1, int a2)
{
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 184);
    v7[0] = 67109376;
    v7[1] = v5;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[HPRFSessionTrackerAppSettingsController] old subscriber status: %d new subscriber status: %d", v7, 0xEu);
  }

  *(*(a1 + 32) + 184) = a2;
  return [*(a1 + 32) reloadSpecifiers];
}

void sub_E144(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[workoutmusic] MPModel request failed with error: %@", buf, 0xCu);
    }
  }

  v8 = [v5 results];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_E290;
  v11[3] = &unk_352B8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = v9;
  v13 = v10;
  [v8 enumerateItemsUsingBlock:v11];
}

void sub_E290(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifiers];
  v5 = [v4 library];
  v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 persistentID]);

  v7 = +[NMSMediaPinningManager sharedManager];
  v8 = [v7 workoutPlaylistID];
  v9 = [v6 isEqualToNumber:v8];

  if (v9)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_E3D0;
    block[3] = &unk_35290;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = v10;
    v14 = v11;
    v15 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_E3D0(id *a1)
{
  v5 = [a1[4] specifierForID:@"MUSIC_AUTOSTART_TITLE_ID"];
  v2 = [a1[6] name];
  v3 = a1[5];
  v4 = v3[20];
  v3[20] = v2;

  [a1[5] reloadSpecifier:v5];
}

void sub_E568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E584(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showConfigurationDataSourceProviderSpecifiers:a2];
}

void sub_F880(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  v7 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[HPRFSessionTrackerAppSettings] fetchSubscriptionStatus error: %@", &v9, 0xCu);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v7)
    {
      v9 = 67109120;
      LODWORD(v10) = a2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[HPRFSessionTrackerAppSettings] isSubscribed: %d", &v9, 8u);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

id sub_FC0C(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) BOOLValue];

    return FIUISetWorkoutNFCAllDayEnabled();
  }

  else
  {
    v4 = *(a1 + 40);

    return [v4 reloadSpecifierID:@"NFC_ENABLED_LABEL_ID" animated:1];
  }
}

Class sub_1097C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_412E8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10AC0;
    v4[4] = &unk_353E0;
    v4[5] = v4;
    v5 = off_353C8;
    v6 = 0;
    qword_412E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_412E8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NPKExpressGymKitAvailabilityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_22164();
  }

  qword_412E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10AC0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_412E8 = result;
  return result;
}

void sub_10B34(id a1)
{
  v1 = [NSSet setWithObjects:@"EnableAutoPause", @"RunningAP", @"CyclingAP", @"NLPredictedActivityEndEnableNotification", @"NLPredictedActivityResumeEnableNotification", @"NLPredictedActivityStartEnableNotification", @"NLChordPressWorkoutPauseEnableNotification", @"NLVoiceFeedbackEnabled", 0];
  v2 = qword_412F8;
  qword_412F8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_11390(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_41300;
  qword_41300 = v1;

  _objc_release_x1(v1, v2);
}

void sub_11978(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) object];
  }

  else
  {
    v6 = 0;
  }

  v3 = [v6 endOfDocument];
  v4 = [v6 endOfDocument];
  v5 = [v6 textRangeFromPosition:v3 toPosition:v4];
  [v6 setSelectedTextRange:v5];
}

id HPRFPointImageWithColor(void *a1)
{
  v1 = a1;
  v5.width = 1.0;
  v5.height = 1.0;
  UIGraphicsBeginImageContext(v5);
  [v1 set];

  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 1.0;
  v6.size.height = 1.0;
  UIRectFill(v6);
  v2 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v2;
}

void sub_12664(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

__CFString *_LocalizedStringForMetricType(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = &stru_35B68;
  v9 = a1 - 1;
  v10 = @"METRIC_ROLLING_PACE";
  v11 = @"METRIC_ACTIVE_ENERGY";
  switch(v9)
  {
    case 0:
      v10 = @"METRIC_DISTANCE";
      goto LABEL_18;
    case 1:
      goto LABEL_10;
    case 2:
      v10 = @"METRIC_DURATION";
      goto LABEL_18;
    case 3:
      v12 = [v5 identifier];
      v13 = @"METRIC_CURRENT_PACE";
      v14 = @"METRIC_CURRENT_SPEED";
      goto LABEL_13;
    case 4:
      v10 = @"METRIC_HEART_RATE";
      goto LABEL_18;
    case 6:
      v11 = @"METRIC_TOTAL_ENERGY";
LABEL_10:
      v10 = [v6 localizationKeyForEnergyBaseKey:v11];
      if (!v10)
      {
        break;
      }

      goto LABEL_18;
    case 7:
      v12 = [v5 identifier];
      v13 = @"METRIC_AVERAGE_PACE";
      v14 = @"METRIC_AVERAGE_SPEED";
LABEL_13:
      if (v12 == &dword_C + 1)
      {
        v10 = v14;
      }

      else
      {
        v10 = v13;
      }

      goto LABEL_18;
    case 8:
      v10 = @"METRIC_LAPS";
      goto LABEL_18;
    case 9:
      v10 = @"METRIC_ELEVATION";
      goto LABEL_18;
    case 13:
      goto LABEL_18;
    case 14:
      v10 = @"METRIC_CURRENT_CADENCE";
      goto LABEL_18;
    case 15:
      v10 = @"METRIC_AVERAGE_CADENCE";
      goto LABEL_18;
    case 16:
      v10 = @"METRIC_GROUND_ELEVATION";
LABEL_18:
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v15 localizedStringForKey:v10 value:&stru_35B68 table:@"SessionTrackerAppSettings"];

      break;
    default:
      break;
  }

  return v8;
}

void sub_140A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_140C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_14180;
  v5[3] = &unk_34F38;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_14180(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _mainThread_handleCyclingPowerZonesConfiguration:*(a1 + 32)];
}

void sub_151AC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_41310;
  qword_41310 = v1;

  _objc_release_x1(v1, v2);
}

id sub_166F8(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [WOCyclingPowerZonesConfigurationEditor resetManualZonesUsing:v2];
  [*(a1 + 32) setConfiguration:v3];

  v4 = *(a1 + 32);

  return [v4 reloadSpecifiers];
}

id sub_17568(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v2 size];
  v5 = v3 * v4;
  v6 = *(a1 + 40);
  [*(a1 + 32) size];

  return [v2 drawInRect:{0.0, 0.0, v5, v6 * v7}];
}

id CyclingPowerZonesConfigurationEditorBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FunctionalThresholdPowerBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FunctionalThresholdPowerBridge(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id variable initialization expression of CyclingSensorsStoreBridge.cyclingSensorsStore()
{
  v0 = objc_allocWithZone(sub_22464());

  return [v0 init];
}

unint64_t CyclingPowerZonesConfigurationTypeBridge.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_17E84()
{
  v1 = *v0;
  sub_22A14();
  sub_22A24(v1);
  return sub_22A34();
}

Swift::Int sub_17EF8(uint64_t a1)
{
  v2 = *v1;
  sub_22A14();
  sub_22A24(v2);
  return sub_22A34();
}

unint64_t *sub_17F3C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1804C()
{
  v0 = sub_22664();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  sub_22614();
  (*(v1 + 104))(v4, enum case for CyclingPowerZonesConfigurationType.manual(_:), v0);
  sub_18750();
  sub_228B4();
  sub_228B4();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_229D4();
  }

  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);

  return v7 & 1;
}

void *sub_183D0()
{
  v0 = sub_22634();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return _swiftEmptyArrayStorage;
  }

  v2 = sub_229B4();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v10 = _swiftEmptyArrayStorage;
  result = sub_22974();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = sub_22934();
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      ++v4;
      v7 = type metadata accessor for CyclingPowerZoneBridge(0, v5);
      v8 = objc_allocWithZone(v7);
      *&v8[OBJC_IVAR___WOCyclingPowerZone_zone] = v6;
      v9.receiver = v8;
      v9.super_class = v7;
      objc_msgSendSuper2(&v9, "init");
      sub_22954();
      sub_22984();
      sub_22994();
      sub_22964();
    }

    while (v2 != v4);

    return v10;
  }

  return result;
}

id sub_18570(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = type metadata accessor for FunctionalThresholdPowerBridge(0, v6);
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___WOFunctionalThresholdPower_functionalThresholdPower] = v5;
  v11.receiver = v8;
  v11.super_class = v7;

  v9 = objc_msgSendSuper2(&v11, "init");

  return v9;
}

id CyclingPowerZonesConfigurationBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CyclingPowerZonesConfigurationBridge(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_186DC()
{
  result = qword_40F18;
  if (!qword_40F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40F18);
  }

  return result;
}

unint64_t sub_18750()
{
  result = qword_40F50;
  if (!qword_40F50)
  {
    sub_22664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40F50);
  }

  return result;
}

id sub_187EC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TipKitHelper(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id CyclingPowerZoneBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CyclingPowerZoneBridge(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_18EF8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for FitnessIntelligenceConnectionBridge(uint64_t a1)
{
  result = qword_41008;
  if (!qword_41008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18FF0(uint64_t a1, uint64_t a2)
{
  result = sub_227C4();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_19080(uint64_t a1)
{
  v3 = sub_227E4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_227C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22804();
  __chkstk_darwin(v8 - 8);
  v9 = OBJC_IVAR___STASFitnessIntelligenceConnection_bridgedValue;
  v10 = *(v5 + 16);
  v10(v7, a1 + OBJC_IVAR___STASFitnessIntelligenceConnection_bridgedValue, v4);
  sub_227F4();
  v10(v7, a1 + v9, v4);
  sub_227D4();
  v11 = objc_allocWithZone(sub_22344());
  v12 = sub_22324();
  *&v1[OBJC_IVAR___STASWorkoutVoiceAvailabilityProvider_bridgedValue] = v12;
  v14 = type metadata accessor for WorkoutVoiceAvailabilityProviderBridge(v12, v13);
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, "init");
}

id CyclingSensorsStoreBridge.init()()
{
  v1 = OBJC_IVAR___WOCyclingSensorsStore_cyclingSensorsStore;
  v2 = [objc_allocWithZone(sub_22464()) init];
  *&v0[v1] = v2;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CyclingSensorsStoreBridge(v2, v3);
  return objc_msgSendSuper2(&v5, "init");
}

id CyclingSensorsStoreBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CyclingSensorsStoreBridge(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_19430()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t Logger.sessionTrackerAppSettings.unsafeMutableAddressor()
{
  if (qword_40EE0 != -1)
  {
    swift_once();
  }

  v0 = sub_22824();

  return sub_19650(v0, static Logger.sessionTrackerAppSettings);
}

id sub_195C0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SessionTrackerAppSettingsNavigationDonation(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_195F4()
{
  v0 = sub_22824();
  sub_1BE78(v0, static Logger.sessionTrackerAppSettings);
  sub_19650(v0, static Logger.sessionTrackerAppSettings);
  v1 = HKLogWorkoutsCategory();
  return sub_22834();
}

uint64_t sub_19650(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.sessionTrackerAppSettings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_40EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_22824();
  v3 = sub_19650(v2, static Logger.sessionTrackerAppSettings);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_19754(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19820(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BE18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1BDCC(v11);
  return v7;
}

unint64_t sub_19820(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1992C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22944();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1992C(uint64_t a1, unint64_t a2)
{
  v3 = sub_19978(a1, a2);
  sub_19AA8(&off_35638);
  return v3;
}

void *sub_19978(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_19B94(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22944();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_228A4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_19B94(v10, 0);
        result = sub_22914();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_19AA8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_19C08(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_19B94(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1BD1C(&qword_41080, qword_30E90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_19C08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BD1C(&qword_41080, qword_30E90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_19CFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_1BD1C(&qword_41078, &qword_30E88);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_22204();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SessionTrackerAppSettingsNavigationDonation(v11, v14);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17 = [v16 bundleIdentifier];

  if (v17)
  {
    v31 = sub_22874();
    v19 = v18;

    if (a4)
    {

      sub_221F4();
      v20 = (*(v10 + 48))(v8, 1, v9);

      if (v20 != 1)
      {
        (*(v10 + 32))(v13, v8, v9);
        sub_227A4();
        sub_22794();

        (*(v10 + 8))(v13, v9);
        return;
      }

      sub_1BD64(v8);
    }
  }

  else
  {
    v31 = 0;
    v19 = 0;
  }

  if (qword_40EE0 != -1)
  {
    swift_once();
  }

  v21 = sub_22824();
  sub_19650(v21, static Logger.sessionTrackerAppSettings);

  v22 = sub_22814();
  v23 = sub_228F4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v24 = 136315394;
    if (a4)
    {
      v25 = a3;
    }

    else
    {
      v25 = 7104878;
    }

    if (a4)
    {
      v26 = a4;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    v27 = sub_19754(v25, v26, &v32);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    if (v19)
    {
      v28 = v31;
    }

    else
    {
      v28 = 7104878;
    }

    if (v19)
    {
      v29 = v19;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v30 = sub_19754(v28, v29, &v32);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_0, v22, v23, "Failed to create donation. urlString: %s bundleIdentifier: %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1A0E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionTrackerAppSettingsNavigationDonation(a1, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22874();
  v7 = v6;

  strcpy(v9, "bridge:root=");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  sub_22894(v10);

  return v9[0];
}

uint64_t sub_1A458(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionTrackerAppSettingsNavigationDonation(a1, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22874();
  v7 = v6;

  sub_22924(46);

  strcpy(v9, "bridge:root=");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  sub_22894(v10);

  v11._object = 0x800000000002F6D0;
  v11._countAndFlagsBits = 0xD000000000000020;
  sub_22894(v11);
  return v9[0];
}

uint64_t sub_1A918(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionTrackerAppSettingsNavigationDonation(a1, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22874();
  v7 = v6;

  sub_22924(43);

  strcpy(v9, "bridge:root=");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  sub_22894(v10);

  v11._object = 0x800000000002F680;
  v11._countAndFlagsBits = 0xD00000000000001DLL;
  sub_22894(v11);
  return v9[0];
}

uint64_t sub_1AA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v28 = a4;
  v26 = a3;
  v4 = sub_22284();
  __chkstk_darwin(v4 - 8);
  v25 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_221C4();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22854();
  __chkstk_darwin(v9 - 8);
  v27 = sub_221D4();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23[0] = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22844();
  v23[1] = &qword_30E10;
  v13 = type metadata accessor for SessionTrackerAppSettingsNavigationDonation(v11, v12);
  *v8 = v13;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v6 + 104);
  v23[2] = v6 + 104;
  v16 = v24;
  v15(v8, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v24);
  sub_22274();
  v17 = v23[0];
  sub_221E4();
  sub_1BD1C(&qword_41070, &qword_30E80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_30E20;
  sub_22844();
  *v8 = v13;
  v15(v8, v14, v16);
  sub_22274();
  v19 = sub_221E4();
  v20 = v28(v19);
  sub_19CFC(v17, v18, v20, v21);

  return (*(v29 + 8))(v17, v27);
}

uint64_t sub_1ADDC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionTrackerAppSettingsNavigationDonation(a1, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22874();
  v7 = v6;

  sub_22924(44);

  strcpy(v9, "bridge:root=");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  sub_22894(v10);

  v11._object = 0x800000000002F640;
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  sub_22894(v11);
  return v9[0];
}

uint64_t sub_1B294(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionTrackerAppSettingsNavigationDonation(a1, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22874();
  v7 = v6;

  sub_22924(33);

  strcpy(v9, "bridge:root=");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  sub_22894(v10);

  v11._object = 0x800000000002F5E0;
  v11._countAndFlagsBits = 0xD000000000000013;
  sub_22894(v11);
  return v9[0];
}

uint64_t sub_1B3AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionTrackerAppSettingsNavigationDonation(a1, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22874();
  v7 = v6;

  sub_22924(39);

  strcpy(v9, "bridge:root=");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  sub_22894(v10);

  v11._object = 0x800000000002F5A0;
  v11._countAndFlagsBits = 0xD000000000000019;
  sub_22894(v11);
  return v9[0];
}

uint64_t sub_1B864(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionTrackerAppSettingsNavigationDonation(a1, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22874();
  v7 = v6;

  sub_22924(45);

  strcpy(v9, "bridge:root=");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  sub_22894(v10);

  v11._object = 0x800000000002F540;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  sub_22894(v11);
  return v9[0];
}

uint64_t sub_1BD1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BD64(uint64_t a1)
{
  v2 = sub_1BD1C(&qword_41078, &qword_30E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BDCC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1BE18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_1BE78(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_1C120()
{
  v0 = sub_22364();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return _swiftEmptyArrayStorage;
  }

  v2 = sub_229B4();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v11 = _swiftEmptyArrayStorage;
  result = sub_22974();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_22934();
        v7 = v5;
      }

      else
      {
        v7 = *(v1 + 8 * v4 + 32);
      }

      ++v4;
      v8 = type metadata accessor for QueriedExternalProviderBridge(v5, v6);
      v9 = objc_allocWithZone(v8);
      *&v9[OBJC_IVAR___WOQueriedExternalProviderBridge_externalProvider] = v7;
      v10.receiver = v9;
      v10.super_class = v8;
      objc_msgSendSuper2(&v10, "init");
      sub_22954();
      sub_22984();
      sub_22994();
      sub_22964();
    }

    while (v2 != v4);

    return v11;
  }

  return result;
}

unint64_t sub_1C308(unint64_t result, uint64_t (*a2)(void))
{
  if (a2)
  {
    if (result >> 62)
    {
      v3 = a2;
      v2 = sub_229B4();
      a2 = v3;
    }

    else
    {
      v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    }

    return a2(v2 != 0);
  }

  return result;
}

id sub_1C634(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1C6A0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
  }

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_1C6E8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C6F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C708()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C758(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1C7C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D478(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1C844(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, double), double a4)
{
  sub_22714();
  v8 = a3(a1, *(a2 + OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration), a4);
  v10 = type metadata accessor for CyclingPowerZonesConfigurationBridge(0, v9);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v8;
  v13.receiver = v11;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_1C900(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t (*a6)(uint64_t, uint64_t, double))
{
  sub_22714();
  v10 = *&a5[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration];
  v11 = a5;
  v12 = a6(a4, v10, a1);
  v14 = type metadata accessor for CyclingPowerZonesConfigurationBridge(0, v13);
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v12;
  v18.receiver = v15;
  v18.super_class = v14;

  v16 = objc_msgSendSuper2(&v18, "init");

  return v16;
}

id static CyclingPowerZonesConfigurationEditorBridge.changeFunctionalThresholdPower(to:using:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_22254();
  __chkstk_darwin(v3 - 8);
  v4 = sub_22654();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22714();
  sub_225A4();
  (*(v5 + 104))(v7, enum case for FunctionalThresholdPowerSource.other(_:), v4);
  sub_22234();
  sub_22584();
  v8 = sub_226C4();

  v10 = type metadata accessor for CyclingPowerZonesConfigurationBridge(0, v9);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v8;
  v13.receiver = v11;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "init");
}

id static CyclingPowerZonesConfigurationEditorBridge.changeZonesSize(to:using:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_224A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22714();
  sub_22474();
  v6 = sub_226D4();
  (*(v3 + 8))(v5, v2);
  v8 = type metadata accessor for CyclingPowerZonesConfigurationBridge(0, v7);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v6;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, "init");
}

id static CyclingPowerZonesConfigurationEditorBridge.resetManualZones(using:)(uint64_t a1, uint64_t a2)
{
  sub_22714();
  v2 = sub_226B4();
  v4 = type metadata accessor for CyclingPowerZonesConfigurationBridge(0, v3);
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v2;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, "init");
}

id CyclingPowerZonesConfigurationEditorBridge.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CyclingPowerZonesConfigurationEditorBridge(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

id CyclingPowerZonesConfigurationEditorBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CyclingPowerZonesConfigurationEditorBridge(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_1D354(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D374(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BD1C(&qword_41118, qword_31030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1D478(uint64_t result)
{
  if ((result - 9) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

id _s25SessionTrackerAppSettings42CyclingPowerZonesConfigurationEditorBridgeC06changeH4Type2to5usingAA0efghJ0CAA0efghlJ0O_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22664();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v7 = &enum case for CyclingPowerZonesConfigurationType.automatic(_:);
LABEL_5:
    (*(v4 + 104))(v6, *v7, v3);
    sub_22714();
    v8 = sub_226E4();
    (*(v4 + 8))(v6, v3);
    v10 = type metadata accessor for CyclingPowerZonesConfigurationBridge(0, v9);
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v8;
    v13.receiver = v11;
    v13.super_class = v10;
    return objc_msgSendSuper2(&v13, "init");
  }

  if (a1 == 1)
  {
    v7 = &enum case for CyclingPowerZonesConfigurationType.manual(_:);
    goto LABEL_5;
  }

  result = sub_229A4();
  __break(1u);
  return result;
}

void *_s25SessionTrackerAppSettings42CyclingPowerZonesConfigurationEditorBridgeC17allSupportedSizesSaySiGyFZ_0()
{
  v20 = sub_224A4();
  v0 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22484();
  v4 = *(v3 + 16);
  if (v4)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_1D354(0, v4, 0);
    v5 = v21;
    v7 = *(v0 + 16);
    v6 = v0 + 16;
    v8 = *(v6 + 64);
    v17[1] = v3;
    v9 = v3 + ((v8 + 32) & ~v8);
    v18 = *(v6 + 56);
    v19 = v7;
    v10 = (v6 - 8);
    do
    {
      v11 = v20;
      v12 = v6;
      v19(v2, v9, v20);
      v13 = sub_22494();
      (*v10)(v2, v11);
      v21 = v5;
      v15 = v5[2];
      v14 = v5[3];
      if (v15 >= v14 >> 1)
      {
        sub_1D354((v14 > 1), v15 + 1, 1);
        v5 = v21;
      }

      v5[2] = v15 + 1;
      v5[v15 + 4] = v13;
      v9 += v18;
      --v4;
      v6 = v12;
    }

    while (v4);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v5;
}

unint64_t sub_1D83C()
{
  result = qword_410E8;
  if (!qword_410E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_410E8);
  }

  return result;
}

id sub_1D948(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  if (a3)
  {
    v7 = sub_22864();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for SubtitleMultilineCell(a1, a2);
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", v6, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_1DB60(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SubtitleMultilineCell(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t CyclingPowerZonesConfigurationStoreBridge.fetchCyclingPowerZonesConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_22684();
}

void sub_1DCC0(uint64_t a1, void (*a2)(id, uint64_t))
{
  v4 = type metadata accessor for CyclingPowerZonesConfigurationBridge(0, a2);
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = a1;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, "init");
  a2(v6, v7);
}

uint64_t sub_1DD48(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

id CyclingPowerZonesConfigurationStoreBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CyclingPowerZonesConfigurationStoreBridge(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1DFDC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1E030(double a1)
{
  sub_22754();
  if (v2)
  {
    sub_223B4();
    v4 = v3 + a1;
  }

  else
  {
    sub_22724();
    v4 = v5;
    sub_223B4();
    v7 = v6 + a1;
    if (v4 <= v7)
    {
      v4 = v7;
    }
  }

  if (v4 < a1)
  {
    __break(1u);
  }

  else
  {
    sub_22734();
    sub_223E4();
    swift_allocObject();
    v8 = sub_223A4();
    v10 = type metadata accessor for HeartRateZoneBridge(v8, v9);
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR___WOHeartRateZone_heartRateZone] = v8;
    v12.receiver = v11;
    v12.super_class = v10;
    objc_msgSendSuper2(&v12, "init");
  }
}

void sub_1E168(double a1)
{
  sub_22744();
  v2 = 0.0;
  if ((v3 & 1) == 0)
  {
    sub_22724();
    v2 = v4;
    sub_223B4();
    v6 = a1 - v5;
    if (v6 < v2)
    {
      v2 = v6;
    }
  }

  if (v2 > a1)
  {
    __break(1u);
  }

  else
  {
    sub_22734();
    sub_223E4();
    swift_allocObject();
    v7 = sub_223A4();
    v9 = type metadata accessor for HeartRateZoneBridge(v7, v8);
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR___WOHeartRateZone_heartRateZone] = v7;
    v11.receiver = v10;
    v11.super_class = v9;
    objc_msgSendSuper2(&v11, "init");
  }
}

id sub_1E2C8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = *&v5;
    v9 = [objc_opt_self() _countPerMinuteUnit];
    v7 = [objc_opt_self() quantityWithUnit:v9 doubleValue:v8];
  }

  return v7;
}

double sub_1E434(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_223D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_223C4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);

  return v11;
}

double sub_1E558(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_223D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_223C4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);

  return v11;
}

uint64_t HeartRateZoneBridge.description.getter(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for HeartRateZoneBridge(a1, a2);
  v3 = objc_msgSendSuper2(&v6, "description");
  v4 = sub_22874();

  sub_22924(18);

  sub_223E4();
  sub_20118(&qword_41180, &type metadata accessor for HeartRateZone, &protocol conformance descriptor for Zone);
  v7._countAndFlagsBits = sub_229C4();
  sub_22894(v7);

  v8._countAndFlagsBits = 0xD000000000000010;
  v8._object = 0x800000000002FA90;
  sub_22894(v8);

  return v4;
}

void *HeartRateConfigurationBridge.maximumHeartRate.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOHeartRateConfiguration_maximumHeartRate);
  v2 = v1;
  return v1;
}

void *HeartRateConfigurationBridge.restingHeartRate.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOHeartRateConfiguration_restingHeartRate);
  v2 = v1;
  return v1;
}

uint64_t HeartRateConfigurationBridge.zones.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOHeartRateConfiguration_zones;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1ED98(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = objc_allocWithZone(type metadata accessor for HeartRateConfigurationBridge(a1, a2));

    v4 = sub_1F934();
    a2();
  }

  else
  {
    a2();
  }
}

uint64_t sub_1EE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_225F4();
  swift_allocObject();
  sub_225E4();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_225B4();
}

uint64_t sub_1EF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224E4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  if (a1)
  {

    sub_22504();
    (*(v7 + 104))(v10, enum case for HeartRateConfiguration.ConfigurationType.automatic(_:), v6);
    sub_20118(&qword_41238, &type metadata accessor for HeartRateConfiguration.ConfigurationType, &protocol conformance descriptor for HeartRateConfiguration.ConfigurationType);
    sub_228B4();
    sub_228B4();
    v13 = *(v7 + 8);
    v13(v10, v6);
    v13(v12, v6);
    v15 = v19[0];
    v14 = v19[1];
    sub_225F4();
    swift_allocObject();
    sub_225E4();
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a1;

    if (v14 == v15)
    {
      sub_225C4();
    }

    else
    {
      sub_225D4();
    }
  }

  else
  {
    sub_225F4();
    swift_allocObject();
    sub_225E4();
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;

    sub_225C4();
  }
}

void sub_1F268(uint64_t a1, void (*a2)(void, id))
{
  v3 = objc_allocWithZone(type metadata accessor for HeartRateConfigurationBridge(a1, a2));

  v4 = sub_1F934();

  a2(0, v4);
}

void sub_1F2EC(uint64_t a1, void (*a2)(void *, id), uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HeartRateConfigurationBridge(a1, a2);
  v6 = objc_allocWithZone(v5);

  v7 = sub_1F934();

  v8 = objc_allocWithZone(v5);

  v9 = sub_1F934();

  a2(v7, v9);
}

void sub_1F3B0(uint64_t a1, void (*a2)(void *, id), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = type metadata accessor for HeartRateConfigurationBridge(a1, a2);
    v6 = objc_allocWithZone(v5);

    v7 = sub_1F934();

    v8 = objc_allocWithZone(v5);

    v10 = sub_1F934();

    a2(v7, v10);
  }

  else
  {
    v9 = objc_allocWithZone(type metadata accessor for HeartRateConfigurationBridge(0, a2));

    v10 = sub_1F934();

    a2(v10, 0);
  }
}

uint64_t sub_1F504(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_225F4();
  swift_allocObject();
  sub_225E4();
  v10 = swift_allocObject();
  *(v10 + 16) = a6;
  *(v10 + 24) = v9;

  sub_225B4();
}

id HeartRateConfigurationRequestBridge.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HeartRateConfigurationRequestBridge(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1F660(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_1F698(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v4 = sub_229B4();
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4)
  {
    v18 = _swiftEmptyArrayStorage;
    result = sub_22974();
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = v6 + 1;
        sub_22934();

        swift_unknownObjectRelease();
        sub_22954();
        sub_22984();
        sub_22994();
        sub_22964();
        v6 = v7;
      }

      while (v4 != v7);
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        v8 += 8;

        sub_22954();
        sub_22984();
        sub_22994();
        sub_22964();
        --v4;
      }

      while (v4);
    }
  }

  v9 = sub_228E4();

  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_14;
    }

LABEL_23:

    return _swiftEmptyArrayStorage;
  }

  v10 = sub_229B4();
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_14:
  v18 = _swiftEmptyArrayStorage;
  result = sub_22974();
  if (v10 < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_22934();
      v14 = v12;
    }

    else
    {
      v14 = *(v9 + 8 * v11 + 32);
    }

    ++v11;
    v15 = type metadata accessor for HeartRateZoneBridge(v12, v13);
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR___WOHeartRateZone_heartRateZone] = v14;
    v17.receiver = v16;
    v17.super_class = v15;
    objc_msgSendSuper2(&v17, "init");
    sub_22954();
    sub_22984();
    sub_22994();
    sub_22964();
  }

  while (v10 != v11);

  return v18;
}

id sub_1F934()
{
  v1 = sub_224E4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  sub_22504();
  v25 = enum case for HeartRateConfiguration.ConfigurationType.manual(_:);
  v24 = *(v2 + 104);
  v24(v5);
  sub_20118(&qword_41238, &type metadata accessor for HeartRateConfiguration.ConfigurationType, &protocol conformance descriptor for HeartRateConfiguration.ConfigurationType);
  sub_228B4();
  sub_228B4();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v8(v7, v1);
  *&v0[OBJC_IVAR___WOHeartRateConfiguration_configurationType] = v29 == v28;
  sub_22504();
  (v24)(v5, v25, v1);
  sub_228B4();
  sub_228B4();
  v8(v5, v1);
  v8(v7, v1);
  v9 = v0;
  v0[OBJC_IVAR___WOHeartRateConfiguration_isEditable] = v29 == v28;
  *&v0[OBJC_IVAR___WOHeartRateConfiguration_maximumHeartRate] = sub_224C4();
  *&v0[OBJC_IVAR___WOHeartRateConfiguration_restingHeartRate] = sub_224D4();
  v0[OBJC_IVAR___WOHeartRateConfiguration_hasDefaultRestingHeartRate] = sub_224B4() & 1;
  v10 = sub_22524();
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_11:

    v22 = _swiftEmptyArrayStorage;
LABEL_12:
    *&v9[OBJC_IVAR___WOHeartRateConfiguration_zones] = v22;
    v23 = type metadata accessor for HeartRateConfigurationBridge(v20, v21);
    v26.receiver = v9;
    v26.super_class = v23;
    return objc_msgSendSuper2(&v26, "init");
  }

  v12 = sub_229B4();
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_3:
  v29 = _swiftEmptyArrayStorage;
  result = sub_22974();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = sub_22934();
        v17 = v15;
      }

      else
      {
        v17 = *(v11 + 8 * v14 + 32);
      }

      ++v14;
      v18 = type metadata accessor for HeartRateZoneBridge(v15, v16);
      v19 = objc_allocWithZone(v18);
      *&v19[OBJC_IVAR___WOHeartRateZone_heartRateZone] = v17;
      v27.receiver = v19;
      v27.super_class = v18;
      objc_msgSendSuper2(&v27, "init");
      sub_22954();
      sub_22984();
      sub_22994();
      sub_22964();
    }

    while (v12 != v14);

    v22 = v29;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t _s25SessionTrackerAppSettings28HeartRateConfigurationBridgeC3set17configurationTypeyAA0gkH0O_tFZ_0(uint64_t a1)
{
  v2 = sub_224E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v6 = &enum case for HeartRateConfiguration.ConfigurationType.automatic(_:);
LABEL_5:
    sub_22534();
    (*(v3 + 104))(v5, *v6, v2);
    sub_22514();
    return (*(v3 + 8))(v5, v2);
  }

  if (a1 == 1)
  {
    v6 = &enum case for HeartRateConfiguration.ConfigurationType.manual(_:);
    goto LABEL_5;
  }

  v8[1] = a1;
  result = sub_229E4();
  __break(1u);
  return result;
}

uint64_t _s25SessionTrackerAppSettings28HeartRateConfigurationBridgeC13setConfigured5zonesySayAA0ef4ZoneH0CGSg_tFZ_0(unint64_t a1)
{
  if (a1)
  {
    v2 = a1 >> 62 ? sub_229B4() : *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      result = sub_22974();
      if (v2 < 0)
      {
        __break(1u);
        return result;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          sub_22934();

          swift_unknownObjectRelease();
          sub_22954();
          sub_22984();
          sub_22994();
          sub_22964();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = a1 + 32;
        do
        {
          v6 += 8;

          sub_22954();
          sub_22984();
          sub_22994();
          sub_22964();
          --v2;
        }

        while (v2);
      }
    }
  }

  sub_22534();
  sub_224F4();
}

uint64_t sub_1FFEC(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

unint64_t sub_2005C()
{
  result = qword_411B8;
  if (!qword_411B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_411B8);
  }

  return result;
}

uint64_t sub_200C0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_20118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20170(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_20218(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v38 = sub_1BD1C(&qword_41270, &qword_31270);
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v38);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v41 = sub_1BD1C(&qword_41278, &qword_31278);
  v39 = *(v41 - 8);
  v9 = *(v39 + 64);
  v10 = __chkstk_darwin(v41);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v37 = &v36 - v12;
  __chkstk_darwin(v11);
  v42 = &v36 - v13;
  v14 = sub_222F4();
  v44 = *(v14 - 8);
  v45 = v14;
  __chkstk_darwin(v14);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E4();
  sub_22764();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20C00;
  *(v17 + 24) = v16;
  v18 = v38;
  (*(v4 + 16))(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v38);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v19, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = (v20 + ((v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20D7C;
  v21[1] = v17;

  v22 = v37;
  sub_22304();
  (*(v4 + 8))(v8, v18);
  v23 = swift_allocObject();
  *(v23 + 16) = v36;
  *(v23 + 24) = a2;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_212C0;
  *(v24 + 24) = v23;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  (*(v39 + 16))(v40, v22, v41);
  v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v29 = swift_allocObject();
  (*(v25 + 32))(v29 + v28, v26, v27);
  v30 = (v29 + ((v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_212DC;
  v30[1] = v24;

  v31 = v42;
  sub_22304();
  v32 = *(v25 + 8);
  v32(v22, v27);
  v33 = sub_22314();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_21758, v34);

  v32(v31, v27);
  return (*(v44 + 8))(v43, v45);
}

uint64_t sub_2075C(uint64_t a1, uint64_t (*a2)(void, void))
{
  v3 = sub_22254();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22244();
  v7 = sub_222C4();
  (*(v4 + 8))(v6, v3);
  return a2(v7 & 1, 0);
}

uint64_t sub_20860(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  sub_1BD1C(&qword_41280, &qword_31280);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_30E20;
  v5 = sub_221B4();
  *(v4 + 56) = sub_21CB8(0, &qword_41288, NSError_ptr);
  *(v4 + 64) = sub_217D0();
  *(v4 + 32) = v5;
  sub_22264();

  swift_getErrorValue();
  v6 = sub_22A04();
  v8 = v7;
  sub_21838();
  if (v6 == sub_22A04() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_229D4();

    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  swift_getErrorValue();
  v12 = sub_229F4();
  result = sub_229F4();
  if (v12 == result)
  {
    return a2(0, a1);
  }

  return result;
}

void sub_20AC0(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_221B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_20B60(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SessionTrackerAppContext(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_20BC8(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_20C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  return sub_22304();
}

uint64_t sub_20D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  swift_errorRetain();

  return sub_22304();
}

uint64_t sub_20E28(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_217C4(v6, 0);
}

uint64_t sub_20EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BD1C(&qword_41278, &qword_31278);
  v9 = sub_22314();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_21760, v10);
}

uint64_t sub_20F90(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = sub_1BD1C(&qword_41278, &qword_31278);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  if (a2)
  {
    a5(a1);
    v14 = sub_22314();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    v14(sub_21D18, v15);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;
    return a3(&v17);
  }
}

uint64_t sub_2111C(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_217C4(v6, 0);
}

uint64_t sub_211B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BD1C(&qword_41270, &qword_31270);
  v9 = sub_22314();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;

  v9(sub_218CC, v10);
}

uint64_t sub_212F8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1BD1C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 16, v5 | 7);
}

uint64_t sub_213BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_1BD1C(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_21484(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v21[1] = a3;
  v7 = sub_1BD1C(&qword_41278, &qword_31278);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - v9;
  v11 = sub_222D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BD1C(&qword_412A0, &qword_31288);
  __chkstk_darwin(v15);
  v17 = (v21 - v16);
  sub_218D8(a1, v21 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v17;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    a2(v14);
    v19 = sub_22314();
    v20 = swift_allocObject();
    *(v20 + 16) = v22;
    *(v20 + 24) = v23;

    v19(sub_21D18, v20);

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_21778(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_217C4(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_217D0()
{
  result = qword_41290;
  if (!qword_41290)
  {
    sub_21CB8(255, &qword_41288, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_41290);
  }

  return result;
}

unint64_t sub_21838()
{
  result = qword_41298;
  if (!qword_41298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_41298);
  }

  return result;
}

uint64_t sub_2188C(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_218D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD1C(&qword_412A0, &qword_31288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21948(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
  }

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t *sub_21988(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t sub_219D0()
{
  v1 = sub_222D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_21A94(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = *(sub_222D4() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_2111C(a1, a2, v6, v7, v8);
}

uint64_t sub_21B18()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_21B58(void *a1)
{
  v2 = v1;
  sub_222B4();
  v11[3] = sub_21CB8(0, &qword_412A8, _HKWheelchairUseCharacteristicCache_ptr);
  v11[4] = &protocol witness table for _HKWheelchairUseCharacteristicCache;
  v11[0] = a1;
  sub_21CB8(0, &qword_412B0, OS_dispatch_queue_ptr);
  v4 = a1;
  v5 = sub_22904();
  sub_22294();

  sub_1BDCC(v11);
  sub_1BD1C(&qword_412B8, &qword_31290);
  sub_222A4();
  sub_22784();
  swift_unknownObjectRetain();
  sub_22904();
  v6 = sub_22774();
  *&v2[OBJC_IVAR___HPRFSessionTrackerAppSettingsContext_subscriptionClient] = v6;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SessionTrackerAppContext(v6, v7);
  v8 = objc_msgSendSuper2(&v10, "init");

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_21CB8(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_21E88(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 description];
  v7 = 134218242;
  v8 = a3;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Error storing track workouts unit (%li): %@", &v7, 0x16u);
}

void sub_21F48(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Received an error forcing a HK sync: %@", &v5, 0xCu);
}

void sub_22038(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 configuration];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Failed to retrieve a zone for specifier: %@ in configuration: %@", &v7, 0x16u);
}