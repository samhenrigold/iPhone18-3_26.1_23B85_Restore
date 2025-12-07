void cmsmPrewarmVibeForSSID(int a1, int a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (!gCMSS_6 || !FigVibratorIsVibeSynthEngineAvailable())
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_18;
  }

  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    v7 = gCMSS_6;
    if (gCMSS_6)
    {
      v8.length = CFArrayGetCount(gCMSS_6);
    }

    else
    {
      v8.length = 0;
    }

    v8.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v8, v4);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(gCMSS_6, FirstIndexOfValue);
      if (gCMSS_6 && CFArrayGetCount(gCMSS_6))
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        if (dword_1EB75DE40)
        {
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigVibratorStopPrewarm(0);
      }
    }

    goto LABEL_18;
  }

  if (!gCMSS_6 || !CFArrayGetCount(gCMSS_6))
  {
    if (dword_1EB75DE40)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigVibratorStartPrewarm(0);
LABEL_16:
    if (!v4)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!dword_1EB75DE40)
  {
    goto LABEL_16;
  }

  v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v4)
  {
LABEL_17:
    CFArrayAppendValue(gCMSS_6, v4);
LABEL_18:
    CFRelease(v4);
  }
}

double cmsmRemoveSystemSoundAudioCategoriesThatMixIn(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v2 = gCMSS_7;
  if ([+[MXSessionManager defaultVADID] sharedInstance]
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    goto LABEL_11;
  }

  v4 = [v2 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
  if (!v4)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_11;
    }

LABEL_10:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_11;
  }

  v5 = v4;
  if (![v4 countForObject:@"KeyPressed"])
  {
    goto LABEL_10;
  }

  [v5 removeObject:@"KeyPressed"];
  if (![v5 count])
  {
    [v2 removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
  }

LABEL_11:
  FigSimpleMutexUnlock();
  return result;
}

double CMSystemSoundMgr_DeactivateAllSystemSounds()
{
  if (gCMSS_1)
  {
    FigSimpleMutexLock();
    for (i = gCMSS_0; i; i = *i)
    {
      if (*(i + 16) && *(i + 18))
      {
        v1 = *(i + 8);
        if ((v1 - 1103) <= 2)
        {
          cmsmRemoveSystemSoundAudioCategoriesThatMixIn(*(i + 12));
          v1 = *(i + 8);
        }

        cmsmPrewarmAudioForSSID(0, v1, *(i + 12));
        *(i + 18) = 0;
      }

      if (*(i + 17) && *(i + 19))
      {
        cmsmPrewarmVibeForSSID(0, *(i + 8), *(i + 12));
        *(i + 19) = 0;
      }

      CMSMSleep_ReleasePrewarmIdleSleepPreventor(*(i + 8), *(i + 12));
    }

    FigSimpleMutexUnlock();
  }

  return result;
}

const __CFString *CMSystemSoundMgr_SystemSoundMustBeHeard(void *key)
{
  v1 = key;
  Value = CFDictionaryGetValue(gSystemSoundIDToCategory, key);
  if (Value)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1 > 0x1000;
  }

  if (v3)
  {
    Value = @"ThirdPartySystemSound";
  }

  result = CMSystemsoundMgr_GetMappedBehaviorCategory(Value);
  if (result)
  {
    return (CFStringHasSuffix(result, @"AlwaysHeard") != 0);
  }

  return result;
}

uint64_t CMSessionMgrCopySystemSoundAudioBehavior(uint64_t a1, __CFDictionary **a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a1)
  {
    if (!gSystemSoundAudioBehaviors)
    {
LABEL_38:
      v11 = 0;
      goto LABEL_56;
    }

    v44 = 0;
    FigCFDictionaryGetInt32IfPresent();
    v43 = 0;
    FigCFDictionaryGetInt32IfPresent();
    v42 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v41 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v40 = 0;
    BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
    v39 = 0;
    IsOnenessEnabled = MX_FeatureFlags_IsOnenessEnabled(BooleanIfPresent, v6);
    if (IsOnenessEnabled && !MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled(IsOnenessEnabled, v8))
    {
      FigCFDictionaryGetBooleanIfPresent();
    }

    v38 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    Value = CFDictionaryGetValue(gSystemSoundIDToCategory, 0);
    if (dword_1EB75DE40)
    {
      LODWORD(v45) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    ApplicationStateForPID = MX_RunningBoardServices_GetApplicationStateForPID(v43, 1);
    *type = 0;
    if (ApplicationStateForPID == 4)
    {
      if (CMSMUtility_FetchBackgroundEntitlement(v43))
      {
        goto LABEL_14;
      }

      ApplicationStateForPID = MX_RunningBoardServices_GetApplicationStateForPID([MXSystemController getPIDToInheritAppStateFromForPID:v43], 1);
    }

    if ((ApplicationStateForPID & 0xFFFFFFF7) == 0)
    {
      goto LABEL_15;
    }

    if (ApplicationStateForPID != 4)
    {
LABEL_21:
      v20 = 0;
LABEL_54:
      v11 = 0;
      goto LABEL_55;
    }

LABEL_14:
    ApplicationStateForPID = CMSMUtility_FetchBackgroundEntitlement(v43);
    if (ApplicationStateForPID)
    {
LABEL_15:
      v14 = v39;
      if (gCMSS_2 != 1)
      {
        *v49 = 0;
        *&v49[8] = v49;
        *&v49[16] = 0x2020000000;
        v50 = 0;
        v45 = 0;
        v46 = &v45;
        v47 = 0x2020000000;
        v48 = 0;
        v15 = MXGetSerialQueue(ApplicationStateForPID, v13);
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __cmsmSystemSoundShouldPlay_block_invoke;
        v51[3] = &unk_1E7AECB78;
        v52 = 0;
        v53 = v43;
        v54 = v39;
        v55 = v38;
        v56 = v42;
        v57 = v41;
        v58 = v40;
        v51[6] = &type[4];
        v51[7] = type;
        v51[4] = v49;
        v51[5] = &v45;
        MXDispatchAsyncAndWait("cmsmSystemSoundShouldPlay", "CMSessionManager_SystemSounds.m", 3734, 0, 0, v15, v51);
        if (MX_FeatureFlags_IsAsyncDuckingEnabled(v16, v17) && (*(*&v49[8] + 25) & 1) != 0)
        {
          v18 = +[MXSessionManager sharedInstance];
          LODWORD(v19) = 0.5;
          [(MXSessionManager *)v18 sleepForAsyncDucking:1 duration:v19];
        }

        v11 = *(v46 + 6);
        _Block_object_dispose(&v45, 8);
        _Block_object_dispose(v49, 8);
        if (v11)
        {
          v20 = 0;
LABEL_55:
          *a2 = v20;
          goto LABEL_56;
        }

        v14 = v39;
      }

      v21 = CFDictionaryGetValue(gSystemSoundIDToCategory, 0);
      MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(v21);
      v23 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(MappedBehaviorCategory, v14);
      v20 = v23;
      if (v23)
      {
        v24 = *MEMORY[0x1E695E4D0];
        v25 = *MEMORY[0x1E695E4C0];
        if (type[4])
        {
          v26 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v26 = *MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(v23, @"Audio", v26);
        if (*type != 0.0)
        {
          v27 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, type);
          CFDictionarySetValue(v20, @"AudioVolume", v27);
          if (v27)
          {
            CFRelease(v27);
          }
        }

        v28 = v25;
        if ((type[4] & 2) != 0)
        {
          if (CMSMDeviceState_IsVibrationDisabled() && ([gSystemSoundsDoNotObeyAccessibilityVibrationSetting containsObject:Value] & 1) == 0)
          {
            LODWORD(v45) = 0;
            v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v30 = v45;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v31 = v30;
            }

            else
            {
              v31 = v30 & 0xFFFFFFFE;
            }

            if (v31)
            {
              *v49 = 136315394;
              *&v49[4] = "CMSessionMgrCopySystemSoundAudioBehavior";
              *&v49[12] = 2114;
              *&v49[14] = Value;
              _os_log_send_and_compose_impl(v31, 0, v51, 128, &dword_1B17A2000, v29, 0, "-MXSystemSounds- %s: Accessibility setting has vibration disabled, but shouldPlayFlags has vibration set for %{public}@. Please file bug against MediaExperience", v49, 22);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v28 = v24;
        }

        CFDictionarySetValue(v20, @"Vibration", v28);
        if ((type[4] & 8) != 0)
        {
          v32 = v24;
        }

        else
        {
          v32 = v25;
        }

        CFDictionarySetValue(v20, @"NeedsFinishCall", v32);
        if ((type[4] & 0x10) != 0)
        {
          v33 = v24;
        }

        else
        {
          v33 = v25;
        }

        CFDictionarySetValue(v20, @"SynchronizedSystemSound", v33);
        if ((type[4] & 0x40) != 0)
        {
          v34 = v24;
        }

        else
        {
          v34 = v25;
        }

        CFDictionarySetValue(v20, @"InterruptCurrentSystemSounds", v34);
        if ((type[4] & 0x80) != 0)
        {
          v35 = v24;
        }

        else
        {
          v35 = v25;
        }

        CFDictionarySetValue(v20, @"NeedsUnduckCall", v35);
        goto LABEL_54;
      }

      goto LABEL_38;
    }

    goto LABEL_21;
  }

  v11 = 4294954316;
LABEL_56:
  objc_autoreleasePoolPop(v4);
  return v11;
}

void sub_1B194A970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __CMSessionMgrCopySystemSoundAudioBehavior_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMDeviceState_InterruptAllActiveSessionsAndSystemSounds();
}

void CMSessionMgrSystemSoundDidFinish(int a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[MXInitialization waitUntilMXIsFullyInitialized];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = MXGetSerialQueue(v3, v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CMSessionMgrSystemSoundDidFinish_block_invoke;
  v8[3] = &unk_1E7AEA5E8;
  v9 = a1;
  v8[4] = &v10;
  MXDispatchAsyncAndWait("CMSessionMgrSystemSoundDidFinish", "CMSessionManager_SystemSounds.m", 4258, 0, 0, v5, v8);
  if (*(v11 + 24))
  {
    v6 = +[MXSessionManager sharedInstance];
    LODWORD(v7) = 0.5;
    [(MXSessionManager *)v6 sleepForAsyncDucking:0 duration:v7];
  }

  _Block_object_dispose(&v10, 8);
  objc_autoreleasePoolPop(v2);
}

void sub_1B194ABD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CMSessionMgrSystemSoundDidFinish_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  cmsmSystemSoundDidFinishGuts(*(a1 + 40), 0, (*(*(a1 + 32) + 8) + 24));
  if (*(a1 + 40) == 1061)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMDeviceState_DeactivateHardwareSafetySession(@"resumable.LiquidDetectSystemSoundDisengaged");
  }
}

