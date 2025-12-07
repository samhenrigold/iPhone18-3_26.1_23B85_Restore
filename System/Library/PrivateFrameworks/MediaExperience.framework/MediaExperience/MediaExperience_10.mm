uint64_t CMSMUtility_IAPShouldPauseOnHeadphoneDisconnect(uint64_t a1)
{
  if (IAPLibrary_sOnce != -1)
  {
    CMSMUtility_IAPShouldPauseOnHeadphoneDisconnect_cold_1();
  }

  if (!IAPLibrary_sLib || !dlsym(IAPLibrary_sLib, "IAPAudioShouldPauseAudioOnHeadsetDisconnect"))
  {
    return 0;
  }

  v2 = softLinkIAPAudioShouldPauseAudioOnHeadsetDisconnect[0];

  return v2(a1);
}

uint64_t CMSMUtility_IAPAppProcessIDIsUsingAccessory(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (IAPLibrary_sOnce != -1)
  {
    CMSMUtility_IAPShouldPauseOnHeadphoneDisconnect_cold_1();
  }

  if (!IAPLibrary_sLib || !dlsym(IAPLibrary_sLib, "IAPAppProcessIDIsUsingAccessory"))
  {
    return 0;
  }

  v2 = softLinkIAPAppProcessIDIsUsingAccessory[0];

  return v2(a1);
}

CFIndex CMSMUtility_VibrationPatternIsActuallyGoingToVibe(CFIndex result)
{
  if (result)
  {
    v1 = result;
    if (CFDictionaryContainsKey(result, @"VibePattern"))
    {
      Value = CFDictionaryGetValue(v1, @"VibePattern");
      result = CFArrayGetCount(Value);
      if (!result)
      {
        return result;
      }

      v5.length = CFArrayGetCount(Value);
      v5.location = 0;
      v3 = CFArrayContainsValue(Value, v5, *MEMORY[0x1E695E4D0]) == 0;
      return !v3;
    }

    if (CFDictionaryContainsKey(v1, @"OnDuration"))
    {
      return 1;
    }

    result = CFDictionaryContainsKey(v1, @"Atoms");
    if (result)
    {
      v4 = CFDictionaryGetValue(v1, @"Atoms");
      v3 = CFArrayGetCount(v4) == 0;
      return !v3;
    }
  }

  return result;
}

void *CMSMUtility_GetSharePlayMediaSession(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsSharePlayEnabled(a1, a2))
  {
    return 0;
  }

  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v9 + 1) + 8 * v6);
      if ([v7 isSharePlayMediaSession])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v7 = 0;
  }

  return v7;
}

void *CMSMUtility_TransferVolumeControlFlagToSharePlayCapableMediaSession(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  result = MX_FeatureFlags_IsSharePlayEnabled(a1, a2);
  if (result)
  {
    result = CMSMUtility_GetSharePlayCapableActiveMediaSession(result, v3);
    if (result)
    {
      v5 = result;
      result = CMSMUtility_IsSharePlayCapableCallSessionActive(result, v4);
      if (result)
      {
        v6 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v13;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v13 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v12 + 1) + 8 * i);
              if (CMSUtility_GetIsActive(v11) && (([v11 isSharePlayCallSession] & 1) != 0 || objc_msgSend(v11, "isSharePlayCapableCallSession")))
              {
                [v11 setCurrentlyControllingFlags:{objc_msgSend(v11, "currentlyControllingFlags") & 0xFFFFFFEFLL}];
                [v11 setHwControlFlags:2];
                goto LABEL_16;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        cmsTryToTakeControl(v5);
        vaemConfigurePVMSettings([v5 audioMode], 0);
        return [v5 setNeedToEndInterruption:1];
      }
    }
  }

  return result;
}

void CMSMUtility_TransferVolumeControlFlagToSharePlayCapableCallSession(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (CMSMUtility_IsSharePlayCapableCallSessionActive(a1, a2))
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
          if (CMSUtility_GetIsActive(v7) && [v7 isSharePlayCapableCallSession])
          {
            [v7 setHwControlFlags:18];
            goto LABEL_13;
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

LABEL_13:
  }
}

void CMSMUtility_SetMediaPlaybackVolumeToCurrentPhoneCallVolume(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0.0;
  if (MX_FeatureFlags_IsSharePlayEnabled(a1, a2))
  {
    CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    v3 = CurrentOutputPortAtIndex;
    v4 = vaeCopyFigOutputDeviceNameFromVADPort(CurrentOutputPortAtIndex);
    v5 = vaeCopyRouteSubtypeFromVADPort(v3);
    v6 = vaeCopyDeviceIdentifierFromVADPort(v3);
    v7 = getpid();
    v8 = MXSMPerformVolumeOperation(0xDu, @"PhoneCall", v4, v6, v5, 0, v7, &v12, 0.0, 0.0, 0.0, 0, 0, 0, 0);
    if (v6)
    {
      CFRelease(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (!v8)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v10 = v12;
      v11 = getpid();
      MXSMPerformVolumeOperation(0xCu, @"Audio/Video", 0, 0, 0, 0, v11, 0, v10, 0.0, 0.0, 0, 0, 0, 1);
    }
  }
}

void CMSMUtility_SetPhoneCallVolumeToCurrentMediaPlaybackVolume(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0.0;
  if (MX_FeatureFlags_IsSharePlayEnabled(a1, a2))
  {
    v2 = getpid();
    if (!MXSMPerformVolumeOperation(0xDu, @"Audio/Video", 0, 0, 0, 0, v2, &v11, 0.0, 0.0, 0.0, 0, 0, 0, 0))
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
      v5 = CurrentOutputPortAtIndex;
      v6 = vaeCopyFigOutputDeviceNameFromVADPort(CurrentOutputPortAtIndex);
      v7 = vaeCopyRouteSubtypeFromVADPort(v5);
      v8 = vaeCopyDeviceIdentifierFromVADPort(v5);
      v9 = v11;
      v10 = getpid();
      MXSMPerformVolumeOperation(0xCu, @"PhoneCall", v6, v8, v7, 0, v10, 0, v9, 0.0, 0.0, 0, 0, 0, 1);
      if (v8)
      {
        CFRelease(v8);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }
}

void *CMSMUtility_SetSharePlayInfoOnVA(void *a1, uint64_t a2)
{
  result = MX_FeatureFlags_IsSharePlayEnabled(a1, a2);
  if (a1 && result)
  {
    if ([a1 isSharePlayMediaSession] && (isActive = objc_msgSend_isActive(a1), isActive) && CMSMUtility_IsSharePlayCallSessionActive(isActive, v5))
    {
      VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([a1 audioMode]);
      v7 = [a1 aggregateDeviceClockUID];

      return CMSMVAUtility_SetSharePlayMediaSessionInfoOnVA(VADModeFromFigModeName, v7);
    }

    else
    {
      result = [a1 isSharePlayCallSession];
      if (result)
      {
        result = objc_msgSend_isActive(a1);
        if (result)
        {
          IsSharePlayMediaSessionActive = CMSMUtility_IsSharePlayMediaSessionActive(result, v8);

          return cmsSetCategoryOnPVMAndAudioDevice(a1, 0, IsSharePlayMediaSessionActive);
        }
      }
    }
  }

  return result;
}

id CMSMUtility_CreateCurrentlyAirPlayingVideoStreamsDictionary(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cf = 0;
  v5 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isLongFormVideo] && objc_msgSend(v10, "isPlaying") && objc_msgSend(v10, "isActiveOverAirPlayVideo") && (objc_msgSend(v10, "isAudioOnlyAirPlayVideoActive") & 1) == 0)
        {
          if ([v10 displayID])
          {
            [v4 setObject:objc_msgSend(v10 forKey:{"displayID"), a1}];
          }

          FigRoutingManagerContextUtilities_CopyPickedEndpointNames([v10 routingContextUUID], &cf);
          if (cf)
          {
            if ([cf count] >= 2)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [v4 setObject:cf forKey:a2];
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }
          }

          goto LABEL_20;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  return v4;
}

uint64_t CMSMUtility_InterruptAudioSessionIDForHandoff(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionWithAudioSessionID:"copySessionWithAudioSessionID:", a1];
    if (v2)
    {
      v3 = v2;
      CMSMUtility_PostStopCommandToShadowingSessionsForSession(v2, 1u);
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSUtilityApplier_PostNotification_StopCommand(v3, 0);

      return 0;
    }

    else
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 4294951615;
    }
  }

  else
  {
    v5 = qword_1EB75DE38;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294951615, "-CMSMUtilities-", 6627, v1);
  }
}

void *__IAPLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IAP.framework/IAP", 2);
  IAPLibrary_sLib = result;
  return result;
}

uint64_t initIAPAudioShouldPauseAudioOnHeadsetDisconnect(uint64_t a1)
{
  if (IAPLibrary_sOnce != -1)
  {
    CMSMUtility_IAPShouldPauseOnHeadphoneDisconnect_cold_1();
  }

  v2 = dlsym(IAPLibrary_sLib, "IAPAudioShouldPauseAudioOnHeadsetDisconnect");
  softLinkIAPAudioShouldPauseAudioOnHeadsetDisconnect[0] = v2;

  return (v2)(a1);
}

uint64_t initIAPAppProcessIDIsUsingAccessory(uint64_t a1)
{
  if (IAPLibrary_sOnce != -1)
  {
    CMSMUtility_IAPShouldPauseOnHeadphoneDisconnect_cold_1();
  }

  v2 = dlsym(IAPLibrary_sLib, "IAPAppProcessIDIsUsingAccessory");
  softLinkIAPAppProcessIDIsUsingAccessory[0] = v2;

  return (v2)(a1);
}

void sub_1B18C2D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B18C2E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B18C2F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B18C312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B18C326C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __mxsystemstatus_initialize_block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  if (!SystemStatusLibraryCore(0))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_16:
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = 0;
    goto LABEL_18;
  }

  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  gSerializationQueue = dispatch_queue_create("com.apple.coremedia.MXSystemStatus", v0);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__4;
  v1 = getSTMediaStatusDomainPublisherClass_softClass;
  v12 = __Block_byref_object_dispose__4;
  v13 = getSTMediaStatusDomainPublisherClass_softClass;
  if (!getSTMediaStatusDomainPublisherClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getSTMediaStatusDomainPublisherClass_block_invoke;
    v17 = &unk_1E7AE73A0;
    v18 = &v8;
    __getSTMediaStatusDomainPublisherClass_block_invoke(&v14);
    v1 = v9[5];
  }

  _Block_object_dispose(&v8, 8);
  stMediaStatusDomainPublisher = objc_alloc_init(v1);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__4;
  v2 = getSTMutableMediaStatusDomainDataClass_softClass;
  v12 = __Block_byref_object_dispose__4;
  v13 = getSTMutableMediaStatusDomainDataClass_softClass;
  if (!getSTMutableMediaStatusDomainDataClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getSTMutableMediaStatusDomainDataClass_block_invoke;
    v17 = &unk_1E7AE73A0;
    v18 = &v8;
    __getSTMutableMediaStatusDomainDataClass_block_invoke(&v14);
    v2 = v9[5];
  }

  _Block_object_dispose(&v8, 8);
  stMutableMediaStatusDomainData = objc_alloc_init(v2);
  sSystemStatusMutex = FigReentrantMutexCreate();
  sRecordingClientsInfo = objc_alloc_init(MEMORY[0x1E695DFA8]);
  result = objc_alloc_init(MEMORY[0x1E695DFA8]);
  sMutedRecordingClientsInfo = result;
  if (!gSerializationQueue || !stMediaStatusDomainPublisher || !stMutableMediaStatusDomainData || !sSystemStatusMutex || !sRecordingClientsInfo || !result)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    goto LABEL_16;
  }

  if (dword_1EB75DE40)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = 1;
LABEL_18:
  sIsSystemStatusInitialized = v7;
  return result;
}

void sub_1B18C5214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SystemStatusLibraryCore(uint64_t a1)
{
  if (!SystemStatusLibraryCore_frameworkLibrary)
  {
    SystemStatusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SystemStatusLibraryCore_frameworkLibrary;
}

uint64_t __SystemStatusLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SystemStatusLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSTMediaStatusDomainPublisherClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  *(*(*(a1 + 32) + 8) + 40) = objc_getClass("STMediaStatusDomainPublisher");
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTMediaStatusDomainPublisherClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getSTMediaStatusDomainPublisherClass_block_invoke_cold_1();
    SystemStatusLibrary();
  }
}

void SystemStatusLibrary()
{
  v2 = 0;
  v0 = SystemStatusLibraryCore(&v2);
  v1 = v2;
  if (!v0)
  {
    v1 = abort_report_np("%s", v2);
    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    free(v1);
  }
}

Class __getSTMutableMediaStatusDomainDataClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STMutableMediaStatusDomainData");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTMutableMediaStatusDomainDataClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getSTMutableMediaStatusDomainDataClass_block_invoke_cold_1();
    return __getBSExecutablePathForAuditTokenSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getBSExecutablePathForAuditTokenSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BaseBoardLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BaseBoardLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7AEB2D8;
    v7 = 0;
    BaseBoardLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = BaseBoardLibraryCore_frameworkLibrary;
    if (BaseBoardLibraryCore_frameworkLibrary)
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

  v2 = BaseBoardLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "BSExecutablePathForAuditToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBSExecutablePathForAuditTokenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BaseBoardLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BaseBoardLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSTAttributedEntityClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STAttributedEntity");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTAttributedEntityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getSTAttributedEntityClass_block_invoke_cold_1();
    return __getSTExecutableIdentityClass_block_invoke(v3);
  }

  return result;
}

Class __getSTExecutableIdentityClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STExecutableIdentity");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTExecutableIdentityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getSTExecutableIdentityClass_block_invoke_cold_1();
    return __getSTActivityAttributionClass_block_invoke(v3);
  }

  return result;
}

Class __getSTActivityAttributionClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STActivityAttribution");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTActivityAttributionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v3 = __getSTActivityAttributionClass_block_invoke_cold_1();
    return __getSTMediaStatusDomainMicrophoneRecordingAttributionClass_block_invoke(v3);
  }

  return result;
}

Class __getSTMediaStatusDomainMicrophoneRecordingAttributionClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STMediaStatusDomainMicrophoneRecordingAttribution");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getSTMediaStatusDomainMicrophoneRecordingAttributionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getSTMediaStatusDomainMicrophoneRecordingAttributionClass_block_invoke_cold_1();
    return MXCoreAnimation_IsWirelessDisplayBeingUsedInSecondDisplayMode();
  }

  return result;
}

uint64_t MXCoreAnimation_IsWirelessDisplayBeingUsedInSecondDisplayMode()
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = [MEMORY[0x1E6979328] displays];
  result = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v1 = result;
    v2 = *v12;
    while (2)
    {
      v3 = 0;
      do
      {
        if (*v12 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v11 + 1) + 8 * v3);
        v5 = [v4 displayType];
        if ([objc_msgSend(v4 "currentMode")])
        {
          v6 = [objc_msgSend(v4 "currentMode")] != 0;
        }

        else
        {
          v6 = 0;
        }

        if (dword_1EB75DF20)
        {
          v9 = v6;
          v10 = v5;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v5 = v10;
          v6 = v9;
        }

        if (v5 == 2 && v6 && ![v4 isCloning])
        {
          return 1;
        }

        ++v3;
      }

      while (v1 != v3);
      result = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
      v1 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t CMSMAP_FindAirPlayPortForEndpoint(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v11 = 0;
  FigEndpointCopyFirstStreamOfType();
  v2 = CMSMVAUtility_CopyConnectedWirelessPorts();
  v3 = v2;
  if (v2 && (Count = CFArrayGetCount(v2), Count >= 1))
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      v12 = 0;
      FigCFArrayGetInt64AtIndex();
      v7 = v12;
      v8 = vaeCopyDeviceIdentifierFromVADPort(v12);
      if (FigCFEqual())
      {
        break;
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (v5 == ++v6)
      {
        goto LABEL_9;
      }
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v7;
}

uint64_t CMSMAP_MakeAirPlayHandOffPortRoutable(int a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = CFNumberCreate(v4, kCFNumberSInt32Type, &dword_1EB75E0B8);
  CFArrayAppendValue(Mutable, v6);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    memset(v18 + 8, 0, 168);
    v17 = 0;
    *&v18[0] = Mutable;
    v9 = cmsmSetVADRouteConfiguration(&v14, 0, a2);
    v12 = MXGetSerialQueue(v9, v11);
    MXDispatchAsync("CMSMAP_StopRouteAwayFromAirPlayHandoffTimer", "CMSessionManager_AirPlay.m", 262, 0, 0, v12, &__block_literal_global_9);
LABEL_7:
    if (!Mutable)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  CMSMAP_StartRouteAwayFromAirPlayHandoffTimer(a2, v7, 60.0);
  v14 = 0u;
  v15 = 0u;
  memset(v18, 0, sizeof(v18));
  *&v16 = 0;
  *(&v16 + 1) = Mutable;
  v17 = Mutable;
  v9 = cmsmSetVADRouteConfiguration(&v14, 0, a2);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (Mutable)
  {
LABEL_8:
    CFRelease(Mutable);
  }

LABEL_9:
  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

void CMSMAP_StartRouteAwayFromAirPlayHandoffTimer(uint64_t a1, uint64_t a2, float a3)
{
  if (qword_1EB75E160)
  {
    v5 = MXGetSerialQueue(a1, a2);
    MXDispatchAsync("CMSMAP_StopRouteAwayFromAirPlayHandoffTimer", "CMSessionManager_AirPlay.m", 262, 0, 0, v5, &__block_literal_global_9);
  }

  v6 = MXGetSerialQueue(a1, a2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CMSMAP_StartRouteAwayFromAirPlayHandoffTimer_block_invoke;
  v7[3] = &__block_descriptor_44_e5_v8__0l;
  v7[4] = a1;
  v8 = a3;
  MXDispatchAsync("CMSMAP_StartRouteAwayFromAirPlayHandoffTimer", "CMSessionManager_AirPlay.m", 246, 0, 0, v6, v7);
}

void CMSMAP_DisconnectAllAirPlaySessions(uint64_t a1)
{
  v1 = a1;
  v2 = cmsmCopyWirelessPortsArrayForRouteConfiguration(@"Audio/Video", @"Default", 0, 0);
  cmsmUnpickWirelessRoutes(v2, 1, v1, qword_1EB75E190);
  if (v2)
  {

    CFRelease(v2);
  }
}

void CMSMAP_StartDisconnectAirPlayScreenTimer(uint64_t a1, uint64_t a2, float a3)
{
  if (qword_1EB75E158)
  {
    v4 = MXGetSerialQueue(a1, a2);
    MXDispatchAsync("CMSMAP_StopDisconnectAirPlayScreenTimer", "CMSessionManager_AirPlay.m", 229, 0, 0, v4, &__block_literal_global_5);
  }

  v5 = MXGetSerialQueue(a1, a2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CMSMAP_StartDisconnectAirPlayScreenTimer_block_invoke;
  v6[3] = &__block_descriptor_36_e5_v8__0l;
  v7 = a3;
  MXDispatchAsync("CMSMAP_StartDisconnectAirPlayScreenTimer", "CMSessionManager_AirPlay.m", 215, 0, 0, v5, v6);
}

void CMSMAP_StopDisconnectAirPlayScreenTimer(uint64_t a1, uint64_t a2)
{
  v2 = MXGetSerialQueue(a1, a2);

  MXDispatchAsync("CMSMAP_StopDisconnectAirPlayScreenTimer", "CMSessionManager_AirPlay.m", 229, 0, 0, v2, &__block_literal_global_5);
}

uint64_t cmsmap_DisconnectAirPlayScreenIfIdle()
{
  v10 = *MEMORY[0x1E69E9840];
  IsPlayingToAirPlay = CMSMUtility_SomeClientIsPlayingToAirPlay();
  if (qword_1EB75E158)
  {
    dispatch_source_cancel(qword_1EB75E158);
    if (qword_1EB75E158)
    {
      dispatch_release(qword_1EB75E158);
      qword_1EB75E158 = 0;
    }
  }

  CMScreenGetScreenState();
  result = FigCFEqual();
  if (!result)
  {
    CMScreenGetScreenType();
    result = FigCFEqual();
    if (result && IsPlayingToAirPlay == 0)
    {
      result = CMSMDeviceState_ScreenIsBlanked();
      if (result)
      {
        IsWirelessDisplayBeingUsedInSecondDisplayMode = MXCoreAnimation_IsWirelessDisplayBeingUsedInSecondDisplayMode();
        if (IsWirelessDisplayBeingUsedInSecondDisplayMode)
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            IsWirelessDisplayBeingUsedInSecondDisplayMode = fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v7 = MXGetSerialQueue(IsWirelessDisplayBeingUsedInSecondDisplayMode, v4);
          result = MXDispatchUtilityCreateOneShotTimer("cmsmap_DisconnectAirPlayScreenIfIdle", "CMSessionManager_AirPlay.m", 152, 0, 0, v7, &__block_literal_global_11, 0, 60.0, 0);
          qword_1EB75E158 = result;
        }

        else
        {
          if (dword_1EB75DE40)
          {
            v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          IsTestCodeEnabled = MXSystemMirroring_IsTestCodeEnabled();
          v9 = [+[MXSessionManager sharedInstance](MXSessionManager systemMirroringRoutingContextUUID];
          if (IsTestCodeEnabled)
          {
            return MXSystemMirroring_PickRouteDescriptor(v9, 0, 0, 0);
          }

          else
          {
            return FigRoutingManagerPickRouteDescriptorForContext(v9, 0, 0, 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMSMAP_GetAirPlayDeviceVolume(uint64_t a1, uint64_t a2, float *a3)
{
  cf[20] = *MEMORY[0x1E69E9840];
  v4 = FigRoutingManagerCopyEndpointWithDeviceID(a1, 1, *MEMORY[0x1E69618D0], a2);
  if (v4)
  {
    cf[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E6962338], *MEMORY[0x1E695E480], cf);
      v7 = cf[0];
    }

    else
    {
      v7 = 0;
    }

    ValueFloat32 = MXCFNumberGetValueFloat32(v7);
    v9 = *&ValueFloat32;
    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

    if (v9 >= 0.0 && v9 <= 1.0)
    {
      if (!dword_1EB75DE40)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = 0.3;
      if (!dword_1EB75DE40)
      {
        goto LABEL_15;
      }
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_15:
    v10 = 1;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = 0;
  v9 = 1.0;
  if (a3)
  {
LABEL_16:
    *a3 = v9;
  }

LABEL_17:
  if (v4)
  {
    CFRelease(v4);
  }

  return v10;
}

uint64_t FigStarkModeControllerStartServer()
{
  v11 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  v0 = fig_note_initialize_category_with_default_work();
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled(v0, v1))
  {
    v7 = 1;
    v8 = HandleStarkModeControllerMessage;
    v9 = 0u;
    v10 = 0u;
    v2 = FigXPCServerStart();
    v3 = v2;
    if (v2)
    {
      FigStarkModeControllerStartServer_cold_1(v2);
    }

    else if (dword_1EB75DDF0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return v3;
}

void sub_1B18C90CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MXRoutingContextControllerModificationCallback(void *a1, void *a2)
{
  location[16] = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = [a1 objectForKey:@"MXRoutingContextController"];
  v6 = [a1 objectForKey:@"CompletionHandler"];
  [a2 routeConfigUpdateReason];
  if (FigCFEqual())
  {
    v7 = -[MXRoutingPrewarmingChannel initWithRoutingContextUUID:endpoint:previousRouteDescriptors:]([MXRoutingPrewarmingChannel alloc], "initWithRoutingContextUUID:endpoint:previousRouteDescriptors:", [v5 routingContextUUID], 0, objc_msgSend(a1, "objectForKey:", @"PreviousRouteDescriptors"));
  }

  else
  {
    v7 = 0;
  }

  objc_initWeak(location, v5);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MXRoutingContextControllerModificationCallback_block_invoke;
  v11[3] = &unk_1E7AEA958;
  objc_copyWeak(&v12, location);
  [(MXRoutingPrewarmingChannel *)v7 setPersistPrewarmingBlock:v11];
  v8 = [a1 objectForKey:@"PreviousRouteDescriptors"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MXRoutingContextControllerModificationCallback_block_invoke_50;
  v9[3] = &unk_1E7AEB360;
  objc_copyWeak(&v10, location);
  v9[4] = v8;
  [(MXRoutingPrewarmingChannel *)v7 setCloseChannelBlock:v9];
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
}

void sub_1B18C9A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __MXRoutingContextControllerModificationCallback_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [objc_loadWeak((a1 + 32)) setContextPrewarmed:0];
}

uint64_t __MXRoutingContextControllerModificationCallback_block_invoke_50(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Weak = objc_loadWeak((a1 + 40));
  [Weak setContextPrewarmed:0];
  return [Weak selectRouteDescriptors:*(a1 + 32)];
}

void FigRoutingManagerSetUpSystemRemoteDisplayContextWithEndpoint(uint64_t a1, uint64_t a2)
{
  v3 = MXGetSerialQueue(a1, a2);
  dispatch_assert_queue_V2(v3);
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID(&cf);
  if (a1)
  {
    if (weakCentralEndpoint)
    {
      CFRelease(weakCentralEndpoint);
      weakCentralEndpoint = 0;
    }

    weakCentralEndpoint = FigCFWeakReferenceHolderCreateWithReferencedObject();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListeners();
  }

  else
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
      CFRelease(v5);
    }

    FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(cf, 0, @"configUpdateReasonEndedBottomUpRouteChange", 0);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void FigRoutingManagerNotifyClientsOfCarPlayActivation()
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemRemoteDisplayContextUUID(&cf);
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(cf, v0, @"configUpdateReasonEndedBottomUpRouteChange", 0);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v0)
  {
    CFRelease(v0);
  }
}

void FigRoutingManagerSetupEndpointCentralForCarPlay(const void *a1)
{
  v22[7] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695E110];
  v3 = MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E118];
  if (a1)
  {
    cf[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69622F0], *v3, cf);
    }

    v7 = FigCFEqual();
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v7)
    {
      v2 = v4;
    }
  }

  v19 = 0;
  v20 = 0;
  if (CMSessionCreate(&v20))
  {
    goto LABEL_15;
  }

  v8 = MXSessionCreate(v20, &v19);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v19 == 0;
  }

  if (!v10)
  {
    cf[0] = @"CarSession";
    v22[0] = @"ClientName";
    v22[1] = @"ClientPID";
    cf[1] = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
    cf[2] = @"MediaPlayback";
    v22[2] = @"AudioCategory";
    v22[3] = @"IAmCar";
    cf[3] = v4;
    cf[4] = v2;
    v22[4] = @"IAmWiredCar";
    v22[5] = @"AudioHardwareControlFlags";
    cf[5] = &unk_1F28AF620;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:cf forKeys:v22 count:6];
    v8 = MXSessionSetProperties(v19, v12, 2, 0);
    goto LABEL_17;
  }

  if (v8)
  {
LABEL_15:
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = v19;
    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
    }
  }

LABEL_17:
  v13 = MXGetNotificationSenderQueue(v8, v9);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __routingManager_createMXSessionForCarPlay_block_invoke;
  v17[3] = &__block_descriptor_40_e5_v8__0l;
  v17[4] = v20;
  MXDispatchAsync("routingManager_createMXSessionForCarPlay", "FigRoutingManager_iOSCarPlay.m", 74, 0, 0, v13, v17);
  v14 = v19;
  cf[0] = 0;
  FigEndpointCreateCentral(*v3, a1, v19, cf);
  _MXSessionSetProperty(v14, @"CarFigEndpointCentralObject", cf[0]);
  active = FigEndpointServerSetActiveEndpoint();
  if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled(active, v16))
  {
    FigRoutingManagerSetUpSystemRemoteDisplayContextWithEndpoint(cf[0], a1);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

uint64_t FigRoutingManagerSendCarPlayDuckCommand(const void *a1, uint64_t a2)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4294954296;
  }

  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  if (!cf)
  {
    return 4294954296;
  }

  v16 = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(cf, &v16);
  if (v16 != a1)
  {
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyActivatedEndpoints(cf, theArray);
    if (!theArray[0])
    {
      goto LABEL_22;
    }

    Count = CFArrayGetCount(theArray[0]);
    if (Count < 1)
    {
      v9 = 0;
    }

    else
    {
      v5 = Count;
      if (CFArrayGetValueAtIndex(theArray[0], 0) == a1)
      {
        v9 = 1;
      }

      else
      {
        v6 = 1;
        do
        {
          v7 = v6;
          if (v5 == v6)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], v6);
          v6 = v7 + 1;
        }

        while (ValueAtIndex != a1);
        v9 = v7 < v5;
      }
    }

    if (theArray[0])
    {
      CFRelease(theArray[0]);
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    else if (!v9)
    {
      goto LABEL_22;
    }
  }

  FigEndpointExtendedGetClassID();
  if (CMBaseObjectIsMemberOfClass())
  {
    v11 = CFRetain(a1);
    if (v11)
    {
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 24) + 48);
      if (v13)
      {
        v10 = v13(v12, a2);
      }

      else
      {
        v10 = 4294954514;
      }

      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFRelease(v12);
      goto LABEL_27;
    }
  }

