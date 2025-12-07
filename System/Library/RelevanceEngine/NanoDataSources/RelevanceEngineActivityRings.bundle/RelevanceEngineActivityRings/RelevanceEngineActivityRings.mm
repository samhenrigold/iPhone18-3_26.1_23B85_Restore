void sub_FFC(uint64_t a1)
{
  v2 = REUISampleRelevanceProviderForSamplePosition();
  v3 = objc_alloc_init(HKActivitySummary);
  v4 = +[HKUnit kilocalorieUnit];
  v5 = [HKQuantity quantityWithUnit:v4 doubleValue:500.0];
  [v3 setActiveEnergyBurnedGoal:v5];

  v6 = [v3 activeEnergyBurnedGoal];
  [v3 setActiveEnergyBurned:v6];

  v7 = +[HKUnit minuteUnit];
  v8 = [HKQuantity quantityWithUnit:v7 doubleValue:30.0];
  [v3 setAppleExerciseTimeGoal:v8];

  v9 = [v3 appleExerciseTimeGoal];
  [v3 setAppleExerciseTime:v9];

  v10 = +[HKUnit countUnit];
  v11 = [HKQuantity quantityWithUnit:v10 doubleValue:12.0];
  [v3 setAppleStandHoursGoal:v11];

  v12 = [v3 appleStandHoursGoal];
  [v3 setAppleStandHours:v12];

  v13 = RingsElementWithActivitySummary(v3, v2);
  v14 = *(a1 + 32);
  v16 = v13;
  v15 = [NSArray arrayWithObjects:&v16 count:1];
  (*(v14 + 16))(v14, v15);
}

id _FormattingManager(uint64_t a1)
{
  if (qword_C760 != -1)
  {
    sub_3164();
  }

  v2 = qword_C758;

  return v2;
}

void sub_126C(id a1)
{
  v4 = +[HKHealthStore fiui_sharedHealthStoreForCarousel];
  v1 = [[FIUIUnitManager alloc] initWithHealthStore:v4];
  v2 = [[FIUIFormattingManager alloc] initWithUnitManager:v1];
  v3 = qword_C758;
  qword_C758 = v2;
}