void cmsmSystemSoundDidFinishGuts(uint64_t a1, int a2, _BYTE *a3)
{
  v94 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v83 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = gCMSS_8;
  if (gCMSS_8 <= 1)
  {
    v7 = 1;
  }

  gCMSS_8 = v7 - 1;
  FigSimpleMutexLock();
  v9 = dword_1EB75E118;
  if (a1 && !a2)
  {
    if (dword_1EB75E118 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = dword_1EB75E118;
    }

    dword_1EB75E118 = v10 - 1;
  }

  v11 = gCMSS_9;
  if (!gCMSS_9)
  {
    goto LABEL_25;
  }

  dispatch_source_cancel(gCMSS_9);
  if (gCMSS_9)
  {
    dispatch_release(gCMSS_9);
  }

  v11 = gCMSS_11;
  v12 = a1 == 1117 || v9 == 0;
  v13 = !v12;
  v14 = gCMSS_11 != a1 && a2 == 0;
  gCMSS_9 = 0;
  if (v14 || v13)
  {
    if (a1 == 1117)
    {
      v17 = cmsmCopySessionsToUnduck(gCMSS_11);
      FigSimpleMutexUnlock();
      if (v17)
      {
        cmsmUnduckSessions(v17, gCMSS_11, a3);
        CFRelease(v17);
      }

      FigSimpleMutexLock();
      goto LABEL_36;
    }

    v15 = 0;
  }

  else
  {
LABEL_25:
    v15 = 1;
  }

  if (a1 != 1117)
  {
    if (v9)
    {
      if (a2 || (v16 = MXGetSerialQueue(v11, v8), v80[0] = MEMORY[0x1E69E9820], v80[1] = 3221225472, v80[2] = __cmsmSystemSoundDidFinishGuts_block_invoke, v80[3] = &__block_descriptor_36_e5_v8__0l, v81 = a1, (gCMSS_9 = MXDispatchUtilityCreateOneShotTimer("cmsmSystemSoundDidFinishGuts", "CMSessionManager_SystemSounds.m", 4471, 0, 0, v16, v80, 0, 1.0, 0)) != 0))
      {
        if (v15)
        {
          FigSimpleMutexUnlock();
        }

        else
        {
          v51 = cmsmCopySessionsToUnduck(gCMSS_11);
          FigSimpleMutexUnlock();
          if (v51)
          {
            cmsmUnduckSessions(v51, gCMSS_11, a3);
            CFRelease(v51);
          }
        }

        gCMSS_11 = a1;
        return;
      }
    }
  }

LABEL_36:
  v18 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v76 objects:v92 count:16];
  if (v19)
  {
    v20 = v19;
    v65 = a2;
    v66 = a3;
    v21 = 0;
    v22 = *v77;
    key = a1;
    while (1)
    {
      v23 = 0;
      do
      {
        if (*v77 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v76 + 1) + 8 * v23);
        if (CMSUtility_GetIsActive(v24) && ([v24 currentlyControllingFlags] & 2) != 0)
        {
          if (![v24 hasPhoneCallBehavior] || !FigCFArrayContainsValue())
          {
            goto LABEL_58;
          }

          Value = CFDictionaryGetValue(gSystemSoundIDToCategory, key);
          if (Value)
          {
            v26 = 0;
          }

          else
          {
            v26 = a1 > 0x1000;
          }

          if (v26)
          {
            Value = @"ThirdPartySystemSound";
          }

          if (!Value || (MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(Value), CurrentVADForSystemSoundAudioCategory = cmsmGetCurrentVADForSystemSoundAudioCategory(MappedBehaviorCategory, 0), CurrentAudioDestination = CMSUtility_GetCurrentAudioDestination(v24), VADNameForVADID = CMSMUtility_GetVADNameForVADID(CurrentVADForSystemSoundAudioCategory), !CMSMUtility_AreVADsRoutedToTheSamePhysicalDevice(CurrentAudioDestination, VADNameForVADID)))
          {
LABEL_58:
            cmsTryToTakeControl(v24);
LABEL_59:
            v21 = 1;
            goto LABEL_60;
          }

          if (!dword_1EB75DE40)
          {
            goto LABEL_59;
          }

          v31 = a1;
          v83 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v33 = v83;
          v34 = type;
          if (os_log_type_enabled(v32, type))
          {
            v35 = v33;
          }

          else
          {
            v35 = v33 & 0xFFFFFFFE;
          }

          if (v35)
          {
            v36 = [v24 clientName];
            v84 = 136315394;
            v85 = "cmsmShouldSessionWithRouteControlTryToTakeControl";
            v86 = 2048;
            v87 = v36;
            LODWORD(v64) = 22;
            _os_log_send_and_compose_impl(v35, 0, v93, 128, &dword_1B17A2000, v32, v34, "-MXSystemSounds- %s: Skipping calling cmsTryToTakeControl for %public}@ because system sound and call both play to BT HFP route and call session already has route control.", &v84, v64);
          }

          v21 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          a1 = v31;
        }

LABEL_60:
        ++v23;
      }

      while (v20 != v23);
      v37 = [v18 countByEnumeratingWithState:&v76 objects:v92 count:16];
      v20 = v37;
      if (!v37)
      {
        a3 = v66;
        a2 = v65;
        if (!v21)
        {
          break;
        }

LABEL_77:

        goto LABEL_110;
      }
    }
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v38 = [v18 countByEnumeratingWithState:&v72 objects:v91 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    v41 = *v73;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v73 != v41)
        {
          objc_enumerationMutation(v18);
        }

        v43 = *(*(&v72 + 1) + 8 * i);
        if ([v43 systemSoundHasModifiedCurrentlyControllingFlags] && objc_msgSend(v43, "prefersToTakeHWControlFlagsFromAnotherSession") && CMSUtility_GetIsActive(v43))
        {
          [v43 setSystemSoundHasModifiedCurrentlyControllingFlags:0];
          cmsTryToTakeControl(v43);
          v40 = 1;
        }
      }

      v39 = [v18 countByEnumeratingWithState:&v72 objects:v91 count:16];
    }

    while (v39);
    if (v40)
    {
      goto LABEL_77;
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v44 = [v18 countByEnumeratingWithState:&v68 objects:v90 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = 0;
    v47 = *v69;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v69 != v47)
        {
          objc_enumerationMutation(v18);
        }

        v49 = *(*(&v68 + 1) + 8 * j);
        if ([v49 systemSoundHasModifiedCurrentlyControllingFlags] && (objc_msgSend(v49, "prefersToTakeHWControlFlagsFromAnotherSession") & 1) == 0 && CMSUtility_GetIsActive(v49))
        {
          [v49 setSystemSoundHasModifiedCurrentlyControllingFlags:0];
          cmsTryToTakeControl(v49);
          v46 = 1;
        }
      }

      v45 = [v18 countByEnumeratingWithState:&v68 objects:v90 count:16];
    }

    while (v45);
    v50 = v46 != 0;
  }

  else
  {
    v50 = 0;
  }

  if (a2 && !v50)
  {
    PVMSetEnabled(1);
    vaemResetVADCategoryToStandardAVAndDefaultMode();
    v52 = CFDictionaryGetValue(gSystemSoundIDToCategory, a1);
    if (v52)
    {
      v53 = 0;
    }

    else
    {
      v53 = a1 > 0x1000;
    }

    if (v53)
    {
      v52 = @"ThirdPartySystemSound";
    }

    v54 = CMSystemsoundMgr_GetMappedBehaviorCategory(v52);
    v55 = cmsmGetCurrentVADForSystemSoundAudioCategory(v54, 0);
    CurrentRouteTypeForSystemSoundAtIndex = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
    if (dword_1EB75DE40)
    {
      v83 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v58 = v83;
      v59 = type;
      if (os_log_type_enabled(v57, type))
      {
        v60 = v58;
      }

      else
      {
        v60 = v58 & 0xFFFFFFFE;
      }

      if (v60)
      {
        v61 = CMSMUtility_GetVADNameForVADID(v55);
        v84 = 136315650;
        v85 = "cmsmSystemSoundDidFinishGuts";
        v86 = 2114;
        v87 = v61;
        v88 = 2114;
        v89 = CurrentRouteTypeForSystemSoundAtIndex;
        LODWORD(v64) = 32;
        _os_log_send_and_compose_impl(v60, 0, v93, 128, &dword_1B17A2000, v57, v59, "-MXSystemSounds- %s: Setting volume on VAD: %{public}@ route: %{public}@ as no-one took control after mustBeHeard sound finished playing", &v84, v64);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    vaemSetDeviceVolumeIfNotSet(v55, 0, CurrentRouteTypeForSystemSoundAtIndex, 0, 0.5, 0.0, 0.0);
    VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();
    PVMSetCurrentCategoryAndMode(@"Audio/Video", 0, VolumeSequenceNumber);
  }

LABEL_110:
  v63 = cmsmCopySessionsToUnduck(a1);
  FigSimpleMutexUnlock();
  if (v63)
  {
    cmsmUnduckSessions(v63, a1, a3);
    CFRelease(v63);
  }
}

void CMSessionMgrSystemSoundUnduckMedia(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = MXGetSerialQueue(a1, a2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CMSessionMgrSystemSoundUnduckMedia_block_invoke;
  v6[3] = &unk_1E7AEA5E8;
  v7 = v2;
  v6[4] = &v8;
  MXDispatchAsyncAndWait("CMSessionMgrSystemSoundUnduckMedia", "CMSessionManager_SystemSounds.m", 4291, 0, 0, v3, v6);
  if (*(v9 + 24))
  {
    v4 = +[MXSessionManager sharedInstance];
    LODWORD(v5) = 0.5;
    [(MXSessionManager *)v4 sleepForAsyncDucking:0 duration:v5];
  }

  _Block_object_dispose(&v8, 8);
}

void sub_1B194B72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CMSessionMgrSystemSoundUnduckMedia_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v4 = cmsmCopySessionsToUnduck(v1);
  FigSimpleMutexUnlock();
  if (v4)
  {
    cmsmUnduckSessions(v4, v1, (v2 + 24));
    CFRelease(v4);
  }
}

uint64_t CMSessionMgrVibrateForSystemSoundWithOptions(int a1, const __CFDictionary *a2)
{
  v4 = objc_autoreleasePoolPush();
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"Duration");
    valuePtr = 0;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
    }

    v6 = CFDictionaryGetValue(a2, @"Intensity");
    v19 = 0;
    if (v6)
    {
      CFNumberGetValue(v6, kCFNumberFloatType, &v19);
    }

    v7 = CFDictionaryGetValue(a2, @"VibrationPattern");
    v8 = CFDictionaryGetValue(a2, @"Synchronizer");
    if (v8)
    {
      BytePtr = CFDataGetBytePtr(v8);
    }

    else
    {
      BytePtr = 0;
    }

    v11 = CFDictionaryGetValue(a2, @"Loop");
    if (v11)
    {
      v12 = CFBooleanGetValue(v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = CFDictionaryGetValue(a2, @"DidFinishContext");
    v14 = CFDictionaryGetValue(a2, @"CancelCurrentVibePattern");
    if (v14)
    {
      v14 = CFBooleanGetValue(v14);
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v17 = MXGetSerialQueue(v14, v15);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __cmsmVibrateForSystemSoundInternal_block_invoke;
    v21[3] = &unk_1E7AECBA0;
    v22 = a1;
    v21[4] = &v25;
    v21[5] = v7;
    v23 = v12;
    v21[6] = BytePtr;
    v21[7] = v13;
    v24 = v16;
    MXDispatchAsyncAndWait("cmsmVibrateForSystemSoundInternal", "CMSessionManager_SystemSounds.m", 4852, 0, 0, v17, v21);
    v10 = *(v26 + 6);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v10 = 4294954315;
  }

  objc_autoreleasePoolPop(v4);
  return v10;
}

void sub_1B194BAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CMSessionMgrVibratorStopWithOptions(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[MXInitialization waitUntilMXIsFullyInitialized];
  v5 = MXGetSerialQueue(v3, v4);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CMSessionMgrVibratorStopWithOptions_block_invoke;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = a1;
  MXDispatchAsyncAndWait("CMSessionMgrVibratorStopWithOptions", "CMSessionManager_SystemSounds.m", 5095, 0, 0, v5, v6);
  objc_autoreleasePoolPop(v2);
}

float CMSystemSoundMgrGetMinVolume(const __CFString *a1)
{
  MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(a1);

  return cmsmGetSystemSoundMinVolume(MappedBehaviorCategory);
}

float cmsmGetSystemSoundMinVolume(uint64_t a1)
{
  if (!a1 || (v1 = [gSystemSoundMinVolume objectForKey:a1]) == 0)
  {
    v1 = [gSystemSoundMinVolume objectForKey:@"Default"];
    if (!v1)
    {
      return 0.0;
    }
  }

  v2 = v1;
  CurrentRouteTypeForSystemSoundAtIndex = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
  v4 = PVMCopyMappedRoute(CurrentRouteTypeForSystemSoundAtIndex);
  if (v4 && (v5 = [v2 objectForKey:v4]) != 0 || (v5 = objc_msgSend(v2, "objectForKey:", @"Default")) != 0)
  {
    [v5 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

float CMSystemSoundMgrGetMaxVolume(const __CFString *a1)
{
  MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(a1);

  cmsmGetSystemSoundMaxVolume(MappedBehaviorCategory);
  return result;
}

void cmsmGetSystemSoundMaxVolume(const void *a1)
{
  *&valuePtr = 1.0;
  SystemSoundMinVolume = cmsmGetSystemSoundMinVolume(a1);
  if (a1 && (v3 = CFDictionaryGetValue(gSystemSoundMaxVolume, a1)) != 0 || (v3 = CFDictionaryGetValue(gSystemSoundMaxVolume, @"Default")) != 0)
  {
    v4 = v3;
    CurrentRouteTypeForSystemSoundAtIndex = CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
    v6 = PVMCopyMappedRoute(CurrentRouteTypeForSystemSoundAtIndex);
    if (!v6 || (Value = CFDictionaryGetValue(v4, v6)) == 0)
    {
      Value = CFDictionaryGetValue(v4, @"Default");
      if (!Value)
      {
        if (!v6)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
    v8 = PVMGetVolumeMultiplier();
    if ([gSystemSoundsWithNoVolumeAdjustment containsObject:a1])
    {
      v8 = 1.0;
      v9 = *&valuePtr;
    }

    else
    {
      v9 = 1.0;
      if (a1 && PVMCategoriesAreEquivalent([[MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:" sharedInstance:0])
      {
        PVMGetThirdPartyVolumeMultiplier();
        v8 = v10;
      }
    }

    if (FigCFEqual())
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v11 = PVMGetVolumePreference(@"Ringtone", 0, v13);
    }

    else
    {
      v11 = *&valuePtr;
    }

    v12 = v8 * v11;
    if (v12 >= v9)
    {
      v12 = v9;
    }

    if (SystemSoundMinVolume > v12)
    {
      v12 = SystemSoundMinVolume;
    }

    *&valuePtr = v12;
    if (v6)
    {
LABEL_21:
      CFRelease(v6);
    }
  }
}

void cmsmWordyToCompact(const __CFString *a1, const void *a2, uint64_t a3)
{
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a1) || (v7 = CFArrayGetTypeID(), v7 != CFGetTypeID(a2)) || (ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a1, @",")) == 0)
  {
    *(a3 + 24) = 0;
    return;
  }

  v9 = ArrayBySeparatingStrings;
  if (CFArrayGetCount(ArrayBySeparatingStrings) != 3)
  {
    goto LABEL_47;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
  v11 = CFArrayGetValueAtIndex(v9, 1);
  v12 = CFArrayGetValueAtIndex(v9, 2);
  v13 = !ValueAtIndex || v11 == 0;
  if (v13 || v12 == 0)
  {
    goto LABEL_47;
  }

  v15 = v12;
  if (CFEqual(ValueAtIndex, @"RingVibrateOff"))
  {
    v16 = 16;
  }

  else if (CFEqual(ValueAtIndex, @"RingVibrateOn"))
  {
    v16 = 32;
  }

  else
  {
    if (!CFEqual(ValueAtIndex, @"RingVibrateIgnore"))
    {
      goto LABEL_47;
    }

    v16 = 48;
  }

  if (CFEqual(v11, @"SilentVibrateOff"))
  {
    v17 = 4;
  }

  else if (CFEqual(v11, @"SilentVibrateOn"))
  {
    v17 = 8;
  }

  else
  {
    if (!CFEqual(v11, @"SilentVibrateIgnore"))
    {
      goto LABEL_47;
    }

    v17 = 12;
  }

  if (CFEqual(v15, @"RingerSwitchOff"))
  {
    v18 = 1;
    goto LABEL_31;
  }

  if (CFEqual(v15, @"RingerSwitchOn"))
  {
    v18 = 2;
    goto LABEL_31;
  }

  if (CFEqual(v15, @"RingerSwitchIgnore"))
  {
    v18 = 3;
LABEL_31:
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
      LOBYTE(v21) = 0;
    }

    else
    {
      v20 = Count;
      v31 = v18;
      v32 = v17;
      v21 = 0;
      v22 = 0;
      for (i = 0; i != v20; ++i)
      {
        v24 = CFArrayGetValueAtIndex(a2, i);
        if (!v24 || (v25 = CFStringGetTypeID(), v25 != CFGetTypeID(v24)))
        {
          v22 = 1;
        }

        if (CFEqual(v24, @"Beep"))
        {
          v21 |= 1u;
        }

        else if (CFEqual(v24, @"Vibrate"))
        {
          v21 |= 2u;
        }

        else if (CFEqual(v24, @"Synchronize"))
        {
          v21 |= 0x10u;
        }

        else if (CFEqual(v24, @"Interrupt"))
        {
          v21 |= 0x40u;
        }

        else
        {
          v22 = 1;
        }
      }

      if (v22)
      {
        goto LABEL_47;
      }

      v18 = v31;
      v17 = v32;
    }

    v26 = 0;
    v27 = (a3 + 16);
    do
    {
      if (v26)
      {
        v28 = -3;
      }

      else
      {
        v28 = -2;
      }

      if ((v26 & 2) != 0)
      {
        v29 = -9;
      }

      else
      {
        v29 = -5;
      }

      if (v26 >= 4)
      {
        v30 = -33;
      }

      else
      {
        v30 = -17;
      }

      if ((v29 & v30 & v28 | v16 | v17 | v18) == 0xFFFFFFFF)
      {
        *(v27 - 8) = v21;
        *v27 = 1;
      }

      ++v26;
      ++v27;
    }

    while (v26 != 8);
    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 24) = 0;
LABEL_48:

  CFRelease(v9);
}

const __CFArray *cmsmCopyDestinationsWithoutElement(CFArrayRef theArray, uint64_t a2)
{
  if (!theArray)
  {
    return 0;
  }

  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  v4 = MutableCopy;
  if (a2 && CFArrayGetCount(MutableCopy) >= 1)
  {
    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v4, v5);
      if (FigCFEqual())
      {
        break;
      }

      if (++v5 >= CFArrayGetCount(v4))
      {
        return v4;
      }
    }

    CFArrayRemoveValueAtIndex(v4, v5);
  }

  return v4;
}

void __cmsmSystemSoundShouldPlay_block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 73);
  if (cmsmSkipPlayingSystemSound_onceToken != -1)
  {
    __cmsmSystemSoundShouldPlay_block_invoke_cold_1();
  }

  if (gSystemSoundRingerSettings)
  {
    v6 = gSystemSoundRoutingForCategories == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || gSystemSoundLowersMusicVolume == 0 || gSystemSoundMaxVolume == 0)
  {
    goto LABEL_122;
  }

  if (![cmsmSkipPlayingSystemSound_unskippableSystemSounds containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)}])
  {
    if (CMSystemSoundMgr_SystemSoundMustBeHeard(v3))
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    active = cmsmCopyCurrentActiveRouteTypesForSystemSound();
    if (FigCFArrayContainsValue())
    {
      v11 = 1;
      if (!active)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = FigCFArrayContainsValue() != 0;
      if (!active)
      {
LABEL_25:
        if (v5 == 0 || v11)
        {
          if ((v3 - 1393) < 0xFFFFFFFD || v11)
          {
            if ([+[MXSessionManager wombatEnabled] sharedInstance]
            {
              if (dword_1EB75DE40)
              {
LABEL_122:
                v57 = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              v12 = [+[MXSessionManager sharedInstance](MXSessionManager isSessionWithAudioCategoryActive:"isSessionWithAudioCategoryActive:", @"HearingTest"];
              if (v3 == 1169 || !v12)
              {
                if (!MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled(v12, v13))
                {
                  goto LABEL_125;
                }

                v14 = cmsmCopyCurrentActiveRouteTypesForSystemSound();
                CMSMUtility_GetCurrentRouteTypeForSystemSoundAtIndex(0);
                v15 = FigCFEqual();
                if (v15)
                {
                  v17 = vaemContinuityScreenOutputIsConnected(v15, v16) == 0;
                }

                else
                {
                  v17 = 1;
                }

                v56 = v17;
                Value = CFDictionaryGetValue(gSystemSoundIDToCategory, v3);
                if (Value)
                {
                  v19 = 0;
                }

                else
                {
                  v19 = v3 > 0x1000;
                }

                if (v19)
                {
                  Value = @"ThirdPartySystemSound";
                }

                MappedBehaviorCategory = CMSystemsoundMgr_GetMappedBehaviorCategory(Value);
                CurrentVADForSystemSoundAudioCategory = cmsmGetCurrentVADForSystemSoundAudioCategory(MappedBehaviorCategory, 0);
                v22 = [+[MXSessionManager sharedInstance](MXSessionManager speakerAlertVADID];
                if (v14)
                {
                  CFRelease(v14);
                }

                v23 = v56;
                if (CurrentVADForSystemSoundAudioCategory == v22)
                {
                  v23 = 1;
                }

                if ((v23 & 1) == 0)
                {
                  if (dword_1EB75DE40)
                  {
                    goto LABEL_122;
                  }
                }

                else
                {
                  if (FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B490) || !FigCFArrayContainsValue() || !CMSMUtility_SomeClientIsPlaying())
                  {
                    goto LABEL_126;
                  }

LABEL_125:
                  v50 = CFDictionaryGetValue(gSystemSoundIDToCategory, v3);
                  if (v50)
                  {
                    v51 = 0;
                  }

                  else
                  {
                    v51 = v3 > 0x1000;
                  }

                  if (v51)
                  {
                    v50 = @"ThirdPartySystemSound";
                  }

                  v52 = CMSystemsoundMgr_GetMappedBehaviorCategory(v50);
                  v53 = cmsmGetCurrentVADForSystemSoundAudioCategory(v52, v4);
                  IsCategoryInputOnly = CMSMUtility_IsCategoryInputOnly(0);
                  if (vaemIsNotCurrentDeviceFormat(v53, IsCategoryInputOnly, @"LPCM"))
                  {
                    if (dword_1EB75DE40)
                    {
                      goto LABEL_122;
                    }
                  }

                  else
                  {
LABEL_126:
                    if (!CMSMUtility_IsSomeClientRecording() || !CMSMUtility_IsSomeRecordingSessionPresentThatDisallowsSystemSounds() || cmsmSystemSoundShouldPlayDuringRecording(v3))
                    {
                      goto LABEL_61;
                    }

                    if (v5 != 0 && v11)
                    {
                      if (!dword_1EB75DE40)
                      {
                        goto LABEL_61;
                      }

                      goto LABEL_60;
                    }

                    if (dword_1EB75DE40)
                    {
                      goto LABEL_122;
                    }
                  }
                }
              }

              else if (dword_1EB75DE40)
              {
                goto LABEL_122;
              }
            }
          }

          else if (dword_1EB75DE40)
          {
            goto LABEL_122;
          }
        }

        else if (dword_1EB75DE40)
        {
          goto LABEL_122;
        }

        **(a1 + 48) = 0;
        return;
      }
    }

    CFRelease(active);
    goto LABEL_25;
  }

  if (!dword_1EB75DE40)
  {
    goto LABEL_61;
  }

LABEL_60:
  v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_61:
  v57 = 0;
  *(*(*(a1 + 32) + 8) + 24) = cmsmGetUpdatedSystemSoundPlayFlags(*(a1 + 64), *(a1 + 68), *(a1 + 74), *(a1 + 75), *(a1 + 76), *(a1 + 56), 0, &v57, *(a1 + 72));
  if (FigGetUpTimeNanoseconds() - UpTimeNanoseconds >= 1000001000)
  {
    v25 = *(a1 + 64);
    v26 = *(*(a1 + 32) + 8);
    if (CMSMDeviceState_ItsAnAppleTV())
    {
      v28 = *(v26 + 24);
      *(v26 + 24) = 0;
      gCMSS_2 = 1;
      v29 = gCMSS_10;
      if (gCMSS_10)
      {
        dispatch_source_cancel(gCMSS_10);
        v29 = gCMSS_10;
        if (gCMSS_10)
        {
          dispatch_release(gCMSS_10);
          gCMSS_10 = 0;
        }
      }

      v30 = MXGetSerialQueue(v29, v27);
      gCMSS_10 = MXDispatchUtilityCreateOneShotTimer("cmsmRunSystemSoundWatchdogForAppleTV", "CMSessionManager_SystemSounds.m", 3468, 0, 0, v30, &__block_literal_global_200_0, 0, 0.25, 0);
      if (!gCMSS_10)
      {
        gCMSS_2 = 0;
      }

      if ((v28 & 8) != 0)
      {
        CMSessionMgrSystemSoundDidFinish(v25);
      }
    }
  }

  v31 = *(*(a1 + 32) + 8);
  v32 = *(v31 + 24);
  if (v32)
  {
    ++gCMSS_8;
    v33 = v32 | 8;
  }

  else
  {
    v33 = v32 & 0xFFFFFFF6;
  }

  *(v31 + 24) = v33;
  v34 = *(*(*(a1 + 32) + 8) + 24);
  if ((v34 & 2) != 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"VibeWillStart", 0, 0, 1u);
    v34 = *(*(*(a1 + 32) + 8) + 24);
  }

  v36 = *(a1 + 64);
  v37 = v57;
  IsBluetoothSharingSessionEnabledForMediaPlayback = CMSUtility_IsBluetoothSharingSessionEnabledForMediaPlayback();
  if ((v34 & v37 & 1) != 0 && !IsBluetoothSharingSessionEnabledForMediaPlayback)
  {
    v39 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
    A2DPPort = cmsmGetA2DPPort(v39);
    if (v39)
    {
      CFRelease(v39);
    }

    if (A2DPPort && vaeDoesPortSupportMultipleConnections(A2DPPort))
    {
      if (vaeDoesBTPortSupportInEarDetection(A2DPPort))
      {
        ShouldBTPortBeTreatedAsInEar = CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(A2DPPort);
      }

      else
      {
        ShouldBTPortBeTreatedAsInEar = 1;
      }
    }

    else
    {
      ShouldBTPortBeTreatedAsInEar = 0;
    }

    if (!CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote())
    {
      if (CMSMDeviceState_ItsAnAppleWatch())
      {
        v42 = v36 == 1413 || v36 == 1403;
        v43 = v42;
      }

      else
      {
        v43 = 1;
      }

      if ((ShouldBTPortBeTreatedAsInEar & v43) == 1 && !vaeGetBTPortOwnsSharedAudioConnection(A2DPPort))
      {
        v48 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
        v49 = cmsmGetA2DPPort(v48);
        if (v48)
        {
          CFRelease(v48);
        }

        if (v49)
        {
          *(*(*(a1 + 40) + 8) + 24) = vaeRequestOwnershipOnBTPort(v49, 7);
          if (!*(*(*(a1 + 40) + 8) + 24))
          {
            vaeMakePortRoutable(v49, 1, 0, qword_1EB75E190);
          }
        }
      }
    }
  }

  v44 = *(a1 + 64);
  v45 = CFDictionaryGetValue(gSystemSoundIDToCategory, v44);
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v44 > 0x1000;
  }

  if (v46)
  {
    v45 = @"ThirdPartySystemSound";
  }

  CMSystemsoundMgr_GetMappedBehaviorCategory(v45);
  if (dword_1EB75DE40)
  {
    v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  **(a1 + 48) = *(*(*(a1 + 32) + 8) + 24);
}

void *__cmsmSkipPlayingSystemSound_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F28AF728, &unk_1F28AF740, 0}];
  cmsmSkipPlayingSystemSound_unskippableSystemSounds = result;
  return result;
}

uint64_t cmsmSystemSoundShouldPlayDuringRecording(int a1)
{
  result = 1;
  if (a1 <= 1152)
  {
    if (((a1 - 1061) > 0x3D || ((1 << (a1 - 37)) & 0x37FE800000004001) == 0) && (a1 - 30) >= 0xA)
    {
      return 0;
    }
  }

  else if (a1 <= 1262)
  {
    v3 = a1 - 1153;
    if (v3 > 0x3A || ((1 << v3) & 0x7FF800000000003) == 0)
    {
      return 0;
    }
  }

  else if (((a1 - 1364) > 0x28 || ((1 << (a1 - 84)) & 0x1003C00000FLL) == 0) && ((a1 - 1263) > 0xB || ((1 << (a1 + 17)) & 0xF83) == 0) && (a1 - 1556) >= 2)
  {
    return 0;
  }

  return result;
}

BOOL cmsmVibrationForSystemSoundCanBeAlteredBasedOnSystemState(unsigned int a1)
{
  if (a1 > 0x1000)
  {
    return 1;
  }

  result = 1;
  if (a1 - 1000 > 0xF || ((1 << (a1 + 24)) & 0x808B) == 0)
  {
    return a1 == 1106;
  }

  return result;
}

double cmsmAddPrewarmedAudioCategoriesThatMixIn(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  for (i = gCMSS_0; i; i = *i)
  {
    if (FigCFEqual() && *(i + 12) == a1 && *(i + 18) && (*(i + 8) - 1103) <= 2)
    {
      FigSimpleMutexLock();
      v5 = gCMSS_7;
      if ([+[MXSessionManager defaultVADID]&& v5 sharedInstance]
      {
        v6 = [v5 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
        if (!v6)
        {
          v6 = [MEMORY[0x1E696AB50] set];
          [v5 setObject:v6 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a1)}];
        }

        [v6 addObject:a2];
      }

      FigSimpleMutexUnlock();
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

float cmsmGetSystemSoundVolumeScalarForCurrentRoute(__CFString *a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!PVMGetEnabled())
  {
    return 1.0;
  }

  v4 = cmsmCopySystemSoundAudioBehaviorDictionaryForAudioCategory(a1, a2);
  CurrentSystemSoundVADForAudioBehaviour = cmsGetCurrentSystemSoundVADForAudioBehaviour(v4);
  v6 = PVMGetCurrentPreferredRawVolume();
  if (v4)
  {
    CFRelease(v4);
  }

  cmsmGetSystemSoundVolumeScalarForRawVolume(a1, CurrentSystemSoundVADForAudioBehaviour, v6);
  v8 = v7;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v8;
}

void cmsmGetSystemSoundVolumeScalarForRawVolume(const __CFString *a1, uint64_t a2, float a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  cmsmGetSystemSoundMaxVolume(a1);
  v7 = v6;
  v8 = PVMGetEnabled();
  v9 = v8;
  if (v7 < a3)
  {
    PVMSetEnabled(1);
    v17 = v7;
    v18 = a3;
    v10 = cmsmConvertToDecibelInVAD(a2, &v17);
    if (cmsmConvertToDecibelInVAD(a2, &v18) | v10 || a1 && CFStringHasPrefix(a1, @"JBL") || FigCFEqual())
    {
      v11 = 1.0;
      if (a3 != 0.0)
      {
        v11 = a3;
      }

      v19 = v7 / v11;
      if (!dword_1EB75DE40)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v19 = v17 - v18;
      cf[0] = 0;
      v12 = qword_1EB75E090;
      v13 = *(*(CMBaseObjectGetVTable() + 24) + 8);
      if (v13)
      {
        v13(v12, 0x1F289B9B0, *MEMORY[0x1E695E480], &v19, cf);
        v14 = cf[0];
      }

      else
      {
        v14 = 0;
      }

      ValueFloat32 = MXCFNumberGetValueFloat32(v14);
      v19 = *&ValueFloat32;
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (!dword_1EB75DE40)
      {
        goto LABEL_20;
      }
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_20:
    PVMSetEnabled(v9);
    cmsmGetAdjustedVolumeScalarForReceiverRoutes(v19, a3);
    return;
  }

  PVMSetEnabled(v8);

  cmsmGetAdjustedVolumeScalarForReceiverRoutes(1.0, a3);
}

float cmsmGetAdjustedVolumeScalarForReceiverRoutes(float a1, float a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!FigCFArrayContainsValue() && !FigCFArrayContainsValue())
  {
    return a1;
  }

  if (a2 <= 0.5)
  {
    v5 = fminf(a1, 0.5);
  }

  else
  {
    v4 = (1.0 - a2);
    if (v4 < 0.3)
    {
      v4 = 0.3;
    }

    v5 = v4 <= a1 ? v4 : a1;
  }

  if (v5 == a1)
  {
    return a1;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v5;
}

uint64_t cmsmConvertToDecibelInVAD(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 4294954315;
  }

  cf = 0;
  v4 = qword_1EB75E090;
  v5 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v5)
  {
    v6 = v5(v4, 0x1F289BA70, *MEMORY[0x1E695E480], a1, a2, &cf);
    v7 = cf;
  }

  else
  {
    v7 = 0;
    v6 = 4294954514;
  }

  ValueFloat32 = MXCFNumberGetValueFloat32(v7);
  *a2 = LODWORD(ValueFloat32);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void __cmsmRunSystemSoundWatchdogForAppleTV_block_invoke()
{
  if (gCMSS_10)
  {
    dispatch_source_cancel(gCMSS_10);
    if (gCMSS_10)
    {
      dispatch_release(gCMSS_10);
      gCMSS_10 = 0;
    }
  }

  gCMSS_2 = 0;
}

__CFArray *cmsmCopySessionsToUnduck(unsigned int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = [[MXDuckingSource alloc] initWithType:0 ID:a1 duckVolume:0.0 duckFadeDuration:0.0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ([+[MXSessionManager isSessionDucked:"isSessionDucked:duckingSource:"]
        {
          CFArrayAppendValue(Mutable, v8);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return Mutable;
}

void cmsmUnduckSessions(const __CFArray *a1, unsigned int a2, _BYTE *a3)
{
  Count = CFArrayGetCount(a1);
  [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v9 = [[MXDuckingSource alloc] initWithType:0 ID:a2 duckVolume:0.0 duckFadeDuration:0.0];
      [+[MXSessionManager sharedInstance](MXSessionManager unduckVolume:"unduckVolume:sessionCausingUnduck:duckingSource:" sessionCausingUnduck:ValueAtIndex duckingSource:0, v9];
    }
  }

  if (a3)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager mostRecentDuckFadeDuration];
    *a3 |= v10 > 0.0;
  }
}

void __cmsmSystemSoundDidFinishGuts_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 0;
  cmsmSystemSoundDidFinishGuts(v1, 1, &v4);
  if (v4)
  {
    v2 = +[MXSessionManager sharedInstance];
    LODWORD(v3) = 0.5;
    [(MXSessionManager *)v2 sleepForAsyncDucking:0 duration:v3];
  }
}

uint64_t __cmsmVibrateForSystemSoundInternal_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        if (objc_msgSend_isActive(v7) && [v7 isPlaying] && (objc_msgSend(v7, "isVibrating") & 1) != 0)
        {

          result = 4294954313;
          goto LABEL_24;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = *(a1 + 64);
  Value = CFDictionaryGetValue(gSystemSoundIDToCategory, v8);
  if (Value)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 > 0x1000;
  }

  if (v10)
  {
    v11 = @"ThirdPartySystemSound";
  }

  else
  {
    v11 = Value;
  }

  ValueWithDefaultAsFallback = gSystemSoundVibrationPatterns;
  if (v11)
  {
    v13 = gSystemSoundVibrationPatterns == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_22;
  }

  v15 = *(a1 + 40);
  if (!v15)
  {
    ValueWithDefaultAsFallback = cmsmCFDictionaryGetValueWithDefaultAsFallback(gSystemSoundVibrationPatterns, v11);
    if (!ValueWithDefaultAsFallback)
    {
      if (*(a1 + 64) == 36)
      {
        v15 = 0;
        goto LABEL_30;
      }

LABEL_22:
      result = 4294954315;
      goto LABEL_24;
    }

    v15 = ValueWithDefaultAsFallback;
    ValueWithDefaultAsFallback = CFDictionaryGetCount(ValueWithDefaultAsFallback);
    if (!ValueWithDefaultAsFallback)
    {
      v15 = 0;
    }
  }

  if (*(a1 + 64) != 36)
  {
    if (v15)
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

LABEL_30:
  v16 = MX_FeatureFlags_IsCallConnectHapticsEnabled(ValueWithDefaultAsFallback, v11);
  result = 4294954315;
  if (!v16 || !v15)
  {
    goto LABEL_24;
  }

LABEL_34:
  if (FigCFArrayContainsValue())
  {
    v17 = 1;
  }

  else
  {
    v17 = FigCFArrayContainsValue() != 0;
  }

  if (FigCFArrayContainsValue())
  {
    v18 = 1;
  }

  else
  {
    v18 = FigCFArrayContainsValue() != 0;
  }

  if (CMSMUtility_IsPhoneCallActive() && (v17 || v18) && cmsmVibrationForSystemSoundCanBeAlteredBasedOnSystemState(*(a1 + 64)) && CMSMUtility_VibrationPatternIsActuallyGoingToVibe(v15))
  {
    v19 = v17 ? @"DefaultShort_ReceiverActive" : @"DefaultShort_SpeakerphoneActive";
    v20 = cmsmCFDictionaryGetValueWithDefaultAsFallback(gSystemSoundVibrationPatterns, v19);
    v15 = v20;
    if (v20)
    {
      if (!CFDictionaryGetCount(v20))
      {
        goto LABEL_22;
      }
    }
  }

  v21 = cmsmCopyCurrentActiveRouteTypeAtIndex(0);
  valuePtr = 1065353216;
  if (v21)
  {
    v22 = v21;
    v23 = cmsmCFDictionaryGetValueWithDefaultAsFallback(gSystemSoundMaxVibrationIntensity, v21);
    if (v23)
    {
      CFNumberGetValue(v23, kCFNumberFloatType, &valuePtr);
      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    CFRelease(v22);
    v25 = *&valuePtr;
  }

  else
  {
    v24 = 0;
    v25 = 1.0;
  }

  result = FigVibratorPlayVibrationWithDictionary(v15, v24, *(a1 + 48), *(a1 + 68), *(a1 + 56), *(a1 + 69), 0, v25);
LABEL_24:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

const void *cmsmCFDictionaryGetValueWithDefaultAsFallback(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, a2);
      if (!result)
      {

        return CFDictionaryGetValue(theDict, @"Default");
      }
    }
  }

  return result;
}

uint64_t routingSession_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&routingSession_getClassID_sFigRoutingSessionClassDesc, ClassID, 1, a1);
}