LABEL_22:
  v10 = 4294954296;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t FigRoutingManagerCopyCarBluetoothIDs(uint64_t a1)
{
  theArray = 0;
  v14 = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpoints(a1, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E69626C0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, v5))
        {
          break;
        }

        if (v3 == ++v4)
        {
          goto LABEL_9;
        }
      }

      CMBaseObject = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, *MEMORY[0x1E6961FE8], *MEMORY[0x1E695E480], &v14);
      }
    }

LABEL_9:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }
  }

  result = v14;
  if (!v14)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(a1, &cf);
    if (FigRoutingManagerIsEndpointOfType(cf, *MEMORY[0x1E69626C0]))
    {
      v10 = FigEndpointGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v11(v10, *MEMORY[0x1E6961FE8], *MEMORY[0x1E695E480], &v14);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return v14;
  }

  return result;
}

void FigRoutingManagerSendCarPlayDisableBluetoothCommand()
{
  v0 = MGCopyAnswer();
  v2 = v0;
  if (v0)
  {
    v0 = CFRetain(v0);
  }

  v3 = *(FigRoutingManagerGetSharedManager(v0, v1) + 1);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigRoutingManagerSendCarPlayDisableBluetoothCommand_block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = v2;
  MXDispatchAsync("FigRoutingManagerSendCarPlayDisableBluetoothCommand", "FigRoutingManager_iOSCarPlay.m", 309, 0, 0, v3, v4);
  if (v2)
  {
    CFRelease(v2);
  }
}

void __FigRoutingManagerSendCarPlayDisableBluetoothCommand_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v16 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v16);
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpoints(v16, &theArray);
  v2 = MEMORY[0x1E69626C0];
  if (!theArray)
  {
    goto LABEL_13;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_9;
  }

  v4 = Count;
  v5 = 0;
  v6 = *v2;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, v6))
    {
      break;
    }

    if (v4 == ++v5)
    {
      goto LABEL_9;
    }
  }

  if (ValueAtIndex)
  {
    v8 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (!v8)
  {
LABEL_13:
    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(v16, cf);
    if (FigRoutingManagerIsEndpointOfType(cf[0], *v2))
    {
      if (!cf[0])
      {
        goto LABEL_25;
      }

      v8 = CFRetain(cf[0]);
    }

    else
    {
      v8 = 0;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (!v8)
    {
      goto LABEL_25;
    }
  }

  FigEndpointExtendedGetClassID();
  if (CMBaseObjectIsMemberOfClass())
  {
    v9 = CFRetain(v8);
    CFRelease(v8);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(*(CMBaseObjectGetVTable() + 24) + 40);
      if (v11)
      {
        v11(v9, v10, 0);
      }

      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFRelease(v9);
      goto LABEL_30;
    }
  }

  else
  {
    CFRelease(v8);
  }

LABEL_25:
  if (dword_1EB75DF20)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_30:
  v14 = *(a1 + 32);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

NSObject *FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer(CFTypeRef cf, uint64_t a2, float a3)
{
  v5 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  SharedManager = FigRoutingManagerGetSharedManager(cf, a2);
  v7 = *(SharedManager + 4);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = *(SharedManager + 4);
    if (v8)
    {
      dispatch_release(v8);
      *(SharedManager + 4) = 0;
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer_block_invoke;
  v11[3] = &__block_descriptor_48_e5_v8__0l;
  v11[4] = v5;
  v11[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer_block_invoke_2;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = v5;
  result = FigRoutingManagerCreateOneShotTimer(*(SharedManager + 1), v11, v5, v10, a3);
  *(SharedManager + 4) = result;
  return result;
}

void __FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer_block_invoke(uint64_t a1)
{
  v7 = 0;
  cf = 0;
  if (*(a1 + 32))
  {
    v2 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69620F8], v2, &cf);
    }

    v5 = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, *MEMORY[0x1E69621E8], v2, &v7);
    }

    FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(*(a1 + 40), *(a1 + 32), @"configUpdateReasonEndedSuccess");
    FigRoutingManagerPostProcessPickEndpoint(*(a1 + 32), *(a1 + 40));
    FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 40), 0);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void __FigRoutingManagerStartCarPlayAudioMainPortPublishingCheckTimer_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void FigRoutingManagerStopCarPlayAudioMainPortPublishedCheckTimer(uint64_t a1, uint64_t a2)
{
  SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
  v3 = *(SharedManager + 4);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(SharedManager + 4);
    if (v4)
    {
      dispatch_release(v4);
      *(SharedManager + 4) = 0;
    }
  }
}

uint64_t FigRoutingManagerFindCarPlayMainAudioPortForEndpoint(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  theArray = 0;
  v15 = 0;
  FigEndpointCopyStreamsForTypeAndSubType();
  v3 = vaemCopyConnectedPortsListForRouteConfiguration(0, 0, 0, 0, 0);
  v4 = v3;
  if (v3 && (Count = CFArrayGetCount(v3), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      LODWORD(cf) = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &cf);
      v9 = vaeCopyDeviceIdentifierFromVADPort(cf);
      PortTypeFromPortID = vaeGetPortTypeFromPortID(cf);
      if (FigCFEqual() && PortTypeFromPortID == 1886614639)
      {
        break;
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (v6 == ++v7)
      {
        goto LABEL_14;
      }
    }

    v2 = cf;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
LABEL_14:
    v2 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v2;
}

void FigRoutingManagerProcessCarPlayEndpointDeactivation(int a1, uint64_t a2)
{
  v4 = CMSMUtility_CopyCarPlaySession();
  v5 = v4;
  if (v4)
  {
    MXCoreSessionSetProperty(v4, @"CarFigEndpointCentralObject");
    MXCoreSessionSetProperty(v5, @"IAmCar");
    CMSMNotificationUtility_PostCarPlayAuxStreamSupportDidChange(0);
    CMSMNotificationUtility_PostCarPlayIsConnectedDidChange(0);
  }

  if (a1)
  {
    if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled(v6, v7))
    {
      FigRoutingManagerSetUpSystemRemoteDisplayContextWithEndpoint(0, a2);
    }

    FigEndpointServerSetActiveEndpoint();
  }
}

void __routingManager_createMXSessionForCarPlay_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

__CFDictionary *CMSMPowerLogCreatePowerLogDataForAppleTV(const void *a1, int a2, const void *a3, const void *a4)
{
  valuePtr = a2;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a2)
  {
    v10 = 0;
LABEL_6:
    v11 = 1;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
  if (!v10)
  {
    goto LABEL_6;
  }

  CFDictionarySetValue(Mutable, @"AssertionID", v10);
  v11 = 0;
  if (a3)
  {
LABEL_7:
    CFDictionarySetValue(Mutable, @"AssertionName", a3);
  }

LABEL_8:
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"CreationTime", a4);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, @"Operation", a1);
  }

  if ((v11 & 1) == 0)
  {
    CFRelease(v10);
  }

  return Mutable;
}

__CFDictionary *CMSMPowerLogCreatePowerLogDataForStarkWiFi(const void *a1, int a2, const void *a3, const void *a4)
{
  valuePtr = a2;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a2)
  {
    v10 = 0;
LABEL_6:
    v11 = 1;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
  if (!v10)
  {
    goto LABEL_6;
  }

  CFDictionarySetValue(Mutable, @"AssertionID", v10);
  v11 = 0;
  if (a3)
  {
LABEL_7:
    CFDictionarySetValue(Mutable, @"AssertionName", a3);
  }

LABEL_8:
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"CreationTime", a4);
  }

  if (a1)
  {
    CFDictionarySetValue(Mutable, @"Operation", a1);
  }

  v12 = CMSMUtility_CopyCarPlaySession();
  v13 = v12;
  if (v12)
  {
    if ([v12 clientPID])
    {
      v16 = [objc_msgSend(v13 "clientPID")];
      v14 = CFNumberCreate(v8, kCFNumberSInt32Type, &v16);
      FigCFDictionarySetValue();
      if (v14)
      {
        CFRelease(v14);
      }
    }

    CFDictionarySetValue(Mutable, @"ApplicationName", @"CarCMSession");
  }

  if ((v11 & 1) == 0)
  {
    CFRelease(v10);
  }

  return Mutable;
}

