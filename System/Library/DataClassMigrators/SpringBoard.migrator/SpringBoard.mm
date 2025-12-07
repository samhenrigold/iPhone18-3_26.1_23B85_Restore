void sub_263C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_2EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_2F14(uint64_t a1)
{
  v2 = objc_alloc_init(FBSDisplayMonitor);
  v3 = [v2 mainConfiguration];
  [v3 pointScale];
  *(*(*(a1 + 40) + 8) + 24) = v4;

  [v2 invalidate];
  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

void sub_36F4(id a1, NSURL *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(NSURL *)v4 pathExtension];
  v6 = [v5 lowercaseString];

  if ([v6 isEqualToString:@"plist"])
  {
    v18 = 0;
    v7 = [NSData dataWithContentsOfURL:v4 options:0 error:&v18];
    v8 = v18;
    if (v7)
    {
      v9 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:0 error:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 objectForKeyedSubscript:@"applicationShortcutItems"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = [v9 objectForKeyedSubscript:@"applicationShortcutItems"];
          if ([v12 count] > 0xA)
          {
            v13 = [v9 mutableCopy];
            v14 = [v12 subarrayWithRange:{0, 10}];
            [v13 setObject:v14 forKeyedSubscript:@"applicationShortcutItems"];

            v9 = v13;
          }

          v15 = [(NSURL *)v4 lastPathComponent];
          v16 = [v15 stringByDeletingPathExtension];

          v17 = [FBSApplicationDataStore storeForApplication:v16];
          [v17 setArchivedObject:v9 forKey:@"SBApplicationShortcutItems"];
        }
      }
    }

    else
    {
      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_DF18(v8, v4, v9);
      }
    }
  }
}

void sub_4394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_43C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_43D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_E4F4();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_445C(id a1, SBDataMigratorCleanuppableDataStore *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(SBDataMigratorCleanuppableDataStore *)v4 performSelector:"cleanup"];
  }
}

void sub_54C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_54F4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = kSBIconStateCustomIconElementTypeKey;
    v10 = [v8 objectForKey:kSBIconStateCustomIconElementTypeKey];
    v11 = [v10 isEqualToString:kSBIconStateCustomIconElementTypeWidget];

    if (v11)
    {
      v12 = [v8 objectForKey:kSBIconStateIconBundleIdentifier];
      v13 = [*(a1 + 32) _defaultTodayListWidgetBundleIdentifiersExceptForNews];
      v14 = [v13 objectAtIndexedSubscript:a3];
      v15 = [v12 isEqualToString:v14];

      v16 = [v8 objectForKey:kSBIconStateGridSizeClassIdentifier];
      v17 = [*(a1 + 32) _defaultTodayListWidgetGridSizeExceptForNews];
      v18 = [v17 objectAtIndexedSubscript:a3];
      v19 = [v16 isEqualToString:v18];

      if (v15 && (v19 & 1) != 0)
      {
        goto LABEL_22;
      }

      v20 = SBLogCommon();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v36 = 0;
      v21 = "[NewsIconStateMigration] Cannot restore News widget - today list widget icon ordering differs from default today list.";
      v22 = &v36;
    }

    else
    {
      v24 = [v8 objectForKey:v9];
      if ([v24 isEqualToString:kSBIconStateCustomIconElementTypeBatteries])
      {
        v25 = [v8 objectForKey:kSBIconStateGridSizeClassIdentifier];
        v26 = [*(a1 + 32) _defaultTodayListWidgetGridSizeExceptForNews];
        v27 = [v26 objectAtIndexedSubscript:a3];
        v28 = [v25 isEqualToString:v27];

        if (v28)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      v29 = [v8 objectForKey:kSBIconStateCustomIconElementKey];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v8 objectForKey:kSBIconStateGridSizeClassIdentifier];
        v31 = [*(a1 + 32) _defaultTodayListWidgetGridSizeExceptForNews];
        v32 = [v31 objectAtIndexedSubscript:a3];
        v33 = [v30 isEqualToString:v32];

        if (v33)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      v20 = SBLogCommon();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        *(*(*(a1 + 40) + 8) + 24) = 0;
        *a4 = 1;
LABEL_22:

        goto LABEL_23;
      }

      *buf = 0;
      v21 = "[NewsIconStateMigration] Cannot restore News widget - non-default element type in today list.";
      v22 = buf;
    }

    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, v21, v22, 2u);
    goto LABEL_21;
  }

  v23 = SBLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[NewsIconStateMigration] Cannot restore News widget - widget icon is not a dictionary representation.", v34, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  *a4 = 1;
LABEL_23:
}

uint64_t SBLayoutSupportsSideLayoutRole(uint64_t a1, uint64_t a2)
{
  if (qword_1D968 != -1)
  {
    sub_E7B8();
  }

  return byte_1D960;
}

void sub_6644(id a1)
{
  if (MGGetBoolAnswer())
  {
    v1 = 1;
  }

  else
  {
    v1 = MGGetBoolAnswer();
  }

  byte_1D960 = v1;
}