uint64_t FigRoutingSessionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_11 != -1)
  {
    FigRoutingSessionGetClassID_cold_1();
  }

  v3 = qword_1ED6D2FB0;

  return MEMORY[0x1EEDBB488](v3);
}

uint64_t getAAAudioSessionControlClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__15;
  v0 = getAAAudioSessionControlClass_softClass;
  v7 = __Block_byref_object_dispose__15;
  v8 = getAAAudioSessionControlClass_softClass;
  if (!getAAAudioSessionControlClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getAAAudioSessionControlClass_block_invoke;
    v2[3] = &unk_1E7AE73A0;
    v2[4] = &v3;
    __getAAAudioSessionControlClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B195224C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B19567F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class __getAAAudioSessionControlClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AudioAccessoryServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AudioAccessoryServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7AECCE0;
    v6 = 0;
    AudioAccessoryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AudioAccessoryServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AAAudioSessionControl");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAAAudioSessionControlClass_block_invoke_cold_1();
  }

  getAAAudioSessionControlClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __AudioAccessoryServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AudioAccessoryServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B195B298(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x3F8]);
  _Unwind_Resume(a1);
}

__CFString *PowerManager_GetClientTypeFromID(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 6)
  {
    v1 = @"haptics";
  }

  if (a1 == 5)
  {
    return @"audio";
  }

  else
  {
    return v1;
  }
}

CFMutableDictionaryRef PowerManager_CreatePowerBudgetRequestDict(const __CFDictionary *a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    Count = FigCFDictionaryGetCount();
    v11 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(a1, v11, 0);
    if (Count >= 1)
    {
      v5 = v11;
      do
      {
        if (a1)
        {
          Value = CFDictionaryGetValue(a1, *v5);
          if (Value)
          {
            v7 = Value;
            if (CFArrayGetCount(Value) != 2)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CFArrayGetValueAtIndex(v7, a2 != 0);
          }

          else
          {
            v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        FigCFDictionarySetValue();
        ++v5;
        --Count;
      }

      while (Count);
    }

    free(v11);
  }

  return Mutable;
}

void sub_1B195C9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkRTCReportingSessionInfoClientTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoClientType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t RTCReportingLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!RTCReportingLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __RTCReportingLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7AECDA8;
    v5 = 0;
    RTCReportingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = RTCReportingLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!RTCReportingLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __RTCReportingLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  RTCReportingLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkRTCReportingSessionInfoClientVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoClientVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoSessionIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoSessionID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoBatchEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoBatchEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoClientBundleIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoClientBundleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoClientBundleIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingUserInfoClientNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingUserInfoClientName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingUserInfoClientNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingUserInfoServiceNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingUserInfoServiceName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingUserInfoServiceNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRTCReportingClass_block_invoke(uint64_t a1)
{
  RTCReportingLibrary();
  result = objc_getClass("RTCReporting");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getRTCReportingClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getRTCReportingClass_block_invoke_cold_1();
    return __getkRTCReportingMessageParametersCategorySymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getkRTCReportingMessageParametersCategorySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingMessageParametersCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingMessageParametersCategorySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingMessageParametersTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingMessageParametersType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingMessageParametersTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingMessageParametersPayloadSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingMessageParametersPayload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingMessageParametersPayloadSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

float FigRoutingSessionManagerGetConfidenceThresholds(float *a1, float *a2)
{
  if (a1)
  {
    routingSessionManager_getConfiguration(&v8);
    FigGetCFPreferenceDoubleWithDefault();
    result = v4;
    *a1 = result;
  }

  if (a2)
  {
    routingSessionManager_getConfiguration(&v7);
    FigGetCFPreferenceDoubleWithDefault();
    result = v6;
    *a2 = result;
  }

  return result;
}

uint64_t FigRoutingSessionManagerCopyLongFormVideoManager(uint64_t a1, CFTypeRef *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (!a2)
  {
    goto LABEL_9;
  }

  if (routingSessionManager_getSingletonQueue_sSingletonQueueOnce != -1)
  {
    FigRoutingSessionManagerCopyLongFormVideoManager_cold_1();
  }

  block = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __FigRoutingSessionManagerCopyLongFormVideoManager_block_invoke;
  v11 = &unk_1E7AE73A0;
  v12 = &v13;
  dispatch_sync(routingSessionManager_getSingletonQueue_sSingletonQueue, &block);
  v3 = v14[3];
  if (v3)
  {
    v4 = 0;
    *a2 = CFRetain(v3);
  }

  else
  {
LABEL_9:
    v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, block, v9);
  }

  v5 = v14[3];
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v13, 8);
  return v4;
}

void sub_1B195D93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef __FigRoutingSessionManagerCopyLongFormVideoManager_block_invoke(uint64_t a1)
{
  result = sLongFormVideoManager;
  if (sLongFormVideoManager)
  {
    result = CFRetain(sLongFormVideoManager);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t FigRoutingSessionManagerInit(const void *a1)
{
  if (a1)
  {
    CFRetain(a1);
    if (routingSessionManager_getSingletonQueue_sSingletonQueueOnce != -1)
    {
      FigRoutingSessionManagerInit_cold_1();
    }

    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __FigRoutingSessionManagerInit_block_invoke;
    v3[3] = &__block_descriptor_40_e5_v8__0l;
    v3[4] = a1;
    MXDispatchAsync("FigRoutingSessionManagerInit", "FigRoutingSessionManager.m", 3565, 0, 0, routingSessionManager_getSingletonQueue_sSingletonQueue, v3);
    return 0;
  }

  else
  {
    FigRoutingSessionManagerInit_cold_2(&v4);
    return v4;
  }
}

void __FigRoutingSessionManagerInit_block_invoke(uint64_t a1)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  if (sLongFormVideoManager)
  {
    goto LABEL_64;
  }

  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  getpid();
  SInt32 = FigCFNumberCreateSInt32();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  v6 = fig_note_initialize_category_with_default_work();
  FigRoutingSessionManagerGetClassID(v6, v7);
  if (CMDerivedObjectCreate())
  {
    goto LABEL_47;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    v9 = CFRetain(v3);
  }

  else
  {
    v9 = 0;
  }

  *DerivedStorage = v9;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.coremedia.routing-session-manager.session-expiration", v10);
  *(DerivedStorage + 32) = v11;
  if (!v11)
  {
    __FigRoutingSessionManagerInit_block_invoke_cold_1();
LABEL_47:
    v15 = 0;
    v16 = 0;
    goto LABEL_57;
  }

  v12 = FigSimpleMutexCreate();
  *(DerivedStorage + 40) = v12;
  if (!v12)
  {
    goto LABEL_47;
  }

  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 104) = Mutable;
  if (!Mutable)
  {
    goto LABEL_47;
  }

  v14 = CFArrayCreate(v2, 0, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 48) = v14;
  if (!v14)
  {
    goto LABEL_47;
  }

  v15 = CFStringCreateWithFormat(v2, 0, @"FigRoutingSessionManager - %p", 0);
  v16 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt();
  LODWORD(valuePtr[0]) = 0;
  getpid();
  v17 = FigCFNumberCreateSInt32();
  CFNumberGetValue(v17, kCFNumberSInt32Type, valuePtr);
  v18 = [MXSystemController alloc];
  v19 = [(MXSystemController *)v18 initWithPID:LODWORD(valuePtr[0])];
  *(DerivedStorage + 16) = v19;
  v20 = v19;

  if (v17)
  {
    CFRelease(v17);
  }

  if (FigRouteDiscovererCreate(v2, v16, (DerivedStorage + 8)))
  {
    goto LABEL_57;
  }

  v21 = *(DerivedStorage + 8);
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v22)
  {
    goto LABEL_57;
  }

  if (v22(v21, @"clientPID", SInt32))
  {
    goto LABEL_57;
  }

  v23 = *(DerivedStorage + 8);
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v24 || v24(v23, @"clientName", v15))
  {
    goto LABEL_57;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  LODWORD(v44) = 0;
  valuePtr[0] = MEMORY[0x1E69E9820];
  valuePtr[1] = 3221225472;
  valuePtr[2] = __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke;
  valuePtr[3] = &unk_1E7AE73A0;
  valuePtr[4] = &v41;
  if (routingSessionManager_loadAirPlayRoutePredictionFramework_onceToken != -1)
  {
    dispatch_once(&routingSessionManager_loadAirPlayRoutePredictionFramework_onceToken, valuePtr);
  }

  _Block_object_dispose(&v41, 8);
  *(DerivedStorage + 24) = [sARPRoutePredictorClass routePredictor];
  CMNotificationCenterGetDefaultLocalCenter();
  if (FigNotificationCenterAddWeakListener())
  {
    goto LABEL_57;
  }

  context = v4;
  CMNotificationCenterGetDefaultLocalCenter();
  if (FigNotificationCenterAddWeakListener())
  {
    goto LABEL_57;
  }

  v41 = @"SomeLongFormVideoClientIsActiveOverAirPlayVideoDidChange";
  v42 = @"SomeLongFormVideoClientIsPlayingOverAirPlayVideo";
  v43 = @"SomeLongFormVideoClientIsPlayingDidChange";
  v44 = @"SomeSharePlayCapableCallSessionIsActiveDidChange";
  [*(DerivedStorage + 16) setAttributeForKey:@"SubscribeToNotifications" andValue:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v41, 4)}];
  CMNotificationCenterGetDefaultLocalCenter();
  if (FigNotificationCenterAddWeakListener())
  {
    goto LABEL_57;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  if (FigNotificationCenterAddWeakListener())
  {
    goto LABEL_57;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  if (FigNotificationCenterAddWeakListener())
  {
    goto LABEL_57;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    if (FigNotificationCenterAddWeakListener())
    {
      goto LABEL_57;
    }
  }

  cf = 0;
  v25 = *CMBaseObjectGetDerivedStorage();
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v26 && !v26(v25, &cf))
  {
    if (routingSessionManager_routeIsBuiltIn(cf))
    {
      if (dword_1EB75DF00)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      routingSessionManager_establishRoutingSessionFromCurrentRoutes(0, cf, @"Initial routes from FigRoutingContext");
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  *(DerivedStorage + 112) = routingSessionManager_copyEligibleInEarHeadphones(*(DerivedStorage + 8));
  routingSessionManager_updateSessionFromLatestInEarHeadphones(0);
  *(DerivedStorage + 120) = [*(DerivedStorage + 16) someSharePlayCapableCallSessionIsActive];
  routingSessionManager_updateSessionFromLatestActiveStatusOfSharePlayCapableCallSession(0);
  routingSessionManager_updatePredictedDestinations(0, &__block_literal_global_105);
  v28 = dlopen("/System/Library/PrivateFrameworks/MobileWiFi.framework/MobileWiFi", 1);
  v29 = v28;
  if (!v28)
  {
    goto LABEL_45;
  }

  v30 = dlsym(v28, "WiFiManagerClientCreate");
  sMobileWiFiWiFiManagerClientCreate = v30;
  if (!v30)
  {
    goto LABEL_45;
  }

  sFigNetworkInterfaceMonitorWifiManagerClient = v30(v2, 0);
  if (!sFigNetworkInterfaceMonitorWifiManagerClient)
  {
LABEL_56:
    dlclose(v29);
    goto LABEL_57;
  }

  v31 = dlsym(v29, "WiFiManagerClientCopyDevices");
  sMobileWiFiWiFiManagerClientCopyDevices = v31;
  if (!v31)
  {
    goto LABEL_45;
  }

  v32 = v31(sFigNetworkInterfaceMonitorWifiManagerClient);
  v33 = v32;
  if (!v32 || !CFArrayGetCount(v32))
  {
LABEL_51:
    if (sFigNetworkInterfaceMonitorWifiManagerClient)
    {
      CFRelease(sFigNetworkInterfaceMonitorWifiManagerClient);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (!v29)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v33, 0);
  sFigRoutingSessionManagerWiFiDevice = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  CFRelease(v33);
  v33 = dlsym(v29, "WiFiManagerClientScheduleWithRunLoop");
  sMobileWiFiWiFiManagerClientScheduleWithRunLoop = v33;
  if (!v33)
  {
LABEL_50:
    v4 = context;
    goto LABEL_51;
  }

  v35 = sFigNetworkInterfaceMonitorWifiManagerClient;
  Main = CFRunLoopGetMain();
  (v33)(v35, Main, *MEMORY[0x1E695E8E0]);
  v37 = dlsym(v29, "WiFiDeviceClientRegisterPowerCallback");
  sWiFiDeviceClientRegisterPowerCallback = v37;
  if (!v37)
  {
    v33 = 0;
    goto LABEL_50;
  }

  v37(sFigRoutingSessionManagerWiFiDevice, routingSessionManager_wifiPowerStatusChanged, 0);
  sWiFiDeviceClientGetPower = dlsym(v29, "WiFiDeviceClientGetPower");
  v4 = context;
  if (!sWiFiDeviceClientGetPower)
  {
LABEL_45:
    v33 = 0;
    goto LABEL_51;
  }

LABEL_57:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  objc_autoreleasePoolPop(v4);
LABEL_64:
  v38 = *(a1 + 32);
  if (v38)
  {
    CFRelease(v38);
  }
}

void routingSessionManager_updateConfiguration(const void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a1, @"RoutingSessionManagerConfiguration");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFDictionaryGetTypeID())
        {
          v6 = MGCopyAnswer();
          FigSimpleMutexLock();
          if (CFDictionaryContainsKey(v4, @"RoutePredictionsDisabled"))
          {
            v7 = CFDictionaryGetValue(v4, @"RoutePredictionsDisabled");
            if (v7)
            {
              v8 = CFGetTypeID(v7);
              if (v8 == CFDictionaryGetTypeID())
              {
                if (FigCFDictionaryGetBooleanIfPresent())
                {
                  if (dword_1EB75DF00)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  LOBYTE(gConfiguration) = 1;
                }
              }
            }
          }

          if (CFDictionaryContainsKey(v4, @"AutoRoutingDisabled"))
          {
            v10 = CFDictionaryGetValue(v4, @"AutoRoutingDisabled");
            if (v10)
            {
              v11 = CFGetTypeID(v10);
              if (v11 == CFDictionaryGetTypeID())
              {
                if (FigCFDictionaryGetBooleanIfPresent())
                {
                  if (dword_1EB75DF00)
                  {
                    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  BYTE1(gConfiguration) = 1;
                }
              }
            }
          }

          if (FigCFDictionaryGetFloatIfPresent() && -1.0 >= 0.0 && -1.0 <= 1.0)
          {
            if (dword_1EB75DF00)
            {
              v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            DWORD1(gConfiguration) = -1082130432;
          }

          if (FigCFDictionaryGetFloatIfPresent() && -1.0 >= 0.0 && -1.0 <= 1.0)
          {
            if (dword_1EB75DF00)
            {
              v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            DWORD2(gConfiguration) = -1082130432;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&xmmword_1EB75D788 = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(&xmmword_1EB75D788 + 1) = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&xmmword_1EB75D798 = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(&xmmword_1EB75D798 + 1) = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&xmmword_1EB75D7A8 = -1.0 * 60.0;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(&xmmword_1EB75D7A8 + 1) = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *&xmmword_1EB75D7B8 = 0xBFF0000000000000;
          }

          if (FigCFDictionaryGetDoubleIfPresent() && -1.0 >= 0.0)
          {
            if (dword_1EB75DF00)
            {
              v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            *(&xmmword_1EB75D7B8 + 1) = -1.0 * 60.0;
          }

          FigSimpleMutexUnlock();
          if (v6)
          {
            CFRelease(v6);
          }
        }
      }
    }
  }
}

dispatch_queue_t __routingSessionManager_getSingletonQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.coremedia.routingsessionmanager.singleton", v0);
  routingSessionManager_getSingletonQueue_sSingletonQueue = result;
  return result;
}

void routingSessionManager_airPlayVideoActiveChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16) == a4)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }

  else
  {
    routingSessionManager_airPlayVideoActiveChanged_cold_1(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v13, v14, SHIDWORD(v14), vars0);
  }
}

void routingSessionManager_airPlayVideoPlayingChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16) == a4)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }

  else
  {
    routingSessionManager_airPlayVideoPlayingChanged_cold_1(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v13, v14, SHIDWORD(v14), vars0);
  }
}

void routingSessionManager_sharePlayCapableCallSessionIsActiveChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetValue();
  v7 = FigCFEqual();
  if (v7 != *(DerivedStorage + 120))
  {
    v8 = v7;
    if (dword_1EB75DF00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 120) = v8;
    routingSessionManager_updateSessionFromLatestActiveStatusOfSharePlayCapableCallSession(a2);
  }
}

void routingSessionManager_predictionsForCurrentContextUpdated(uint64_t a1, const void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  routingSessionManager_updatePredictedDestinations(a2, &__block_literal_global_256);
}

void routingSessionManager_Finalize(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(DerivedStorage + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(DerivedStorage + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 72);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 80);
  if (v5)
  {
    CFRelease(v5);
  }

  FigSimpleMutexDestroy();
  v6 = *(DerivedStorage + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 104);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 112);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    dispatch_release(v9);
  }

  objc_autoreleasePoolPop(v1);
}

__CFString *routingSessionManager_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  cf = 0;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v3(a1, &cf);
    v3 = cf;
  }

  CFStringAppendFormat(Mutable, 0, @"<FigRoutingSessionManager = %p: currentSession = %@>", a1, v3);
  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

uint64_t routingSessionManager_CopyCurrentSession(uint64_t a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 72);
  if (!v4)
  {
    FigSimpleMutexUnlock();
    goto LABEL_5;
  }

  v5 = CFRetain(v4);
  FigSimpleMutexUnlock();
  if (!v5)
  {
LABEL_5:
    *a2 = 0;
    return 0;
  }

  *a2 = CFRetain(v5);
  CFRelease(v5);
  return 0;
}

uint64_t routingSessionManager_StartSessionForHighConfidenceDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v7)
  {
    return v7(a1, a2, a3);
  }

  else
  {
    return 4294954514;
  }
}

CFArrayRef routingSessionManager_CopyLikelyDestinations(uint64_t a1, CFTypeRef *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    routingSessionManager_CopyLikelyDestinations_cold_1(v15);
    return v15[0];
  }

  v4 = DerivedStorage;
  FigSimpleMutexLock();
  if (sWiFiDeviceClientGetPower)
  {
    v6 = sFigRoutingSessionManagerWiFiDevice == 0;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 || sWiFiDeviceClientGetPower(v5)) && *(v4 + 56))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = Current - MEMORY[0x1B2734210]([*(v4 + 56) microLocationEventDate]);
    routingSessionManager_getConfiguration(v13);
    if (v8 >= v14)
    {
      if (dword_1EB75DF00)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v9 = *(v4 + 48);
      if (v9)
      {
        v10 = CFRetain(v9);
        FigSimpleMutexUnlock();
        if (v10)
        {
LABEL_17:
          *a2 = CFRetain(v10);
          CFRelease(v10);
          return 0;
        }

        goto LABEL_15;
      }
    }
  }

  FigSimpleMutexUnlock();
LABEL_15:
  result = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  if (result)
  {
    v10 = result;
    goto LABEL_17;
  }

  *a2 = 0;
  return result;
}