__CFDictionary *CMSMPowerLogCreatePowerLogDataForSession(void *a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if ([a1 idleSleepPreventor])
  {
    valuePtr = [a1 idleSleepPreventor];
    v5 = CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
    if (v5)
    {
      CFDictionarySetValue(Mutable, @"AssertionID", v5);
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 1;
LABEL_6:
  if ([a1 idleSleepPreventorName])
  {
    CFDictionarySetValue(Mutable, @"AssertionName", [a1 idleSleepPreventorName]);
  }

  if ([a1 idleSleepPreventorCreationTime])
  {
    CFDictionarySetValue(Mutable, @"CreationTime", [a1 idleSleepPreventorCreationTime]);
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (![a1 isPlayingStartTime])
    {
      goto LABEL_15;
    }

    v7 = @"PlaybackStartTime";
    v8 = [a1 isPlayingStartTime];
  }

  else
  {
    if (!FigCFEqual() || ![a1 isPlayingStopTime])
    {
      goto LABEL_15;
    }

    v7 = @"PlaybackStopTime";
    v8 = [a1 isPlayingStopTime];
  }

  CFDictionarySetValue(Mutable, v7, v8);
LABEL_15:
  if (FigCFEqual() || FigCFEqual())
  {
    v9 = MX_RunningBoardServices_CopyAssertionReasonsStringForPID([objc_msgSend(a1 "clientPID")]);
    StringForApplicationState = CMSMUtility_GetStringForApplicationState([a1 applicationState]);
    CFDictionarySetValue(Mutable, @"ApplicationState", StringForApplicationState);
    CFDictionarySetValue(Mutable, @"AssertionReasonString", v9);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  if ([objc_msgSend(a1 "clientPID")])
  {
    v14 = [objc_msgSend(a1 "clientPID")];
    v11 = CFNumberCreate(v3, kCFNumberSInt32Type, &v14);
  }

  else
  {
    v11 = 0;
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    v12 = CMSUtility_CopyCurrentRouteTypeAtIndex(a1, 0);
    if (([a1 isCarSession] & 1) == 0)
    {
      [a1 displayID];
    }

    FigCFDictionarySetValue();
    cmsmpowerlogConvertToExternalRouteNameForPowerLog(v12);
    FigCFDictionarySetValue();
    if (v11)
    {
LABEL_31:
      CFRelease(v11);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 displayID];
      FigCFDictionarySetValue();
      cmsmpowerlogConvertToExternalRouteNameForPowerLog(@"MicrophoneBuiltIn");
      FigCFDictionarySetValue();
    }

    v12 = 0;
    if (v11)
    {
      goto LABEL_31;
    }
  }

  if ((v6 & 1) == 0)
  {
    CFRelease(v5);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return Mutable;
}

void CMSMPowerLogPostScreenMirroringPowerLogs(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, @"MirroringState", a1);
    CMSMPowerLogPostPowerLogData(@"CoreMedia_ScreenMirroring", v3);

    CFRelease(v3);
  }
}

uint64_t MX_MediaServicesUtilitiesResetMediaServices(int a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = v3;
  if (a1)
  {
    [v3 addObject:@"audiomxd"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:@"mediaplaybackd"];
  [v4 addObject:@"mediaparserd"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  [v4 addObject:@"cameracaptured"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v4 addObject:@"videocodecd"];
    [v4 addObject:@"AudioConverterService"];
  }

LABEL_6:
  if (a1 == 0xFFFF)
  {
    [v4 addObject:@"airplayd"];
    [v4 addObject:@"cvhwad"];
  }

  if ([v4 count])
  {
    v13 = v2;
    if (dword_1EB75DE40)
    {
      v19 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v22 = 0;
          v23 = &v22;
          v24 = 0x2020000000;
          v11 = getSFTerminateProcessNamedSymbolLoc_ptr;
          v25 = getSFTerminateProcessNamedSymbolLoc_ptr;
          if (!getSFTerminateProcessNamedSymbolLoc_ptr)
          {
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __getSFTerminateProcessNamedSymbolLoc_block_invoke;
            v21[3] = &unk_1E7AE73A0;
            v21[4] = &v22;
            __getSFTerminateProcessNamedSymbolLoc_block_invoke(v21);
            v11 = v23[3];
          }

          _Block_object_dispose(&v22, 8);
          if (!v11)
          {
            __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
            __break(1u);
          }

          v11(v10, 0, @"Resetting media services");
        }

        v7 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }

    v6 = 0;
    v2 = v13;
  }

  else
  {
    v6 = 4294954315;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

void *__getSFTerminateProcessNamedSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SettingsFoundationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SettingsFoundationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7AEB3A0;
    v7 = 0;
    SettingsFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SettingsFoundationLibraryCore_frameworkLibrary;
    if (SettingsFoundationLibraryCore_frameworkLibrary)
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

  v2 = SettingsFoundationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SFTerminateProcessNamed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSFTerminateProcessNamedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SettingsFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SettingsFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t remoteSTS_DeadConnectionCallback(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  result = CMBaseObjectGetDerivedStorage();
  *(result + 16) = 1;
  return result;
}

__CFString *remoteSTS_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *(DerivedStorage + 8);
  v6 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 16))
  {
    v7 = " SERVER DIED";
  }

  else
  {
    v7 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigSTSRemote %p (%@) RC: %ld ObjectID: %016llx%s>", a1, v5, v6, *DerivedStorage, v7);
  return Mutable;
}

uint64_t remoteSTS_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    remoteSTS_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

CFTypeRef FigPredictedRouting_CopySelectedRouteDescriptor(uint64_t a1)
{
  if (!FigPredictedRouting_IsSupported(a1))
  {
    return 0;
  }

  FigSimpleMutexLock();
  if (gPRS_1)
  {
    v1 = CFRetain(gPRS_1);
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

void FigPredictedRouting_ResetSelectedRouteDescriptor(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (FigPredictedRouting_IsSupported(a1))
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a2 == 6)
    {
      v4 = 10;
    }

    else
    {
      v4 = 8;
    }

    if (a2 == 1)
    {
      v5 = 9;
    }

    else
    {
      v5 = v4;
    }

    predictedRouting_UpdatePredictedRoute(v5, 0);
  }
}

uint64_t FigPredictedRouting_StartTimer(float a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  FigSimpleMutexLock();
  if (gPRS_2)
  {
    FigPredictedRouting_StopTimer();
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  SharedQueue = FigRoutingManagerGetSharedQueue();
  gPRS_2 = MXDispatchUtilityCreateOneShotTimer("FigPredictedRouting_StartTimer", "FigPredictedRouting.m", 658, 0, 0, SharedQueue, &__block_literal_global_32, 0, a1, 0);
  return FigSimpleMutexUnlock();
}

uint64_t FigPredictedRouting_StopTimer()
{
  v3 = *MEMORY[0x1E69E9840];
  if (predictedRouting_initialize_onceToken != -1)
  {
    FigPredictedRouting_IsSupported_cold_1();
  }

  FigSimpleMutexLock();
  v0 = gPRS_2;
  if (gPRS_2)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v0 = gPRS_2;
    }

    dispatch_source_cancel(v0);
    if (gPRS_2)
    {
      dispatch_release(gPRS_2);
      gPRS_2 = 0;
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigPredictedRouting_IsPreemptivePortChangedTimerActive()
{
  v3 = *MEMORY[0x1E69E9840];
  if (!FigPredictedRouting_IsPreemptivePortLogicEnabled())
  {
    return 0;
  }

  FigSimpleMutexLock();
  if (gPRS_4)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v1 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

uint64_t FigPredictedRouting_StartPreemptivePortChangedTimer()
{
  v5 = *MEMORY[0x1E69E9840];
  result = FigPredictedRouting_IsPreemptivePortLogicEnabled();
  if (result)
  {
    v1 = FigSimpleMutexLock();
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v1 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = MXGetSerialQueue(v1, v2);
    gPRS_4 = MXDispatchUtilityCreateOneShotTimer("FigPredictedRouting_StartPreemptivePortChangedTimer", "FigPredictedRouting.m", 724, 0, 0, v4, &__block_literal_global_3, 0, 4.0, 0);
    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigPredictedRouting_MuteSessionIfPreemptivePortChanged(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = FigPredictedRouting_IsPreemptivePortLogicEnabled();
  if (result)
  {
    result = FigPredictedRouting_IsPreemptivePortChanged();
    if (result)
    {
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
      v4 = +[MXSessionManager sharedInstance];
      [(MXSessionManager *)v4 duckVolume:a1 duckerSession:0 duckingSource:gPRS_3];
      [+[MXSessionManager sharedInstance](MXSessionManager endAsyncDuckingOperation];
      result = FigPredictedRouting_IsPreemptivePortChangedTimerActive();
      if (!result)
      {
        return FigPredictedRouting_StartPreemptivePortChangedTimer();
      }
    }
  }

  return result;
}

MXDuckingSource *__predictedRouting_initialize_block_invoke()
{
  gPRS_0 = FigReentrantMutexCreate();
  v0 = [MXDuckingSource alloc];
  LODWORD(v1) = 1036831949;
  result = [(MXDuckingSource *)v0 initWithType:4 ID:0 duckVolume:0.0 duckFadeDuration:v1];
  gPRS_3 = result;
  return result;
}

uint64_t FigEndpointAuthRequestHandler_AddRequest(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  v2 = qword_1EB75CB38;
  FigSimpleMutexLock();
  v3 = malloc_type_malloc(0x38uLL, 0xE004067E18789uLL);
  v4 = *a1;
  if (*a1)
  {
    v4 = CFRetain(v4);
  }

  *(v3 + 1) = v4;
  v5 = *(a1 + 8);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(v3 + 2) = v5;
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *(v3 + 4) = v6;
  *(v3 + 40) = *(a1 + 32);
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = CFRetain(v7);
  }

  *(v3 + 3) = v7;
  *v3 = 0;
  v8 = &xmmword_1EB75CB40;
  if (!v2)
  {
    v8 = 16;
  }

  if (*v8)
  {
    v9 = &xmmword_1EB75CB40 + 8;
    if (!v2)
    {
      v9 = 24;
    }

    **v9 = v3;
  }

  else
  {
    *v8 = v3;
    v9 = &xmmword_1EB75CB40 + 8;
    if (!v2)
    {
      v9 = 24;
    }
  }

  *v9 = v3;
  result = FigSimpleMutexUnlock();
  if (dword_1EB75DE10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t FigEndpointAuthRequestHandler_HasEndpoint(uint64_t a1)
{
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  if (qword_1EB75CB38)
  {
    v2 = &xmmword_1EB75CB40;
  }

  else
  {
    v2 = 16;
  }

  FigSimpleMutexLock();
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (*(v2 + 32) == a1)
    {
      v3 = 1;
      goto LABEL_11;
    }
  }

  v3 = 0;
LABEL_11:
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigEndpointAuthRequestHandler_RemoveRequest()
{
  v11 = *MEMORY[0x1E69E9840];
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  v0 = qword_1EB75CB38;
  if (qword_1EB75CB38)
  {
    v1 = &xmmword_1EB75CB40;
  }

  else
  {
    v1 = 16;
  }

  FigSimpleMutexLock();
  v2 = *v1;
  if (*v1)
  {
    v3 = *v2;
    *v2 = 0;
    v4 = v2[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v2[3];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v2[1];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = v2[4];
    if (v7)
    {
      CFRelease(v7);
    }

    free(v2);
    if (v3)
    {
      *v1 = v3;
    }

    else
    {
      *v1 = 0;
      v8 = &xmmword_1EB75CB40 + 8;
      if (!v0)
      {
        v8 = 24;
      }

      *v8 = 0;
    }
  }

  result = FigSimpleMutexUnlock();
  if (dword_1EB75DE10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t FigEndpointAuthRequestHandler_ProcessRequest(__int128 *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  v2 = qword_1EB75CB38;
  FigSimpleMutexLock();
  v3 = FigEndpointAuthRequestHandler_GetAuthRequestList_authListObj;
  FigSimpleMutexUnlock();
  if (*(a1 + 3))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v27);
    }
  }

  v6 = &xmmword_1EB75CB40;
  if (!v2)
  {
    v6 = 16;
  }

  if (!*v6)
  {
    v7 = &xmmword_1EB75CB40 + 8;
    if (!v2)
    {
      v7 = 24;
    }

    if (!*v7)
    {
      if (!v3)
      {
        v13 = a1[1];
        v28 = *a1;
        v29 = v13;
        v30 = a1[2];
        FigEndpointAuthRequestHandler_AddRequest(&v28);
        if (dword_1EB75DE10)
        {
          LODWORD(cf) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v24 = a1[1];
        v28 = *a1;
        v29 = v24;
        v30 = a1[2];
        goto LABEL_36;
      }

LABEL_32:
      v22 = 0;
      goto LABEL_37;
    }
  }

  FigEndpointAuthRequestHandler_GetCurrentAuthToProcess();
  if (!FigCFEqual())
  {
    if (!v3)
    {
      v11 = a1[1];
      v28 = *a1;
      v29 = v11;
      v30 = a1[2];
      FigEndpointAuthRequestHandler_AddRequest(&v28);
    }

    goto LABEL_32;
  }

  if (v3)
  {
    FigEndpointAuthRequestHandler_RemoveRequest();
    CurrentAuthToProcess = FigEndpointAuthRequestHandler_GetCurrentAuthToProcess();
    if (CurrentAuthToProcess)
    {
      v9 = CurrentAuthToProcess;
      if (dword_1EB75DE10)
      {
        LODWORD(cf) = 0;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v16 = *v9;
      v17 = v9[2];
      v29 = v9[1];
      v30 = v17;
      v28 = v16;
LABEL_36:
      v22 = FigEndpointUIAgentHelper_DisplayAuthPrompt(&v28, FigEndpointAuthRequestHandler_CallbackFromUIAgent);
      goto LABEL_37;
    }

    if (dword_1EB75DE10)
    {
      LODWORD(cf) = 0;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_32;
  }

  if (dword_1EB75DE10)
  {
    LODWORD(cf) = 0;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v18 = a1[1];
  v28 = *a1;
  v29 = v18;
  v30 = a1[2];
  FigEndpointAuthRequestHandler_ReplaceRequest(&v28);
  FigEndpointAuthRequestHandler_GetCurrentAuthToProcess();
  if (!FigCFEqual())
  {
    goto LABEL_32;
  }

  cf = 0;
  v19 = FigEndpointGetCMBaseObject();
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v20(v19, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
  }

  if (dword_1EB75DE10)
  {
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v23 = a1[1];
  v28 = *a1;
  v29 = v23;
  v30 = a1[2];
  v22 = FigEndpointUIAgentHelper_DisplayAuthPrompt(&v28, FigEndpointAuthRequestHandler_CallbackFromUIAgent);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_37:
  if (v27)
  {
    CFRelease(v27);
  }

  return v22;
}

void FigEndpointAuthRequestHandler_CallbackFromUIAgent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    a1 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!FigEndpointAuthRequestHandler_IsAuthListEmpty(a1, a2))
  {
    if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce == -1)
    {
      if (!a4)
      {
        return;
      }
    }

    else
    {
      FigEndpointAuthRequestHandler_CallbackFromUIAgent_cold_1();
      if (!a4)
      {
        return;
      }
    }

    v10 = &xmmword_1EB75CB40;
    if (!qword_1EB75CB38)
    {
      v10 = 16;
    }

    if (v7)
    {
      v11 = 4294950568;
    }

    else
    {
      v11 = 0;
    }

    a4(*(*v10 + 32), v8, v11, a5);
  }
}

uint64_t FigEndpointAuthRequestHandler_GetCurrentAuthToProcess()
{
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  if (qword_1EB75CB38)
  {
    v0 = &xmmword_1EB75CB40;
  }

  else
  {
    v0 = 16;
  }

  FigSimpleMutexLock();
  v1 = *v0;
  FigSimpleMutexUnlock();
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

void FigEndpointAuthRequestHandler_ReplaceRequest(uint64_t result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  v2 = &xmmword_1EB75CB40;
  if (!qword_1EB75CB38)
  {
    v2 = 16;
  }

  v3 = *v2;
  if (*v2)
  {
    while (!FigCFEqual())
    {
      if (dword_1EB75DE10)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v3 = *v3;
      if (!v3)
      {
        return;
      }
    }

    FigSimpleMutexLock();
    v5 = v3[1];
    v6 = *result;
    v3[1] = *result;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v7 = v3[2];
    v8 = *(result + 8);
    v3[2] = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    *(v3 + 5) = *(result + 32);
    v9 = v3[3];
    v10 = *(result + 16);
    *(v3 + 3) = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    FigSimpleMutexUnlock();
  }
}

BOOL FigEndpointAuthRequestHandler_IsAuthListEmpty(uint64_t a1, uint64_t a2)
{
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  return !qword_1EB75CB38 || xmmword_1EB75CB40 == 0;
}

uint64_t FigEndpointAuthRequestHandler_SetProcessNextRequest(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (FigEndpointAuthRequestHandler_GetAuthRequestList_sFigEndpointUIAgentAuthSerializerSetupOnce != -1)
  {
    FigEndpointAuthRequestHandler_AddRequest_cold_1();
  }

  result = qword_1EB75CB38;
  if (qword_1EB75CB38)
  {
    FigSimpleMutexLock();
    FigEndpointAuthRequestHandler_GetAuthRequestList_authListObj = v2;

    return FigSimpleMutexUnlock();
  }

  return result;
}

void remoteXPCRouteDiscovererClient_DeadConnectionCallback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 1;

  remoteXPCRouteDiscoverer_DisposeCaches(DerivedStorage);
}

uint64_t remoteXPCRouteDiscoverer_CopyAvailableEndpoints(uint64_t a1, void *a2)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = FigEndpointXPCRemotePing();
  *(v25 + 6) = v4;
  if (!v4)
  {
    ObjectID = remoteXPCRouteDiscoverer_GetObjectID(a1, &v23);
    *(v25 + 6) = ObjectID;
    if (!ObjectID)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = FigXPCCreateBasicMessage();
      *(v25 + 6) = v7;
      if (!v7)
      {
        v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        *(v25 + 6) = v8;
        if (!v8)
        {
          value = xpc_dictionary_get_value(v21, kFigRouteDiscovererXPCMsgParam_AddedRoutes);
          v10 = xpc_dictionary_get_value(v21, kFigRouteDiscovererXPCMsgParam_SubtractedRoutes);
          v11 = *(DerivedStorage + 16);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __remoteXPCRouteDiscoverer_CopyAvailableEndpoints_block_invoke;
          v16[3] = &unk_1E7AEB450;
          v16[4] = value;
          v16[5] = v10;
          v16[6] = &v24;
          v16[7] = &v17;
          v16[8] = DerivedStorage;
          MXDispatchSync("remoteXPCRouteDiscoverer_CopyAvailableEndpoints", "FigRouteDiscovererRemoteXPC.m", 161, 0, 0, v11, v16);
          v12 = v18;
          *a2 = v18[3];
          v12[3] = 0;
        }
      }
    }
  }

  v13 = v18[3];
  if (v13)
  {
    CFRelease(v13);
  }

  FigXPCRelease();
  FigXPCRelease();
  v14 = *(v25 + 6);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v24, 8);
  return v14;
}

void sub_1B18CF1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t figRouteDiscovererRemoteXPCCopyEndpointForRouteDescriptor(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  result = 4294949956;
  if (!theDict || !a3)
  {
    return result;
  }

  Value = CFDictionaryGetValue(theDict, @"RouteUID");
  if (!Value)
  {
    return 4294949956;
  }

  v8 = Value;
  CFDictionaryGetValue(theDict, @"AudioRouteName");
  v9 = FigCFEqual();
  theArray = 0;
  remoteXPCRouteDiscoverer_CopyAvailableEndpoints(a1, &theArray);
  v10 = theArray;
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_30;
  }

  v12 = Count;
  v13 = 0;
  v24 = *MEMORY[0x1E69622F8];
  v14 = *MEMORY[0x1E695E480];
  v23 = *MEMORY[0x1E69620F8];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(CMBaseObject, v24, v14, &cf);
    }

    if (v9 && !FigCFEqual())
    {
      v21 = cf;
      if (!cf)
      {
        goto LABEL_20;
      }

LABEL_19:
      CFRelease(v21);
      goto LABEL_20;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    stringToFind = 0;
    v18 = FigEndpointGetCMBaseObject();
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(v18, v23, v14, &stringToFind);
    }

    if (!stringToFind)
    {
      goto LABEL_20;
    }

    v20 = CFStringFind(v8, stringToFind, 1uLL);
    if (v20.length >= 1 && !v20.location)
    {
      break;
    }

    v21 = stringToFind;
    if (stringToFind)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (v12 == ++v13)
    {
      goto LABEL_30;
    }
  }

  if (ValueAtIndex)
  {
    v22 = CFRetain(ValueAtIndex);
  }

  else
  {
    v22 = 0;
  }

  *a3 = v22;
  if (stringToFind)
  {
    CFRelease(stringToFind);
  }

LABEL_30:
  CFRelease(v10);
  return 0;
}

__CFString *singletonVolumeController_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigVolumeController Singleton %p, remoteVolumeController: %@>", a1, *(DerivedStorage + 16));
  return Mutable;
}

uint64_t volumeControllerRemote_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

double singletonVolumeController_handleRemoteVolumeControllerNotifications(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  CMNotificationCenterPostNotification();
  return result;
}

uint64_t volumeControllerRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;
  FigXPCRemoteClientDisassociateObject();
  if (v2)
  {
    v3 = *(DerivedStorage + 8) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendSyncMessage();
  }

  return FigXPCRelease();
}

uint64_t FigSystemControllerStartServer()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = FigXPCServerStart();
  if (dword_1EB75DEE0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v0;
}

uint64_t routingSession_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v6 = 8;
  }

  else if (FigCFEqual())
  {
    v6 = 9;
  }

  else
  {
    if (!FigCFEqual())
    {
      return 4294954512;
    }

    v6 = 10;
  }

  if (*(DerivedStorage + v6))
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = CFRetain(*v7);
  result = 0;
  *a4 = v8;
  return result;
}

MXSessionSidekick *__MXSessionCreate_block_invoke(uint64_t a1)
{
  result = [[MXSessionSidekick alloc] initWithSession:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t _MXSessionCreate(void *a1, MXSession **a2)
{
  if (!a1)
  {
    _MXSessionCreate_cold_2(&v10);
    return v10;
  }

  if (!a2)
  {
    _MXSessionCreate_cold_1(&v10);
    return v10;
  }

  v4 = objc_autoreleasePoolPush();
  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__6;
    v14 = __Block_byref_object_dispose__6;
    v15 = 0;
    v5 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___MXSessionCreate_block_invoke;
    v9[3] = &unk_1E7AE7168;
    v9[4] = &v10;
    v9[5] = a1;
    MXDispatchAsyncAndWait("_MXSessionCreate", "MXSession_CInterfaceCommon.m", 104, 0, 0, v5, v9);
    *a2 = v11[5];
    _Block_object_dispose(&v10, 8);
    v6 = *a2;
  }

  else
  {
    v6 = [[MXSession alloc] initWithSession:a1];
    *a2 = v6;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4294951616;
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_1B18D06E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MXSessionCreateWithOptions(void *a1, MXSessionSecure **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    MXSessionCreateWithOptions_cold_2(v13);
    return v13[0];
  }

  if (!a1)
  {
    MXSessionCreateWithOptions_cold_1(v13);
    return v13[0];
  }

  v4 = [objc_msgSend(a1 objectForKey:{@"SessionType", "unsignedCharValue"}];
  if (v4 == 1)
  {
    v9 = [[MXSessionSecure alloc] initWithOptions:a1];
    if (v9)
    {
      result = 0;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = 4294951609;
    }

    *a2 = v9;
  }

  else if (v4 == 2)
  {
    if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(v4, v5) && (v6 = [[MXSessionIndependentInputAudioResource alloc] initWithOptions:a1]) != 0)
    {
      v7 = v6;
      result = 0;
    }

    else
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v7 = 0;
      result = 4294951609;
    }

    *a2 = v7;
  }

  else
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *a2 = 0;
    return 4294954315;
  }

  return result;
}

void *__MXSessionCopyProperty_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copyPropertyForKey:*(a1 + 48) valueOut:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t MXSessionCopyProperties(void *a1, void *a2, CFTypeRef *a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = objc_autoreleasePoolPush();
  if ([a1 isMemberOfClass:objc_opt_class()])
  {
    v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __MXSessionCopyProperties_block_invoke;
    v12[3] = &unk_1E7AE7A48;
    v12[4] = &v13;
    v12[5] = a1;
    v12[6] = a2;
    v12[7] = a3;
    MXDispatchAsyncAndWait("MXSessionCopyProperties", "MXSession_CInterfaceCommon.m", 342, 0, 0, v7, v12);
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v9 = [a1 copyProperties:a2 outPropertyErrors:a3];
    v14[3] = v9;
    if (a3 && *a3)
    {
      CFRetain(*a3);
    }

    -[MXAudioStatistics sendSinglePerformanceMessageForRoutine:operationTime:details:](+[MXAudioStatistics sharedInstance](MXAudioStatistics, "sharedInstance"), "sendSinglePerformanceMessageForRoutine:operationTime:details:", "MXSessionCopyProperties", FigGetUpTimeNanoseconds() - UpTimeNanoseconds, [a2 description]);
  }

  objc_autoreleasePoolPop(v6);
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1B18D0CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef __MXSessionCopyProperties_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copyProperties:*(a1 + 48) outPropertyErrors:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  v3 = *(a1 + 56);
  if (v3)
  {
    result = *v3;
    if (*v3)
    {

      return CFRetain(result);
    }
  }

  return result;
}

void *__MXSessionSetProperty_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) setPropertyForKey:*(a1 + 48) value:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t MXSessionSetProperties(void *a1, void *a2, uint64_t a3, CFTypeRef *a4)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (a1)
  {
    v8 = objc_autoreleasePoolPush();
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v9 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __MXSessionSetProperties_block_invoke;
      v20 = &unk_1E7AEB480;
      v21 = &v26;
      v22 = a1;
      v25 = a3;
      v23 = a2;
      v24 = a4;
      MXDispatchAsyncAndWait("MXSessionSetProperties", "MXSession_CInterfaceCommon.m", 487, 0, 0, v9, &v17);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v11 = [a1 isMemberOfClass:objc_opt_class()];
      if (!v11 || MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(v11, v12))
      {
        v13 = [a1 setProperties:a2 usingErrorHandlingStrategy:a3 outPropertiesErrors:a4];
        *(v27 + 6) = v13;
      }

      if (a4 && *a4)
      {
        CFRetain(*a4);
      }

      -[MXAudioStatistics sendSinglePerformanceMessageForRoutine:operationTime:details:](+[MXAudioStatistics sharedInstance](MXAudioStatistics, "sharedInstance"), "sendSinglePerformanceMessageForRoutine:operationTime:details:", "MXSessionSetProperties", FigGetUpTimeNanoseconds() - UpTimeNanoseconds, [objc_msgSend(a2 "allKeys")]);
    }

    objc_autoreleasePoolPop(v8);
    v14 = *(v27 + 6);
  }

  else
  {
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
    *(v27 + 6) = v14;
  }

  _Block_object_dispose(&v26, 8);
  return v14;
}

void sub_1B18D0FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef __MXSessionSetProperties_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) setProperties:*(a1 + 48) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  v3 = *(a1 + 56);
  if (v3)
  {
    result = *v3;
    if (*v3)
    {

      return CFRetain(result);
    }
  }

  return result;
}

uint64_t MXSessionSetOrderedProperties(void *a1, void *a2, uint64_t a3, CFTypeRef *a4)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (a1)
  {
    v8 = objc_autoreleasePoolPush();
    if ([a1 isMemberOfClass:objc_opt_class()])
    {
      v9 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __MXSessionSetOrderedProperties_block_invoke;
      v20 = &unk_1E7AEB480;
      v21 = &v26;
      v22 = a1;
      v25 = a3;
      v23 = a2;
      v24 = a4;
      MXDispatchAsyncAndWait("MXSessionSetOrderedProperties", "MXSession_CInterfaceCommon.m", 541, 0, 0, v9, &v17);
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v11 = [a1 isMemberOfClass:objc_opt_class()];
      if (!v11 || MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(v11, v12))
      {
        v13 = [a1 setOrderedProperties:a2 usingErrorHandlingStrategy:a3 outPropertiesErrors:a4];
        *(v27 + 6) = v13;
      }

      if (a4 && *a4)
      {
        CFRetain(*a4);
      }

      -[MXAudioStatistics sendSinglePerformanceMessageForRoutine:operationTime:details:](+[MXAudioStatistics sharedInstance](MXAudioStatistics, "sharedInstance"), "sendSinglePerformanceMessageForRoutine:operationTime:details:", "MXSessionSetOrderedProperties", FigGetUpTimeNanoseconds() - UpTimeNanoseconds, [a2 description]);
    }

    objc_autoreleasePoolPop(v8);
    v14 = *(v27 + 6);
  }

  else
  {
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
    *(v27 + 6) = v14;
  }

  _Block_object_dispose(&v26, 8);
  return v14;
}

void sub_1B18D1278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef __MXSessionSetOrderedProperties_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) setOrderedProperties:*(a1 + 48) usingErrorHandlingStrategy:*(a1 + 64) outPropertiesErrors:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  v3 = *(a1 + 56);
  if (v3)
  {
    result = *v3;
    if (*v3)
    {

      return CFRetain(result);
    }
  }

  return result;
}

uint64_t MXSessionBeginInterruption(void *a1)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__6;
  v33 = __Block_byref_object_dispose__6;
  v34 = a1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (!a1)
  {
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
    *(v36 + 6) = v11;
    goto LABEL_12;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = isSessionSidekick(a1);
  if (v3)
  {
    v5 = [a1 activate];
  }

  else
  {
    if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v3, v4))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v30[5] setInterruptionCalledOffAudioControlQueue:1];
      }
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v8 = MXGetSerialQueue(UpTimeNanoseconds, v7);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __MXSessionBeginInterruption_block_invoke;
    v16 = &unk_1E7AEB4A8;
    v17 = &v35;
    v18 = &v29;
    v19 = &v21;
    v20 = &v25;
    MXDispatchAsyncAndWait("MXSessionBeginInterruption", "MXSession_CInterfaceCommon.m", 637, 0, 0, v8, &v13);
    v9 = [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionBeginInterruption" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    if (!MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v9, v10))
    {
      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    [v30[5] setInterruptionCalledOffAudioControlQueue:0];
    if (*(v36 + 6))
    {
      goto LABEL_11;
    }

    v5 = mxsession_handleAsyncDuckingSleep(v30[5], *(v22 + 24), v26[6]);
  }

  *(v36 + 6) = v5;
LABEL_11:
  objc_autoreleasePoolPop(v2);
  v11 = *(v36 + 6);
LABEL_12:
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  return v11;
}

void sub_1B18D15C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va2, a16);
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  v27 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __MXSessionBeginInterruption_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = [*(*(a1[5] + 8) + 40) _beginInterruptionWithSecTask:0 andFlags:0];
  v2 = +[MXSessionManager sharedInstance];
  v3 = *(a1[6] + 8) + 24;
  v4 = *(a1[7] + 8) + 24;

  return [(MXSessionManager *)v2 getAndResetAsyncDuckingParameters:v3 mostRecentDuckFadeDuration:v4];
}

unint64_t _MXSessionBeginInterruption_WithFlags(void *a1, uint64_t a2)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (isSessionSidekick(a1))
    {
      v5 = [a1 activate];
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v5 = [a1 _beginInterruptionWithSecTask:0 andFlags:a2];
      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionBeginInterruption_WithFlags" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    _MXSessionBeginInterruption_WithFlags_cold_1(&v8);
    return v8;
  }

  return v5;
}

uint64_t MXSessionBeginInterruption_WithFlags(void *a1, uint64_t a2)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = __Block_byref_object_copy__6;
  v37 = __Block_byref_object_dispose__6;
  v38 = a1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (!a1)
  {
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
    *(v40 + 6) = v13;
    goto LABEL_12;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = isSessionSidekick(a1);
  if (v5)
  {
    v7 = [a1 activate];
  }

  else
  {
    if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v5, v6))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v34[5] setInterruptionCalledOffAudioControlQueue:1];
      }
    }

    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v10 = MXGetSerialQueue(UpTimeNanoseconds, v9);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __MXSessionBeginInterruption_WithFlags_block_invoke;
    v19 = &unk_1E7AEB4D0;
    v20 = &v39;
    v21 = &v33;
    v22 = &v25;
    v23 = &v29;
    v24 = a2;
    MXDispatchAsyncAndWait("MXSessionBeginInterruption_WithFlags", "MXSession_CInterfaceCommon.m", 733, 0, 0, v10, &v16);
    v11 = [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionBeginInterruption_WithFlags" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    if (!MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v11, v12))
    {
      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    [v34[5] setInterruptionCalledOffAudioControlQueue:0];
    if (*(v40 + 6))
    {
      goto LABEL_11;
    }

    v7 = mxsession_handleAsyncDuckingSleep(v34[5], *(v26 + 24), v30[6]);
  }

  *(v40 + 6) = v7;
LABEL_11:
  objc_autoreleasePoolPop(v4);
  v13 = *(v40 + 6);
LABEL_12:
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
  return v13;
}