id RingsElementWithActivitySummary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v119 = v3;
  if (FIActivitySummaryHasNonZeroMoveGoal())
  {
    v118 = objc_alloc_init(REContent);
    [v118 setStyle:3];
    v5 = [v3 activityMoveMode];
    v116 = v4;
    if (v5 == &dword_0 + 2)
    {
      v6 = +[HKUnit minuteUnit];
    }

    else
    {
      v9 = _FormattingManager(v5);
      v10 = [v9 unitManager];
      v6 = [v10 userActiveEnergyBurnedUnit];
    }

    v11 = FIMoveQuantityForActivitySummary();
    v12 = FIMoveGoalQuantityForActivitySummary();
    v114 = v11;
    [v11 doubleValueForUnit:v6];
    v14 = v13;
    v113 = v12;
    [v12 doubleValueForUnit:v6];
    v110 = v15;
    v16 = [NSNumber numberWithDouble:v14];
    v17 = +[HKUnit minuteUnit];
    LODWORD(v12) = [v6 isEqual:v17];

    v115 = v6;
    if (v12)
    {
      v18 = FIUIBundle();
      v19 = @"Localizable-tinker";
      v20 = [v18 localizedStringForKey:@"ACTIVITY_MOVE_VALUE_MIN_UNIT_FORMAT" value:&stru_84F0 table:@"Localizable-tinker"];

      v21 = FIUIBundle();
      v22 = v21;
      v23 = @"ACTIVITY_MOVE_VALUE_MIN_UNIT";
    }

    else
    {
      v24 = [HKUnit jouleUnitWithMetricPrefix:9];
      v25 = [v6 isEqual:v24];

      if (!v25)
      {
        v29 = +[HKUnit largeCalorieUnit];
        v30 = [v6 isEqual:v29];

        v31 = FIUIBundle();
        v28 = [v31 localizedStringForKey:@"ACTIVITY_MOVE_VALUE_KCAL_UNIT_FORMAT" value:&stru_84F0 table:@"Localizable"];

        v21 = FIUIBundle();
        v22 = v21;
        if (v30)
        {
          v23 = @"ACTIVITY_MOVE_VALUE_CAL_UNIT";
        }

        else
        {
          v23 = @"ACTIVITY_MOVE_VALUE_KCAL_UNIT";
        }

        v27 = @"Localizable";
        goto LABEL_17;
      }

      v26 = FIUIBundle();
      v19 = @"Localizable";
      v20 = [v26 localizedStringForKey:@"ACTIVITY_MOVE_VALUE_KJ_UNIT_FORMAT" value:&stru_84F0 table:@"Localizable"];

      v21 = FIUIBundle();
      v22 = v21;
      v23 = @"ACTIVITY_MOVE_VALUE_KJ_UNIT";
    }

    v27 = v19;
    v28 = v20;
LABEL_17:
    v32 = [v21 localizedStringForKey:v23 value:&stru_84F0 table:v27];
    v33 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v32, [v16 integerValue]);

    v34 = [FIUIFormattingManager stringWithNumber:v16 decimalPrecision:1];
    v35 = [v33 localizedLowercaseString];

    v36 = [v28 rangeOfString:@"<value>"];
    v111 = v28;
    v112 = v16;
    v108 = v35;
    v109 = v34;
    if (v36 <= [v28 rangeOfString:@"<unit>"])
    {
      [NSString stringWithFormat:@"%@ %@", v34, v35];
    }

    else
    {
      [NSString stringWithFormat:@"%@ %@", v35, v34];
    }
    v107 = ;
    v37 = [CLKSimpleTextProvider textProviderWithText:v107];
    [v37 setUseLowercaseSmallCaps:1];
    v106 = v37;
    [v118 setHeaderTextProvider:v37];
    [v118 setHeaderFontStyle:0];
    v38 = [v3 appleExerciseTime];
    v39 = +[HKUnit minuteUnit];
    [v38 doubleValueForUnit:v39];
    v41 = v40;

    v42 = [v3 appleExerciseTimeGoal];
    v43 = +[HKUnit minuteUnit];
    [v42 doubleValueForUnit:v43];
    v45 = v44;

    v46 = [NSNumber numberWithDouble:v41];
    v47 = FIUIBundle();
    v48 = [v47 localizedStringForKey:@"ACTIVITY_EXERCISE_VALUE_UNIT_FORMAT" value:&stru_84F0 table:@"Localizable"];

    v49 = [FIUIFormattingManager stringWithNumber:v46 decimalPrecision:1];
    v50 = FIUIBundle();
    v51 = [v50 localizedStringForKey:@"ACTIVITY_EXERCISE_VALUE_UNIT" value:&stru_84F0 table:@"Localizable"];
    v105 = v46;
    v52 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v51, [v46 integerValue]);

    v53 = [v52 localizedLowercaseString];

    v54 = [v48 rangeOfString:@"<value>"];
    v104 = v48;
    v102 = v53;
    if (v54 <= [v48 rangeOfString:@"<unit>"])
    {
      [NSString stringWithFormat:@"%@ %@", v49, v53];
    }

    else
    {
      [NSString stringWithFormat:@"%@ %@", v53, v49];
    }
    v101 = ;
    v55 = [CLKSimpleTextProvider textProviderWithText:v101];
    [v55 setUseLowercaseSmallCaps:1];
    v100 = v55;
    [v118 setDescription1TextProvider:v55];
    [v118 setDescription1FontStyle:0];
    v56 = [v3 appleStandHours];
    v57 = +[HKUnit countUnit];
    [v56 doubleValueForUnit:v57];
    v59 = v58;

    v60 = [v3 appleStandHoursGoal];
    v61 = +[HKUnit countUnit];
    [v60 doubleValueForUnit:v61];
    v63 = v62;

    v64 = [NSNumber numberWithDouble:v59];
    v65 = FIUIBundle();
    v66 = [v65 localizedStringForKey:@"ACTIVITY_STAND_VALUE_UNIT_FORMAT" value:&stru_84F0 table:@"Localizable"];

    v117 = [FIUIFormattingManager stringWithNumber:v64 decimalPrecision:1];
    v67 = FIUIBundle();
    v68 = [v67 localizedStringForKey:@"ACTIVITY_STAND_VALUE_UNIT" value:&stru_84F0 table:@"Localizable"];
    v99 = v64;
    v69 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v68, [v64 integerValue]);

    v70 = [v69 localizedLowercaseString];

    v71 = [v66 rangeOfString:@"<value>"];
    v98 = v66;
    v103 = v49;
    v97 = v70;
    if (v71 <= [v66 rangeOfString:@"<unit>"])
    {
      [NSString stringWithFormat:@"%@ %@", v117, v70];
    }

    else
    {
      [NSString stringWithFormat:@"%@ %@", v70, v117];
    }
    v96 = ;
    v72 = [CLKSimpleTextProvider textProviderWithText:v96];
    [v72 setUseLowercaseSmallCaps:1];
    [v118 setDescription2TextProvider:v72];
    [v118 setDescription2FontStyle:0];
    v94 = [ARUIRingGroupController ringGroupControllerConfiguredForWatchWithRingType:3 withIcon:0];
    v95 = +[CLKUIMetalResourceManager sharedCommandQueue];
    v93 = [[ARUIRingsViewRenderer alloc] initWithMaximumRingCount:3 commandQueue:v95];
    v73 = [[ARUIRingsView alloc] initWithRingGroupController:v94 renderer:v93];
    v75 = sub_1E28(v73, v74);
    sub_1E28(v76, v77);
    v79 = v78;
    sub_1E28(v80, v81);
    v83 = v82;
    v84 = [UIColor colorWithWhite:0.45 alpha:0.15];
    v85 = [ARUIRingsImageFactory renderRingsWithBackgroundColor:v84 usingRingsView:v73 forMovePercentage:v14 / v110 exercisePercentage:v41 / v45 standPercentage:v59 / v63 withDiameter:v75 thickness:v79 interspacing:v83];

    [v118 setOverrideBodyImage:v85];
    v86 = objc_alloc_init(CLKImageProvider);
    [v86 setForegroundAccentImage:v85];
    [v86 setForegroundAccentImageTinted:1];
    [v118 setBodyImageProvider:v86];
    v87 = [REElementOpenAction alloc];
    v88 = [NSURL URLWithString:@"ActivityMonitorApp://"];
    v89 = [v87 initWithURL:v88 applicationID:@"com.apple.ActivityMonitorApp"];

    v90 = [REElement alloc];
    v4 = v116;
    v121 = v116;
    v91 = [NSArray arrayWithObjects:&v121 count:1];
    v8 = [v90 initWithIdentifier:@"com.apple.Activity.Rings" content:v118 action:v89 relevanceProviders:v91 privacyBehavior:1];

    goto LABEL_27;
  }

  _HKInitializeLogging();
  v7 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[Supergreen-Rings] Activity is not configured by user--returning nil element", buf, 2u);
  }

  v8 = 0;