void routingSessionManager_PrepareForPlayback(const void *a1, uint64_t a2, uint64_t a3)
{
  v31[7] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __routingSessionManager_PrepareForPlayback_block_invoke;
  aBlock[3] = &__block_descriptor_48_e8_v12__0i8l;
  aBlock[4] = a2;
  aBlock[5] = a3;
  v7 = _Block_copy(aBlock);
  Current = CFAbsoluteTimeGetCurrent();
  Configuration = routingSessionManager_getConfiguration(v27);
  v11 = v28;
  if (dword_1EB75DF00)
  {
    v26 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    Configuration = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!routingSessionManager_routePredictionsEnabled(Configuration, v10))
  {
    v15 = 0;
LABEL_27:
    v7[2](v7, 0);
    goto LABEL_28;
  }

  FigSimpleMutexLock();
  v13 = *(DerivedStorage + 104);
  if (v13)
  {
    v14 = CFArrayGetCount(v13) > 0;
  }

  else
  {
    v14 = 0;
  }

  v16 = *(DerivedStorage + 72);
  if (v16)
  {
    v15 = CFRetain(v16);
  }

  else
  {
    v15 = 0;
  }

  v17 = *(DerivedStorage + 96);
  v18 = *(DerivedStorage + 96) != 0;
  *(DerivedStorage + 96) = 0;
  v19 = v18 || v14;
  if (v18 || v14)
  {
    CFArrayAppendValue(*(DerivedStorage + 104), v7);
  }

  v20 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = 0;
  FigSimpleMutexUnlock();
  if (v20 && dword_1EB75DF00)
  {
    v26 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v19)
  {
    if (dword_1EB75DF00)
    {
      v26 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_27;
  }

  if (v17)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (v15)
    {
      CFRetain(v15);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __routingSessionManager_PrepareForPlayback_block_invoke_110;
    v24[3] = &__block_descriptor_56_e8_v12__0i8l;
    v22 = Current + v11;
    v24[4] = a1;
    v24[5] = DerivedStorage;
    v24[6] = v15;
    if (a1)
    {
      CFRetain(a1);
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke;
    v30[3] = &unk_1E7AECE30;
    v30[4] = v24;
    v30[5] = a1;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke_2;
    v31[3] = &unk_1E7AECE58;
    v31[4] = v24;
    v31[5] = a1;
    routingSessionManager_discoverRoutes(v30, v31, v22);
  }

LABEL_28:
  if (v15)
  {
    CFRelease(v15);
  }

  _Block_release(v7);
}

uint64_t routingSessionManager_getAirPlayVideoPlaying(uint64_t a1, unsigned __int8 *a2)
{
  v3 = [*(CMBaseObjectGetDerivedStorage() + 16) someLongFormVideoClientIsPlayingOverAirPlayVideo];
  if (a2)
  {
    v4 = v3;
    result = 0;
    *a2 = v4;
  }

  else
  {
    routingSessionManager_getAirPlayVideoPlaying_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t routingSessionManager_UpdateCurrentSessionFromLikelyDestinations(const void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DF00)
  {
    v12 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    CFRetain(a1);
  }

  v8 = *(DerivedStorage + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __routingSessionManager_UpdateCurrentSessionFromLikelyDestinations_block_invoke;
  v10[3] = &__block_descriptor_64_e5_v8__0l;
  v10[4] = a1;
  v10[5] = DerivedStorage;
  v10[6] = a2;
  v10[7] = a3;
  MXDispatchAsync("routingSessionManager_UpdateCurrentSessionFromLikelyDestinations", "FigRoutingSessionManager.m", 1386, 0, 0, v8, v10);
  return 0;
}

uint64_t routingSessionManager_StartSuppressingLikelyDestinations(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 64) = 1;
  FigSimpleMutexUnlock();
  routingSessionManager_updatePredictedDestinations(a1, &__block_literal_global_234);
  return 0;
}

uint64_t routingSessionManager_StopSuppressingLikelyDestinations(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 64) = 0;
  FigSimpleMutexUnlock();
  routingSessionManager_updatePredictedDestinations(a1, &__block_literal_global_236);
  return 0;
}

uint64_t routingSessionManager_routePredictionsEnabled(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsCorianderEnabled(a1, a2))
  {
    return 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableRoutePrediction", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  routingSessionManager_getConfiguration(v5);
  if (!LOBYTE(v5[0]) || !keyExistsAndHasValidFormat)
  {
    routingSessionManager_getConfiguration(v4);
    return LOBYTE(v4[0]);
  }

  return AppBooleanValue;
}

uint64_t __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke(uint64_t a1, const __CFArray *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  theDict = 0;
  cf = 0;
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5(v4, &cf);
  if (v6)
  {
LABEL_60:
    v29 = v6;
LABEL_25:
    v30 = *(a1 + 32);
    if (v30)
    {
      (*(v30 + 16))(v30, v29);
    }

    goto LABEL_27;
  }

  v7 = cf;
  if (cf)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v6 = v8(v7, &theDict);
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_60;
    }

LABEL_24:
    v29 = 4294954514;
    goto LABEL_25;
  }

LABEL_6:
  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"routingSessionDestination_RouteDescriptors")) == 0)
  {
    if (dword_1EB75DF00)
    {
      LODWORD(block[0]) = 0;
      v49[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v33 = block[0];
      v34 = v49[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v49[0]))
      {
        v35 = v33;
      }

      else
      {
        v35 = v33 & 0xFFFFFFFE;
      }

      if (v35)
      {
        LODWORD(v64) = 136315138;
        *(&v64 + 4) = "routingSessionManager_routeToDestinationOfCurrentSession_block_invoke";
        _os_log_send_and_compose_impl(v35, 0, v63, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v34, "-FigRoutingSessionManager- %s: Bailing out of discovery, because there is no current session or the current session is not routed to a destination", &v64);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v29 = 0;
    goto LABEL_25;
  }

  v10 = routingSessionManager_copyRouteDescriptorsMatchingPropertiesOfRouteDescriptors(a2, Value, 0);
  v11 = 0;
  if (!v10)
  {
    goto LABEL_28;
  }

  v12 = v10;
  Current = CFAbsoluteTimeGetCurrent();
  routingSessionManager_getConfiguration(v43);
  v14 = Current + v44;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke_119;
  v42[3] = &unk_1E7AECE08;
  v15 = *(a1 + 40);
  v42[4] = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v19 = FigNotificationListenerCreate(*DerivedStorage, @"routeConfigUpdated");
  v41 = CFUUIDCreate(v17);
  v20 = CFUUIDCreateString(v17, v41);
  CFDictionarySetValue(Mutable, @"clientRouteRequestID", v20);
  CFDictionarySetValue(Mutable, @"initiator", @"FigRoutingSessionManager");
  FigSimpleMutexLock();
  *(DerivedStorage + 121) = 1;
  FigSimpleMutexUnlock();
  v21 = ((v14 - CFAbsoluteTimeGetCurrent()) * 1000000000.0);
  if (v15)
  {
    CFRetain(v15);
  }

  v22 = dispatch_time(0, v21);
  v23 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __routingSessionManager_setDestinationOnRoutingContext_block_invoke;
  block[3] = &unk_1E7AECF20;
  block[4] = v42;
  block[5] = DerivedStorage;
  block[6] = v15;
  dispatch_after(v22, v23, block);
  if (v19)
  {
    CFRetain(v19);
  }

  if (v15)
  {
    CFRetain(v15);
  }

  if (v20)
  {
    CFRetain(v20);
  }

  CFRetain(v12);
  *v49 = MEMORY[0x1E69E9820];
  v50 = 3221225472;
  v51 = __routingSessionManager_setDestinationOnRoutingContext_block_invoke_157;
  v52 = &__block_descriptor_56_e9_v16__0_v8l;
  v53 = v20;
  v54 = v12;
  v55 = v19;
  *&v64 = MEMORY[0x1E69E9820];
  *(&v64 + 1) = 3221225472;
  v65 = __routingSessionManager_setDestinationOnRoutingContext_block_invoke_2;
  v66 = &unk_1E7AECF68;
  v67 = v42;
  v68 = DerivedStorage;
  v69 = v15;
  v70 = v19;
  v71 = v20;
  v72 = v12;
  if (FigNotificationListenerStartNotifications(v19, 0, v49, &v64))
  {
    goto LABEL_47;
  }

  v24 = FigRouteDescriptorArrayCopySuccinctDescription(v17, v12);
  if (dword_1EB75DF00)
  {
    v40 = Mutable;
    v48 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v48;
    v27 = type;
    if (os_log_type_enabled(v25, type))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v57 = 136315650;
      v58 = "routingSessionManager_setDestinationOnRoutingContext";
      v59 = 2114;
      v60 = v20;
      v61 = 2114;
      v62 = v24;
      _os_log_send_and_compose_impl(v28, 0, v63, 128, &dword_1B17A2000, v25, v27, "-FigRoutingSessionManager- %s: Selecting route descriptors (clientRouteRequestID=%{public}@: %{public}@", &v57, 32);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    Mutable = v40;
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v36 = *DerivedStorage;
  v37 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v37)
  {
LABEL_47:
    v38 = v41;
    goto LABEL_48;
  }

  v38 = v41;
  if (v37(v36, v12, Mutable))
  {
LABEL_48:
    SInt32 = FigCFNumberCreateSInt32();
    FigNotificationListenerStopNotifications(v19, SInt32);
    if (SInt32)
    {
      CFRelease(SInt32);
    }
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  CFRelease(v12);
LABEL_27:
  v11 = 1;
LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v11;
}

uint64_t FigRoutingSessionCopyDestination(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

CFTypeRef routingSessionManager_copyRouteDescriptorsMatchingPropertiesOfRouteDescriptors(const __CFArray *a1, const __CFArray *a2, int a3)
{
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = 0;
  v17 = a2;
  if (!a2)
  {
    goto LABEL_3;
  }

LABEL_2:
  Count = CFArrayGetCount(a2);
LABEL_4:
  if (v6 < Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v17, v6);
    CFDictionaryGetValue(ValueAtIndex, @"RouteUID");
    CFDictionaryGetValue(ValueAtIndex, @"RouteName");
    v9 = 0;
    if (a1)
    {
LABEL_6:
      v10 = CFArrayGetCount(a1);
      goto LABEL_8;
    }

    while (1)
    {
      v10 = 0;
LABEL_8:
      if (v9 >= v10)
      {
        break;
      }

      v11 = CFArrayGetValueAtIndex(a1, v9);
      CFDictionaryGetValue(v11, @"RouteUID");
      CFDictionaryGetValue(v11, @"RouteName");
      if (FigCFEqual() || a3 && FigCFEqual())
      {
        if (!v11)
        {
          break;
        }

        CFArrayAppendValue(theArray, v11);
        a2 = v17;
        ++v6;
        if (!v17)
        {
LABEL_3:
          Count = 0;
          goto LABEL_4;
        }

        goto LABEL_2;
      }

      ++v9;
      if (a1)
      {
        goto LABEL_6;
      }
    }
  }

  if (theArray)
  {
    v12 = CFArrayGetCount(theArray);
  }

  else
  {
    v12 = 0;
  }

  v13 = v17;
  if (v17)
  {
    v13 = CFArrayGetCount(v17);
  }

  if (v12 == v13)
  {
    if (theArray)
    {
      v14 = CFRetain(theArray);
LABEL_25:
      CFRelease(theArray);
      return v14;
    }

    return 0;
  }

  else
  {
    v14 = 0;
    result = 0;
    if (theArray)
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke_119(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __routingSessionManager_routeToDestinationOfCurrentSession_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void routingSessionManager_vendDiscoveredRoutes(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"RouteDiscoverer");
  cf = 0;
  if (Value)
  {
    v5 = Value;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v7 = v6(v5, @"availableRouteDescriptors", *MEMORY[0x1E695E480], &cf);
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        if (!(*(a2 + 16))(a2, cf))
        {
          goto LABEL_8;
        }

        v8 = 0;
      }
    }

    else
    {
      v8 = 4294954514;
    }

    routingSessionManager_stopDiscovery(a1, v8);
LABEL_8:
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void __routingSessionManager_discoverRoutes_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __routingSessionManager_discoverRoutes_block_invoke_3(uint64_t a1)
{
  routingSessionManager_vendDiscoveredRoutes(*(a1 + 40), *(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __routingSessionManager_discoverRoutes_block_invoke_4(uint64_t a1)
{
  routingSessionManager_stopDiscovery(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void routingSessionManager_stopDiscovery(const __CFDictionary *a1, uint64_t a2)
{
  SInt32 = FigCFNumberCreateSInt32();
  Value = CFDictionaryGetValue(a1, @"NotificationListener");
  v5 = CFDictionaryGetValue(a1, @"RouteDiscoverer");
  v6 = CFDictionaryGetValue(a1, @"TimeoutTimer");
  if (Value)
  {
    FigNotificationListenerStopNotifications(Value, SInt32);
    CFDictionaryRemoveValue(a1, @"NotificationListener");
  }

  if (v5)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(v5, @"DiscoveryMode", @"DiscoveryMode_None");
    }

    CFDictionaryRemoveValue(a1, @"RouteDiscoverer");
  }

  if (v6)
  {
    dispatch_source_cancel(v6);
    CFDictionaryRemoveValue(a1, @"TimeoutTimer");
  }

  if (SInt32)
  {

    CFRelease(SInt32);
  }
}

void __routingSessionManager_startDiscovery_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  routingSessionManager_stopDiscovery(*(a1 + 32), 4294951904);
}

void __routingSessionManager_startDiscovery_block_invoke_129(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t FigNotificationListenerStartNotifications(const __CFDictionary *a1, uint64_t a2, const void *a3, const void *a4)
{
  CFDictionaryGetValue(a1, @"notificationCenter");
  CFDictionaryGetValue(a1, @"observedObject");
  CFDictionaryGetValue(a1, @"notificationName");
  Value = CFDictionaryGetValue(a1, @"serializationQueue");
  v8 = _Block_copy(a3);
  v9 = _Block_copy(a4);
  v10 = v9;
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __FigNotificationListenerStartNotifications_block_invoke;
    v13[3] = &unk_1E7AECEF8;
    v13[5] = v9;
    v13[6] = a1;
    v13[4] = v8;
    dispatch_sync(Value, v13);
    v11 = FigNotificationCenterAddWeakListener();
  }

  else
  {
    FigNotificationListenerStartNotifications_cold_1(&v14);
    v11 = v14;
  }

  _Block_release(v8);
  _Block_release(v10);
  return v11;
}

uint64_t __routingSessionManager_startDiscovery_block_invoke_3(uint64_t a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, valuePtr);
  }

  return result;
}

void __FigNotificationListenerStartNotifications_block_invoke(uint64_t a1)
{
  CFDictionarySetValue(*(a1 + 48), @"notificationBlock", *(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);

    CFDictionarySetValue(v3, @"completionBlock", v2);
  }
}

void notificationListener_receivedNotification(int a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Value = CFDictionaryGetValue(theDict, @"serializationQueue");
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__17;
  v14 = __Block_byref_object_dispose__17;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __notificationListener_receivedNotification_block_invoke;
  v9[3] = &unk_1E7AE7168;
  v9[4] = &v10;
  v9[5] = theDict;
  dispatch_sync(Value, v9);
  v8 = v11[5];
  if (v8)
  {
    v8[2](v8, a5);
    v8 = v11[5];
  }

  _Block_release(v8);
  _Block_object_dispose(&v10, 8);
}

void sub_1B1961F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__notificationListener_receivedNotification_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 40), @"notificationBlock");
  result = _Block_copy(Value);
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t FigNotificationListenerStopNotifications(const __CFDictionary *a1, uint64_t a2)
{
  CFDictionaryGetValue(a1, @"notificationCenter");
  CFDictionaryGetValue(a1, @"observedObject");
  CFDictionaryGetValue(a1, @"notificationName");
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__17;
  v13 = __Block_byref_object_dispose__17;
  v14 = 0;
  Value = CFDictionaryGetValue(a1, @"serializationQueue");
  v5 = FigNotificationCenterRemoveWeakListener();
  if (!v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigNotificationListenerStopNotifications_block_invoke;
    v8[3] = &unk_1E7AE7168;
    v8[4] = &v9;
    v8[5] = a1;
    dispatch_sync(Value, v8);
    v6 = v10[5];
    if (v6)
    {
      (*(v6 + 16))(v6, a2);
    }
  }

  _Block_release(v10[5]);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_1B196212C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FigNotificationListenerStopNotifications_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 40), @"completionBlock");
  *(*(*(a1 + 32) + 8) + 40) = _Block_copy(Value);
  CFDictionaryRemoveValue(*(a1 + 40), @"notificationBlock");
  v3 = *(a1 + 40);

  CFDictionaryRemoveValue(v3, @"completionBlock");
}

void __routingSessionManager_setDestinationOnRoutingContext_block_invoke(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v2 = a1[5];
  v3 = *(v2 + 121);
  *(v2 + 121) = 0;
  FigSimpleMutexUnlock();
  if (v3)
  {
    if (dword_1EB75DF00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    (*(a1[4] + 16))();
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }
}

void __routingSessionManager_setDestinationOnRoutingContext_block_invoke_157(uint64_t a1, const __CFDictionary *a2)
{
  v4 = objc_autoreleasePoolPush();
  CFDictionaryGetValue(a2, @"routeConfigUpdateID");
  CFDictionaryGetValue(a2, @"routeConfigUpdateReason");
  if (FigCFEqual() && (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual()))
  {
    SInt32 = FigCFNumberCreateSInt32();
    if (gARPFeedback_7 && gARPFeedback_3 && FigCFEqual() && FigCFEqual())
    {
      v6 = routingSessionManager_outputDeviceIDsArrayFromRouteDescriptors(*(a1 + 40));
      gARPFeedback_7(gARPFeedback_3, v6);
    }

    FigNotificationListenerStopNotifications(*(a1 + 48), SInt32);
    if (SInt32)
    {
      CFRelease(SInt32);
    }
  }

  objc_autoreleasePoolPop(v4);
}

id routingSessionManager_outputDeviceIDsArrayFromRouteDescriptors(const __CFArray *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v3 = 0;
  if (!a1)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(a1); v3 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, @"RouteUID");
      if (Value)
      {
        [v2 addObject:Value];
      }
    }

    ++v3;
    if (a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return v2;
}

