void sub_1E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained specifier];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [WeakRetained isEnabled]);
  [v3 setProperty:v4 forKey:PSValueKey];

  v5 = [WeakRetained specifier];
  [v5 setProperty:&__kCFBooleanFalse forKey:PSControlIsLoadingKey];

  v7 = FRNewsSettingsLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Settings sports sync switch preparing...done", v8, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2170(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = FRNewsSettingsLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Settings sports sync setting will attempt to opt-in with watchlist %{public}@", buf, 0xCu);
    }

    v6 = [*(a1 + 32) isEnabled];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_22A4;
    v7[3] = &unk_107A8;
    v8 = *(a1 + 32);
    [v3 updateSyncSettingWithIsEnabled:v6 completionHandler:v7];
  }
}

void sub_22A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = FRNewsSettingsLog(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v9 = 138543362;
      v10 = v4;
      v7 = "Settings sports sync failed to opt-in with watchlist, error=%{public}@";
LABEL_6:
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v7, &v9, 0xCu);
    }
  }

  else if (v6)
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    v7 = "Settings sports sync successful opt-in with watchlist, %{public}@";
    goto LABEL_6;
  }
}

void sub_25C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = FRNewsSettingsLog(WeakRetained);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Settings sports sync switch will prepare with watchlist", buf, 2u);
    }

    [WeakRetained prepareUserDefaultsWithWatchlistService:v3 completion:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Settings sports sync switch will NOT prepare with watchlist", v7, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_27B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2890;
  block[3] = &unk_10820;
  v9 = a3;
  v10 = v5;
  v11 = *(a1 + 32);
  v6 = v5;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_2890(void *a1)
{
  if (a1[4])
  {
    v2 = FRNewsSettingsLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      *buf = 138543362;
      v12 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Settings sports sync switch failed to get onboarding status from watchlist, error=%{public}@", buf, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v2 = +[FRNewsSportsSyncSetting userDefaultSyncSetting];
    v5 = a1[5];
    v10[0] = v2;
    v10[1] = v5;
    v6 = [NSArray arrayWithObjects:v10 count:2];
    v7 = FRNewsSettingsLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Settings sports sync will determine most recent sync setting between %{public}@", buf, 0xCu);
    }

    v4 = FRNewsSportsSyncSettingMostRecentSyncSetting(v6);
  }

  v9 = FRNewsSettingsLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Settings sports sync determined most recent sync setting %{public}@", buf, 0xCu);
  }

  if (v4 && [v4 source])
  {
    [FRNewsSportsSyncSetting updateUserDefaultsSyncSetting:v4];
  }

  (*(a1[6] + 16))();
}

id sub_39B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = a5;
  v10 = a4;
  v11 = [PSSpecifier preferenceSpecifierNamed:a2 target:v8 set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:a3 edit:0];
  [v11 setObject:v10 forKeyedSubscript:PSKeyNameKey];

  [v11 setObject:v9 forKeyedSubscript:PSDefaultValueKey];
  v12 = FCDefaultsSuiteName;
  [v11 setObject:FCDefaultsSuiteName forKeyedSubscript:PSDefaultsKey];
  [v11 setObject:v12 forKeyedSubscript:PSContainerBundleIDKey];

  return v11;
}

id sub_3AD4(uint64_t a1)
{
  [*(a1 + 32) setValue:*(a1 + 40) forSpecifier:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 reload];
}

id sub_3D88(uint64_t a1)
{
  [*(a1 + 32) setOptimizedStorageEnabled:*(a1 + 40) forSpecifier:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 reload];
}

id sub_40AC(uint64_t a1)
{
  [*(a1 + 32) setPreferenceValue:*(a1 + 40) specifier:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 reload];
}

uint64_t FRLogLevelDefault()
{
  if (os_variant_has_internal_content())
  {
    return 6;
  }

  else
  {
    return 3;
  }
}

