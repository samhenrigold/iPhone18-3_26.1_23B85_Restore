id sub_19B4(uint64_t a1)
{
  if (qword_10DB8 != -1)
  {
    sub_6B9C();
  }

  v2 = qword_10DB0;

  return v2;
}

id sub_1BEC(uint64_t a1)
{
  if (qword_10DC8 != -1)
  {
    sub_6C18();
  }

  v2 = qword_10DC0;

  return v2;
}

id sub_1C30()
{
  IsInternalBuild = HTDeveloperSettingsIsInternalBuild();
  if (!IsInternalBuild)
  {
    return 0;
  }

  v1 = sub_5878(IsInternalBuild);
  v2 = [v1 objectForKey:@"MonitorAnyApp"];

  if (v2 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v4 = sub_58BC(isKindOfClass);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v2 BOOLValue];
      v6 = @"disabled";
      if (v5)
      {
        v6 = @"enabled";
      }

      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "MonitorAnyApp is %{public}@", &v10, 0xCu);
    }

    v7 = [v2 BOOLValue];
  }

  else
  {
    v8 = sub_58BC(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "MonitorAnyApp is disabled (default value)", &v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

id sub_1DA4(uint64_t a1)
{
  v2 = sub_19B4(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Forcing specifier reload due to global state update", v4, 2u);
  }

  return [*(a1 + 32) forceReloadSpecifiers];
}

void sub_21B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  v3 = [[FBSShutdownOptions alloc] initWithReason:@"com.apple.performance.trace.enablement"];
  [v3 setRebootType:1];
  [v3 setSource:1];
  v2 = +[FBSSystemService sharedService];
  [v2 shutdownWithOptions:v3];
}

uint64_t sub_224C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

int64_t sub_2DC0(id a1, NSURL *a2, NSURL *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[NSFileManager defaultManager];
  v7 = [(NSURL *)v5 path];

  v8 = [v6 attributesOfItemAtPath:v7 error:0];
  v9 = [v8 fileCreationDate];

  v10 = +[NSFileManager defaultManager];
  v11 = [(NSURL *)v4 path];

  v12 = [v10 attributesOfItemAtPath:v11 error:0];
  v13 = [v12 fileCreationDate];

  v14 = [v13 compare:v9];
  return v14;
}

id sub_47D4(uint64_t a1)
{
  if (qword_10DF8 != -1)
  {
    sub_7034();
  }

  v2 = qword_10DF0;

  return v2;
}

void sub_4A5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_4A80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = sub_47D4(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_70B0();
    }
  }

  else
  {
    v69 = a1;
    v10 = [*(a1 + 32) passiveTraceConfig];
    v89 = 0;
    v11 = [v10 fetchPerfPowerMetricMonitoredProcesses:&v89];
    v12 = v89;

    v65 = v12;
    v66 = v8;
    if (v12)
    {
      v14 = sub_47D4(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_6F64();
      }

      v64 = &__NSArray0__struct;
      v15 = @"Unable to lookup apps";
    }

    else
    {
      v64 = v11;
      v15 = @"No available apps";
    }

    v63 = v15;
    v74 = objc_alloc_init(NSMutableArray);
    v75 = objc_alloc_init(NSMutableSet);
    v76 = objc_alloc_init(NSMutableDictionary);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v67 = v5;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v85 objects:v102 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v86;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v86 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v85 + 1) + 8 * i) name];
          if (v21)
          {
            v22 = [v76 objectForKeyedSubscript:v21];
            v23 = v22;
            if (!v22)
            {
              v22 = &off_CFE8;
            }

            v24 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v22 unsignedIntValue] + 1);
            [v76 setObject:v24 forKeyedSubscript:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v85 objects:v102 count:16];
      }

      while (v18);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v16;
    v25 = [obj countByEnumeratingWithState:&v81 objects:v101 count:16];
    v26 = v69;
    if (v25)
    {
      v27 = v25;
      v73 = *v82;
      v72 = PSLazyIconAppID;
      v71 = PSLazyIconLoading;
      do
      {
        v28 = 0;
        v68 = v27;
        do
        {
          if (*v82 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v81 + 1) + 8 * v28);
          v30 = [v29 name];
          v31 = [v76 objectForKeyedSubscript:v30];
          v32 = v31;
          v33 = &off_CFE8;
          if (v31)
          {
            v33 = v31;
          }

          v34 = v33;

          v36 = sub_47D4(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v46 = [v29 name];
            v47 = [v29 bundleID];
            v48 = [v29 bundleExecutable];
            v49 = [v29 bundleDisplayName];
            v50 = [v34 unsignedIntValue];
            *buf = 138544386;
            v92 = v46;
            v93 = 2114;
            v94 = v47;
            v95 = 2114;
            v96 = v48;
            v97 = 2114;
            v98 = v49;
            v99 = 1024;
            v100 = v50;
            _os_log_debug_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "Found application: %{public}@ (%{public}@, %{public}@, %{public}@, colliding name count: %u)", buf, 0x30u);

            v27 = v68;
          }

          v37 = [v29 name];
          if ([v34 unsignedIntValue] >= 2)
          {
            v38 = [v29 name];
            v39 = [v29 bundleExecutable];
            v40 = [NSString stringWithFormat:@"%@ (%@)", v38, v39];

            v26 = v69;
            v37 = v40;
          }

          v41 = [PSSpecifier preferenceSpecifierNamed:v37 target:*(v26 + 32) set:"_appIsMonitoredSetter:specifier:" get:"_appIsMonitoredGetter:" detail:0 cell:6 edit:0];
          v42 = [v29 bundleID];
          [v41 setIdentifier:v42];

          v43 = [v29 bundleExecutable];
          [v41 setObject:v43 forKeyedSubscript:@"AppBundleExecutable"];

          v44 = [v29 bundleID];
          [v41 setObject:v44 forKeyedSubscript:v72];

          [v41 setObject:&__kCFBooleanTrue forKeyedSubscript:v71];
          [*(v26 + 32) _setEnablement:v41];
          [v74 addObject:v41];
          v45 = [v29 bundleID];
          [v75 addObject:v45];

          v28 = v28 + 1;
        }

        while (v27 != v28);
        v27 = [obj countByEnumeratingWithState:&v81 objects:v101 count:16];
      }

      while (v27);
    }

    if (![v74 count])
    {
      v51 = [PSSpecifier preferenceSpecifierNamed:v63 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
      [v74 addObject:v51];
      [v75 addObject:v63];
    }

    v52 = objc_alloc_init(NSMutableSet);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v53 = [*(v26 + 32) cachedDeveloperAppsSpecifiers];
    v54 = [v53 countByEnumeratingWithState:&v77 objects:v90 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v78;
      do
      {
        for (j = 0; j != v55; j = j + 1)
        {
          if (*v78 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v77 + 1) + 8 * j);
          v59 = [v58 identifier];

          if (v59)
          {
            v60 = [v58 identifier];
            [v52 addObject:v60];
          }
        }

        v55 = [v53 countByEnumeratingWithState:&v77 objects:v90 count:16];
      }

      while (v55);
    }

    v61 = [v52 isEqualToSet:v75];
    v8 = v66;
    v62 = [v66 cachedDeveloperAppsSpecifiers];
    if ((v61 & 1) == 0)
    {
      [v66 setCachedDeveloperAppsSpecifiers:v74];
      if ([*(v69 + 32) isPowerProfilerPlanSelected])
      {
        [v66 removeContiguousSpecifiers:v62 animated:0];
        [v66 insertContiguousSpecifiers:v74 afterSpecifierID:@"MONITORABLE_APPS" animated:0];
        [*(v69 + 32) forceReloadSpecifiers];
      }
    }

    v6 = 0;
    v5 = v67;
    v9 = v65;
  }
}