void __routingSessionManager_setDestinationOnRoutingContext_block_invoke_2(void *a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  FigSimpleMutexLock();
  v3 = a1[5];
  v4 = *(v3 + 121);
  *(v3 + 121) = 0;
  FigSimpleMutexUnlock();
  if (v4)
  {
    v5 = a1[4];
    if (v5)
    {
      (*(v5 + 16))(v5, valuePtr);
    }
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[8];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[9];
  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t routingSession_establishedAutomaticallyFromLikelyDestination(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  FigRoutingSessionGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  if (v3(v2, @"EstablishedAutomaticallyFromLikelyDestination", *MEMORY[0x1E695E480], &cf))
  {
    v4 = 0;
  }

  else
  {
    v4 = cf == *MEMORY[0x1E695E4D0];
  }

  v5 = v4;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t routingSession_establishedBasedOnInEarStatusOfConnectedHeadphones()
{
  BOOLean = 0;
  FigRoutingSessionGetCMBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(v1, @"EstablishedBasedOnInEarStatusOfConnectedHeadphones", *MEMORY[0x1E695E480], &BOOLean);
  v4 = BOOLean;
  if (v3)
  {
    Value = 0;
    if (!BOOLean)
    {
      return Value;
    }

    goto LABEL_4;
  }

  Value = CFBooleanGetValue(BOOLean);
  v4 = BOOLean;
  if (BOOLean)
  {
LABEL_4:
    CFRelease(v4);
  }

  return Value;
}

uint64_t routingSession_establishedBasedOnActiveSharePlayCapableCallSession()
{
  BOOLean = 0;
  FigRoutingSessionGetCMBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(v1, @"EstablishedBasedOnActiveSharePlayCapableCallSession", *MEMORY[0x1E695E480], &BOOLean);
  v4 = BOOLean;
  if (v3)
  {
    Value = 0;
    if (!BOOLean)
    {
      return Value;
    }

    goto LABEL_4;
  }

  Value = CFBooleanGetValue(BOOLean);
  v4 = BOOLean;
  if (BOOLean)
  {
LABEL_4:
    CFRelease(v4);
  }

  return Value;
}

void __routingSessionManager_updateSessionExpiration_block_invoke(uint64_t a1)
{
  routingSessionManager_updateSessionExpiration(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t routingSessionManager_createFakePredictionContext()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5[0] = &unk_1F28AF7F0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v1 = [sARPPredictionContextClass alloc];
  v2 = [MEMORY[0x1E695DF00] date];
  return [v1 initWithPredictionDate:v2 microLocationEventDate:objc_msgSend(MEMORY[0x1E695DF00] microLocationProbabilityVector:{"date"), v0}];
}

id __routingSessionManager_waitForRecentPredictions_block_invoke_2(uint64_t a1)
{
  v4 = 0;
  v2 = [*(*(a1 + 40) + 24) predictionsWithCurrentContext:&v4];
  result = v4;
  if (v4)
  {
    result = [objc_msgSend(v4 "microLocationEventDate")];
    if (result == 1)
    {
      [*(a1 + 32) invokeWithRoutePredictions:v2 predictionContext:v4];
      return FigNotificationListenerStopNotifications(*(a1 + 56), 0);
    }
  }

  return result;
}

void __routingSessionManager_waitForRecentPredictions_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __routingSessionManager_waitForRecentPredictions_block_invoke_4(uint64_t a1)
{
  v5 = 0;
  v2 = [*(*(a1 + 40) + 24) predictionsWithCurrentContext:&v5];
  if (v5 && [objc_msgSend(v5 "microLocationEventDate")] == 1)
  {
    [*(a1 + 32) invokeWithRoutePredictions:v2 predictionContext:v5];
    FigNotificationListenerStopNotifications(*(a1 + 56), 0);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }
}

void __routingSessionManager_waitForRecentPredictions_block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) invokeWithRoutePredictions:0 predictionContext:0];
  FigNotificationListenerStopNotifications(*(a1 + 40), 0);
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __routingSessionManager_startSessionIfNecessary_block_invoke(uint64_t *a1, uint64_t a2, const __CFDictionary *a3, void *a4, int a5)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    routingSessionManager_updateCurrentSession(a1[4], 0, 0, 0, 1, 0, 0, 0, 0, 0, @"Top predicted destination not found", 0);
    v7 = 0;
    goto LABEL_57;
  }

  routingSessionManager_getConfiguration(cf);
  FigGetCFPreferenceDoubleWithDefault();
  if (!a3)
  {
    if (dword_1EB75DF00)
    {
      *keyExistsAndHasValidFormat = 0.0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_54:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_55;
    }

    goto LABEL_55;
  }

  v12 = v11;
  Value = CFDictionaryGetValue(a3, @"routingSessionDestination_RouteDescriptors");
  v14 = routingSessionManager_outputDeviceIDsArrayFromRouteDescriptors(Value);
  if (MX_FeatureFlags_IsCorianderEnabled(v14, v15))
  {
    goto LABEL_5;
  }

  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableAutoRouting", @"com.apple.coremedia", keyExistsAndHasValidFormat);
  routingSessionManager_getConfiguration(cf);
  if (!BYTE1(cf[0]) || !keyExistsAndHasValidFormat[0])
  {
    routingSessionManager_getConfiguration(&v50);
    AppBooleanValue = BYTE1(v50);
  }

  if (!AppBooleanValue)
  {
LABEL_5:
    if (dword_1EB75DF00)
    {
      *keyExistsAndHasValidFormat = 0.0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v17 = *keyExistsAndHasValidFormat;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        LODWORD(v50) = 136315138;
        *(&v50 + 4) = "routingSessionManager_startSessionIfNecessary_block_invoke";
        _os_log_send_and_compose_impl(v18, 0, cf, 128, &dword_1B17A2000, v16, 0, "-FigRoutingSessionManager- %s: Auto routing sessions are turned off.", &v50);
      }

      goto LABEL_54;
    }

    goto LABEL_55;
  }

  if (sWiFiDeviceClientGetPower && sFigRoutingSessionManagerWiFiDevice && !sWiFiDeviceClientGetPower(v21))
  {
    if (dword_1EB75DF00)
    {
      *keyExistsAndHasValidFormat = 0.0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v38 = *keyExistsAndHasValidFormat;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        LODWORD(v50) = 136315138;
        *(&v50 + 4) = "routingSessionManager_startSessionIfNecessary_block_invoke";
        _os_log_send_and_compose_impl(v39, 0, cf, 128, &dword_1B17A2000, v37, 0, "-FigRoutingSessionManager- %s: Wifi is powered off so not starting session", &v50);
      }

      goto LABEL_54;
    }

    goto LABEL_55;
  }

  if (CFDictionaryGetValue(a3, @"routingSessionDestination_ProvidesExternalVideoPlayback") != *MEMORY[0x1E695E4D0] && !routingSessionManager_routeIsBuiltIn(Value))
  {
    if (dword_1EB75DF00)
    {
      *keyExistsAndHasValidFormat = 0.0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v35 = *keyExistsAndHasValidFormat;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        LODWORD(v50) = 136315138;
        *(&v50 + 4) = "routingSessionManager_startSessionIfNecessary_block_invoke";
        _os_log_send_and_compose_impl(v36, 0, cf, 128, &dword_1B17A2000, v34, 0, "-FigRoutingSessionManager- %s: Top prediction does not support AirPlay video and is not built-in, not starting session", &v50);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = 0;
    if (!gARPFeedback_6 || !gARPFeedback_2)
    {
      goto LABEL_56;
    }

    gARPFeedback_6(gARPFeedback_2, v14);
    goto LABEL_55;
  }

  v22 = v12;
  *keyExistsAndHasValidFormat = 0.0;
  FigCFDictionaryGetFloatIfPresent();
  LODWORD(v23) = *keyExistsAndHasValidFormat;
  if (*keyExistsAndHasValidFormat < v22)
  {
    if (dword_1EB75DF00)
    {
      goto LABEL_53;
    }

    goto LABEL_55;
  }

  if (a4 && (v24 = [a4 microLocationEventDate]) != 0 && (v25 = CFRetain(v24)) != 0)
  {
    v7 = v25;
    Current = CFAbsoluteTimeGetCurrent();
    v27 = Current - MEMORY[0x1B2734210](v7);
    routingSessionManager_getConfiguration(&v46);
    if (v27 >= v47)
    {
      if (dword_1EB75DF00)
      {
        *type = 0;
        v44 = OS_LOG_TYPE_DEFAULT;
        v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_56;
    }

    if (dword_1EB75DF00)
    {
      *type = 0;
      v44 = OS_LOG_TYPE_DEFAULT;
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (!a5)
    {
      if (dword_1EB75DF00)
      {
LABEL_53:
        *type = 0;
        v44 = OS_LOG_TYPE_DEFAULT;
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
        goto LABEL_54;
      }

LABEL_55:
      v7 = 0;
LABEL_56:
      routingSessionManager_updateCurrentSession(a1[4], 0, 0, 0, 1, 0, 0, 0, 0, 0, @"No longer in high confidence", 0);
      goto LABEL_57;
    }

    if (dword_1EB75DF00)
    {
      __routingSessionManager_startSessionIfNecessary_block_invoke_cold_1();
    }

    v7 = 0;
  }

  v29 = a1[4];
  cf[0] = 0;
  v30 = CFDictionaryGetValue(a3, @"routingSessionDestination_RouteDescriptors");
  LOBYTE(v50) = 0;
  v31 = routingSessionManager_outputDeviceIDsArrayFromRouteDescriptors(v30);
  if (!FigRoutingSessionCreate(*MEMORY[0x1E695E480], 1, a3, cf))
  {
    routingSessionManager_updateCurrentSession(v29, cf[0], a4, 1, 1, 0, 0, 0, 0, 0, @"Establish predicted session", &v50);
    if (v50)
    {
      v32 = gARPFeedback_5;
      if (!gARPFeedback_5)
      {
        goto LABEL_67;
      }

      v33 = gARPFeedback_0;
      if (!gARPFeedback_0)
      {
        goto LABEL_67;
      }

LABEL_66:
      v32(v33, v31);
      goto LABEL_67;
    }

    v32 = gARPFeedback_6;
    if (gARPFeedback_6)
    {
      v33 = gARPFeedback_4;
      if (gARPFeedback_4)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_57:
  v41 = a1[5];
  if (v41)
  {
    v41(a1[6], a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v42 = a1[4];
  if (v42)
  {
    CFRelease(v42);
  }
}

uint64_t __routingSessionManager_findTopAvailablePredictedDestination_block_invoke(uint64_t a1, const __CFArray *a2)
{
  cf[20] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v12 = 0;
  cf[0] = 0;
  v11 = 0;
  routingSessionManager_copyTopPredictedDestination(*(a1 + 40), cf, &v12, &v11);
  if (cf[0])
  {
    AvailableDestinationFromAvailableRoutes = routingSessionManager_createAvailableDestinationFromAvailableRoutes(a2, cf[0]);
    if (!AvailableDestinationFromAvailableRoutes)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v6 = AvailableDestinationFromAvailableRoutes;
    v7 = FigRoutingSessionDestinationCopyDescription(*MEMORY[0x1E695E480], AvailableDestinationFromAvailableRoutes);
    if (dword_1EB75DF00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v7)
    {
      CFRelease(v7);
    }

    (*(*(a1 + 32) + 16))();
    CFRelease(v6);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v9 = 1;
LABEL_11:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

void routingSessionManager_copyTopPredictedDestination(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = 0;
  v6 = routingSessionManager_copyCurrentPredictedDestinations(a1, &v9, a4);
  v7 = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(v6); v7 < i; i = 0)
  {
    CFArrayGetValueAtIndex(v6, v7);
    FigCFDictionaryGetFloatIfPresent();
    ++v7;
    if (v6)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

const __CFDictionary *routingSessionManager_createAvailableDestinationFromAvailableRoutes(const __CFArray *a1, CFDictionaryRef theDict)
{
  MutableCopy = theDict;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"routingSessionDestination_RouteDescriptors");
    v5 = routingSessionManager_copyRouteDescriptorsMatchingPropertiesOfRouteDescriptors(a1, Value, 1);
    v6 = routingSessionManager_routeDescriptorsProvideExternalVideoPlayback(v5);
    if (v5)
    {
      v7 = MEMORY[0x1E695E4C0];
      if (v6)
      {
        v7 = MEMORY[0x1E695E4D0];
      }

      v8 = *v7;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, MutableCopy);
      CFDictionarySetValue(MutableCopy, @"routingSessionDestination_RouteDescriptors", v5);
      CFDictionarySetValue(MutableCopy, @"routingSessionDestination_ProvidesExternalVideoPlayback", v8);
      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return MutableCopy;
}

void __routingSessionManager_findTopAvailablePredictedDestination_block_invoke_198(uint64_t a1, int a2)
{
  theDict[16] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (a2)
  {
    if (gARPFeedback_6)
    {
      v5 = gARPFeedback_1 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      theDict[0] = 0;
      routingSessionManager_copyTopPredictedDestination(*(a1 + 40), theDict, 0, 0);
      if (theDict[0] && (Value = CFDictionaryGetValue(theDict[0], @"routingSessionDestination_RouteDescriptors")) != 0)
      {
        v7 = routingSessionManager_outputDeviceIDsArrayFromRouteDescriptors(Value);
      }

      else
      {
        v7 = 0;
      }

      gARPFeedback_6(gARPFeedback_1, v7);
      if (theDict[0])
      {
        CFRelease(theDict[0]);
      }
    }

    if (dword_1EB75DF00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    (*(*(a1 + 32) + 16))();
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  objc_autoreleasePoolPop(v4);
}

__CFArray *routingSessionManager_copyCurrentPredictedDestinations(uint64_t a1, void *a2, _BYTE *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FakePredictionContext = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!routingSessionManager_routePredictionsEnabled(DerivedStorage, v8))
  {
LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  if (v9)
  {
    if (dword_1EB75DF00)
    {
      v44 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_7;
  }

  v38 = a2;
  context = objc_autoreleasePoolPush();
  v48[0] = 0.0;
  v47 = 0.0;
  v11 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  v12 = CFPreferencesCopyAppValue(@"HighConfidenceRouteName", @"com.apple.coremedia");
  v13 = CFPreferencesCopyAppValue(@"HighestMediumConfidenceRouteName", @"com.apple.coremedia");
  v14 = CFPreferencesCopyAppValue(@"ForcedHighConfidenceDeviceUID", @"com.apple.coremedia");
  v15 = CFPreferencesCopyAppValue(@"ForcedMediumConfidenceDeviceUID", @"com.apple.coremedia");
  FigRoutingSessionManagerGetConfidenceThresholds(v48, &v47);
  if (v15)
  {
    DestinationWithRouteID = routingSessionManager_createDestinationWithRouteID(v15, 1, v47);
    CFArrayAppendValue(v11, DestinationWithRouteID);
    v17 = 0;
    v18 = v47;
  }

  else
  {
    if (!v14)
    {
      if (v12)
      {
        v34 = (1.0 - v48[0]) * 3.0 / 5.0 + v48[0];
        DestinationWithRouteName = routingSessionManager_createDestinationWithRouteName(v12, v34);
        CFArrayAppendValue(v11, DestinationWithRouteName);
        v21 = 1.0 - v34;
        if (DestinationWithRouteName)
        {
          CFRelease(DestinationWithRouteName);
        }
      }

      else
      {
        v21 = 1.0;
      }

      if (!v13)
      {
        v17 = 1;
        goto LABEL_13;
      }

      v36 = v21 * 3.0 / 5.0;
      DestinationWithRouteID = routingSessionManager_createDestinationWithRouteName(v13, v36);
      CFArrayAppendValue(v11, DestinationWithRouteID);
      v21 = v21 - v36;
      v17 = 1;
      if (!DestinationWithRouteID)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    DestinationWithRouteID = routingSessionManager_createDestinationWithRouteID(v14, 1, v48[0]);
    CFArrayAppendValue(v11, DestinationWithRouteID);
    v17 = 0;
    v18 = v48[0];
  }

  v21 = 1.0 - v18;
  if (DestinationWithRouteID)
  {
LABEL_12:
    CFRelease(DestinationWithRouteID);
  }

LABEL_13:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v11)
  {
    if (CFArrayGetCount(v11) >= 1)
    {
      v50.length = CFArrayGetCount(v11);
      v50.location = 0;
      CFArrayAppendArray(Mutable, v11, v50);
      if (a3)
      {
        *a3 = 1;
      }
    }

    CFRelease(v11);
  }

  if (v17)
  {
    v22 = *(DerivedStorage + 24);
    if (v22)
    {
      v23 = [v22 predictionsWithCurrentContext:&FakePredictionContext];
      v24 = FakePredictionContext;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v25 = [v23 countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v40;
        v28 = v21;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(v23);
            }

            v30 = *(*(&v39 + 1) + 8 * i);
            [v30 confidence];
            v32 = v31 * v28;
            v33 = routingSessionManager_createDestinationWithRouteID([v30 outputDeviceID], 0, v32);
            CFArrayAppendValue(Mutable, v33);
            if (v33)
            {
              CFRelease(v33);
            }
          }

          v26 = [v23 countByEnumeratingWithState:&v39 objects:v46 count:16];
        }

        while (v26);
      }
    }
  }

  else
  {
    FakePredictionContext = routingSessionManager_createFakePredictionContext();
  }

  objc_autoreleasePoolPop(context);
  v19 = FakePredictionContext;
  if (v38)
  {
    *v38 = FakePredictionContext;
    v19 = FakePredictionContext;
  }

LABEL_8:

  return Mutable;
}

__CFDictionary *routingSessionManager_createDestinationWithRouteID(void *a1, int a2, float a3)
{
  values = a1;
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E528];
  v6 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  cf = CFDictionaryCreate(v4, kFigEndpointDescriptorKey_RouteUID, &values, 1, v5, v6);
  v8 = CFArrayCreate(v4, &cf, 1, MEMORY[0x1E695E9C0]);
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"routingSessionDestination_RouteDescriptors", v8);
  }

  FigCFDictionarySetFloat();
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"routingSessionDestination_FromForcedPrediction", *MEMORY[0x1E695E4D0]);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

__CFDictionary *routingSessionManager_createDestinationWithRouteName(void *a1, float a2)
{
  values = a1;
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E528];
  v4 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  cf = CFDictionaryCreate(v2, kFigEndpointDescriptorKey_RouteName, &values, 1, v3, v4);
  v6 = CFArrayCreate(v2, &cf, 1, MEMORY[0x1E695E9C0]);
  v7 = MEMORY[0x1E695E4C0];
  v8 = FigCFEqual();
  v9 = MEMORY[0x1E695E4D0];
  if (v8)
  {
    v9 = v7;
  }

  v10 = *v9;
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"routingSessionDestination_RouteDescriptors", v6);
    CFDictionarySetValue(Mutable, @"routingSessionDestination_ProvidesExternalVideoPlayback", v10);
    FigCFDictionarySetFloat();
    CFRelease(v6);
  }

  else
  {
    CFDictionarySetValue(Mutable, @"routingSessionDestination_ProvidesExternalVideoPlayback", v10);
    FigCFDictionarySetFloat();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

double routingSessionManager_setPredictionContextForSession(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 72) == a2)
  {
    if (!*(DerivedStorage + 88))
    {
      *(DerivedStorage + 88) = a3;
      goto LABEL_10;
    }

    if (dword_1EB75DF00)
    {
      goto LABEL_8;
    }
  }

  else if (dword_1EB75DF00)
  {
LABEL_8:
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_10:
  FigSimpleMutexUnlock();
  return result;
}

void *__routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke(uint64_t a1)
{
  v2 = dlopen("/System/Library/PrivateFrameworks/AirPlayRoutePrediction.framework/AirPlayRoutePrediction", 4);
  if (!v2)
  {
    v11 = 3248;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  v3 = v2;
  sARPRoutePredictorClass = objc_getClass("ARPRoutePredictor");
  if (!sARPRoutePredictorClass)
  {
    v11 = 3251;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  sARPPredictionContextClass = objc_getClass("ARPPredictionContext");
  if (!sARPPredictionContextClass)
  {
    v11 = 3254;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  v4 = dlsym(v3, "ARPRoutePredictorPredictionsForCurrentContextUpdated");
  if (!v4)
  {
    v11 = 3257;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  sARPRoutePredictorPredictionsForCurrentContextUpdatedNotificationName = *v4;
  sARPMicroLocationSimilarityFunction = dlsym(v3, "ARPMicroLocationSimilarity");
  if (!sARPMicroLocationSimilarityFunction)
  {
    v11 = 3263;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  v5 = dlsym(v3, "ARPPredictionSuppressedReasonNotFound");
  if (!v5)
  {
    v11 = 3266;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_1 = *v5;
  v6 = dlsym(v3, "ARPPredictionSuppressedReasonNotSupported");
  if (!v6)
  {
    v11 = 3272;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_2 = *v6;
  v7 = dlsym(v3, "ARPPresentationMediumAutoroute");
  if (!v7)
  {
    v11 = 3278;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_0 = *v7;
  v8 = dlsym(v3, "ARPRoutingFailureReasonNotFound");
  if (!v8)
  {
    v11 = 3284;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_3 = *v8;
  v9 = dlsym(v3, "ARPPredictionSuppressedReasonExistingRoute");
  if (!v9)
  {
    v11 = 3290;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_4 = *v9;
  gARPFeedback_5 = dlsym(v3, "ARPDonateFeedbackForPredictionPresented");
  if (!gARPFeedback_5)
  {
    v11 = 3296;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  gARPFeedback_6 = dlsym(v3, "ARPDonateFeedbackForPredictionSuppressed");
  if (!gARPFeedback_6)
  {
    v11 = 3299;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  result = dlsym(v3, "ARPDonateFeedbackForRoutingFailure");
  gARPFeedback_7 = result;
  if (!result)
  {
    v11 = 3302;
    return __routingSessionManager_loadAirPlayRoutePredictionFramework_block_invoke_cold_1(v11, a1);
  }

  return result;
}

void __routingSessionManager_updatePredictionContextForSession_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  routingSessionManager_setPredictionContextForSession(*(a1 + 32), *(a1 + 40), a3);
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

BOOL __routingSessionManager_updatePredictedDestinations_block_invoke(uint64_t a1, const __CFArray *a2)
{
  v26[21] = *MEMORY[0x1E69E9840];
  v26[0] = 0;
  v4 = routingSessionManager_copyCurrentPredictedDestinations(*(a1 + 32), v26, 0);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v7 = 0;
  if (!v4)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(v4); v7 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
    AvailableDestinationFromAvailableRoutes = routingSessionManager_createAvailableDestinationFromAvailableRoutes(a2, ValueAtIndex);
    if (AvailableDestinationFromAvailableRoutes)
    {
      v11 = AvailableDestinationFromAvailableRoutes;
      CFArrayAppendValue(Mutable, AvailableDestinationFromAvailableRoutes);
      CFRelease(v11);
    }

    ++v7;
    if (v4)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (Mutable)
  {
    Count = CFArrayGetCount(Mutable);
    if (v4)
    {
LABEL_11:
      v13 = CFArrayGetCount(v4);
      goto LABEL_14;
    }
  }

  else
  {
    Count = 0;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v13 = 0;
LABEL_14:
  FigSimpleMutexLock();
  v14 = FigCFEqual();
  v15 = *(a1 + 40);
  v16 = *(v15 + 48);
  *(v15 + 48) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(*(a1 + 40) + 56);
  if (v26[0] != v17)
  {

    *(*(a1 + 40) + 56) = v26[0];
  }

  FigSimpleMutexUnlock();
  if (!v14)
  {
    v18 = CFStringCreateMutable(v5, 0);
    v19 = 0;
    if (!Mutable)
    {
      goto LABEL_23;
    }

LABEL_22:
    for (j = CFArrayGetCount(Mutable); v19 < j; j = 0)
    {
      v21 = CFArrayGetValueAtIndex(Mutable, v19);
      v22 = FigRoutingSessionDestinationCopyDescription(v5, v21);
      CFStringAppend(v18, v22);
      if (Mutable)
      {
        v23 = CFArrayGetCount(Mutable) - 1;
      }

      else
      {
        v23 = -1;
      }

      if (v19 < v23)
      {
        CFStringAppend(v18, @", ");
      }

      if (v22)
      {
        CFRelease(v22);
      }

      ++v19;
      if (Mutable)
      {
        goto LABEL_22;
      }

LABEL_23:
      ;
    }

    if (v18)
    {
      if (dword_1EB75DF00)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFRelease(v18);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Count == v13;
}

void __routingSessionManager_updatePredictedDestinations_block_invoke_276(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void routingSessionManager_wifiPowerStatusChanged(__n128 a1, uint64_t a2, const void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (sWiFiDeviceClientGetPower)
  {
    v4 = sFigRoutingSessionManagerWiFiDevice == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4 && sWiFiDeviceClientGetPower(a1) == 0;
  if (dword_1EB75DF00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v5)
  {
    routingSessionManager_updateCurrentSession(a3, 0, 0, 0, 1, 0, 0, 0, 0, 0, @"WiFi is powered off", 0);
    routingSessionManager_updatePredictedDestinations(a3, &__block_literal_global_292);
  }
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return _os_log_send_and_compose_impl(a1, 0, va, 128, a5, v17, v18, a8);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_20_1()
{

  return CFDictionaryCreateMutable(v0, 0, v1, v2);
}

uint64_t FigRoutingSessionManagerGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_12 != -1)
  {
    FigRoutingSessionManagerGetClassID_cold_1();
  }

  return qword_1ED6D2FC0;
}

uint64_t routingSessionManager_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&routingSessionManager_getClassID_sFigRoutingSessionManagerClassDesc, ClassID, 1, a1);
}

uint64_t FigRoutingSessionManagerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_12 != -1)
  {
    FigRoutingSessionManagerGetClassID_cold_1();
  }

  v3 = qword_1ED6D2FC0;

  return MEMORY[0x1EEDBB488](v3);
}

__CFDictionary *FigRoutingSessionCopyAsDictionary(uint64_t a1, int a2)
{
  value = 0;
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  FigRoutingSessionGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6 || (v7 = *MEMORY[0x1E695E480], v6(v5, @"EstablishedAutomaticallyFromLikelyDestination", *MEMORY[0x1E695E480], &value)) || (v8 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v8(a1, &cf))
  {
    v11 = 0;
    v9 = 0;
  }

  else
  {
    v9 = CopySanitizedDestination(cf, a2);
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"EstablishedAutomaticallyFromLikelyDestination", value);
      CFDictionarySetValue(v11, @"Destination", v9);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

__CFDictionary *CopySanitizedDestination(CFDictionaryRef theDict, int a2)
{
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  v4 = MutableCopy;
  if (!a2)
  {
    CFDictionaryRemoveValue(MutableCopy, @"routingSessionDestination_RouteDescriptors");
  }

  return v4;
}

uint64_t FigRoutingSessionManagerStartServer()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  v1 = FigXPCServerStart();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t __MXAggregateSetUpLoggingOnce_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();

  return fig_note_initialize_category_with_default_work();
}

uint64_t endpointAggregate_Finalize(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DDD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 96) = 0;
  }

  v7 = *(DerivedStorage + 136);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 136) = 0;
  }

  v8 = *(DerivedStorage + 8);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 40) = 0;
  return result;
}

id endpointAggregate_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<MXAggregateEndpoint: routingContextUUID: [%@] name: %@ uuid: %@ APAggregateEndpoint %@> ", DerivedStorage[4], DerivedStorage[1], *DerivedStorage, DerivedStorage[6]];
  FigSimpleMutexUnlock();

  return v3;
}

uint64_t endpointAggregate_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    Copy = *(DerivedStorage + 48);
    if (Copy)
    {
      Copy = CFRetain(Copy);
    }

    goto LABEL_4;
  }

  if (FigCFEqual())
  {
    v11 = *(DerivedStorage + 8);
    if (v11)
    {
LABEL_7:
      v12 = CFRetain(v11);
LABEL_11:
      result = 0;
      *a4 = v12;
      return result;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    v11 = *DerivedStorage;
    if (*DerivedStorage)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (FigCFEqual())
  {
    v11 = *(DerivedStorage + 32);
    if (v11)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (FigCFEqual())
  {
    v11 = *MEMORY[0x1E69626B0];
    if (*MEMORY[0x1E69626B0])
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(DerivedStorage + 144));
LABEL_4:
    *a4 = Copy;
    FigSimpleMutexUnlock();
    return 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __endpointAggregate_CopyProperty_block_invoke;
  v13[3] = &__block_descriptor_56_e28_i16__0__OpaqueFigEndpoint__8l;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v13);
}

uint64_t endpointAggregate_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __endpointAggregate_SetProperty_block_invoke;
  v4[3] = &__block_descriptor_48_e28_i16__0__OpaqueFigEndpoint__8l;
  v4[4] = a2;
  v4[5] = a3;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v4);
}

uint64_t endpointAggregate_WithRemoteAggregateEndpoint(uint64_t a1, uint64_t a2)
{
  v28[5] = *MEMORY[0x1E69E9840];
  if (!endpointAggregate_IsMXAggregateEndpoint(a1))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 48);
  if (v6)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v23 = a1;
  v26 = (DerivedStorage + 48);
  v24 = a2;
  if (dword_1EB75DDD0)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = *(DerivedStorage + 16);
  v25 = *(DerivedStorage + 24);
  v10 = 5;
  while (1)
  {
    if (dword_1EB75DDD0)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v12)
    {
      v7 = 4294954514;
      goto LABEL_14;
    }

    v7 = v12(v9, v25, v26);
    if (!v7)
    {
      break;
    }

LABEL_14:
    if (dword_1EB75DDD0)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    MEMORY[0x1B2734EB0](50000);
    if (!--v10)
    {
      goto LABEL_17;
    }
  }

  v15 = v26;
  v7 = *v26;
  if (!*v26)
  {
LABEL_17:
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    a2 = v24;
    v15 = v26;
LABEL_18:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_19;
  }

  FigEndpointAggregateGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v7 = 4294950576;
    goto LABEL_41;
  }

  if (!endpointAggregate_IsMXAggregateEndpoint(v23))
  {
    v7 = 4294950576;
    goto LABEL_41;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v7 = FigNotificationCenterAddWeakListener();
  if (v7)
  {
LABEL_41:
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    a2 = v24;
    goto LABEL_18;
  }

  if (v23)
  {
    v19 = *v26;
    if (*v26)
    {
      v27[3] = 0;
      v27[4] = 0;
      v27[1] = MXAggregateEndpointHandleAuthRequired;
      v27[2] = MXAggregateEndpointHandleEndpointFailed;
      v27[0] = CFRetain(v23);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v20)
      {
        v20(v19, v27);
      }

      v28[1] = 0;
      v28[2] = MXAggregateEndpointDidReceiveDataFromCommChannel;
      v28[3] = MXAggregateEndpointDidCloseCommChannel;
      v28[0] = CFRetain(v23);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v21)
      {
        v7 = v21(v19, v28);
      }

      else
      {
        v7 = 4294954514;
      }
    }
  }

LABEL_19:
  v6 = *v15;
  if (*v15)
  {
LABEL_20:
    v16 = CFRetain(v6);
  }

  else
  {
    v16 = 0;
  }

  FigSimpleMutexUnlock();
  if (!v7 && v16)
  {
LABEL_25:
    v7 = (*(a2 + 16))(a2, v16);
LABEL_26:
    CFRelease(v16);
    return v7;
  }

  MXSimulateCrash("Something went wrong when setting up the remote aggregate endpoint. Please file a bug to MediaExperience (New Bugs) | All.");
  if (v7)
  {
    if (endpointAggregate_WithRemoteAggregateEndpoint_cold_1(v16, v17))
    {
      return v7;
    }

    goto LABEL_26;
  }

  if (v16)
  {
    goto LABEL_25;
  }

  endpointAggregate_WithRemoteAggregateEndpoint_cold_2(v27, v17);
  return LODWORD(v27[0]);
}

BOOL endpointAggregate_IsMXAggregateEndpoint(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    FigEndpointAggregateGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      if (CMBaseObjectGetVTable() == &kMXAggregateEndpointVTable)
      {
        return 1;
      }
    }
  }

  return result;
}

void endpointAggregate_NotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFEqual();
  FigSimpleMutexLock();
  if (a4 && FigCFEqual())
  {
    if (v9)
    {
      if (dword_1EB75DDD0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      MXAggregateEndpointRemoveAndDestroyRemoteAggregateEndpoint(a2);
      v12 = *(DerivedStorage + 72);
      if (*(DerivedStorage + 96))
      {
        v13 = FigCFWeakReferenceHolderCopyReferencedObject();
      }

      else
      {
        v13 = 0;
      }

      FigSimpleMutexUnlock();
      if (v12)
      {
        v12(a2, 0, MEMORY[0x1E695E0F8], v13);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  else
  {
    if (dword_1EB75DDD0)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexUnlock();
  }

  objc_autoreleasePoolPop(v7);
}

void MXAggregateEndpointHandleAuthRequired(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v14 = *(DerivedStorage + 64);
  if (*(DerivedStorage + 96))
  {
    v15 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v15 = 0;
  }

  FigSimpleMutexUnlock();
  if (v14)
  {
    v14(a4, a2, a3, v15, a5, a6, a7);
  }

  if (v15)
  {

    CFRelease(v15);
  }
}

void MXAggregateEndpointHandleEndpointFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 72);
  if (*(DerivedStorage + 96))
  {
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v9 = 0;
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    v8(a4, a2, a3, v9);
  }

  if (v9)
  {

    CFRelease(v9);
  }
}

void MXAggregateEndpointDidReceiveDataFromCommChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 120);
  if (*(DerivedStorage + 136))
  {
    v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v11 = 0;
  }

  FigSimpleMutexUnlock();
  if (v10)
  {
    v10(a5, a2, a3, a4, v11);
  }

  if (v11)
  {

    CFRelease(v11);
  }
}

void MXAggregateEndpointDidCloseCommChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 128);
  if (*(DerivedStorage + 136))
  {
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v9 = 0;
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    v8(a4, a2, a3, v9);
  }

  if (v9)
  {

    CFRelease(v9);
  }
}

uint64_t endpointAggregate_Activate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __endpointAggregate_Activate_block_invoke;
  v6[3] = &__block_descriptor_72_e28_i16__0__OpaqueFigEndpoint__8l;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v6[8] = a5;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v6);
}

uint64_t endpointAggregate_Deactivate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = *(DerivedStorage + 48);
  if (!v10 || (v11 = CFRetain(v10)) == 0)
  {
    endpointAggregate_Deactivate_cold_1(v18, v9);
    v15 = v18[0];
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [[MXAggregateEndpointCallback alloc] initWithAggregate:a1 features:0 options:a2 callback:a3 callbackRefCon:a4 operationType:2];
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v14)
  {
    v15 = 4294954514;
    goto LABEL_7;
  }

  v15 = v14(v12, a2, MXAggregateEndpointCompletionCallback, v13);
  if (v15)
  {
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  v15 = MXAggregateEndpointRemoveAndDestroyRemoteAggregateEndpoint(a1);
LABEL_8:
  CFRelease(v12);
LABEL_9:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t endpointAggregate_SetDelegateRouting(uint64_t a1, __int128 *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DDD0)
  {
    v12 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 96) = 0;
  }

  if (a2)
  {
    v7 = *a2;
    v8 = a2[1];
    *(DerivedStorage + 88) = *(a2 + 4);
    *(DerivedStorage + 72) = v8;
    *(DerivedStorage + 56) = v7;
    *(DerivedStorage + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  else
  {
    *(DerivedStorage + 88) = 0;
    *(DerivedStorage + 72) = 0u;
    *(DerivedStorage + 56) = 0u;
  }

  FigSimpleMutexUnlock();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __endpointAggregate_SetDelegateRouting_block_invoke;
  v10[3] = &__block_descriptor_40_e28_i16__0__OpaqueFigEndpoint__8l;
  v10[4] = a1;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v10);
}