void sub_43E8(uint64_t a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a2 specifiers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = PSKeyNameKey;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) propertyForKey:v7];
        if (v9)
        {
          v10 = NewsCoreUserDefaults();
          [v10 addObserver:*(a1 + 32) forKeyPath:v9 options:3 context:0];
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_5AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_5B08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = a5;
  v10 = a4;
  v11 = [PSSpecifier preferenceSpecifierNamed:a2 target:v8 set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:a3 edit:0];
  [v11 setObject:v10 forKeyedSubscript:PSKeyNameKey];

  [v11 setObject:v9 forKeyedSubscript:PSDefaultValueKey];
  [v11 setObject:@"com.apple.news" forKeyedSubscript:PSDefaultsKey];
  [v11 setObject:NSSNewsAppBundleID forKeyedSubscript:PSContainerBundleIDKey];

  return v11;
}

void sub_5C30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained sportsSyncManager];
  v2 = [v1 specifier];
  [WeakRetained reloadSpecifier:v2 animated:1];
}

id sub_6878(uint64_t a1)
{
  [*(a1 + 32) setShowStoriesFromFavorites:*(a1 + 40) specifier:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 reload];
}

const __CFString *NSStringFromNewsSportsSyncSettingSource(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"watchlist";
  }

  else
  {
    return @"userDefaults";
  }
}

id FRNewsSportsSyncSettingMostRecentSyncSetting(void *a1)
{
  v1 = a1;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_16;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v18;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(*(&v17 + 1) + 8 * i);
      v8 = [v4 dateModified];
      if (!v8 || (v9 = v8, [v7 dateModified], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
      {
        v14 = [v7 dateModified];

        if (!v14)
        {
          continue;
        }

LABEL_11:
        v15 = v7;

        v4 = v15;
        continue;
      }

      v11 = [v7 dateModified];
      v12 = [v4 dateModified];
      v13 = [v11 fc_isLaterThan:v12];

      if (v13)
      {
        goto LABEL_11;
      }
    }

    v3 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v3);
LABEL_16:

  return v4;
}

id FRNewsSettingsLog(uint64_t a1)
{
  if (qword_14B60 != -1)
  {
    sub_A754();
  }

  v2 = qword_14B68;

  return v2;
}

void sub_7290(id a1)
{
  qword_14B68 = os_log_create("com.apple.news.settings", "NewsSettings");

  _objc_release_x1();
}

unint64_t sub_730C()
{
  result = qword_14AF0;
  if (!qword_14AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14AF0);
  }

  return result;
}

uint64_t sub_737C(uint64_t a1)
{
  sub_A9B8();
  __chkstk_darwin();
  sub_A898();
  __chkstk_darwin();
  v2 = [objc_allocWithZone(PSSpecifier) init];
  [v2 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_A9A8();
  sub_A878();
  return sub_A858();
}

uint64_t sub_74BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_A898();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_A8B8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_A788();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  sub_A978();
  v4[15] = sub_A968();
  v9 = sub_A958();

  return _swift_task_switch(sub_766C, v9, v8);
}

