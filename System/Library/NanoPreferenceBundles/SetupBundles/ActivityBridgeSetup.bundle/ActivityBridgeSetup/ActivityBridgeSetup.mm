void sub_25B4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSync;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_FAULT))
    {
      sub_20F58(a1, v5, v6);
    }
  }

  else if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Finished end to end Cloud sync", &v8, 0xCu);
  }
}

void sub_2868(uint64_t a1)
{
  v2 = FIUIHealthStoreForDevice();
  v1 = v2;
  FIUIUserHasExistingMoveGoal();
}

void sub_2904(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  [*(*(a1 + 32) + 16) invalidate];
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_20FE4(v5, v6);
    }

    a2 = 1;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A00;
  block[3] = &unk_35438;
  v10 = a2;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_2A00(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v6 = v3;
  if (v2 == 1)
  {
    [v3 buddyControllerReleaseHoldAndSkip:v4];

    v5 = *(a1 + 40);

    [CHASActivitySetupOnboardingViewController performEndToEndCloudSyncOnSkippingSetupForHealthStore:v5];
  }

  else
  {
    [v3 buddyControllerReleaseHold:v4];
  }
}

void *sub_2C14(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_3CF88)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_2D54;
    v5[4] = &unk_354E8;
    v5[5] = v5;
    v6 = off_354D0;
    v7 = 0;
    qword_3CF88 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_3CF88;
    if (qword_3CF88)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_3CF88;
LABEL_5:
  result = dlsym(v2, "NRDevicePropertyIsAltAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3CF80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2D54(uint64_t a1)
{
  result = _sl_dlopen();
  qword_3CF88 = result;
  return result;
}

void sub_3B8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_3BA8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_2111C(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2)
    {
      v15 = *(a1 + 32);
      FIUIUserHasExistingExerciseAndStandGoals();
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v17 = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "CHASActivitySetupMetricsCollectionViewController - hasExistingMoveGoal %d", buf, 8u);
      }

      WeakRetained[7] = 3;
    }
  }
}

void sub_3D2C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_21188(v5, v6, v7, v8, v9, v10, v11, v12);
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_8:
      FIUIUserHasExistingPreKincaidMoveGoal();
      goto LABEL_9;
    }
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  _HKInitializeLogging();
  v13 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = 1;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "CHASActivitySetupMetricsCollectionViewController - hasExistingExerciseAndStandGoals %d", buf, 8u);
  }

  *(*(a1 + 32) + 56) = 5;
LABEL_9:
}

void sub_3E94(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_211F4(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  _HKInitializeLogging();
  v13 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = a2;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "CHASActivitySetupMetricsCollectionViewController - hasExistingPreKincaidMoveGoal %d", v15, 8u);
  }

  v14 = 4;
  if (a2)
  {
    v14 = 5;
  }

  *(*(a1 + 32) + 56) = v14;
}

void sub_4144(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 buddyControllerReleaseHoldAndSkip:*(a1 + 32)];
}

void sub_4A38(id a1, UIAlertAction *a2)
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 setWheelchairDataSubmissionAllowed:1];
}

void sub_4A84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(BPSAboutDetailViewController);
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_MORE_INFO_TITLE" value:&stru_35FD0 table:@"ActivitySetup"];
  [v4 setTitleString:v6];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_MORE_INFO_DESCRIPTION" value:&stru_35FD0 table:@"ActivitySetup"];
  [v4 setHeaderString:v8];

  objc_initWeak(&location, *(a1 + 32));
  v9 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4C34;
  v10[3] = &unk_355C8;
  objc_copyWeak(&v11, &location);
  [v4 presentWithController:v9 onDismiss:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_4C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4C34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestWheelchairDiagnosticsSubmissionIfNecessary];
}

void sub_4C74(id a1, UIAlertAction *a2)
{
  v2 = +[MCProfileConnection sharedConnection];
  [v2 setWheelchairDataSubmissionAllowed:0];
}

void sub_4E78(id a1, BOOL a2)
{
  _HKInitializeLogging();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "CHASActivitySetupMetricsCollectionViewController opened url to Pregnancy setup in Health", v3, 2u);
  }
}

void sub_4F8C(uint64_t a1)
{
  v3 = [*(a1 + 32) tableView];
  v2 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [*(a1 + 40) section]);
  [v3 reloadSections:v2 withRowAnimation:5];
}

void sub_512C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_7134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_71B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleAdvancedMode];
}

void sub_71F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAdvanceViewButton:v3];
}

void sub_7254(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_730C;
  v5[3] = &unk_35700;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_730C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setGoalSchedules:*(a1 + 32)];
    [v3 _showAdvancedViewIfNeeded];
    [v3 _setGoalQuantityForGoalView:v3[12]];
    WeakRetained = v3;
  }
}

void sub_7380(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_745C;
    v6[3] = &unk_35778;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    [v5 _fetchActiveMoveGoalSampleWithCompletion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_745C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7528;
  block[3] = &unk_35750;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_7528(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a1[4])
  {
    v3 = WeakRetained;
    [WeakRetained[10] setAlpha:0.0];
    objc_storeStrong(v3 + 17, a1[5]);
    objc_storeStrong(v3 + 18, a1[4]);
    [v3 _setGoalQuantityForGoalView:v3[12]];
    [v3 updateContinueButton];
    WeakRetained = v3;
  }
}

void sub_8578(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_212C8();
    }
  }
}

void sub_9330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_934C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_9428;
    v6[3] = &unk_35778;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    [v5 _fetchActiveExerciseGoalSampleWithCompletion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_9428(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_94F4;
  block[3] = &unk_35750;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_94F4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a1[4])
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 19, a1[5]);
    objc_storeStrong(v3 + 20, a1[4]);
    [v3 _setGoalQuantityForGoalView:v3[13]];
    [v3 _showAdvancedViewIfNeeded];
    [v3 updateHeaderViewContent];
    [v3 updateContinueButton];
    WeakRetained = v3;
  }
}

void sub_98A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_98C0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_999C;
    v6[3] = &unk_35778;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    [v5 _fetchActiveStandGoalSampleWithCompletion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_999C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9A68;
  block[3] = &unk_35750;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
}

void sub_9A68(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a1[4])
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 21, a1[5]);
    objc_storeStrong(v3 + 22, a1[4]);
    [v3 _setGoalQuantityForGoalView:v3[14]];
    [v3 _showAdvancedViewIfNeeded];
    [v3 updateHeaderViewContent];
    [v3 updateContinueButton];
    WeakRetained = v3;
  }
}

void sub_9CCC(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogSync;
  if (v4 || !a2)
  {
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_FAULT))
    {
      sub_21374();
    }
  }

  else if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Finished end to end Cloud sync", v6, 2u);
  }
}

void sub_9D7C(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogSync;
  if (a2)
  {
    if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[sharing-setup] Successfully forced nano sync after saving activity goals", v6, 2u);
    }
  }

  else if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    sub_213E8();
  }
}

void *sub_A238(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[11];
  if (v3 != result[12])
  {
    if (v3 != result[13])
    {
      if (v3 != result[14])
      {
        return result;
      }

      v15 = [result currentStandGoal];
      v16 = *(a1 + 32);
      v17 = *(v16 + 280);
      *(v16 + 280) = v15;

      v8 = *(a1 + 32);
      goto LABEL_16;
    }

    v11 = [result currentExerciseGoal];
    v12 = *(a1 + 32);
    v13 = *(v12 + 272);
    *(v12 + 272) = v11;

    v8 = *(a1 + 32);
    if (*(v8 + 120) != 1)
    {
      [v8 _removeAdvancedView];
      v14 = *(a1 + 32);

      return [v14 _displayStandGoalViewAnimated:1];
    }

LABEL_16:

    return [v8 _saveGoalsAndDismiss];
  }

  v4 = [result currentMoveGoal];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  v8 = *(a1 + 32);
  if ((*(v8 + 288) & 1) == 0)
  {
    v9 = [v8 _isStandalonePhoneFitnessMode];
    v8 = *(a1 + 32);
    if (v9)
    {
      goto LABEL_16;
    }
  }

  if (!*(v8 + 120))
  {
    goto LABEL_16;
  }

  [v8 _removeAdvancedView];
  v10 = *(a1 + 32);

  return [v10 _displayExerciseGoalViewAnimated:1];
}

void sub_A3C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[26];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A4AC;
  v5[3] = &unk_35870;
  v6 = *(a1 + 40);
  v4 = [v3 hk_filter:v5];
  [v2 _setGoalSchedules:v4];

  [*(*(a1 + 32) + 8) deleteObject:*(a1 + 40) withCompletion:&stru_35890];
  (*(*(a1 + 48) + 16))();
}

void sub_A4D0(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_21450();
    }
  }
}

id sub_B320(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _formattingManager];
  v6 = [v5 localizedStringWithMoveQuantity:v4 activityMoveMode:*(*(a1 + 32) + 32)];

  return v6;
}

id sub_B3A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _formattingManager];
  v6 = *(*(a1 + 32) + 32);
  [v4 _value];
  v8 = v7;

  v9 = [v5 localizedLongMoveUnitStringWithActivityMoveMode:v6 value:v8];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PER_DAY" value:&stru_35FD0 table:@"ActivitySetup"];

  v12 = [NSString stringWithFormat:@"%@%@", v9, v11];
  v13 = [v12 localizedUppercaseString];

  return v13;
}

id sub_B65C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _formattingManager];
  v5 = [v4 localizedStringWithBriskMinutes:v3];

  return v5;
}

id sub_B6C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _formattingManager];
  [v3 _value];
  v6 = v5;

  v7 = [v4 localizedLongBriskMinutesUnitStringForValue:v6];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PER_DAY" value:&stru_35FD0 table:@"ActivitySetup"];

  v10 = [NSString stringWithFormat:@"%@%@", v7, v9];
  v11 = [v10 localizedUppercaseString];

  return v11;
}

id sub_B96C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _formattingManager];
  v5 = [v4 localizedStringWithActiveHours:v3];

  return v5;
}

id sub_B9D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _formattingManager];
  [v3 _value];
  v6 = v5;

  v7 = [v4 localizedLongActiveHoursUnitStringForValue:v6];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PER_DAY" value:&stru_35FD0 table:@"ActivitySetup"];

  v10 = [NSString stringWithFormat:@"%@%@", v7, v9];
  v11 = [v10 localizedUppercaseString];

  return v11;
}

BOOL sub_BDC0(id a1, HKActivityGoalSchedule *a2)
{
  v2 = a2;
  if ([(HKActivityGoalSchedule *)v2 goalType])
  {
    v3 = [(HKActivityGoalSchedule *)v2 goalType]== &dword_0 + 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void sub_C2A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_214B8();
    }
  }

  v8 = [v6 lastObject];
  v9 = [v8 quantity];

  (*(*(a1 + 40) + 16))();
}

void sub_C72C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_21520();
    }
  }

  v8 = [v6 lastObject];
  v9 = [v8 quantity];

  (*(*(a1 + 40) + 16))();
}

void sub_C970(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_21588();
    }
  }

  (*(*(a1 + 40) + 16))();
}

unint64_t sub_CAC0(uint64_t a1, void *a2)
{
  result = [a2 goalType];
  if (result <= 3)
  {
    *(*(a1 + 32) + *off_35A48[result]) = 1;
  }

  return result;
}

BOOL sub_CC94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 goalType];
  v5 = [v3 goalType];

  return v4 == v5;
}

void sub_CCE8(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_215F0();
    }
  }
}

void sub_CD48(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_21658();
    }
  }
}

void *sub_D550(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_3CF98)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_D690;
    v5[4] = &unk_354E8;
    v5[5] = v5;
    v6 = off_35A30;
    v7 = 0;
    qword_3CF98 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_3CF98;
    if (qword_3CF98)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_3CF98;
LABEL_5:
  result = dlsym(v2, "NRDevicePropertyIsAltAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_3CF90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_D690(uint64_t a1)
{
  result = _sl_dlopen();
  qword_3CF98 = result;
  return result;
}

void sub_D71C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_DCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_DD04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained buttonControllerDidUpdate];
}