uint64_t endpointAggregate_SetDelegateRemoteControl(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 136);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 136) = 0;
  }

  if (a2)
  {
    v6 = *a2;
    *(DerivedStorage + 120) = a2[1];
    *(DerivedStorage + 104) = v6;
    *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  else
  {
    *(DerivedStorage + 120) = 0u;
    *(DerivedStorage + 104) = 0u;
  }

  FigSimpleMutexUnlock();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __endpointAggregate_SetDelegateRemoteControl_block_invoke;
  v8[3] = &__block_descriptor_40_e28_i16__0__OpaqueFigEndpoint__8l;
  v8[4] = a1;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v8);
}

void MXAggregateEndpointCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  v8 = [a5 callback];
  v9 = [a5 endpoint];
  v10 = [a5 callbackRefCon];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DDD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    v8(v9, a2, a3, a4, v10);
  }

  FigSimpleMutexLock();
  if ([a5 operationType] == 2)
  {
    v13 = [*(DerivedStorage + 144) count];
    if (a1)
    {
      if (!v13 && *(DerivedStorage + 48) && FigCFEqual())
      {
        if (dword_1EB75DDD0)
        {
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        MXAggregateEndpointRemoveAndDestroyRemoteAggregateEndpoint(v9);
      }
    }
  }

  FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __endpointAggregate_SendCommand_block_invoke;
  v6[3] = &__block_descriptor_64_e28_i16__0__OpaqueFigEndpoint__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v6);
}

uint64_t endpointAggregate_SendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __endpointAggregate_SendData_block_invoke;
  v6[3] = &__block_descriptor_64_e28_i16__0__OpaqueFigEndpoint__8l;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return endpointAggregate_WithRemoteAggregateEndpoint(a1, v6);
}

uint64_t endpointAggregate_AddEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpointAggregateGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __endpointAggregate_AddEndpoint_block_invoke;
  v13[3] = &__block_descriptor_80_e28_i16__0__OpaqueFigEndpoint__8l;
  v13[4] = a1;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a5;
  v13[8] = a2;
  v13[9] = DerivedStorage;
  return endpointAggregate_WithRemoteAggregateEndpoint(FigEndpoint, v13);
}

uint64_t endpointAggregate_RemoveEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpointAggregateGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __endpointAggregate_RemoveEndpoint_block_invoke;
  v13[3] = &__block_descriptor_80_e28_i16__0__OpaqueFigEndpoint__8l;
  v13[4] = a1;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a5;
  v13[8] = a2;
  v13[9] = DerivedStorage;
  return endpointAggregate_WithRemoteAggregateEndpoint(FigEndpoint, v13);
}

void MXAggregateSubEndpointCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = [a6 callback];
  v12 = [a6 endpoint];
  v13 = [a6 callbackRefCon];
  CMBaseObjectGetDerivedStorage();
  if (dword_1EB75DDD0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  MXAggregateEndpointUpdateSubEndpoints(v12);
  FigSimpleMutexUnlock();
  if (v11)
  {
    v11(v12, a2, a3, a4, a5, v13);
  }
}