void sub_5450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = v5;
  if (!*(a1 + 32))
  {
    (*(v5 + 2))(v5, 0);
    goto LABEL_10;
  }

  v7 = +[NSFileManager defaultManager];
  v8 = *(a1 + 32);
  v12 = 0;
  v9 = [v7 removeItemAtPath:v8 error:&v12];
  v10 = v12;

  if (v10)
  {
    if (qword_10E08 != -1)
    {
      sub_7118();
    }

    v11 = qword_10E00;
    if (os_log_type_enabled(qword_10E00, OS_LOG_TYPE_ERROR))
    {
      sub_7140((a1 + 32), v10, v11);
      if (!v9)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if (v9)
  {
LABEL_7:
    [*(a1 + 40) forceReloadSpecifiers];
  }

LABEL_8:
  (v6)[2](v6, v9);

LABEL_10:
}

void sub_57F0(id a1)
{
  qword_10DB0 = os_log_create("com.apple.Preferences.DeveloperSettings", "PerformanceTraceGlobalState");

  _objc_release_x1();
}

void sub_5834(id a1)
{
  qword_10DC0 = os_log_create("com.apple.Preferences.DeveloperSettings", "PassiveTraceConfiguration");

  _objc_release_x1();
}

id sub_5878(uint64_t a1)
{
  if (qword_10DD8 != -1)
  {
    sub_71CC();
  }

  v2 = qword_10DD0;

  return v2;
}

id sub_58BC(uint64_t a1)
{
  if (qword_10DE8 != -1)
  {
    sub_71E0();
  }

  v2 = qword_10DE0;

  return v2;
}

void sub_5900(id a1)
{
  qword_10DD0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.PerformanceTrace.SettingsPanePrefs"];

  _objc_release_x1();
}

void sub_5948(id a1)
{
  qword_10DE0 = os_log_create("com.apple.Preferences.DeveloperSettings", "SettingsPanePref");

  _objc_release_x1();
}

void sub_598C(id a1)
{
  qword_10DF0 = os_log_create("com.apple.Preferences.DeveloperSettings", "PassiveTraceLightweightPowerConfiguration");

  _objc_release_x1();
}

void sub_59D0(id a1)
{
  qword_10E00 = os_log_create("com.apple.Preferences.DeveloperSettings", "TraceFileManagement");

  _objc_release_x1();
}

void sub_5A14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_5A3C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_6128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained specifier];
  v2 = [v1 target];
  v3 = [WeakRetained specifier];
  [v2 _shareLog:v3];
}