void sub_1B18D1A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

unint64_t _MXSessionBeginInterruption_WithSecTaskAndFlags(void *a1, uint64_t a2, uint64_t a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (isSessionSidekick(a1))
    {
      v7 = [a1 activate];
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v7 = [a1 _beginInterruptionWithSecTask:a2 andFlags:a3];
      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionBeginInterruption_WithSecTaskAndFlags" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    _MXSessionBeginInterruption_WithSecTaskAndFlags_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t MXSessionEndInterruption(void *a1, const __CFString *a2)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3052000000;
  v39 = __Block_byref_object_copy__6;
  v40 = __Block_byref_object_dispose__6;
  v41 = a1;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = isSessionSidekick(a1);
    if (v5)
    {
      if (a2)
      {
        v7 = CFStringHasPrefix(a2, @"resumable") != 0;
      }

      else
      {
        v7 = 0;
      }

      v15 = [a1 deactivate:v7 postInterruptionNotification:0];
      *(v43 + 6) = v15;
    }

    else
    {
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v5, v6))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v37[5] setInterruptionCalledOffAudioControlQueue:1];
        }
      }

      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v10 = MXGetSerialQueue(UpTimeNanoseconds, v9);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __MXSessionEndInterruption_block_invoke;
      v22 = &unk_1E7AEB4D0;
      v23 = &v42;
      v24 = &v36;
      v25 = &v28;
      v26 = &v32;
      v27 = a2;
      MXDispatchAsyncAndWait("MXSessionEndInterruption", "MXSession_CInterfaceCommon.m", 880, 0, 0, v10, &v19);
      v11 = [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionEndInterruption" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v11, v12))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v37[5] setInterruptionCalledOffAudioControlQueue:0];
          v13 = +[MXSessionManager sharedInstance];
          LODWORD(v14) = *(v33 + 6);
          [(MXSessionManager *)v13 sleepForAsyncDucking:*(v29 + 24) duration:v14];
        }
      }
    }

    objc_autoreleasePoolPop(v4);
    v16 = *(v43 + 6);
  }

  else
  {
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
    *(v43 + 6) = v16;
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
  return v16;
}

void sub_1B18D1E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __MXSessionEndInterruption_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = [*(*(a1[5] + 8) + 40) _endInterruptionWithSecTask:0 andStatus:a1[8]];
  v2 = +[MXSessionManager sharedInstance];
  v3 = *(a1[6] + 8) + 24;
  v4 = *(a1[7] + 8) + 24;

  return [(MXSessionManager *)v2 getAndResetAsyncDuckingParameters:v3 mostRecentDuckFadeDuration:v4];
}

uint64_t MXSessionEndInterruption_WithInterruptionNotification(void *a1, const __CFString *a2, int a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__6;
  v42 = __Block_byref_object_dispose__6;
  v43 = a1;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = isSessionSidekick(a1);
    if (v7)
    {
      if (a2)
      {
        v9 = CFStringHasPrefix(a2, @"resumable") != 0;
      }

      else
      {
        v9 = 0;
      }

      v17 = [a1 deactivate:v9 postInterruptionNotification:a3 != 0];
      *(v45 + 6) = v17;
    }

    else
    {
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v7, v8))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v39[5] setInterruptionCalledOffAudioControlQueue:1];
        }
      }

      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v12 = MXGetSerialQueue(UpTimeNanoseconds, v11);
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __MXSessionEndInterruption_WithInterruptionNotification_block_invoke;
      v24 = &unk_1E7AEB4D0;
      v25 = &v44;
      v26 = &v38;
      v27 = &v30;
      v28 = &v34;
      v29 = a2;
      MXDispatchAsyncAndWait("MXSessionEndInterruption_WithInterruptionNotification", "MXSession_CInterfaceCommon.m", 945, 0, 0, v12, &v21);
      v13 = [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionEndInterruption_WithInterruptionNotification" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v13, v14))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v39[5] setInterruptionCalledOffAudioControlQueue:0];
          v15 = +[MXSessionManager sharedInstance];
          LODWORD(v16) = *(v35 + 6);
          [(MXSessionManager *)v15 sleepForAsyncDucking:*(v31 + 24) duration:v16];
        }
      }
    }

    objc_autoreleasePoolPop(v6);
    v18 = *(v45 + 6);
  }

  else
  {
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    *(v45 + 6) = v18;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
  return v18;
}

void sub_1B18D2228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

unint64_t _MXSessionEndInterruption(void *a1, const __CFString *a2)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (isSessionSidekick(a1))
    {
      if (a2)
      {
        v5 = CFStringHasPrefix(a2, @"resumable") != 0;
      }

      else
      {
        v5 = 0;
      }

      v7 = [a1 deactivate:v5 postInterruptionNotification:0];
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v7 = [a1 _endInterruptionWithSecTask:0 andStatus:a2];
      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionEndInterruption" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    _MXSessionEndInterruption_cold_1(&v9);
    return v9;
  }

  return v7;
}

uint64_t MXSessionEndInterruption_WithSecTaskAndStatus(void *a1, uint64_t a2, const __CFString *a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__6;
  v42 = __Block_byref_object_dispose__6;
  v43 = a1;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = isSessionSidekick(a1);
    if (v7)
    {
      if (a3)
      {
        v9 = CFStringHasPrefix(a3, @"resumable") != 0;
      }

      else
      {
        v9 = 0;
      }

      v17 = [a1 deactivate:v9 postInterruptionNotification:0];
      *(v45 + 6) = v17;
    }

    else
    {
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v7, v8))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v39[5] setInterruptionCalledOffAudioControlQueue:1];
        }
      }

      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v12 = MXGetSerialQueue(UpTimeNanoseconds, v11);
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __MXSessionEndInterruption_WithSecTaskAndStatus_block_invoke;
      v23 = &unk_1E7AE7B80;
      v24 = &v44;
      v25 = &v38;
      v28 = a2;
      v29 = a3;
      v26 = &v30;
      v27 = &v34;
      MXDispatchAsyncAndWait("MXSessionEndInterruption_WithSecTaskAndStatus", "MXSession_CInterfaceCommon.m", 1025, 0, 0, v12, &v20);
      v13 = [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"MXSessionEndInterruption_WithSecTaskAndStatus" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
      if (MX_FeatureFlags_IsOffloadActivationOffACQEnabled(v13, v14))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v39[5] setInterruptionCalledOffAudioControlQueue:0];
          v15 = +[MXSessionManager sharedInstance];
          LODWORD(v16) = *(v35 + 6);
          [(MXSessionManager *)v15 sleepForAsyncDucking:*(v31 + 24) duration:v16];
        }
      }
    }

    objc_autoreleasePoolPop(v6);
    v18 = *(v45 + 6);
  }

  else
  {
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    *(v45 + 6) = v18;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
  return v18;
}

void sub_1B18D26C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

unint64_t _MXSessionEndInterruption_WithSecTaskAndStatus(void *a1, uint64_t a2, const __CFString *a3)
{
  +[MXInitialization waitUntilMXIsFullyInitialized];
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (isSessionSidekick(a1))
    {
      if (a3)
      {
        v7 = CFStringHasPrefix(a3, @"resumable") != 0;
      }

      else
      {
        v7 = 0;
      }

      v9 = [a1 deactivate:v7 postInterruptionNotification:0];
    }

    else
    {
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v9 = [a1 _endInterruptionWithSecTask:a2 andStatus:a3];
      [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSinglePerformanceMessageForRoutine:"sendSinglePerformanceMessageForRoutine:operationTime:details:" operationTime:"_MXSessionEndInterruption_WithSecTaskAndStatus" details:FigGetUpTimeNanoseconds() - UpTimeNanoseconds, 0];
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    _MXSessionEndInterruption_WithSecTaskAndStatus_cold_1(&v11);
    return v11;
  }

  return v9;
}

unint64_t MXIsTypeOfSession(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    return v2 == CMSessionGetTypeID() || isCoreSessionSidekick(v1) != 0;
  }

  return result;
}

uint64_t MXIsTypeOfMXSession(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result isMemberOfClass:objc_opt_class()])
    {
      return 1;
    }

    else
    {
      return [v1 isMemberOfClass:objc_opt_class()];
    }
  }

  return result;
}

uint64_t MXSessionAddResource(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MX_FeatureFlags_IsBypassCodecArbitrationEnabled())
  {
    return 0;
  }

  +[MXInitialization waitUntilMXIsFullyInitialized];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3052000000;
  v25[3] = __Block_byref_object_copy__6;
  v25[4] = __Block_byref_object_dispose__6;
  v25[5] = a1;
  if (a1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = isSessionSidekick(a1);
    v12 = v10;
    if ((v10 & 1) == 0)
    {
      v13 = MXGetSerialQueue(v10, v11);
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __MXSessionAddResource_block_invoke;
      v19 = &unk_1E7AE79F8;
      v20 = &v26;
      v21 = v25;
      v22 = a2;
      v23 = a3;
      v24 = a4;
      MXDispatchAsyncAndWait("MXSessionAddResource", "MXSession_CInterfaceCommon.m", 1150, 0, 0, v13, &v16);
    }

    objc_autoreleasePoolPop(v9);
    if (v12)
    {
      v8 = 4294954309;
    }

    else
    {
      v8 = *(v27 + 6);
    }
  }

  else
  {
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
    *(v27 + 6) = v8;
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v26, 8);
  return v8;
}

void sub_1B18D2AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void *__MXSessionAddResource_block_invoke(void *a1)
{
  result = [*(*(a1[5] + 8) + 40) _addResource:a1[6] resourceInfo:a1[7] token:a1[8]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t MXSessionRemoveResource(void *a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsBypassCodecArbitrationEnabled())
  {
    return 0;
  }

  +[MXInitialization waitUntilMXIsFullyInitialized];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = __Block_byref_object_copy__6;
  v19[4] = __Block_byref_object_dispose__6;
  v19[5] = a1;
  if (a1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = isSessionSidekick(a1);
    v8 = v6;
    if ((v6 & 1) == 0)
    {
      v9 = MXGetSerialQueue(v6, v7);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __MXSessionRemoveResource_block_invoke;
      v15 = &unk_1E7AEB4F8;
      v16 = &v20;
      v17 = v19;
      v18 = a2;
      MXDispatchAsyncAndWait("MXSessionRemoveResource", "MXSession_CInterfaceCommon.m", 1180, 0, 0, v9, &v12);
    }

    objc_autoreleasePoolPop(v5);
    if (v8)
    {
      v4 = 4294954309;
    }

    else
    {
      v4 = *(v21 + 6);
    }
  }

  else
  {
    v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    *(v21 + 6) = v4;
  }

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v20, 8);
  return v4;
}

void sub_1B18D2D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void *__MXSessionRemoveResource_block_invoke(void *a1)
{
  result = [*(*(a1[5] + 8) + 40) _removeResourceWithToken:a1[6]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void fsm_setupStarkModeActionMap(uint64_t a1, uint64_t a2)
{
  CelestialGetModelSpecificName();
  v3 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v4) || (v6 = *MEMORY[0x1E695E480], (v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Version%u", a1)) == 0))
  {
    v10 = v4;
LABEL_7:

    CFRelease(v10);
    return;
  }

  v8 = v7;
  Value = CFDictionaryGetValue(v4, v7);
  if (Value)
  {
    v10 = CFRetain(Value);
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v8);
  CFRelease(v4);
  if (v10)
  {
    Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
    ActionMapFromDict = fsm_createActionMapFromDict(v10, @"MainAudioRequest");
    if (ActionMapFromDict)
    {
      v13 = ActionMapFromDict;
      v25.length = CFArrayGetCount(ActionMapFromDict);
      v25.location = 0;
      CFArrayAppendArray(Mutable, v13, v25);
      CFRelease(v13);
    }

    v14 = fsm_createActionMapFromDict(v10, @"SpeechRequest");
    if (v14)
    {
      v15 = v14;
      v26.length = CFArrayGetCount(v14);
      v26.location = 0;
      CFArrayAppendArray(Mutable, v15, v26);
      CFRelease(v15);
    }

    v16 = fsm_createActionMapFromDict(v10, @"PhoneCallRequest");
    if (v16)
    {
      v17 = v16;
      v27.length = CFArrayGetCount(v16);
      v27.location = 0;
      CFArrayAppendArray(Mutable, v17, v27);
      CFRelease(v17);
    }

    v18 = fsm_createActionMapFromDict(v10, @"ScreenRequest");
    if (v18)
    {
      v19 = v18;
      v28.length = CFArrayGetCount(v18);
      v28.location = 0;
      CFArrayAppendArray(Mutable, v19, v28);
      CFRelease(v19);
    }

    v20 = fsm_createActionMapFromDict(v10, @"TurnByTurnRequest");
    if (v20)
    {
      v21 = v20;
      v29.length = CFArrayGetCount(v20);
      v29.location = 0;
      CFArrayAppendArray(Mutable, v21, v29);
      CFRelease(v21);
    }

    Copy = CFArrayCreateCopy(v6, Mutable);
    v23 = &sFigStarkModeActionMap_V2;
    if (a1 == 1)
    {
      v23 = &sFigStarkModeActionMap_V1;
    }

    *v23 = Copy;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    goto LABEL_7;
  }
}

__CFArray *fsm_createActionMapFromDict(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (FigCFEqual())
  {
    if (!Value)
    {
      return 0;
    }
  }

  else if (FigCFEqual())
  {
    if (!Value)
    {
      return 0;
    }
  }

  else if (FigCFEqual())
  {
    if (!Value)
    {
      return 0;
    }
  }

  else if (FigCFEqual())
  {
    if (!Value)
    {
      return 0;
    }
  }

  else
  {
    FigCFEqual();
    if (!Value)
    {
      return 0;
    }
  }

  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = 0;
  v43 = Value;
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v45 = v3;
  do
  {
    Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v4);
    v7 = CFDictionaryGetValue(ValueAtIndex, @"PreviousMode");
    fsm_translatePreviousOrCurrentModeDict(v7);
    UInt32 = FigCFNumberCreateUInt32();
    CFDictionarySetValue(Mutable, @"PreviousModeEncoding", UInt32);
    if (UInt32)
    {
      CFRelease(UInt32);
    }

    v9 = CFDictionaryGetValue(ValueAtIndex, @"CurrentMode");
    fsm_translatePreviousOrCurrentModeDict(v9);
    v10 = FigCFNumberCreateUInt32();
    CFDictionarySetValue(Mutable, @"CurrentModeEncoding", v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = CFDictionaryGetValue(ValueAtIndex, @"ModeChangeRequest");
    if (v11)
    {
      v12 = v11;
      v13 = CFDictionaryGetValue(v11, @"Requestor");
      fsm_getFigStarkModeEntityEncodingFromCFString(v13);
      if (FigCFEqual())
      {
        v14 = CFDictionaryGetValue(v12, @"TransferType");
        fsm_getFigStarkModeTransferTypeEncodingFromCFString(v14);
        v15 = CFDictionaryGetValue(v12, @"TransferPriority");
        fsm_getFigStarkModeTransferPriorityEncodingFromCFArray(v15);
        v16 = CFDictionaryGetValue(v12, @"TakeConstraint");
        fsm_getFigStarkModeConstraintEncodingFromCFArray(v16);
        v17 = CFDictionaryGetValue(v12, @"BorrowConstraint");
        fsm_getFigStarkModeConstraintEncodingFromCFArray(v17);
        v18 = CFDictionaryGetValue(v12, @"UnborrowConstraint");
        fsm_getFigStarkModeConstraintEncodingFromCFArray(v18);
        v3 = v45;
      }

      else
      {
        if (FigCFEqual())
        {
          v19 = CFDictionaryGetValue(v12, @"TransferType");
          fsm_getFigStarkModeTransferTypeEncodingFromCFString(v19);
          v20 = CFDictionaryGetValue(v12, @"TransferPriority");
          fsm_getFigStarkModeTransferPriorityEncodingFromCFArray(v20);
          v21 = CFDictionaryGetValue(v12, @"TakeConstraint");
          fsm_getFigStarkModeConstraintEncodingFromCFArray(v21);
          v22 = CFDictionaryGetValue(v12, @"BorrowConstraint");
          fsm_getFigStarkModeConstraintEncodingFromCFArray(v22);
          v23 = CFDictionaryGetValue(v12, @"UnborrowConstraint");
          fsm_getFigStarkModeConstraintEncodingFromCFArray(v23);
        }

        v24 = CFDictionaryGetValue(v12, @"SpeechState");
        if (v24)
        {
          v25 = v24;
          v26 = CFArrayGetCount(v24);
          if (v26 >= 1)
          {
            v27 = v26;
            v28 = 0;
            v29 = 0;
            do
            {
              CFArrayGetValueAtIndex(v25, v28);
              if (FigCFEqual())
              {
                v29 |= 1u;
              }

              else if (FigCFEqual())
              {
                v29 |= 2u;
              }

              else if (FigCFEqual())
              {
                v29 |= 4u;
              }

              else if (FigCFEqual())
              {
                v29 |= 8u;
              }

              ++v28;
            }

            while (v27 != v28);
          }
        }

        v30 = CFDictionaryGetValue(v12, @"PhoneCallState");
        v3 = v45;
        if (v30)
        {
          fsm_getFigStarkModeTriStateEncodingFromCFArray(v30);
        }

        v31 = CFDictionaryGetValue(v12, @"TurnByTurnState");
        if (v31)
        {
          fsm_getFigStarkModeTriStateEncodingFromCFArray(v31);
        }

        Value = v43;
      }
    }

    UInt64 = FigCFNumberCreateUInt64();
    CFDictionarySetValue(Mutable, @"ModeRequestEncoding", UInt64);
    if (UInt64)
    {
      CFRelease(UInt64);
    }

    v33 = CFDictionaryGetValue(ValueAtIndex, @"ModeChangeAction");
    if (v33)
    {
      v34 = v33;
      v35 = CFArrayGetCount(v33);
      if (v35 >= 1)
      {
        v36 = v35;
        v37 = 0;
        v38 = 0;
        do
        {
          CFArrayGetValueAtIndex(v34, v37);
          if (FigCFEqual())
          {
            v38 |= 1u;
          }

          else if (FigCFEqual())
          {
            v38 |= 0x20000u;
          }

          else if (FigCFEqual())
          {
            v38 |= 2u;
          }

          else if (FigCFEqual())
          {
            v38 |= 4u;
          }

          else if (FigCFEqual())
          {
            v38 |= 8u;
          }

          else if (FigCFEqual())
          {
            v38 |= 0x10u;
          }

          else if (FigCFEqual())
          {
            v38 |= 0x20u;
          }

          else if (FigCFEqual())
          {
            v38 |= 0x40u;
          }

          else if (FigCFEqual())
          {
            v38 |= 0x80u;
          }

          else if (FigCFEqual())
          {
            v38 |= 0x100u;
          }

          else if (FigCFEqual())
          {
            v38 |= 0x200u;
          }

          else if (FigCFEqual())
          {
            v38 |= 0x400u;
          }

          else if (FigCFEqual())
          {
            v38 |= 0x800u;
          }

          else if (FigCFEqual())
          {
            v38 |= 0x1000u;
          }

          else if (FigCFEqual())
          {
            v38 |= 0x2000u;
          }

          else
          {
            if (FigCFEqual())
            {
              v38 |= 0x4000u;
            }

            else if (FigCFEqual())
            {
              v38 |= 0x8000u;
            }

            else if (FigCFEqual())
            {
              v38 |= 0x10000u;
            }

            Value = v43;
          }

          ++v37;
        }

        while (v36 != v37);
        v3 = v45;
      }
    }

    v39 = FigCFNumberCreateUInt64();
    CFDictionarySetValue(Mutable, @"ModeChangeAction", v39);
    if (v39)
    {
      CFRelease(v39);
    }

    v40 = FigCFNumberCreateUInt32();
    CFDictionarySetValue(Mutable, @"RequestType", v40);
    if (v40)
    {
      CFRelease(v40);
    }

    v41 = theArray;
    CFArrayAppendValue(theArray, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    ++v4;
  }

  while (v4 != Count);
  return v41;
}

const __CFDictionary *fsm_translatePreviousOrCurrentModeDict(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    Value = CFDictionaryGetValue(result, @"ScreenEntity");
    FigStarkModeEntityEncodingFromCFString = fsm_getFigStarkModeEntityEncodingFromCFString(Value);
    v4 = CFDictionaryGetValue(v1, @"MainAudioEntity");
    v5 = FigStarkModeEntityEncodingFromCFString | (8 * fsm_getFigStarkModeEntityEncodingFromCFString(v4));
    v6 = CFDictionaryGetValue(v1, @"SpeechEntity");
    v7 = v5 | (fsm_getFigStarkModeEntityEncodingFromCFString(v6) << 6);
    v8 = CFDictionaryGetValue(v1, @"SpeechMode");
    if (v8 && (v9 = v8, Count = CFArrayGetCount(v8), Count >= 1))
    {
      v11 = Count;
      v12 = 0;
      v13 = 0;
      do
      {
        CFArrayGetValueAtIndex(v9, v12);
        if (FigCFEqual())
        {
          v13 |= 1u;
        }

        else if (FigCFEqual())
        {
          v13 |= 2u;
        }

        else if (FigCFEqual())
        {
          v13 |= 4u;
        }

        ++v12;
      }

      while (v11 != v12);
      v14 = v13 << 9;
    }

    else
    {
      v14 = 3584;
    }

    v15 = v14 | v7;
    v16 = CFDictionaryGetValue(v1, @"PhoneCallEntity");
    v17 = v15 + (fsm_getFigStarkModeEntityEncodingFromCFString(v16) << 12);
    v18 = CFDictionaryGetValue(v1, @"TurnByTurnEntity");
    return (v17 | (fsm_getFigStarkModeEntityEncodingFromCFString(v18) << 15));
  }

  return result;
}

uint64_t fsm_getFigStarkModeEntityEncodingFromCFString(uint64_t a1)
{
  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 2;
  }

  if (FigCFEqual())
  {
    return 4;
  }

  return 7;
}

uint64_t fsm_getFigStarkModeTransferTypeEncodingFromCFString(uint64_t result)
{
  if (result)
  {
    if (FigCFEqual())
    {
      return 1;
    }

    else if (FigCFEqual())
    {
      return 2;
    }

    else if (FigCFEqual())
    {
      return 4;
    }

    else if (FigCFEqual())
    {
      return 8;
    }

    else
    {
      return 16 * (FigCFEqual() != 0);
    }
  }

  return result;
}

uint64_t fsm_getFigStarkModeTransferPriorityEncodingFromCFArray(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 7;
  }

  v3 = Count;
  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    CFArrayGetValueAtIndex(a1, v4);
    if (FigCFEqual())
    {
      v5 = v5 | 1;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 2;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 4;
    }

    else
    {
      v5 = v5;
    }

    ++v4;
  }

  while (v3 != v4);
  return v5;
}

uint64_t fsm_getFigStarkModeConstraintEncodingFromCFArray(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 15;
  }

  v3 = Count;
  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    CFArrayGetValueAtIndex(a1, v4);
    if (FigCFEqual())
    {
      v5 = v5 | 1;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 2;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 4;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 8;
    }

    else
    {
      v5 = v5;
    }

    ++v4;
  }

  while (v3 != v4);
  return v5;
}

uint64_t fsm_getFigStarkModeTriStateEncodingFromCFArray(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 7;
  }

  v3 = Count;
  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    CFArrayGetValueAtIndex(a1, v4);
    if (FigCFEqual())
    {
      v5 = v5 | 1;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 2;
    }

    else if (FigCFEqual())
    {
      v5 = v5 | 4;
    }

    else
    {
      v5 = v5;
    }

    ++v4;
  }

  while (v3 != v4);
  return v5;
}