uint64_t MXCoreSessionTeardown(void *a1)
{
  v18[16] = *MEMORY[0x1E69E9840];
  if ([a1 playbackAssertionRef])
  {
    CMSMSleep_ReleasePlaybackProcessAssertion(a1);
  }

  if ([a1 needToEndInterruption])
  {
    if ([a1 isTheAssistant])
    {
      v2 = @"resumable.deallocated";
    }

    else
    {
      v2 = @"non-resumable.deallocated";
    }

    MXCoreSessionEndInterruption_WithSecTaskAndStatus(a1, 0, v2, 1);
  }

  else
  {
    if ([a1 isPlaying])
    {
      cmsSetIsPlaying(a1, 0);
    }

    if (objc_msgSend_isActive(a1))
    {
      cmsSetIsActive(a1, 0, 0);
      CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded();
    }
  }

  v3 = [a1 wantsToShowMicrophoneIndicatorWhenNotRecording];
  [a1 setHasEntitlementToShowMicrophoneIndicatorWhileNotRecording:0];
  [a1 setWantsToShowMicrophoneIndicatorWhenNotRecording:0];
  v4 = [a1 isUsingBuiltInMicForRecording];
  [a1 setHasEntitlementToSetIsUsingBuiltInMicForRecording:0];
  [a1 setIsUsingBuiltInMicForRecording:0];
  v5 = [a1 isRecording];
  if (v5)
  {
    [a1 setIsRecording:0];
    [+[MXSessionManager sharedInstance](MXSessionManager updateForRecordingStateDidChange];
    MX_PrivacyAccounting_EndRecordingAccessIntervals([a1 bundleIdToPAAccessIntervalMap]);
    [a1 setBundleIdToPAAccessIntervalMap:0];
  }

  else if ((v3 | v4) == 1)
  {
    MX_SystemStatus_PublishRecordingClientsInfo(v5);
  }

  if ([+[MXExclaves updateSensorStatus:"updateSensorStatus:reason:"]
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cmsVibrateForSession(a1, 0);
  CMSMSleep_UpdateIdleSleepPreventor(a1, 0);
  if (!MX_FeatureFlags_IsBypassCodecArbitrationEnabled())
  {
    FigSimpleMutexLock();
    if (dword_1EB75E100 >= 1)
    {
      v7 = 0;
      do
      {
        v17 = 0;
        v8 = *(qword_1EB75E108 + 24 * v7);
        v18[0] = 0;
        cmsmGetCountAndResourceEntriesOfType(v8, &v17, v18);
        v9 = v18[0];
        if (!v18[0])
        {
          break;
        }

        v10 = v17;
        if (v17 >= 1)
        {
          v11 = (v18[0] + 16 * v7);
          do
          {
            if (*v11 == a1)
            {
              *v9 = 0;
              v9[1] = 0;
            }

            v9 += 2;
            --v10;
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 < dword_1EB75E100);
    }

    FigSimpleMutexUnlock();
  }

  cmsReleaseBorrowedStarkMainAudio(a1, 0);
  [+[MXSessionManager sharedInstance](MXSessionManager unduckSessionsForDucker:"unduckSessionsForDucker:", a1];
  CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
  IsSessionBasedMutingEnabled = MX_FeatureFlags_IsSessionBasedMutingEnabled(v12, v13);
  if (!IsSessionBasedMutingEnabled && MX_FeatureFlags_IsCallManagementMuteControlEnabled(IsSessionBasedMutingEnabled, v15) && [a1 hasPhoneCallBehavior])
  {
    -[MXSessionManager removeEntryFromMutedBundleIDCache:bundleID:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "removeEntryFromMutedBundleIDCache:bundleID:", [objc_msgSend(a1 "clientPID")], 0);
  }

  MX_RunningBoardServices_StopMonitoringForPID([objc_msgSend(a1 "clientPID")]);
  [a1 setClientPID:0];
  MX_RunningBoardServices_StopMonitoringForPID([a1 pidToInheritAppStateFrom]);
  [a1 setPidToInheritAppStateFrom:0];
  [+[MXSessionManager sharedInstance](MXSessionManager cleanupSessionAssertionsIfNeeded:"cleanupSessionAssertionsIfNeeded:cleanupReason:" cleanupReason:a1, 1];
  return [a1 unregisterSessionAudioObject];
}

uint64_t MXCoreSessionEndInterruption_WithSecTaskAndStatus(void *a1, __SecTask *a2, const __CFString *a3, int a4)
{
  v152 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (objc_msgSend_isActive(a1) & 1) != 0 || ([a1 notFullyInactive])
    {
      if (a4 || !objc_msgSend_isActive(a1) || CMSUtility_HasEntitlementForInterruptions(a1, a2))
      {
        if (unk_1EB75E080)
        {
          unk_1EB75E080([objc_msgSend(a1 "clientPID")], objc_msgSend(a1, "audioSessionID"), 0, 0);
        }

        v103 = [a1 currentlyControllingFlags];
        v137 = 1;
        v136 = 1;
        v117 = -[MXDuckingSource initWithType:ID:duckVolume:duckFadeDuration:]([MXDuckingSource alloc], "initWithType:ID:duckVolume:duckFadeDuration:", 2, [objc_msgSend(a1 "ID")], 0.0, 0.0);
        v113 = [a1 nowPlayingAppWasStoppedOnMostRecentActivation];
        cf1 = a3;
        if (CMSUtility_DoesSessionWantToPauseSpokenAudio(a1) || CMSUtility_DidSessionRecentlyWantToPauseSpokenAudio(a1))
        {
          v8 = [a1 isTheAssistant];
          v111 = v8 ^ 1;
        }

        else
        {
          v111 = 0;
          v8 = 1;
        }

        if (dword_1EB75DE40)
        {
          *v126 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if ([(NSPointerArray *)[+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionList] count]
        {
          v14 = v151;
        }

        else
        {
          v13 = -[NSPointerArray count]([+[MXSessionManager sharedInstance](MXSessionManager mxCoreSessionList], "count");
          v14 = MEMORY[0x1B2733FE0](*MEMORY[0x1E695E480], 16 * v13, 0x10800409227ACB4, 0);
          if (!v14)
          {

            return 0;
          }
        }

        ptr = v14;
        CMSUtility_InterpretInterruptionStyle(a1, &v137, 0, &v136);
        if (cf1)
        {
          v109 = CFEqual(cf1, @"non-resumable.deallocated") != 0;
        }

        else
        {
          v109 = 0;
        }

        if ([a1 makesMusicResume])
        {
          v15 = 0;
        }

        else
        {
          if (![a1 needToEndInterruption])
          {
            v15 = 0;
            cf = 0;
LABEL_43:
            if (-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", [a1 audioCategory]) && ((cf1 != 0) & objc_msgSend(a1, "areBothBudsInEarForA2DPPortBeforeInterrupting")) == 1 && CFStringHasPrefix(cf1, @"resumable") && -[MXSessionManager isAtleastOneBudNotInEarForA2DPPort](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isAtleastOneBudNotInEarForA2DPPort"))
            {
              if (cf)
              {
                CFRelease(cf);
              }

              cf = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%@", @"non", cf1);
              if (dword_1EB75DE40)
              {
                *v126 = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v21, type[0]);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            [+[MXSessionManager sharedInstance](MXSessionManager cancelAnyInProgressRampIfNeeded:"cancelAnyInProgressRampIfNeeded:reason:" reason:a1, 1];
            cmsSetIsPlaying(a1, 0);
            if (![a1 extendBackgroundAppAssertionTimer] && objc_msgSend(a1, "playbackAssertionRef"))
            {
              CMSMSleep_ReleasePlaybackProcessAssertion(a1);
            }

            FigSimpleMutexLock();
            if (dword_1EB75DE40)
            {
              *v126 = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v22, type[0]);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if ([a1 triggeredRemoteInterruption])
            {
              if ((CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal() || CMSM_IDSConnection_IsSharedAudioRouteConnectedToRemote()) && CMSM_IDSConnection_IsNearbyPairedDevicePresent())
              {
                CMSM_IDSClient_NotifyRemote_LocalIsDoingEndInterruption(cf1);
              }

              [a1 setTriggeredRemoteInterruption:0];
            }

            v115 = [a1 currentlyControllingFlags];
            v23 = ([a1 currentlyControllingFlags] & 2) != 0 && (objc_msgSend(a1, "currentlyControllingFlags") & 0x10) == 0;
            cmsSetIsActive(a1, 0, 0);
            [a1 resetInterruptionFlags];
            [a1 setWasInterruptedByNowPlayingApp:0];
            [a1 setWasInterruptedWhileSuspended:0];
            v106 = [a1 doNotNotifyOtherSessionsOnNextInactive];
            if (v106)
            {

              if (cf)
              {
                CFRelease(cf);
              }

              goto LABEL_242;
            }

            if ((([a1 currentlyControllingFlags] & 0x10) != 0 && (IsSharePlayCapableMediaSession = objc_msgSend(a1, "isSharePlayCapableCallSession"), !IsSharePlayCapableMediaSession) || (IsSharePlayCapableMediaSession = CMSUtility_IsSharePlayCapableMediaSession(a1, v24), IsSharePlayCapableMediaSession)) && (v26 = CMSMUtility_IsSharePlayCapableCallSessionActive(IsSharePlayCapableMediaSession, v24), v26))
            {
              CMSMUtility_SetPhoneCallVolumeToCurrentMediaPlaybackVolume(v26, v27);
              CMSMUtility_TransferVolumeControlFlagToSharePlayCapableCallSession(v28, v29);
            }

            else
            {
              v30 = [a1 isSharePlayCapableCallSession];
              if ((v30 & v23) == 1)
              {
                CMSMUtility_SetPhoneCallVolumeToCurrentMediaPlaybackVolume(v30, v31);
              }
            }

            cmsReleaseBorrowedStarkMainAudio(a1, v15);
            v32 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
            v134 = 0u;
            v135 = 0u;
            v132 = 0u;
            v133 = 0u;
            v33 = 0;
            v34 = [v32 countByEnumeratingWithState:&v132 objects:v149 count:16];
            if (v34)
            {
              v35 = *v133;
              allocator = *MEMORY[0x1E695E480];
              do
              {
                v36 = 0;
                do
                {
                  if (*v133 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = *(*(&v132 + 1) + 8 * v36);
                  if (v37 != a1 && [*(*(&v132 + 1) + 8 * v36) isDucked] && -[MXSessionManager isSessionDucked:duckingSource:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSessionDucked:duckingSource:", v37, v117))
                  {
                    v38 = &ptr[2 * v33];
                    *v38 = v37;
                    *(v38 + 2) = 3;
                    v39 = v37;
                    ++v33;
                  }

                  if ([v37 waitingToResume] && (objc_msgSend(v37, "isPlaying") & 1) == 0)
                  {
                    if (v37 == a1)
                    {
                      [a1 setWaitingToResume:0];
                      goto LABEL_117;
                    }

                    [a1 audioCategory];
                    if (FigCFEqual())
                    {
                      [v37 audioCategory];
                      if (FigCFEqual())
                      {
                        if (CMSMUtility_FetchBackgroundEntitlement([objc_msgSend(v37 "clientPID")]))
                        {
                          CMSMSleep_FetchTemporaryPlaybackProcessAssertion(v37);
                        }

                        [v37 setWaitingToResume:0];
                        v40 = &ptr[2 * v33];
                        *v40 = v37;
                        *(v40 + 2) = 1;
                        v41 = v37;
                        ++v33;
                        goto LABEL_117;
                      }
                    }

                    if ([v37 interruptingSession] != a1)
                    {
                      goto LABEL_117;
                    }

                    if (FigEndpointCentralEntityHoldsResource(qword_1EB75E178, 0x1F288E5F0, 0x1F2899C50) && (![objc_msgSend(v37 "interruptingSession")] || !CMSMUtility_IsCarPlayVideoActive() || (objc_msgSend(v37, "isActiveOverAirPlayVideo") & 1) == 0))
                    {
                      [v37 setInterruptingSession:qword_1EB75E170];
                      goto LABEL_117;
                    }

                    v42 = CMSMUtility_GetPlayingPhoneCallOrRingtoneSession();
                    if (((v42 != 0) & v113) == 1 && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v37) && ([v37 isSharePlayMediaSession] & 1) == 0)
                    {
                      [v37 setInterruptingSession:v42];
                      goto LABEL_117;
                    }

                    if (v113 && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v37) && CMSMNP_GetNowPlayingAppIsPlaying())
                    {
                      v43 = CMSMNP_CopyNowPlayingAppSession();
                      if (dword_1EB75DE40)
                      {
                        *v126 = 0;
                        type[0] = OS_LOG_TYPE_DEFAULT;
                        v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v44, type[0]);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      [v37 setInterruptingSession:0];
                      [v37 setWaitingToResume:0];

                      goto LABEL_117;
                    }

                    [v37 setWaitingToResume:0];
                    v45 = CMSM_IDSConnection_CopySharedAudioRoutePortIDs();
                    A2DPPort = cmsmGetA2DPPort(v45);
                    if (v45)
                    {
                      CFRelease(v45);
                    }

                    if (A2DPPort && vaeDoesBTPortSupportInEarDetection(A2DPPort))
                    {
                      IsBTPortKnownToNotBeInEar = CMSMVAUtility_IsBTPortKnownToNotBeInEar(A2DPPort);
                      v48 = IsBTPortKnownToNotBeInEar != 0;
                      if (IsBTPortKnownToNotBeInEar && dword_1EB75DE40)
                      {
                        *v126 = 0;
                        type[0] = OS_LOG_TYPE_DEFAULT;
                        v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v49, type[0]);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                        v48 = 1;
                      }
                    }

                    else
                    {
                      v48 = 0;
                    }

                    if (CMSUtility_IsAudioCategoryNonLongFormPlayback(v37) || [v37 overridePortsList] || ((CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote() != 0) & ~v48) != 0)
                    {
                      goto LABEL_247;
                    }

                    v50 = [v37 audioCategory];
                    if (!v50)
                    {
                      goto LABEL_150;
                    }

                    if (MX_FeatureFlags_IsHighQualityLocalRecordingEnabled(v50, v51) && (([v37 shadowingAudioSessionOptions] & 4) != 0 || (objc_msgSend(v37, "shadowingAudioSessionOptions") & 2) != 0) && (v104 = -[MXSessionManager copySessionWithAudioSessionID:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "copySessionWithAudioSessionID:", objc_msgSend(v37, "shadowingAudioSessionID"))) != 0)
                    {
                      if (dword_1EB75DE40)
                      {
                        *v126 = 0;
                        type[0] = OS_LOG_TYPE_DEFAULT;
                        v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v53, type[0]);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      v52 = [(__CFArray *)v104 audioCategory];
                    }

                    else
                    {
                      v104 = v37;
                      v52 = [(__CFArray *)v104 audioCategory];
                    }

                    theArraya = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v52);
                    VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([(__CFArray *)v104 audioMode]);
                    theArray = vaemCopyVADOutputPortsForRouteConfiguration(theArraya, VADModeFromFigModeName, [(__CFArray *)v104 activationContext], [(__CFArray *)v104 allowedPortTypes], [(__CFArray *)v104 prefersBluetoothHighQualityContentCapture]);

                    if (theArray)
                    {
                      Count = CFArrayGetCount(theArray);
                      if (Count < 1)
                      {
                        Mutable = 0;
                      }

                      else
                      {
                        Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
                        for (i = 0; i != Count; ++i)
                        {
                          *v150 = 0;
                          FigCFArrayGetInt64AtIndex();
                          v57 = vaeCopyFigOutputDeviceNameFromVADPort(*v150);
                          if (v57)
                          {
                            CFArrayAppendValue(Mutable, v57);
                            CFRelease(v57);
                          }
                        }
                      }

                      CFRelease(theArray);
                    }

                    else
                    {
LABEL_150:
                      Mutable = 0;
                    }

                    [v37 activeRoutesWhenInterrupted];
                    if (FigCFEqual())
                    {
LABEL_154:
                      v58 = 1;
                    }

                    else
                    {
                      if (CMSMVAUtility_IsAnyRouteAvailableForRouteConfiguration([v37 activeRoutesWhenInterrupted], objc_msgSend(v37, "audioCategory"), objc_msgSend(v37, "audioMode"), objc_msgSend(v37, "allowedPortTypes"), objc_msgSend(v37, "prefersBluetoothHighQualityContentCapture")))
                      {
                        [v37 activeRoutesWhenInterrupted];
                        if (FigCFArrayContainsValue())
                        {
                          byte_1EB75E180 = 0;
                          goto LABEL_154;
                        }
                      }

                      v58 = 0;
                    }

                    if (Mutable)
                    {
                      CFRelease(Mutable);
                    }

                    if (v58)
                    {
LABEL_247:
                      v59 = !CMSMUtility_FetchBackgroundEntitlement([objc_msgSend(v37 "clientPID")]) || v109;
                      if ((v59 & 1) == 0 && ([v37 wasInterruptedWhileSuspended] & 1) == 0)
                      {
                        CMSMSleep_FetchTemporaryPlaybackProcessAssertion(v37);
                      }

                      if (dword_1EB75DE40)
                      {
                        *v126 = 0;
                        type[0] = OS_LOG_TYPE_DEFAULT;
                        v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v60, type[0]);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      v61 = &ptr[2 * v33];
                      *v61 = v37;
                      *(v61 + 2) = 1;
                      v62 = v37;
                      ++v33;
                    }

                    if (CMSUtility_IsDoingSpokenAudio(v37))
                    {
                      v63 = v111;
                    }

                    else
                    {
                      v63 = 0;
                    }

                    if ((v63 & 1) == 0)
                    {
                      [v37 setActiveRoutesWhenInterrupted:0];
                    }

                    goto LABEL_117;
                  }

                  if (v37 == a1)
                  {
                    goto LABEL_117;
                  }

                  if (objc_msgSend_isActive(v37) && [v37 isPlaying])
                  {
                    [v37 setWaitingToResume:0];
                    if (!v115)
                    {
                      goto LABEL_117;
                    }

LABEL_93:
                    cmsTryToTakeControl(v37);
                    goto LABEL_117;
                  }

                  if (objc_msgSend_isActive(v37) && CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote() == 0 && v115 != 0)
                  {
                    goto LABEL_93;
                  }

LABEL_117:
                  ++v36;
                }

                while (v36 != v34);
                v64 = [v32 countByEnumeratingWithState:&v132 objects:v149 count:16];
                v34 = v64;
              }

              while (v64);
            }

            FigSimpleMutexUnlock();
            [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
            if ([+[MXSessionManager voiceOverSessionWantsRelativeDucking:"voiceOverSessionWantsRelativeDucking:"]
            {
              if (dword_1EB75DE40)
              {
                *v126 = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v65, type[0]);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [+[MXSessionManager sharedInstance](MXSessionManager updateDuckedSessionsForVoiceOver:"updateDuckedSessionsForVoiceOver:", a1];
            }

            v66 = cf1;
            if (v33 < 1)
            {
              [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperationForSession:"endAsyncDuckingOperationForSession:", a1];
              goto LABEL_230;
            }

            if (cf)
            {
              v66 = cf;
            }

            v67 = v33;
            v68 = v66;
            v69 = v67;
            v70 = ptr;
            v116 = v66;
            while (1)
            {
              v71 = CMSUtility_CopyFadeDuration(a1, 1, 0);
              v72 = *(v70 + 2);
              if (v72 == 3)
              {
                [+[MXSessionManager sharedInstance](MXSessionManager unduckVolume:"unduckVolume:sessionCausingUnduck:duckingSource:" sessionCausingUnduck:*v70 duckingSource:a1, v117];
              }

              else if (v72 == 1)
              {
                IsDoingSpokenAudio = CMSUtility_IsDoingSpokenAudio(*v70);
                v74 = v111 ^ 1;
                if (!IsDoingSpokenAudio)
                {
                  v74 = 1;
                }

                if ((v74 & 1) == 0)
                {
                  *v146 = 0;
                  *&v146[8] = v146;
                  *&v146[16] = 0x3052000000;
                  v147 = __Block_byref_object_copy__19;
                  *&v148 = __Block_byref_object_dispose__19;
                  v75 = *v70;
                  if (*v70)
                  {
                    v75 = CFRetain(v75);
                  }

                  *(&v148 + 1) = v75;
                  *v126 = 0;
                  v127 = v126;
                  v128 = 0x3052000000;
                  v129 = __Block_byref_object_copy__19;
                  v130 = __Block_byref_object_dispose__19;
                  v131 = CFRetain(a1);
                  v125[0] = 0;
                  v125[1] = v125;
                  v125[2] = 0x2020000000;
                  v76 = [a1 clientName];
                  if (v76)
                  {
                    v76 = CFRetain(v76);
                  }

                  v125[3] = v76;
                  v121 = 0;
                  v122 = &v121;
                  v123 = 0x2020000000;
                  if (v68)
                  {
                    v77 = CFRetain(v68);
                  }

                  else
                  {
                    v77 = 0;
                  }

                  v124 = v77;
                  [a1 setWaitingToSendEndInterruptionToSpokenAudioApp:1];
                  if (dword_1EB75DE40)
                  {
                    v120 = 0;
                    v119 = OS_LOG_TYPE_DEFAULT;
                    v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v87 = v120;
                    v88 = v119;
                    if (os_log_type_enabled(v86, v119))
                    {
                      v90 = v87;
                    }

                    else
                    {
                      v90 = v87 & 0xFFFFFFFE;
                    }

                    if (v90)
                    {
                      ClientName = CMSUtility_GetClientName(*(*&v146[8] + 40), v89);
                      DisplayID = CMSUtility_GetDisplayID(*(*&v146[8] + 40), v92);
                      v94 = v122[3];
                      *type = 136315906;
                      v139 = "MXCoreSessionEndInterruption_WithSecTaskAndStatus";
                      v140 = 2114;
                      v141 = ClientName;
                      v142 = 2114;
                      v143 = DisplayID;
                      v144 = 2114;
                      v145 = v94;
                      LODWORD(v101) = 42;
                      _os_log_send_and_compose_impl(v90, 0, v150, 128, &dword_1B17A2000, v86, v88, "-CMSessionMgr- %s: NOT sending an EndInterruption to '%{public}@ (%{public}@)' with status '%{public}@' right away; will be sent in 1.0 seconds", type, v101);
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v68 = v116;
                  }

                  v97 = dispatch_time(0, 1000000000);
                  v99 = MXGetSerialQueue(v97, v98);
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = __MXCoreSessionEndInterruption_WithSecTaskAndStatus_block_invoke;
                  block[3] = &unk_1E7AEB4A8;
                  block[4] = v146;
                  block[5] = v126;
                  block[6] = &v121;
                  block[7] = v125;
                  dispatch_after(v97, v99, block);
                  _Block_object_dispose(&v121, 8);
                  _Block_object_dispose(v125, 8);
                  _Block_object_dispose(v126, 8);
                  _Block_object_dispose(v146, 8);
                  if (!v71)
                  {
                    goto LABEL_222;
                  }

LABEL_221:
                  CFRelease(v71);
                  goto LABEL_222;
                }

                if (dword_1EB75DE40)
                {
                  *v126 = 0;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v79 = *v126;
                  v80 = type[0];
                  if (os_log_type_enabled(v78, type[0]))
                  {
                    v82 = v79;
                  }

                  else
                  {
                    v82 = v79 & 0xFFFFFFFE;
                  }

                  if (v82)
                  {
                    v83 = CMSUtility_GetClientName(*v70, v81);
                    v85 = CMSUtility_GetDisplayID(*v70, v84);
                    *v146 = 136315906;
                    *&v146[4] = "MXCoreSessionEndInterruption_WithSecTaskAndStatus";
                    *&v146[12] = 2114;
                    *&v146[14] = v83;
                    *&v146[22] = 2114;
                    v147 = v85;
                    LOWORD(v148) = 2114;
                    *(&v148 + 2) = v116;
                    LODWORD(v101) = 42;
                    _os_log_send_and_compose_impl(v82, 0, v150, 128, &dword_1B17A2000, v78, v80, "-CMSessionMgr- %s: Sending EndInterruption to '%{public}@ (%{public}@)' with status '%{public}@'", v146, v101);
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v68 = v116;
                }

                CMSUtility_PostInterruptionCommandNotification(*v70, 1u, [a1 clientName], v68, 0, v71, 0, objc_msgSend(a1, "displayID"));
                if (cf && (HasPrefix = CFStringHasPrefix(cf, @"resumable"), HasPrefix) && (HasPrefix = [*v70 wasInterruptedWhileRecording], (HasPrefix & 1) != 0) || cf1 && (HasPrefix = CFStringHasPrefix(cf1, @"resumable"), HasPrefix) && (HasPrefix = objc_msgSend(*v70, "wasInterruptedWhileRecording"), HasPrefix))
                {
                  HasPrefix = [*v70 setTimestampWhenMostRecentResumableEndInterruptionWasSent:FigGetUpTimeNanoseconds()];
                }

                if (MX_FeatureFlags_IsHighQualityLocalRecordingEnabled(HasPrefix, v96))
                {
                  [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource resumeAllIndependentInputAudioResourceSessionsShadowing:"resumeAllIndependentInputAudioResourceSessionsShadowing:withShadowingOptions:interruptor:status:" withShadowingOptions:*v70 interruptor:2 status:a1, cf1];
                  [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource resumeAllIndependentInputAudioResourceSessionsShadowing:"resumeAllIndependentInputAudioResourceSessionsShadowing:withShadowingOptions:interruptor:status:" withShadowingOptions:*v70 interruptor:4 status:a1, cf1];
                }
              }

              if (v71)
              {
                goto LABEL_221;
              }

LABEL_222:
              v70 += 2;
              if (!--v69)
              {
                [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperationForSession:"endAsyncDuckingOperationForSession:", a1];
                v100 = ptr;
                do
                {

                  *v100 = 0;
                  v100 += 2;
                  --v67;
                }

                while (v67);
LABEL_230:
                if (ptr != v151)
                {
                  CFAllocatorDeallocate(*MEMORY[0x1E695E480], ptr);
                }

                [a1 setNeedToEndInterruption:0];
                [a1 setAreBothBudsInEarForA2DPPortBeforeInterrupting:0];
                [a1 setRecentlyWantedToPauseSpokenAudio:0];
                [a1 setNotFullyInactive:0];
                if ([a1 isTheAssistant] && -[MXSessionManager isVoiceAssistantPlayingToPersonalAudioDeviceOverMedia](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isVoiceAssistantPlayingToPersonalAudioDeviceOverMedia"))
                {
                  [+[MXSessionManager sharedInstance](MXSessionManager setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:"setIsVoiceAssistantPlayingToPersonalAudioDeviceOverMedia:", 0];
                }

                if ((v103 & 2) != 0 && ([a1 currentlyControllingFlags] & 2) == 0)
                {
                  cmsmUpdatePickableRouteDescriptionLists(1);
                }

                CMSMNotificationUtility_PostCallIsActiveDidChangeIfNeeded();

                if (cf)
                {
                  CFRelease(cf);
                  if ((v106 & 1) == 0)
                  {
                    return 0;
                  }
                }

                else if (!v106)
                {
                  return 0;
                }

LABEL_242:
                FigSimpleMutexUnlock();
                return 0;
              }
            }
          }

          if (v136 || cf1 && CFStringHasPrefix(cf1, @"resumable"))
          {
            v15 = 0;
            cf = 0;
          }

          else
          {
            v18 = [a1 audioCategory];
            cf = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@.%@", @"non-resumable", v18);
            if ([a1 isTheAssistant])
            {
              if (dword_1EB75DE40)
              {
                *v126 = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v19, type[0]);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v15 = 1;
            }

            else
            {
              v15 = 0;
            }
          }

          if ([+[MXSessionManager phoneCallBehaviorSessionShouldResumeForCarPlay] sharedInstance]
          {
            [+[MXSessionManager sharedInstance](MXSessionManager setPhoneCallBehaviorSessionShouldResumeForCarPlay:"setPhoneCallBehaviorSessionShouldResumeForCarPlay:", 0];
            if (dword_1EB75DE40)
            {
              *v126 = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v17, type[0]);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v15 = 1;
          }

          if (v8)
          {
            goto LABEL_43;
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }

        v16 = [a1 audioCategory];
        cf = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@.%@", @"resumable", v16);
        goto LABEL_43;
      }

      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 4294954308;
    }

    else
    {
      [a1 resetInterruptionFlags];
      if (dword_1EB75DE40)
      {
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return 0;
    }
  }

  else
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954315;
  }
}

void sub_1B196F33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

void cmsReleaseBorrowedStarkMainAudio(void *a1, char a2)
{
  if (qword_1EB75E178 && [a1 starkBorrowCount])
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@ '%@' stopped using main audio", [a1 clientName], objc_msgSend(a1, "displayID"));
    CMSUtility_GetStarkInterruptionContext(1, a1, &v8);
    while ([a1 starkBorrowCount])
    {
      v5[0] = v8;
      v5[1] = v9;
      v6 = v10;
      v7 = 0x1F288E7B0;
      FigEndpointSessionHandleInterruption(qword_1EB75E178, v5, v4, &v7, a2);
      [a1 setStarkBorrowCount:{objc_msgSend(a1, "starkBorrowCount") - 1}];
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void __cmsmInitializeLogging_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if ((dword_1EB75DE40 & 0x100) != 0)
  {
    dword_1EB75DE40 = 0;
  }

  else if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMDebugUtility_PrintBuildInfo();
}

__CFString *cmsCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"%p\n", a1);
  return Mutable;
}

uint64_t cmsmUpdateAppsLists(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v2 == result)
    {
      Value = CFDictionaryGetValue(v1, @"LongFormVideoApps");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFArrayGetTypeID() && cmsmValidateAppsList(v4))
        {
          [+[MXSessionManager sharedInstance](MXSessionManager setLongFormVideoApps:"setLongFormVideoApps:", v4];
          CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(0, 0);
        }
      }

      result = CFDictionaryGetValue(v1, @"NonLongFormMediaApps");
      if (result)
      {
        v6 = result;
        v7 = CFGetTypeID(result);
        result = CFArrayGetTypeID();
        if (v7 == result)
        {
          result = cmsmValidateAppsList(v6);
          if (result)
          {

            return CMSMUtility_SetNonLongFormMediaApps(v6);
          }
        }
      }
    }
  }

  return result;
}

void __cmsmInitializeCMSessionManager_block_invoke_2()
{
  theArray = 0;
  cmsmCopyCurrentActiveRoutesInfoForVADUID(0x1F2893B50, 0, &theArray, 0);
  if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
  {
    v1 = Count;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v3 = 0;
    v4 = *MEMORY[0x1E69618F8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
      v6 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 0, v4, qword_1EB75E190);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(Mutable, v6);
        CFRelease(v7);
      }

      ++v3;
    }

    while (v1 != v3);
  }

  else
  {
    Mutable = 0;
  }

  v8 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(Mutable, 0);
  FigRoutingManagerContextUtilities_SetPickedEndpoints(qword_1EB75E190, Mutable, @"configUpdateReasonEndedBottomUpRouteChange", 0, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void cmsmTightSyncUUIDChangedCallback(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = MXGetSerialQueue(a1, a2);
  MXDispatchAsyncAndWait("cmsmTightSyncUUIDChangedCallback", "CMSessionManager.m", 18277, 0, 0, v2, &__block_literal_global_361);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void cmsmVoiceOverIsOnChangedCallback(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = MXGetSerialQueue(a1, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __cmsmVoiceOverIsOnChangedCallback_block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = v2;
  MXDispatchAsyncAndWait("cmsmVoiceOverIsOnChangedCallback", "CMSessionManager.m", 18297, 0, 0, v3, v4);
}

void __cmsmInitializeCMSessionManager_block_invoke_2_40(uint64_t a1, uint64_t a2)
{
  v2 = MXGetSerialQueue(a1, a2);

  MXDispatchAsyncAndWait("cmsmInitializeCMSessionManager_block_invoke_2", "CMSessionManager.m", 1098, 0, 0, v2, &__block_literal_global_44_1);
}

uint64_t __cmsmInitializeCMSessionManager_block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = MX_FeatureFlags_IsAirPlayDaemonEnabled(a1, a2);
  if (!result)
  {

    return FigRoutingManagerPerformPostInitOperations();
  }

  return result;
}

void *__cmsmInitializeCMSessionManager_block_invoke_5()
{
  result = CMSessionCreate(&qword_1EB75E0F0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = qword_1EB75E0F0 == 0;
  }

  if (!v1)
  {
    valuePtr = getpid();
    if (valuePtr)
    {
      v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      if (v2)
      {
        v3 = v2;
        _CMSessionSetProperty(qword_1EB75E0F0, @"ClientPID", v2);
        CFRelease(v3);
      }
    }

    _CMSessionSetProperty(qword_1EB75E0F0, @"ClientName", @"Default");
    _CMSessionSetProperty(qword_1EB75E0F0, @"AudioCategory", @"Audio/Video");
    cmsSetControlFlags(*(qword_1EB75E0F0 + 16), 0x120000u);
    return [*(qword_1EB75E0F0 + 16) updateInterruptionStyle:8];
  }

  return result;
}

__CFArray *cmsmCopyPartnerPortsToMakeRoutable(const __CFArray *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        FigCFArrayGetInt64AtIndex();
        memset(outData, 0, sizeof(outData));
        PartnersForPort = vaeGetPartnersForPort(0, outData);
        if (PartnersForPort)
        {
          v8 = PartnersForPort;
          v9 = outData;
          do
          {
            if (vaeDoesPortSupportRoutability(*v9))
            {
              if (!vaeIsPortRoutable(*v9))
              {
                v10 = CFNumberCreate(v2, kCFNumberSInt32Type, v9);
                CFArrayAppendValue(Mutable, v10);
                if (v10)
                {
                  CFRelease(v10);
                }
              }
            }

            ++v9;
            --v8;
          }

          while (v8);
        }
      }
    }
  }

  return Mutable;
}

uint64_t cmsmShouldSetupForCoordinatedInterruptions(uint64_t a1, int a2)
{
  v3 = a1;
  result = vaeDoesPortSupportMultipleConnections(a1);
  if (result)
  {
    DoesBTPortSupportInEarDetection = vaeDoesBTPortSupportInEarDetection(v3);
    BTPortOwnsSharedAudioConnection = vaeGetBTPortOwnsSharedAudioConnection(v3);
    result = (DoesBTPortSupportInEarDetection | BTPortOwnsSharedAudioConnection) == 0;
    if (DoesBTPortSupportInEarDetection)
    {
      if (!BTPortOwnsSharedAudioConnection)
      {
        return !a2 || CMSMVAUtility_IsBTPortKnownToNotBeInEar(v3) == 0;
      }
    }
  }

  return result;
}

uint64_t cmsmGetCurrentAudioRouteInEarStatus(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  HasUserEnabledInEarDetectionForBTPort = vaeHasUserEnabledInEarDetectionForBTPort(a1, &v18);
  if (!v18)
  {
    return 3;
  }

  if (HasUserEnabledInEarDetectionForBTPort)
  {
    BTPortSecondaryBudInEarStatus = vaeGetBTPortSecondaryBudInEarStatus(a1);
    BTPortPrimaryBudInEarStatus = vaeGetBTPortPrimaryBudInEarStatus(a1);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (BTPortPrimaryBudInEarStatus == 1 && BTPortSecondaryBudInEarStatus == 1)
    {
      return 1;
    }

    v9 = BTPortPrimaryBudInEarStatus == 3 && BTPortSecondaryBudInEarStatus == 1;
    v10 = BTPortSecondaryBudInEarStatus == 3 && BTPortPrimaryBudInEarStatus == 1;
    v6 = 4;
    if (!v10 && !v9)
    {
      v11 = BTPortPrimaryBudInEarStatus == 2 && BTPortSecondaryBudInEarStatus == 1;
      v12 = v11;
      v13 = BTPortSecondaryBudInEarStatus == 2 && BTPortPrimaryBudInEarStatus == 1;
      v6 = 2;
      if (!v13 && !v12)
      {
        v15 = BTPortPrimaryBudInEarStatus == 1 && BTPortSecondaryBudInEarStatus == 0;
        if (BTPortPrimaryBudInEarStatus)
        {
          v16 = 0;
        }

        else
        {
          v16 = BTPortSecondaryBudInEarStatus == 1;
        }

        if (v16)
        {
          v15 = 1;
        }

        if (v15)
        {
          return 5;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  else
  {
    if (!dword_1EB75DE40)
    {
      return 1;
    }

    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    v6 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v6;
}

void cmsmSendCommandToMediaRemote(__CFString *a1, uint64_t a2, const void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (MediaRemoteLibrary_sOnce != -1)
  {
    cmsmSendCommandToMediaRemote_cold_1();
  }

  if (MediaRemoteLibrary_sLib && dlsym(MediaRemoteLibrary_sLib, "MRMediaRemoteSendCommandToApp"))
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (a3)
    {
      v8 = getkMRMediaRemoteOptionRemoteControlInterfaceIdentifier();
      CFDictionarySetValue(Mutable, v8, a3);
    }

    if (MediaRemoteLibrary_sOnce != -1)
    {
      cmsmSendCommandToMediaRemote_cold_2();
    }

    if (MediaRemoteLibrary_sLib && dlsym(MediaRemoteLibrary_sLib, "MRMediaRemoteGetLocalOrigin"))
    {
      LocalOrigin = softLinkMRMediaRemoteGetLocalOrigin();
    }

    else
    {
      LocalOrigin = 0;
    }

    softLinkMRMediaRemoteSendCommandToApp(a2, Mutable, LocalOrigin, a1, 0, 0, 0);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

uint64_t MXCoreSessionRemoveResource(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    FigSimpleMutexLock();
    if (a2 && *a2 == a1)
    {
      v4 = 0;
      *a2 = 0;
      a2[1] = 0;
    }

    else
    {
      v4 = 4294954315;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954315;
  }

  return v4;
}

uint64_t CMSessionMgrIsVolumeChangeTriggered(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return byte_1B19D9F04[a1 - 1];
  }
}

void __cmsSetIsActive_block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "ID")];
  v3 = *(a1 + 40);

  CMSUtility_DeactivateTimerHandler(v2, v3);
}

uint64_t FigEndpointManagerSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(CMBaseObject, a2, a3);
  }

  return result;
}

void __cmsSetIsPlaying_block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [MXSessionManagerBase copySessionWithMXCoreSessionID:*(a1 + 32)];
  if (v1 && (v7 = v1, ([v1 isMemberOfClass:objc_opt_class()] & 1) != 0))
  {
    v2 = [v7 sessionAssertionAuditTimer];
    if (v2)
    {
      dispatch_source_cancel([v7 sessionAssertionAuditTimer]);
      v2 = [v7 setSessionAssertionAuditTimer:0];
    }

    v4 = MXGetSessionLog(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v9 = "-CMSessionMgr-";
      v10 = 2082;
      v11 = "cmsSessionAssertionAuditTimeDidFinish";
      v12 = 1024;
      v13 = 6341;
      v14 = 2114;
      v15 = [v7 clientName];
      _os_log_impl(&dword_1B17A2000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s:%i Timer expired for client %{public}@", buf, 0x26u);
    }

    if (CMSUtility_DoesSessionRemainActiveAfterStoppingPlaying(v7, v5))
    {
      [objc_msgSend(MEMORY[0x1E695DF00] "now")];
      if (v6 >= [v7 assertionAuditTimerDelay])
      {
        [+[MXSessionManager sharedInstance](MXSessionManager cleanupSessionAssertionsIfNeeded:"cleanupSessionAssertionsIfNeeded:cleanupReason:" cleanupReason:v7, 2];
      }
    }
  }

  else
  {

    MEMORY[0x1EEE66BB8]();
  }
}

double cmsmStartAllowedToInitiatePlaybackTemporarilyTimer()
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v2 = qword_1EB75E128;
  if (qword_1EB75E128)
  {
    dispatch_source_cancel(qword_1EB75E128);
    v2 = qword_1EB75E128;
    if (qword_1EB75E128)
    {
      dispatch_release(qword_1EB75E128);
      qword_1EB75E128 = 0;
    }
  }

  v3 = MXGetSerialQueue(v2, v1);
  qword_1EB75E128 = MXDispatchUtilityCreateOneShotTimer("cmsmStartAllowedToInitiatePlaybackTemporarilyTimer", "CMSessionManager.m", 8472, 0, 0, v3, &__block_literal_global_167, 0, 10.0, 0);
  if (!qword_1EB75E128)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager setAppAllowedToInitiatePlaybackTemporarily:"setAppAllowedToInitiatePlaybackTemporarily:", 0];
  }

  FigSimpleMutexUnlock();
  return result;
}

double __cmsmStartAllowedToInitiatePlaybackTemporarilyTimer_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v0 = qword_1EB75E128;
  if (qword_1EB75E128)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v0 = qword_1EB75E128;
    }

    dispatch_source_cancel(v0);
    if (qword_1EB75E128)
    {
      dispatch_release(qword_1EB75E128);
      qword_1EB75E128 = 0;
    }
  }

  [+[MXSessionManager sharedInstance](MXSessionManager setAppAllowedToInitiatePlaybackTemporarily:"setAppAllowedToInitiatePlaybackTemporarily:", 0];
  FigSimpleMutexUnlock();
  return result;
}

double cmsmStartAllowedToFadeInTemporarilyTimer()
{
  v5 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    v3 = qword_1EB75E130;
    if (qword_1EB75E130)
    {
      dispatch_source_cancel(qword_1EB75E130);
      v3 = qword_1EB75E130;
      if (qword_1EB75E130)
      {
        dispatch_release(qword_1EB75E130);
        qword_1EB75E130 = 0;
      }
    }

    v4 = MXGetSerialQueue(v3, v2);
    qword_1EB75E130 = MXDispatchUtilityCreateOneShotTimer("cmsmStartAllowedToFadeInTemporarilyTimer", "CMSessionManager.m", 8520, 0, 0, v4, &__block_literal_global_169, 0, 5.0, 0);
    FigSimpleMutexUnlock();
  }

  return result;
}

double __cmsmStartAllowedToFadeInTemporarilyTimer_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    FigSimpleMutexLock();
    v1 = qword_1EB75E130;
    if (qword_1EB75E130)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v1 = qword_1EB75E130;
      }

      dispatch_source_cancel(v1);
      if (qword_1EB75E130)
      {
        dispatch_release(qword_1EB75E130);
        qword_1EB75E130 = 0;
      }
    }

    [+[MXSessionManager sharedInstance](MXSessionManager setAppAllowedToFadeInTemporarily:"setAppAllowedToFadeInTemporarily:", 0];
    FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t CMSessionMgrRegisterEndpointManager(const void *a1, uint64_t a2)
{
  if (MXGetSerialQueue(a1, a2))
  {

    return FigRouteDiscoveryManagerRegisterEndpointManager(a1, v3);
  }

  else
  {
    CMSessionMgrRegisterEndpointManager_cold_1(&v5);
    return v5;
  }
}

__CFString *CMSessionMgrGetUpdatedHardwareFormatBasedOnPreferredNumberOfOutputChannelsAndPreferredHardwareFormat(int a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (vaemIsAC3EncodingSupported())
  {
    v4 = FigCFEqual();
    if (a1 >= 3)
    {
      if (v4)
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return @"AC-3";
      }
    }
  }

  return a2;
}

void __MXCoreSessionSetProperty_block_invoke()
{
  CMSMUtility_UpdateSomeLongFormVideoClientIsActiveOverAirPlayVideo();
  CMSMUtility_UpdateSomeLongFormVideoClientIsPlayingOverAirPlayVideo();

  CMSMNotificationUtility_PostVideoStreamsDidChange();
}

uint64_t cmsSetDefaultBuiltInRoute(void *a1, const void *a2, void *a3)
{
  if (![a1 allowsDefaultBuiltInRouteCustomization])
  {
    return 4294954315;
  }

  [a1 setDefaultBuiltInRoutePreference:a2];
  [a1 setDefaultBuiltInRoutePreferenceSetByClient:1];
  if (a2)
  {
    if (!CFEqual(a2, @"Speaker") && !CFEqual(a2, @"Receiver"))
    {
      return 4294954315;
    }
  }

  CustomizedCategory = CMSUtility_GetCustomizedCategory(a1);
  [a1 audioCategory];
  if (FigCFEqual())
  {
    return 0;
  }

  v9 = [a1 interruptionStyle];
  if ([a1 interruptionStyleSetByClient])
  {
    v10 = [a3 objectForKey:@"InterruptionStyle"] == 0;
  }

  else
  {
    v10 = 0;
  }

  [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", v10];
  v7 = cmsSetAudioCategory(a1, CustomizedCategory, 0, a3);
  [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", 0];
  if (v10)
  {
    [a1 setInterruptionStyleAtClientRequest:v9];
  }

  return v7;
}

uint64_t cmsEnableBluetoothRecording(void *a1, int a2, void *a3)
{
  if (![a1 allowsBluetoothRecordingCustomization])
  {
    return 4294954315;
  }

  [a1 setEnableBluetoothRecordingPreference:a2 != 0];
  [a1 setEnableBluetoothRecordingPreferenceSetByClient:1];
  CustomizedCategory = CMSUtility_GetCustomizedCategory(a1);
  [a1 audioCategory];
  if (FigCFEqual())
  {
    return 0;
  }

  v9 = [a1 interruptionStyle];
  if ([a1 interruptionStyleSetByClient])
  {
    v10 = [a3 objectForKey:@"InterruptionStyle"] == 0;
  }

  else
  {
    v10 = 0;
  }

  [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", v10];
  v7 = cmsSetAudioCategory(a1, CustomizedCategory, 0, a3);
  [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager setIgnoreNowPlayingAppUpdates:"setIgnoreNowPlayingAppUpdates:", 0];
  if (v10)
  {
    [a1 setInterruptionStyleAtClientRequest:v9];
  }

  return v7;
}

id __MXCoreSessionSetProperty_block_invoke_190(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v3 = result;
    [result updateAudioSessionIDAndAudioObject:*(a1 + 40)];
    result = objc_msgSend_isActive(v3);
    if (result)
    {

      return [v3 sendSessionConfigurationInfoToVA];
    }
  }

  return result;
}

uint64_t cmsUpdateExcludedPortsList(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294954316;
  }

  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFArrayGetTypeID())
    {
      return 4294954315;
    }

    [a1 setExcludedPortsList:0];
    if (CFArrayGetCount(cf) >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v5);
        Value = CFDictionaryGetValue(ValueAtIndex, @"PortNumber");
        if (Value)
        {
          v8 = Value;
          v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "excludedPortsList")}];
          [v9 addObject:v8];
          [a1 setExcludedPortsList:v9];
        }

        ++v5;
      }

      while (CFArrayGetCount(cf) > v5);
    }
  }

  else
  {
    [a1 setExcludedPortsList:0];
  }

  result = objc_msgSend_isActive(a1);
  if (result)
  {
    if (([a1 currentlyControllingFlags] & 2) != 0)
    {
      cmsSetCategoryOnPVMAndAudioDevice(a1, 0, 0);
    }

    return 0;
  }

  return result;
}

uint64_t cmsSetOverrideRoute(void *a1, NSDictionary *a2)
{
  if (!a1)
  {
    return 4294954316;
  }

  if (FigCFEqual())
  {
    -[NSDictionary objectForKey:](-[MXSessionManager figCategoryToOutputOverridabilityDict](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "figCategoryToOutputOverridabilityDict"), "objectForKey:", [a1 audioCategory]);
    if (FigCFEqual())
    {
      return 4294954315;
    }
  }

  v5 = [a1 audioCategory];
  v6 = [a1 audioMode];
  VADOutputPortTypeFromFigRouteName = CMSMVAUtility_GetVADOutputPortTypeFromFigRouteName(a2);
  VADInputPortTypeFromFigRouteName = CMSMVAUtility_GetVADInputPortTypeFromFigRouteName(a2);
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = @"Audio/Video";
  }

  if (!v6)
  {
    v6 = @"Default";
  }

  VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName(v9);
  VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName(v6);
  if (!VADInputPortTypeFromFigRouteName && VADOutputPortTypeFromFigRouteName == 1886613611)
  {
    v12 = VADModeFromFigModeName;
    VADPortIDFromVADPortType = vaemGetVADPortIDFromVADPortType(1886216809);
    if (cmsmInputPortIsConnectedForRouteConfiguration(VADPortIDFromVADPortType, VADCategoryFromFigCategoryName, v12, [a1 allowedPortTypes], objc_msgSend(a1, "prefersBluetoothHighQualityContentCapture")))
    {
      VADInputPortTypeFromFigRouteName = 1886216809;
    }

    else
    {
      VADInputPortTypeFromFigRouteName = 0;
    }
  }

  v14 = vaemGetVADPortIDFromVADPortType(VADOutputPortTypeFromFigRouteName);
  v15 = vaemGetVADPortIDFromVADPortType(VADInputPortTypeFromFigRouteName);
  OverridePortsList = CMSMUtility_CreateOverridePortsList(v15, v14);
  [a1 setOverridePortsList:OverridePortsList];
  if (OverridePortsList)
  {
    CFRelease(OverridePortsList);
  }

  result = objc_msgSend_isActive(a1);
  if (result)
  {
    cmsTryToTakeControl(a1);
    return 0;
  }

  return result;
}

uint64_t cmsSetVolume(void *a1, const char *a2, float a4)
{
  if (objc_msgSend_isActive(a1) && !PVMGetEnabled())
  {
    cmsTryToTakeControl(a1);
  }

  VolumeSequenceNumber = CMSMUtility_GetVolumeSequenceNumber();

  return PVMSetCurrentPreferredVolumeWithRefCon(a2, VolumeSequenceNumber, 0, a4);
}

void CMSessionMgrInterruptVoiceAssistantIfCarSupportsAuxStream(uint64_t a1, uint64_t a2)
{
  v2 = MXGetSerialQueue(a1, a2);

  MXDispatchAsyncAndWait("CMSessionMgrInterruptVoiceAssistantIfCarSupportsAuxStream", "CMSessionManager.m", 13038, 0, 0, v2, &__block_literal_global_198);
}

uint64_t __CMSessionMgrInterruptVoiceAssistantIfCarSupportsAuxStream_block_invoke()
{
  result = FigRoutingManager_iOSIsCarPlayAuxStreamSupported();
  if (result)
  {

    return CMSMUtility_InterruptActiveSiriSession();
  }

  return result;
}

uint64_t FigEndpointManagerCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t FigVAEndpointManagerCopyPropertyForRouteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 24);
  result = VTable + 24;
  v15 = *(v14 + 16);
  if (v15)
  {

    return v15(a1, a2, a3, a4, a5, 0, a6);
  }

  return result;
}