void sub_6610(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10E10;
  qword_10E10 = v1;

  [qword_10E10 setDateStyle:2];
  v3 = qword_10E10;

  [v3 setTimeStyle:1];
}

uint64_t sub_6694()
{
  sub_69A0(&qword_10CF0, qword_9200);
  sub_722C();
  sub_69E8();
  swift_getOpaqueTypeConformance2();
  return sub_727C();
}

uint64_t sub_6738()
{
  sub_72CC();
  __chkstk_darwin();
  sub_724C();
  __chkstk_darwin();
  v0 = sub_722C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72AC();
  sub_729C();
  sub_728C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_72BC();
  sub_723C();
  sub_721C();
  sub_725C();
  sub_69E8();
  sub_726C();

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_69A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_69E8()
{
  result = qword_10CF8;
  if (!qword_10CF8)
  {
    sub_722C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10CF8);
  }

  return result;
}

unint64_t sub_6A48()
{
  result = qword_10D00;
  if (!qword_10D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10D00);
  }

  return result;
}

unint64_t sub_6AF0()
{
  result = qword_10DA0;
  if (!qword_10DA0)
  {
    sub_6B54(&qword_10DA8, "D)");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10DA0);
  }

  return result;
}

uint64_t sub_6B54(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_7140(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to delete file at path %{public}@ due to error: %{public}@", &v4, 0x16u);
}