void sub_E6E4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_E730@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_E760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21850();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_E830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21850();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ScheduleDayRowView(uint64_t a1)
{
  result = qword_3C5B8;
  if (!qword_3C5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E934(uint64_t a1)
{
  sub_21850();
  if (v1 <= 0x3F)
  {
    sub_1463C(319, &qword_3C5C8, FIUIFormattingManager_ptr);
    if (v2 <= 0x3F)
    {
      sub_E9E8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_E9E8(uint64_t a1)
{
  if (!qword_3C5D0)
  {
    type metadata accessor for GoalDaysModel(255);
    sub_14FC8(&unk_3C5D8, type metadata accessor for GoalDaysModel, &unk_27320);
    v1 = sub_21B20();
    if (!v2)
    {
      atomic_store(v1, &qword_3C5D0);
    }
  }
}

id sub_EA98@<X0>(uint64_t a1@<X8>)
{
  v124 = a1;
  v2 = type metadata accessor for ScheduleDayRowView(0);
  v3 = *(v2 - 1);
  OpaqueTypeConformance2 = v3[8];
  __chkstk_darwin(v2);
  v5 = &v112 - ((OpaqueTypeConformance2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700();
  __chkstk_darwin(v6 - 8);
  v122 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB0();
  v136 = *(v8 - 8);
  v137 = v8;
  __chkstk_darwin(v8);
  v132 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_140C4(&qword_3C610, &qword_26E48);
  __chkstk_darwin(v10 - 8);
  v12 = &v112 - v11;
  v125 = sub_140C4(&qword_3C618, &qword_26E50);
  __chkstk_darwin(v125);
  v127 = &v112 - v13;
  v126 = sub_140C4(&qword_3C620, &qword_26E58);
  __chkstk_darwin(v126);
  v128 = &v112 - v14;
  v130 = sub_140C4(&qword_3C628, &qword_26E60);
  __chkstk_darwin(v130);
  v129 = &v112 - v15;
  v135 = sub_140C4(&qword_3C630, &qword_26E68);
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v131 = &v112 - v16;
  v17 = sub_140C4(&qword_3C638, &qword_26E70);
  v117 = *(v17 - 8);
  v118 = v17;
  __chkstk_darwin(v17);
  v134 = &v112 - v18;
  v121 = sub_140C4(&qword_3C640, qword_26E78);
  v19 = __chkstk_darwin(v121);
  v119 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v120 = &v112 - v21;
  v22 = v2[6];
  v23 = *(v1 + v2[7] + 8);
  v139 = v1;
  v24 = *(v1 + v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v138 = v23;
  sub_21A90();

  v123 = v3;
  if ((*&v150[0] & 0xC000000000000001) != 0)
  {
    v25 = sub_22110();
  }

  else
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v24 >= *(&dword_10 + (*&v150[0] & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_36;
    }

    v25 = *(*&v150[0] + 8 * v24 + 32);
  }

  v26 = v25;

  v3 = *&v26[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  v115 = OpaqueTypeConformance2;
  v116 = v24;
  if ((*&v150[0] & 0xC000000000000001) == 0)
  {
    if ((v24 & 0x8000000000000000) == 0)
    {
      if (v24 < *(&dword_10 + (*&v150[0] & 0xFFFFFFFFFFFFFF8)))
      {
        v27 = *(*&v150[0] + 8 * v24 + 32);
        goto LABEL_9;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_34:
  v27 = sub_22110();
LABEL_9:
  v28 = v27;

  v29 = *&v28[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  result = [*(v139 + v2[5]) unitManager];
  if (!result)
  {
    goto LABEL_44;
  }

  v31 = result;
  v32 = [result unitManager];

  if ((v29 - 1) < 2)
  {
    OpaqueTypeConformance2 = &selRef_minuteUnit;
    goto LABEL_14;
  }

  if (v29)
  {
    OpaqueTypeConformance2 = &selRef_countUnit;
LABEL_14:
    v33 = objc_opt_self();
    goto LABEL_16;
  }

  OpaqueTypeConformance2 = &selRef_userActiveEnergyBurnedUnit;
  v33 = v32;
LABEL_16:
  v34 = [v33 *OpaqueTypeConformance2];

  [v3 doubleValueForUnit:v34];
  v36 = v35;

  v37 = floor(v36);
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    v84 = sub_22110();
    goto LABEL_31;
  }

  v113 = v5;
  v38 = v37;
  v39 = v139;
  v40 = sub_F8D4();
  *v12 = sub_21C40();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v41 = &v12[*(sub_140C4(&qword_3C648, &qword_26ED8) + 44)];
  v112 = v38;
  sub_FB9C(v39, v38, v40, v41);
  sub_140C4(&qword_3C650, &qword_26EE0);
  inited = swift_initStackObject();
  v114 = xmmword_26DA0;
  *(inited + 16) = xmmword_26DA0;
  v43 = sub_21D20();
  *(inited + 32) = v43;
  v44 = sub_21D40();
  *(inited + 33) = v44;
  v45 = sub_21D30();
  sub_21D30();
  if (sub_21D30() != v43)
  {
    v45 = sub_21D30();
  }

  sub_21D30();
  v46 = sub_21D30();
  v47 = v127;
  if (v46 != v44)
  {
    v45 = sub_21D30();
  }

  sub_21AC0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_14804(v12, v47, &qword_3C610, &qword_26E48);
  v56 = v47 + *(v125 + 36);
  *v56 = v45;
  *(v56 + 8) = v49;
  *(v56 + 16) = v51;
  *(v56 + 24) = v53;
  *(v56 + 32) = v55;
  *(v56 + 40) = 0;
  v57 = swift_initStackObject();
  *(v57 + 16) = v114;
  v58 = sub_21D00();
  *(v57 + 32) = v58;
  v59 = sub_21D10();
  *(v57 + 33) = v59;
  v60 = sub_21D30();
  sub_21D30();
  if (sub_21D30() != v58)
  {
    v60 = sub_21D30();
  }

  sub_21D30();
  if (sub_21D30() != v59)
  {
    v60 = sub_21D30();
  }

  sub_21AC0();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v47;
  v70 = v128;
  sub_14804(v69, v128, &qword_3C618, &qword_26E50);
  v71 = v70 + *(v126 + 36);
  *v71 = v60;
  *(v71 + 8) = v62;
  *(v71 + 16) = v64;
  *(v71 + 24) = v66;
  *(v71 + 32) = v68;
  *(v71 + 40) = 0;
  sub_21FE0();
  sub_21B80();
  v72 = v129;
  sub_14804(v70, v129, &qword_3C620, &qword_26E58);
  v73 = v130;
  v74 = (v72 + *(v130 + 36));
  v75 = v150[5];
  v74[4] = v150[4];
  v74[5] = v75;
  v74[6] = v150[6];
  v76 = v150[1];
  *v74 = v150[0];
  v74[1] = v76;
  v77 = v150[3];
  v74[2] = v150[2];
  v74[3] = v77;
  sub_21FD0();
  v78 = sub_140C4(&qword_3C658, &qword_26EE8);
  v79 = sub_140C4(&qword_3C660, &qword_26EF0);
  v80 = sub_14114();
  v81 = sub_1432C();
  v111 = sub_143E4();
  v82 = v131;
  sub_21EC0();
  sub_1486C(v72, &qword_3C628, &qword_26E60);
  v83 = v132;
  sub_21C90();
  v142 = v73;
  v143 = &type metadata for Solarium;
  v144 = v78;
  v145 = v79;
  v146 = v80;
  v147 = &protocol witness table for Solarium;
  v148 = v81;
  v149 = v111;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = v134;
  v5 = v135;
  sub_21EB0();
  (*(v136 + 8))(v83, v137);
  (*(v133 + 8))(v82, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v142 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

  if ((v116 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v116 < *(&dword_10 + (v142 & 0xFFFFFFFFFFFFFF8)))
  {
    v84 = *(v142 + 8 * v116 + 32);
LABEL_31:
    v85 = v84;

    v86 = v139;
    v87 = sub_192C4(v85);
    v89 = v88;

    v142 = v87;
    v143 = v89;
    v140 = v5;
    v141 = OpaqueTypeConformance2;
    v90 = swift_getOpaqueTypeConformance2();
    sub_1449C(v90, v91, v92);
    v93 = v118;
    v94 = v119;
    sub_21E90();

    (*(v117 + 8))(v12, v93);
    sub_140C4(&qword_3C6C0, &qword_26F08);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_26DB0;
    *(v95 + 56) = &type metadata for Int;
    *(v95 + 64) = &protocol witness table for Int;
    *(v95 + 32) = v112;
    v96 = sub_22040();
    v98 = v97;

    v142 = sub_128C4();
    v143 = v99;
    v100 = sub_220F0();
    v102 = v101;

    sub_12AC8(v96, v98, v100, v102, v122);

    v103 = sub_21DF0();
    v105 = v104;
    LOBYTE(v96) = v106;
    v107 = v120;
    sub_21B50();
    sub_144F0(v103, v105, v96 & 1);

    sub_1486C(v94, &qword_3C640, qword_26E78);
    v108 = v113;
    sub_14500(v86, v113);
    v109 = (*(v123 + 80) + 16) & ~*(v123 + 80);
    v110 = swift_allocObject();
    sub_1472C(v108, v110 + v109, type metadata accessor for ScheduleDayRowView);
    sub_21B60();

    return sub_1486C(v107, &qword_3C640, qword_26E78);
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

id sub_F8D4()
{
  v2 = type metadata accessor for ScheduleDayRowView(0);
  v3 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      v4 = *(v16 + 8 * v3 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    v14 = sub_22110();

    v13 = *(v14 + *v1);
    swift_unknownObjectRelease();
    if (v13 <= 1)
    {
      if (v13)
      {
LABEL_17:
        if (v13 == 1)
        {

          return &stru_3D8 + 16;
        }

LABEL_29:

        return &stru_20 + 58;
      }

      goto LABEL_24;
    }

LABEL_27:
    if (v13 == 3)
    {

      return &dword_10;
    }

    goto LABEL_29;
  }

  v4 = sub_22110();
LABEL_5:
  v5 = v4;

  v1 = &OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType;
  v6 = *&v5[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  result = [*(v0 + v2[5]) unitManager];
  if (!result)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result unitManager];

  if ((v6 - 1) < 2)
  {
    v10 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v6)
  {
    v10 = &selRef_countUnit;
LABEL_10:
    v11 = objc_opt_self();
    goto LABEL_12;
  }

  v10 = &selRef_userActiveEnergyBurnedUnit;
  v11 = v9;
LABEL_12:
  v2 = [v11 *v10];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v3 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = *(v16 + 8 * v3 + 32);

  v13 = *&v12[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  if (v13 > 1)
  {
    goto LABEL_27;
  }

  if (v13)
  {
    goto LABEL_17;
  }

LABEL_24:
  IsCalorieUnit = FIUIHKUnitIsCalorieUnit();

  if (IsCalorieUnit)
  {
    return &loc_2704 + 2;
  }

  else
  {
    return &loc_9C28 + 4;
  }
}

uint64_t sub_FB9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v104 = a3;
  v103 = a2;
  v110 = a4;
  v5 = sub_140C4(&qword_3C728, &qword_26F48);
  __chkstk_darwin(v5 - 8);
  v106 = &v90[-v6];
  v105 = sub_140C4(&qword_3C730, &unk_26F50);
  v7 = __chkstk_darwin(v105);
  v9 = &v90[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v90[-v11];
  __chkstk_darwin(v10);
  v14 = &v90[-v13];
  v99 = sub_140C4(&qword_3C738, &unk_279F0);
  v15 = __chkstk_darwin(v99);
  v98 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v95 = &v90[-v17];
  v18 = sub_21B40();
  v113 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v112 = &v90[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v111 = &v90[-v21];
  v97 = sub_140C4(&qword_3C740, &qword_26F60);
  __chkstk_darwin(v97);
  v96 = &v90[-v22];
  v23 = sub_140C4(&qword_3C748, &qword_26F68);
  __chkstk_darwin(v23 - 8);
  v25 = &v90[-v24];
  v102 = sub_140C4(&qword_3C750, &qword_26F70);
  v101 = *(v102 - 8);
  v26 = __chkstk_darwin(v102);
  v100 = &v90[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v114 = &v90[-v28];
  v29 = a1;
  v30 = *(a1 + *(type metadata accessor for ScheduleDayRowView(0) + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  v109 = v9;
  v108 = v14;
  v107 = v12;
  if ((v115 & 0xC000000000000001) != 0)
  {
    v32 = sub_22110();
LABEL_5:
    v33 = v32;

    v94 = v29;
    v34 = sub_192C4(v33);
    v36 = v35;

    *&v115 = v34;
    *(&v115 + 1) = v36;
    sub_1449C(v37, v38, v39);
    v40 = sub_21E00();
    v42 = v41;
    v44 = v43;
    v45 = enum case for Font.Design.rounded(_:);
    v46 = sub_21D70();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v25, v45, v46);
    (*(v47 + 56))(v25, 0, 1, v46);
    v48 = sub_21DC0();
    v50 = v49;
    v52 = v51;
    sub_144F0(v40, v42, v44 & 1);

    sub_1486C(v25, &qword_3C748, &qword_26F68);
    sub_21D50();
    v53 = sub_21DE0();
    v55 = v54;
    LOBYTE(v42) = v56;
    v58 = v57;

    sub_144F0(v48, v50, v52 & 1);

    v93 = v53;
    *&v115 = v53;
    *(&v115 + 1) = v55;
    v92 = v55;
    v59 = v42 & 1;
    LOBYTE(v116) = v59;
    *(&v116 + 1) = v58;
    v60 = v113;
    v61 = *(v113 + 104);
    v62 = v111;
    v61(v111, enum case for DynamicTypeSize.xSmall(_:), v18);
    v63 = v112;
    v61(v112, enum case for DynamicTypeSize.xLarge(_:), v18);
    sub_14FC8(&qword_3C758, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    result = sub_22010();
    if (result)
    {
      v64 = *(v60 + 32);
      v91 = v59;
      v65 = v95;
      v64(v95, v62, v18);
      v66 = v99;
      v64((v65 + *(v99 + 48)), v63, v18);
      v112 = v58;
      v67 = v98;
      sub_14794(v65, v98);
      v68 = *(v66 + 48);
      v69 = v96;
      v64(v96, v67, v18);
      v70 = *(v60 + 8);
      v70(&v67[v68], v18);
      sub_14804(v65, v67, &qword_3C738, &unk_279F0);
      v64((v69 + *(v97 + 36)), &v67[*(v66 + 48)], v18);
      v70(v67, v18);
      sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60, &protocol conformance descriptor for ClosedRange<A>);
      v71 = v114;
      sub_21E70();
      sub_1486C(v69, &qword_3C740, &qword_26F60);
      sub_144F0(v93, v92, v91);

      v72 = sub_21C40();
      v73 = v106;
      *v106 = v72;
      *(v73 + 8) = 0;
      *(v73 + 16) = 1;
      v74 = sub_140C4(&qword_3C768, &qword_26F78);
      sub_10634(v94, v103, v104, v73 + *(v74 + 44));
      sub_21FF0();
      sub_21B80();
      v75 = v107;
      sub_14804(v73, v107, &qword_3C728, &qword_26F48);
      v76 = (v75 + *(v105 + 36));
      v77 = v120;
      v76[4] = v119;
      v76[5] = v77;
      v76[6] = v121;
      v78 = v116;
      *v76 = v115;
      v76[1] = v78;
      v79 = v118;
      v76[2] = v117;
      v76[3] = v79;
      v80 = v108;
      sub_14804(v75, v108, &qword_3C730, &unk_26F50);
      v81 = v101;
      v82 = *(v101 + 16);
      v83 = v100;
      v84 = v102;
      v82(v100, v71, v102);
      v85 = v109;
      sub_14DB4(v80, v109, &qword_3C730, &unk_26F50);
      v86 = v110;
      v82(v110, v83, v84);
      v87 = sub_140C4(&qword_3C770, &qword_26F80);
      v88 = &v86[*(v87 + 48)];
      *v88 = 0;
      v88[8] = 1;
      sub_14DB4(v85, &v86[*(v87 + 64)], &qword_3C730, &unk_26F50);
      sub_1486C(v80, &qword_3C730, &unk_26F50);
      v89 = *(v81 + 8);
      v89(v114, v84);
      sub_1486C(v85, &qword_3C730, &unk_26F50);
      return (v89)(v83, v84);
    }

    goto LABEL_9;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v30 < *(&dword_10 + (v115 & 0xFFFFFFFFFFFFFF8)))
  {
    v32 = *(v115 + 8 * v30 + 32);
    goto LABEL_5;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10634@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v124 = a3;
  v130 = a2;
  v116 = a4;
  v5 = sub_140C4(&qword_3C778, &qword_26F88);
  v6 = __chkstk_darwin(v5 - 8);
  v117 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v129 = (&v108 - v8);
  v9 = type metadata accessor for ScheduleDayRowView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_140C4(&qword_3C780, &qword_26F90);
  v13 = __chkstk_darwin(v12);
  v125 = (&v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = (&v108 - v15);
  v17 = sub_140C4(&qword_3C788, &qword_26F98);
  v18 = __chkstk_darwin(v17);
  v111 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v108 - v20;
  v127 = sub_140C4(&qword_3C790, &qword_26FA0);
  v22 = __chkstk_darwin(v127);
  v112 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v118 = &v108 - v24;
  v25 = sub_140C4(&qword_3C798, &qword_26FA8);
  v26 = __chkstk_darwin(v25 - 8);
  v114 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v115 = &v108 - v29;
  v30 = __chkstk_darwin(v28);
  v113 = &v108 - v31;
  __chkstk_darwin(v30);
  v128 = &v108 - v32;
  sub_14500(a1, &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v10 + 80);
  v34 = (v33 + 16) & ~v33;
  v122 = v11;
  v120 = v33;
  v35 = swift_allocObject();
  v121 = v34;
  v36 = v35 + v34;
  v37 = a1;
  v123 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1472C(v123, v36, type metadata accessor for ScheduleDayRowView);
  v38 = v12[10];
  v131 = 0;
  v39 = sub_140C4(&qword_3C7A0, &qword_26FB0);
  sub_21F40();
  *(v16 + v38) = v132;
  v40 = v12[11];
  v131 = 1;
  sub_21F40();
  *(v16 + v40) = v132;
  *v16 = sub_148CC;
  v16[1] = v35;
  sub_115D8(v16 + v12[9]);
  v41 = sub_119D0();
  v126 = v17;
  v108 = v9;
  v119 = v39;
  if (v41 == v130)
  {
    v42 = sub_21EF0();
  }

  else
  {
    v43 = *(a1 + *(v9 + 24));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21A90();

    if ((v132 & 0xC000000000000001) != 0)
    {
      v45 = sub_22110();
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v43 >= *(&dword_10 + (v132 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v45 = *(v132 + 8 * v43 + 32);
    }

    v46 = v45;

    v47 = *&v46[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

    v42 = sub_16C64(v47);
    v17 = v126;
  }

  KeyPath = swift_getKeyPath();
  *&v132 = v42;
  v49 = sub_21B00();
  sub_14804(v16, v21, &qword_3C780, &qword_26F90);
  v50 = &v21[*(v17 + 36)];
  *v50 = KeyPath;
  v50[1] = v49;
  v51 = sub_119D0();
  v52 = v130;
  v53 = v51 == v130;
  v54 = swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  v56 = v118;
  sub_14804(v21, v118, &qword_3C788, &qword_26F98);
  v57 = (v56 + *(v127 + 36));
  *v57 = v54;
  v57[1] = sub_14994;
  v57[2] = v55;
  sub_1463C(0, &qword_3C6E0, &off_34A50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v109 = objc_opt_self();
  v110 = ObjCClassFromMetadata;
  v59 = [v109 bundleForClass:ObjCClassFromMetadata];
  v60 = sub_22030();
  v61 = sub_22030();
  v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

  v63 = sub_22050();
  v65 = v64;

  *&v132 = v63;
  *(&v132 + 1) = v65;
  v66 = sub_149AC();
  sub_1449C(v66, v67, v68);
  sub_21E90();

  sub_1486C(v56, &qword_3C790, &qword_26FA0);
  v69 = sub_21FE0();
  v70 = v129;
  *v129 = v69;
  *(v70 + 1) = v71;
  v72 = sub_140C4(&qword_3C7E0, &qword_27028);
  sub_11C98(v52, v124, &v70[*(v72 + 44)]);
  v73 = v123;
  sub_14500(v37, v123);
  v74 = v37;
  v75 = v121;
  v76 = swift_allocObject();
  sub_1472C(v73, v76 + v75, type metadata accessor for ScheduleDayRowView);
  v77 = v12[10];
  v131 = 0;
  sub_21F40();
  v78 = v125;
  *(v125 + v77) = v132;
  v79 = v12[11];
  v131 = 1;
  sub_21F40();
  *(v78 + v79) = v132;
  *v78 = sub_14C40;
  v78[1] = v76;
  sub_12094(v78 + v12[9]);
  if (sub_F8D4() == v52)
  {
    v80 = sub_21EF0();
    v81 = v126;
LABEL_16:
    v85 = swift_getKeyPath();
    *&v132 = v80;
    v86 = sub_21B00();
    v87 = v111;
    sub_14804(v78, v111, &qword_3C780, &qword_26F90);
    v88 = (v87 + *(v81 + 36));
    *v88 = v85;
    v88[1] = v86;
    LOBYTE(v85) = sub_F8D4() == v130;
    v89 = swift_getKeyPath();
    v90 = swift_allocObject();
    *(v90 + 16) = v85;
    v91 = v112;
    sub_14804(v87, v112, &qword_3C788, &qword_26F98);
    v92 = (v91 + *(v127 + 36));
    *v92 = v89;
    v92[1] = sub_1501C;
    v92[2] = v90;
    v93 = [v109 bundleForClass:v110];
    v94 = sub_22030();
    v95 = sub_22030();
    v96 = [v93 localizedStringForKey:v94 value:0 table:v95];

    v97 = sub_22050();
    v99 = v98;

    *&v132 = v97;
    *(&v132 + 1) = v99;
    v100 = v113;
    sub_21E90();

    sub_1486C(v91, &qword_3C790, &qword_26FA0);
    v101 = v128;
    v102 = v115;
    sub_14DB4(v128, v115, &qword_3C798, &qword_26FA8);
    v103 = v129;
    v104 = v117;
    sub_14DB4(v129, v117, &qword_3C778, &qword_26F88);
    v105 = v114;
    sub_14DB4(v100, v114, &qword_3C798, &qword_26FA8);
    v106 = v116;
    sub_14DB4(v102, v116, &qword_3C798, &qword_26FA8);
    v107 = sub_140C4(&qword_3C7E8, &qword_27030);
    sub_14DB4(v104, v106 + *(v107 + 48), &qword_3C778, &qword_26F88);
    sub_14DB4(v105, v106 + *(v107 + 64), &qword_3C798, &qword_26FA8);
    sub_1486C(v100, &qword_3C798, &qword_26FA8);
    sub_1486C(v103, &qword_3C778, &qword_26F88);
    sub_1486C(v101, &qword_3C798, &qword_26FA8);
    sub_1486C(v105, &qword_3C798, &qword_26FA8);
    sub_1486C(v104, &qword_3C778, &qword_26F88);
    return sub_1486C(v102, &qword_3C798, &qword_26FA8);
  }

  v82 = *(v74 + *(v108 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v132 & 0xC000000000000001) != 0)
  {
    v83 = sub_22110();
    v81 = v126;
    goto LABEL_15;
  }

  v81 = v126;
  if ((v82 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (v82 < *(&dword_10 + (v132 & 0xFFFFFFFFFFFFFF8)))
  {
    v83 = *(v132 + 8 * v82 + 32);
LABEL_15:

    v84 = *&v83[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

    v80 = sub_16C64(v84);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_112D4(char a1)
{
  v3 = type metadata accessor for ScheduleDayRowView(0);
  v4 = *(v1 + *(v3 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  v5 = v23;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v6 = sub_22110();
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v4 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_32;
    }

    v6 = *(v23 + 8 * v4 + 32);
  }

  v7 = v6;

  v5 = *&v7[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v23 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 < *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
      {
        v8 = *(v23 + 8 * v4 + 32);
        goto LABEL_9;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_30:
  v8 = sub_22110();
LABEL_9:
  v9 = v8;

  v10 = *&v9[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  v11 = [*(v1 + *(v3 + 20)) unitManager];
  if (!v11)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 unitManager];

  if ((v10 - 1) < 2)
  {
    v14 = &selRef_minuteUnit;
    goto LABEL_14;
  }

  if (v10)
  {
    v14 = &selRef_countUnit;
LABEL_14:
    v15 = objc_opt_self();
    goto LABEL_16;
  }

  v14 = &selRef_userActiveEnergyBurnedUnit;
  v15 = v13;
LABEL_16:
  v16 = [v15 *v14];

  [v5 doubleValueForUnit:v16];
  v18 = v17;

  v19 = floor(v18);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = sub_13990();
  if ((a1 & 1) == 0)
  {
    goto LABEL_23;
  }

  v22 = &v21[v20];
  if (__OFADD__(v20, v21))
  {
    __break(1u);
LABEL_23:
    v22 = (v20 - v21);
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_24:
  if (v22 >= sub_119D0() && sub_F8D4() >= v22)
  {
    sub_13C54(v22);
  }
}

uint64_t sub_115D8@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_140C4(&qword_3C738, &unk_279F0);
  v2 = __chkstk_darwin(v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v24 - v5;
  v7 = sub_21B40();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  v25 = sub_140C4(&qword_3C740, &qword_26F60);
  __chkstk_darwin(v25);
  v15 = v24 - v14;
  v16 = sub_21F30();
  v17 = sub_21D90();
  KeyPath = swift_getKeyPath();
  v24[1] = v17;
  v24[2] = v16;
  v27 = v16;
  v28 = KeyPath;
  v24[0] = KeyPath;
  v29 = v17;
  v19 = v8[13];
  v19(v13, enum case for DynamicTypeSize.xSmall(_:), v7);
  v19(v11, enum case for DynamicTypeSize.xLarge(_:), v7);
  sub_14FC8(&qword_3C758, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_22010();
  if (result)
  {
    v21 = v8[4];
    v21(v6, v13, v7);
    v21(&v6[*(v1 + 48)], v11, v7);
    sub_14794(v6, v4);
    v22 = *(v1 + 48);
    v21(v15, v4, v7);
    v23 = v8[1];
    v23(&v4[v22], v7);
    sub_14804(v6, v4, &qword_3C738, &unk_279F0);
    v21(&v15[*(v25 + 36)], &v4[*(v1 + 48)], v7);
    v23(v4, v7);
    sub_140C4(&qword_3C7F0, &qword_27068);
    sub_14CB4();
    sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60, &protocol conformance descriptor for ClosedRange<A>);
    sub_21E70();
    sub_1486C(v15, &qword_3C740, &qword_26F60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_119D0()
{
  v2 = type metadata accessor for ScheduleDayRowView(0);
  v3 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      v4 = *(v16 + 8 * v3 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    v14 = sub_22110();

    v13 = *(v14 + *v1);
    swift_unknownObjectRelease();
    if (v13 <= 1)
    {
      if (v13)
      {
LABEL_17:
        if (v13 == 1)
        {

          return &dword_8 + 2;
        }

LABEL_29:

        return &dword_4 + 1;
      }

      goto LABEL_24;
    }

LABEL_27:
    if (v13 == 3)
    {

      return &dword_4 + 2;
    }

    goto LABEL_29;
  }

  v4 = sub_22110();
LABEL_5:
  v5 = v4;

  v1 = &OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType;
  v6 = *&v5[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  result = [*(v0 + v2[5]) unitManager];
  if (!result)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result unitManager];

  if ((v6 - 1) < 2)
  {
    v10 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v6)
  {
    v10 = &selRef_countUnit;
LABEL_10:
    v11 = objc_opt_self();
    goto LABEL_12;
  }

  v10 = &selRef_userActiveEnergyBurnedUnit;
  v11 = v9;
LABEL_12:
  v2 = [v11 *v10];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v3 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = *(v16 + 8 * v3 + 32);

  v13 = *&v12[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  if (v13 > 1)
  {
    goto LABEL_27;
  }

  if (v13)
  {
    goto LABEL_17;
  }

LABEL_24:
  IsCalorieUnit = FIUIHKUnitIsCalorieUnit();

  if (IsCalorieUnit)
  {
    return &dword_8 + 2;
  }

  else
  {
    return &dword_14;
  }
}

uint64_t sub_11C98@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v36 = a3;
  v37 = a4;
  v33 = a2;
  v34 = sub_140C4(&qword_3C810, &qword_27078) - 8;
  v4 = __chkstk_darwin(v34);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v32 = sub_21CB0();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_140C4(&qword_3C818, &qword_27080);
  __chkstk_darwin(v30);
  v12 = &v28 - v11;
  v31 = sub_140C4(&qword_3C820, &qword_27088);
  v13 = *(v31 - 8);
  v14 = __chkstk_darwin(v31);
  v29 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  *v12 = sub_21C30();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v18 = sub_140C4(&qword_3C828, &qword_27090);
  sub_13168(v33, &v12[*(v18 + 44)]);
  sub_21CA0();
  sub_14D6C(&qword_3C830, &qword_3C818, &qword_27080, &protocol conformance descriptor for HStack<A>);
  v28 = v17;
  sub_21EB0();
  (*(v8 + 8))(v10, v32);
  sub_1486C(v12, &qword_3C818, &qword_27080);
  *v7 = sub_21C30();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_13168(v36, &v7[*(v18 + 44)]);
  *&v7[*(v34 + 44)] = 0;
  v19 = *(v13 + 16);
  v20 = v29;
  v21 = v17;
  v22 = v31;
  v19(v29, v21, v31);
  v23 = v35;
  sub_14DB4(v7, v35, &qword_3C810, &qword_27078);
  v24 = v37;
  v19(v37, v20, v22);
  v25 = sub_140C4(&qword_3C838, qword_27098);
  sub_14DB4(v23, &v24[*(v25 + 48)], &qword_3C810, &qword_27078);
  sub_1486C(v7, &qword_3C810, &qword_27078);
  v26 = *(v13 + 8);
  v26(v28, v22);
  sub_1486C(v23, &qword_3C810, &qword_27078);
  return (v26)(v20, v22);
}

uint64_t sub_12094@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_140C4(&qword_3C738, &unk_279F0);
  v2 = __chkstk_darwin(v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v24 - v5;
  v7 = sub_21B40();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  v25 = sub_140C4(&qword_3C740, &qword_26F60);
  __chkstk_darwin(v25);
  v15 = v24 - v14;
  v16 = sub_21F30();
  v17 = sub_21D90();
  KeyPath = swift_getKeyPath();
  v24[1] = v17;
  v24[2] = v16;
  v27 = v16;
  v28 = KeyPath;
  v24[0] = KeyPath;
  v29 = v17;
  v19 = v8[13];
  v19(v13, enum case for DynamicTypeSize.xSmall(_:), v7);
  v19(v11, enum case for DynamicTypeSize.xLarge(_:), v7);
  sub_14FC8(&qword_3C758, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_22010();
  if (result)
  {
    v21 = v8[4];
    v21(v6, v13, v7);
    v21(&v6[*(v1 + 48)], v11, v7);
    sub_14794(v6, v4);
    v22 = *(v1 + 48);
    v21(v15, v4, v7);
    v23 = v8[1];
    v23(&v4[v22], v7);
    sub_14804(v6, v4, &qword_3C738, &unk_279F0);
    v21(&v15[*(v25 + 36)], &v4[*(v1 + 48)], v7);
    v23(v4, v7);
    sub_140C4(&qword_3C7F0, &qword_27068);
    sub_14CB4();
    sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60, &protocol conformance descriptor for ClosedRange<A>);
    sub_21E70();
    sub_1486C(v15, &qword_3C740, &qword_26F60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1248C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21FE0();
  v6 = v5;
  v7 = a2 + *(sub_140C4(&qword_3C658, &qword_26EE8) + 36);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = sub_21C60();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  v10 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v11 = sub_21ED0();
  v12 = sub_140C4(&qword_3C718, &qword_26F38);
  *(v7 + *(v12 + 52)) = v11;
  *(v7 + *(v12 + 56)) = 256;
  LOBYTE(v11) = sub_21CE0();
  sub_21AC0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v7 + *(sub_140C4(&qword_3C720, &qword_26F40) + 36);
  *v21 = v11;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = (v7 + *(sub_140C4(&qword_3C698, &qword_26EF8) + 36));
  *v22 = v4;
  v22[1] = v6;
  return sub_14DB4(a1, a2, &qword_3C628, &qword_26E60);
}

uint64_t sub_12618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21FE0();
  v6 = v5;
  v7 = a2 + *(sub_140C4(&qword_3C660, &qword_26EF0) + 36);
  sub_126B8(v7);
  v8 = (v7 + *(sub_140C4(&qword_3C6B0, &qword_26F00) + 36));
  *v8 = v4;
  v8[1] = v6;
  return sub_14DB4(a1, a2, &qword_3C628, &qword_26E60);
}

uint64_t sub_126B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21B70();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_140C4(&qword_3C708, &qword_26F28);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  if (sub_21FC0())
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 14.0;
  }

  v11 = *(v3 + 28);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = sub_21C60();
  (*(*(v13 - 8) + 104))(v5 + v11, v12, v13);
  *v5 = v10;
  v5[1] = v10;
  v14 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v15 = sub_21ED0();
  sub_1472C(v5, v9, &type metadata accessor for RoundedRectangle);
  *&v9[*(v7 + 60)] = v15;
  *&v9[*(v7 + 64)] = 256;
  v16 = sub_21CE0();
  sub_21AC0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_14804(v9, a1, &qword_3C708, &qword_26F28);
  result = sub_140C4(&qword_3C710, &qword_26F30);
  v26 = a1 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

id sub_128C4()
{
  v1 = type metadata accessor for ScheduleDayRowView(0);
  v2 = *(v0 + *(v1 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v2 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(v9 + 8 * v2 + 32);

  v5 = *&v4[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  v6 = 0;
  if (v5 <= 1)
  {
    if (v5)
    {
      while (v5 == 1)
      {
        result = [*(v0 + *(v1 + 20)) localizedShortBriskMinutesUnitString];
        if (result)
        {
          goto LABEL_18;
        }

        __break(1u);
LABEL_9:
        v7 = sub_22110();

        v5 = *(v7 + OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType);
        swift_unknownObjectRelease();
        v6 = 0;
        if (v5 > 1)
        {
          goto LABEL_13;
        }

        if (!v5)
        {
          goto LABEL_11;
        }
      }

      return v6;
    }

LABEL_11:
    result = [*(v0 + *(v1 + 20)) localizedShortActiveEnergyUnitString];
    if (result)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

LABEL_13:
  if (v5 != 2)
  {
    if (v5 != 3)
    {
      return v6;
    }

    result = [*(v0 + *(v1 + 20)) localizedShortActiveHoursUnitString];
    if (result)
    {
LABEL_18:
      v8 = result;
      v6 = sub_22050();

      return v6;
    }

    __break(1u);
  }

  result = [*(v0 + *(v1 + 20)) localizedShortBriskMinutesUnitString];
  if (result)
  {
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_12AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a1;
  v41 = a3;
  v42 = a5;
  v7 = sub_140C4(&qword_3C6C8, &qword_26F10);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_140C4(&qword_3C6D0, &qword_26F18);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_140C4(&qword_3C6D8, &qword_26F20);
  v43 = *(v13 - 8);
  __chkstk_darwin(v13);
  v39 = &v39 - v14;
  v15 = sub_21750();
  __chkstk_darwin(v15 - 8);
  sub_1463C(0, &qword_3C6E0, &off_34A50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v18 = sub_22030();
  v19 = sub_22030();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  sub_22050();
  sub_140C4(&qword_3C6C0, &qword_26F08);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26DA0;
  *(v21 + 56) = &type metadata for String;
  v24 = sub_14684(v21, v22, v23);
  *(v21 + 32) = v40;
  *(v21 + 40) = a2;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v24;
  v25 = v41;
  *(v21 + 64) = v24;
  *(v21 + 72) = v25;
  *(v21 + 80) = a4;

  sub_22060();

  sub_21740();
  sub_21710();
  v45[0] = sub_21D60();
  sub_146D8(v45[0], v26, v27);
  sub_21720();
  v45[0] = v25;
  v45[1] = a4;
  v28 = sub_217E0();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  sub_21700();
  v29 = sub_14FC8(&qword_3C6F8, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_1449C(v29, v30, v31);
  sub_21770();
  sub_1486C(v9, &qword_3C6C8, &qword_26F10);
  if ((*(v43 + 48))(v12, 1, v13) == 1)
  {
    v32 = &qword_3C6D0;
    v33 = &qword_26F18;
    v34 = v12;
  }

  else
  {
    v35 = v39;
    sub_14804(v12, v39, &qword_3C6D8, &qword_26F20);
    sub_21D90();
    v36 = sub_21DB0();

    sub_14D6C(&qword_3C700, &qword_3C6D8, &qword_26F20, &protocol conformance descriptor for Range<A>);
    v37 = sub_21730();
    v44 = v36;
    sub_21760();
    v37(v45, 0);
    v34 = v35;
    v32 = &qword_3C6D8;
    v33 = &qword_26F20;
  }

  return sub_1486C(v34, v32, v33);
}

void sub_12FFC(uint64_t a1)
{
  v2 = sub_21CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for AccessibilityAdjustmentDirection.increment(_:) || v6 == enum case for AccessibilityAdjustmentDirection.decrement(_:))
  {
    sub_112D4(v6 == enum case for AccessibilityAdjustmentDirection.increment(_:));
  }

  else
  {
    sub_22130();
    __break(1u);
  }
}

uint64_t sub_13168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v77 = sub_140C4(&qword_3C738, &unk_279F0);
  v3 = __chkstk_darwin(v77);
  v76 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v72 = &v68 - v5;
  v6 = sub_21B40();
  v83 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v81 = &v68 - v9;
  v78 = sub_140C4(&qword_3C740, &qword_26F60);
  __chkstk_darwin(v78);
  v73 = &v68 - v10;
  v11 = sub_140C4(&qword_3C748, &qword_26F68);
  __chkstk_darwin(v11 - 8);
  v80 = &v68 - v12;
  v13 = sub_140C4(&qword_3C750, &qword_26F70);
  v74 = *(v13 - 8);
  v75 = v13;
  __chkstk_darwin(v13);
  v70 = &v68 - v14;
  v15 = sub_21700();
  v84 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v68 - v19;
  sub_140C4(&qword_3C6C0, &qword_26F08);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26DB0;
  *(v21 + 56) = &type metadata for Int;
  *(v21 + 64) = &protocol witness table for Int;
  *(v21 + 32) = a1;
  v22 = sub_22040();
  v24 = v23;

  v85 = sub_128C4();
  v86 = v25;
  sub_1449C(v85, v25, v26);
  v27 = sub_220F0();
  v29 = v28;

  sub_12AC8(v22, v24, v27, v29, v20);

  v30 = *(v84 + 16);
  v69 = v20;
  v71 = v15;
  v30(v18, v20, v15);
  v31 = sub_21DF0();
  v33 = v32;
  LOBYTE(v22) = v34;
  v35 = enum case for Font.Design.rounded(_:);
  v36 = sub_21D70();
  v37 = *(v36 - 8);
  v38 = v80;
  (*(v37 + 104))(v80, v35, v36);
  (*(v37 + 56))(v38, 0, 1, v36);
  v39 = sub_21DC0();
  v41 = v40;
  LOBYTE(v20) = v42;
  sub_144F0(v31, v33, v22 & 1);

  v43 = v38;
  v44 = v81;
  sub_1486C(v43, &qword_3C748, &qword_26F68);
  sub_21D80();
  v45 = sub_21DD0();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_144F0(v39, v41, v20 & 1);
  v52 = v82;

  v80 = v45;
  v85 = v45;
  v86 = v47;
  v68 = v47;
  LOBYTE(v87) = v49 & 1;
  v88 = v51;
  v53 = v83;
  v54 = *(v83 + 104);
  v54(v44, enum case for DynamicTypeSize.xSmall(_:), v6);
  v54(v52, enum case for DynamicTypeSize.xLarge(_:), v6);
  sub_14FC8(&qword_3C758, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_22010();
  if (result)
  {
    v56 = *(v53 + 32);
    v57 = v72;
    v56(v72, v44, v6);
    v58 = v77;
    v56((v57 + *(v77 + 48)), v52, v6);
    v59 = v76;
    sub_14794(v57, v76);
    v60 = *(v58 + 48);
    v82 = v51;
    v61 = v73;
    v56(v73, v59, v6);
    LODWORD(v81) = v49 & 1;
    v62 = *(v53 + 8);
    v62(v59 + v60, v6);
    sub_14804(v57, v59, &qword_3C738, &unk_279F0);
    v63 = *(v58 + 48);
    v64 = v78;
    v56((v61 + *(v78 + 36)), (v59 + v63), v6);
    v62(v59, v6);
    v65 = sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60, &protocol conformance descriptor for ClosedRange<A>);
    v66 = v70;
    sub_21E70();
    sub_1486C(v61, &qword_3C740, &qword_26F60);
    sub_144F0(v80, v68, v81);

    v85 = &type metadata for Text;
    v86 = v64;
    v87 = &protocol witness table for Text;
    v88 = v65;
    swift_getOpaqueTypeConformance2();
    v67 = v75;
    sub_21E80();
    (*(v74 + 8))(v66, v67);
    return (*(v84 + 8))(v69, v71);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_13990()
{
  v2 = type metadata accessor for ScheduleDayRowView(0);
  v3 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      v4 = *(v16 + 8 * v3 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_22;
  }

  v4 = sub_22110();
LABEL_5:
  v5 = v4;

  v1 = &OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType;
  v6 = *&v5[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

  result = [*(v0 + v2[5]) unitManager];
  if (!result)
  {
    goto LABEL_33;
  }

  v8 = result;
  v9 = [result unitManager];

  if ((v6 - 1) < 2)
  {
    v10 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v6)
  {
    v10 = &selRef_countUnit;
LABEL_10:
    v11 = objc_opt_self();
    goto LABEL_12;
  }

  v10 = &selRef_userActiveEnergyBurnedUnit;
  v11 = v9;
LABEL_12:
  v2 = [v11 *v10];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      v12 = *(v16 + 8 * v3 + 32);

      v13 = *&v12[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];

      if (v13 <= 1)
      {
        if (v13)
        {
          goto LABEL_17;
        }

LABEL_24:
        IsCalorieUnit = FIUIHKUnitIsCalorieUnit();

        if (IsCalorieUnit)
        {
          return &dword_8 + 2;
        }

        else
        {
          return &dword_14;
        }
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

LABEL_22:
  v14 = sub_22110();

  v13 = *(v14 + *v1);
  swift_unknownObjectRelease();
  if (v13 <= 1)
  {
    if (v13)
    {
LABEL_17:
      if (v13 == 1)
      {

        return &dword_8 + 2;
      }

      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_27:
  if (v13 != 2)
  {
LABEL_28:

    return &dword_0 + 1;
  }

  return &dword_4 + 1;
}

id sub_13C54(id a1)
{
  v3 = type metadata accessor for ScheduleDayRowView(0);
  v4 = *(v1 + *(v3 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  v5 = v29;
  if ((v29 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
    {
      v6 = v29[v4 + 4];
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_30;
  }

  v6 = sub_22110();
LABEL_5:
  v7 = v6;

  v5 = &OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType;
  v8 = *(v7 + OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType);

  result = [*(v1 + *(v3 + 20)) unitManager];
  if (result)
  {
    v10 = result;
    v11 = [result unitManager];

    if ((v8 - 1) < 2)
    {
      v12 = &selRef_minuteUnit;
    }

    else
    {
      if (!v8)
      {
        v12 = &selRef_userActiveEnergyBurnedUnit;
        v13 = v11;
LABEL_12:
        v14 = [v13 *v12];

        a1 = [objc_opt_self() quantityWithUnit:v14 doubleValue:a1];
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21A90();

        if ((v29 & 0xC000000000000001) == 0)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_32;
          }

          if (v4 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_34;
          }

          v15 = v29[v4 + 4];
LABEL_16:
          v16 = v15;

          v7 = &OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day;
          LOBYTE(v8) = v16[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day];

          swift_getKeyPath();
          swift_getKeyPath();
          a1 = a1;
          sub_21A90();

          if ((v29 & 0xC000000000000001) == 0)
          {
            if ((v4 & 0x8000000000000000) == 0)
            {
              if (v4 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
              {
LABEL_36:
                __break(1u);
LABEL_37:
                __break(1u);
                goto LABEL_38;
              }

              v17 = v29[v4 + 4];
              goto LABEL_20;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_32:
          v17 = sub_22110();
LABEL_20:
          v18 = v17;

          v19 = *&v18[*v5];

          v20 = type metadata accessor for GoalDay();
          v21 = objc_allocWithZone(v20);
          v21[*v7] = v8;
          *&v21[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = a1;
          *&v21[*v5] = v19;
          v30.receiver = v21;
          v30.super_class = v20;
          v22 = objc_msgSendSuper2(&v30, "init");
          swift_getKeyPath();
          swift_getKeyPath();
          v23 = v22;
          v24 = sub_21A80();
          v26 = v25;
          v27 = *v25;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v26 = v27;
          if (!result || (v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
          {
            result = sub_145D8(v27);
            v27 = result;
            *v26 = result;
          }

          if ((v4 & 0x8000000000000000) == 0)
          {
            if (v4 < *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
            {
              v28 = *(&stru_20.cmd + 8 * v4 + (v27 & 0xFFFFFFFFFFFFFF8));
              *(&stru_20.cmd + 8 * v4 + (v27 & 0xFFFFFFFFFFFFFF8)) = v23;

              v24(&v29, 0);
            }

            goto LABEL_37;
          }

          goto LABEL_35;
        }

LABEL_30:
        v15 = sub_22110();
        goto LABEL_16;
      }

      v12 = &selRef_countUnit;
    }

    v13 = objc_opt_self();
    goto LABEL_12;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_140C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_14114()
{
  result = qword_3C668;
  if (!qword_3C668)
  {
    sub_141A0(&qword_3C628, &qword_26E60);
    sub_141E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C668);
  }

  return result;
}

uint64_t sub_141A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_141E8()
{
  result = qword_3C670;
  if (!qword_3C670)
  {
    sub_141A0(&qword_3C620, &qword_26E58);
    sub_14274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C670);
  }

  return result;
}

unint64_t sub_14274()
{
  result = qword_3C678;
  if (!qword_3C678)
  {
    sub_141A0(&qword_3C618, &qword_26E50);
    sub_14D6C(&qword_3C680, &qword_3C610, &qword_26E48, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C678);
  }

  return result;
}

unint64_t sub_1432C()
{
  result = qword_3C688;
  if (!qword_3C688)
  {
    sub_141A0(&qword_3C658, &qword_26EE8);
    sub_14114();
    sub_14D6C(&qword_3C690, &qword_3C698, &qword_26EF8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C688);
  }

  return result;
}

unint64_t sub_143E4()
{
  result = qword_3C6A0;
  if (!qword_3C6A0)
  {
    sub_141A0(&qword_3C660, &qword_26EF0);
    sub_14114();
    sub_14D6C(&qword_3C6A8, &qword_3C6B0, &qword_26F00, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6A0);
  }

  return result;
}

unint64_t sub_1449C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6B8;
  if (!qword_3C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6B8);
  }

  return result;
}

uint64_t sub_144F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_14500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleDayRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_14568(uint64_t a1)
{
  type metadata accessor for ScheduleDayRowView(0);

  sub_12FFC(a1);
}

uint64_t sub_145D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22140();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t sub_1463C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_14684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6E8;
  if (!qword_3C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6E8);
  }

  return result;
}

unint64_t sub_146D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C6F0;
  if (!qword_3C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C6F0);
  }

  return result;
}

uint64_t sub_1472C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_14794(uint64_t a1, uint64_t a2)
{
  v4 = sub_140C4(&qword_3C738, &unk_279F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14804(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_140C4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1486C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_140C4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_148D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BB0();
  *a1 = result;
  return result;
}

uint64_t sub_1492C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BF0();
  *a1 = result & 1;
  return result;
}

unint64_t sub_149AC()
{
  result = qword_3C7A8;
  if (!qword_3C7A8)
  {
    sub_141A0(&qword_3C790, &qword_26FA0);
    sub_14A64();
    sub_14D6C(&qword_3C7D0, &qword_3C7D8, &qword_27020, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7A8);
  }

  return result;
}

unint64_t sub_14A64()
{
  result = qword_3C7B0;
  if (!qword_3C7B0)
  {
    sub_141A0(&qword_3C788, &qword_26F98);
    sub_14D6C(&qword_3C7B8, &qword_3C780, &qword_26F90, &unk_277F0);
    sub_14D6C(&qword_3C7C0, &qword_3C7C8, &qword_27018, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7B0);
  }

  return result;
}

uint64_t sub_14B48()
{
  v1 = (type metadata accessor for ScheduleDayRowView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21850();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_14CB4()
{
  result = qword_3C7F8;
  if (!qword_3C7F8)
  {
    sub_141A0(&qword_3C7F0, &qword_27068);
    sub_14D6C(&qword_3C800, &qword_3C808, &qword_27070, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7F8);
  }

  return result;
}

uint64_t sub_14D6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_141A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_14DB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_140C4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_14E20()
{
  result = qword_3C840;
  if (!qword_3C840)
  {
    sub_141A0(&qword_3C640, qword_26E78);
    sub_141A0(&qword_3C630, &qword_26E68);
    sub_141A0(&qword_3C628, &qword_26E60);
    sub_141A0(&qword_3C658, &qword_26EE8);
    sub_141A0(&qword_3C660, &qword_26EF0);
    sub_14114();
    sub_1432C();
    sub_143E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_14FC8(&qword_3C848, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C840);
  }

  return result;
}

uint64_t sub_14FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_15020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_dayLabel;
  *&v3[v6] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_goalView] = 0;
  *&v3[OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a3)
  {
    v7 = sub_22030();
  }

  else
  {
    v7 = 0;
  }

  v30.receiver = v3;
  v30.super_class = type metadata accessor for ActivityGoalDayCell();
  v8 = objc_msgSendSuper2(&v30, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_dayLabel;
  v10 = *&v8[OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_dayLabel];
  v11 = v8;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v11 contentView];
  [v12 addSubview:*&v8[v9]];

  v13 = [*&v8[v9] topAnchor];
  v14 = [v11 contentView];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [*&v8[v9] leadingAnchor];
  v18 = [v11 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [*&v8[v9] bottomAnchor];
  v22 = [v11 contentView];

  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];

  [v24 setActive:1];
  v25 = *&v8[v9];
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 preferredFontForTextStyle:UIFontTextStyleBody];
  [v27 setFont:v28];

  return v11;
}

id sub_1547C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivityGoalDayCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_15704(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AdvancedGoalViewFactory();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1575C(uint64_t a1)
{
  v2 = sub_21850();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE0();
}

uint64_t sub_15824(void *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v27 = a5;
  v28 = a4;
  v25 = a3;
  v24 = a2;
  v23 = a1;
  v5 = type metadata accessor for AdvancedChangeGoalView(0);
  __chkstk_darwin(v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_140C4(&qword_3C918, &qword_27138);
  v8 = *(v26 - 8);
  v9 = __chkstk_darwin(v26);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  *v7 = swift_getKeyPath();
  sub_140C4(&qword_3C920, &qword_27170);
  swift_storeEnumTagMultiPayload();
  v14 = v7 + v5[5];
  sub_15B7C();
  sub_15BC8(&qword_3C928, sub_15B7C, &protocol conformance descriptor for FIUIFormattingManager);
  *v14 = sub_21AE0();
  v14[8] = v15 & 1;
  v16 = (v7 + v5[6]);
  type metadata accessor for GoalDaysModel(0);
  sub_15BC8(&unk_3C5D8, type metadata accessor for GoalDaysModel, &unk_27320);
  v17 = v23;
  *v16 = sub_21B10();
  v16[1] = v18;
  *(v7 + v5[7]) = v24;
  *(v7 + v5[8]) = v25;
  *(v7 + v5[9]) = v27;
  sub_15BC8(&qword_3C930, type metadata accessor for AdvancedChangeGoalView, &unk_27638);
  sub_21E50();
  sub_15C10(v7);
  v19 = v26;
  (*(v8 + 16))(v11, v13, v26);
  v20 = objc_allocWithZone(sub_140C4(&qword_3C938, &qword_27178));
  v21 = sub_21B30();
  (*(v8 + 8))(v13, v19);
  return v21;
}

unint64_t sub_15B7C()
{
  result = qword_3C5C8;
  if (!qword_3C5C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3C5C8);
  }

  return result;
}

uint64_t sub_15BC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_15C10(uint64_t a1)
{
  v2 = type metadata accessor for AdvancedChangeGoalView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_15C6C(char a1)
{
  v2 = [v1 *off_35CA0[a1]];

  return v2;
}

uint64_t sub_15CB0()
{
  sub_140C4(&qword_3C940, &qword_27190);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_27180;
  v2 = [v0 mondayGoal];
  v3 = [v0 goalType];
  v4 = type metadata accessor for GoalDay();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 0;
  *&v5[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v2;
  *&v5[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v3;
  v31.receiver = v5;
  v31.super_class = v4;
  *(v1 + 32) = objc_msgSendSuper2(&v31, "init");
  v6 = [v0 tuesdayGoal];
  v7 = [v0 goalType];
  v8 = objc_allocWithZone(v4);
  v8[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 1;
  *&v8[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v6;
  *&v8[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v7;
  v30.receiver = v8;
  v30.super_class = v4;
  *(v1 + 40) = objc_msgSendSuper2(&v30, "init");
  v9 = [v0 wednesdayGoal];
  v10 = [v0 goalType];
  v11 = objc_allocWithZone(v4);
  v11[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 2;
  *&v11[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v9;
  *&v11[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v10;
  v29.receiver = v11;
  v29.super_class = v4;
  *(v1 + 48) = objc_msgSendSuper2(&v29, "init");
  v12 = [v0 thursdayGoal];
  v13 = [v0 goalType];
  v14 = objc_allocWithZone(v4);
  v14[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 3;
  *&v14[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v12;
  *&v14[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v13;
  v28.receiver = v14;
  v28.super_class = v4;
  *(v1 + 56) = objc_msgSendSuper2(&v28, "init");
  v15 = [v0 fridayGoal];
  v16 = [v0 goalType];
  v17 = objc_allocWithZone(v4);
  v17[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 4;
  *&v17[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v15;
  *&v17[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v16;
  v27.receiver = v17;
  v27.super_class = v4;
  *(v1 + 64) = objc_msgSendSuper2(&v27, "init");
  v18 = [v0 saturdayGoal];
  v19 = [v0 goalType];
  v20 = objc_allocWithZone(v4);
  v20[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 5;
  *&v20[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v18;
  *&v20[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v19;
  v26.receiver = v20;
  v26.super_class = v4;
  *(v1 + 72) = objc_msgSendSuper2(&v26, "init");
  v21 = [v0 sundayGoal];
  v22 = [v0 goalType];
  v23 = objc_allocWithZone(v4);
  v23[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] = 6;
  *&v23[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal] = v21;
  *&v23[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType] = v22;
  v25.receiver = v23;
  v25.super_class = v4;
  *(v1 + 80) = objc_msgSendSuper2(&v25, "init");
  return v1;
}

id sub_1606C()
{
  v17 = sub_217D0();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21850();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_216F0();
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21830();
  sub_140C4(&qword_3C948, &qword_27198);
  v9 = sub_21840();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26DB0;
  (*(v10 + 104))(v12 + v11, enum case for Calendar.Component.weekday(_:), v9);
  sub_16928(v12);
  swift_setDeallocating();
  (*(v10 + 8))(v12 + v11, v9);
  swift_deallocClassInstance();
  sub_217C0();
  sub_217F0();

  (*(v0 + 8))(v2, v17);
  (*(v3 + 8))(v5, v16);
  v13 = sub_19968(v8);
  result = 0;
  if (v13 != 7)
  {
    return sub_15C6C(v13);
  }

  return result;
}

void sub_163A4(unint64_t a1, char *a2)
{
  v4 = sub_217D0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  j = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_80;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; v6 = v36)
  {
    v44 = a2;
    v45 = j;
    v46 = v5;
    v47 = v6;
    j = 0;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v6 = sub_22110();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_75;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      a2 = v6;
      v10 = (j + 1);
      if (__OFADD__(j, 1))
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (!v6[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day])
      {
        break;
      }

      ++j;
      if (v10 == i)
      {
        return;
      }
    }

    for (j = 0; ; ++j)
    {
      if (v5)
      {
        v6 = sub_22110();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_78;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v11 = v6;
      v12 = (j + 1);
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v6[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 1)
      {
        for (j = 0; ; ++j)
        {
          if (v5)
          {
            v6 = sub_22110();
          }

          else
          {
            if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
              return;
            }

            v6 = *(a1 + 8 * j + 32);
          }

          v13 = v6;
          v14 = (j + 1);
          if (__OFADD__(j, 1))
          {
            goto LABEL_77;
          }

          if (v6[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 2)
          {
            break;
          }

          if (v14 == i)
          {

            return;
          }
        }

        for (j = 0; ; ++j)
        {
          if (v5)
          {
            v6 = sub_22110();
            v15 = (j + 1);
            if (__OFADD__(j, 1))
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_84;
            }

            v6 = *(a1 + 8 * j + 32);
            v15 = (j + 1);
            if (__OFADD__(j, 1))
            {
              goto LABEL_79;
            }
          }

          if (v6[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 3)
          {
            break;
          }

          if (v15 == i)
          {

            return;
          }
        }

        v16 = 0;
        v48 = v6;
        while (1)
        {
          if (v5)
          {
            v17 = sub_22110();
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_83;
            }
          }

          else
          {
            if (v16 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_86;
            }

            v17 = *(a1 + 8 * v16 + 32);
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_83;
            }
          }

          if (v17[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 4)
          {
            break;
          }

          ++v16;
          if (v18 == i)
          {
            v19 = v48;

LABEL_71:
            return;
          }
        }

        v20 = 0;
        v43 = v17;
        while (1)
        {
          if (v5)
          {
            v21 = sub_22110();
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v20 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_88;
            }

            v21 = *(a1 + 8 * v20 + 32);
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_85;
            }
          }

          if (v21[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 5)
          {
            break;
          }

          ++v20;
          if (v22 == i)
          {
            v19 = v43;

            v23 = v48;
LABEL_70:

            goto LABEL_71;
          }
        }

        v24 = 0;
        v42 = v21;
        while (1)
        {
          if (v5)
          {
            v25 = sub_22110();
            v26 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v24 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_89;
            }

            v25 = *(a1 + 8 * v24 + 32);
            v26 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_87;
            }
          }

          if (v25[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day] == 6)
          {
            break;
          }

          ++v24;
          if (v26 == i)
          {
            v19 = v42;

            v23 = v43;
            goto LABEL_70;
          }
        }

        v27 = v45;
        v28 = v25;
        v41 = v25;
        sub_217C0();
        v29 = *&a2[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v39 = *&v11[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v40 = v29;
        v30 = *&v13[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v38 = *&v48[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v31 = *&v43[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v32 = *&v42[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v33 = *&v28[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v34 = [objc_opt_self() localDevice];
        isa = sub_217B0().super.isa;
        [objc_opt_self() activityGoalScheduleWithDate:isa goalType:v44 mondayGoal:v40 tuesdayGoal:v39 wednesdayGoal:v30 thursdayGoal:v38 fridayGoal:v31 saturdayGoal:v32 sundayGoal:v33 device:v34 metadata:0];

        (*(v46 + 8))(v27, v47);
        return;
      }

      if (v12 == i)
      {

        return;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v36 = v6;
    i = sub_22140();
  }
}

void *sub_16928(uint64_t a1)
{
  v2 = sub_21840();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_140C4(&qword_3C950, qword_271A0);
    v9 = sub_22100();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_16C20(&qword_3C958, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_22000();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_16C20(&unk_3C960, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_22020();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_16C20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21840();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_16C64(unint64_t a1)
{
  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {

        return static Color.red.getter();
      }

      v1 = [objc_opt_self() sedentaryColors];
      if (v1)
      {
        v2 = v1;
        v3 = [v1 nonGradientTextColor];

        if (v3)
        {

          return Color.init(_:)(v3);
        }

        goto LABEL_23;
      }

      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v4 = [objc_opt_self() energyColors];
  if (!v4)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = v4;
  v6 = [v4 nonGradientTextColor];

  if (!v6)
  {
    __break(1u);
LABEL_12:
    v7 = [objc_opt_self() briskColors];
    if (!v7)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = v7;
    v9 = [v7 nonGradientTextColor];

    if (!v9)
    {
LABEL_24:
      __break(1u);
      return static Color.red.getter();
    }
  }

  return sub_21ED0();
}

id sub_16DD4(uint64_t a1)
{
  *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView] = 0;
  *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_observers] = &_swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_presentationContext] = a1;
  sub_1463C(0, &qword_3C6E0, &off_34A50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v6 = sub_22030();
  v7 = sub_22030();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_22050();
    v8 = sub_22030();
  }

  v9 = [v4 bundleForClass:ObjCClassFromMetadata];
  v10 = sub_22030();
  v11 = sub_22030();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    sub_22050();
    v12 = sub_22030();
  }

  v15.receiver = v1;
  v15.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithTitle:detailText:icon:contentLayout:", v8, v12, 0, 3);

  return v13;
}

void sub_1705C()
{
  v1 = v0;
  v2 = sub_140C4(&qword_3C9D0, &qword_272D8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  v30.receiver = v0;
  v30.super_class = v8;
  objc_msgSendSuper2(&v30, "viewDidLoad");
  v9 = [objc_opt_self() boldButton];
  [v9 addTarget:v1 action:"didTapAcceptButton" forControlEvents:64];
  sub_1463C(0, &qword_3C6E0, &off_34A50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = v9;
  v28 = ObjCClassFromMetadata;
  v13 = [v11 bundleForClass:ObjCClassFromMetadata];
  v14 = sub_22030();
  v15 = sub_22030();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  if (!v16)
  {
    sub_22050();
    v16 = sub_22030();
  }

  [v12 setTitle:v16 forState:0];
  sub_220D0();
  v17 = sub_220C0();
  if ((*(*(v17 - 8) + 48))(v7, 1, v17))
  {
    sub_18270(v7, v5);
    sub_220E0();

    sub_182E0(v7);
  }

  else
  {
    v18 = BPSPillSelectedColor();
    v19 = sub_220B0();
    sub_21870();
    v19(v29, 0);
    sub_220E0();
  }

  v20 = [v1 buttonTray];
  [v20 addButton:v12];

  if (*&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_presentationContext] == 4)
  {
    v21 = [objc_opt_self() linkButton];
    [v21 addTarget:v1 action:"didTapSkipButton" forControlEvents:64];
    v22 = [v11 bundleForClass:v28];
    v23 = sub_22030();
    v24 = sub_22030();
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    if (!v25)
    {
      sub_22050();
      v25 = sub_22030();
    }

    [v21 setTitle:v25 forState:0];
    v26 = [v1 buttonTray];
    [v26 addButton:v21];
  }

  sub_17818();
}

void sub_17530(uint64_t a1)
{
  v2 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", v2 & 1);
  sub_17D10();
  v3 = *&v1[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView];
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer];
    v5 = v3;
    v6 = [v4 player];
    [v6 play];
  }
}

void sub_17688()
{
  v3 = [objc_allocWithZone(CHASActivitySetupViewController) initWithPresentationContext:*&v0[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_presentationContext]];
  [v3 setDelegate:{objc_msgSend(v0, "delegate")}];
  swift_unknownObjectRelease();
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 pushViewController:v3 animated:1];
  }
}

uint64_t sub_17818()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = objc_opt_self();
  v4 = [v3 mainQueue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_18248;
  v20 = v5;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_17BC8;
  v18 = &unk_35D00;
  v6 = _Block_copy(&v15);

  v7 = [v2 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);

  v8 = [v1 defaultCenter];
  v9 = [v3 mainQueue];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_18268;
  v20 = v10;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_17BC8;
  v18 = &unk_35D28;
  v11 = _Block_copy(&v15);

  v12 = [v8 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v9 usingBlock:v11];
  _Block_release(v11);

  sub_140C4(&qword_3C9C8, &qword_272D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26DA0;
  *(v13 + 56) = swift_getObjectType();
  *(v13 + 32) = v7;
  *(v13 + 88) = swift_getObjectType();
  *(v13 + 64) = v12;
  *(v0 + OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_observers) = v13;
}

void sub_17AF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_17D10();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView);
    v6 = v4;
    v7 = v5;

    if (v5)
    {
      v8 = [*&v7[OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer] player];
      [v8 play];
    }
  }
}

uint64_t sub_17BC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_216D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_216C0();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_17CBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_18038();
  }
}

void sub_17D10()
{
  v1 = [objc_allocWithZone(type metadata accessor for ActivitySetupThreeRingsOnboardingVideoView()) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 contentView];
  [v2 addSubview:v1];

  v3 = objc_opt_self();
  sub_140C4(&qword_3C940, &qword_27190);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27260;
  v5 = [v1 leadingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v4 + 32) = v8;
  v9 = [v1 trailingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 trailingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v4 + 40) = v12;
  v13 = [v1 topAnchor];
  v14 = [v0 contentView];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:30.0];
  *(v4 + 48) = v16;
  v17 = [v1 bottomAnchor];

  v18 = [v0 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v4 + 56) = v20;
  sub_1463C(0, &qword_3C9C0, NSLayoutConstraint_ptr);
  isa = sub_22070().super.isa;

  [v3 activateConstraints:isa];

  v22 = *&v0[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView];
  *&v0[OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView] = v1;
}

void sub_18038()
{
  v1 = v0;
  v2 = OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView;
  v3 = *(v0 + OBJC_IVAR___CHASActivitySetupThreeRingsOnboardingViewController_videoView);
  if (v3)
  {
    v4 = v3;
    sub_18D3C();

    v5 = *(v1 + v2);
    if (v5)
    {
      [v5 removeFromSuperview];
      v5 = *(v1 + v2);
    }
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v2) = 0;
}

id sub_18114(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_18210()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18270(uint64_t a1, uint64_t a2)
{
  v4 = sub_140C4(&qword_3C9D0, &qword_272D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_182E0(uint64_t a1)
{
  v2 = sub_140C4(&qword_3C9D0, &qword_272D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18404()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  return v1;
}

uint64_t sub_18500@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  *a2 = v4;
  return result;
}

uint64_t sub_18580(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21AA0();
}

id sub_18718()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GoalDaysModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GoalDaysModel(uint64_t a1)
{
  result = qword_3CA08;
  if (!qword_3CA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1881C(uint64_t a1)
{
  sub_188B8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_188B8(uint64_t a1)
{
  if (!qword_3CA18)
  {
    sub_141A0(&qword_3CA20, &qword_27318);
    v1 = sub_21AB0();
    if (!v2)
    {
      atomic_store(v1, &qword_3CA18);
    }
  }
}

uint64_t sub_18928@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GoalDaysModel(0);
  result = sub_21A60();
  *a2 = result;
  return result;
}

void sub_189F0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_217A0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - v8;
  v10 = OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_player;
  if (!*&v1[OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_player])
  {
    v11 = OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer;
    if (!*&v1[OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer])
    {
      v33 = v7;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v14 = sub_22030();
      v15 = sub_22030();
      v16 = [v13 URLForResource:v14 withExtension:v15];

      v17 = v11;
      v18 = v33;
      if (v16)
      {
        sub_21790();

        (*(v3 + 32))(v9, v6, v18);
        sub_21780(v19);
        v21 = v20;
        v22 = [objc_opt_self() assetWithURL:v20];

        v23 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v22];
        v24 = [objc_allocWithZone(AVPlayer) init];
        [v24 _setParticipatesInAudioSession:0];
        [v24 setPreventsDisplaySleepDuringVideoPlayback:0];
        [v24 setAllowsExternalPlayback:0];
        [v24 replaceCurrentItemWithPlayerItem:v23];
        v25 = objc_opt_self();
        v26 = v24;
        v27 = [v25 playerLayerWithPlayer:v26];
        v28 = *&v1[v10];
        *&v1[v10] = v24;

        v29 = *&v1[v17];
        *&v1[v17] = v27;
        v30 = v27;

        v31 = [v1 layer];
        [v31 addSublayer:v30];

        (*(v3 + 8))(v9, v33);
      }
    }
  }
}

void sub_18D3C()
{
  v1 = OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_player;
  v2 = *(v0 + OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_player);
  if (v2)
  {
    [v2 replaceCurrentItemWithPlayerItem:0];
  }

  v3 = OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer;
  v4 = *(v0 + OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer);
  if (v4)
  {
    [v4 setPlayer:0];
    v5 = *(v0 + v3);
    if (v5)
    {
      [v5 removeFromSuperlayer];
    }
  }

  v6 = *(v0 + v1);
  *(v0 + v1) = 0;

  v7 = *(v0 + v3);
  *(v0 + v3) = 0;
}

id sub_18FF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingVideoView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_19094()
{
  v1 = OBJC_IVAR____TtC19ActivityBridgeSetup31DailyGoalChartPointDataProvider__dailyGoals;
  v2 = sub_140C4(&qword_3CB60, qword_27480);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DailyGoalChartPointDataProvider(uint64_t a1)
{
  result = qword_3CA98;
  if (!qword_3CA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19190(uint64_t a1)
{
  sub_19220(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19220(uint64_t a1)
{
  if (!qword_3CAA8)
  {
    sub_141A0(&unk_3CAB0, qword_27440);
    v1 = sub_21AB0();
    if (!v2)
    {
      atomic_store(v1, &qword_3CAA8);
    }
  }
}

uint64_t sub_19284@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DailyGoalChartPointDataProvider(0);
  result = sub_21A60();
  *a2 = result;
  return result;
}

uint64_t sub_192C4(uint64_t a1)
{
  result = sub_21800();
  v3 = *(a1 + OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day);
  v4 = *(result + 16);
  if (v3 <= 2)
  {
    if (*(a1 + OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day))
    {
      if (v3 != 1)
      {
        if (v4 >= 4)
        {
          v5 = 80;
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      if (v4 >= 3)
      {
        v5 = 64;
        goto LABEL_21;
      }
    }

    else
    {
      if (v4 >= 2)
      {
        v5 = 48;
        goto LABEL_21;
      }

      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (*(a1 + OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day) <= 4u)
  {
    if (v3 != 3)
    {
      if (v4 >= 6)
      {
        v5 = 112;
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (v4 >= 5)
    {
      v5 = 96;
LABEL_21:
      v6 = *(result + v5);

      return v6;
    }

    goto LABEL_25;
  }

  if (v3 == 5)
  {
    if (v4 >= 7)
    {
      v5 = 128;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (v4)
  {
    v5 = 32;
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_193F4(unsigned __int8 a1)
{
  result = sub_21810();
  v3 = *(result + 16);
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (v3 >= 4)
        {
          v4 = 80;
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      if (v3 >= 3)
      {
        v4 = 64;
        goto LABEL_21;
      }
    }

    else
    {
      if (v3 >= 2)
      {
        v4 = 48;
        goto LABEL_21;
      }

      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a1 <= 4u)
  {
    if (a1 != 3)
    {
      if (v3 >= 6)
      {
        v4 = 112;
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (v3 >= 5)
    {
      v4 = 96;
LABEL_21:
      v5 = *(result + v4);

      return v5;
    }

    goto LABEL_25;
  }

  if (a1 == 5)
  {
    if (v3 >= 7)
    {
      v4 = 128;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (v3)
  {
    v4 = 32;
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
  return result;
}

Swift::Int sub_1952C()
{
  v1 = *v0;
  sub_22160();
  sub_22170(v1);
  return sub_22180();
}

Swift::Int sub_195A0(uint64_t a1)
{
  v2 = *v1;
  sub_22160();
  sub_22170(v2);
  return sub_22180();
}

unint64_t sub_195E4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19A04(*a1);
  *a2 = result;
  return result;
}

id sub_1965C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GoalDay();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for GoalDay.Day(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GoalDay.Day(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1983C()
{
  result = qword_3CBA8;
  if (!qword_3CBA8)
  {
    sub_141A0(&qword_3CBB0, qword_274B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CBA8);
  }

  return result;
}

unint64_t sub_198A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CBB8;
  if (!qword_3CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CBB8);
  }

  return result;
}

unint64_t sub_198FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CBC0;
  if (!qword_3CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CBC0);
  }

  return result;
}

uint64_t sub_19968(uint64_t a1)
{
  v2 = sub_216E0();
  v4 = v3;
  v5 = sub_216F0();
  (*(*(v5 - 8) + 8))(a1, v5);
  if (v2 <= 7)
  {
    v6 = 0x504030201000607uLL >> (8 * v2);
  }

  else
  {
    v6 = 7;
  }

  if (v4)
  {
    return 7;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_19A04(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_19A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_140C4(&qword_3CBC8, qword_275F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_140C4(&qword_3CBC8, qword_275F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AdvancedChangeGoalView(uint64_t a1)
{
  result = qword_3CC28;
  if (!qword_3CC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19C1C(uint64_t a1)
{
  sub_19CD8(319);
  if (v1 <= 0x3F)
  {
    sub_19D30(319);
    if (v2 <= 0x3F)
    {
      sub_E9E8(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HKActivityGoalType(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19CD8(uint64_t a1)
{
  if (!qword_3CC38)
  {
    sub_21850();
    v1 = sub_21AD0();
    if (!v2)
    {
      atomic_store(v1, &qword_3CC38);
    }
  }
}

void sub_19D30(uint64_t a1)
{
  if (!qword_3CC40)
  {
    sub_1463C(255, &qword_3C5C8, FIUIFormattingManager_ptr);
    v1 = sub_21AD0();
    if (!v2)
    {
      atomic_store(v1, &qword_3CC40);
    }
  }
}

uint64_t sub_19DB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21C20();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_140C4(&qword_3C920, &qword_27170);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_14DB4(v2, &v14 - v9, &qword_3C920, &qword_27170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21850();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_220A0();
    v13 = sub_21CD0();
    sub_21860();

    sub_21C10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_19FB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_140C4(&qword_3CC80, &qword_27688);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_140C4(&qword_3CC88, &qword_27690);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  *v6 = sub_21C70();
  *(v6 + 1) = 0x4014000000000000;
  v6[16] = 0;
  v10 = sub_140C4(&qword_3CC90, &unk_27698);
  sub_1A234(v2, &v6[*(v10 + 44)]);
  sub_140C4(&qword_3C650, &qword_26EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26DA0;
  v12 = sub_21D20();
  *(inited + 32) = v12;
  v13 = sub_21D40();
  *(inited + 33) = v13;
  v14 = sub_21D30();
  sub_21D30();
  if (sub_21D30() != v12)
  {
    v14 = sub_21D30();
  }

  sub_21D30();
  if (sub_21D30() != v13)
  {
    v14 = sub_21D30();
  }

  sub_21AC0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_14804(v6, v9, &qword_3CC80, &qword_27688);
  v23 = &v9[*(v7 + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = sub_21D10();
  sub_21AC0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_14804(v9, a1, &qword_3CC88, &qword_27690);
  result = sub_140C4(&qword_3CC98, &qword_276A8);
  v34 = a1 + *(result + 36);
  *v34 = v24;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_1A234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for AdvancedChangeGoalView(0);
  v76 = *(v3 - 8);
  __chkstk_darwin(v3);
  v77 = v4;
  KeyPath = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_140C4(&qword_3CCA0, &qword_276B0);
  v80 = *(v81 - 8);
  v5 = __chkstk_darwin(v81);
  v79 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v85 = &v70 - v7;
  v8 = sub_21C20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_140C4(&qword_3CCA8, qword_276B8);
  v13 = __chkstk_darwin(v12);
  v84 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = (&v70 - v15);
  v83 = sub_16C64(*(a1 + *(v3 + 32)));
  v17 = type metadata accessor for ActivityDailyGoalChartView(0);
  v18 = v17[5];
  v86 = v16;
  sub_19DB4(v16 + v18);
  v19 = a1 + *(v3 + 20);
  v20 = *v19;
  if (*(v19 + 8) == 1)
  {
    v21 = v20;
  }

  else
  {

    sub_220A0();
    v22 = sub_21CD0();
    sub_21860();

    sub_21C10();
    swift_getAtKeyPath();
    sub_1B48C(v20, 0);
    (*(v9 + 8))(v11, v8);
    v21 = v92;
  }

  v23 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  sub_1AC34(v92);
  v25 = v24;

  v26 = v86;
  *v86 = v83;
  *(v26 + v17[6]) = v21;
  *(v26 + v17[7]) = v25;
  v27 = sub_21CF0();
  v28 = v26 + *(v12 + 36);
  *v28 = v27;
  *(v28 + 8) = xmmword_275D0;
  *(v28 + 24) = xmmword_275E0;
  v28[40] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21A90();

  if (v92 >> 62)
  {
    v29 = sub_22140();

    if (v29 < 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v29 = *(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8));
  }

  v92 = 0;
  v93 = v29;
  swift_getKeyPath();
  v30 = KeyPath;
  sub_1B4A0(a1, KeyPath);
  v31 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v32 = swift_allocObject();
  sub_1B63C(v30, v32 + v31);
  sub_140C4(&qword_3CCB0, &qword_27740);
  type metadata accessor for ScheduleDayRowView(0);
  sub_1B720();
  sub_1B800(&qword_3CCC8, type metadata accessor for ScheduleDayRowView, &unk_26DF4);
  sub_21FB0();
  if (*(a1 + *(v23 + 36)) == 1)
  {
    sub_1463C(0, &qword_3C6E0, &off_34A50);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v35 = sub_22030();
    v36 = sub_22030();
    v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

    v38 = sub_22050();
    v40 = v39;

    v92 = v38;
    v93 = v40;
    sub_1449C(v41, v42, v43);
    v77 = sub_21E00();
    v76 = v44;
    LOBYTE(v34) = v45;
    v75 = v46;
    LOBYTE(v40) = sub_21CF0();
    LOBYTE(v92) = v34 & 1;
    LOBYTE(v87) = 1;
    v83 = v34 & 1;
    v47 = 1;
    v48 = sub_21C80();
    v74 = sub_21DA0();
    KeyPath = swift_getKeyPath();
    v72 = v40;
    v49 = v48 << 32;
    v73 = 256;
  }

  else
  {
    v77 = 0;
    v76 = 0;
    v75 = 0;
    KeyPath = 0;
    v74 = 0;
    v73 = 0;
    v47 = 0;
    v49 = 0;
    v72 = 0;
    v83 = 0;
  }

  v50 = v84;
  sub_14DB4(v86, v84, &qword_3CCA8, qword_276B8);
  v51 = v80;
  v52 = *(v80 + 16);
  v53 = v79;
  v54 = v81;
  v52(v79, v85, v81);
  v55 = v49 | v47;
  v71 = v55;
  v56 = v50;
  v57 = v78;
  sub_14DB4(v56, v78, &qword_3CCA8, qword_276B8);
  v58 = sub_140C4(&qword_3CCD0, &qword_27748);
  v52((v57 + *(v58 + 48)), v53, v54);
  v59 = v57 + *(v58 + 64);
  v60 = v77;
  *&v87 = v77;
  v61 = v76;
  *(&v87 + 1) = v76;
  *&v88 = v83;
  v62 = v75;
  *(&v88 + 1) = v75;
  v63 = v72;
  *v89 = v72;
  memset(&v89[8], 0, 32);
  *&v89[40] = v55;
  *&v90 = KeyPath;
  v64 = v74;
  *(&v90 + 1) = v74;
  LOWORD(v55) = v73;
  v91 = v73;
  *(v59 + 96) = v73;
  v65 = v88;
  *v59 = v87;
  *(v59 + 16) = v65;
  v66 = *&v89[16];
  *(v59 + 32) = *v89;
  *(v59 + 48) = v66;
  v67 = v90;
  *(v59 + 64) = *&v89[32];
  *(v59 + 80) = v67;
  sub_14DB4(&v87, &v92, &qword_3CCD8, &qword_27750);
  v68 = *(v51 + 8);
  v68(v85, v54);
  sub_1486C(v86, &qword_3CCA8, qword_276B8);
  v92 = v60;
  v93 = v61;
  v94 = v83;
  v95 = v62;
  v97 = 0u;
  v98 = 0u;
  v96 = v63;
  v99 = v71;
  v100 = KeyPath;
  v101 = v64;
  v102 = v55;
  sub_1486C(&v92, &qword_3CCD8, &qword_27750);
  v68(v53, v54);
  return sub_1486C(v84, &qword_3CCA8, qword_276B8);
}

void sub_1AC34(unint64_t a1)
{
  v55 = sub_140C4(&qword_3C920, &qword_27170);
  __chkstk_darwin(v55);
  v3 = &v46 - v2;
  v4 = sub_21850();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21C20();
  v8 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_36:
    v10 = sub_22140();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
LABEL_3:
      v50 = v4;
      v11 = type metadata accessor for AdvancedChangeGoalView(0);
      v12 = a1;
      v13 = 0;
      v14 = v58 + *(v11 + 20);
      v53 = *v14;
      v54 = a1 & 0xC000000000000001;
      v15 = (v8 + 1);
      v46 = a1 & 0xFFFFFFFFFFFFFF8;
      v47 = v5 + 4;
      a1 = (v5 + 1);
      v52 = *(v14 + 8);
      v8 = &selRef_saveObject_withCompletion_;
      v51 = v12;
      v59 = v3;
      v48 = v10;
      v49 = v7;
      v16 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (v54)
        {
          v17 = sub_22110();
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v13 >= *(v46 + 16))
          {
            goto LABEL_35;
          }

          v17 = *(v12 + 8 * v13 + 32);
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }
        }

        v60 = v18;
        v5 = *&v17[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goal];
        v61 = v17;
        v19 = *&v17[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_goalType];
        if (v52)
        {
          v20 = v53;
          v62 = v53;
          v21 = v5;
          sub_1B8F8(v20, 1);
        }

        else
        {
          v22 = v5;
          v23 = v16;
          v24 = v8;
          v25 = a1;
          v26 = v15;
          v27 = v53;
          sub_1B8F8(v53, 0);
          sub_220A0();
          v28 = sub_21CD0();
          sub_21860();

          v29 = v56;
          sub_21C10();
          swift_getAtKeyPath();
          v30 = v27;
          v15 = v26;
          a1 = v25;
          v8 = v24;
          v16 = v23;
          v3 = v59;
          sub_1B48C(v30, 0);
          (*v15)(v29, v57);
        }

        v31 = v62;
        v32 = [v62 v8[113]];

        if (!v32)
        {
          __break(1u);
          return;
        }

        v33 = [v32 v8[113]];

        v34 = &selRef_minuteUnit;
        if ((v19 - 1) < 2)
        {
          goto LABEL_17;
        }

        if (v19)
        {
          break;
        }

        v34 = &selRef_userActiveEnergyBurnedUnit;
        v35 = v33;
LABEL_19:
        v7 = [v35 *v34];

        [v5 doubleValueForUnit:v7];
        v37 = v36;
        v4 = *&v36;

        if ((v4 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_32;
        }

        if (v37 <= -9.22337204e18)
        {
          goto LABEL_33;
        }

        if (v37 >= 9.22337204e18)
        {
          goto LABEL_34;
        }

        sub_14DB4(v58, v3, &qword_3C920, &qword_27170);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v39 = v49;
          v38 = v50;
          (*v47)(v49, v3, v50);
        }

        else
        {
          sub_220A0();
          v40 = sub_21CD0();
          sub_21860();

          v41 = v56;
          sub_21C10();
          v39 = v49;
          swift_getAtKeyPath();

          (*v15)(v41, v57);
          v38 = v50;
        }

        v5 = sub_193F4(v61[OBJC_IVAR____TtC19ActivityBridgeSetup7GoalDay_day]);
        v43 = v42;
        (*a1)(v39, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1B904(0, *(v16 + 2) + 1, 1, v16);
        }

        v4 = *(v16 + 2);
        v44 = *(v16 + 3);
        v7 = (v4 + 1);
        if (v4 >= v44 >> 1)
        {
          v16 = sub_1B904((v44 > 1), v4 + 1, 1, v16);
        }

        *(v16 + 2) = v7;
        v45 = &v16[40 * v4];
        *(v45 + 4) = v5;
        *(v45 + 5) = v43;
        *(v45 + 6) = v37;
        *(v45 + 7) = v37;
        v45[64] = 0;
        ++v13;
        v3 = v59;
        v12 = v51;
        if (v60 == v48)
        {
          return;
        }
      }

      v34 = &selRef_countUnit;
LABEL_17:
      v35 = objc_opt_self();
      goto LABEL_19;
    }
  }
}

uint64_t sub_1B278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21C20();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_19DB4(a3);
  v11 = type metadata accessor for AdvancedChangeGoalView(0);
  v12 = a2 + *(v11 + 20);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    v14 = v13;
  }

  else
  {

    sub_220A0();
    v15 = sub_21CD0();
    sub_21860();

    sub_21C10();
    swift_getAtKeyPath();
    sub_1B48C(v13, 0);
    (*(v7 + 8))(v9, v6);
    v14 = v22[1];
  }

  v16 = *(a2 + *(v11 + 24) + 8);
  v17 = type metadata accessor for ScheduleDayRowView(0);
  *(a3 + v17[5]) = v14;
  *(a3 + v17[6]) = v10;
  v18 = (a3 + v17[7]);
  type metadata accessor for GoalDaysModel(0);
  sub_1B800(&unk_3C5D8, type metadata accessor for GoalDaysModel, &unk_27320);
  v19 = v16;
  result = sub_21B10();
  *v18 = result;
  v18[1] = v21;
  return result;
}

void sub_1B48C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvancedChangeGoalView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B504()
{
  v1 = type metadata accessor for AdvancedChangeGoalView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_140C4(&qword_3C920, &qword_27170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21850();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_1B48C(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvancedChangeGoalView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AdvancedChangeGoalView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1B278(a1, v6, a2);
}

unint64_t sub_1B720()
{
  result = qword_3CCB8;
  if (!qword_3CCB8)
  {
    v1 = sub_141A0(&qword_3CCB0, &qword_27740);
    sub_1B7AC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CCB8);
  }

  return result;
}

unint64_t sub_1B7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CCC0;
  if (!qword_3CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CCC0);
  }

  return result;
}

uint64_t sub_1B800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B848@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B90();
  *a1 = result;
  return result;
}

uint64_t sub_1B874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B90();
  *a1 = result;
  return result;
}

id sub_1B8F8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

char *sub_1B904(char *result, int64_t a2, char a3, char *a4)
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
    sub_140C4(&qword_3CCE0, &qword_27788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1BA98(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_141A0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BB1C()
{
  result = qword_3CCF8[0];
  if (!qword_3CCF8[0])
  {
    sub_141A0(&qword_3CC80, &qword_27688);
    result = swift_getWitnessTable();
    atomic_store(result, qword_3CCF8);
  }

  return result;
}

void sub_1BB88(uint64_t a1)
{
  sub_1BF80();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1BFD0(319);
      if (v3 <= 0x3F)
      {
        sub_1C034();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BC40(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1BD90(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        *result = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_1BF80()
{
  result = qword_3CD80;
  if (!qword_3CD80)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_3CD80);
  }

  return result;
}

void sub_1BFD0(uint64_t a1)
{
  if (!qword_3CD88)
  {
    sub_141A0(&qword_3C7A0, &qword_26FB0);
    v1 = sub_21F70();
    if (!v2)
    {
      atomic_store(v1, &qword_3CD88);
    }
  }
}

void sub_1C034()
{
  if (!qword_3CD90)
  {
    v0 = sub_21F70();
    if (!v1)
    {
      atomic_store(v0, &qword_3CD90);
    }
  }
}

uint64_t sub_1C0C8(uint64_t a1)
{
  sub_140C4(&qword_3CDA0, &qword_27848);
  sub_21F50();
  return v2;
}

uint64_t sub_1C174(uint64_t a1)
{
  sub_140C4(&qword_3CD98, &qword_27840);
  sub_21F50();
  return v2;
}

uint64_t sub_1C220@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = *(a1 - 8);
  v37 = *(v3 + 64);
  v4 = __chkstk_darwin(a1);
  v44 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = *(v6 + 24);
  v10 = v6;
  v11 = *(v6 + 16);
  v12 = sub_21F90();
  v42 = v12;
  v46 = *(v12 - 8);
  __chkstk_darwin(v12);
  v38 = &v32 - v13;
  WitnessTable = swift_getWitnessTable();
  v51 = v12;
  v52 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  v14 = __chkstk_darwin(OpaqueTypeMetadata2);
  v39 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v40 = &v32 - v16;
  v48 = v11;
  v49 = v9;
  v36 = v2;
  v50 = v2;
  v34 = v11;
  v33 = v9;
  sub_21F80();
  v35 = *(v3 + 16);
  v35(v8, v2, v10);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = v9;
  v19 = *(v3 + 32);
  v19(v18 + v17, v8, v10);
  v20 = v44;
  v35(v44, v36, v10);
  v21 = swift_allocObject();
  v22 = v33;
  *(v21 + 16) = v34;
  *(v21 + 24) = v22;
  v19(v21 + v17, v20, v10);
  v23 = v38;
  v24 = v39;
  v25 = v42;
  sub_21EA0();

  (*(v46 + 8))(v23, v25);
  v27 = v40;
  v26 = v41;
  v28 = *(v41 + 16);
  v29 = OpaqueTypeMetadata2;
  v28(v40, v24, OpaqueTypeMetadata2);
  v30 = *(v26 + 8);
  v30(v24, v29);
  v28(v47, v27, v29);
  return (v30)(v27, v29);
}

uint64_t sub_1C680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ScheduleDayRowButton(0, v9, v10, v11);
  v13 = *(v6 + 16);
  v13(v8, a1 + *(v12 + 36), a2);
  v13(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

void sub_1C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ScheduleDayRowButton(0, a2, a3, a4);
  v5 = sub_1C0C8(v4);
  [v5 invalidate];
}

void *sub_1C7E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ScheduleDayRowButton(0, a3, a4, a4);
  if (a1)
  {
    return sub_1C854(v5);
  }

  v7 = v5;
  v8 = sub_1C0C8(v5);
  [v8 invalidate];

  return sub_1C1C8(1, v7);
}

void *sub_1C854(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(v7 + 52));
  v10 = *v8;
  v9 = v8[1];
  aBlock = *v8;
  v20 = v9;

  sub_140C4(&qword_3CD98, &qword_27840);
  result = sub_21F50();
  if (__OFADD__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v26 = v10;
    v27 = v9;
    v25 = v28 + 1;
    sub_21F60();

    (*v1)(v12);
    v13 = fmax(0.5 / sub_1C174(a1), 0.01);
    v14 = objc_opt_self();
    (*(v4 + 16))(&aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
    v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = *(a1 + 16);
    (*(v4 + 32))(v16 + v15, v6, a1);
    v23 = sub_1CD78;
    v24 = v16;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1CAD4;
    v22 = &unk_35ED8;
    v17 = _Block_copy(&aBlock);

    v18 = [v14 scheduledTimerWithTimeInterval:0 repeats:v17 block:v13];
    _Block_release(v17);
    return sub_1C11C(v18, a1);
  }

  return result;
}

void sub_1CAD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1CB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for ScheduleDayRowButton(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_1C78C(v9, v5, v6, v7);
}

void *sub_1CBD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ScheduleDayRowButton(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C7E4(a1, v9, v6, v7);
}

uint64_t sub_1CC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ScheduleDayRowButton(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[11], v5);

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_1CDD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CE20()
{
  sub_21F90();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_1CE9C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CEB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CEF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF58@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1CF78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21850();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D038(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21850();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ActivityDailyGoalChartView(uint64_t a1)
{
  result = qword_3CE00;
  if (!qword_3CE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D128(uint64_t a1)
{
  sub_21850();
  if (v1 <= 0x3F)
  {
    sub_15B7C();
    if (v2 <= 0x3F)
    {
      sub_1D1D4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D1D4()
{
  if (!qword_3CE10)
  {
    v0 = sub_22090();
    if (!v1)
    {
      atomic_store(v0, &qword_3CE10);
    }
  }
}

uint64_t sub_1D240(uint64_t a1)
{
  v2 = type metadata accessor for ActivityDailyGoalChartView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v11[1] = *(a1 + *(__chkstk_darwin(v2 - 8) + 36));
  sub_208C4(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_20A30(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_140C4(&unk_3CAB0, qword_27440);
  sub_140C4(&qword_3CE70, &qword_27988);
  sub_14D6C(&qword_3CF38, &unk_3CAB0, qword_27440, &protocol conformance descriptor for [A]);
  v7 = sub_202A8();
  sub_20B14(v7, v8, v9);
  return sub_21FA0();
}

uint64_t sub_1D3F0@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v93 = sub_140C4(&qword_3CF48, &qword_27A18);
  __chkstk_darwin(v93);
  v92 = &v75 - v5;
  v6 = sub_140C4(&qword_3CF50, &qword_27A20);
  __chkstk_darwin(v6 - 8);
  v82 = &v75 - v7;
  v8 = sub_140C4(&qword_3CF58, &qword_27A28);
  v9 = __chkstk_darwin(v8 - 8);
  v98 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = &v75 - v11;
  v84 = sub_21A20();
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_140C4(&qword_3CEA8, &qword_279A8);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v75 - v13;
  v91 = sub_140C4(&qword_3CF60, &qword_27A30);
  v90 = *(v91 - 8);
  v14 = __chkstk_darwin(v91);
  v88 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v75 - v16;
  v17 = sub_21B70();
  __chkstk_darwin(v17);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_140C4(&qword_3CE88, &qword_27998);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v21 = &v75 - v20;
  v22 = sub_140C4(&qword_3CF68, &qword_27A38);
  v95 = *(v22 - 8);
  v96 = v22;
  __chkstk_darwin(v22);
  v76 = &v75 - v23;
  v24 = sub_140C4(&unk_3CF70, &qword_27A40);
  __chkstk_darwin(v24 - 8);
  v26 = &v75 - v25;
  v27 = sub_219C0();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_140C4(&qword_3CE80, &qword_27990);
  v32 = __chkstk_darwin(v31 - 8);
  v79 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v75 - v34;
  v36 = a1[1];
  v107 = *a1;
  v108 = v36;
  v109 = *(a1 + 32);
  sub_1E038(&v107, v26);
  v37 = (*(v28 + 48))(v26, 1, v27);
  v89 = a2;
  v99 = v35;
  if (v37 == 1)
  {
    sub_1486C(v26, &unk_3CF70, &qword_27A40);
    v38 = 1;
    v40 = v95;
    v39 = v96;
  }

  else
  {
    v41 = *(v28 + 32);
    v75 = v30;
    v41(v30, v26, v27);
    v42 = *(v17 + 20);
    v43 = enum case for RoundedCornerStyle.continuous(_:);
    v44 = sub_21C60();
    (*(*(v44 - 8) + 104))(&v19[v42], v43, v44);
    __asm { FMOV            V0.2D, #5.0 }

    *v19 = _Q0;
    v50 = sub_207A8(&qword_3CE98, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    sub_218B0();
    sub_20D58(v19);
    v51 = v108;
    v52 = sub_21F10();
    v53 = 1.0;
    if (v51 < *(&v51 + 1))
    {
      v53 = 0.5;
    }

    v100 = v52;
    *&v101 = v53;
    sub_140C4(&qword_3CE90, &qword_279A0);
    *&v104 = v27;
    *(&v104 + 1) = v17;
    v105 = &protocol witness table for BarMark;
    v106 = v50;
    swift_getOpaqueTypeConformance2();
    v35 = v99;
    sub_14D6C(&qword_3CEA0, &qword_3CE90, &qword_279A0, &protocol conformance descriptor for _OpacityShapeStyle<A>);
    v54 = v76;
    v55 = v78;
    sub_218A0();

    (*(v77 + 8))(v21, v55);
    (*(v28 + 8))(v75, v27);
    v57 = v95;
    v56 = v96;
    (*(v95 + 32))(v35, v54, v96);
    v38 = 0;
    v39 = v56;
    v40 = v57;
  }

  (*(v40 + 56))(v35, v38, 1, v39);
  sub_21C50();
  v58 = v107;
  v104 = v107;
  swift_bridgeObjectRetain_n();
  sub_21930();

  sub_20B68(&v107);
  sub_21C50();
  v104 = v58;
  sub_21930();

  sub_20B68(&v107);
  result = sub_21C50();
  if (__OFADD__(*(&v108 + 1), 1))
  {
    __break(1u);
  }

  else
  {
    *&v104 = *(&v108 + 1) + 1;
    sub_21930();

    v60 = v80;
    sub_21A10();
    *&v104 = sub_21F00();
    v61 = v83;
    v62 = v84;
    sub_218A0();

    (*(v81 + 8))(v60, v62);
    sub_21AF0();
    v100 = v62;
    v101 = &type metadata for Color;
    v102 = &protocol witness table for RuleMark;
    v103 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v63 = v86;
    v64 = v87;
    sub_218C0();
    sub_20BBC(&v104);
    (*(v85 + 8))(v61, v64);
    v65 = v79;
    sub_20C10(v99, v79);
    v66 = v90;
    v67 = *(v90 + 16);
    v68 = v88;
    v69 = v91;
    v67(v88, v63, v91);
    sub_203BC();
    v70 = v92;
    sub_20C10(v65, v92);
    v71 = v93;
    v72 = *(v93 + 48);
    v67((v70 + v72), v68, v69);
    v73 = v94;
    sub_20C80(v70, v94);
    (*(v66 + 32))(v73 + *(v71 + 48), v70 + v72, v69);
    v74 = *(v66 + 8);
    v74(v63, v69);
    sub_20CF0(v99);
    v74(v68, v69);
    return sub_20CF0(v65);
  }

  return result;
}

uint64_t sub_1E038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v34 = a2;
  v2 = sub_140C4(&qword_3CF50, &qword_27A20);
  __chkstk_darwin(v2 - 8);
  v28[1] = v28 - v3;
  v4 = sub_140C4(&qword_3CF58, &qword_27A28);
  __chkstk_darwin(v4 - 8);
  v28[0] = v28 - v5;
  v6 = sub_217D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_216F0();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21850();
  v30 = *(v13 - 8);
  v31 = v13;
  __chkstk_darwin(v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() hk_gregorianCalendar];
  sub_21820();

  sub_140C4(&qword_3C948, &qword_27198);
  v17 = sub_21840();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26DB0;
  (*(v18 + 104))(v20 + v19, enum case for Calendar.Component.weekday(_:), v17);
  sub_16928(v20);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v17);
  v21 = v29;
  swift_deallocClassInstance();
  sub_217C0();
  sub_217F0();

  (*(v7 + 8))(v9, v6);
  v22 = *(v21 + 16);
  if (v22 < 1 || (*(v21 + 32) & 1) != 0)
  {
    v23 = 1;
    v24 = v34;
  }

  else
  {
    sub_21C50();
    v25 = *(v21 + 8);
    v35 = *v21;
    v36 = v25;

    sub_21930();

    sub_20B68(v21);
    sub_21C50();
    v35 = v22;
    sub_21930();

    v24 = v34;
    sub_219B0();
    v23 = 0;
  }

  (*(v32 + 8))(v12, v33);
  (*(v30 + 8))(v15, v31);
  v26 = sub_219C0();
  return (*(*(v26 - 8) + 56))(v24, v23, 1, v26);
}

uint64_t sub_1E594()
{
  v0 = sub_21910();
  __chkstk_darwin(v0 - 8);
  v1 = sub_21950();
  __chkstk_darwin(v1 - 8);
  v2 = sub_218E0();
  __chkstk_darwin(v2 - 8);
  sub_218D0();
  sub_21940();
  sub_21900();
  sub_140C4(&qword_3CF20, &qword_27A00);
  sub_207F0();
  return sub_21A30();
}

uint64_t sub_1E6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_219E0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_21A00();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = __chkstk_darwin(v4);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = sub_21890();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v42 = &v37 - v13;
  v14 = sub_21970();
  __chkstk_darwin(v14 - 8);
  v15 = sub_21990();
  __chkstk_darwin(v15 - 8);
  v16 = sub_140C4(&qword_3CEF0, &qword_279C8);
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  v49 = a1;
  sub_21980();
  sub_21960();
  sub_140C4(&qword_3CF10, &unk_279E0);
  sub_206A0();
  sub_21920();
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v23 = v42;
  sub_21880();
  sub_219D0();
  sub_219F0();
  v24 = *(v17 + 16);
  v41 = v20;
  v24(v20, v22, v16);
  v50[0] = v20;
  v25 = v44;
  v26 = *(v44 + 16);
  v38 = v12;
  v27 = v45;
  v26(v12, v23, v45);
  v50[1] = v12;
  v29 = v46;
  v28 = v47;
  v30 = v43;
  (*(v46 + 16))(v43, v8, v47);
  v50[2] = v30;
  sub_1F0F0(v50, v48);
  v31 = *(v29 + 8);
  v31(v8, v28);
  v32 = *(v25 + 8);
  v32(v23, v27);
  v33 = *(v40 + 8);
  v34 = v22;
  v35 = v39;
  v33(v34, v39);
  v31(v30, v28);
  v32(v38, v27);
  return (v33)(v41, v35);
}

uint64_t sub_1EBE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_140C4(&qword_3C738, &unk_279F0);
  v3 = __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v43 = &v34 - v6;
  v7 = sub_21B40();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v45 = sub_140C4(&qword_3C740, &qword_26F60);
  __chkstk_darwin(v45);
  v44 = &v34 - v14;
  v15 = sub_140C4(&qword_3C750, &qword_26F70);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v42 = &v34 - v17;
  v18 = sub_21A40();
  if (!v47)
  {
    v33 = 1;
    return (*(v16 + 56))(a1, v33, 1, v15);
  }

  v41 = v16;
  sub_1449C(v18, v19, v20);
  v21 = sub_21E00();
  v38 = v22;
  v39 = v21;
  v46 = v21;
  v47 = v22;
  v37 = v23 & 1;
  v48 = v23 & 1;
  v40 = v24;
  v49 = v24;
  v25 = v8[13];
  v25(v13, enum case for DynamicTypeSize.xSmall(_:), v7);
  v25(v11, enum case for DynamicTypeSize.xxxLarge(_:), v7);
  sub_207A8(&qword_3C758, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_22010();
  if (result)
  {
    v36 = a1;
    v27 = v8[4];
    v28 = v43;
    v27(v43, v13, v7);
    v27((v28 + *(v2 + 48)), v11, v7);
    sub_14DB4(v28, v5, &qword_3C738, &unk_279F0);
    v29 = *(v2 + 48);
    v30 = v44;
    v27(v44, v5, v7);
    v35 = v15;
    v31 = v8[1];
    v31(&v5[v29], v7);
    sub_14804(v28, v5, &qword_3C738, &unk_279F0);
    v27((v30 + *(v45 + 36)), &v5[*(v2 + 48)], v7);
    a1 = v36;
    v31(v5, v7);
    v15 = v35;
    sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60, &protocol conformance descriptor for ClosedRange<A>);
    v32 = v42;
    sub_21E70();
    sub_1486C(v30, &qword_3C740, &qword_26F60);
    sub_144F0(v39, v38, v37);

    v16 = v41;
    (*(v41 + 32))(a1, v32, v15);
    v33 = 0;
    return (*(v16 + 56))(a1, v33, 1, v15);
  }

  __break(1u);
  return result;
}

uint64_t sub_1F0F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_140C4(&qword_3CF30, &unk_27A08);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_140C4(&qword_3CEF0, &qword_279C8);
  sub_14D6C(&qword_3CEE8, &qword_3CEF0, &qword_279C8, &protocol conformance descriptor for AxisValueLabel<A>);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = sub_21890();
  v11 = *(v5 + 56);
  v19 = v11;
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  v13 = sub_21A00();
  v14 = *(v5 + 72);
  v15 = a1[2];
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v7[v14], v15, v13);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v19], v10);
  return (*(v16 + 32))(a2 + *(v5 + 72), &v7[v14], v13);
}

uint64_t sub_1F330()
{
  v0 = sub_21950();
  __chkstk_darwin(v0 - 8);
  v1 = sub_218E0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_21910();
  __chkstk_darwin(v2 - 8);
  sub_218F0();
  sub_218D0();
  sub_21940();
  sub_140C4(&qword_3CED8, &qword_279C0);
  sub_2055C();
  return sub_21A30();
}

uint64_t sub_1F4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = sub_140C4(&qword_3CF08, &qword_279D8);
  __chkstk_darwin(v43);
  v4 = &v37 - v3;
  v5 = sub_21890();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_140C4(&qword_3CF00, &qword_279D0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = sub_21970();
  __chkstk_darwin(v13 - 8);
  v14 = sub_21990();
  __chkstk_darwin(v14 - 8);
  v15 = sub_140C4(&qword_3CEF0, &qword_279C8);
  v41 = *(v15 - 8);
  v42 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v37 - v19;
  v45 = a1;
  sub_21980();
  sub_21960();
  sub_140C4(&qword_3CF10, &unk_279E0);
  sub_206A0();
  v21 = 1;
  sub_21920();
  v22 = sub_21A50();
  v23 = v40;
  if (!v22)
  {
    sub_21AF0();
    v49 = v46;
    v50 = v47;
    v51 = v48;
    v24 = v20;
    v25 = v38;
    sub_21880();
    v26 = v25;
    v20 = v24;
    (*(v23 + 32))(v12, v26, v5);
    v21 = 0;
  }

  v39 = v20;
  (*(v23 + 56))(v12, v21, 1, v5);
  v27 = v41;
  v28 = v42;
  v29 = *(v41 + 16);
  v29(v18, v20, v42);
  sub_14DB4(v12, v10, &qword_3CF00, &qword_279D0);
  sub_14D6C(&qword_3CEE8, &qword_3CEF0, &qword_279C8, &protocol conformance descriptor for AxisValueLabel<A>);
  v29(v4, v18, v28);
  sub_2061C();
  v30 = v12;
  v31 = v10;
  v32 = v43;
  v33 = *(v43 + 48);
  sub_14DB4(v31, &v4[v33], &qword_3CF00, &qword_279D0);
  v34 = v44;
  (*(v27 + 32))(v44, v4, v28);
  sub_14804(&v4[v33], v34 + *(v32 + 48), &qword_3CF00, &qword_279D0);
  sub_1486C(v30, &qword_3CF00, &qword_279D0);
  v35 = *(v27 + 8);
  v35(v39, v28);
  sub_1486C(v31, &qword_3CF00, &qword_279D0);
  return (v35)(v18, v28);
}

uint64_t sub_1F9E8@<X0>(uint64_t a1@<X8>)
{
  v43 = sub_140C4(&qword_3C738, &unk_279F0);
  v2 = __chkstk_darwin(v43);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v34 - v5;
  v7 = sub_21B40();
  v44 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = sub_140C4(&qword_3C740, &qword_26F60);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v45 = sub_140C4(&qword_3C750, &qword_26F70);
  v16 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v34 - v17;
  sub_21A40();
  if (v47 == 1)
  {
    v18 = 1;
    v19 = v45;
    return (*(v16 + 56))(a1, v18, 1, v19);
  }

  v41 = a1;
  v46 = sub_22150();
  v47 = v20;
  sub_1449C(v46, v20, v21);
  v22 = sub_21E00();
  v38 = v23;
  v39 = v22;
  v46 = v22;
  v47 = v23;
  v37 = v24 & 1;
  v48 = v24 & 1;
  v40 = v25;
  v49 = v25;
  v26 = *(v44 + 104);
  v26(v12, enum case for DynamicTypeSize.xSmall(_:), v7);
  v26(v10, enum case for DynamicTypeSize.xxxLarge(_:), v7);
  sub_207A8(&qword_3C758, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_22010();
  if (result)
  {
    v36 = v16;
    v28 = v44;
    v29 = *(v44 + 32);
    v29(v6, v12, v7);
    v35 = v13;
    v30 = v43;
    v29(&v6[*(v43 + 48)], v10, v7);
    sub_14DB4(v6, v4, &qword_3C738, &unk_279F0);
    v31 = *(v30 + 48);
    v29(v15, v4, v7);
    v32 = *(v28 + 8);
    v32(&v4[v31], v7);
    sub_14804(v6, v4, &qword_3C738, &unk_279F0);
    v29(&v15[*(v35 + 36)], &v4[*(v30 + 48)], v7);
    v32(v4, v7);
    v16 = v36;
    sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60, &protocol conformance descriptor for ClosedRange<A>);
    v33 = v42;
    sub_21E70();
    sub_1486C(v15, &qword_3C740, &qword_26F60);
    sub_144F0(v39, v38, v37);

    a1 = v41;
    v19 = v45;
    (*(v16 + 32))(v41, v33, v45);
    v18 = 0;
    return (*(v16 + 56))(a1, v18, 1, v19);
  }

  __break(1u);
  return result;
}

uint64_t sub_1FF0C@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = sub_140C4(&qword_3CE48, &qword_27970);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - v4;
  v14[0] = sub_140C4(&qword_3CE50, &qword_27978);
  v6 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v8 = v14 - v7;
  v15 = v1;
  sub_140C4(&qword_3CE58, &qword_27980);
  sub_20224();
  sub_219A0();
  v9 = sub_140C4(&qword_3CEB0, &qword_279B0);
  v10 = sub_14D6C(&qword_3CEB8, &qword_3CE48, &qword_27970, &protocol conformance descriptor for Chart<A>);
  v11 = sub_14D6C(&qword_3CEC0, &qword_3CEB0, &qword_279B0, &protocol conformance descriptor for AxisMarks<A>);
  sub_21E10();
  (*(v3 + 8))(v5, v2);
  sub_140C4(&qword_3CEC8, &qword_279B8);
  v16 = v2;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  swift_getOpaqueTypeConformance2();
  sub_14D6C(&qword_3CED0, &qword_3CEC8, &qword_279B8, &protocol conformance descriptor for AxisMarks<A>);
  v12 = v14[0];
  sub_21E20();
  return (*(v6 + 8))(v8, v12);
}

unint64_t sub_20224()
{
  result = qword_3CE60;
  if (!qword_3CE60)
  {
    sub_141A0(&qword_3CE58, &qword_27980);
    sub_202A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CE60);
  }

  return result;
}

unint64_t sub_202A8()
{
  result = qword_3CE68;
  if (!qword_3CE68)
  {
    sub_141A0(&qword_3CE70, &qword_27988);
    sub_203BC();
    sub_141A0(&qword_3CEA8, &qword_279A8);
    sub_21A20();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CE68);
  }

  return result;
}

unint64_t sub_203BC()
{
  result = qword_3CE78;
  if (!qword_3CE78)
  {
    sub_141A0(&qword_3CE80, &qword_27990);
    sub_141A0(&qword_3CE88, &qword_27998);
    sub_141A0(&qword_3CE90, &qword_279A0);
    sub_219C0();
    sub_21B70();
    sub_207A8(&qword_3CE98, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    swift_getOpaqueTypeConformance2();
    sub_14D6C(&qword_3CEA0, &qword_3CE90, &qword_279A0, &protocol conformance descriptor for _OpacityShapeStyle<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CE78);
  }

  return result;
}

unint64_t sub_2055C()
{
  result = qword_3CEE0;
  if (!qword_3CEE0)
  {
    sub_141A0(&qword_3CED8, &qword_279C0);
    sub_14D6C(&qword_3CEE8, &qword_3CEF0, &qword_279C8, &protocol conformance descriptor for AxisValueLabel<A>);
    sub_2061C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CEE0);
  }

  return result;
}

unint64_t sub_2061C()
{
  result = qword_3CEF8;
  if (!qword_3CEF8)
  {
    sub_141A0(&qword_3CF00, &qword_279D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CEF8);
  }

  return result;
}

unint64_t sub_206A0()
{
  result = qword_3CF18;
  if (!qword_3CF18)
  {
    sub_141A0(&qword_3CF10, &unk_279E0);
    sub_141A0(&qword_3C740, &qword_26F60);
    sub_14D6C(&qword_3C760, &qword_3C740, &qword_26F60, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CF18);
  }

  return result;
}

uint64_t sub_207A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_207F0()
{
  result = qword_3CF28;
  if (!qword_3CF28)
  {
    sub_141A0(&qword_3CF20, &qword_27A00);
    sub_14D6C(&qword_3CEE8, &qword_3CEF0, &qword_279C8, &protocol conformance descriptor for AxisValueLabel<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CF28);
  }

  return result;
}

uint64_t sub_208C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDailyGoalChartView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20928()
{
  v1 = (type metadata accessor for ActivityDailyGoalChartView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_21850();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_20A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDailyGoalChartView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20A94@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActivityDailyGoalChartView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1D3F0(a1, v6, a2);
}

unint64_t sub_20B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CF40;
  if (!qword_3CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CF40);
  }

  return result;
}

uint64_t sub_20C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_140C4(&qword_3CE80, &qword_27990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_140C4(&qword_3CE80, &qword_27990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF0(uint64_t a1)
{
  v2 = sub_140C4(&qword_3CE80, &qword_27990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D58(uint64_t a1)
{
  v2 = sub_21B70();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DB4()
{
  sub_141A0(&qword_3CE50, &qword_27978);
  sub_141A0(&qword_3CEC8, &qword_279B8);
  sub_141A0(&qword_3CE48, &qword_27970);
  sub_141A0(&qword_3CEB0, &qword_279B0);
  sub_14D6C(&qword_3CEB8, &qword_3CE48, &qword_27970, &protocol conformance descriptor for Chart<A>);
  sub_14D6C(&qword_3CEC0, &qword_3CEB0, &qword_279B0, &protocol conformance descriptor for AxisMarks<A>);
  swift_getOpaqueTypeConformance2();
  sub_14D6C(&qword_3CED0, &qword_3CEC8, &qword_279B8, &protocol conformance descriptor for AxisMarks<A>);
  return swift_getOpaqueTypeConformance2();
}

void sub_20F34()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  sub_20F58(v1, v2, v3);
}

void sub_20F58(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "[sharing-setup] %{public}@ Failed to complete end to end Cloud sync with error: %{public}@", &v4, 0x16u);
}

void sub_20FE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Existing move goal lookup failed with error %@", &v2, 0xCu);
}

void sub_210A0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "CHASActivitySetupMetricsCollectionViewController found unexpected presentation context %ld", &v3, 0xCu);
}

void sub_2111C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_512C(&dword_0, a2, a3, "CHASActivitySetupMetricsCollectionViewController failed to fetch move goal with error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_21188(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_512C(&dword_0, a2, a3, "CHASActivitySetupMetricsCollectionViewController failed to fetch exercise and stand goals with error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_211F4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_512C(&dword_0, a2, a3, "CHASActivitySetupMetricsCollectionViewController failed to fetch pre-Kincaid move goal with error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_212C8()
{
  sub_D748(__stack_chk_guard);
  sub_D704();
  sub_D71C(&dword_0, v0, v1, "Error deleting future goals of type %@: %@");
}

void sub_214B8()
{
  sub_D748(__stack_chk_guard);
  sub_D704();
  sub_D71C(&dword_0, v0, v1, "Failed to fetch active sample for type %@ error %@");
}

void sub_21520()
{
  sub_D748(__stack_chk_guard);
  sub_D704();
  sub_D71C(&dword_0, v0, v1, "Failed to fetch most recent sample for type %@ error %@");
}

void sub_21588()
{
  sub_D748(__stack_chk_guard);
  sub_D704();
  sub_D71C(&dword_0, v0, v1, "Failed to fetch most recent samples for type %@ error %@");
}