double SBLayoutDefaultSideLayoutElementWidth(uint64_t a1)
{
  v5 = __sb__runningInSpringBoard();
  v6 = v5;
  if (v5)
  {
    v7 = SBFEffectiveDeviceClass();
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v7 = SBFEffectiveHomeButtonType();
    if (v7 != 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v1 = +[UIDevice currentDevice];
    if ([v1 userInterfaceIdiom] != &dword_0 + 1 || SBFEffectiveHomeButtonType() != 2)
    {

      goto LABEL_10;
    }
  }

  v8 = __sb__runningInSpringBoard();
  v9 = v8;
  if (v8)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = +[UIScreen mainScreen];
    [v2 _referenceBounds];
  }

  v7 = BSSizeRoundForScale();
  v11 = SBDisplayMetrics[43];
  v13 = v12 >= v11;
  if (v12 >= v11)
  {
    v14 = __sb__runningInSpringBoard();
    v15 = v14;
    if (v14)
    {
      v7 = SBFEffectiveDeviceClass();
      if (v7 != 2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = +[UIDevice currentDevice];
      if ([v16 userInterfaceIdiom] != &dword_0 + 1)
      {
        v13 = 1;
LABEL_26:

        goto LABEL_27;
      }

      v21 = v16;
    }

    v17 = __sb__runningInSpringBoard();
    v18 = v17;
    if (v17)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = +[UIScreen mainScreen];
      [v3 _referenceBounds];
    }

    v7 = BSSizeRoundForScale();
    v13 = v19 < SBDisplayMetrics[35];
    if ((v18 & 1) == 0)
    {
    }

    if ((v15 & 1) == 0)
    {
      v16 = v21;
      goto LABEL_26;
    }
  }

LABEL_27:
  if ((v9 & 1) == 0)
  {
  }

  if (v6)
  {
    if (v13)
    {
      goto LABEL_33;
    }

LABEL_10:
    *&result = SBPhoneOnPadFallbackLaunchSize(v7).n128_u64[0];
    return result;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_33:
  if ((a1 - 1) >= 2)
  {
    v20 = &SBDisplayMetrics[4];
  }

  else
  {
    v20 = SBDisplayMetrics;
  }

  return *v20;
}

__n128 SBPhoneOnPadFallbackLaunchSize(uint64_t a1)
{
  v3 = __sb__runningInSpringBoard();
  v4 = v3;
  if (v3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return *SBDisplayMetrics;
    }

LABEL_5:
    v6 = __sb__runningInSpringBoard();
    v7 = v6;
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v2 = +[UIScreen mainScreen];
      [v2 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v8 >= SBDisplayMetrics[35])
    {
      result = *&SBDisplayMetrics[4];
      if (v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = *SBDisplayMetrics;
      if (v7)
      {
LABEL_14:
        if (v4)
        {
          return result;
        }

        goto LABEL_15;
      }
    }

    v9 = result;

    result = v9;
    goto LABEL_14;
  }

  v1 = +[UIDevice currentDevice];
  if ([v1 userInterfaceIdiom] == &dword_0 + 1)
  {
    goto LABEL_5;
  }

  result = *SBDisplayMetrics;
LABEL_15:
  v10 = result;

  return v10;
}

id SBLogStartup(uint64_t a1)
{
  if (qword_1D978 != -1)
  {
    sub_E7CC();
  }

  v2 = qword_1D970;

  return v2;
}

void sub_69B8(id a1)
{
  qword_1D970 = os_log_create(SBLoggingSubsystem, "Startup");

  _objc_release_x1();
}

id SBLogAccessory(uint64_t a1)
{
  if (qword_1D988 != -1)
  {
    sub_E7E0();
  }

  v2 = qword_1D980;

  return v2;
}

void sub_6A44(id a1)
{
  qword_1D980 = os_log_create(SBLoggingSubsystem, "Accessory");

  _objc_release_x1();
}

id SBLogAppResize(uint64_t a1)
{
  if (qword_1D998 != -1)
  {
    sub_E7F4();
  }

  v2 = qword_1D990;

  return v2;
}

void sub_6AD0(id a1)
{
  qword_1D990 = os_log_create(SBLoggingSubsystem, "AppResize");

  _objc_release_x1();
}

id SBLogCharging(uint64_t a1)
{
  if (qword_1D9A8 != -1)
  {
    sub_E808();
  }

  v2 = qword_1D9A0;

  return v2;
}

void sub_6B5C(id a1)
{
  qword_1D9A0 = os_log_create(SBLoggingSubsystem, "Charging");

  _objc_release_x1();
}

id SBLogSceneResize(uint64_t a1)
{
  if (qword_1D9B8 != -1)
  {
    sub_E81C();
  }

  v2 = qword_1D9B0;

  return v2;
}

void sub_6BE8(id a1)
{
  qword_1D9B0 = os_log_create(SBLoggingSubsystem, "SceneResize");

  _objc_release_x1();
}

id SBLogScreenTime(uint64_t a1)
{
  if (qword_1D9C8 != -1)
  {
    sub_E830();
  }

  v2 = qword_1D9C0;

  return v2;
}

void sub_6C74(id a1)
{
  qword_1D9C0 = os_log_create(SBLoggingSubsystem, "ScreenTime");

  _objc_release_x1();
}

id SBLogLockScreenHint(uint64_t a1)
{
  if (qword_1D9D8 != -1)
  {
    sub_E844();
  }

  v2 = qword_1D9D0;

  return v2;
}

void sub_6D00(id a1)
{
  qword_1D9D0 = os_log_create(SBLoggingSubsystem, "LockScreenHint");

  _objc_release_x1();
}

id SBLogIcon(uint64_t a1)
{
  if (qword_1D9E8 != -1)
  {
    sub_E858();
  }

  v2 = qword_1D9E0;

  return v2;
}

void sub_6D8C(id a1)
{
  qword_1D9E0 = os_log_create(SBLoggingSubsystem, "Icon");

  _objc_release_x1();
}

id SBLogAlarm(uint64_t a1)
{
  if (qword_1D9F8 != -1)
  {
    sub_E86C();
  }

  v2 = qword_1D9F0;

  return v2;
}

void sub_6E18(id a1)
{
  qword_1D9F0 = os_log_create(SBLoggingSubsystem, "Alarm");

  _objc_release_x1();
}

id SBLogDock(uint64_t a1)
{
  if (qword_1DA08 != -1)
  {
    sub_E880();
  }

  v2 = qword_1DA00;

  return v2;
}

void sub_6EA4(id a1)
{
  qword_1DA00 = os_log_create(SBLoggingSubsystem, "Dock");

  _objc_release_x1();
}

id SBLogBanner(uint64_t a1)
{
  if (qword_1DA18 != -1)
  {
    sub_E894();
  }

  v2 = qword_1DA10;

  return v2;
}

void sub_6F30(id a1)
{
  qword_1DA10 = os_log_create(SBLoggingSubsystem, "Banner");

  _objc_release_x1();
}

id SBLogSound(uint64_t a1)
{
  if (qword_1DA28 != -1)
  {
    sub_E8A8();
  }

  v2 = qword_1DA20;

  return v2;
}

void sub_6FBC(id a1)
{
  qword_1DA20 = os_log_create(SBLoggingSubsystem, "Sound");

  _objc_release_x1();
}

id SBLogUserSession(uint64_t a1)
{
  if (qword_1DA38 != -1)
  {
    sub_E8BC();
  }

  v2 = qword_1DA30;

  return v2;
}

void sub_7048(id a1)
{
  qword_1DA30 = os_log_create(SBLoggingSubsystem, "UserSession");

  _objc_release_x1();
}

id SBLogBacklight(uint64_t a1)
{
  if (qword_1DA48 != -1)
  {
    sub_E8D0();
  }

  v2 = qword_1DA40;

  return v2;
}

void sub_70D4(id a1)
{
  qword_1DA40 = os_log_create(SBLoggingSubsystem, "Backlight");

  _objc_release_x1();
}

id SBLogAlertItems(uint64_t a1)
{
  if (qword_1DA58 != -1)
  {
    sub_E8E4();
  }

  v2 = qword_1DA50;

  return v2;
}

void sub_7160(id a1)
{
  qword_1DA50 = os_log_create(SBLoggingSubsystem, "AlertItems");

  _objc_release_x1();
}

id SBLogAlertItemStack(uint64_t a1)
{
  if (qword_1DA68 != -1)
  {
    sub_E8F8();
  }

  v2 = qword_1DA60;

  return v2;
}

void sub_71EC(id a1)
{
  qword_1DA60 = os_log_create(SBLoggingSubsystem, "AlertItemStack");

  _objc_release_x1();
}

id SBLogLiftToWake(uint64_t a1)
{
  if (qword_1DA78 != -1)
  {
    sub_E90C();
  }

  v2 = qword_1DA70;

  return v2;
}

void sub_7278(id a1)
{
  qword_1DA70 = os_log_create(SBLoggingSubsystem, "LiftToWake");

  _objc_release_x1();
}

id SBLogProximitySensor(uint64_t a1)
{
  if (qword_1DA88 != -1)
  {
    sub_E920();
  }

  v2 = qword_1DA80;

  return v2;
}

void sub_7304(id a1)
{
  qword_1DA80 = os_log_create(SBLoggingSubsystem, "ProximitySensor");

  _objc_release_x1();
}

id SBLogThermal(uint64_t a1)
{
  if (qword_1DA98 != -1)
  {
    sub_E934();
  }

  v2 = qword_1DA90;

  return v2;
}

void sub_7390(id a1)
{
  qword_1DA90 = os_log_create(SBLoggingSubsystem, "Thermal");

  _objc_release_x1();
}

id SBLogHomeAffordance(uint64_t a1)
{
  if (qword_1DAA8 != -1)
  {
    sub_E948();
  }

  v2 = qword_1DAA0;

  return v2;
}

void sub_741C(id a1)
{
  qword_1DAA0 = os_log_create(SBLoggingSubsystem, "HomeAffordance");

  _objc_release_x1();
}

id SBLogTopAffordance(uint64_t a1)
{
  if (qword_1DAB8 != -1)
  {
    sub_E95C();
  }

  v2 = qword_1DAB0;

  return v2;
}

void sub_74A8(id a1)
{
  qword_1DAB0 = os_log_create(SBLoggingSubsystem, "TopAffordance");

  _objc_release_x1();
}

id SBLogAffordancePresenceController(uint64_t a1)
{
  if (qword_1DAC8 != -1)
  {
    sub_E970();
  }

  v2 = qword_1DAC0;

  return v2;
}

void sub_7534(id a1)
{
  qword_1DAC0 = os_log_create(SBLoggingSubsystem, "AffordancePresenceController");

  _objc_release_x1();
}

id SBLogContinuity(uint64_t a1)
{
  if (qword_1DAD8 != -1)
  {
    sub_E984();
  }

  v2 = qword_1DAD0;

  return v2;
}

void sub_75C0(id a1)
{
  qword_1DAD0 = os_log_create(SBLoggingSubsystem, "Continuity");

  _objc_release_x1();
}

id SBLogTelemetrySignposts(uint64_t a1)
{
  if (qword_1DAE8 != -1)
  {
    sub_E998();
  }

  v2 = qword_1DAE0;

  return v2;
}

void sub_764C(id a1)
{
  qword_1DAE0 = os_log_create(SBLoggingSubsystem, "TelemetrySignposts");

  _objc_release_x1();
}

id SBLogDataReset(uint64_t a1)
{
  if (qword_1DAF8 != -1)
  {
    sub_E9AC();
  }

  v2 = qword_1DAF0;

  return v2;
}

void sub_76D8(id a1)
{
  qword_1DAF0 = os_log_create(SBLoggingSubsystem, "DataReset");

  _objc_release_x1();
}

id SBLogUIController(uint64_t a1)
{
  if (qword_1DB08 != -1)
  {
    sub_E9C0();
  }

  v2 = qword_1DB00;

  return v2;
}

void sub_7764(id a1)
{
  qword_1DB00 = os_log_create(SBLoggingSubsystem, "UIController");

  _objc_release_x1();
}

id SBLogAppSwitcher(uint64_t a1)
{
  if (qword_1DB18 != -1)
  {
    sub_E9D4();
  }

  v2 = qword_1DB10;

  return v2;
}

void sub_77F0(id a1)
{
  qword_1DB10 = os_log_create(SBLoggingSubsystem, "AppSwitcher");

  _objc_release_x1();
}

id SBLogAudioControl(uint64_t a1)
{
  if (qword_1DB28 != -1)
  {
    sub_E9E8();
  }

  v2 = qword_1DB20;

  return v2;
}

void sub_787C(id a1)
{
  qword_1DB20 = os_log_create(SBLoggingSubsystem, "AudioControl");

  _objc_release_x1();
}

id SBLogSwitcherSnapshotCache(uint64_t a1)
{
  if (qword_1DB38 != -1)
  {
    sub_E9FC();
  }

  v2 = qword_1DB30;

  return v2;
}

void sub_7908(id a1)
{
  qword_1DB30 = os_log_create(SBLoggingSubsystem, "SwitcherSnapshotCache");

  _objc_release_x1();
}

id SBLogIconController(uint64_t a1)
{
  if (qword_1DB48 != -1)
  {
    sub_EA10();
  }

  v2 = qword_1DB40;

  return v2;
}

void sub_7994(id a1)
{
  qword_1DB40 = os_log_create(SBLoggingSubsystem, "IconController");

  _objc_release_x1();
}

id SBLogElasticHUD(uint64_t a1)
{
  if (qword_1DB58 != -1)
  {
    sub_EA24();
  }

  v2 = qword_1DB50;

  return v2;
}

void sub_7A20(id a1)
{
  qword_1DB50 = os_log_create(SBLoggingSubsystem, "ElasticHUD");

  _objc_release_x1();
}

id SBLogBrightnessHUD(uint64_t a1)
{
  if (qword_1DB68 != -1)
  {
    sub_EA38();
  }

  v2 = qword_1DB60;

  return v2;
}

void sub_7AAC(id a1)
{
  qword_1DB60 = os_log_create(SBLoggingSubsystem, "BrightnessHUD");

  _objc_release_x1();
}

id SBLogVolumeHUD(uint64_t a1)
{
  if (qword_1DB78 != -1)
  {
    sub_EA4C();
  }

  v2 = qword_1DB70;

  return v2;
}

void sub_7B38(id a1)
{
  qword_1DB70 = os_log_create(SBLoggingSubsystem, "VolumeHUD");

  _objc_release_x1();
}

id SBLogRingerHUD(uint64_t a1)
{
  if (qword_1DB88 != -1)
  {
    sub_EA60();
  }

  v2 = qword_1DB80;

  return v2;
}

void sub_7BC4(id a1)
{
  qword_1DB80 = os_log_create(SBLoggingSubsystem, "RingerHUD");

  _objc_release_x1();
}

id SBLogFlashlightHUD(uint64_t a1)
{
  if (qword_1DB98 != -1)
  {
    sub_EA74();
  }

  v2 = qword_1DB90;

  return v2;
}

void sub_7C50(id a1)
{
  qword_1DB90 = os_log_create(SBLoggingSubsystem, "FlashlightHUD");

  _objc_release_x1();
}

id SBLogAppStatusBars(uint64_t a1)
{
  if (qword_1DBA8 != -1)
  {
    sub_EA88();
  }

  v2 = qword_1DBA0;

  return v2;
}

void sub_7CDC(id a1)
{
  qword_1DBA0 = os_log_create(SBLoggingSubsystem, "AppStatusBars");

  _objc_release_x1();
}

id SBLogAVSystemControllerCache(uint64_t a1)
{
  if (qword_1DBB8 != -1)
  {
    sub_EA9C();
  }

  v2 = qword_1DBB0;

  return v2;
}

void sub_7D68(id a1)
{
  qword_1DBB0 = os_log_create(SBLoggingSubsystem, "AVSystemControllerCache");

  _objc_release_x1();
}

id SBLogGreen(uint64_t a1)
{
  if (qword_1DBC8 != -1)
  {
    sub_EAB0();
  }

  v2 = qword_1DBC0;

  return v2;
}

void sub_7DF4(id a1)
{
  qword_1DBC0 = os_log_create(SBLoggingSubsystem, "Green");

  _objc_release_x1();
}

id SBLogChrono(uint64_t a1)
{
  if (qword_1DBD8 != -1)
  {
    sub_EAC4();
  }

  v2 = qword_1DBD0;

  return v2;
}

void sub_7E80(id a1)
{
  qword_1DBD0 = os_log_create(SBLoggingSubsystem, "Chrono");

  _objc_release_x1();
}

id SBLogChronoVerbose(uint64_t a1)
{
  if (qword_1DBE8 != -1)
  {
    sub_EAD8();
  }

  v2 = qword_1DBE0;

  return v2;
}

void sub_7F0C(id a1)
{
  qword_1DBE0 = os_log_create(SBLoggingSubsystem, "ChronoVerbose");

  _objc_release_x1();
}

id SBLogProactiveHome(uint64_t a1)
{
  if (qword_1DBF8 != -1)
  {
    sub_EAEC();
  }

  v2 = qword_1DBF0;

  return v2;
}

void sub_7F98(id a1)
{
  qword_1DBF0 = os_log_create(SBLoggingSubsystem, "ProactiveHome");

  _objc_release_x1();
}

id SBLogProactiveAppLibrary(uint64_t a1)
{
  if (qword_1DC08 != -1)
  {
    sub_EB00();
  }

  v2 = qword_1DC00;

  return v2;
}

void sub_8024(id a1)
{
  qword_1DC00 = os_log_create(SBLoggingSubsystem, "ProactiveAppLibrary");

  _objc_release_x1();
}

id SBLogClassicMode(uint64_t a1)
{
  if (qword_1DC18 != -1)
  {
    sub_EB14();
  }

  v2 = qword_1DC10;

  return v2;
}

void sub_80B0(id a1)
{
  qword_1DC10 = os_log_create(SBLoggingSubsystem, "ClassicMode");

  _objc_release_x1();
}

id SBLogHUD(uint64_t a1)
{
  if (qword_1DC28 != -1)
  {
    sub_EB28();
  }

  v2 = qword_1DC20;

  return v2;
}

void sub_813C(id a1)
{
  qword_1DC20 = os_log_create(SBLoggingSubsystem, "HUD");

  _objc_release_x1();
}

id SBLogWebClip(uint64_t a1)
{
  if (qword_1DC38 != -1)
  {
    sub_EB3C();
  }

  v2 = qword_1DC30;

  return v2;
}

void sub_81C8(id a1)
{
  qword_1DC30 = os_log_create(SBLoggingSubsystem, "WebClip");

  _objc_release_x1();
}

id SBLogPencilSqueeze(uint64_t a1)
{
  if (qword_1DC48 != -1)
  {
    sub_EB50();
  }

  v2 = qword_1DC40;

  return v2;
}

void sub_8254(id a1)
{
  qword_1DC40 = os_log_create(SBLoggingSubsystem, "PencilSqueeze");

  _objc_release_x1();
}

id SBLogPointer(uint64_t a1)
{
  if (qword_1DC58 != -1)
  {
    sub_EB64();
  }

  v2 = qword_1DC50;

  return v2;
}

void sub_82E0(id a1)
{
  qword_1DC50 = os_log_create(SBLoggingSubsystem, "Pointer");

  _objc_release_x1();
}

id SBLogHIDKeyboardEvents(uint64_t a1)
{
  if (qword_1DC68 != -1)
  {
    sub_EB78();
  }

  v2 = qword_1DC60;

  return v2;
}

void sub_836C(id a1)
{
  qword_1DC60 = os_log_create(SBLoggingSubsystem, "HIDKeyboardEvents");

  _objc_release_x1();
}

id SBLogReachability(uint64_t a1)
{
  if (qword_1DC78 != -1)
  {
    sub_EB8C();
  }

  v2 = qword_1DC70;

  return v2;
}

void sub_83F8(id a1)
{
  qword_1DC70 = os_log_create(SBLoggingSubsystem, "Reachability");

  _objc_release_x1();
}

id SBLogSmartCover(uint64_t a1)
{
  if (qword_1DC88 != -1)
  {
    sub_EBA0();
  }

  v2 = qword_1DC80;

  return v2;
}

void sub_8484(id a1)
{
  qword_1DC80 = os_log_create(SBLoggingSubsystem, "SmartCover");

  _objc_release_x1();
}

id SBLogInteractiveScreenshot(uint64_t a1)
{
  if (qword_1DC98 != -1)
  {
    sub_EBB4();
  }

  v2 = qword_1DC90;

  return v2;
}

void sub_8510(id a1)
{
  qword_1DC90 = os_log_create(SBLoggingSubsystem, "InteractiveScreenshot");

  _objc_release_x1();
}

id SBLogPPT(uint64_t a1)
{
  if (qword_1DCA8 != -1)
  {
    sub_EBC8();
  }

  v2 = qword_1DCA0;

  return v2;
}

void sub_859C(id a1)
{
  qword_1DCA0 = os_log_create(SBLoggingSubsystem, "PPT");

  _objc_release_x1();
}

id SBLogDodging(uint64_t a1)
{
  if (qword_1DCB8 != -1)
  {
    sub_EBDC();
  }

  v2 = qword_1DCB0;

  return v2;
}

void sub_8628(id a1)
{
  qword_1DCB0 = os_log_create(SBLoggingSubsystem, "Dodging");

  _objc_release_x1();
}

id SBLogShelfLiveContent(uint64_t a1)
{
  if (qword_1DCC8 != -1)
  {
    sub_EBF0();
  }

  v2 = qword_1DCC0;

  return v2;
}

void sub_86B4(id a1)
{
  qword_1DCC0 = os_log_create(SBLoggingSubsystem, "ShelfLiveContent");

  _objc_release_x1();
}

id SBLogLegibility(uint64_t a1)
{
  if (qword_1DCD8 != -1)
  {
    sub_EC04();
  }

  v2 = qword_1DCD0;

  return v2;
}

void sub_8740(id a1)
{
  qword_1DCD0 = os_log_create(SBLoggingSubsystem, "Legibility");

  _objc_release_x1();
}

id SBLogWorkspace(uint64_t a1)
{
  if (qword_1DCE8 != -1)
  {
    sub_EC18();
  }

  v2 = qword_1DCE0;

  return v2;
}

void sub_87CC(id a1)
{
  qword_1DCE0 = os_log_create(SBLoggingSubsystem, "Workspace");

  _objc_release_x1();
}

id SBLogTransaction(uint64_t a1)
{
  if (qword_1DCF8 != -1)
  {
    sub_EC2C();
  }

  v2 = qword_1DCF0;

  return v2;
}

void sub_8858(id a1)
{
  qword_1DCF0 = os_log_create(SBLoggingSubsystem, "Transaction");

  _objc_release_x1();
}

id SBLogTransactionVerbose(uint64_t a1)
{
  if (qword_1DD08 != -1)
  {
    sub_EC40();
  }

  v2 = qword_1DD00;

  return v2;
}

void sub_88E4(id a1)
{
  qword_1DD00 = os_log_create(SBLoggingSubsystem, "TransactionVerbose");

  _objc_release_x1();
}

id SBLogCameraActivation(uint64_t a1)
{
  if (qword_1DD18 != -1)
  {
    sub_EC54();
  }

  v2 = qword_1DD10;

  return v2;
}

void sub_8970(id a1)
{
  qword_1DD10 = os_log_create(SBLoggingSubsystem, "CameraActivation");

  _objc_release_x1();
}

id SBLogSiri(uint64_t a1)
{
  if (qword_1DD28 != -1)
  {
    sub_EC68();
  }

  v2 = qword_1DD20;

  return v2;
}

void sub_89FC(id a1)
{
  qword_1DD20 = os_log_create(SBLoggingSubsystem, "Siri");

  _objc_release_x1();
}

id SBLogActivity(uint64_t a1)
{
  if (qword_1DD38 != -1)
  {
    sub_EC7C();
  }

  v2 = qword_1DD30;

  return v2;
}

void sub_8A88(id a1)
{
  qword_1DD30 = os_log_create(SBLoggingSubsystem, "Activity");

  _objc_release_x1();
}

id SBLogShellSceneKit(uint64_t a1)
{
  if (qword_1DD48 != -1)
  {
    sub_EC90();
  }

  v2 = qword_1DD40;

  return v2;
}

void sub_8B14(id a1)
{
  qword_1DD40 = os_log_create(SBLoggingSubsystem, "ShellSceneKit");

  _objc_release_x1();
}

id SBLogMenuBar(uint64_t a1)
{
  if (qword_1DD58 != -1)
  {
    sub_ECA4();
  }

  v2 = qword_1DD50;

  return v2;
}

void sub_8BA0(id a1)
{
  qword_1DD50 = os_log_create(SBLoggingSubsystem, "MenuBar");

  _objc_release_x1();
}

id SBLogVideoOut(uint64_t a1)
{
  if (qword_1DD68 != -1)
  {
    sub_ECB8();
  }

  v2 = qword_1DD60;

  return v2;
}

void sub_8C2C(id a1)
{
  qword_1DD60 = os_log_create(SBLoggingSubsystem, "VideoOut");

  _objc_release_x1();
}

id SBLogStreamBuddy(uint64_t a1)
{
  if (qword_1DD78 != -1)
  {
    sub_ECCC();
  }

  v2 = qword_1DD70;

  return v2;
}

void sub_8CB8(id a1)
{
  qword_1DD70 = os_log_create(SBLoggingSubsystem, "StreamBuddy");

  _objc_release_x1();
}

id SBLogScreenLongevityController(uint64_t a1)
{
  if (qword_1DD88 != -1)
  {
    sub_ECE0();
  }

  v2 = qword_1DD80;

  return v2;
}

void sub_8D44(id a1)
{
  qword_1DD80 = os_log_create(SBLoggingSubsystem, "ScreenLongevityController");

  _objc_release_x1();
}

id SBLogAppLibrary(uint64_t a1)
{
  if (qword_1DD98 != -1)
  {
    sub_ECF4();
  }

  v2 = qword_1DD90;

  return v2;
}

void sub_8DD0(id a1)
{
  qword_1DD90 = os_log_create(FBSApplicationLibraryLoggingSubsystem, "sb.default");

  _objc_release_x1();
}

id SBLogAppPlaceholder(uint64_t a1)
{
  if (qword_1DDA8 != -1)
  {
    sub_ED08();
  }

  v2 = qword_1DDA0;

  return v2;
}

void sub_8E5C(id a1)
{
  qword_1DDA0 = os_log_create(FBSApplicationLibraryLoggingSubsystem, "sb.placeholder");

  _objc_release_x1();
}

id SBLogIconStyle(uint64_t a1)
{
  if (qword_1DDB8 != -1)
  {
    sub_ED1C();
  }

  v2 = qword_1DDB0;

  return v2;
}

void sub_8EE8(id a1)
{
  qword_1DDB0 = os_log_create(SBLoggingSubsystem, "IconStyle");

  _objc_release_x1();
}

id SBLogShellScene(uint64_t a1)
{
  if (qword_1DDC8 != -1)
  {
    sub_ED30();
  }

  v2 = qword_1DDC0;

  return v2;
}

void sub_8F74(id a1)
{
  qword_1DDC0 = os_log_create(SBLoggingSubsystem, "ShellScene");

  _objc_release_x1();
}

id SBLogSystemGesture(uint64_t a1)
{
  if (qword_1DDD8 != -1)
  {
    sub_ED44();
  }

  v2 = qword_1DDD0;

  return v2;
}

void sub_9000(id a1)
{
  qword_1DDD0 = os_log_create(SBLoggingSubsystem, "SystemGesture");

  _objc_release_x1();
}

id SBLogSystemGestureDetail(uint64_t a1)
{
  if (qword_1DDE8 != -1)
  {
    sub_ED58();
  }

  v2 = qword_1DDE0;

  return v2;
}

void sub_908C(id a1)
{
  qword_1DDE0 = os_log_create(SBLoggingSubsystem, "SystemGestureDetail");

  _objc_release_x1();
}

id SBLogSystemGestureControlCenter(uint64_t a1)
{
  if (qword_1DDF8 != -1)
  {
    sub_ED6C();
  }

  v2 = qword_1DDF0;

  return v2;
}

void sub_9118(id a1)
{
  qword_1DDF0 = os_log_create(SBLoggingSubsystem, "SystemGestureControlCenter");

  _objc_release_x1();
}

id SBLogSystemGestureCoverSheet(uint64_t a1)
{
  if (qword_1DE08 != -1)
  {
    sub_ED80();
  }

  v2 = qword_1DE00;

  return v2;
}

void sub_91A4(id a1)
{
  qword_1DE00 = os_log_create(SBLoggingSubsystem, "SystemGestureCoverSheet");

  _objc_release_x1();
}

id SBLogSystemGestureBannerDismiss(uint64_t a1)
{
  if (qword_1DE18 != -1)
  {
    sub_ED94();
  }

  v2 = qword_1DE10;

  return v2;
}

void sub_9230(id a1)
{
  qword_1DE10 = os_log_create(SBLoggingSubsystem, "SystemGestureBannerDismiss");

  _objc_release_x1();
}

id SBLogSystemGestureScrunch(uint64_t a1)
{
  if (qword_1DE28 != -1)
  {
    sub_EDA8();
  }

  v2 = qword_1DE20;

  return v2;
}

void sub_92BC(id a1)
{
  qword_1DE20 = os_log_create(SBLoggingSubsystem, "SystemGestureScrunch");

  _objc_release_x1();
}

id SBLogSystemGestureAppSwitcher(uint64_t a1)
{
  if (qword_1DE38 != -1)
  {
    sub_EDBC();
  }

  v2 = qword_1DE30;

  return v2;
}

void sub_9348(id a1)
{
  qword_1DE30 = os_log_create(SBLoggingSubsystem, "SystemGestureAppSwitcher");

  _objc_release_x1();
}

id SBLogSystemGestureSwitchApp(uint64_t a1)
{
  if (qword_1DE48 != -1)
  {
    sub_EDD0();
  }

  v2 = qword_1DE40;

  return v2;
}

void sub_93D4(id a1)
{
  qword_1DE40 = os_log_create(SBLoggingSubsystem, "SystemGestureSwitchApp");

  _objc_release_x1();
}

id SBLogSystemGestureHome(uint64_t a1)
{
  if (qword_1DE58 != -1)
  {
    sub_EDE4();
  }

  v2 = qword_1DE50;

  return v2;
}

void sub_9460(id a1)
{
  qword_1DE50 = os_log_create(SBLoggingSubsystem, "SystemGestureHome");

  _objc_release_x1();
}

id SBLogSystemGesturePencilSqueeze(uint64_t a1)
{
  if (qword_1DE68 != -1)
  {
    sub_EDF8();
  }

  v2 = qword_1DE60;

  return v2;
}

void sub_94EC(id a1)
{
  qword_1DE60 = os_log_create(SBLoggingSubsystem, "SystemGesturePencilSqueeze");

  _objc_release_x1();
}

id SBLogAppSwitcherDrag(uint64_t a1)
{
  if (qword_1DE78 != -1)
  {
    sub_EE0C();
  }

  v2 = qword_1DE70;

  return v2;
}

void sub_9578(id a1)
{
  qword_1DE70 = os_log_create(SBLoggingSubsystem, "AppSwitcherDrag");

  _objc_release_x1();
}

id SBLogWidgetDiscoverability(uint64_t a1)
{
  if (qword_1DE88 != -1)
  {
    sub_EE20();
  }

  v2 = qword_1DE80;

  return v2;
}

void sub_9604(id a1)
{
  qword_1DE80 = os_log_create(SBLoggingSubsystem, "WidgetDiscoverability");

  _objc_release_x1();
}

id SBLogWidgetIntent(uint64_t a1)
{
  if (qword_1DE98 != -1)
  {
    sub_EE34();
  }

  v2 = qword_1DE90;

  return v2;
}

void sub_9690(id a1)
{
  qword_1DE90 = os_log_create(SBLoggingSubsystem, "WidgetIntent");

  _objc_release_x1();
}

id SBLogSystemActionCoaching(uint64_t a1)
{
  if (qword_1DEA8 != -1)
  {
    sub_EE48();
  }

  v2 = qword_1DEA0;

  return v2;
}

void sub_971C(id a1)
{
  qword_1DEA0 = os_log_create(SBLoggingSubsystem, "SystemActionCoaching");

  _objc_release_x1();
}

id SBLogSystemActionControl(uint64_t a1)
{
  if (qword_1DEB8 != -1)
  {
    sub_EE5C();
  }

  v2 = qword_1DEB0;

  return v2;
}

void sub_97A8(id a1)
{
  qword_1DEB0 = os_log_create(SBLoggingSubsystem, "SystemActionControl");

  _objc_release_x1();
}

id SBLogSystemActionDataSource(uint64_t a1)
{
  if (qword_1DEC8 != -1)
  {
    sub_EE70();
  }

  v2 = qword_1DEC0;

  return v2;
}

void sub_9834(id a1)
{
  qword_1DEC0 = os_log_create(SBLoggingSubsystem, "SystemActionDataSource");

  _objc_release_x1();
}

id SBLogSystemActionExecution(uint64_t a1)
{
  if (qword_1DED8 != -1)
  {
    sub_EE84();
  }

  v2 = qword_1DED0;

  return v2;
}

void sub_98C0(id a1)
{
  qword_1DED0 = os_log_create(SBLoggingSubsystem, "SystemActionExecution");

  _objc_release_x1();
}

id SBLogSystemActionPreviewing(uint64_t a1)
{
  if (qword_1DEE8 != -1)
  {
    sub_EE98();
  }

  v2 = qword_1DEE0;

  return v2;
}

void sub_994C(id a1)
{
  qword_1DEE0 = os_log_create(SBLoggingSubsystem, "SystemActionPreviewing");

  _objc_release_x1();
}

id SBLogSystemActionSuppression(uint64_t a1)
{
  if (qword_1DEF8 != -1)
  {
    sub_EEAC();
  }

  v2 = qword_1DEF0;

  return v2;
}

void sub_99D8(id a1)
{
  qword_1DEF0 = os_log_create(SBLoggingSubsystem, "SystemActionSuppression");

  _objc_release_x1();
}

id SBLogSystemApertureController(uint64_t a1)
{
  if (qword_1DF08 != -1)
  {
    sub_EEC0();
  }

  v2 = qword_1DF00;

  return v2;
}

void sub_9A64(id a1)
{
  qword_1DF00 = os_log_create(SBLoggingSubsystem, "SystemApertureController");

  _objc_release_x1();
}

id SBLogSystemApertureContainer(uint64_t a1)
{
  if (qword_1DF18 != -1)
  {
    sub_EED4();
  }

  v2 = qword_1DF10;

  return v2;
}

void sub_9AF0(id a1)
{
  qword_1DF10 = os_log_create(SBLoggingSubsystem, "SystemApertureContainer");

  _objc_release_x1();
}

id SBLogSystemApertureDebuggingUtility(uint64_t a1)
{
  if (qword_1DF28 != -1)
  {
    sub_EEE8();
  }

  v2 = qword_1DF20;

  return v2;
}

void sub_9B7C(id a1)
{
  qword_1DF20 = os_log_create(SBLoggingSubsystem, "SystemApertureDebuggingUtility");

  _objc_release_x1();
}

id SBLogSystemApertureNotice(uint64_t a1)
{
  if (qword_1DF38 != -1)
  {
    sub_EEFC();
  }

  v2 = qword_1DF30;

  return v2;
}

void sub_9C08(id a1)
{
  qword_1DF30 = os_log_create(SBLoggingSubsystem, "SystemApertureNotice");

  _objc_release_x1();
}

id SBLogSystemAperturePills(uint64_t a1)
{
  if (qword_1DF48 != -1)
  {
    sub_EF10();
  }

  v2 = qword_1DF40;

  return v2;
}

void sub_9C94(id a1)
{
  qword_1DF40 = os_log_create(SBLoggingSubsystem, "SystemAperturePills");

  _objc_release_x1();
}

id SBLogSystemApertureLocalElement(uint64_t a1)
{
  if (qword_1DF58 != -1)
  {
    sub_EF24();
  }

  v2 = qword_1DF50;

  return v2;
}

void sub_9D20(id a1)
{
  qword_1DF50 = os_log_create(SBLoggingSubsystem, "SystemApertureLocalElement");

  _objc_release_x1();
}

id SBLogSystemApertureLockElement(uint64_t a1)
{
  if (qword_1DF68 != -1)
  {
    sub_EF38();
  }

  v2 = qword_1DF60;

  return v2;
}

void sub_9DAC(id a1)
{
  qword_1DF60 = os_log_create(SBLoggingSubsystem, "SystemApertureLockElement");

  _objc_release_x1();
}

id SBLogSystemApertureMediation(uint64_t a1)
{
  if (qword_1DF78 != -1)
  {
    sub_EF4C();
  }

  v2 = qword_1DF70;

  return v2;
}

void sub_9E38(id a1)
{
  qword_1DF70 = os_log_create(SBLoggingSubsystem, "SystemApertureMediation");

  _objc_release_x1();
}

id SBLogSystemApertureOrientation(uint64_t a1)
{
  if (qword_1DF88 != -1)
  {
    sub_EF60();
  }

  v2 = qword_1DF80;

  return v2;
}

void sub_9EC4(id a1)
{
  qword_1DF80 = os_log_create(SBLoggingSubsystem, "SystemApertureOrientation");

  _objc_release_x1();
}

id SBLogSystemApertureAccessibility(uint64_t a1)
{
  if (qword_1DF98 != -1)
  {
    sub_EF74();
  }

  v2 = qword_1DF90;

  return v2;
}

void sub_9F50(id a1)
{
  qword_1DF90 = os_log_create(SBLoggingSubsystem, "SystemApertureAccessibility");

  _objc_release_x1();
}

id SBLogSystemApertureSecureFlipBookElements(uint64_t a1)
{
  if (qword_1DFA8 != -1)
  {
    sub_EF88();
  }

  v2 = qword_1DFA0;

  return v2;
}

void sub_9FDC(id a1)
{
  qword_1DFA0 = os_log_create(SBLoggingSubsystem, "SystemApertureSecureFlipBookElements");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStack(uint64_t a1)
{
  if (qword_1DFB8 != -1)
  {
    sub_EF9C();
  }

  v2 = qword_1DFB0;

  return v2;
}

void sub_A068(id a1)
{
  qword_1DFB0 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStack");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStackMutation(uint64_t a1)
{
  if (qword_1DFC8 != -1)
  {
    sub_EFB0();
  }

  v2 = qword_1DFC0;

  return v2;
}

void sub_A0F4(id a1)
{
  qword_1DFC0 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStackMutation");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStackSettling(uint64_t a1)
{
  if (qword_1DFD8 != -1)
  {
    sub_EFC4();
  }

  v2 = qword_1DFD0;

  return v2;
}

void sub_A180(id a1)
{
  qword_1DFD0 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStackSettling");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStackElements(uint64_t a1)
{
  if (qword_1DFE8 != -1)
  {
    sub_EFD8();
  }

  v2 = qword_1DFE0;

  return v2;
}

void sub_A20C(id a1)
{
  qword_1DFE0 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStackElements");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStackRenderingCloning(uint64_t a1)
{
  if (qword_1DFF8 != -1)
  {
    sub_EFEC();
  }

  v2 = qword_1DFF0;

  return v2;
}

void sub_A298(id a1)
{
  qword_1DFF0 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStackRenderingCloning");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStackMitosis(uint64_t a1)
{
  if (qword_1E008 != -1)
  {
    sub_F000();
  }

  v2 = qword_1E000;

  return v2;
}

void sub_A324(id a1)
{
  qword_1E000 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStackMitosis");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStackSequencedBehaviors(uint64_t a1)
{
  if (qword_1E018 != -1)
  {
    sub_F014();
  }

  v2 = qword_1E010;

  return v2;
}

void sub_A3B0(id a1)
{
  qword_1E010 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStackSequencedBehaviors");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStackGestures(uint64_t a1)
{
  if (qword_1E028 != -1)
  {
    sub_F028();
  }

  v2 = qword_1E020;

  return v2;
}

void sub_A43C(id a1)
{
  qword_1E020 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStackGestures");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStackPruning(uint64_t a1)
{
  if (qword_1E038 != -1)
  {
    sub_F03C();
  }

  v2 = qword_1E030;

  return v2;
}

void sub_A4C8(id a1)
{
  qword_1E030 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStackPruning");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStackDynamicsAnimations(uint64_t a1)
{
  if (qword_1E048 != -1)
  {
    sub_F050();
  }

  v2 = qword_1E040;

  return v2;
}

void sub_A554(id a1)
{
  qword_1E040 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStackDynamicsAnimations");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStackIndicator(uint64_t a1)
{
  if (qword_1E058 != -1)
  {
    sub_F064();
  }

  v2 = qword_1E050;

  return v2;
}

void sub_A5E0(id a1)
{
  qword_1E050 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStackIndicator");

  _objc_release_x1();
}

id SBLogSystemAperturePreferencesStackSecureFlipBookElements(uint64_t a1)
{
  if (qword_1E068 != -1)
  {
    sub_F078();
  }

  v2 = qword_1E060;

  return v2;
}

void sub_A66C(id a1)
{
  qword_1E060 = os_log_create(SBLoggingSubsystem, "SystemAperturePreferencesStackSecureFlipBookElements");

  _objc_release_x1();
}

id SBLogCoverGesture(uint64_t a1)
{
  if (qword_1E078 != -1)
  {
    sub_F08C();
  }

  v2 = qword_1E070;

  return v2;
}

void sub_A6F8(id a1)
{
  qword_1E070 = os_log_create(SBLoggingSubsystem, "CoverGesture");

  _objc_release_x1();
}

id SBLogButtonsHome(uint64_t a1)
{
  if (qword_1E088 != -1)
  {
    sub_F0A0();
  }

  v2 = qword_1E080;

  return v2;
}

void sub_A784(id a1)
{
  qword_1E080 = os_log_create(SBButtonLoggingSubsystem, "Home");

  _objc_release_x1();
}

id SBLogButtonsLock(uint64_t a1)
{
  if (qword_1E098 != -1)
  {
    sub_F0B4();
  }

  v2 = qword_1E090;

  return v2;
}

void sub_A80C(id a1)
{
  qword_1E090 = os_log_create(SBButtonLoggingSubsystem, "Lock");

  _objc_release_x1();
}

id SBLogButtonsVolume(uint64_t a1)
{
  if (qword_1E0A8 != -1)
  {
    sub_F0C8();
  }

  v2 = qword_1E0A0;

  return v2;
}

void sub_A894(id a1)
{
  qword_1E0A0 = os_log_create(SBButtonLoggingSubsystem, "Volume");

  _objc_release_x1();
}

id SBLogButtonsAction(uint64_t a1)
{
  if (qword_1E0B8 != -1)
  {
    sub_F0DC();
  }

  v2 = qword_1E0B0;

  return v2;
}

void sub_A91C(id a1)
{
  qword_1E0B0 = os_log_create(SBButtonLoggingSubsystem, "Action");

  _objc_release_x1();
}

id SBLogButtonsCombo(uint64_t a1)
{
  if (qword_1E0C8 != -1)
  {
    sub_F0F0();
  }

  v2 = qword_1E0C0;

  return v2;
}

void sub_A9A4(id a1)
{
  qword_1E0C0 = os_log_create(SBButtonLoggingSubsystem, "Combo");

  _objc_release_x1();
}

id SBLogButtonsInteraction(uint64_t a1)
{
  if (qword_1E0D8 != -1)
  {
    sub_F104();
  }

  v2 = qword_1E0D0;

  return v2;
}

void sub_AA2C(id a1)
{
  qword_1E0D0 = os_log_create(SBButtonLoggingSubsystem, "Interaction");

  _objc_release_x1();
}

id SBLogButtonsCamera(uint64_t a1)
{
  if (qword_1E0E8 != -1)
  {
    sub_F118();
  }

  v2 = qword_1E0E0;

  return v2;
}

void sub_AAB4(id a1)
{
  qword_1E0E0 = os_log_create(SBButtonLoggingSubsystem, "Camera");

  _objc_release_x1();
}

id SBLogButtonsCapture(uint64_t a1)
{
  if (qword_1E0F8 != -1)
  {
    sub_F12C();
  }

  v2 = qword_1E0F0;

  return v2;
}

void sub_AB3C(id a1)
{
  qword_1E0F0 = os_log_create(SBButtonLoggingSubsystem, "Capture");

  _objc_release_x1();
}

id SBLogStationaryMotionDetector(uint64_t a1)
{
  if (qword_1E108 != -1)
  {
    sub_F140();
  }

  v2 = qword_1E100;

  return v2;
}

void sub_ABC4(id a1)
{
  qword_1E100 = os_log_create(SBLoggingSubsystem, "StationaryMotionDetector");

  _objc_release_x1();
}

id SBLogButtonHintingUI(uint64_t a1)
{
  if (qword_1E118 != -1)
  {
    sub_F154();
  }

  v2 = qword_1E110;

  return v2;
}

void sub_AC50(id a1)
{
  qword_1E110 = os_log_create(SBLoggingSubsystem, "ButtonHintingUI");

  _objc_release_x1();
}

id SBLogCameraCaptureLaunch(uint64_t a1)
{
  if (qword_1E128 != -1)
  {
    sub_F168();
  }

  v2 = qword_1E120;

  return v2;
}

void sub_ACDC(id a1)
{
  qword_1E120 = os_log_create(SBLoggingSubsystem, "CameraCaptureLaunch");

  _objc_release_x1();
}

id SBLogCameraCaptureSuppression(uint64_t a1)
{
  if (qword_1E138 != -1)
  {
    sub_F17C();
  }

  v2 = qword_1E130;

  return v2;
}

void sub_AD68(id a1)
{
  qword_1E130 = os_log_create(SBLoggingSubsystem, "CameraCaptureSuppression");

  _objc_release_x1();
}

id SBLogCameraCaptureButtonScanMode(uint64_t a1)
{
  if (qword_1E148 != -1)
  {
    sub_F190();
  }

  v2 = qword_1E140;

  return v2;
}

void sub_ADF4(id a1)
{
  qword_1E140 = os_log_create(SBLoggingSubsystem, "CameraCaptureButtonScanMode");

  _objc_release_x1();
}

id SBLogCameraCaptureOverlay(uint64_t a1)
{
  if (qword_1E158 != -1)
  {
    sub_F1A4();
  }

  v2 = qword_1E150;

  return v2;
}

void sub_AE80(id a1)
{
  qword_1E150 = os_log_create(SBLoggingSubsystem, "CameraCaptureOverlay");

  _objc_release_x1();
}

id SBLogCameraCaptureLaunchAnimation(uint64_t a1)
{
  if (qword_1E168 != -1)
  {
    sub_F1B8();
  }

  v2 = qword_1E160;

  return v2;
}

void sub_AF0C(id a1)
{
  qword_1E160 = os_log_create(SBLoggingSubsystem, "CameraCaptureLaunchAnimation");

  _objc_release_x1();
}

id SBLogCameraCaptureRestriction(uint64_t a1)
{
  if (qword_1E178 != -1)
  {
    sub_F1CC();
  }

  v2 = qword_1E170;

  return v2;
}

void sub_AF98(id a1)
{
  qword_1E170 = os_log_create(SBLoggingSubsystem, "CameraCaptureRestriction");

  _objc_release_x1();
}

id SBLogCameraCaptureStudyLogs(uint64_t a1)
{
  if (qword_1E188 != -1)
  {
    sub_F1E0();
  }

  v2 = qword_1E180;

  return v2;
}

void sub_B024(id a1)
{
  qword_1E180 = os_log_create(SBLoggingSubsystem, "CameraCaptureStudyLogs");

  _objc_release_x1();
}

id SBLogCameraCaptureSessionLogs(uint64_t a1)
{
  if (qword_1E198 != -1)
  {
    sub_F1F4();
  }

  v2 = qword_1E190;

  return v2;
}

void sub_B0B0(id a1)
{
  qword_1E190 = os_log_create(SBLoggingSubsystem, "CameraCaptureSessionLogs");

  _objc_release_x1();
}

id SBLogAmbientPresentation(uint64_t a1)
{
  if (qword_1E1A8 != -1)
  {
    sub_F208();
  }

  v2 = qword_1E1A0;

  return v2;
}

void sub_B13C(id a1)
{
  qword_1E1A0 = os_log_create(SBLoggingSubsystem, "AmbientPresentation");

  _objc_release_x1();
}

id SBLogAmbientChargerConnection(uint64_t a1)
{
  if (qword_1E1B8 != -1)
  {
    sub_F21C();
  }

  v2 = qword_1E1B0;

  return v2;
}

void sub_B1C8(id a1)
{
  qword_1E1B0 = os_log_create(SBLoggingSubsystem, "AmbientChargerConnection");

  _objc_release_x1();
}

id SBLogAmbientIdleTimer(uint64_t a1)
{
  if (qword_1E1C8 != -1)
  {
    sub_F230();
  }

  v2 = qword_1E1C0;

  return v2;
}

void sub_B254(id a1)
{
  qword_1E1C0 = os_log_create(SBLoggingSubsystem, "AmbientIdleTimer");

  _objc_release_x1();
}

id SBLogAmbientAuthentication(uint64_t a1)
{
  if (qword_1E1D8 != -1)
  {
    sub_F244();
  }

  v2 = qword_1E1D0;

  return v2;
}

void sub_B2E0(id a1)
{
  qword_1E1D0 = os_log_create(SBLoggingSubsystem, "AmbientAuthentication");

  _objc_release_x1();
}

id SBLogAmbientDeviceState(uint64_t a1)
{
  if (qword_1E1E8 != -1)
  {
    sub_F258();
  }

  v2 = qword_1E1E0;

  return v2;
}

void sub_B36C(id a1)
{
  qword_1E1E0 = os_log_create(SBLoggingSubsystem, "AmbientDeviceState");

  _objc_release_x1();
}

id SBLogBiome(uint64_t a1)
{
  if (qword_1E1F8 != -1)
  {
    sub_F26C();
  }

  v2 = qword_1E1F0;

  return v2;
}

void sub_B3F8(id a1)
{
  qword_1E1F0 = os_log_create(SBLoggingSubsystem, "Biome");

  _objc_release_x1();
}

id SBLogContinuityDisplay(uint64_t a1)
{
  if (qword_1E208 != -1)
  {
    sub_F280();
  }

  v2 = qword_1E200;

  return v2;
}

void sub_B484(id a1)
{
  qword_1E200 = os_log_create(SBLoggingSubsystem, "ContinuityDisplay");

  _objc_release_x1();
}

id SBLogContinuitySession(uint64_t a1)
{
  if (qword_1E218 != -1)
  {
    sub_F294();
  }

  v2 = qword_1E210;

  return v2;
}

void sub_B510(id a1)
{
  qword_1E210 = os_log_create(SBLoggingSubsystem, "ContinuitySession");

  _objc_release_x1();
}

id SBLogAppProtection(uint64_t a1)
{
  if (qword_1E228 != -1)
  {
    sub_F2A8();
  }

  v2 = qword_1E220;

  return v2;
}

void sub_B59C(id a1)
{
  qword_1E220 = os_log_create(SBLoggingSubsystem, "AppProtection");

  _objc_release_x1();
}

id SBLogCaptureApplication(uint64_t a1)
{
  if (qword_1E238 != -1)
  {
    sub_F2BC();
  }

  v2 = qword_1E230;

  return v2;
}

void sub_B628(id a1)
{
  qword_1E230 = os_log_create(SBLoggingSubsystem, "CaptureApplication");

  _objc_release_x1();
}

id SBLogCaptureViewfinderMonitor(uint64_t a1)
{
  if (qword_1E248 != -1)
  {
    sub_F2D0();
  }

  v2 = qword_1E240;

  return v2;
}

void sub_B6B4(id a1)
{
  qword_1E240 = os_log_create(SBLoggingSubsystem, "CaptureViewfinderMonitor");

  _objc_release_x1();
}

id SBLogPrototyping(uint64_t a1)
{
  if (qword_1E258 != -1)
  {
    sub_F2E4();
  }

  v2 = qword_1E250;

  return v2;
}

void sub_B740(id a1)
{
  qword_1E250 = os_log_create(SBLoggingSubsystem, "Prototyping");

  _objc_release_x1();
}

id SBLogSceneRelevancy(uint64_t a1)
{
  if (qword_1E268 != -1)
  {
    sub_F2F8();
  }

  v2 = qword_1E260;

  return v2;
}

void sub_B7CC(id a1)
{
  qword_1E260 = os_log_create(SBLoggingSubsystem, "SceneRelevancy");

  _objc_release_x1();
}

void sub_C1C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_C1E8(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  BSDispatchQueueAssertMain();
  v4 = [WeakRetained _cachedSceneDataStores];
  v5 = (a1 + 32);
  v6 = [v4 objectForKey:*(a1 + 32)];

  if (v6 == v11)
  {
    if (!WeakRetained)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_F698(a1, (a1 + 32), WeakRetained, v11);
    if (!WeakRetained)
    {
      goto LABEL_6;
    }
  }

  v7 = [v11 _data];
  v8 = [v7 count];

  v9 = *v5;
  if (v8)
  {
    v10 = [v11 _data];
    [WeakRetained _modifyPersistentSceneData:1 identifier:v9 data:v10];
  }

  else
  {
    [WeakRetained _modifyPersistentSceneData:0 identifier:v9 data:0];
  }

LABEL_6:
}

void sub_DCCC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_265C();
  sub_263C(&dword_0, v2, v3, "[CalendarWidgetMigrator] Error loading current icon state: %{public}@", v4, v5, v6, v7);
}

void sub_DD50(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_265C();
  sub_263C(&dword_0, v2, v3, "[CalendarWidgetMigrator] Error saving migrated current icon state: %{public}@", v4, v5, v6, v7);
}

void sub_DDD4(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_265C();
  sub_263C(&dword_0, v2, v3, "[CalendarWidgetMigrator] Error loading desired icon state: %{public}@", v4, v5, v6, v7);
}

void sub_DE58(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_265C();
  sub_263C(&dword_0, v2, v3, "[CalendarWidgetMigrator] Error saving migrated desired icon state: %{public}@", v4, v5, v6, v7);
}

void sub_DEDC()
{
  sub_4AB8();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_DF18(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Error: %@ migrating dynamic quick actions for app %@", &v7, 0x16u);
}

void sub_E054()
{
  sub_265C();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_E13C()
{
  sub_4AB8();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_E178()
{
  sub_4AB8();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_E1B4()
{
  sub_265C();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_E224()
{
  sub_265C();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_E38C()
{
  sub_4AB8();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_E3C8()
{
  sub_4AB8();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_E404()
{
  sub_4AB8();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_E440()
{
  sub_4AB8();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_E47C()
{
  sub_4AB8();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_E4B8()
{
  sub_4AB8();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_E4F4()
{
  sub_265C();
  sub_4AAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_E564(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_265C();
  sub_263C(&dword_0, v2, v3, "[NewsIconStateMigration] Error loading current icon state: %{public}@", v4, v5, v6, v7);
}

void sub_E5E8(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_265C();
  sub_263C(&dword_0, v2, v3, "[NewsIconStateMigration] Error saving migrated current icon state: %{public}@", v4, v5, v6, v7);
}

void sub_E66C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_265C();
  sub_263C(&dword_0, v2, v3, "[NewsIconStateMigration] Error loading desired icon state: %{public}@", v4, v5, v6, v7);
}

void sub_E6F0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_265C();
  sub_263C(&dword_0, v2, v3, "[NewsIconStateMigration] Error saving migrated desired icon state: %{public}@", v4, v5, v6, v7);
}

void sub_F30C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainDisplayConfigurationTransformer.m" lineNumber:22 description:@"Can only have a single transformed display for the main display."];
}

void sub_F380(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Unable to create redacted display configuration: %@ from configuration:%@", &v3, 0x16u);
}

void sub_F408(void *a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"[SBMainDisplayConfigurationTransformer transformDisplayConfiguration:]"];
  [a1 bounds];
  v6 = NSStringFromCGRect(v12);
  v7 = [a1 currentMode];
  v8 = [a1 currentMode];
  v9 = [v8 preferredScale];
  v10 = [a1 preferredMode];
  v11 = [a1 availableModes];
  [v4 handleFailureInFunction:v5 file:@"SBMainDisplayConfigurationTransformer.m" lineNumber:62 description:{@"We expect a valid bounds for configuration: %@; CADisplay bounds: %@; currentMode: %@; preferredScale: %lu; preferredMode: %@; availableModes: %lu", a2, v6, v7, v9, v10, objc_msgSend(v11, "count")}];
}

void sub_F52C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FBSApplicationDataStore+SceneStorage.m" lineNumber:108 description:@"Must have a data stores dictionary to end here."];
}

void sub_F5A0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FBSApplicationDataStore+SceneStorage.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

void sub_F61C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FBSApplicationDataStore+SceneStorage.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"data"}];
}

void sub_F698(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v13 = +[NSAssertionHandler currentHandler];
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = *a2;
  v11 = [a3 _cachedSceneDataStores];
  v12 = [v11 objectForKey:*a2];
  [v13 handleFailureInMethod:v8 object:v9 file:@"FBSApplicationDataStore+SceneStorage.m" lineNumber:128 description:{@"Expected store (%p) for identifier: %@, but instead had store: (%p)", a4, v10, v12}];
}

void sub_F764(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_D628();
  sub_D618();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_F7FC(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_D628();
  sub_D618();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_F8BC(void *a1)
{
  v6 = [a1 bundleIdentifier];
  sub_D618();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_F970(void *a1, NSObject *a2)
{
  v3 = [a1 bundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%@: SBApplicationShortcutStore suppressing truncation for some reason.", &v4, 0xCu);
}

void sub_FA08()
{
  sub_DCB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_DCC0();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

void sub_FA7C()
{
  sub_DCB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_DCC0();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

void sub_FAF0()
{
  sub_DCB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_DCC0();
  [v0 handleFailureInMethod:@"changeHandler" object:? file:? lineNumber:? description:?];
}

void sub_FB64()
{
  sub_DCA0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBSceneDataStore.m" lineNumber:104 description:{@"%@ (key: %@)", v1, v0}];
}

void sub_FBD8()
{
  sub_DCA0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBSceneDataStore.m" lineNumber:125 description:{@"%@ (key: %@)", v1, v0}];
}

void sub_FC4C()
{
  sub_DCB4();
  v1 = +[NSAssertionHandler currentHandler];
  sub_DCC0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}