void systemController_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListeners();
  v2 = *DerivedStorage;
}

__CFString *systemController_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSystemController %p MXSystemController %p figOwnedAudioSessionID %d", a1, *DerivedStorage, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t systemController_ToggleInputMute(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();

  return [v1 toggleInputMute];
}

uint64_t systemController_SetInputMute(uint64_t a1, _OWORD *a2, int a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  return [v5 setInputMute:v8 muteValue:a3 != 0];
}

uint64_t systemController_GetInputMute(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  return [v5 getInputMute:v8 outMuteValue:a3];
}

uint64_t systemController_ClearUplinkMutedCache(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();

  return [v1 clearUplinkMutedCache];
}

uint64_t systemController_AllowAppToInitiateRecordingTemporarily(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return [v3 setAttributeForKey:@"AllowAppToInitiateRecordingTemporarily" andValue:a2];
}

uint64_t systemController_GrantMediaEndowment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return [v5 grantMediaEndowmentWithEnvironmentID:a2 endowmentPayload:a3];
}

uint64_t systemController_RevokeMediaEndowment(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return [v3 revokeMediaEndowmentWithEnvironmentID:a2];
}

uint64_t systemController_SetSilentMode(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();

  return [v9 setSilentMode:a2 != 0 untilTime:a3 reason:a4 clientType:a5];
}

uint64_t systemController_RemoteDeviceControlIsAllowed(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return [v3 remoteDeviceControlIsAllowed:a2];
}

uint64_t systemController_GetVolumeButtonDelta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return [v5 getVolumeButtonDelta:a2 outVolumeDelta:a3];
}

uint64_t systemController_AllowAppsToInitiatePlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v8 = [MEMORY[0x1E695DFD8] setWithArray:a2];

  return [v7 allowAppsToInitiatePlayback:v8 clientType:a3 isTemporary:a4];
}

uint64_t systemController_GetAudioSessionIDForAttributedPID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();

  return [v5 getAudioSessionID:a2 forAttributedPID:a3];
}

void __fsc_createPropertyMappingDicts_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  gFigSystemControllerSetPropertyMapping = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Mutable = CFDictionaryCreateMutable(v2, 0, v3, v4);
  gFigSystemControllerCopyPropertyMapping = Mutable;
  if (gFigSystemControllerSetPropertyMapping)
  {
    v6 = Mutable == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = -17650;
  }

  else
  {
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PIDToInheritApplicationStateFrom", @"PIDToInheritApplicationStateFrom");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"CanBeNowPlayingApp", @"CanBeNowPlayingApp");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AppWantsVolumeChanges", @"AppWantsVolumeChanges");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PickedRoute", @"PickedRoute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"RouteAwayFromAirPlay", @"RouteAwayFromAirPlay");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PickedRouteWithPassword", @"PickedRouteWithPassword");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AvailableForVoicePrompts", @"AvailableForVoicePrompts");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AirPlayScreenSuspended", @"AirPlayScreenSuspended");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AllowAppToInitiatePlaybackTemporarily", @"AllowAppToInitiatePlaybackTemporarily");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"HeadphoneVolumeLimit", @"HeadphoneVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"VibeIntensity", @"VibeIntensity");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"FullMute", @"FullMute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"UplinkMute", @"UplinkMute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"DownlinkMute", @"DownlinkMute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"ThermalControlInfo", @"ThermalControlInfo");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AppToInterruptCurrentNowPlayingSession", @"AppToInterruptCurrentNowPlayingSession");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AllowAppToFadeInTemporarily", @"AllowAppToFadeInTemporarily");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"OverrideToPartnerRoute", @"OverrideToPartnerRoute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"InterruptAudioSessionIDForHandoff", @"InterruptAudioSessionIDForHandoff");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PostInterruptionEndedNotification", @"PostInterruptionEndedNotification");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"WombatEnabled", @"WombatEnabled");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"CallScreeningStatus", @"CallScreeningStatus");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"IsMaximumSpeakerVolumeLimitEnabled", @"IsMaximumSpeakerVolumeLimitEnabled");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"MaximumSpeakerVolumeLimit", @"MaximumSpeakerVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"DefaultMaximumSpeakerVolumeLimit", @"DefaultMaximumSpeakerVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PreferHeadphonesOverCarsAndSpeakersEnabled", @"PreferHeadphonesOverCarsAndSpeakersEnabled");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"AllowBluetoothAccessoryToRequestAudioRoute", @"AllowBluetoothAccessoryToRequestAudioRoute");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"DuckScalarForVoiceOver", @"DuckScalarForVoiceOver");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"RemoteDeviceIDs", @"RemoteDeviceIDs");
    CFDictionarySetValue(gFigSystemControllerSetPropertyMapping, @"PopNowPlayingAppStack", @"PopNowPlayingAppStack");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ActiveAudioRoute", @"ActiveAudioRoute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CanBeNowPlayingApp", @"CanBeNowPlayingApp");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"AppWantsVolumeChanges", @"AppWantsVolumeChanges");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"PIDToInheritApplicationStateFrom", @"PIDToInheritApplicationStateFrom");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"PickableRoutes", @"PickableRoutes");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"PickedRoute", @"PickedRoute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CurrentExternalScreen", @"ExternalScreenType");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"HeadphoneVolumeLimit", @"HeadphoneVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"VibeIntensity", @"VibeIntensity");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CurrentlyActiveCategory", @"CurrentlyActiveCategory");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CurrentlyActiveMode", @"CurrentlyActiveMode");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ActiveInputRouteForPlayAndRecordNoBluetooth", @"ActiveInputRouteForPlayAndRecordNoBluetooth");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CurrentRouteHasVolumeControl", @"CurrentRouteHasVolumeControl");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"AudioIsPlayingSomewhere", @"SomeClientIsPlaying");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SomeClientIsPlayingLongFormAudio", @"SomeClientIsPlayingLongFormAudio");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ActiveClientPIDsThatHideTheSpeechDetectionDevice", @"ActiveClientPIDsThatHideTheSpeechDetectionDevice");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"HeadphoneJackIsConnected", @"HeadphoneJackIsConnected");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"HeadphoneJackHasInput", @"HeadphoneJackHasInput");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SystemHasAudioInputDevice", @"SystemHasAudioInputDevice");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SystemHasAudioInputDeviceExcludingBluetooth", @"SystemHasAudioInputDeviceExcludingBluetooth");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"FullMute", @"FullMute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"IsSomeoneRecording", @"IsSomeoneRecording");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"RecordingClientPIDs", @"RecordingClientPIDs");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"UplinkMute", @"UplinkMute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"DownlinkMute", @"DownlinkMute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ThermalControlInfo", @"ThermalControlInfo");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"VoicePromptStyle", @"VoicePromptStyle");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"NowPlayingAppShouldPlayOnCarPlayConnect", @"NowPlayingAppShouldResumeForCarPlay");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CarPlayIsConnected", @"CarPlayIsConnected");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CarPlayAuxStreamSupport", @"CarPlayAuxStreamSupport");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CarPlaySupportsMixableSiri", @"CarPlaySupportsMixableSiri");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CarPlayIsPlayingLongerDurationSession", @"CarPlayIsPlayingLongerDurationSession");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"NowPlayingAppPID", @"NowPlayingAppPID");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"NowPlayingAppDisplayID", @"NowPlayingAppDisplayID");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CallIsActive", @"PhoneCallExists");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ActiveCallInfo", @"ActivePhoneCallInfo");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ShouldIgnorePlayCommandsFromAccessory", @"ShouldIgnorePlayCommandsFromAccessory");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"NowPlayingAppIsPlaying", @"NowPlayingAppIsPlaying");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"NowPlayingAppIsInterrupted", @"NowPlayingAppIsInterrupted");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CurrentVideoStreams", @"CurrentVideoStreams");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"LongFormVideoApps", @"LongFormVideoApps");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SpeechDetectionDevicePresent", @"SpeechDetectionDevicePresent");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"AvailableVirtualAudioDevices", @"AvailableVirtualAudioDevices");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts", @"SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"PlayingSessionsDescription", @"PlayingSessionsDescription");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"RecordingSessionsDescription", @"RecordingSessionsDescription");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"WombatEnabled", @"WombatEnabled");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"ActiveNeroVisualStreamInfo", @"ActiveNeroVisualStreamInfo");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"HighestArbitrationPriorityForTipi", @"HighestArbitrationPriorityForTipi");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"SilentModeEnabled", @"SilentModeEnabled");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"CallScreeningStatus", @"CallScreeningStatus");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"IsMaximumSpeakerVolumeLimitEnabled", @"IsMaximumSpeakerVolumeLimitEnabled");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"MaximumSpeakerVolumeLimit", @"MaximumSpeakerVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"DefaultMaximumSpeakerVolumeLimit", @"DefaultMaximumSpeakerVolumeLimit");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"PreferHeadphonesOverCarsAndSpeakersEnabled", @"PreferHeadphonesOverCarsAndSpeakersEnabled");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"AllowBluetoothAccessoryToRequestAudioRoute", @"AllowBluetoothAccessoryToRequestAudioRoute");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"DuckScalarForVoiceOver", @"DuckScalarForVoiceOver");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"RemoteDeviceIDs", @"RemoteDeviceIDs");
    CFDictionarySetValue(gFigSystemControllerCopyPropertyMapping, @"TopOfNowPlayingAppStackDisplayID", @"TopOfNowPlayingAppStackDisplayID");
    v7 = gFigSystemControllerSetPropertyMapping;

    CFDictionarySetValue(v7, @"SubscribeToNotifications", @"SubscribeToNotifications");
  }
}

void sub_1B18DC3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getGEOCountryConfigurationCountryCodeDidChangeNotification()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_ptr;
  v7 = getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_ptr;
  if (!getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = GeoServicesLibrary();
    v5[3] = dlsym(v1, "GEOCountryConfigurationCountryCodeDidChangeNotification");
    getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

void sub_1B18DC624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *MX_GEOCountryConfigurationObserver_GetCurrentCountryCode(uint64_t a1)
{
  if (mx_geoCountryConfigurationObserver_Initialize_onceToken != -1)
  {
    MX_GEOCountryConfigurationObserver_GetCurrentCountryCode_cold_1();
  }

  result = gGeoCountryConfigurationObserver;
  if (gGeoCountryConfigurationObserver)
  {

    return [result getCurrentCountryCode];
  }

  return result;
}

Class __getGEOCountryConfigurationClass_block_invoke(uint64_t a1)
{
  GeoServicesLibrary();
  result = objc_getClass("GEOCountryConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    getGEOCountryConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    __getGEOCountryConfigurationClass_block_invoke_cold_1();
    return GeoServicesLibrary();
  }

  return result;
}

uint64_t GeoServicesLibrary()
{
  v3 = 0;
  v0 = GeoServicesLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

uint64_t GeoServicesLibraryCore(uint64_t a1)
{
  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    GeoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return GeoServicesLibraryCore_frameworkLibrary;
}

uint64_t __GeoServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  GeoServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = GeoServicesLibrary();
  result = dlsym(v2, "GEOCountryConfigurationCountryCodeDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getGEOCountryConfigurationCountryCodeDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getGEODeviceCountryCodeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = GeoServicesLibrary();
  result = dlsym(v2, "GEODeviceCountryCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getGEODeviceCountryCodeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FigRoutingManagerCreateAndActivateAggregateEndpointForLocalPlayback()
{
  v6 = 0;
  v0 = FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v6);
  cf = 0;
  SharedManager = FigRoutingManagerGetSharedManager(v0, v1);
  FigRoutingManagerInternal_CreateAirPlayAggregate(SharedManager, v6, 0, &cf);
  if (cf)
  {
    v3 = FigRoutingManager_iOSActivateEndpoint(cf, v6, 0, 0);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v3;
}

uint64_t FigRoutingManager_RouteAwayFromAirPlayEndpoint(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = cmsmCopyWirelessPortsArrayForRouteConfiguration(@"Audio/Video", @"Default", 0, 0);
  v6 = v5;
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        v11 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
        if (FigEndpointUtility_EndpointPredicate_EqualsAudioStreamID() && vaeDoesPortSupportRoutability(valuePtr) && vaeIsPortRoutable(valuePtr))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  ArrayOfPortsRoutable = vaemMakeArrayOfPortsRoutable(Mutable, 0, a3, a2, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return ArrayOfPortsRoutable;
}

void FigRemoteRoutingContextFactorySetForQueue(const void *a1, NSObject *a2)
{
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  dispatch_queue_set_specific(a2, @"kFigRoutingSessionResilientRemoteCurrentRemoteRoutingContextFactoryKey", v3, FigRemoteRoutingContextFactoryReleaseObject);
}

void FigRemoteRoutingContextFactoryReleaseObject(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void __FigRoutingContextIsSystemContextAllowed_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.avfoundation.allow-system-wide-context", 0);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFBooleanGetTypeID())
      {
        FigRoutingContextIsSystemContextAllowed_isAllowed = CFBooleanGetValue(v3) != 0;
      }

      CFRelease(v3);
    }

    CFRelease(v1);
  }
}

const void *FigRoutingManagerCopyEndpointToAutoConnect(uint64_t a1)
{
  v1 = FigEndpointManagerCopyMatchingEndpoints();
  v2 = FigEndpointManagerCopyMatchingEndpoints();
  v3 = v2;
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    v5 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

void FigRoutingManagerProcessEndpointToAutoconnect(const void *a1, uint64_t a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (FigCFEqual())
  {
    v3 = *MEMORY[0x1E69626C0];
    if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(0, 1, *MEMORY[0x1E69626C0]))
    {
      return;
    }

    theArray = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsForContextType(1, &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
          if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, v3))
          {
            break;
          }

          if (v5 == ++v6)
          {
            goto LABEL_8;
          }
        }

        if (!dword_1EB75DF20)
        {
          goto LABEL_18;
        }

        goto LABEL_50;
      }
    }

LABEL_8:
    v8 = @"to autoconnect for CarPlay, going to autoconnect to it, reset the flag doNotMakeStarkAudioPortRoutable to false";
    goto LABEL_17;
  }

  if (FigCFEqual())
  {
    v9 = *MEMORY[0x1E69626C8];
    if (FigRoutingManagerDoActivatedEndpointsIncludeEndpointType(0, 1, *MEMORY[0x1E69626C8]))
    {
      return;
    }

    theArray = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsForContextType(1, &theArray);
    if (theArray)
    {
      v10 = CFArrayGetCount(theArray);
      if (v10 >= 1)
      {
        v11 = v10;
        v12 = 0;
        while (1)
        {
          v13 = CFArrayGetValueAtIndex(theArray, v12);
          if (FigRoutingManagerIsEndpointOfType(v13, v9))
          {
            break;
          }

          if (v11 == ++v12)
          {
            goto LABEL_16;
          }
        }

        if (!dword_1EB75DF20)
        {
          goto LABEL_18;
        }

LABEL_50:
        LODWORD(v41) = 0;
        LOBYTE(v40) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_18;
      }
    }

LABEL_16:
    v8 = @"to autoconnect for Nero, going to autoconnect to it";
LABEL_17:
    FigRoutingManagerLogEndpointID(@"Found an endpoint with name=", a1, v8, 1);
    routingManager_autoconnectEndpoint(a1);
    goto LABEL_18;
  }

  if (!FigCFEqual())
  {
    return;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpointsForContextType(2, &theArray);
  if (!theArray || (v14 = CFArrayGetCount(theArray), v14 < 1))
  {
LABEL_32:
    v41 = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpointsForContextType(2, &v41);
    if (v41 && (v25 = CFArrayGetCount(v41), v25 >= 1))
    {
      v26 = v25;
      v27 = 0;
      v28 = *MEMORY[0x1E6961FD8];
      v29 = *MEMORY[0x1E695E480];
      v30 = *MEMORY[0x1E69626A8];
      v31 = *MEMORY[0x1E695E4D0];
      while (1)
      {
        v32 = CFArrayGetValueAtIndex(v41, v27);
        v40 = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v34)
        {
          v34(CMBaseObject, v28, v29, &v40);
        }

        IsEndpointOfType = FigRoutingManagerIsEndpointOfType(v32, v30);
        v36 = v40;
        if (IsEndpointOfType && v40 == v31)
        {
          break;
        }

        if (v40)
        {
          CFRelease(v40);
        }

        if (v26 == ++v27)
        {
          goto LABEL_44;
        }
      }

      if (dword_1EB75DF20)
      {
        v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v36 = v40;
      }

      if (v36)
      {
        CFRelease(v36);
      }
    }

    else
    {
LABEL_44:
      FigRoutingManagerLogEndpointID(@"Found an endpoint with name=", a1, @"to autoconnect for AirPlay, going to autoconnect to it", 1);
      routingManager_autoconnectEndpoint(a1);
    }

    v24 = v41;
    if (v41)
    {
      goto LABEL_46;
    }

    goto LABEL_18;
  }

  v15 = v14;
  v16 = 0;
  v17 = *MEMORY[0x1E69626A8];
  v18 = *MEMORY[0x1E6961FD8];
  v19 = *MEMORY[0x1E695E480];
  v20 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    v21 = CFArrayGetValueAtIndex(theArray, v16);
    if (FigRoutingManagerIsEndpointOfType(v21, v17))
    {
      break;
    }

LABEL_31:
    if (v15 == ++v16)
    {
      goto LABEL_32;
    }
  }

  cf[0] = 0;
  v22 = FigEndpointGetCMBaseObject();
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v23)
  {
    v23(v22, v18, v19, cf);
  }

  v24 = cf[0];
  if (cf[0] != v20)
  {
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_31;
  }

  if (!v20)
  {
    goto LABEL_18;
  }

LABEL_46:
  CFRelease(v24);
LABEL_18:
  if (theArray)
  {
    CFRelease(theArray);
  }
}

void routingManager_autoconnectEndpoint(const void *a1)
{
  cf = 0;
  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C0]))
  {
    goto LABEL_2;
  }

  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C8]))
  {
    goto LABEL_4;
  }

  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]))
  {
    if ((FigEndpointGetSupportedFeatures() & 1) == 0)
    {
LABEL_2:
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
      goto LABEL_5;
    }

LABEL_4:
    FigRoutingManagerContextUtilities_CopySystemMirroringContextUUID(&cf);
  }

LABEL_5:
  FigRoutingManagerPickEndpointForContext(cf, a1, 0, 0);
  if (cf)
  {
    CFRelease(cf);
  }
}

void routingManager_updateSmartRoutingBackoffTimer(uint64_t a1, uint64_t a2, int a3)
{
  v23[24] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    cf = *MEMORY[0x1E695E4C0];
    v23[0] = cf;
    v21 = 0;
    v6 = *MEMORY[0x1E69621E8];
    v7 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(CMBaseObject, v6, v7, &v21);
    }

    v20 = 0;
    v10 = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, v6, v7, &v20);
    }

    v12 = FigRoutingManagerCopyBluetoothEndpointAssociatedWithVAEndpoint(a1);
    if (v12)
    {
      v13 = FigEndpointGetCMBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v14(v13, @"SupportsSmartRouting", v7, v23);
      }
    }

    v15 = FigRoutingManagerCopyBluetoothEndpointAssociatedWithVAEndpoint(a2);
    if (v15)
    {
      v16 = FigEndpointGetCMBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(v16, @"SupportsSmartRouting", v7, &cf);
      }
    }

    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (FigCFEqual() && (v19 = FigCFEqual(), a3) && v19)
    {
      FigPredictedRouting_StartTimer(480.0);
    }

    else if (FigCFEqual())
    {
      FigPredictedRouting_StopTimer();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v23[0])
    {
      CFRelease(v23[0]);
      v23[0] = 0;
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v20)
    {
      CFRelease(v20);
      v20 = 0;
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }
}