uint64_t FigRoutingContextSelectRoute(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2, 0);
}

uint64_t CMSessionMgrHasRouteSharingPolicyLongFormVideo(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  if (a1)
  {
    v4 = MXGetSerialQueue(a1, a2);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __CMSessionMgrHasRouteSharingPolicyLongFormVideo_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    v6[4] = a1;
    v6[5] = a2;
    MXDispatchAsyncAndWait("CMSessionMgrHasRouteSharingPolicyLongFormVideo", "CMSessionManager.m", 15740, 0, 0, v4, v6);
    return 0;
  }

  else
  {
    CMSessionMgrHasRouteSharingPolicyLongFormVideo_cold_1(&v7);
    return v7;
  }
}

void __CMSessionMgrHasRouteSharingPolicyLongFormVideo_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([+[MXSessionManager isLongFormVideoApp:"isLongFormVideoApp:"]
  {
    **(a1 + 40) = 1;
  }

  else
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * i);
          if (v7)
          {
            [*(*(&v8 + 1) + 8 * i) displayID];
            if (FigCFEqual())
            {
              if ([v7 routeSharingPolicy] == 3)
              {
                **(a1 + 40) = 1;
                goto LABEL_15;
              }
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }
}

uint64_t CMSessionMgrShouldHijackAudioRoute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    CMSessionMgrShouldHijackAudioRoute_cold_2(&v12);
    return v12;
  }

  if (!a4)
  {
    CMSessionMgrShouldHijackAudioRoute_cold_1(&v12);
    return v12;
  }

  v7 = a1;
  v8 = MXGetSerialQueue(a1, a2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __CMSessionMgrShouldHijackAudioRoute_block_invoke;
  v10[3] = &__block_descriptor_60_e5_v8__0l;
  v11 = v7;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  MXDispatchAsyncAndWait("CMSessionMgrShouldHijackAudioRoute", "CMSessionManager.m", 15770, 0, 0, v8, v10);
  return 0;
}

uint64_t __CMSessionMgrShouldHijackAudioRoute_block_invoke(uint64_t a1)
{
  number[16] = *MEMORY[0x1E69E9840];
  v2 = FigRoutingManagerCopyEndpointWithDeviceID(*(a1 + 32), 1, *MEMORY[0x1E69618F8], 0);
  valuePtr = 0;
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v2;
  number[0] = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, 0x1F289CDB0, *MEMORY[0x1E695E480], number);
    if (number[0])
    {
      CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
      if (number[0])
      {
        CFRelease(number[0]);
        number[0] = 0;
      }
    }
  }

  CFRelease(v3);
  if (!valuePtr || (v6 = +[MXAudioAccessoryServices sharedInstance], ![(MXAudioAccessoryServices *)v6 isPortManaged:valuePtr]))
  {
LABEL_21:
    **(a1 + 40) = 0;
    **(a1 + 48) = 0x1F2898110;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = CMSM_GetHighestPriorityOfLocalSessionPlayingToDevice(*(a1 + 32));
  v8 = *(a1 + 56);
  if (v8 < result)
  {
    goto LABEL_24;
  }

  v9 = result == 501 && v8 == 501;
  v10 = !v9;
  if (v9)
  {
    v11 = 0x1F28980F0;
  }

  else
  {
    v11 = 0;
  }

  result = CMSMVAUtility_IsBluetoothSharingSessionEnabled(0);
  if (result)
  {
    if (dword_1EB75DE40)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_24:
    v10 = 0;
    v11 = 0x1F28980D0;
  }

  **(a1 + 40) = v10;
  **(a1 + 48) = v11;
  if (dword_1EB75DE40)
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t CMSessionMgrCopyDeviceRouteForRouteConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = MXGetSerialQueue(a1, a2);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __CMSessionMgrCopyDeviceRouteForRouteConfiguration_block_invoke;
  v13[3] = &unk_1E7AEA9A8;
  v13[4] = &v14;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v13[9] = a5;
  MXDispatchAsyncAndWait("CMSessionMgrCopyDeviceRouteForRouteConfiguration", "CMSessionManager.m", 15844, 0, 0, v10, v13);
  v11 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v11;
}

void sub_1B197279C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CMSessionMgrCopyDeviceRouteForRouteConfiguration_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v15 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v14 + 1) + 8 * v6);
      if (([v7 currentlyControllingFlags] & 2) != 0)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v21 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (!v7 || ![v7 audioCategory] || !CFEqual(objc_msgSend(v7, "audioCategory"), *(a1 + 40)))
    {
      goto LABEL_31;
    }

    v12 = 0;
    cf = 0;
    v8 = [+[MXSessionManager sharedInstance](MXSessionManager getUncustomizedCategory:"getUncustomizedCategory:", *(a1 + 40)];
    if (!PVMCopyCurrentState(0, &cf, &v12, &v20, &v19, &v18))
    {
      if (*(a1 + 40) && cf && PVMCategoriesAreEquivalent(v8, 0, cf, v12))
      {
        if (cf)
        {
          CFRelease(cf);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        goto LABEL_32;
      }

      if (v20)
      {
        CFRelease(v20);
        v20 = 0;
      }

      if (v19)
      {
        CFRelease(v19);
        v19 = 0;
      }

      if (v18)
      {
        CFRelease(v18);
        v18 = 0;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
LABEL_9:
  }

LABEL_31:
  *(*(*(a1 + 32) + 8) + 24) = CMSMUtility_CopyDeviceRouteAtIndexForInactiveRouteConfiguration(*(a1 + 40), *(a1 + 48), 0, 0, 0, &v20, &v19, &v18);
LABEL_32:
  v9 = *(a1 + 56);
  if (v9)
  {
    *v9 = v20;
    v20 = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    *v10 = v19;
    v19 = 0;
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    *v11 = v19;
    v19 = 0;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

__CFString *MXSMGetVolumeRampCategory(const __CFString *a1, const void *a2)
{
  v4 = @"PhoneCall";
  if (!PVMCategoriesAreEquivalent(a1, a2, @"PhoneCall", 0))
  {
    v4 = @"VoiceCommand";
    if (!PVMCategoriesAreEquivalent(a1, a2, @"VoiceCommand", 0))
    {
      v4 = @"Audio/Video";
      if (!PVMCategoriesAreEquivalent(a1, a2, @"Audio/Video", 0))
      {
        return 0;
      }
    }
  }

  return v4;
}

BOOL cmsmShouldUpdateMostRecentSynchronizedVolumeActivityTimestamp(const void *a1)
{
  cf = 0;
  if (a1)
  {
    cf = CFRetain(a1);
  }

  else
  {
    PVMCopyCurrentCategoryAndMode(&cf, 0);
  }

  if (FigCFEqual())
  {
    v1 = [+[MXSessionManager sharedInstance](MXSessionManager isVoiceAssistantPlayingToPersonalAudioDeviceOverMedia];
  }

  else
  {
    v1 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

BOOL isRouteInfoInVolumeOperationCurrent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) && *(a1 + 16) && *(a1 + 24))
  {
    v4 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v4;
    v10 = *(a1 + 32);
    result = PVMIsCurrentDeviceRoute(v9);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *(a2 + 8) = v6;
    v7 = *(a1 + 24);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    *(a2 + 24) = v7;
    v8 = *(a1 + 16);
    if (v8)
    {
      v8 = CFRetain(v8);
    }

    *(a2 + 16) = v8;
  }

  else
  {
    PVMCopyCurrentDeviceRoute((a2 + 8), (a2 + 24), (a2 + 16));
  }

  return 1;
}

uint64_t CMSessionManagerPerformVolumeOperationWithSequenceNumber(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11)
{
  v19 = a1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v20 = MXGetSerialQueue(a1, a2);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __CMSessionManagerPerformVolumeOperationWithSequenceNumber_block_invoke;
  v23[3] = &unk_1E7AED2B0;
  v24 = v19;
  v25 = a9;
  v23[4] = &v27;
  v23[5] = a2;
  v23[6] = a3;
  v23[7] = a4;
  v26 = a6;
  v23[8] = a5;
  v23[9] = a7;
  v23[10] = a8;
  v23[11] = a10;
  v23[12] = a11;
  MXDispatchAsyncAndWait("CMSessionManagerPerformVolumeOperationWithSequenceNumber", "CMSessionManager.m", 17549, 0, 0, v20, v23);
  v21 = *(v28 + 6);
  _Block_object_dispose(&v27, 8);
  return v21;
}

void sub_1B1972D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionManagerPerformVolumeOperationWithSequenceNumber_block_invoke(uint64_t a1)
{
  result = MXSMPerformVolumeOperation(*(a1 + 104), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), 0, *(a1 + 112), *(a1 + 72), *(a1 + 108), 0.0, 0.0, *(a1 + 80), *(a1 + 88), *(a1 + 96), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CMSessionMgrPerformVolumeOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v17 = a1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = MXGetSerialQueue(a1, a2);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __CMSessionMgrPerformVolumeOperation_block_invoke;
  v21[3] = &unk_1E7AE7B08;
  v22 = v17;
  v23 = a9;
  v21[4] = &v24;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a4;
  v21[8] = a5;
  v21[9] = a6;
  v21[10] = a7;
  v21[11] = a8;
  MXDispatchAsyncAndWait("CMSessionMgrPerformVolumeOperation", "CMSessionManager.m", 17587, 0, 0, v18, v21);
  v19 = *(v25 + 6);
  _Block_object_dispose(&v24, 8);
  return v19;
}

void sub_1B1972ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CMSessionMgrPerformVolumeOperation_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 100);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = getpid();
  result = MXSMPerformVolumeOperation(v2, v4, v5, v6, v7, 0, v8, *(a1 + 72), v3, 0.0, 0.0, *(a1 + 80), *(a1 + 88), 0, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CMSessionMgrCopyPortDescription(const __CFNumber *a1, uint64_t a2, CFDictionaryRef *a3)
{
  if (a1 && (v5 = CFGetTypeID(a1), v5 == CFNumberGetTypeID()))
  {
    PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(a1);
    if (a3)
    {
      v7 = cmsmCopyDetailedPortInfoForRouteConfiguration(PortFromCFNumber, 0, 1768776806, 0, 0, 2);
      result = 0;
      *a3 = v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _CMSessionMgrCopyPortDescription_cold_1(&v9);
    return v9;
  }

  return result;
}

__n128 MediaServerCMSessionOneTimeInitialization(uint64_t a1, uint64_t a2)
{
  if (qword_1ED6D2FD0 != -1)
  {
    MediaServerCMSessionOneTimeInitialization_cold_1();
  }

  MXSetSerialQueue(a1);
  *&unk_1EB75E040 = *a2;
  unk_1EB75E050 = *(a2 + 16);
  *&unk_1EB75E060 = *(a2 + 32);
  *&qword_1EB75E070 = *(a2 + 48);
  result = *(a2 + 64);
  *&unk_1EB75E080 = result;
  return result;
}

void MXSessionManagerFadeOutCurrentNowPlayingApp(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    v2 = CMSMNP_CopyNowPlayingAppSession();
    if (v2)
    {
      v3 = v2;
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      valuePtr[0] = 0;
      if (a1)
      {
        FadeOutDurationForPlaybackHandoff = CMSMUtility_GetFadeOutDurationForPlaybackHandoff();
      }

      else
      {
        FadeOutDurationForPlaybackHandoff = 0.0;
      }

      v12 = FadeOutDurationForPlaybackHandoff;
      v6 = CFGetAllocator(v3);
      v7 = CFNumberCreate(v6, kCFNumberFloat32Type, valuePtr);
      v8 = CFGetAllocator(v3);
      v9 = CFNumberCreate(v8, kCFNumberFloat32Type, &v12);
      CMSMUtility_PostNotifyStyleFadeOutAppliedForPlaybackHandoff();
      CMSUtility_PostInterruptionCommandNotification(v3, 2u, [v3 clientName], 0, v7, v9, 0, 0);
      v10 = +[MXSessionManager sharedInstance];
      *&v11 = v12;
      [(MXSessionManager *)v10 sleepForAsyncDucking:1 duration:v11];
      if (v7)
      {
        CFRelease(v7);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }
}

void MXSessionManagerFadeInCurrentNowPlayingApp(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    v2 = CMSMNP_CopyNowPlayingAppSession();
    if (v2)
    {
      v3 = v2;
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (a1)
      {
        FadeInDurationForPlaybackHandoff = CMSMUtility_GetFadeInDurationForPlaybackHandoff();
      }

      else
      {
        FadeInDurationForPlaybackHandoff = 0.0;
      }

      valuePtr[0] = FadeInDurationForPlaybackHandoff;
      v6 = CFGetAllocator(v3);
      v7 = CFNumberCreate(v6, kCFNumberFloat32Type, valuePtr);
      CMSMUtility_PostNotifyStyleFadeInAppliedForPlaybackHandoff();
      CMSUtility_PostInterruptionCommandNotification(v3, 3u, [v3 clientName], 0, 0, v7, 0, 0);
      v8 = +[MXSessionManager sharedInstance];
      *&v9 = valuePtr[0];
      [(MXSessionManager *)v8 sleepForAsyncDucking:0 duration:v9];
      if (v7)
      {
        CFRelease(v7);
      }
    }
  }
}

void *__cmsmLoadAudioStatisticsRoutines_block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    gCMSessionAudioStatistics = dlsym(result, "CreateSharedCAReportingClient");
    off_1EB75DFF8 = dlsym(v1, "CAReportingClientCreateReporterID");
    off_1EB75E000 = dlsym(v1, "CAReportingClientStartReporter");
    off_1EB75E008 = dlsym(v1, "CAReportingClientStopReporter");
    off_1EB75E010 = dlsym(v1, "CAReportingClientSetAudioServiceType");
    qword_1EB75E018 = dlsym(v1, "CAReportingClientGetAudioServiceType");
    off_1EB75E020 = dlsym(v1, "CAReportingClientSetConfiguration");
    off_1EB75E028 = dlsym(v1, "CAReportingClientSendMessage");
    result = dlsym(v1, "CAReportingClientDestroyReporterID");
    off_1EB75E030 = result;
  }

  return result;
}

__CFString *cmsmAudioPortInEarBluetoothStatusToString(uint64_t a1)
{
  if (a1 >= 4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN (%d)", a1];
  }

  else
  {
    return off_1E7AED310[a1];
  }
}

void cmsmGetCountAndResourceEntriesOfType(uint64_t result, _DWORD *a2, void *a3)
{
  *a3 = 0;
  *a2 = 0;
  if (dword_1EB75E100 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (FigCFEqual())
      {
        v7 = qword_1EB75E108 + v5;
        *a2 = *(qword_1EB75E108 + v5 + 8);
        *a3 = *(v7 + 16);
      }

      ++v6;
      v5 += 24;
    }

    while (v6 < dword_1EB75E100);
  }
}

void __cmsChangeGroupableAirPlayRouteFromSystemAudioToSystemMusic_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, *(a1 + 32));
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v5, @"RouteChangeOptionKey_UserPickedRoute", *MEMORY[0x1E695E4C0]);
  FigRoutingManagerPickEndpointsForContext(*(a1 + 40), Mutable, 0, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }
}

BOOL cmsmValidateAppsList(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 1;
  }

  else
  {
    v3 = Count;
    v4 = 0;
    if (CFArrayGetValueAtIndex(a1, 0))
    {
      v5 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v5 - 1);
        v7 = CFGetTypeID(ValueAtIndex);
        if (v7 != CFStringGetTypeID())
        {
          break;
        }

        v4 = v5 >= v3;
        if (v3 == v5)
        {
          break;
        }
      }

      while (CFArrayGetValueAtIndex(a1, v5++));
    }
  }

  return v4;
}

void MXSMPostSpeechDetectStyleDidChangeForTriggeredVolumeChange(unsigned int a1, int a2, float a3, float a4)
{
  CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
  DoesBluetoothSupportFeature = vaeDoesBluetoothSupportFeature(CurrentOutputPortAtIndex, @"kBluetoothAudioDeviceFeatureConversationDetect");
  if (a1 <= 0xE && ((1 << a1) & 0x5836) != 0 && a3 != a4 && !a2 && DoesBluetoothSupportFeature)
  {

    CMSMNotificationUtility_PostSpeechDetectStyleDidChangeIfNeeded(1, a4 > a3);
  }
}

void __cmsmRegisterForAudioDeviceStartNotifications_block_invoke()
{
  AudioDeviceStart = cmsmGetAudioDeviceStart();
  if (![+[MXSessionManager defaultVADID] sharedInstance]
  {
    return;
  }

  if (AudioDeviceStart)
  {
    if (!FigAtomicCompareAndSwap32())
    {
      return;
    }

    ::AudioDeviceStart([+[MXSessionManager defaultVADID] sharedInstance];
    if (!FigAtomicCompareAndSwap32())
    {
      return;
    }

    v1 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    CFStringAppendFormat(Mutable, 0, @"com.apple.appletv.audiostart");
    Current = CFAbsoluteTimeGetCurrent();
    v4 = CFDateCreate(v1, Current);
    v5 = sCMSessionMgrAudioDeviceStartIdleSleepPreventorName;
    sCMSessionMgrAudioDeviceStartIdleSleepPreventorName = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime;
    sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    PowerLogDataForAppleTV = CMSMPowerLogCreatePowerLogDataForAppleTV(@"AppleTV_Awake", sCMSessionMgrAudioDeviceStartIdleSleepPreventor, sCMSessionMgrAudioDeviceStartIdleSleepPreventorName, sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime);
    sCMSessionMgrAudioDeviceStartIdleSleepPreventorAllocated = CMSMSleep_CreateIdleSleepPreventor(Mutable, @"CoreMedia_AppleTVIdleSleepPreventor", PowerLogDataForAppleTV, &sCMSessionMgrAudioDeviceStartIdleSleepPreventor);
    if (PowerLogDataForAppleTV)
    {
      CFRelease(PowerLogDataForAppleTV);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
      if (!v4)
      {
        return;
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (!FigAtomicCompareAndSwap32())
    {
      return;
    }

    AudioDeviceStop([+[MXSessionManager defaultVADID] sharedInstance];
    if (!FigAtomicCompareAndSwap32())
    {
      return;
    }

    v4 = CMSMPowerLogCreatePowerLogDataForAppleTV(@"AppleTV_Asleep", sCMSessionMgrAudioDeviceStartIdleSleepPreventor, sCMSessionMgrAudioDeviceStartIdleSleepPreventorName, sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime);
    if (!CMSMSleep_ReleaseIdleSleepPreventor(sCMSessionMgrAudioDeviceStartIdleSleepPreventor, @"CoreMedia_AppleTVIdleSleepPreventor", v4))
    {
      sCMSessionMgrAudioDeviceStartIdleSleepPreventorAllocated = 1;
      if (!v4)
      {
        return;
      }

      goto LABEL_26;
    }

    sCMSessionMgrAudioDeviceStartIdleSleepPreventor = 0;
    if (sCMSessionMgrAudioDeviceStartIdleSleepPreventorName)
    {
      CFRelease(sCMSessionMgrAudioDeviceStartIdleSleepPreventorName);
      sCMSessionMgrAudioDeviceStartIdleSleepPreventorName = 0;
    }

    if (sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime)
    {
      CFRelease(sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime);
      sCMSessionMgrAudioDeviceStartIdleSleepPreventorCreationTime = 0;
    }
  }

  if (!v4)
  {
    return;
  }

LABEL_26:

  CFRelease(v4);
}