uint64_t sub_766C()
{

  sub_A8E8();
  v1 = sub_A778();
  v3 = v2;
  sub_A8D8();
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (v1 == 0x6C7070612E6D6F63 ? (v5 = v3 == 0xEE007377656E2E65) : (v5 = 0), v5 || (sub_A9D8() & 1) != 0))
  {
  }

  else
  {
    v14 = v0[4];
    v15 = sub_A918();
    [v14 setSpecifierIdentifierToScrollAndHighlight:v15];

    if (qword_14A48 != -1)
    {
      swift_once();
    }

    v16 = sub_7A68(v1, v3, qword_14A50);

    if (v16)
    {
      v18 = v0[7];
      v17 = v0[8];
      v19 = v0[6];
      v20 = v0[4];
      v21 = [objc_opt_self() specifierForDownloadSettingWithTarget:v0[5]];
      [v21 setProperty:v20 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
      v22 = v21;
      sub_A888();
      sub_8070(&qword_14B10, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_A8A8();

      (*(v18 + 8))(v17, v19);
    }
  }

  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  sub_A8F8();
  (*(v11 + 8))(v9, v10);
  (*(v7 + 8))(v6, v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_791C()
{
  sub_7D8C(&qword_14B18, &qword_C0E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C020;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000000000E1E0;
  *(inited + 48) = sub_A928();
  *(inited + 56) = v1;
  *(inited + 64) = sub_A928();
  *(inited + 72) = v2;
  *(inited + 80) = sub_A928();
  *(inited + 88) = v3;
  *(inited + 96) = sub_A928();
  *(inited + 104) = v4;
  *(inited + 112) = sub_A928();
  *(inited + 120) = v5;
  *(inited + 128) = sub_A928();
  *(inited + 136) = v6;
  *(inited + 144) = sub_A928();
  *(inited + 152) = v7;
  *(inited + 160) = sub_A928();
  *(inited + 168) = v8;
  v9 = sub_80B8(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_14A50 = v9;
  return result;
}

uint64_t sub_7A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_A9E8();
  sub_A948();
  v6 = sub_A9F8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_A9D8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_7B60()
{
  v1 = sub_7D8C(&qword_14AF8, &qword_C0D0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_A868();
  sub_8070(&qword_14B00, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v8 = v5;
  v9 = v6;
  sub_A908();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  sub_7FC4();
  v11 = v8;
  v12 = v9;
  sub_A8C8();
  return (*(v2 + 8))(v4, v1);
}

id sub_7D30@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  result = [objc_allocWithZone(FRNewsSettingsController) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_7D8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_7DD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7E1C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7ED0;

  return sub_74BC(a1, a2, v7, v6);
}

uint64_t sub_7ED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_7FC4()
{
  result = qword_14B08;
  if (!qword_14B08)
  {
    sub_8028(&qword_14AF8, &qword_C0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14B08);
  }

  return result;
}

uint64_t sub_8028(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_8070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_80B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7D8C(&qword_14B20, &qword_C0F0);
    v3 = sub_A9C8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_A9E8();

      sub_A948();
      result = sub_A9F8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_A9D8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

__n128 sub_8220(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_822C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_82C0()
{
  sub_8028(&qword_14AF8, &qword_C0D0);
  sub_7FC4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_857C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_8624;

  return sub_9728();
}

uint64_t sub_8624(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = sub_A768();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_8928(uint64_t a1, void *aBlock)
{
  v3 = a1;
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_89DC;

  return sub_9D98(v3);
}

uint64_t sub_89DC(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_A768();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v10 = *(v7 + 8);

  return v10();
}

id SportsSyncFavoritesService.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SportsSyncFavoritesService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_8BAC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8BEC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_A590;

  return sub_8928(v2, v3);
}

uint64_t sub_8CA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_A590;

  return v6();
}

uint64_t sub_8D88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_A590;

  return sub_8CA0(v2, v3, v4);
}

uint64_t sub_8E48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_7ED0;

  return v7();
}

uint64_t sub_8F30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_A590;

  return sub_8E48(a1, v4, v5, v6);
}

uint64_t sub_8FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_7D8C(&qword_14B50, &qword_C150);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_92B8(a3, v22 - v9);
  v11 = sub_A998();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_9328(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_A988();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_A958();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_A938() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_9328(a3);

    return v20;
  }

LABEL_8:
  sub_9328(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_92B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_7D8C(&qword_14B50, &qword_C150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9328(uint64_t a1)
{
  v2 = sub_7D8C(&qword_14B50, &qword_C150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9390(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_9488;

  return v6(a1);
}

uint64_t sub_9488()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_9580()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_95B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_A590;

  return sub_9390(a1, v4);
}

uint64_t sub_9670(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7ED0;

  return sub_9390(a1, v4);
}

uint64_t sub_9728()
{
  sub_7D8C(&qword_14B58, &qword_C1D0);
  v0[2] = swift_task_alloc();
  v1 = sub_A808();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = sub_A848();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v3 = sub_A7F8();
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_98D4, 0, 0);
}

uint64_t sub_98D4(uint64_t a1)
{
  sub_A838();
  v2 = swift_task_alloc();
  *(v1 + 96) = v2;
  *v2 = v1;
  v2[1] = sub_9978;
  v3 = *(v1 + 88);

  return SportsFavoriteService.userConsent()(v3);
}

uint64_t sub_9978()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_9CF4;
  }

  else
  {
    v5 = sub_9AE8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_9AE8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_A7E8();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for SportsFavoriteService.UserConsent.Status.unknown(_:) && v4 != enum case for SportsFavoriteService.UserConsent.Status.declined(_:))
  {
    if (v4 == enum case for SportsFavoriteService.UserConsent.Status.accepted(_:))
    {
      v6 = 1;
      goto LABEL_9;
    }

    (*(v0[4] + 8))(v0[5], v0[3]);
  }

  v6 = 0;
LABEL_9:
  v7 = v0[2];
  sub_A7D8();
  v8 = sub_A7A8();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v11 = v0[2];
    isa = sub_A798().super.isa;
    (*(v9 + 8))(v11, v8);
  }

  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[9];
  v15 = [objc_allocWithZone(FRNewsSportsSyncSetting) initWithSource:1 enabled:v6 dateModified:isa];

  (*(v13 + 8))(v12, v14);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_9CF4()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9D98(char a1)
{
  *(v1 + 128) = a1;
  v2 = sub_A808();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();
  v3 = sub_A7C8();
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v3 - 8);
  *(v1 + 56) = swift_task_alloc();
  v4 = sub_A848();
  *(v1 + 64) = v4;
  *(v1 + 72) = *(v4 - 8);
  *(v1 + 80) = swift_task_alloc();
  v5 = sub_A7F8();
  *(v1 + 88) = v5;
  *(v1 + 96) = *(v5 - 8);
  *(v1 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_9F6C, 0, 0);
}

uint64_t sub_9F6C(uint64_t a1)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 16);
  v5 = *(v1 + 128);
  sub_A838();
  v6 = &enum case for SportsFavoriteService.UserConsent.Status.accepted(_:);
  if (!v5)
  {
    v6 = &enum case for SportsFavoriteService.UserConsent.Status.declined(_:);
  }

  (*(v3 + 104))(v2, *v6, v4);
  sub_A7B8();
  v7 = swift_task_alloc();
  *(v1 + 112) = v7;
  *v7 = v1;
  v7[1] = sub_A114;
  v8 = *(v1 + 104);
  v9 = *(v1 + 56);

  return SportsFavoriteService.modifyUserConsent(_:)(v8, v9);
}

uint64_t sub_A114()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  *(*v1 + 120) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_A3A0;
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);
    v9 = sub_A30C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_A30C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

uint64_t sub_A3A0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t sub_A450()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A490()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_7ED0;

  return sub_857C(v2);
}

uint64_t sub_A540()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_A594()
{
  v0 = [[NSString alloc] initWithFormat:@"Unsupported Platform"];
  v1 = 136315906;
  v2 = "[FRNewsDownloadsSettingsController optimizeStorageDescription]";
  v3 = 2080;
  v4 = "FRNewsDownloadsSettingsController.m";
  v5 = 1024;
  v6 = 256;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_A674()
{
  v0 = [[NSString alloc] initWithFormat:@"Unsupported Platform"];
  v1 = 136315906;
  v2 = "[FRNewsSettingsController offlineModeSubscriberGroupDescription]";
  v3 = 2080;
  v4 = "FRNewsSettingsController.m";
  v5 = 1024;
  v6 = 561;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}