void FigRoutingManagerNewWiredPortsAdded(void *a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v63 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v63);
  v62 = 0;
  if (!v63)
  {
    return;
  }

  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(v63, &v62);
  IsEndpointOfType = FigRoutingManagerIsEndpointOfType(v62, *MEMORY[0x1E69626C0]);
  if (IsEndpointOfType)
  {
    LODWORD(cf) = 0;
    FigRoutingManagerContextUtilities_GetPickingState(v63, &cf);
    CarPlayMainAudioPortForEndpoint = FigRoutingManagerFindCarPlayMainAudioPortForEndpoint(v62, 0);
    if (cf == 4)
    {
      if (!CarPlayMainAudioPortForEndpoint)
      {
        goto LABEL_28;
      }

      FigRoutingManagerStopCarPlayAudioMainPortPublishedCheckTimer(CarPlayMainAudioPortForEndpoint, v4);
      v5 = v63;
      v6 = 6;
    }

    else
    {
      if (cf != 8 || !CarPlayMainAudioPortForEndpoint)
      {
LABEL_28:
        FigRoutingManagerContextUtilities_GetPickingState(v63, &cf);
        if (cf == 9)
        {
          v68[0] = 0;
          FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(v63, v62, v68);
          *v64 = 0;
          FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures(v63, v62, v64);
          FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(v62, v64[0], v68[0], v63, 0);
        }

        goto LABEL_76;
      }

      FigRoutingManagerStopCarPlayAudioMainPortPublishedCheckTimer(CarPlayMainAudioPortForEndpoint, v4);
      v5 = v63;
      v6 = 9;
    }

    FigRoutingManagerContextUtilities_SetPickingState(v5, v6);
    goto LABEL_28;
  }

  if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled(IsEndpointOfType, v2))
  {
    v60 = 0;
    cf = 0;
    v59 = 0;
    v7 = CMSMUtility_CopyNonNullCurrentlyActiveCategory();
    v8 = CMSMUtility_CopyNonNullCurrentlyActiveMode();
    v9 = CMSMUtility_CopyCurrentAllowedPortTypes();
    v10 = cmsmCopyQuiesceableWiredPortsForRouteConfiguration(v7, v8, v9, 0);
    v45 = v7;
    v46 = v8;
    v47 = v9;
    v11 = cmsmCopyPickableQuiesceableWiredPortsForRouteConfiguration(v7, v8);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v13 = [v10 countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v56;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v56 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v55 + 1) + 8 * i);
          if (([v11 containsObject:v17] & 1) == 0)
          {
            [v12 addObject:v17];
          }
        }

        v14 = [v10 countByEnumeratingWithState:&v55 objects:v69 count:16];
      }

      while (v14);
    }

    if ([v12 count] && !vaemIsPersistentRouteActive())
    {
      cmsmUnpickQuiesceableWiredPortsRoutes(v12, 0, v63, 0, 0);
    }

    FigRoutingManagerCopyPickedEndpointForRoutingContext(v63, &cf);
    if (FigRoutingManagerIsEndpointOfType(cf, *MEMORY[0x1E69626D8]))
    {
      v18 = *MEMORY[0x1E695E480];
      CMBaseObject = FigEndpointGetCMBaseObject();
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v20)
      {
        v20(CMBaseObject, 0x1F289D0F0, v18, &v60);
      }

      v21 = FigEndpointGetCMBaseObject();
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v22)
      {
        v22(v21, 0x1F289D0D0, v18, &v59);
      }
    }

    else if (dword_1EB75DF20)
    {
      v54 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([v60 BOOLValue] && (objc_msgSend(v59, "BOOLValue") & 1) != 0)
    {
      if (dword_1EB75DF20)
      {
        v54 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_67:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v45)
      {
        CFRelease(v45);
      }

      if (v46)
      {
        CFRelease(v46);
      }

      if (v47)
      {
        CFRelease(v47);
      }

      goto LABEL_76;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v25 = [a1 countByEnumeratingWithState:&v49 objects:v67 count:16];
    if (!v25)
    {
      goto LABEL_67;
    }

    v26 = v25;
    v27 = *v50;
LABEL_38:
    v28 = 0;
    while (1)
    {
      if (*v50 != v27)
      {
        objc_enumerationMutation(a1);
      }

      v29 = *(*(&v49 + 1) + 8 * v28);
      v30 = [v29 unsignedIntValue];
      if (!vaeIsQuiesceableWiredPort(v30, v31))
      {
        goto LABEL_65;
      }

      if ([v11 containsObject:v29])
      {
        if ([+[MXSessionManager getQuiesceableWiredPortAutoRouteOnConnectPreference:"getQuiesceableWiredPortAutoRouteOnConnectPreference:"]
        {
          if (dword_1EB75DF20)
          {
            v54 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v33 = v54;
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
              *v64 = 136315394;
              *&v64[4] = "FigRoutingManagerNewWiredPortsAdded";
              v65 = 1024;
              v66 = v30;
              _os_log_send_and_compose_impl(v35, 0, v68, 128, &dword_1B17A2000, v32, v34, "-FigRoutingManager_iOS- %s: Make quiesceable wired port [%u] routable", v64, 18);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          vaeMakePortRoutable(v30, 1, 0, v63);
          goto LABEL_65;
        }

        if (dword_1EB75DF20)
        {
          v54 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v41 = v54;
          v42 = type;
          if (os_log_type_enabled(v40, type))
          {
            v43 = v41;
          }

          else
          {
            v43 = v41 & 0xFFFFFFFE;
          }

          if (v43)
          {
            *v64 = 136315394;
            *&v64[4] = "FigRoutingManagerNewWiredPortsAdded";
            v65 = 1024;
            v66 = v30;
            LODWORD(v44) = 18;
            _os_log_send_and_compose_impl(v43, 0, v68, 128, &dword_1B17A2000, v40, v42, "-FigRoutingManager_iOS- %s: Skip making quiesceable wired port [%u] routable because user prefers not to route to it", v64, v44);
          }

LABEL_62:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else if (dword_1EB75DF20)
      {
        v54 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v37 = v54;
        v38 = type;
        if (os_log_type_enabled(v36, type))
        {
          v39 = v37;
        }

        else
        {
          v39 = v37 & 0xFFFFFFFE;
        }

        if (v39)
        {
          *v64 = 136315394;
          *&v64[4] = "FigRoutingManagerNewWiredPortsAdded";
          v65 = 1024;
          v66 = v30;
          LODWORD(v44) = 18;
          _os_log_send_and_compose_impl(v39, 0, v68, 128, &dword_1B17A2000, v36, v38, "-FigRoutingManager_iOS- %s: Skip making quiesceable wired port [%u] routable because it's not pickable", v64, v44);
        }

        goto LABEL_62;
      }

LABEL_65:
      if (v26 == ++v28)
      {
        v26 = [a1 countByEnumeratingWithState:&v49 objects:v67 count:16];
        if (!v26)
        {
          goto LABEL_67;
        }

        goto LABEL_38;
      }
    }
  }

LABEL_76:
  if (v62)
  {
    CFRelease(v62);
    v62 = 0;
  }

  if (v63)
  {
    CFRelease(v63);
  }
}

void FigRoutingManagerRouteToBluetoothDevice(const void *a1, uint64_t a2)
{
  theDict[19] = *MEMORY[0x1E69E9840];
  IsSystemAudioRouteAirPlayLowLatency = FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency();
  theDict[0] = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpointInfo(a1, theDict);
  if (theDict[0])
  {
    Value = CFDictionaryGetValue(theDict[0], @"CurrentlyActivatingEndpointsInfo_ClientRoutingContextUUID");
    if (Value)
    {
      v5 = CFRetain(Value);
    }

    else
    {
      v5 = 0;
    }

    v7 = CFDictionaryGetValue(theDict[0], @"CurrentlyActivatingEndpointsInfo_ClientRouteChangeOptions");
    if (v7)
    {
      v28 = CFRetain(v7);
    }

    else
    {
      v28 = 0;
    }

    v8 = CFDictionaryGetValue(theDict[0], @"CurrentlyActivatingEndpointsInfo_InternalRouteChangeOptions");
    if (v8)
    {
      v6 = CFRetain(v8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v28 = 0;
    v5 = 0;
  }

  cf = 0;
  v9 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E69620F8], v9, &cf);
  }

  allocator = v9;
  IsContextSystemMusicAndIndependent = FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(v5);
  if (IsContextSystemMusicAndIndependent)
  {
    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingContextUtilities_SetLeaderToSystemAudioContext(v5, @"configUpdateReasonEndedSuccess");
  }

  v14 = FigRoutingManagerCopyEndpointWithDeviceID(cf, 0, *MEMORY[0x1E69618F8], 0);
  v15 = v14;
  if (v14)
  {
    v25 = v6;
    EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(v14, a1, v28, v6);
    FigRoutingManagerGetFigEndpointFeatures(v15, a1);
    v24 = EndpointActivateOptions;
    FigEndpointActivate();
    v17 = CMSMUtility_CopyCurrentRouteIdentifiers();
    v18 = FigRoutingManagerCopyEndpointsFromRouteIdentifiers(v17, a1);
    v19 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v18, 0);
    if (theDict[0])
    {
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a1, v18, @"configUpdateReasonEndedSuccess", v28, v19);
      if (!FigRoutingContextUtilities_DoesArrayOfEndpointsContainEndpoint(v18, a2))
      {
        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingEndpointInfo(a1, a2, @"routeChangeEndedSuccess");
      }
    }

    else
    {
      if (dword_1EB75DF20)
      {
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerContextUtilities_SetPickedEndpoints(a1, v18, @"configUpdateReasonEndedSuccess", v28, v19);
    }

    FigRoutingManagerContextUtilities_SetPickingState(a1, 0);
    if (v19)
    {
      CFRelease(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    v6 = v25;
    if (v24)
    {
      CFRelease(v24);
    }
  }

  if (IsContextSystemMusicAndIndependent)
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"initiator", @"SelectRouteInitiator_RouteToBluetoothDevice");
    if (IsSystemAudioRouteAirPlayLowLatency)
    {
      v22 = FigRoutingManagerCopyLocalAirPlayEndpoint();
      ArrayFromEndpoint = FigRoutingManagerCreateArrayFromEndpoint(v22);
      routingManager_processPickEndpoints(ArrayFromEndpoint, v5, 0, Mutable, 0);
      if (ArrayFromEndpoint)
      {
        CFRelease(ArrayFromEndpoint);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    else if (!FigRoutingManagerContextUtilities_IsContextSystemAudio(v5))
    {
      routingManager_processPickEndpoints(0, v5, 0, Mutable, 0);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (theDict[0])
  {
    CFRelease(theDict[0]);
  }
}

uint64_t routingManager_processPickEndpoints(const __CFArray *a1, const void *a2, const __CFDictionary *a3, const void *a4, int a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    FigRoutingManagerCreateAggregateForContextIfNecessary(a2, a1);
    v76 = 0;
    FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a2, &v76);
    v18 = FigRoutingManagerUtilities_CopyEndpointsToAdd(a2, a1);
    theArray = FigRoutingManagerUtilities_CopyEndpointsToRemove(a2, a1);
    if (v18)
    {
      if (CFArrayGetCount(v18) >= 1)
      {
        FigRoutingManagerContextUtilities_AddCurrentlyActivatingSubEndpoints(a2, v76, v18, a3, a4);
      }

      v19 = v76;
      if (!v76)
      {
        v16 = 4294954296;
        v27 = theArray;
LABEL_115:
        CFRelease(v18);
LABEL_116:
        if (v27)
        {
          CFRelease(v27);
        }

        v26 = v76;
        if (v76)
        {
          goto LABEL_119;
        }

        return v16;
      }

      v16 = FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
      if (CFArrayGetCount(v18))
      {
        v67 = 0;
        v20 = 0;
        v21 = 1;
        if (!a1)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v19 = v76;
      if (!v76)
      {
        v16 = 4294954296;
        v27 = theArray;
        goto LABEL_116;
      }

      v16 = FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
    }

    if (theArray && CFArrayGetCount(theArray) >= 1)
    {
      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, @"configUpdateReasonStarted");
      v21 = 0;
      v67 = 1;
    }

    else
    {
      v67 = 0;
      v21 = 1;
    }

    v20 = 1;
    if (!a1)
    {
LABEL_43:
      if (dword_1EB75DF20)
      {
        v29 = v18;
        LODWORD(v80) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v31 = v80;
        v32 = type[0];
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
        {
          v33 = v31;
        }

        else
        {
          v33 = v31 & 0xFFFFFFFE;
        }

        if (v33)
        {
          v81 = 136315138;
          v82 = "routingManager_processPickAirPlayEndpoints";
          _os_log_send_and_compose_impl(v33, 0, cf, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v32, "-FigRoutingManager_iOS- %s: Going to remove all sub-endpoints and destroy music VAD because user selected NULL on system music", &v81);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v18 = v29;
      }

      FigRoutingManagerRemoveAllSubEndpointsFromAggregate(v19, a2, a3, a4, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
      CMSMVAUtility_DestroyMusicVADIfNeeded(a2);
      FigRoutingManagerPostProcessPickEndpoint(0, a2);
      LOBYTE(cf[0]) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      v62 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedSuccess;
      if (!LOBYTE(cf[0]))
      {
        v62 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedBottomUpRouteChange;
      }

      FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, 0, *v62, a3, 0);
      v27 = theArray;
      if (!v21)
      {
        goto LABEL_112;
      }

      goto LABEL_110;
    }

    if (!v18)
    {
      v65 = 1;
      v28 = 0;
LABEL_51:
      v27 = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      else
      {
        Count = 0;
      }

      v34 = MEMORY[0x1E69620F8];
      v35 = MEMORY[0x1E69621E8];
      v66 = v21;
      if (v28 >= 1)
      {
        v36 = 0;
        v69 = *MEMORY[0x1E69620F8];
        v71 = *MEMORY[0x1E695E480];
        v68 = *MEMORY[0x1E69621E8];
        do
        {
          v37 = v18;
          ValueAtIndex = CFArrayGetValueAtIndex(v18, v36);
          if (FigRoutingManagerIsEndpointActivated(ValueAtIndex))
          {
            v39 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v39)
            {
              v39(ValueAtIndex, 0);
            }

            FigEndpointDeactivate();
          }

          FigEndpointAggregateGetClassID();
          if (CMBaseObjectIsMemberOfClass())
          {
            v40 = v19;
          }

          else
          {
            v40 = 0;
          }

          v16 = FigRoutingManagerAddEndpointToAggregate(v40, ValueAtIndex, a2, a3, a4, FigRoutingManagerAggregateAddEndpointCompletionCallback);
          if (!v16)
          {
            v80 = 0;
            CMBaseObject = FigEndpointGetCMBaseObject();
            v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v42)
            {
              v42(CMBaseObject, v69, v71, &v80);
            }

            *type = 0;
            v43 = FigEndpointGetCMBaseObject();
            v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v44)
            {
              v44(v43, v68, v71, type);
            }

            if (dword_1EB75DF20)
            {
              v78 = 0;
              v77 = OS_LOG_TYPE_DEFAULT;
              v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v46 = v78;
              v47 = v77;
              if (os_log_type_enabled(v45, v77))
              {
                v48 = v46;
              }

              else
              {
                v48 = v46 & 0xFFFFFFFE;
              }

              if (v48)
              {
                v81 = 136315650;
                v82 = "routingManager_processPickAirPlayEndpoints";
                v83 = 2114;
                v84 = v80;
                v85 = 2114;
                v86 = *type;
                LODWORD(v64) = 32;
                _os_log_send_and_compose_impl(v48, 0, cf, 128, &dword_1B17A2000, v45, v47, "-FigRoutingManager_iOS- %s: Successfully called to add endpoint with ID=%{public}@ and name=%{public}@", &v81, v64);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v27 = theArray;
            }

            if (*type)
            {
              CFRelease(*type);
              *type = 0;
            }

            if (v80)
            {
              CFRelease(v80);
            }
          }

          ++v36;
          v18 = v37;
        }

        while (v28 != v36);
        v21 = v66;
        v35 = MEMORY[0x1E69621E8];
        v34 = MEMORY[0x1E69620F8];
      }

      if (Count >= 1)
      {
        v49 = v18;
        v50 = 0;
        v51 = *MEMORY[0x1E695E480];
        v70 = *v35;
        v72 = *v34;
        do
        {
          v52 = CFArrayGetValueAtIndex(v27, v50);
          FigEndpointAggregateGetClassID();
          if (CMBaseObjectIsMemberOfClass())
          {
            v53 = v19;
          }

          else
          {
            v53 = 0;
          }

          v16 = FigRoutingManagerRemoveEndpointFromAggregate(v53, v52, a2, a3, a4, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
          if (!v16)
          {
            v80 = 0;
            v54 = FigEndpointGetCMBaseObject();
            v55 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v55)
            {
              v55(v54, v72, v51, &v80);
            }

            *type = 0;
            v56 = FigEndpointGetCMBaseObject();
            v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v57)
            {
              v57(v56, v70, v51, type);
            }

            if (dword_1EB75DF20)
            {
              v78 = 0;
              v77 = OS_LOG_TYPE_DEFAULT;
              v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v59 = v78;
              v60 = v77;
              if (os_log_type_enabled(v58, v77))
              {
                v61 = v59;
              }

              else
              {
                v61 = v59 & 0xFFFFFFFE;
              }

              if (v61)
              {
                v81 = 136315650;
                v82 = "routingManager_processPickAirPlayEndpoints";
                v83 = 2114;
                v84 = v80;
                v85 = 2114;
                v86 = *type;
                LODWORD(v64) = 32;
                _os_log_send_and_compose_impl(v61, 0, cf, 128, &dword_1B17A2000, v58, v60, "-FigRoutingManager_iOS- %s: Successfully called to remove endpoint with ID=%{public}@ and name=%{public}@", &v81, v64);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v27 = theArray;
            }

            if (*type)
            {
              CFRelease(*type);
              *type = 0;
            }

            if (v80)
            {
              CFRelease(v80);
            }
          }

          ++v50;
        }

        while (Count != v50);
        v18 = v49;
        v21 = v66;
      }

      v20 = v65;
      if (!v21)
      {
        goto LABEL_112;
      }

LABEL_110:
      if (v20)
      {
        FigRoutingManagerContextUtilities_PostNoOpRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, a4);
        goto LABEL_114;
      }

LABEL_112:
      if ((v67 & v20) == 1)
      {
        FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a2, a3, @"configUpdateReasonEndedSuccess");
      }

LABEL_114:
      if (!v18)
      {
        goto LABEL_116;
      }

      goto LABEL_115;
    }

LABEL_42:
    v65 = v20;
    v28 = CFArrayGetCount(v18);
    goto LABEL_51;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionarySetValue(MutableCopy, @"RouteChangeOptionKey_IsAddOperation", *MEMORY[0x1E695E4D0]);
  FigRoutingManagerContextUtilities_SetPickingState(a2, 4);
  if (a1)
  {
    v9 = CFArrayGetCount(a1);
    v10 = v9 - 1;
    if (v9 >= 1)
    {
      v11 = v9;
      v12 = 0;
      v13 = *MEMORY[0x1E69626B8];
      v14 = 1;
      do
      {
        while (1)
        {
          v15 = CFArrayGetValueAtIndex(a1, v12);
          if (!FigRoutingManagerIsEndpointOfType(v15, v13))
          {
            break;
          }

          FigRoutingManager_iOSActivateEndpoint(v15, a2, a3, MutableCopy);
          v14 = 0;
          v16 = 0;
          if (v10 == v12++)
          {
            goto LABEL_31;
          }
        }

        ++v12;
      }

      while (v11 != v12);
      if ((v14 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  FigRoutingManagerContextUtilities_SetPickingState(a2, 6);
  v22 = CMSMVAUtility_AggregateEndpoints(a1, 1u, a2);
  if (!v22)
  {
    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, cf);
    if (FigRoutingManagerIsEndpointOfType(cf[0], *MEMORY[0x1E69626A8]))
    {
      FigRoutingManagerDeactivateEndpointFromPickedContexts(cf[0], v24, 1, @"configUpdateReasonEndedSuccess");
    }

    v25 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(a1, 0);
    FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, a1, @"configUpdateReasonEndedSuccess", a3, v25);
    if (v25)
    {
      CFRelease(v25);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  v16 = v22;
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a2, cf);
  v23 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(cf[0], 0);
  FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, cf[0], @"configUpdateReasonEndedFailed", a3, v23);
  FigRoutingManagerContextUtilities_SetPickingState(a2, 0);
  if (v23)
  {
    CFRelease(v23);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_31:
  if (MutableCopy)
  {
    v26 = MutableCopy;
LABEL_119:
    CFRelease(v26);
  }

  return v16;
}

void FigRoutingManagerEnableBluetoothSharingSession(const void *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    v5 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      return;
    }

    goto LABEL_11;
  }

  Count = CFArrayGetCount(theArray);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      LODWORD(cf) = 0;
      if (CMSMVAUtility_IsA2DPPortAvailableForEndpoint(ValueAtIndex, &cf))
      {
        SInt64 = FigCFNumberCreateSInt64();
        CFArrayAppendValue(Mutable, SInt64);
        if (SInt64)
        {
          CFRelease(SInt64);
        }
      }
    }
  }

  if (Mutable)
  {
LABEL_11:
    v10 = CFArrayGetCount(Mutable);
    if (v10 > 0)
    {
      if (v10 == 1)
      {
        cf = 0;
        FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &cf);
        if (FigRoutingManagerIsEndpointBluetoothShareable(cf))
        {
          value = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v12)
          {
            v12(CMBaseObject, 0x1F289CDB0, v5, &value);
            if (value)
            {
              CFArrayAppendValue(Mutable, value);
              if (value)
              {
                CFRelease(value);
              }
            }
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      CMSMVAUtility_AggregatePorts(Mutable, 1u, a1);
      v13 = routingManager_copyPickedEndpointsFromCurrentRoutesInfo(a1);
      v14 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v13, 0);
      FigRoutingManagerContextUtilities_SetPickedEndpoints(a1, v13, @"configUpdateReasonEndedSuccess", 0, v14);
      if (v14)
      {
        CFRelease(v14);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    CFRelease(Mutable);
  }
}

__CFArray *routingManager_copyPickedEndpointsFromCurrentRoutesInfo(uint64_t a1)
{
  v2 = CMSMUtility_CopyCurrentRouteIdentifiers();
  NumberOfCurrentOutputPorts = CMSMUtility_GetNumberOfCurrentOutputPorts();
  if (!NumberOfCurrentOutputPorts)
  {
    Mutable = 0;
    if (!v2)
    {
      return Mutable;
    }

    goto LABEL_21;
  }

  v4 = NumberOfCurrentOutputPorts;
  v18 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = 0;
  v7 = *MEMORY[0x1E69618F8];
  v8 = *MEMORY[0x1E69618D0];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
    v10 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 0, v7, 0);
    cf = 0;
    if (v10)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v12(CMBaseObject, 0x1F289CEF0, v18, &cf);
      }
    }

    PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(cf);
    if (PortFromCFNumber == 1885433971 || PortFromCFNumber == 1885433953)
    {
      v15 = FigRoutingManagerCopyEndpointWithDeviceID(ValueAtIndex, 1, v8, a1);
      if (v15)
      {
        v16 = v15;
        CFArrayAppendValue(Mutable, v15);
        CFRelease(v16);
      }
    }

    else if (v10)
    {
      CFArrayAppendValue(Mutable, v10);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v10)
    {
      CFRelease(v10);
    }

    ++v6;
  }

  while (v4 != v6);
  if (v2)
  {
LABEL_21:
    CFRelease(v2);
  }

  return Mutable;
}