LABEL_27:

  return v8;
}

double sub_1E28(uint64_t a1, uint64_t a2)
{
  if (qword_C780 != -1)
  {
    sub_3178();
  }

  return *&qword_C768;
}

void sub_1E70(id a1)
{
  qword_C768 = 0x404AA66666666666;
  qword_C770 = 0x4016000000000000;
  qword_C778 = 0x4004000000000000;
}

void sub_225C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NLActivityRingsElementIdentifier();
  *(*(*(a1 + 40) + 8) + 24) = [v2 hasElementWithId:v3 inSectionWithIdentifier:REDefaultSectionIdentifier];
}

void sub_22CC(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v3 = @"Reloading";
    }

    else
    {
      v3 = @"Adding";
    }

    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 currentSummary];
    *buf = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[Supergreen-Rings] %@ element with current summary = %@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) currentSummary];
  v8 = [*(a1 + 32) downtimeRelevanceProvider];
  v9 = RingsElementWithActivitySummary(v7, v8);

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 40) reloadElement:v9];
  }

  else if (v9)
  {
    v10 = *(a1 + 40);
    v12 = v9;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [v10 addElements:v11 toSectionWithIdentifier:REDefaultSectionIdentifier];
  }
}

void sub_275C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSummary];

  if (v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_283C;
    v5[3] = &unk_83B8;
    v3 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void sub_283C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSummary];
  v3 = [*(a1 + 32) downtimeRelevanceProvider];
  v4 = RingsElementWithActivitySummary(v2, v3);

  _HKInitializeLogging();
  v5 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[Supergreen-Rings] Returning element %@", buf, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v4)
  {
    v8 = v4;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, &__NSArray0__struct);
  }
}

void sub_2B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2B28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v9)
    {
      v12 = *(a1 + 40) - 1;
      _HKInitializeLogging();
      v13 = HKLogCoaching;
      if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_ERROR))
      {
        sub_31D0(v9, v12, v13);
      }

      v14 = [v11 healthStore];
      [v14 stopQuery:v7];

      [v11 _startCurrentActivitySummaryQueryWithRemainingRetries:v12];
    }

    else if (v8)
    {
      v15 = WeakRetained[2];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_2C80;
      v16[3] = &unk_83E0;
      v16[4] = WeakRetained;
      v17 = v8;
      dispatch_async(v15, v16);
    }
  }
}

void sub_2C80(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSummary];
  if (!v2 || (v3 = v2, [*(a1 + 32) currentSummary], v4 = objc_claimAutoreleasedReturnValue(), v5 = *(a1 + 40), _FormattingManager(v4), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "unitManager"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "userActiveEnergyBurnedUnit"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend(v4, "isNoticeablyDifferentFromActivitySummary:comparingGoalTypes:userActiveEnergyBurnedUnit:", v5, 0, v8), v8, v7, v6, v4, v3, v5))
  {
    [*(a1 + 32) setCurrentSummary:*(a1 + 40)];
    v9 = *(a1 + 32);

    [v9 _generateRingsElement];
  }
}

void sub_2E08(uint64_t a1)
{
  v2 = [*(a1 + 32) healthStore];
  [v2 executeQuery:*(a1 + 40)];

  v4 = [*(a1 + 32) queries];
  v3 = [v4 setByAddingObject:*(a1 + 40)];
  [*(a1 + 32) setQueries:v3];
}

void sub_2F0C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) queries];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 32) healthStore];
        [v8 stopQuery:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = +[NSSet set];
  [*(a1 + 32) setQueries:v9];
}

void sub_31D0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[Supergreen-Rings] Current activity summary query encountered error %@, remaining retries %lu.", &v3, 0x16u);
}