void FigRoutingManagerProcessCustomizedRouting(const __CFArray *a1, const void *a2)
{
  v121 = *MEMORY[0x1E69E9840];
  v3 = &qword_1EB75D000;
  if (dword_1EB75DF20)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = CMSMUtility_CopyCurrentOutputPorts();
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) >= 1)
    {
      v7 = 0;
      do
      {
        FigCFArrayGetValueAtIndex();
        SInt32 = FigCFNumberGetSInt32();
        v9 = vaeCopyNameForPort(SInt32);
        if (v9)
        {
          CFRelease(v9);
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v6));
    }

    CFRelease(v6);
  }

  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v10 = 0;
    v86 = *MEMORY[0x1E69626C0];
    v85 = a1;
    do
    {
      *type = CFArrayGetValueAtIndex(a1, v10);
      v11 = [*type intValue];
      IsPortOfTypeCarPlayMainAudio = CMSMVAUtility_IsPortOfTypeCarPlayMainAudio(v11);
      v88 = IsPortOfTypeCarPlayMainAudio;
      v98 = vaeCopyNameForPort(v11);
      VADEndpointTypeForPort = vaeGetVADEndpointTypeForPort(v11);
      v97 = vaeCopyVADEndpointTypeForPort(v11);
      v13 = vaeCopyDeviceIdentifierFromVADPort(v11);
      v14 = MXCFCopyPrefixSubstring(v13, 17);
      v93 = v11;
      v15 = CMSMVAUtility_CopyBluetoothDeviceModelID(v11);
      if (dword_1EB75DF20)
      {
        LODWORD(cf) = 0;
        v104[0] = OS_LOG_TYPE_DEFAULT;
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v17 = cf;
        v18 = v104[0];
        if (os_log_type_enabled(v16, v104[0]))
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v106 = 136316930;
          v107 = "FigRoutingManagerProcessCustomizedRouting";
          v108 = 2048;
          *v109 = v10;
          *&v109[8] = 2114;
          *&v109[10] = v98;
          v110 = 2114;
          v111 = v97;
          v112 = 2114;
          v113 = v13;
          v114 = 2114;
          v115 = v14;
          v116 = 1024;
          v117 = IsPortOfTypeCarPlayMainAudio;
          v118 = 2114;
          *v119 = v15;
          LODWORD(v83) = 78;
          _os_log_send_and_compose_impl(v19, 0, v120, 128, &dword_1B17A2000, v16, v18, "-FigRoutingManager_iOS- %s: index = %ld, newPortNameAtIndex  = %{public}@, newPortSubTypeAtIndex = %{public}@, portDeviceIdentifierAtIndex = %{public}@, portMacAddressAtIndex = %{public}@, isPortOfTypeCarPlayAtIndex = %{BOOL}u, modelID = %{public}@", &v106, v83);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v90 = IsPortOfTypeCarPlayMainAudio;
      v95 = v10;
      v96 = v13;
      v94 = v14;
      v20 = v3;
      if (v15)
      {
        CFRelease(v15);
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
      v22 = vaeCopyNameForPort([ValueAtIndex intValue]);
      v23 = vaeGetVADEndpointTypeForPort([ValueAtIndex intValue]);
      v24 = vaeCopyVADEndpointTypeForPort([ValueAtIndex intValue]);
      v25 = vaeCopyDeviceIdentifierFromVADPort([ValueAtIndex intValue]);
      cf = 0;
      v26 = vaemCopyEndpointForPort([ValueAtIndex intValue]);
      if (FigRoutingManagerIsEndpointOfType(v26, v86))
      {
        cf = MXCFCopyPrefixSubstring(v25, 17);
      }

      else
      {
        CMSMUtility_CreateTokensFromDeviceUID(v25, &cf, 0);
      }

      *v104 = 0;
      v91 = [+[MXSessionManager sharedInstance](MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:", v104];
      v29 = v23 == 1701868400 || v23 == 1701869160;
      v30 = *v104;
      if (*v104)
      {
        v30 = vaeCopyNameForPort(*v104);
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      if (dword_1EB75DF20)
      {
        v103 = 0;
        v102 = OS_LOG_TYPE_DEFAULT;
        v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v33 = v103;
        v34 = v102;
        if (os_log_type_enabled(v32, v102))
        {
          v35 = v33;
        }

        else
        {
          v35 = v33 & 0xFFFFFFFE;
        }

        if (v35)
        {
          v106 = 136317186;
          v107 = "routingManager_shouldUseCustomizedRouting";
          v108 = 2114;
          *v109 = v22;
          *&v109[8] = 2114;
          *&v109[10] = v24;
          v110 = 2114;
          v111 = v25;
          v112 = 2114;
          v113 = cf;
          v114 = 2114;
          v115 = v31;
          v116 = 1026;
          v117 = v91;
          v118 = 1026;
          *v119 = v29;
          *&v119[4] = 2114;
          *&v119[6] = v24;
          LODWORD(v83) = 84;
          _os_log_send_and_compose_impl(v35, 0, v120, 128, &dword_1B17A2000, v32, v34, "-FigRoutingManager_iOS- %s: newPortName  = %{public}@, newPortSubType = %{public}@, newPortDeviceIdentifier = %{public}@, newPortMacAddress = %{public}@, oldPortName = %{public}@, isCurrentRouteHeadphonesAndInEar = %{public}hhu, isSupportedTargetType = %{public}hhu, newPortType = %{public}@", &v106, v83);
        }

        v30 = fig_log_call_emit_and_clean_up_after_send_and_compose();
        a1 = v85;
      }

      IsCustomizedRoutingWithCarsAndSpeakersEnabled = MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled(v30, v27);
      if (!IsCustomizedRoutingWithCarsAndSpeakersEnabled)
      {
        if (!MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled(IsCustomizedRoutingWithCarsAndSpeakersEnabled, v37))
        {
          v92 = 0;
          v29 = 0;
          if (!v22)
          {
            goto LABEL_45;
          }

LABEL_44:
          CFRelease(v22);
          goto LABEL_45;
        }

        v29 = v91 & v29;
      }

      v92 = *v104;
      if (v22)
      {
        goto LABEL_44;
      }

LABEL_45:
      if (v24)
      {
        CFRelease(v24);
      }

      v3 = v20;
      if (v25)
      {
        CFRelease(v25);
      }

      v38 = v96;
      v39 = v98;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v31)
      {
        CFRelease(v31);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      if (dword_1EB75DF20)
      {
        v103 = 0;
        v102 = OS_LOG_TYPE_DEFAULT;
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v41 = v103;
        v42 = v102;
        if (os_log_type_enabled(v40, v102))
        {
          v43 = v41;
        }

        else
        {
          v43 = v41 & 0xFFFFFFFE;
        }

        if (v43)
        {
          v44 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v29];
          v106 = 136315394;
          v107 = "routingManager_shouldUseCustomizedRouting";
          v108 = 2114;
          *v109 = v44;
          LODWORD(v83) = 22;
          _os_log_send_and_compose_impl(v43, 0, v120, 128, &dword_1B17A2000, v40, v42, "-FigRoutingManager_iOS- %s: shouldUseCustomizedRouting = %{public}@", &v106, v83);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v29)
      {
        CMSMVAUtility_LogPartnerPorts(v92);
        if (!CMSMVAUtility_IsPortOfTypeBluetooth(v93))
        {
          goto LABEL_102;
        }

        v45 = vaeCopyDeviceIdentifierFromVADPort(v93);
        v46 = MXCFCopyPrefixSubstring(v45, 17);
        if (NSClassFromString(&cfstr_Crpairedvehicl.isa))
        {
          gotLoadHelper_x8__OBJC_CLASS___CRPairedVehicleManager(v47);
          v49 = objc_alloc_init(*(v48 + 2432));
          v50 = [v49 vehicleForBluetoothAddress:v46];
          if (v50)
          {
            if (dword_1EB75DF20)
            {
              LODWORD(cf) = 0;
              v104[0] = OS_LOG_TYPE_DEFAULT;
              v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v52 = cf;
              v53 = v104[0];
              if (os_log_type_enabled(v51, v104[0]))
              {
                v54 = v52;
              }

              else
              {
                v54 = v52 & 0xFFFFFFFE;
              }

              if (v54)
              {
                v55 = [v50 vehicleName];
                v56 = [v50 identifier];
                v106 = 136315906;
                v107 = "routingManager_isBluetoothPortPairedToCarPlay";
                v108 = 2114;
                *v109 = v46;
                *&v109[8] = 2114;
                *&v109[10] = v55;
                v110 = 2114;
                v111 = v56;
                LODWORD(v83) = 42;
                _os_log_send_and_compose_impl(v54, 0, v120, 128, &dword_1B17A2000, v51, v53, "-FigRoutingManager_iOS- %s: newPortMacAddress = %{public}@, vehicleName = %{public}@, vehicleIdentifier = %{public}@", &v106, v83);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              a1 = v85;
            }
          }

          else if (dword_1EB75DF20)
          {
            LODWORD(cf) = 0;
            v104[0] = OS_LOG_TYPE_DEFAULT;
            v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v64 = cf;
            v65 = v104[0];
            if (os_log_type_enabled(v63, v104[0]))
            {
              v66 = v64;
            }

            else
            {
              v66 = v64 & 0xFFFFFFFE;
            }

            if (v66)
            {
              v106 = 136315394;
              v107 = "routingManager_isBluetoothPortPairedToCarPlay";
              v108 = 2114;
              *v109 = v46;
              LODWORD(v83) = 22;
              _os_log_send_and_compose_impl(v66, 0, v120, 128, &dword_1B17A2000, v63, v65, "-FigRoutingManager_iOS- %s: newPortMacAddress = %{public}@, matchingVehicle = nil }", &v106, v83);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v68 = [v50 isPaired];

          v67 = v68 ^ 1;
          v38 = v96;
          v39 = v98;
        }

        else if (dword_1EB75DF20)
        {
          LODWORD(cf) = 0;
          v104[0] = OS_LOG_TYPE_DEFAULT;
          v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v60 = cf;
          v61 = v104[0];
          if (os_log_type_enabled(v59, v104[0]))
          {
            v62 = v60;
          }

          else
          {
            v62 = v60 & 0xFFFFFFFE;
          }

          if (v62)
          {
            v106 = 136315138;
            v107 = "routingManager_isBluetoothPortPairedToCarPlay";
            _os_log_send_and_compose_impl(v62, 0, v120, 128, &dword_1B17A2000, v59, v61, "-FigRoutingManager_iOS- %s: CRPairedVehicleManager class does not exist, CarKit framework might be missing", &v106);
          }

          v67 = 1;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          v67 = 1;
        }

        if (v45)
        {
          CFRelease(v45);
        }

        if (v46)
        {
          CFRelease(v46);
        }

        if ((v67 & 1) == 0)
        {
          if (dword_1EB75DF20)
          {
            LODWORD(cf) = 0;
            v104[0] = OS_LOG_TYPE_DEFAULT;
            v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v75 = cf;
            v76 = v104[0];
            if (os_log_type_enabled(v74, v104[0]))
            {
              v77 = v75;
            }

            else
            {
              v77 = v75 & 0xFFFFFFFE;
            }

            if (v77)
            {
              v106 = 136315650;
              v107 = "FigRoutingManagerProcessCustomizedRouting";
              v108 = 1024;
              *v109 = v93;
              *&v109[4] = 2114;
              *&v109[6] = v39;
              LODWORD(v83) = 28;
              _os_log_send_and_compose_impl(v77, 0, v120, 128, &dword_1B17A2000, v74, v76, "-FigRoutingManager_iOS- %s: BluetoothPortPairedToCarPlay = YES, ignoring routing to BT port %d/%{public}@", &v106, v83);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
LABEL_102:
          v69 = +[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled];
          if (dword_1EB75DF20)
          {
            LODWORD(cf) = 0;
            v104[0] = OS_LOG_TYPE_DEFAULT;
            v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v71 = cf;
            v72 = v104[0];
            if (os_log_type_enabled(v70, v104[0]))
            {
              v73 = v71;
            }

            else
            {
              v73 = v71 & 0xFFFFFFFE;
            }

            if (v73)
            {
              v106 = 136315394;
              v107 = "FigRoutingManagerProcessCustomizedRouting";
              v108 = 1024;
              *v109 = v69;
              LODWORD(v83) = 18;
              _os_log_send_and_compose_impl(v73, 0, v120, 128, &dword_1B17A2000, v70, v72, "-FigRoutingManager_iOS- %s: routingPreference - preferHeadphonesOverCarsAndSpeakersEnabled = %{BOOL}u", &v106, v83);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v78 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v78 setValue:v94 forKey:@"PortMacAddress"];
          [v78 setValue:v38 forKey:@"PortDeviceIdentifier"];
          [v78 setValue:v39 forKey:@"PortName"];
          [v78 setValue:*type forKey:@"PortID"];
          [v78 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", VADEndpointTypeForPort), @"PortType"}];
          [v78 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", v92), @"OldPort"}];
          [v78 setValue:a2 forKey:@"RoutingContextUUID"];
          if (v69)
          {
            if ([+[MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:"]
            {
              if (v90)
              {
                CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(a1, 2);
              }

              else
              {
                CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(a1, 0, a2, 1);
              }
            }

            v81 = CFArrayCreate(0, type, 1, MEMORY[0x1E695E9C0]);
            [v78 setValue:v81 forKey:@"WirelessPorts"];
            if (v81)
            {
              CFRelease(v81);
            }

            v82 = +[MX_BannerManager sharedInstance];
            v99[0] = MEMORY[0x1E69E9820];
            v99[1] = 3221225472;
            v99[2] = __FigRoutingManagerProcessCustomizedRouting_block_invoke_72;
            v99[3] = &unk_1E7AEB5C8;
            v100 = v88;
            v99[4] = v78;
            [(MX_BannerManager *)v82 promptUserResponseForRoute:v78 connectHandler:v99];
          }

          else
          {
            if (v90)
            {
              CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(a1, 1);
            }

            else
            {
              CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(a1, 0, a2, 0);
              v79 = routingManager_copyPickedEndpointsFromCurrentRoutesInfo(a2);
              v80 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v79, 0);
              FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, v79, @"configUpdateReasonEndedSuccess", 0, v80);
              if (v80)
              {
                CFRelease(v80);
              }

              if (v79)
              {
                CFRelease(v79);
              }
            }

            [+[MX_BannerManager sharedInstance](MX_BannerManager promptUserResponseForUndoRoute:"promptUserResponseForUndoRoute:undoHandler:" undoHandler:v78, &__block_literal_global_42];
          }
        }
      }

      else if (v90)
      {
        CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(a1, 1);
      }

      else
      {
        CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(a1, 0, a2, 0);
        v57 = routingManager_copyPickedEndpointsFromCurrentRoutesInfo(a2);
        v58 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v57, 0);
        FigRoutingManagerContextUtilities_SetPickedEndpoints(a2, v57, @"configUpdateReasonEndedSuccess", 0, v58);
        if (v58)
        {
          CFRelease(v58);
        }

        if (v57)
        {
          CFRelease(v57);
        }
      }

      if (v39)
      {
        CFRelease(v39);
      }

      if (v97)
      {
        CFRelease(v97);
      }

      if (v38)
      {
        CFRelease(v38);
      }

      if (v94)
      {
        CFRelease(v94);
      }

      v10 = v95 + 1;
    }

    while (Count != v95 + 1);
  }
}

void __FigRoutingManagerProcessCustomizedRouting_block_invoke(CFTypeRef a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    a1 = CFRetain(cf);
  }

  if (a3)
  {
    a1 = CFRetain(a3);
  }

  v5 = MXGetSerialQueue(a1, cf);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FigRoutingManagerProcessCustomizedRouting_block_invoke_2;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = cf;
  v6[5] = a3;
  MXDispatchAsync("FigRoutingManagerProcessCustomizedRouting_block_invoke", "FigRoutingManager_iOS.m", 1301, 0, 0, v5, v6);
}

void __FigRoutingManagerProcessCustomizedRouting_block_invoke_2(uint64_t a1)
{
  cf[23] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_1EB75DF20 == 0;
  }

  if (!v3)
  {
    LODWORD(cf[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v8 = *MEMORY[0x1E695E480];
      v17 = *MEMORY[0x1E69621E8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v7);
        cf[0] = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v11(CMBaseObject, 0x1F289CDB0, v8, cf);
        }

        if (cf[0])
        {
          CMSMVAUtility_GetPortFromCFNumber(cf[0]);
          if (cf[0])
          {
            CFRelease(cf[0]);
            cf[0] = 0;
          }
        }

        *type = 0;
        v12 = FigEndpointGetCMBaseObject();
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          v13(v12, v17, v8, type);
        }

        FigRoutingManager_iOSAddEndpointToContext(*(a1 + 40), ValueAtIndex, 0);
        if (dword_1EB75DF20)
        {
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (*type)
        {
          CFRelease(*type);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    CFRelease(v16);
  }
}

uint64_t FigRoutingManager_iOSAddEndpointToContext(const void *a1, const void *a2, CFDictionaryRef theDict)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v3 = 4294954296;
  if (!a1 || !a2)
  {
    return v3;
  }

  v6 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(theDict);
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_IsAddOperation", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", v9);
  IsMandrakeEverywhereEnabled = MX_FeatureFlags_IsMandrakeEverywhereEnabled();
  v11 = MEMORY[0x1E695E4C0];
  if (IsMandrakeEverywhereEnabled || MX_FeatureFlags_IsMandrakeEverywhereEnabled())
  {
    Value = FigCFDictionaryGetValue();
    v13 = *v11;
    if (Value)
    {
      v14 = Value;
    }

    else
    {
      v14 = v13;
    }

    CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_IsPredictedRouteOperation", v14);
  }

  else
  {
    v13 = *v11;
  }

  FigRoutingManagerLogEndpointID(@"Adding endpoint=", a2, 0, 1);
  v97 = v13;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(CMBaseObject, *MEMORY[0x1E6962190], v7, &v97);
  }

  v96 = v13;
  v17 = FigEndpointGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v18(v17, *MEMORY[0x1E6962110], v7, &v96);
  }

  v95 = 0;
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType == 1)
  {
    if (routingManager_doesEndpointRepresentBluetoothRoute(a2) && routingManager_isSystemMusicOnlyRoutedToLocalHomeTheaterEndpoint())
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v104) = 0;
        v103[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v28 = v104;
        v29 = v103[0];
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v103[0]))
        {
          v30 = v28;
        }

        else
        {
          v30 = v28 & 0xFFFFFFFE;
        }

        if (v30)
        {
          v105 = 136315395;
          v106 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
          v107 = 2113;
          v108 = a1;
          _os_log_send_and_compose_impl(v30, 0, cf, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v29, "-FigRoutingManager_iOS- %s: '%{private}@' Odeon is routed to system music context, BT was requested to be added on system audio. Make system music follow system audio.", &v105, 22);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cf[0] = 0;
      FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(cf);
      FigRoutingContextUtilities_SetLeaderToSystemAudioContext(cf[0], 0);
      FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v95);
      v50 = cf[0];
      if (cf[0])
      {
        goto LABEL_99;
      }
    }

    goto LABEL_100;
  }

  if (ContextType != 4)
  {
    if (ContextType != 3)
    {
      goto LABEL_100;
    }

    if (!FigRoutingManagerIsEndpointWHAGroupable(a2))
    {
      if (FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
      {
        if (dword_1EB75DF20)
        {
          LODWORD(v104) = 0;
          v103[0] = OS_LOG_TYPE_DEFAULT;
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v32 = v104;
          v33 = v103[0];
          if (os_log_type_enabled(v31, v103[0]))
          {
            v34 = v32;
          }

          else
          {
            v34 = v32 & 0xFFFFFFFE;
          }

          if (v34)
          {
            v105 = 136315395;
            v106 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
            v107 = 2113;
            v108 = a1;
            _os_log_send_and_compose_impl(v34, 0, cf, 128, &dword_1B17A2000, v31, v33, "-FigRoutingManager_iOS- %s: '%{private}@' SystemMusic is following another routingContext; picking on that instead.", &v105, 22);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &v95);
      }

      else
      {
        if (!FigRoutingManagerIsEndpointOfType(a2, *MEMORY[0x1E69626B8]))
        {
          goto LABEL_62;
        }

        cf[0] = v13;
        v43 = *MEMORY[0x1E6962130];
        v44 = FigEndpointGetCMBaseObject();
        CMBaseObjectCopyProperty(v44, v43, v7, cf);
        v45 = cf[0];
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v45 == v13)
        {
          if (dword_1EB75DF20)
          {
            LODWORD(v104) = 0;
            v103[0] = OS_LOG_TYPE_DEFAULT;
            v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v56 = v104;
            v57 = v103[0];
            if (os_log_type_enabled(v55, v103[0]))
            {
              v58 = v56;
            }

            else
            {
              v58 = v56 & 0xFFFFFFFE;
            }

            if (v58)
            {
              v105 = 136315138;
              v106 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
              _os_log_send_and_compose_impl(v58, 0, cf, 128, &dword_1B17A2000, v55, v57, "-FigRoutingManager_iOS- %s: Keeping system music independent until route changes to the nearby BT device", &v105);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
LABEL_62:
          if (dword_1EB75DF20)
          {
            LODWORD(v104) = 0;
            v103[0] = OS_LOG_TYPE_DEFAULT;
            v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v47 = v104;
            v48 = v103[0];
            if (os_log_type_enabled(v46, v103[0]))
            {
              v49 = v47;
            }

            else
            {
              v49 = v47 & 0xFFFFFFFE;
            }

            if (v49)
            {
              v105 = 136315395;
              v106 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
              v107 = 2113;
              v108 = a1;
              _os_log_send_and_compose_impl(v49, 0, cf, 128, &dword_1B17A2000, v46, v48, "-FigRoutingManager_iOS- %s: '%{private}@' System music context now following systemAudio because a non-groupable route was requested to be added.", &v105, 22);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
        }

        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v95);
      }

      goto LABEL_100;
    }

    v104 = 0;
    FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, &v104);
    *v103 = 0;
    v20 = FigEndpointGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(v20, *MEMORY[0x1E6962270], v7, v103);
    }

    shouldSystemMusicFollowSystemAudio = routingManager_shouldSystemMusicFollowSystemAudio(*v103, a2);
    if (FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
    {
      if (shouldSystemMusicFollowSystemAudio)
      {
        if (dword_1EB75DF20)
        {
          LODWORD(v102) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v24 = v102;
          v25 = type[0];
          if (os_log_type_enabled(v23, type[0]))
          {
            v26 = v24;
          }

          else
          {
            v26 = v24 & 0xFFFFFFFE;
          }

          if (v26)
          {
            v105 = 136315395;
            v106 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
            v107 = 2113;
            v108 = a1;
            _os_log_send_and_compose_impl(v26, 0, cf, 128, &dword_1B17A2000, v23, v25, "-FigRoutingManager_iOS- %s: '%{private}@' System music should follow system audio, picking on that instead", &v105, 22);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &v95);
        goto LABEL_96;
      }

      if (dword_1EB75DF20)
      {
        LODWORD(v102) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v40 = v102;
        v41 = type[0];
        if (os_log_type_enabled(v39, type[0]))
        {
          v42 = v40;
        }

        else
        {
          v42 = v40 & 0xFFFFFFFE;
        }

        if (v42)
        {
          v105 = 136315395;
          v106 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
          v107 = 2113;
          v108 = a1;
          _os_log_send_and_compose_impl(v42, 0, cf, 128, &dword_1B17A2000, v39, v41, "-FigRoutingManager_iOS- %s: '%{private}@' System music context should become independent", &v105, 22);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingContextUtilities_UnfollowUUIDFromLeader(a1, 0);
    }

    else
    {
      if (shouldSystemMusicFollowSystemAudio)
      {
        if (dword_1EB75DF20)
        {
          LODWORD(v102) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v36 = v102;
          v37 = type[0];
          if (os_log_type_enabled(v35, type[0]))
          {
            v38 = v36;
          }

          else
          {
            v38 = v36 & 0xFFFFFFFE;
          }

          if (v38)
          {
            v105 = 136315395;
            v106 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
            v107 = 2113;
            v108 = a1;
            _os_log_send_and_compose_impl(v38, 0, cf, 128, &dword_1B17A2000, v35, v37, "-FigRoutingManager_iOS- %s: '%{private}@' System music context now following systemAudio because request was made to route to self only local AirPlay route.", &v105, 22);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingContextUtilities_SetLeaderToSystemAudioContext(a1, 0);
        FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v95);
LABEL_96:
        if (v104)
        {
          CFRelease(v104);
          v104 = 0;
        }

        v50 = *v103;
        if (*v103)
        {
LABEL_99:
          CFRelease(v50);
        }

LABEL_100:
        if (v95)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (dword_1EB75DF20)
      {
        LODWORD(v102) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v52 = v102;
        v53 = type[0];
        if (os_log_type_enabled(v51, type[0]))
        {
          v54 = v52;
        }

        else
        {
          v54 = v52 & 0xFFFFFFFE;
        }

        if (v54)
        {
          v105 = 136315138;
          v106 = "routingManager_validateAndCopyLeaderContextForAddingEndpoint";
          _os_log_send_and_compose_impl(v54, 0, cf, 128, &dword_1B17A2000, v51, v53, "-FigRoutingManager_iOS- %s: system music is independent, continue picking on system music", &v105);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v95 = CFRetain(a1);
    goto LABEL_96;
  }

  v95 = CFRetain(a1);
  if (v95)
  {
    goto LABEL_102;
  }

LABEL_101:
  v95 = CFRetain(a1);
LABEL_102:
  v59 = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (v59 == 1)
  {
    v61 = v95;
    if (v96 == v9)
    {
      goto LABEL_107;
    }

LABEL_112:
    v62 = routingManager_preprocessPickEndpoint(a2, a1, v61, v6, Mutable);
    goto LABEL_113;
  }

  if (v59 != 4)
  {
    if (v59 != 3)
    {
LABEL_144:
      v3 = 0;
      goto LABEL_145;
    }

    if (v97 == v9)
    {
      v67 = v95;
      v104 = 0;
      v68 = *MEMORY[0x1E69621E8];
      v69 = FigEndpointGetCMBaseObject();
      v70 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v70)
      {
        v70(v69, v68, v7, &v104);
      }

      v71 = FigRoutingManagerCopyRoutingContextOptionsWithRouteRequestID(v6);
      FigRoutingManagerLogRoutingRequestDetails(@"preprocessAddAirPlayEndpoint - ", a2, 0, 0, v67, v71);
      *v103 = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, v103);
      v72 = *v103;
      if (!*v103 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v72 = 0;
      }

      if (FigRoutingManagerIsEndpointPresentInAggregate(a2, v72))
      {
        IsSystemAudioRouteAirPlayLowLatency = FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency();
        if (!FigRoutingManagerUtilities_IsSystemAudioRouteWHAGroupableLocal())
        {
          if (FigRoutingManagerIsEndpointSelfOnlyLocalAirPlay(a2))
          {
            if (dword_1EB75DF20)
            {
              LODWORD(v102) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v75 = v102;
              v76 = type[0];
              if (os_log_type_enabled(v74, type[0]))
              {
                v77 = v75;
              }

              else
              {
                v77 = v75 & 0xFFFFFFFE;
              }

              if (v77)
              {
                v105 = 136315138;
                v106 = "routingManager_preprocessAddAirPlayEndpoint";
                _os_log_send_and_compose_impl(v77, 0, cf, 128, &dword_1B17A2000, v74, v76, "-FigRoutingManager_iOS- %s: call to routeToWHAGroupableVAEndpoint because self-only local AirPlay endpoint is already in the aggregate, but system audio is routed to non-WHA groupable route", &v105);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            routingManager_routeToWHAGroupableVAEndpoint(v6, Mutable);
          }

          else if (FigRoutingManagerIsClusterLocalEndpoint(a2) && !IsSystemAudioRouteAirPlayLowLatency)
          {
            if (dword_1EB75DF20)
            {
              LODWORD(v102) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v80 = v102;
              v81 = type[0];
              if (os_log_type_enabled(v79, type[0]))
              {
                v82 = v80;
              }

              else
              {
                v82 = v80 & 0xFFFFFFFE;
              }

              if (v82)
              {
                v105 = 136315138;
                v106 = "routingManager_preprocessAddAirPlayEndpoint";
                _os_log_send_and_compose_impl(v82, 0, cf, 128, &dword_1B17A2000, v79, v81, "-FigRoutingManager_iOS- %s: call to routingManager_routeToLowLatencyAirPlay because local cluster AirPlay endpoint is already in the aggregate, but system audio is not routed to low latency AirPlay", &v105);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            routingManager_routeToLowLatencyAirPlay(v6);
          }
        }

        FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v67, v71, @"configUpdateReasonEndedSuccess");
        v3 = 0;
      }

      else
      {
        FigRoutingManagerContextUtilities_SetPickingState(v67, 1);
        *type = 0;
        v102 = 0;
        FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(&v102, type, 0);
        if (v102 && *type && !FigCFEqual())
        {
          v100 = 0;
          v83 = FigEndpointGetCMBaseObject();
          VTable = CMBaseObjectGetVTable();
          v87 = *(VTable + 8);
          v86 = VTable + 8;
          v88 = *(v87 + 48);
          if (v88)
          {
            v86 = v88(v83, v68, v7, &v100);
          }

          if (FigRoutingManagerUtilities_IsCurrentRouteHandoff(v86, v85))
          {
            v3 = 0;
          }

          else
          {
            FigRoutingManagerContextUtilities_SetPickingState(v67, 2);
            CMSMAP_MakeAirPlayHandOffPortRoutable(1, v67);
            if (dword_1EB75DF20)
            {
              v99 = 0;
              v98 = OS_LOG_TYPE_DEFAULT;
              v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v91 = v99;
              v92 = v98;
              if (os_log_type_enabled(v90, v98))
              {
                v93 = v91;
              }

              else
              {
                v93 = v91 & 0xFFFFFFFE;
              }

              if (v93)
              {
                v105 = 136315650;
                v106 = "routingManager_preprocessAddAirPlayEndpoint";
                v107 = 2114;
                v108 = v100;
                v109 = 2114;
                v110 = v104;
                LODWORD(v94) = 32;
                _os_log_send_and_compose_impl(v93, 0, cf, 128, &dword_1B17A2000, v90, v92, "-FigRoutingManager_iOS- %s: Going to deactivate endpoint with name=%{public}@ before adding endpoint with names=%{public}@", &v105, v94);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            FigRoutingManagerDeactivateEndpointFromPickedContexts(v102, v89, 1, @"configUpdateReasonEndedSuccess");
            v3 = routingManager_processAddAirPlayEndpoint(a2, a1, v67, v71, Mutable);
          }

          if (v100)
          {
            CFRelease(v100);
          }
        }

        else
        {
          v3 = routingManager_processAddAirPlayEndpoint(a2, a1, v67, v71, Mutable);
        }

        if (v102)
        {
          CFRelease(v102);
          v102 = 0;
        }

        if (*type)
        {
          CFRelease(*type);
        }
      }

      if (*v103)
      {
        CFRelease(*v103);
        *v103 = 0;
      }

      if (v71)
      {
        CFRelease(v71);
      }

      if (v104)
      {
        CFRelease(v104);
      }

      goto LABEL_145;
    }

    v60 = v96;
    routingManager_emptyAggregateEndpointIfNecessary(a2, a1);
    v61 = v95;
    if (v60 == v9)
    {
LABEL_107:
      routingManager_preprocessAddBluetoothEndpoint(a2, a1, v61, v6, Mutable);
      goto LABEL_144;
    }

    goto LABEL_112;
  }

  if (!CMSMDeviceState_IsHomePodHub())
  {
    if (dword_1EB75DF20)
    {
      LODWORD(v104) = 0;
      v103[0] = OS_LOG_TYPE_DEFAULT;
      v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v64 = v104;
      v65 = v103[0];
      if (os_log_type_enabled(v63, v103[0]))
      {
        v66 = v64;
      }

      else
      {
        v66 = v64 & 0xFFFFFFFE;
      }

      if (v66)
      {
        v105 = 136315138;
        v106 = "FigRoutingManager_iOSAddEndpointToContext";
        _os_log_send_and_compose_impl(v66, 0, cf, 128, &dword_1B17A2000, v63, v65, "-FigRoutingManager_iOS- %s: Multiple Now Players is not supported", &v105);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_144;
  }

  if (v97 != v9)
  {
    FigRoutingManagerLogEndpointID(@"Notifying clients of failure because the following endpoint is not WHA groupable ", a2, 0, 1);
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v6, @"configUpdateReasonStarted");
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(a1, v6, @"configUpdateReasonEndedFailed");
    goto LABEL_144;
  }

  v62 = MXAudioContext_HandleAddEndpoint(a2, a1, v6, Mutable);
LABEL_113:
  v3 = v62;
LABEL_145:
  if (v95)
  {
    CFRelease(v95);
    v95 = 0;
  }

  if (v96)
  {
    CFRelease(v96);
    v96 = 0;
  }

  if (v97)
  {
    CFRelease(v97);
    v97 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

void __FigRoutingManagerProcessCustomizedRouting_block_invoke_72(_BYTE *a1, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4)
{
  v7 = a1;
  if (cf)
  {
    a1 = CFRetain(cf);
  }

  if (a3)
  {
    a1 = CFRetain(a3);
  }

  if (a4)
  {
    a1 = CFRetain(a4);
  }

  v8 = MXGetSerialQueue(a1, cf);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FigRoutingManagerProcessCustomizedRouting_block_invoke_2_73;
  v9[3] = &unk_1E7AEB5A0;
  v10 = v7[40];
  v9[6] = a3;
  v9[7] = a4;
  v9[4] = *(v7 + 4);
  v9[5] = cf;
  MXDispatchAsync("FigRoutingManagerProcessCustomizedRouting_block_invoke", "FigRoutingManager_iOS.m", 1380, 0, 0, v8, v9);
}

void __FigRoutingManagerProcessCustomizedRouting_block_invoke_2_73(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  if (v2 == 1)
  {
    CMSMVAUtility_RouteDefaultVADToCarPlayIfNecessary(v3, 1);
  }

  else
  {
    CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(v3, *(a1 + 48), *(a1 + 56), 0);
    v4 = routingManager_copyPickedEndpointsFromCurrentRoutesInfo(*(a1 + 56));
    v5 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v4, 0);
    FigRoutingManagerContextUtilities_SetPickedEndpoints(*(a1 + 56), v4, @"configUpdateReasonEndedSuccess", 0, v5);
    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[MX_BannerManager sharedInstance](MX_BannerManager promptUserResponseForUndoRoute:"promptUserResponseForUndoRoute:undoHandler:" undoHandler:*(a1 + 32), &__block_literal_global_76_1];
  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }
}

void __FigRoutingManagerProcessCustomizedRouting_block_invoke_74(CFTypeRef a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    a1 = CFRetain(cf);
  }

  if (a3)
  {
    a1 = CFRetain(a3);
  }

  v5 = MXGetSerialQueue(a1, cf);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FigRoutingManagerProcessCustomizedRouting_block_invoke_2_77;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = cf;
  v6[5] = a3;
  MXDispatchAsync("FigRoutingManagerProcessCustomizedRouting_block_invoke", "FigRoutingManager_iOS.m", 1408, 0, 0, v5, v6);
}

void __FigRoutingManagerProcessCustomizedRouting_block_invoke_2_77(uint64_t a1)
{
  cf[23] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_1EB75DF20 == 0;
  }

  if (!v3)
  {
    LODWORD(cf[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v8 = *MEMORY[0x1E695E480];
      v17 = *MEMORY[0x1E69621E8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v7);
        cf[0] = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v11(CMBaseObject, 0x1F289CDB0, v8, cf);
        }

        if (cf[0])
        {
          CMSMVAUtility_GetPortFromCFNumber(cf[0]);
          if (cf[0])
          {
            CFRelease(cf[0]);
            cf[0] = 0;
          }
        }

        *type = 0;
        v12 = FigEndpointGetCMBaseObject();
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          v13(v12, v17, v8, type);
        }

        FigRoutingManager_iOSAddEndpointToContext(*(a1 + 40), ValueAtIndex, 0);
        if (dword_1EB75DF20)
        {
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (*type)
        {
          CFRelease(*type);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    CFRelease(v16);
  }
}

void FigRoutingManagerNewWirelessPortsAdded(const __CFArray *a1)
{
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyAllRoutingContextUUIDs(&theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E69626C0];
      v6 = *MEMORY[0x1E69626B8];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        if (FigRoutingManagerContextUtilities_GetContextType(ValueAtIndex) != 2 || !MXSystemMirroring_IsTestCodeEnabled())
        {
          break;
        }

        MXSystemMirroring_HandleNewWirelessPorts(a1, ValueAtIndex);
LABEL_33:
        if (++v4 == v3)
        {
          goto LABEL_57;
        }
      }

      cf = 0;
      FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(ValueAtIndex, &cf);
      v28 = 0;
      FigRoutingManagerContextUtilities_CopyCurrentlyActivatingEndpoints(ValueAtIndex, &v28);
      v27 = 0;
      FigRoutingManagerContextUtilities_GetPickingState(ValueAtIndex, &v27);
      if (FigRoutingManagerAreAllEndpointsBluetoothShareable(v28) && v28 && CFArrayGetCount(v28) >= 2)
      {
        for (i = 0; ; ++i)
        {
          v9 = v28;
          if (v28)
          {
            v9 = CFArrayGetCount(v28);
          }

          if (i >= v9)
          {
            v11 = 1;
            goto LABEL_28;
          }

          v10 = CFArrayGetValueAtIndex(v28, i);
          if (!CMSMVAUtility_IsA2DPPortAvailableForEndpoint(v10, 0))
          {
            break;
          }

          FigRoutingManagerContextUtilities_SetPickingState(ValueAtIndex, 6);
        }

        v11 = 1;
        v12 = 5;
        goto LABEL_27;
      }

      if (v27 == 8)
      {
        if (CMSMVAUtility_IsPortAvailableForEndpoint(cf, a1))
        {
          IsEndpointOfType = FigRoutingManagerIsEndpointOfType(cf, v5);
          if (IsEndpointOfType)
          {
            FigRoutingManagerStopCarPlayAudioMainPortPublishedCheckTimer(IsEndpointOfType, v14);
          }

          v11 = 0;
          v12 = 9;
LABEL_27:
          FigRoutingManagerContextUtilities_SetPickingState(ValueAtIndex, v12);
LABEL_28:
          FigRoutingManagerContextUtilities_GetPickingState(ValueAtIndex, &v27);
          if ((v27 - 5) < 2)
          {
LABEL_29:
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (v28)
            {
              CFRelease(v28);
            }

            goto LABEL_33;
          }

          if (v27 == 9)
          {
            if (v11)
            {
              FigRoutingManagerEnableBluetoothSharingSession(ValueAtIndex, v28);
              goto LABEL_29;
            }

            if (FigRoutingManagerIsEndpointOfType(cf, v6))
            {
              FigRoutingManagerRouteToBluetoothDevice(ValueAtIndex, cf);
              goto LABEL_29;
            }

            v26 = 0;
            FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(ValueAtIndex, cf, &v26);
            v25 = 0;
            FigRoutingManagerContextUtilities_GetActivatedEndpointFeatures(ValueAtIndex, cf, &v25);
            theDict = 0;
            FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpointInfo(ValueAtIndex, &theDict);
            if (theDict)
            {
              Value = CFDictionaryGetValue(theDict, @"CurrentlyActivatingEndpointsInfo_ClientRouteChangeOptions");
              CFDictionaryGetValue(theDict, @"CurrentlyActivatingEndpointsInfo_InternalRouteChangeOptions");
            }

            else
            {
              Value = 0;
            }

            FigRoutingManager_iOSHandleFigEndpointFeaturesActivation(cf, v25, v26, ValueAtIndex, Value);
            v20 = theDict;
            if (!theDict)
            {
              goto LABEL_29;
            }

LABEL_56:
            CFRelease(v20);
            goto LABEL_29;
          }

          if (FigRoutingManagerContextUtilities_GetContextType(ValueAtIndex) != 1)
          {
            goto LABEL_29;
          }

          v15 = CMSMVAUtility_CopyWirelessPortsToEnableBluetoothSharing(a1);
          v17 = v15;
          if (v15 && (v15 = CFArrayGetCount(v15), v15 >= 1))
          {
            CMSMVAUtility_AggregatePorts(v17, 0, ValueAtIndex);
          }

          else
          {
            if (MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled(v15, v16))
            {
              FigRoutingManagerProcessCustomizedRouting(a1, ValueAtIndex);
LABEL_52:
              if (!v17)
              {
                goto LABEL_29;
              }

              v20 = v17;
              goto LABEL_56;
            }

            CMSMVAUtility_MakeNewlyConnectedWirelessPortsRoutableForEndpoint(a1, cf, ValueAtIndex, 0);
            if (!v17)
            {
LABEL_50:
              v17 = routingManager_copyPickedEndpointsFromCurrentRoutesInfo(ValueAtIndex);
              v19 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(v17, 0);
              FigRoutingManagerContextUtilities_SetPickedEndpoints(ValueAtIndex, v17, @"configUpdateReasonEndedSuccess", 0, v19);
              if (v19)
              {
                CFRelease(v19);
              }

              goto LABEL_52;
            }
          }

          CFRelease(v17);
          goto LABEL_50;
        }
      }

      else if (v27 == 5)
      {
        v11 = 0;
        if (!CMSMVAUtility_IsPortAvailableForEndpoint(cf, a1))
        {
          goto LABEL_28;
        }

        v12 = 6;
        goto LABEL_27;
      }

      v11 = 0;
      goto LABEL_28;
    }
  }

LABEL_57:
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
  MusicVADIfNeeded = CMSMVAUtility_CreateMusicVADIfNeeded(a1, cf);
  if (*(FigRoutingManagerGetSharedManager(MusicVADIfNeeded, v22) + 40))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"crossfadePlayback", *MEMORY[0x1E695E4D0]);
    FigRoutingManagerCrossfadePlayback(0, Mutable, 0, 0);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void FigRoutingManagerCopyAirPlayEndpointsInUseForFeatures(uint64_t a1, CFMutableArrayRef *a2, CFMutableArrayRef *a3, CFMutableArrayRef *a4, CFMutableArrayRef *a5)
{
  v5 = a5;
  v7 = a3;
  if (a2 || a3 || a4 || a5)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v12 = CFArrayCreateMutable(v9, 0, v10);
    v13 = CFArrayCreateMutable(v9, 0, v10);
    v14 = CFArrayCreateMutable(v9, 0, v10);
    theDict = 0;
    FigRoutingManagerContextUtilities_CopyNonControlPickedContexts(&theDict);
    if (theDict)
    {
      v37 = v7;
      v38 = v5;
      v42 = v14;
      v43 = v12;
      theArray = Mutable;
      Count = CFDictionaryGetCount(theDict);
      v16 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(theDict, v16, 0);
      v41 = Count;
      if (Count >= 1)
      {
        v17 = 0;
        v18 = *MEMORY[0x1E69626A8];
        v39 = v16;
        v40 = v13;
        do
        {
          v19 = v16[v17];
          Value = CFDictionaryGetValue(theDict, v19);
          v21 = CFDictionaryGetValue(Value, @"CurrentlyActivatingEndpointsInfo");
          if (v21)
          {
            v22 = v21;
            v23 = CFArrayGetCount(v21);
            if (v23 >= 1)
            {
              v24 = v23;
              for (i = 0; i != v24; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v22, i);
                v27 = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_Endpoint");
                if (v27)
                {
                  v28 = v27;
                  if (FigRoutingManagerIsEndpointOfType(v27, v18))
                  {
                    CFArrayAppendValue(theArray, v28);
                    CFArrayAppendValue(v43, v19);
                  }
                }
              }
            }
          }

          v29 = CFDictionaryGetValue(Value, @"ActivatedEndpointsInfo");
          v13 = v40;
          if (v29)
          {
            v30 = v29;
            v31 = CFArrayGetCount(v29);
            if (v31 >= 1)
            {
              v32 = v31;
              for (j = 0; j != v32; ++j)
              {
                v34 = CFArrayGetValueAtIndex(v30, j);
                v35 = CFDictionaryGetValue(v34, @"ActivatedEndpointsInfo_Endpoint");
                if (v35)
                {
                  v36 = v35;
                  if (FigRoutingManagerIsEndpointOfType(v35, v18))
                  {
                    CFArrayAppendValue(v40, v36);
                    CFArrayAppendValue(v42, v19);
                  }
                }
              }
            }
          }

          ++v17;
          v16 = v39;
        }

        while (v17 != v41);
      }

      v5 = v38;
      v12 = v43;
      Mutable = theArray;
      v14 = v42;
      v7 = v37;
      if (v16)
      {
        free(v16);
      }
    }

    if (a2)
    {
      *a2 = Mutable;
      Mutable = 0;
    }

    if (v7)
    {
      *v7 = v12;
      v12 = 0;
    }

    if (a4)
    {
      *a4 = v13;
      v13 = 0;
    }

    if (v5)
    {
      *v5 = v14;
      v14 = 0;
    }

    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

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
  }
}

uint64_t FigRoutingManagerPostProcessPickEndpoint(const void *a1, uint64_t a2)
{
  v34[21] = *MEMORY[0x1E69E9840];
  v28 = FigRoutingManagerContextUtilities_SetPickingState(a2, 10);
  v34[0] = 0;
  v4 = MEMORY[0x1E69626A8];
  v5 = MEMORY[0x1E695E480];
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E69620F8], *v5, v34);
    }

    IsEndpointOfType = FigRoutingManagerIsEndpointOfType(a1, *v4);
    if (IsEndpointOfType)
    {
      SharedManager = FigRoutingManagerGetSharedManager(IsEndpointOfType, v9);
      CFRetain(a1);
      v11 = *(SharedManager + 1);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __FigRoutingManagerPostProcessPickEndpoint_block_invoke;
      v33[3] = &__block_descriptor_40_e5_v8__0l;
      v33[4] = a1;
      MXDispatchAsync("FigRoutingManagerPostProcessPickEndpoint", "FigRoutingManager_iOS.m", 2816, 0, 0, v11, v33);
    }
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo(a2, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v13 = Count;
      v14 = 0;
      v15 = *v4;
      v29 = *MEMORY[0x1E69626C0];
      v25 = *MEMORY[0x1E69626C8];
      v26 = *v5;
      v27 = *MEMORY[0x1E69621E8];
      v16 = &qword_1EB75D000;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
        Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint");
        if (Value != a1)
        {
          v19 = Value;
          if (!FigEndpointUtility_EndpointPredicate_ContainsID() && (FigRoutingManagerIsEndpointOfType(v19, v15) || FigRoutingManagerIsEndpointOfType(v19, v29) || FigRoutingManagerIsEndpointOfType(v19, v25)) && (FigRoutingManagerIsEndpointOfType(v19, v15) || (FigRoutingManagerIsEndpointOfType(v19, v29) || FigRoutingManagerIsEndpointOfType(v19, v25)) && FigRoutingManagerIsEndpointOfType(a1, v15)))
          {
            v31 = 0;
            FigCFDictionaryGetInt64IfPresent();
            cf = 0;
            v20 = FigEndpointGetCMBaseObject();
            v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v21)
            {
              v21(v20, v27, v26, &cf);
            }

            if (dword_1EB75DF20)
            {
              v22 = v16;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              v16 = v22;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            FigRoutingManager_iOSDeactivateEndpoint(v19, v31, 0);
            if (cf)
            {
              CFRelease(cf);
            }
          }
        }

        ++v14;
      }

      while (v13 != v14);
    }
  }

  FigRoutingContextUtilities_LogCurrentState();
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (v34[0])
  {
    CFRelease(v34[0]);
  }

  return v28;
}

void __FigRoutingManagerPostProcessPickEndpoint_block_invoke(uint64_t a1, uint64_t a2)
{
  FigRoutingManagerStopDeactivateAirPlayEndpointTimer(a1, a2);
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void FigRoutingManagerDeactivateEndpointFromPickedContexts(const void *a1, uint64_t a2, int a3, uint64_t a4)
{
  theDict[21] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1;
    theDict[0] = 0;
    FigRoutingManagerContextUtilities_CopyNonControlPickedContexts(theDict);
    if (FigCFDictionaryGetCount() >= 1)
    {
      Count = CFDictionaryGetCount(theDict[0]);
      v6 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(theDict[0], v6, 0);
      v29 = Count;
      if (Count >= 1)
      {
        v7 = 0;
        v8 = *MEMORY[0x1E69622F8];
        v9 = *MEMORY[0x1E695E480];
        v27 = *MEMORY[0x1E69621E8];
        v28 = v6;
        v31 = v4;
        do
        {
          v32 = v7;
          v10 = v6[v7];
          ContextType = FigRoutingManagerContextUtilities_GetContextType(v10);
          v33 = v10;
          Value = CFDictionaryGetValue(theDict[0], v10);
          v13 = CFDictionaryGetValue(Value, @"ActivatedEndpointsInfo");
          if (v13)
          {
            v14 = v13;
            v15 = CFArrayGetCount(v13);
            if (v15 >= 1)
            {
              v16 = v15;
              v17 = 0;
              v35 = ContextType & 0xFFFFFFFB;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
                v19 = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint");
                v38 = 0;
                FigCFDictionaryGetInt64IfPresent();
                v37 = 0;
                CMBaseObject = FigEndpointGetCMBaseObject();
                v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v21)
                {
                  v21(CMBaseObject, v8, v9, &v37);
                }

                if (FigCFEqual() && v19 == v4 && !MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed())
                {
                  cf = 0;
                  v22 = FigEndpointGetCMBaseObject();
                  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v23)
                  {
                    v23(v22, v27, v9, &cf);
                  }

                  if (dword_1EB75DF20)
                  {
                    v24 = v9;
                    v25 = v8;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v8 = v25;
                    v9 = v24;
                    v4 = v31;
                  }

                  FigRoutingManager_iOSDeactivateEndpoint(v19, v38, a3);
                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  if (v35 == 2)
                  {
                    FigRoutingManagerContextUtilities_SetPickedEndpoints(v33, 0, a4, 0, 0);
                  }
                }

                if (v37)
                {
                  CFRelease(v37);
                }

                ++v17;
              }

              while (v16 != v17);
            }
          }

          v7 = v32 + 1;
          v6 = v28;
        }

        while (v32 + 1 != v29);
      }

      if (v6)
      {
        free(v6);
      }
    }

    if (theDict[0])
    {
      CFRelease(theDict[0]);
    }
  }
}