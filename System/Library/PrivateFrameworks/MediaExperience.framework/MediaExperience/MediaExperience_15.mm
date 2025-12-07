uint64_t cmsmGetAudioDeviceStart()
{
  state64 = 0;
  if (notify_get_state(_MergedGlobals_13, &state64))
  {
    return gAudioDeviceStartCached;
  }

  result = state64 != 0;
  gAudioDeviceStartCached = state64 != 0;
  return result;
}

void __cmsmTightSyncUUIDChangedCallback_block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v11;
    v4 = &qword_1EB75D000;
    v9 = v0;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ((-[MXSessionManager isAirPlaySession:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isAirPlaySession:", v6) || CMSUtility_GetWantsAutomaticClusterPairingOnPlaybackStart(v6)) && objc_msgSend_isActive(v6) && [v6 isPlaying])
        {
          if (dword_1EB75DE40)
          {
            v7 = v4;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            v4 = v7;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v0 = v9;
          }

          CMSUtilityApplier_PostNotification_StopCommand(v6, 0);
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }
}

void *__cmsmVoiceOverIsOnChangedCallback_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = byte_1EB75E1B8;
  v3 = *(a1 + 32);
  byte_1EB75E1B8 = *(a1 + 32);
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(a1, a2))
  {
    v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyActiveVoiceOverSession];
    [v4 sendSessionConfigurationInfoToVA];
  }

  else
  {
    v5 = [+[MXAdditiveRoutingManager sharedInstance](MXAdditiveRoutingManager sendActiveSessionsInfoToVA];
  }

  result = MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled(v5, v6);
  if (result && v2 != v3)
  {
    [+[MXSessionManager sharedInstance](MXSessionManager startAsyncDuckingOperation];
    [+[MXSessionManager sharedInstance](MXSessionManager updateDuckedSessionsForVoiceOver:"updateDuckedSessionsForVoiceOver:", 0];
    v8 = +[MXSessionManager sharedInstance];

    return [(MXSessionManager *)v8 endAsyncDuckingOperation];
  }

  return result;
}

void *__MediaRemoteLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MediaRemote.framework/MediaRemote", 2);
  MediaRemoteLibrary_sLib = result;
  return result;
}

uint64_t initValkMRMediaRemoteOptionRemoteControlInterfaceIdentifier()
{
  if (MediaRemoteLibrary_sOnce != -1)
  {
    cmsmSendCommandToMediaRemote_cold_1();
  }

  v0 = dlsym(MediaRemoteLibrary_sLib, "kMRMediaRemoteOptionRemoteControlInterfaceIdentifier");
  if (v0)
  {
    result = *v0;
    constantValkMRMediaRemoteOptionRemoteControlInterfaceIdentifier = result;
  }

  else
  {
    result = constantValkMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
  }

  getkMRMediaRemoteOptionRemoteControlInterfaceIdentifier = kMRMediaRemoteOptionRemoteControlInterfaceIdentifierFunction;
  return result;
}

uint64_t initMRMediaRemoteSendCommandToApp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (MediaRemoteLibrary_sOnce != -1)
  {
    cmsmSendCommandToMediaRemote_cold_1();
  }

  v14 = dlsym(MediaRemoteLibrary_sLib, "MRMediaRemoteSendCommandToApp");
  softLinkMRMediaRemoteSendCommandToApp = v14;

  return (v14)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t initMRMediaRemoteGetLocalOrigin()
{
  if (MediaRemoteLibrary_sOnce != -1)
  {
    cmsmSendCommandToMediaRemote_cold_1();
  }

  v0 = dlsym(MediaRemoteLibrary_sLib, "MRMediaRemoteGetLocalOrigin");
  softLinkMRMediaRemoteGetLocalOrigin = v0;

  return v0();
}

uint64_t fsmcontroller_CopyCarModesQueue(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_retain(*(a1 + 16));
  }

  return v1;
}

uint64_t FigStarkModeControllerCreate(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  if (fsm_stateObjectGetTypeID_sRegisterStateOnce != -1)
  {
    FigStarkModeControllerCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.mediaexperience.carmodes", v4);
  Instance[2] = v5;
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  Instance[3] = dispatch_queue_create_with_target_V2("com.apple.mediaexperience.carmodes-request", initially_inactive, v5);
  Instance[15] = CFArrayCreateMutable(v2, 0, 0);
  v7 = MEMORY[0x1E695E9C0];
  Instance[10] = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  Instance[6] = CFArrayCreateMutable(v2, 0, v7);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v15 = 0;
  v14 = 0u;
  v13[5] = 100;
  v13[3] = 0;
  v13[1] = 100;
  Mutable = CFArrayCreateMutable(v2, 0, v7);
  v13[2] = Mutable;
  v13[0] = 0x6400000002;
  v9 = CFArrayCreateMutable(v2, 0, v7);
  v13[6] = v9;
  v13[4] = 0x6400000002;
  v10 = FigStarkModeControllerSetCurrentInternalMode(Instance, v13);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CFRelease(Instance);
    Instance = 0;
  }

  *a1 = Instance;
  return v10;
}

uint64_t fsm_verifyResourceState(uint64_t a1)
{
  if (!*a1)
  {
    return 4294949813;
  }

  if (!*(a1 + 4))
  {
    return 4294950560;
  }

  if (!*(a1 + 8))
  {
    return 4294950559;
  }

  v2 = *(a1 + 16);
  if (v2 && CFArrayGetCount(v2))
  {
    if (!*(a1 + 24))
    {
      return 4294950558;
    }
  }

  else if (*(a1 + 24))
  {
    return 4294949812;
  }

  return 0;
}

CFTypeRef __FigStarkModeControllerSetCurrentInternalMode_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 80) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 48) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 32) = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 104);
  *(v2 + 80) = *(a1 + 88);
  *(v2 + 96) = v7;
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  if (v9)
  {
    v9 = CFRetain(v9);
    v8 = *(a1 + 32);
  }

  *(v8 + 80) = v9;
  v10 = *(a1 + 32);
  result = *(v10 + 48);
  if (result)
  {
    result = CFRetain(result);
    v10 = *(a1 + 32);
  }

  *(v10 + 48) = result;
  return result;
}

void __FigStarkModeControllerSetExecuteChangeHandler_block_invoke(uint64_t a1)
{
  _Block_release(*(*(a1 + 40) + 112));
  v2 = *(a1 + 40);
  v2[14] = *(a1 + 32);

  CFRelease(v2);
}

void __FigStarkModeControllerAddStateChangedHandler_block_invoke(uint64_t a1)
{
  CFArrayAppendValue(*(*(a1 + 32) + 120), *(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void FigStarkModeControllerRemoveStateChangedHandler(CFTypeRef cf, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (cf && a2)
  {
    CFRetain(cf);
    v4 = *(a2 + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigStarkModeControllerRemoveStateChangedHandler_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    v6[4] = cf;
    v6[5] = a2;
    MXDispatchAsync("FigStarkModeControllerRemoveStateChangedHandler", "FigStarkMode.m", 1207, 0, 0, v4, v6);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __FigStarkModeControllerRemoveStateChangedHandler_block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = *(a1 + 32);
  v2 = *(v5 + 16);
  v4[2] = __FigStarkModeControllerRemoveStateChangedHandler_block_invoke_2;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  MXDispatchSync("FigStarkModeControllerRemoveStateChangedHandler_block_invoke", "FigStarkMode.m", 1208, 0, 0, v2, v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }
}

void __FigStarkModeControllerRemoveStateChangedHandler_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v6.length = CFArrayGetCount(v2);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v2, v6, *(a1 + 40));
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(*(a1 + 32) + 120), FirstIndexOfValue);
    v4 = *(a1 + 40);

    CFRelease(v4);
  }
}

uint64_t FigStarkModeControllerGetCurrentMode(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled(a1, a2))
  {
    if (dword_1EB75E258)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v5(a1, a2);
    }
  }

  else
  {
    if (dword_1EB75E258)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fsmcontroller_GetCurrentMode(a1, a2);
  }

  return 0;
}

uint64_t FigStarkModeControllerGetCurrentResourceBorrowConstraint(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigStarkModeControllerGetCurrentResourceBorrowConstraint_block_invoke;
  v5[3] = &unk_1E7AE7140;
  v5[4] = &v6;
  v5[5] = a2;
  v5[6] = a1;
  MXDispatchSync("FigStarkModeControllerGetCurrentResourceBorrowConstraint", "FigStarkMode.m", 1284, 0, 0, v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __FigStarkModeControllerGetCurrentResourceBorrowConstraint_block_invoke(void *a1)
{
  result = FigCFEqual();
  if (result)
  {
    v3 = 72;
  }

  else
  {
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    v3 = 40;
  }

  *(*(a1[4] + 8) + 24) = *(a1[6] + v3);
  return result;
}

uint64_t FigStarkModeControllerRequestModeChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled(a1, a2))
  {
    if (dword_1EB75E258)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v12)
    {
      return v12(a1, a2, a3, a4, a5);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    if (dword_1EB75E258)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return fsmcontroller_RequestModeChange(a1, a2, a3, a4, a5);
  }
}

uint64_t fsmcontroller_RequestInitialModeChange(uint64_t a1, unsigned int *a2, unsigned int *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (a1)
  {
    if (a4)
    {
      v11 = a4[3];
      v26 = a4[2];
      v27 = v11;
      v28 = *(a4 + 8);
      v12 = a4[1];
      v24 = *a4;
      v25 = v12;
      fsm_validateInitialModeForResource(a2, &v24, 0);
      fsm_validateInitialModeForResource(a3, &v24, 1);
      v13 = *(a1 + 16);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __fsmcontroller_RequestInitialModeChange_block_invoke;
      v16[3] = &unk_1E7AED3A8;
      v16[6] = a2;
      v16[7] = a3;
      v16[4] = &v29;
      v16[5] = a1;
      v19 = v26;
      v20 = v27;
      v18 = v25;
      v17 = v24;
      v21 = v28;
      v22 = a5;
      v23 = a6;
      MXDispatchSync("fsmcontroller_RequestInitialModeChange", "FigStarkMode.m", 1584, 0, 0, v13, v16);
    }

    dispatch_activate(*(a1 + 24));
    v14 = *(v30 + 6);
  }

  else
  {
    v14 = 4294950566;
    v32 = -16730;
  }

  _Block_object_dispose(&v29, 8);
  return v14;
}

unsigned int *fsm_validateInitialModeForResource(unsigned int *result, uint64_t a2, int a3)
{
  v4 = 8;
  if (a3)
  {
    v4 = 32;
  }

  v5 = (a2 + v4);
  if (result)
  {
    v6 = result;
    v7 = *result;
    if (*result)
    {
      v9 = 4 * (a3 != 0);
      if (dword_1EB75E258)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        v7 = *v6;
      }

      if (v7 == 1)
      {
        if (!v6[1])
        {
          if (dword_1EB75E258)
          {
            v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
            result = fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v6[1] = 100;
        }

        if (!v6[2])
        {
          if (dword_1EB75E258)
          {
            v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
            result = fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v6[2] = 100;
        }
      }

      if (*v6 == 2)
      {
        if ((*v5 & 0xFFFFFFFE) == 0x14)
        {
          if (a3 && *(a2 + v9) == 1)
          {
            *(a2 + 64) = 0;
            *(a2 + 56) = 0;
          }

          *(a2 + v9) = 2;
          goto LABEL_34;
        }
      }

      else if (*v6 == 1)
      {
        v14 = *v5;
        if (*v5 == 21)
        {
          goto LABEL_28;
        }

        if (v14 == 20)
        {
          v5[4] = v6[1];
          v17 = v6[2];
          v5[5] = v17;
          v15 = v5 + 5;
          if (v5[1] != 100 || v6[1] == 100 && v17 == 100)
          {
            goto LABEL_36;
          }

          v5[4] = 100;
          goto LABEL_35;
        }

        if (!v14)
        {
LABEL_28:
          *v5 = 0x6400000014;
LABEL_34:
          v5[4] = 100;
          v15 = v5 + 5;
LABEL_35:
          *v15 = 100;
        }
      }

LABEL_36:
      if (!dword_1EB75E258)
      {
        return result;
      }

      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (*v5 == 21 || *v5 == 0)
  {
    *v5 = 0x6400000014;
    *(v5 + 2) = 0x6400000064;
    if (dword_1EB75E258)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

uint64_t FigStarkModeControllerRequestInitialModeChange(uint64_t a1, unsigned int *a2, unsigned int *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled(a1, a2))
  {
    if (dword_1EB75E258)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v14)
    {
      return v14(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    if (dword_1EB75E258)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return fsmcontroller_RequestInitialModeChange(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t FigStarkModeCopyController(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954315;
  }

  v6 = 0;
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled(a1, a2))
  {
    result = FigStarkModeControllerRemoteCreate(*MEMORY[0x1E695E480], 0, &v6);
LABEL_8:
    *a1 = v6;
    return result;
  }

  if (dword_1EB75E258)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = CMSMUtility_CopyFigStarkModeController(&v6);
  if (!result)
  {
    goto LABEL_8;
  }

  FigStarkModeCopyController_cold_1(result, &v6, v7);
  return v7[0];
}

uint64_t FigStarkModeControllerGetClassID(uint64_t a1, uint64_t a2)
{
  if (qword_1ED6D3060 != -1)
  {
    FigStarkModeControllerGetClassID_cold_1();
  }

  return qword_1ED6D3068;
}

uint64_t starkModeController_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&starkModeController_getClassID_sClassDesc, ClassID, 1, a1);
}

uint64_t FigStarkModeControllerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (qword_1ED6D3060 != -1)
  {
    FigStarkModeControllerGetClassID_cold_1();
  }

  v3 = qword_1ED6D3068;

  return MEMORY[0x1EEDBB488](v3);
}

uint64_t FigStarkModeControllerXPCCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a2;
    cf = 0;
    if (qword_1ED6D3060 != -1)
    {
      FigStarkModeControllerGetClassID_cold_1();
    }

    v5 = CMDerivedObjectCreate();
    if (!v5)
    {
      *CMBaseObjectGetDerivedStorage() = v4;
      *a3 = cf;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954315;
  }

  return v5;
}

uint64_t __fsm_stateObjectGetTypeID_block_invoke()
{
  fsm_stateObjectGetTypeID_sStateClass = 0;
  unk_1EB75DCC0 = "FigStarkModeControllerRefObject";
  qword_1EB75DCC8 = fsm_stateInit;
  unk_1EB75DCD0 = 0;
  qword_1EB75DCD8 = fsm_stateFinalize;
  unk_1EB75DCE0 = 0u;
  unk_1EB75DCF0 = 0u;
  result = _CFRuntimeRegisterClass();
  fsm_stateObjectGetTypeID_sStateID = result;
  return result;
}

double fsm_stateInit(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fsm_stateFinalize(uint64_t a1)
{
  dispatch_activate(*(a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 120) = 0;
  }

  _Block_release(*(a1 + 112));
  v5 = *(a1 + 80);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 80) = 0;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 48) = 0;
  }
}

uint64_t __fsm_stateChangedHandlerTokenObjectGetTypeID_block_invoke()
{
  fsm_stateChangedHandlerTokenObjectGetTypeID_sStateChangedHandlerTokenClass = 0;
  *algn_1EB75DD28 = "FigStarkModeStateChangedHandlerTokenRefObject";
  qword_1EB75DD30 = fsm_stateChangedHandlerTokenInit;
  unk_1EB75DD38 = 0;
  qword_1EB75DD40 = fsm_stateChangedHandlerTokenFinalize;
  *algn_1EB75DD48 = 0u;
  *&algn_1EB75DD48[16] = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1ED6D3078 = result;
  return result;
}

void *fsm_stateChangedHandlerTokenInit(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fsm_stateChangedHandlerTokenFinalize(uint64_t a1)
{
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 24) = 0;
  }

  _Block_release(*(a1 + 32));
  *(a1 + 32) = 0;
}

uint64_t mxFigStarkModeController_Finalize(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return CMBaseObjectGetDerivedStorage();
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

__CFString *mxFigStarkModeController_CopyDebugDescription(const void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  if (a1)
  {
    v6 = *CMBaseObjectGetDerivedStorage();
    CFStringAppendFormat(Mutable, 0, @"<FigStarkModeController %d>", v6);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CFStringAppendFormat(Mutable, 0, @"<FigStarkModeControllerRef NULL>");
  }

  return Mutable;
}

void FigRoutingManagerUtilities_CopyCurrentlyPickedAirPlayEndpoint(void *a1, void *a2, int a3)
{
  theDict = 0;
  FigRoutingManagerContextUtilities_CopyNonControlPickedContexts(&theDict);
  Count = CFDictionaryGetCount(theDict);
  v7 = malloc_type_calloc(Count, 8uLL, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(theDict, v7, 0);
  if (Count >= 1)
  {
    v17 = a1;
    v18 = a2;
    v8 = *MEMORY[0x1E69622F8];
    v9 = *MEMORY[0x1E695E480];
    v10 = v7;
    while (1)
    {
      v11 = *v10;
      v20 = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v11, 0, &v20);
      cf = 0;
      if (v20)
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          v13(CMBaseObject, v8, v9, &cf);
        }
      }

      if (FigCFEqual())
      {
        break;
      }

      v14 = FigCFEqual();
      if (!a3)
      {
        if (v14)
        {
          break;
        }
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v20)
      {
        CFRelease(v20);
      }

      ++v10;
      if (!--Count)
      {
        goto LABEL_28;
      }
    }

    if (v17)
    {
      v15 = v20;
      if (v20)
      {
        v15 = CFRetain(v20);
      }

      *v17 = v15;
    }

    if (v18)
    {
      if (v11)
      {
        v16 = CFRetain(v11);
      }

      else
      {
        v16 = 0;
      }

      *v18 = v16;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_28;
  }

  if (v7)
  {
LABEL_28:
    free(v7);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }
}

BOOL FigRoutingManagerUtilities_IsSystemAudioRoutingToDeviceID(const __CFString *a1)
{
  v8 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v8);
  v7 = 0;
  FigRoutingManagerContextUtilities_CopyMostRecentCurrentlyActivatingEndpoint(v8, &v7);
  if (v7)
  {
    cf = 0;
  }

  else
  {
    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v8, 0, &v7);
    cf = 0;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &cf);
  }

LABEL_6:
  v4 = FigCFEqual() || MXCFStringHasCaseInsensitivePrefix(a1, cf);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v8)
  {
    CFRelease(v8);
    v8 = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

BOOL FigRoutingManagerUtilities_IsSystemAudioRouteNull()
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  IsContextRoutedToNull = FigRoutingManagerUtilities_IsContextRoutedToNull(cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return IsContextRoutedToNull;
}

BOOL FigRoutingManagerUtilities_IsContextRoutedToNull(uint64_t a1)
{
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, &theArray);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  else
  {
    Count = 0;
  }

  return Count == 0;
}

BOOL FigRoutingManagerUtilities_IsSystemAudioRouteAirPlayLowLatency()
{
  v3 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v3);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v3, 0, &cf);
  IsEndpointLowLatencyAirPlay = FigRoutingManagerIsEndpointLowLatencyAirPlay(cf);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return IsEndpointLowLatencyAirPlay;
}

OpaqueFigEndpointManager *FigRoutingManagerUtilities_CopySidePlayEndpoints()
{
  v3 = 0;
  result = FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F0]);
  if (result)
  {
    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v2)
    {
      v2(CMBaseObject, *MEMORY[0x1E69618A8], *MEMORY[0x1E695E480], &v3);
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL FigRoutingManagerUtilities_IsSystemAudioRouteWHAGroupableLocal()
{
  v8 = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v8);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v8, 0, &cf);
  IsEndpointOfType = FigRoutingManagerIsEndpointOfType(cf, *MEMORY[0x1E69626A8]);
  v1 = cf;
  if (IsEndpointOfType)
  {
    v6 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &v6);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v1 = FigRoutingManagerCopyEndpointWithDeviceID(v6, 0, *MEMORY[0x1E69618F8], 0);
    cf = v1;
    if (v6)
    {
      CFRelease(v6);
      v1 = cf;
    }
  }

  IsEndpointWHAGroupable = FigRoutingManagerIsEndpointWHAGroupable(v1);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return IsEndpointWHAGroupable;
}

__CFString *FigRoutingManagerUtilities_GetEvaluatedBadgeType(uint64_t a1)
{
  v27[27] = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27[0] = 0;
  v1 = *MEMORY[0x1E695E4C0];
  v24 = 0;
  v25 = v1;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&v24);
  v23 = 0;
  FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&v23);
  v22 = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v24, 0, &v22);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v23, 0, &cf);
  IsEndpointTypeVehicle = v22;
  if (v22 && (IsEndpointTypeVehicle = FigRoutingManagerUtilities_IsEndpointTypeVehicle(v22), IsEndpointTypeVehicle))
  {
    v4 = CMSMUtility_CopyStarkEndpointCentral();
    v5 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E69620F8], v5, v27);
    }

    v8 = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(v8, *MEMORY[0x1E69621E8], v5, &v26);
    }

    if (v4)
    {
      v10 = FigEndpointGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v11(v10, @"SupportsDCXForSpatialAudio", v5, &v25);
      }

      CFRelease(v4);
    }

    if (FigCFEqual())
    {
      if (!FigCFEqual())
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    if (FigCFEqual())
    {
      if (!FigCFEqual())
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v12 = 0;
    if (!MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled(IsEndpointTypeVehicle, v2) || !cf)
    {
      goto LABEL_35;
    }

    if (!FigRoutingManagerContextUtilities_IsContextSystemMusicAndIndependent(v23) || !FigRoutingManagerIsEndpointOfType(cf, *MEMORY[0x1E69626A8]) && !FigRoutingManagerIsEndpointOfType(cf, *MEMORY[0x1E69626B0]))
    {
      goto LABEL_24;
    }

    v13 = *MEMORY[0x1E695E480];
    v14 = FigEndpointGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(v14, *MEMORY[0x1E69620F8], v13, v27);
    }

    v16 = FigEndpointGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(v16, *MEMORY[0x1E69621E8], v13, &v26);
    }

    if ((FigEndpointGetSupportedFeatures() & 8) == 0)
    {
LABEL_24:
      v12 = 0;
      goto LABEL_35;
    }

    if (FigCFEqual())
    {
LABEL_29:
      v18 = kMXSession_BadgeType_DolbyAtmos;
LABEL_34:
      v12 = *v18;
      goto LABEL_35;
    }

    if (FigCFEqual())
    {
LABEL_31:
      v18 = kMXSession_BadgeType_DolbyAudio;
      goto LABEL_34;
    }
  }

  if (FigCFEqual())
  {
LABEL_33:
    v18 = kMXSession_BadgeType_SpatialAudio;
    goto LABEL_34;
  }

  if (FigCFEqual())
  {
    v18 = kMXSession_BadgeType_Surround;
    goto LABEL_34;
  }

  if (FigCFEqual())
  {
    v12 = @"Stereo";
  }

  else
  {
    v12 = 0;
  }

LABEL_35:
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v22)
  {
    CFRelease(v22);
    v22 = 0;
  }

  if (v24)
  {
    CFRelease(v24);
    v24 = 0;
  }

  if (v23)
  {
    CFRelease(v23);
    v23 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
    v25 = 0;
  }

  if (v26)
  {
    CFRelease(v26);
    v26 = 0;
  }

  if (v27[0])
  {
    CFRelease(v27[0]);
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return @"NotApplicable";
  }
}

void FigRoutingManagerUtilities_PostEndpointNotification(uint64_t a1)
{
  cf = 0;
  theArray = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(cf, &theArray);
  if (theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      CFArrayGetValueAtIndex(theArray, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void __routingManagerUtilities_handleAirPlayAggregateCapabilitiesChangedNotification_block_invoke(uint64_t a1)
{
  CMSMUtility_UpdateSupportedOutputChannelLayouts(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t remoteXPCendpointAgentClient_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 1) = 1;
  return result;
}

uint64_t remoteXPCendpointAgent_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    remoteXPCendpointAgent_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      remoteXPCendpointAgent_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t remoteSystemController_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

uint64_t remoteSystemController_Finalize(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;
  if (dword_1ED6D31D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigXPCRemoteClientDisassociateObject();
  if (*(DerivedStorage + 8))
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    if (FigXPCCreateBasicMessage() || (v5 = FigXPCRemoteClientSendSyncMessage(), FigXPCRemoteClientKillServerOnTimeout(), v5))
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return FigXPCRelease();
}

uint64_t remoteSystemController_SetInputMute(uint64_t a1, UInt8 *a2, int a3)
{
  v5 = 0;
  v6 = 0;
  if (remoteSystemController_getObjectID(a1, &v5) || FigXPCCreateBasicMessage() || FigXPCMessageSetCFBoolean())
  {
    result = FigXPCRelease();
    __break(1u);
  }

  else
  {
    remoteSystemController_SetInputMute_cold_1(a2, &v6, &v5, &v7);
    return v7;
  }

  return result;
}

uint64_t FigEndpointUIAgentStartServer()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *(v1 + 8) = Mutable;
    if (Mutable)
    {
      *v1 = FigReentrantMutexCreate();
      gEndpointAgentServerState = v1;
    }

    else if ((FigEndpointUIAgentStartServer_cold_1((v1 + 8), v1, &v9) & 1) == 0)
    {
      return v9;
    }
  }

  else
  {
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 1, HandleEndpointUIAgentRemoteMessage);
    if (v7)
    {
      return v7;
    }

    v2 = *MEMORY[0x1E695E480];
  }

  v4 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  v5 = FigXPCServerStart();
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void DisposePerUIAgentState(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void CMSMNotificationUtility_PostPreferHeadphonesOverCarsAndSpeakersDidChange(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = [v2 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1), @"Enabled", 0}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [MXSystemController notifyAll:@"PreferHeadphonesOverCarsAndSpeakersDidChange" payload:v3 dontPostIfSuspended:0];
}

void CMSMNotificationUtility_PostAllowBluetoothAccessoryToRequestAudioRouteDidChangeNotificationIfNeeded()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager shouldAllowBluetoothAccessoryToRequestAudioRoute];
  if (CMSMVAUtility_IsAnyBluetoothVehicleConnected())
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMNotificationUtility_PostAllowBluetoothAccessoryToRequestAudioRouteDidChangeNotification(v0);
  }
}

void CMSMNotificationUtility_PostAllowBluetoothAccessoryToRequestAudioRouteDidChangeNotification(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = [v2 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedChar:", a1), @"IsAllowed", 0}];
  [MXSystemController notifyAll:@"AllowBluetoothAccessoryToRequestAudioRouteDidChange" payload:v3 dontPostIfSuspended:0];
}

void CMSMNotificationUtility_PostSessionPrefersConcurrentAirPlayAudioDidChange(void *a1, const char *a2)
{
  if (objc_msgSend_isActive(a1, a2))
  {
    BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"PrefersConcurrentAirPlayAudio", [a1 prefersConcurrentAirPlayAudio]);
    v6 = MXGetNotificationSenderQueue(BooleanPayload, v5);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __CMSMNotificationUtility_PostSessionPrefersConcurrentAirPlayAudioDidChange_block_invoke;
    v7[3] = &unk_1E7AEBCA0;
    v7[4] = a1;
    v7[5] = BooleanPayload;
    MXDispatchAsync("CMSMNotificationUtility_PostSessionPrefersConcurrentAirPlayAudioDidChange", "CMSessionManager_NotificationUtilities.m", 119, 0, 0, v6, v7);
  }
}

void CMSMNotificationUtility_PostSessionAudioBehaviourDidChange(void *a1)
{
  v2 = a1;
  v4 = MXGetNotificationSenderQueue(v2, v3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSMNotificationUtility_PostSessionAudioBehaviourDidChange_block_invoke;
  v5[3] = &unk_1E7AE7CE0;
  v5[4] = a1;
  MXDispatchAsync("CMSMNotificationUtility_PostSessionAudioBehaviourDidChange", "CMSessionManager_NotificationUtilities.m", 140, 0, 0, v4, v5);
}

void CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange(void *a1, int a2)
{
  if (a2)
  {
    if ([a1 prefersEchoCancelledInput])
    {
      IsRecordingCategory = CMSMUtility_IsRecordingCategory([a1 audioCategory]);
    }

    else
    {
      IsRecordingCategory = 0;
    }

    v4 = 1;
  }

  else
  {
    IsRecordingCategory = 0;
    v4 = 0;
  }

  v5 = objc_alloc(MEMORY[0x1E695DF20]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v7 = [v5 initWithObjectsAndKeys:{v6, @"RouteControlFeatures", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", IsRecordingCategory), @"HasEchoCancelledInput", 0}];
  inited = objc_initWeak(&location, a1);
  v10 = MXGetNotificationSenderQueue(inited, v9);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange_block_invoke;
  v11[3] = &unk_1E7AEAD68;
  objc_copyWeak(&v12, &location);
  v11[4] = a1;
  v11[5] = v7;
  MXDispatchAsync("CMSMNotificationUtility_PostSessionRouteControlFeaturesDidChange", "CMSessionManager_NotificationUtilities.m", 164, 0, 0, v10, v11);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_1B1978470(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFDictionary *CMSMNotificationUtility_CreateVolumeNotificationPayload(const void *a1, const void *a2, const void *a3, uint64_t a4, int a5, float a6)
{
  valuePtr = a6;
  value = 0;
  v23 = a4;
  v20 = 0;
  cf = 0;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"AudioCategory", a1);
  }

  if (a2)
  {
    CFDictionarySetValue(v12, @"Reason", a2);
  }

  if (a3)
  {
    CFDictionarySetValue(v12, @"RefCon", a3);
  }

  v13 = CFNumberCreate(v10, kCFNumberFloat32Type, &valuePtr);
  if (v13)
  {
    v14 = v13;
    CFDictionarySetValue(v12, @"Volume", v13);
    CFRelease(v14);
  }

  v15 = CFNumberCreate(v10, kCFNumberSInt64Type, &v23);
  if (v15)
  {
    v17 = v15;
    CFDictionarySetValue(v12, @"SequenceNumber", v15);
    CFRelease(v17);
  }

  if (MX_FeatureFlags_IsAdaptiveVolumeControlEnabled(v15, v16))
  {
    v18 = MEMORY[0x1E695E4C0];
    if (a5)
    {
      v18 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(v12, @"SilenceVolumeHUD", *v18);
  }

  PVMCopyCurrentCategoryAndMode(&cf, &v20);
  PVMCopyVolumeCategoryAndMode(cf, v20, &value, 0);
  if (value)
  {
    CFDictionarySetValue(v12, @"ActiveAudioCategory", value);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v20)
  {
    CFRelease(v20);
    v20 = 0;
  }

  if (value)
  {
    CFRelease(value);
  }

  return v12;
}

void CMSMNotificationUtility_PostCurrentOutputSampleRateDidChange(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled(a1, a2))
  {

    CMSMUtility_NotifyEachMatchingSession(0, 0, 0, @"CurrentOutputSampleRateDidChange", 0, 0);
  }
}

void CMSMNotificationUtility_PostCurrentInputSampleRateDidChange(uint64_t a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled(a1, a2))
  {

    CMSMUtility_NotifyEachMatchingSession(0, 0, 0, @"CurrentInputSampleRateDidChange", 0, 0);
  }
}

uint64_t CMSMNotificationUtility_PostNowPlayingAppPIDDidChange()
{
  v0 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppPID];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v0), @"PID", 0}];

  return [MXSystemController notifyAll:@"NowPlayingAppPIDDidChange" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostNowPlayingAppDidChange()
{
  v2 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"NowPlayingAppDidChange", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[MXNowPlayingAppManager nowPlayingAppDisplayID](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "nowPlayingAppDisplayID"), @"DisplayID", 0}], 0);
}

uint64_t CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChangeDelayed(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"State", 0}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [MXSystemController notifyAll:@"NowPlayingAppIsPlayingDidChange" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostSomeLongFormVideoClientIsActiveOverAirPlayVideoDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"SomeLongFormVideoClientIsActiveOverAirPlayVideoDidChange_IsActive", 0}];

  return [MXSystemController notifyAll:@"SomeLongFormVideoClientIsActiveOverAirPlayVideoDidChange" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostSomeLongFormVideoClientIsPlayingOverAirPlayVideoDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"SomeLongFormVideoClientIsPlayingOverAirPlayVideo_IsPlaying", 0}];

  return [MXSystemController notifyAll:@"SomeLongFormVideoClientIsPlayingOverAirPlayVideo" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostSomeLongFormVideoClientIsPlayingDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"SomeLongFormVideoClientIsPlayingDidChange_IsPlaying", 0}];

  return [MXSystemController notifyAll:@"SomeLongFormVideoClientIsPlayingDidChange" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostUserMutedDidChange(uint64_t a1, int a2)
{
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a2 != 0), @"AudioMuted", a1, @"AudioCategory", 0}];

  return [MXSystemController notifyAll:@"DeviceMutedDidChange" payload:v2 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostFullMuteDidChangeToVolumeButtonClientAndAVSystemControllers(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"FullMuted", 0}];

  return [MXSystemController notifyAll:@"UserFullMuteDidChange" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostSomeRecordingSessionPresentThatDisallowsSystemSoundsDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"SessionPresent", 0}];

  return [MXSystemController notifyAll:@"SomeRecordingSessionPresentThatDisallowsSystemSounds" payload:v1 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostCarPlayIsConnectedDidChange(int a1)
{
  v1 = a1 != 0;
  [+[MXSessionManager sharedInstance](MXSessionManager setCarPlayIsConnected:"setCarPlayIsConnected:", v1];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v1), @"IsConnected", 0}];

  return [MXSystemController notifyAll:@"CarPlayIsConnectedDidChange" payload:v2 dontPostIfSuspended:0];
}

uint64_t CMSMNotificationUtility_PostCarPlayAuxStreamSupportDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"IsSupported", 0}];

  return [MXSystemController notifyAll:@"CarPlayAuxStreamSupportDidChange" payload:v1 dontPostIfSuspended:0];
}

void CMSMNotificationUtility_PostSystemHasAudioInputDeviceDidChange()
{
  v0 = [MXSystemController notifyAll:@"SystemHasAudioInputDeviceDidChange" payload:0 dontPostIfSuspended:0];
  v2 = MXGetNotificationSenderQueue(v0, v1);

  MXDispatchAsync("CMSMNotificationUtility_PostSystemHasAudioInputDeviceDidChange", "CMSessionManager_NotificationUtilities.m", 921, 0, 0, v2, &__block_literal_global_26_0);
}

void CMSMNotificationUtility_PostSystemHasAudioInputDeviceExcludingBluetoothDidChange()
{
  v0 = [MXSystemController notifyAll:@"SystemHasAudioInputDeviceExcludingBluetoothDidChange" payload:0 dontPostIfSuspended:0];
  v2 = MXGetNotificationSenderQueue(v0, v1);

  MXDispatchAsync("CMSMNotificationUtility_PostSystemHasAudioInputDeviceExcludingBluetoothDidChange", "CMSessionManager_NotificationUtilities.m", 937, 0, 0, v2, &__block_literal_global_28_1);
}

uint64_t CMSMNotificationUtility_PostUplinkMuteDidChange(int a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1 != 0), @"UplinkMute", 0}];

  return [MXSystemController notifyAll:@"UplinkMuteDidChange" payload:v1 dontPostIfSuspended:0];
}

void CMSMNotificationUtility_PostVideoStreamsDidChange()
{
  CurrentlyAirPlayingVideoStreamsDictionary = CMSMUtility_CreateCurrentlyAirPlayingVideoStreamsDictionary(@"BundleID", @"VideoRoutes");
  if (!FigCFEqual())
  {
    [MXSystemController notifyAll:@"VideoStreamsDidChange" payload:CurrentlyAirPlayingVideoStreamsDictionary dontPostIfSuspended:0];
    v1 = CMSMNotificationUtility_PostVideoStreamsDidChange_cachedVideoStreamsPayload;
    CMSMNotificationUtility_PostVideoStreamsDidChange_cachedVideoStreamsPayload = CurrentlyAirPlayingVideoStreamsDictionary;
    if (CurrentlyAirPlayingVideoStreamsDictionary)
    {
      CFRetain(CurrentlyAirPlayingVideoStreamsDictionary);
    }

    if (v1)
    {
      CFRelease(v1);
    }
  }

  if (CurrentlyAirPlayingVideoStreamsDictionary)
  {

    CFRelease(CurrentlyAirPlayingVideoStreamsDictionary);
  }
}

void CMSMNotificationUtility_PostVibeStopped(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a1, @"VibeStopped_Context");
      if (Value)
      {
        v4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{Value, @"Context", 0}];
        [MXSystemController notifyAll:@"SystemSoundVibrateDidFinish" payload:v4 dontPostIfSuspended:0];
        v5 = v4;
        v7 = MXGetNotificationSenderQueue(v5, v6);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __CMSMNotificationUtility_PostVibeStopped_block_invoke;
        v8[3] = &unk_1E7AE7CE0;
        v8[4] = v4;
        MXDispatchAsync("CMSMNotificationUtility_PostVibeStopped", "CMSessionManager_NotificationUtilities.m", 1037, 0, 0, v7, v8);
      }
    }
  }
}

void CMSMNotificationUtility_PostForceSoundCheckDidChange(int a1, int a2)
{
  valuePtr = a2;
  BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"ForceSoundCheck", a1);
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (BooleanPayload)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v3;
    v7 = MXGetNotificationSenderQueue(v3, v4);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __CMSMNotificationUtility_PostForceSoundCheckDidChange_block_invoke;
    v8[3] = &__block_descriptor_48_e5_v8__0l;
    v8[4] = v6;
    v8[5] = BooleanPayload;
    MXDispatchAsync("CMSMNotificationUtility_PostForceSoundCheckDidChange", "CMSessionManager_NotificationUtilities.m", 1089, 0, 0, v7, v8);
  }
}

CFDictionaryRef CMSMNotificationUtility_CreateCFTypePayload(void *a1, void *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = a1 != 0;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  values = v2;
  keys[0] = v4;
  return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, v3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
}

void CMSMNotificationUtility_PostActiveNeroVisualStreamDidChange(uint64_t a1, uint64_t a2)
{
  v2 = MXGetNotificationSenderQueue(a1, a2);

  MXDispatchAsync("CMSMNotificationUtility_PostActiveNeroVisualStreamDidChange", "CMSessionManager_NotificationUtilities.m", 1224, 0, 0, v2, &__block_literal_global_35_2);
}

void CMSMNotificationUtility_PostActiveNeroVisualStreamInfoDidChange()
{
  v0 = [MXSystemController notifyAll:@"ActiveNeroVisualStreamInfoDidChange" payload:0 dontPostIfSuspended:0];
  v2 = MXGetNotificationSenderQueue(v0, v1);

  MXDispatchAsync("CMSMNotificationUtility_PostActiveNeroVisualStreamInfoDidChange", "CMSessionManager_NotificationUtilities.m", 1245, 0, 0, v2, &__block_literal_global_37_1);
}

void CMSMNotificationUtility_PostInputDataSourcesDidChange(uint64_t a1, uint64_t a2)
{
  v2 = MXGetNotificationSenderQueue(a1, a2);

  MXDispatchAsync("CMSMNotificationUtility_PostInputDataSourcesDidChange", "CMSessionManager_NotificationUtilities.m", 1330, 0, 0, v2, &__block_literal_global_41_1);
}

void CMSMNotificationUtility_PostOutputDataDestinationsDidChange(uint64_t a1, uint64_t a2)
{
  v2 = MXGetNotificationSenderQueue(a1, a2);

  MXDispatchAsync("CMSMNotificationUtility_PostOutputDataDestinationsDidChange", "CMSessionManager_NotificationUtilities.m", 1349, 0, 0, v2, &__block_literal_global_43_1);
}

void CMSMNotificationUtility_PostInputGainScalarDidChange(uint64_t a1, uint64_t a2)
{
  v2 = MXGetNotificationSenderQueue(a1, a2);

  MXDispatchAsync("CMSMNotificationUtility_PostInputGainScalarDidChange", "CMSessionManager_NotificationUtilities.m", 1369, 0, 0, v2, &__block_literal_global_45_0);
}

void CMSMNotificationUtility_PostCurrentRouteHasInputGainControlDidChange(CFTypeRef cf, uint64_t a2)
{
  v2 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  v3 = MXGetNotificationSenderQueue(cf, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMNotificationUtility_PostCurrentRouteHasInputGainControlDidChange_block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = v2;
  MXDispatchAsync("CMSMNotificationUtility_PostCurrentRouteHasInputGainControlDidChange", "CMSessionManager_NotificationUtilities.m", 1392, 0, 0, v3, v4);
}

void CMSMNotificationUtility_PostNumberOfInputChannelsDidChange(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = MXGetNotificationSenderQueue(a1, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMNotificationUtility_PostNumberOfInputChannelsDidChange_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = v2;
  MXDispatchAsync("CMSMNotificationUtility_PostNumberOfInputChannelsDidChange", "CMSessionManager_NotificationUtilities.m", 1401, 0, 0, v3, v4);
}

CFDictionaryRef CMSMNotificationUtility_CreateSInt32Payload(void *a1, int a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v5 = v4;
  if (a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = a1 != 0;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  values = v6;
  keys[0] = v8;
  v9 = CFDictionaryCreate(v3, keys, &values, v7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

void CMSMNotificationUtility_PostNumberOfOutputChannelsDidChange(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = MXGetNotificationSenderQueue(a1, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMNotificationUtility_PostNumberOfOutputChannelsDidChange_block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = v2;
  MXDispatchAsync("CMSMNotificationUtility_PostNumberOfOutputChannelsDidChange", "CMSessionManager_NotificationUtilities.m", 1411, 0, 0, v3, v4);
}

void CMSMNotificationUtility_PostBadgeTypeDidChange(id val)
{
  inited = objc_initWeak(&location, val);
  v4 = MXGetNotificationSenderQueue(inited, v3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CMSMNotificationUtility_PostBadgeTypeDidChange_block_invoke;
  v5[3] = &unk_1E7AEB360;
  objc_copyWeak(&v6, &location);
  v5[4] = val;
  MXDispatchAsync("CMSMNotificationUtility_PostBadgeTypeDidChange", "CMSessionManager_NotificationUtilities.m", 1427, 0, 0, v4, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_1B197A654(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange(id val)
{
  inited = objc_initWeak(&location, val);
  v3 = MXGetNotificationSenderQueue(inited, v2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange_block_invoke;
  v4[3] = &unk_1E7AEA958;
  objc_copyWeak(&v5, &location);
  MXDispatchAsync("CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange", "CMSessionManager_NotificationUtilities.m", 1443, 0, 0, v3, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_1B197A800(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void *CMSMNotificationUtility_PostSomeSharePlayCapableCallSessionIsActiveDidChange(void *result)
{
  if (CMSMNotificationUtility_PostSomeSharePlayCapableCallSessionIsActiveDidChange_sCachedValue != result)
  {
    CMSMNotificationUtility_PostSomeSharePlayCapableCallSessionIsActiveDidChange_sCachedValue = result;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", result), @"IsActive", 0}];

    return [MXSystemController notifyAll:@"SomeSharePlayCapableCallSessionIsActiveDidChange" payload:v2 dontPostIfSuspended:0];
  }

  return result;
}

void CMSMNotificationUtility_PostIsOutputMutedDidChange(void *a1, uint64_t a2)
{
  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(a1, a2))
  {
    BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"Muted", [a1 isOutputMuted]);
    inited = objc_initWeak(&location, a1);
    v6 = MXGetNotificationSenderQueue(inited, v5);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __CMSMNotificationUtility_PostIsOutputMutedDidChange_block_invoke;
    v7[3] = &unk_1E7AEAD68;
    objc_copyWeak(&v8, &location);
    v7[4] = a1;
    v7[5] = BooleanPayload;
    MXDispatchAsync("CMSMNotificationUtility_PostIsOutputMutedDidChange", "CMSessionManager_NotificationUtilities.m", 1504, 0, 0, v6, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void sub_1B197AA84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void CMSMNotificationUtility_PostUserIntentToUnmuteDidChange(void *a1, uint64_t a2)
{
  v2 = a2;
  if (CMSMDeviceState_SupportsShortFormOutputMutingAudioPolicy(a1, a2))
  {
    BooleanPayload = CMSMNotificationUtility_CreateBooleanPayload(@"UserIntendsToUnmute", v2);
    inited = objc_initWeak(&location, a1);
    v7 = MXGetNotificationSenderQueue(inited, v6);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __CMSMNotificationUtility_PostUserIntentToUnmuteDidChange_block_invoke;
    v8[3] = &unk_1E7AEAD68;
    objc_copyWeak(&v9, &location);
    v8[4] = a1;
    v8[5] = BooleanPayload;
    MXDispatchAsync("CMSMNotificationUtility_PostUserIntentToUnmuteDidChange", "CMSessionManager_NotificationUtilities.m", 1526, 0, 0, v7, v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void sub_1B197AD28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void CMSMNotificationUtility_PostAllowEnhancedDialogueDidChange(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"AllowEnhancedDialogue";
  v11[0] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "allowEnhancedDialogue")}];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v3 = v2;
  inited = objc_initWeak(&location, a1);
  v6 = MXGetNotificationSenderQueue(inited, v5);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CMSMNotificationUtility_PostAllowEnhancedDialogueDidChange_block_invoke;
  v7[3] = &unk_1E7AEAD68;
  objc_copyWeak(&v8, &location);
  v7[4] = a1;
  v7[5] = v2;
  MXDispatchAsync("CMSMNotificationUtility_PostAllowEnhancedDialogueDidChange", "CMSessionManager_NotificationUtilities.m", 1546, 0, 0, v6, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void sub_1B197B020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CMSMNotificationUtility_PostWombatEnabledDidChange(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:a1];
  v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v1, @"Enabled", 0}];
  [MXSystemController notifyAll:@"WombatEnabledDidChange" payload:v2 dontPostIfSuspended:0];
}

void CMSMNotificationUtility_PostSilentModeEnabledDidChange(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:a1];
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v2, @"Enabled", 0}];
  v4 = [MXSystemController notifyAll:@"SilentModeEnabledDidChange" payload:v3 dontPostIfSuspended:0];
  v6 = MXGetNotificationSenderQueue(v4, v5);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CMSMNotificationUtility_PostSilentModeEnabledDidChange_block_invoke;
  v7[3] = &__block_descriptor_33_e5_v8__0l;
  v8 = v1;
  MXDispatchAsync("CMSMNotificationUtility_PostSilentModeEnabledDidChange", "CMSessionManager_NotificationUtilities.m", 1685, 0, 0, v6, v7);
}

void CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded(uint64_t a1, float a2)
{
  if (CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded_sEnabled != a1 || a1 && *&CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded_sCurrentLimit != a2)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", a1), @"Enabled"}];
    if (a1)
    {
      *&v4 = a2;
      [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v4), @"MaximumSpeakerVolumeLimit"}];
    }

    CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded_sEnabled = a1;
    CMSMNotificationUtility_PostMaximumVolumeLimitForBuiltInSpeakerDidChangeIfNeeded_sCurrentLimit = LODWORD(a2);
    [MXSystemController notifyAll:@"MaximumSpeakerVolumeLimitDidChange" payload:v5 dontPostIfSuspended:0];
  }
}

void CMSM_IDSConnection_Initialize(uint64_t a1)
{
  qword_1EB75CCE0 = FigReentrantMutexCreate();
  qword_1EB75CCD8 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gIDSConnection = objc_alloc_init(CMSM_IDSConnection);
  global_queue = dispatch_get_global_queue(0, 0);

  MXDispatchAsync("CMSM_IDSConnection_Initialize", "CMSessionManager_IDSConnection.m", 83, 0, 0, global_queue, &__block_literal_global_86);
}

uint64_t CMSM_IDSConnection_IsNearbyPairedDevicePresent()
{
  v0 = [gIDSConnection copyNearbyPairedDevice];
  v1 = [v0 isNearby];

  return v1;
}

uint64_t CMSM_IDSConnection_IsNearbyPairedDevicePresentAndConnected()
{
  v0 = [gIDSConnection copyNearbyPairedDevice];
  if ([v0 isNearby])
  {
    v1 = [v0 isConnected];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void *CMSM_IDSConnection_HandleNearbyDeviceStatusChange()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = [gIDSConnection copyNearbyPairedDevice];
  v1 = [v0 isNearby];

  CMSM_IDSConnection_IsNearbyPairedDevicePresentAndConnected();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v1)
  {
    CMSM_IDSClient_QueryRemote_BTDeviceConnectionStatus();
    return CMSM_IDSClient_QueryRemote_PlayingInfo();
  }

  else
  {
    result = CMSM_IDSConnection_DeactivateIDSMXCoreSession(@"non-resumable.noNearbyPairedDevice");
    byte_1EB75CCC8 = 1;
  }

  return result;
}

uint64_t CMSM_IDSConnection_DeactivateIDSMXCoreSession(const __CFString *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  IsIDSSessionActive = CMSMUtility_IsIDSSessionActive();
  if (IsIDSSessionActive)
  {
    v3 = CMSM_IDSConnection_CopyMXCoreSession(IsIDSSessionActive);
    v4 = CMSessionEndInterruption(v3, a1);
    v6 = MXGetNotificationSenderQueue(v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __CMSM_IDSConnection_DeactivateIDSMXCoreSession_block_invoke;
    v9[3] = &__block_descriptor_40_e5_v8__0l;
    v9[4] = v3;
    MXDispatchAsync("CMSM_IDSConnection_DeactivateIDSMXCoreSession", "CMSessionManager_IDSConnection.m", 207, 0, 0, v6, v9);
    return v4;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }
}

CFTypeRef CMSM_IDSConnection_CopyMXCoreSession(uint64_t a1)
{
  if (CMSM_IDSConnection_CopyMXCoreSession_onceToken != -1)
  {
    CMSM_IDSConnection_CopyMXCoreSession_cold_1();
  }

  result = sIDSInfo;
  if (sIDSInfo)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t CMSM_IDSConnection_AddRemotePlayingInfo(const void *a1)
{
  IsSomeClientPlayingOverSharedAudioRouteOnRemote = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  FigSimpleMutexLock();
  Mutable = qword_1EB75CCB8;
  if (!qword_1EB75CCB8)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    qword_1EB75CCB8 = Mutable;
  }

  CFArrayAppendValue(Mutable, a1);
  FigSimpleMutexUnlock();
  result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  if (IsSomeClientPlayingOverSharedAudioRouteOnRemote != result)
  {

    return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }

  return result;
}

BOOL CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote()
{
  FigSimpleMutexLock();
  v0 = byte_1EB75CCA3 && qword_1EB75CCB8 && CFArrayGetCount(qword_1EB75CCB8) > 0;
  FigSimpleMutexUnlock();
  return v0;
}

uint64_t cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache()
{
  v32 = *MEMORY[0x1E69E9840];
  -[NSRecursiveLock lock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "lock");
  v0 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[MXSessionManager pickableRoutesDescriptions](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "pickableRoutesDescriptions")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions];
  v18 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v16 = *v27;
    v17 = v0;
    do
    {
      v1 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v1;
        v19 = *(*(&v26 + 1) + 8 * v1);
        v2 = -[NSMutableDictionary objectForKey:]([+[MXSessionManager sharedInstance](MXSessionManager pickableRoutesDescriptions], "objectForKey:", v19);
        v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v21 = v2;
        v4 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v4)
        {
          v5 = v4;
          v6 = *v23;
          do
          {
            for (i = 0; i != v5; ++i)
            {
              if (*v23 != v6)
              {
                objc_enumerationMutation(v21);
              }

              v8 = *(*(&v22 + 1) + 8 * i);
              v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v8];
              v10 = [v8 objectForKey:@"IsBTRoute"];
              if ([v10 isEqualToNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1)}])
              {
                [v9 removeObjectForKey:@"OtherDevicesConnected"];
                if (CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocalAndRemote())
                {
                  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v12 = CMSM_IDSConnection_CopyNearbyPairedDeviceInfo();
                  if (v12)
                  {
                    [v11 addObject:v12];
                    [v9 setObject:v11 forKey:@"OtherDevicesConnected"];
                  }

                  if (CMSM_GetFakeSharedAudioRouteAsPicked())
                  {
                    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"IsCurrentlyPickedOnPairedDevice"}];
                  }
                }
              }

              [v3 addObject:v9];
            }

            v5 = [v21 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v5);
        }

        v0 = v17;
        [v17 setObject:v3 forKey:v19];

        v1 = v20 + 1;
      }

      while (v20 + 1 != v18);
      v18 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v18);
  }

  if ([v0 isEqualToDictionary:{-[MXSessionManager pickableRoutesDescriptions](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "pickableRoutesDescriptions")}])
  {

    return -[NSRecursiveLock unlock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "unlock");
  }

  else
  {
    [+[MXSessionManager sharedInstance](MXSessionManager setPickableRoutesDescriptions:"setPickableRoutesDescriptions:", v0];

    -[NSRecursiveLock unlock]([+[MXSessionManager sharedInstance](MXSessionManager propertiesLock], "unlock");
    return CMSMNotificationUtility_PostPickableRoutesDidChange(1, v14);
  }
}

void CMSM_IDSConnection_RemoveRemotePlayingInfo(CFIndex a1)
{
  IsSomeClientPlayingOverSharedAudioRouteOnRemote = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  FigSimpleMutexLock();
  if (qword_1EB75CCB8 && CFArrayGetCount(qword_1EB75CCB8))
  {
    CFArrayRemoveValueAtIndex(qword_1EB75CCB8, a1);
    FigSimpleMutexUnlock();
    if (IsSomeClientPlayingOverSharedAudioRouteOnRemote != CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote())
    {

      cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

void CMSM_IDSConnection_ResetRemotePlayingInfo()
{
  IsSomeClientPlayingOverSharedAudioRouteOnRemote = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  FigSimpleMutexLock();
  if (qword_1EB75CCB8 && CFArrayGetCount(qword_1EB75CCB8))
  {
    CFArrayRemoveAllValues(qword_1EB75CCB8);
    FigSimpleMutexUnlock();
    if (IsSomeClientPlayingOverSharedAudioRouteOnRemote != CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote())
    {

      cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

double CMSM_IDSConnection_StartWaitForRemoteToReplyWithInitialPlayingInfoTimer(float a1)
{
  FigSimpleMutexLock();
  if (qword_1EB75CCD0)
  {
    dispatch_source_cancel(qword_1EB75CCD0);
    if (qword_1EB75CCD0)
    {
      dispatch_release(qword_1EB75CCD0);
      qword_1EB75CCD0 = 0;
    }
  }

  FigSimpleMutexUnlock();
  v2 = FigSimpleMutexLock();
  v4 = MXGetSerialQueue(v2, v3);
  qword_1EB75CCD0 = MXDispatchUtilityCreateOneShotTimer("CMSM_IDSConnection_StartWaitForRemoteToReplyWithInitialPlayingInfoTimer", "CMSessionManager_IDSConnection.m", 365, 0, 0, v4, &__block_literal_global_14_0, 0, a1, 0);

  FigSimpleMutexUnlock();
  return result;
}

void CMSM_IDSConnection_RouteToSharedAudioRouteUponReceivingOwnership(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([+[MXSessionManager carPlayIsConnected] sharedInstance]
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
    if (qword_1EB75CC98)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], qword_1EB75CC98);
      A2DPPort = cmsmGetA2DPPort(Copy);
      if (Copy)
      {
        CFRelease(Copy);
      }
    }

    else
    {
      A2DPPort = cmsmGetA2DPPort(0);
    }

    if (cmsmShouldRequestOwnershipOnSharedAudioRoute(0, A2DPPort) && !vaeRequestOwnershipOnBTPort(A2DPPort, a1))
    {
      ArrayFromPortID = CMSMVAUtility_CreateArrayFromPortID(A2DPPort);
      Routable = cmsmCopyPartnerPortsToMakeRoutable(ArrayFromPortID);
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Routable && CFArrayGetCount(Routable) >= 1)
      {
        v10.length = CFArrayGetCount(Routable);
        v10.location = 0;
        CFArrayAppendArray(Mutable, Routable, v10);
      }

      if (ArrayFromPortID && CFArrayGetCount(ArrayFromPortID) >= 1)
      {
        v11.length = CFArrayGetCount(ArrayFromPortID);
        v11.location = 0;
        CFArrayAppendArray(Mutable, ArrayFromPortID, v11);
      }

      if (!vaeDoesBTPortSupportInEarDetection(A2DPPort) || CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(A2DPPort))
      {
        vaemMakeArrayOfPortsRoutable(Mutable, 1, 0, qword_1EB75E190, 0);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (Routable)
      {
        CFRelease(Routable);
      }

      if (ArrayFromPortID)
      {

        CFRelease(ArrayFromPortID);
      }
    }
  }
}

void CMSM_IDSConnection_StopWaitForRemoteToReplyWithInitialPlayingInfoTimer()
{
  global_queue = dispatch_get_global_queue(0, 0);

  MXDispatchAsync("CMSM_IDSConnection_StopWaitForRemoteToReplyWithInitialPlayingInfoTimer", "CMSessionManager_IDSConnection.m", 377, 0, 0, global_queue, &__block_literal_global_16_2);
}

id CMSM_IDSConnection_GetRemotePlayingInfo()
{
  FigSimpleMutexLock();
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v1 = [v0 initWithArray:qword_1EB75CCB8 copyItems:1];
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t CMSM_IDSConnection_SetRemotePlayingInfo(const __CFArray *a1)
{
  IsSomeClientPlayingOverSharedAudioRouteOnRemote = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  FigSimpleMutexLock();
  if (qword_1EB75CCB8)
  {
    CFRelease(qword_1EB75CCB8);
    qword_1EB75CCB8 = 0;
  }

  if (a1)
  {
    qword_1EB75CCB8 = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  }

  FigSimpleMutexUnlock();
  result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  if (IsSomeClientPlayingOverSharedAudioRouteOnRemote != result)
  {

    return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }

  return result;
}

BOOL CMSM_IDSConnection_IsTimerForRemotePlayingInfoReplyExpired()
{
  v0 = [gIDSConnection copyNearbyPairedDevice];
  v1 = [v0 isNearby];

  if (!v1)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v2 = qword_1EB75CCD0;
  FigSimpleMutexUnlock();
  return v2 == 0;
}

id CMSM_IDSConnection_CopyNearbyPairedDeviceInfo()
{
  v0 = [gIDSConnection copyNearbyPairedDevice];
  v1 = [v0 isNearby];

  if (!v1)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [gIDSConnection copyNearbyPairedDeviceUniqueID];
  if (v3)
  {
    [v2 setObject:v3 forKey:@"ConnectedDevice_UniqueID"];
  }

  v4 = [gIDSConnection copyNearbyPairedDeviceName];
  if (v4)
  {
    [v2 setObject:v4 forKey:@"ConnectedDevice_Name"];
  }

  v5 = [gIDSConnection copyNearbyPairedDeviceModelIdentifier];
  if (v5)
  {
    [v2 setObject:v5 forKey:@"ConnectedDevice_ModelIdentifier"];
  }

  v6 = [gIDSConnection copyNearbyPairedDeviceProductName];
  if (v6)
  {
    [v2 setObject:v6 forKey:@"ConnectedDevice_ProductName"];
  }

  if (qword_1EB75CCA8)
  {
    v7 = CFRetain(qword_1EB75CCA8);
    if (v7)
    {
      [v2 setObject:v7 forKey:@"ConnectedDevice_RouteUID"];
    }
  }

  else
  {
    v7 = 0;
  }

  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote()), @"ConnectedDevice_Playing"}];
  return v2;
}

void CMSM_IDSConnection_UpdateRemoteCurrentRouteUID(const void *a1)
{
  v1 = qword_1EB75CCA8;
  qword_1EB75CCA8 = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v1)
  {

    CFRelease(v1);
  }
}

void CMSM_IDSConnection_UpdateSharedAudioRouteMacAddressOnLocal(const __CFString *a1, int a2)
{
  if (CMSMDeviceState_ItsAnAppleWatch())
  {
    if (!a1)
    {
      goto LABEL_19;
    }

    if (!qword_1EB75CC90)
    {
      goto LABEL_19;
    }

    if (!FigCFEqual())
    {
      goto LABEL_19;
    }

    v4 = qword_1EB75CC98;
    if (!qword_1EB75CC98)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!a2 || !qword_1EB75CC98)
  {
    if (!a1 || !qword_1EB75CC90 || !FigCFEqual() || (v4 = qword_1EB75CC98) == 0)
    {
LABEL_19:

      cmsm_IDSConnection_updateSharedAudioRoutePortIDsOnLocal(a1);
      return;
    }

LABEL_17:
    if (CFArrayGetCount(v4))
    {
      return;
    }

    goto LABEL_19;
  }

  CFArrayRemoveAllValues(qword_1EB75CC98);
  if (byte_1EB75CCA3)
  {
    byte_1EB75CCA3 = 0;

    cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }
}

void cmsm_IDSConnection_updateSharedAudioRoutePortIDsOnLocal(CFStringRef theString)
{
  if (theString)
  {
    v1 = *MEMORY[0x1E695E480];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
    if (MutableCopy)
    {
      v3 = MutableCopy;
      CFStringAppend(MutableCopy, @"-tacl");
      v4 = FigRoutingManagerCopyEndpointWithDeviceID(v3, 1, *MEMORY[0x1E69618F8], 0);
      if (v4)
      {
        v5 = v4;
        number = 0;
        valuePtr = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v7)
        {
          v7(CMBaseObject, 0x1F289CDB0, v1, &number);
          if (number)
          {
            CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
            v8 = +[MXAudioAccessoryServices sharedInstance];
            if (![(MXAudioAccessoryServices *)v8 isPortManaged:valuePtr])
            {
              CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs(valuePtr, 1, 0);
            }

            if (number)
            {
              CFRelease(number);
            }
          }
        }

        CFRelease(v5);
      }

      CFRelease(v3);
    }
  }
}

void *CMSM_IDSConnection_UpdateRemoteIsUsingSharedAudioRoute(void *result)
{
  if (byte_1EB75CCA3 != result)
  {
    byte_1EB75CCA3 = result;
    return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }

  return result;
}

void CMSM_IDSConnection_DelaySharedAudioRoutingUntilRemoteInitialPlayingInfoIsReceived(const void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (CMSMDeviceState_ItsAnAppleWatch())
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
    v3 = CMSMUtility_CopySystemAudioRoutingContextUUID();
    if (dword_1EB75DE40)
    {
      v10 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (dword_1EB75DE40)
    {
      v10 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    byte_1EB75CCA4 = 1;
    v6 = dispatch_time(0, 20000000000);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CMSM_IDSConnection_DelaySharedAudioRoutingUntilRemoteInitialPlayingInfoIsReceived_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a1;
    block[5] = v3;
    dispatch_after(v6, global_queue, block);
  }
}

void CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs(AudioObjectID a1, int a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v5 = *MEMORY[0x1E695E480];
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v7 = vaeCopyDeviceIdentifierFromVADPort(valuePtr);
  cf = 0;
  CMSMUtility_CreateTokensFromDeviceUID(v7, &cf, 0);
  if (!qword_1EB75CC98)
  {
    qword_1EB75CC98 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  }

  v8 = qword_1EB75CC90;
  if (!qword_1EB75CC90)
  {
    qword_1EB75CC90 = cf;
    if (!cf)
    {
      v9 = 0;
      v10 = a2 != 0;
      goto LABEL_16;
    }

    CFRetain(cf);
    v8 = qword_1EB75CC90;
  }

  v9 = 0;
  v10 = a2 != 0;
  if (a2 && v8)
  {
    v11 = FigCFEqual();
    if (a3)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    v9 = v12;
    v10 = 1;
  }

LABEL_16:
  v38 = v9;
  v36 = a3;
  if (dword_1EB75DE40)
  {
    v13 = v6;
    v41 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v41;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      v17 = @"NO";
      if (v38)
      {
        v17 = @"YES";
      }

      LODWORD(outData[0]) = 136315394;
      *(outData + 4) = "CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs";
      WORD6(outData[0]) = 2114;
      *(outData + 14) = v17;
      _os_log_send_and_compose_impl(v16, 0, v43, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "-CMSM_IDSConnection- %s: In a new triangle configuration = %{public}@", outData, 22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = v13;
  }

  if (FigCFEqual())
  {
    if (FigCFArrayContainsValue() || !vaemIsPortPresentInConnectedOutputPorts(v6))
    {
      goto LABEL_54;
    }

    CFArrayAppendValue(qword_1EB75CC98, v6);
    v18 = v36;
    if (!dword_1EB75DE40)
    {
      goto LABEL_52;
    }

    v19 = v10;
    v20 = v6;
    v41 = 0;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v22 = v41;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      LODWORD(outData[0]) = 136315651;
      *(outData + 4) = "CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs";
      WORD6(outData[0]) = 1024;
      *(outData + 14) = valuePtr;
      WORD1(outData[1]) = 2113;
      *(&outData[1] + 4) = cf;
      LODWORD(v35) = 28;
      _os_log_send_and_compose_impl(v23, 0, v43, 128, &dword_1B17A2000, v21, 0, "-CMSM_IDSConnection- %s: Adding port %u to sIDSInfo.sharedAudioRoutePortIDs and %{private}@ to sIDSInfo.sharedAudioRouteMacAddress.", outData, v35);
    }

    goto LABEL_50;
  }

  if (!a2 && (!vaeDoesBTPortSupportInEarDetection(valuePtr) || !CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(valuePtr)) && vaeDoesBTPortSupportInEarDetection(valuePtr))
  {
    goto LABEL_70;
  }

  CFArrayRemoveAllValues(qword_1EB75CC98);
  if (vaemIsPortPresentInConnectedOutputPorts(v6))
  {
    CFArrayAppendValue(qword_1EB75CC98, v6);
    v24 = qword_1EB75CC90;
    qword_1EB75CC90 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v19 = v10;
    if (v24)
    {
      CFRelease(v24);
    }

    v18 = v36;
    if (!dword_1EB75DE40)
    {
      goto LABEL_51;
    }

    v20 = v6;
    v41 = 0;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v41;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      LODWORD(outData[0]) = 136315651;
      *(outData + 4) = "CMSM_IDSConnection_AddPortToSharedAudioRoutePortIDs";
      WORD6(outData[0]) = 1024;
      *(outData + 14) = valuePtr;
      WORD1(outData[1]) = 2113;
      *(&outData[1] + 4) = cf;
      LODWORD(v35) = 28;
      _os_log_send_and_compose_impl(v27, 0, v43, 128, &dword_1B17A2000, v25, 0, "-CMSM_IDSConnection- %s: Updating sIDSInfo.sharedAudioRoutePortIDs with port %u and sIDSInfo.sharedAudioRouteMacAddress with %{private}@", outData, v35);
    }

LABEL_50:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = v20;
LABEL_51:
    v10 = v19;
LABEL_52:
    if (v18)
    {
      cmsm_IDSConnection_UpdateSharedAudioRouteMacAddressOnRemote(v38, valuePtr);
    }
  }

LABEL_54:
  if (v10 && qword_1EB75CC98 && CFArrayGetCount(qword_1EB75CC98) >= 1)
  {
    v37 = v6;
    memset(outData, 0, sizeof(outData));
    PartnersForPort = vaeGetPartnersForPort(valuePtr, outData);
    if (PartnersForPort)
    {
      v29 = PartnersForPort;
      v30 = outData;
      v31 = &qword_1EB75D000;
      while (1)
      {
        v32 = CFNumberCreate(v5, kCFNumberSInt32Type, v30);
        if (vaemIsPortPresentInConnectedOutputPorts(v32))
        {
          if (!FigCFArrayContainsValue())
          {
            break;
          }
        }

        if (v32)
        {
          goto LABEL_62;
        }

LABEL_63:
        v30 = (v30 + 4);
        if (!--v29)
        {
          goto LABEL_69;
        }
      }

      if (dword_1EB75DE40)
      {
        v33 = v31;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        v31 = v33;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFArrayAppendValue(qword_1EB75CC98, v32);
      if (!v32)
      {
        goto LABEL_63;
      }

LABEL_62:
      CFRelease(v32);
      goto LABEL_63;
    }

LABEL_69:
    v6 = v37;
  }

LABEL_70:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
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

uint64_t cmsm_IDSConnection_UpdateSharedAudioRouteMacAddressOnRemote(int a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  IsSomeClientPlayingOverSharedAudioRouteOnRemote = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
  if (a1 && IsSomeClientPlayingOverSharedAudioRouteOnRemote)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (qword_1EB75CC98 && CFArrayGetCount(qword_1EB75CC98) == 3)
    {
      CFArrayRemoveAllValues(qword_1EB75CC98);
    }

    result = CMSM_IDSClient_NotifyRemote_UpdateSharedAudioRouteMacAddress(0);
LABEL_21:
    if (byte_1EB75CCA3)
    {
      byte_1EB75CCA3 = 0;
      return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
    }

    return result;
  }

  if (dword_1EB75DE40)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (![+[MXAudioAccessoryServices isPortManaged:"isPortManaged:"]
  {
    CMSM_IDSClient_NotifyRemote_UpdateSharedAudioRouteMacAddress(qword_1EB75CC90);
  }

  result = CMSMDeviceState_ItsAnAppleWatch();
  if (result)
  {
    if (dword_1EB75DE40)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v9 = [gIDSConnection copyNearbyPairedDevice];
    v10 = [v9 isNearby];

    if (v10 && (FigSimpleMutexLock(), v11 = qword_1EB75CCD0, FigSimpleMutexUnlock(), !v11) || (result = [objc_msgSend(MEMORY[0x1E69B7DA0] "sharedInstance")], (result & 1) == 0))
    {
      if (dword_1EB75DE40)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      result = CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote();
      if (!result || byte_1EB75E138)
      {
        if (dword_1EB75DE40)
        {
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_21;
      }
    }
  }

  return result;
}

void CMSM_IDSConnection_RemovePortFromSharedAudioRoutePortIDs(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB75CC98)
  {
    if (CFArrayGetCount(qword_1EB75CC98) >= 1)
    {
      v2 = 0;
      while (1)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1EB75CC98, v2);
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr == a1)
        {
          break;
        }

        if (++v2 >= CFArrayGetCount(qword_1EB75CC98))
        {
          goto LABEL_10;
        }
      }

      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFArrayRemoveValueAtIndex(qword_1EB75CC98, v2);
    }

LABEL_10:
    if (!qword_1EB75CC98 || !CFArrayGetCount(qword_1EB75CC98))
    {
      if (qword_1EB75CC90)
      {
        CFRelease(qword_1EB75CC90);
        qword_1EB75CC90 = 0;
      }
    }
  }
}

void *CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToLocal(void *result)
{
  if (byte_1EB75CCA0 != result)
  {
    byte_1EB75CCA0 = result;
    return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }

  return result;
}

void *CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToRemote(void *result)
{
  if (byte_1EB75CCA1 != result)
  {
    byte_1EB75CCA1 = result;
    if (result)
    {
    }

    else
    {
      CMSM_IDSConnection_DeactivateIDSMXCoreSession(@"non-resumable.sharedAudioRouteIsNotConnectedToRemote");
    }

    return cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
  }

  return result;
}

uint64_t CMSM_IDSConnection_GetMessagingQueue(uint64_t a1, uint64_t a2)
{
  if (CMSM_IDSConnection_GetMessagingQueue_once != -1)
  {
    CMSM_IDSConnection_GetMessagingQueue_cold_1();
  }

  return CMSM_IDSConnection_GetMessagingQueue_messagingQueue;
}

void CMSM_IDSConnection_SetMessageWaitSemaphore(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = dispatch_semaphore_create(0);
  CFDictionarySetValue(Mutable, @"lock", v3);
  if (a1 && Mutable)
  {
    FigSimpleMutexLock();
    CFDictionarySetValue(qword_1EB75CCD8, a1, Mutable);
    FigSimpleMutexUnlock();
LABEL_5:
    CFRelease(Mutable);
    goto LABEL_6;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (Mutable)
  {
    goto LABEL_5;
  }

LABEL_6:
  dispatch_release(v3);
}

void CMSM_IDSConnection_WaitForReply(const void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = cmsm_IDSConnection_CopyOutstandingMessage(a1);
  Value = CFDictionaryGetValue(v2, @"lock");
  v4 = dispatch_time(0, 6000000000);
  if (dispatch_semaphore_wait(Value, v4))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(qword_1EB75CCD8, a1);
    FigSimpleMutexUnlock();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (!v2)
    {
      return;
    }
  }

  CFRelease(v2);
}

CFTypeRef cmsm_IDSConnection_CopyOutstandingMessage(const void *a1)
{
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(qword_1EB75CCD8, a1);
  if (Value)
  {
    v3 = CFRetain(Value);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

void CMSM_IDSConnection_SetMessageReplyComplete(const void *a1)
{
  v1 = cmsm_IDSConnection_CopyOutstandingMessage(a1);
  if (v1)
  {
    v2 = v1;
    Value = CFDictionaryGetValue(v1, @"lock");
    dispatch_semaphore_signal(Value);

    CFRelease(v2);
  }
}

uint64_t FigRouteDiscoveryManagerCopyFallbackRouteDescriptor(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (!a3)
  {
    goto LABEL_20;
  }

  if (a1 != 8 || !MX_FeatureFlags_IsSystemInputPickerEnabled(a1, a2))
  {
    OUTLINED_FUNCTION_2_0();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    if (!v8)
    {
      v10 = 0;
LABEL_14:
      v9 = 0;
      *a3 = v10;
      goto LABEL_17;
    }

LABEL_8:
    v9 = v8;
    goto LABEL_17;
  }

  EndpointManager = FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F8]);
  if (!EndpointManager)
  {
LABEL_20:
    OUTLINED_FUNCTION_2_0();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_8;
  }

  v6 = EndpointManager;
  if (dword_1EB75DF60)
  {
    HIBYTE(v16) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (!v11)
  {
    v9 = 4294954514;
LABEL_16:
    OUTLINED_FUNCTION_2_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
    goto LABEL_17;
  }

  v12 = v11(v6, 0x1F289BB50, *MEMORY[0x1E695E480], a2, 0, cf);
  if (v12)
  {
    v9 = v12;
    goto LABEL_16;
  }

  if (!cf[0])
  {
    return 0;
  }

  v10 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(cf[0], a2);
  if (v10)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
  v9 = 0;
LABEL_17:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v9;
}

void discoveryManager_registerEndpointManager_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = MXGetAssertionLog(a1, a2);
  if (OUTLINED_FUNCTION_4_3(v2))
  {
    v9 = 136446722;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_1(&dword_1B17A2000, v3, v4, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v5, v6, v7, v8, v9);
  }
}

void discoveryManager_registerEndpointManager_cold_3(uint64_t a1, uint64_t a2)
{
  v2 = MXGetAssertionLog(a1, a2);
  if (OUTLINED_FUNCTION_4_3(v2))
  {
    v9 = 136446722;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_1(&dword_1B17A2000, v3, v4, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v5, v6, v7, v8, v9);
  }
}

void discoveryManager_registerEndpointManager_cold_4(uint64_t a1, uint64_t a2)
{
  v2 = MXGetAssertionLog(a1, a2);
  if (OUTLINED_FUNCTION_4_3(v2))
  {
    v9 = 136446722;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_1(&dword_1B17A2000, v3, v4, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v5, v6, v7, v8, v9);
  }
}

void FigRouteDiscoveryManagerRegisterEndpointManager_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = MXGetAssertionLog(a1, a2);
  if (OUTLINED_FUNCTION_4_3(v2))
  {
    v9 = 136446722;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1_1(&dword_1B17A2000, v3, v4, "%{public}s %{public}s:%i Something is seriously wrong. Please file a radar to MediaExperience (New Bugs) | All.", v5, v6, v7, v8, v9);
  }
}

void __routingContextUtilities_getSharedContextUtilities_block_invoke_cold_1()
{
  if (!byte_1EB75CFA8)
  {
    if (qword_1EB75CFA0)
    {
      dispatch_release(qword_1EB75CFA0);
      qword_1EB75CFA0 = 0;
    }

    if (qword_1EB75CF80)
    {
      CFRelease(qword_1EB75CF80);
    }

    v0 = &qword_1EB75CDB8;
    v1 = 15;
    do
    {
      v2 = *(v0 - 2);
      if (v2)
      {
        CFRelease(v2);
      }

      if (*v0)
      {
        CFRelease(*v0);
      }

      v0 += 4;
      --v1;
    }

    while (v1);
    if (qword_1EB75CFF8)
    {
      CFRelease(qword_1EB75CFF8);
      qword_1EB75CFF8 = 0;
    }

    if (qword_1EB75D000)
    {
      CFRelease(qword_1EB75D000);
      qword_1EB75D000 = 0;
    }

    if (qword_1EB75D008)
    {
      CFRelease(qword_1EB75D008);
      qword_1EB75D008 = 0;
    }
  }
}

void FigRoutingManagerInit()
{
  v48 = *MEMORY[0x1E69E9840];
  cf = 0;
  v45 = 0;
  v43 = 0;
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_4);
  }

  if (qword_1ED6D2E28)
  {
    routingManager_createSystemContext(&unk_1ED6D2E20, 1, &cf);
    OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState();
    routingManager_createSystemContext(&unk_1ED6D2E20, 2, 0);
    OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState();
    routingManager_createSystemContext(&unk_1ED6D2E20, 9, 0);
    OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState();
    routingManager_createSystemContext(&unk_1ED6D2E20, 3, &v45);
    OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState();
    routingManager_createSystemContext(&unk_1ED6D2E20, 11, 0);
    OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState();
    IsSystemInputPickerEnabled = MX_FeatureFlags_IsSystemInputPickerEnabled(v1, v2);
    if (IsSystemInputPickerEnabled)
    {
      routingManager_createSystemContext(&unk_1ED6D2E20, 13, 0);
      OUTLINED_FUNCTION_7();
      FigRoutingContextUtilities_LogCurrentState();
    }

    if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled(IsSystemInputPickerEnabled, v4))
    {
      routingManager_createSystemContext(&unk_1ED6D2E20, 14, 0);
      OUTLINED_FUNCTION_7();
      FigRoutingContextUtilities_LogCurrentState();
    }

    routingManager_createSystemContext(&unk_1ED6D2E20, 12, 0);
    OUTLINED_FUNCTION_7();
    FigRoutingContextUtilities_LogCurrentState();
    if (dword_1EB75DF20)
    {
      v13 = OUTLINED_FUNCTION_9_1(v5, v6, v7, v8, v9, v10, v11, v12, v34, v36, v38, SBYTE2(v38), SBYTE3(v38), SHIDWORD(v38));
      v21 = OUTLINED_FUNCTION_16(v13, v14, v15, v16, v17, v18, v19, v20, v35, v37, v39, v40, v41, v42);
      if (OUTLINED_FUNCTION_3_0(v21))
      {
        v46 = 136315138;
        v47 = "FigRoutingManagerInit";
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_2();
        _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v27, v0, v28);
      }

      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_13(v29, v30, v31, v32, v33);
    }

    FigRoutingContextUtilities_SetLeaderUUIDForContext(v45, cf, 0);
    FigRoutingManagerContextUtilities_SetDefaultLeaderUUIDForContext(v45, cf);
    FigRoutingContextUtilities_LogCurrentState();
    if (!FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID(v45, &v43) && !FigRoutingSessionManagerInit(v43))
    {
      MXDebugInstallSysdiagnoseBlock(@"RouteList", &__block_literal_global_22_0);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v43)
  {
    CFRelease(v43);
  }
}

uint64_t FigRoutingManagerInternal_CreateAirPlayAggregate(uint64_t a1, const void *a2, int a3, CFTypeRef *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a4)
  {
    return 0;
  }

  v6 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:", *MEMORY[0x1E69618D0]];
  if (!v6)
  {
    return 0;
  }

  v8 = v6;
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled(v6, v7))
  {
    AggregateEndpoint = MXAggregateEndpointCreateAggregateEndpoint(v8, a2, a3, &cf);
  }

  else
  {
    v10 = 5;
    do
    {
      if (dword_1EB75DF20)
      {
        OUTLINED_FUNCTION_4_4();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v12 = v37;
        }

        else
        {
          v12 = v37 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v39 = 136315394;
          OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_1_2();
          _os_log_send_and_compose_impl(v13, v14, v15, v16, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, type, "-FigRoutingManager- %s: Calling to create aggregate endpoint of type '%{public}s'");
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v17)
      {
        AggregateEndpoint = v17(v8, a3, &cf);
        if (!AggregateEndpoint)
        {
          v18 = cf;
          if (cf)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        AggregateEndpoint = 4294954514;
      }

      OUTLINED_FUNCTION_4_4();
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(v19, type))
      {
        v20 = v37;
      }

      else
      {
        v20 = v37 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v39 = 136315650;
        OUTLINED_FUNCTION_14();
        v41 = 1024;
        v42 = AggregateEndpoint;
        OUTLINED_FUNCTION_1_2();
        _os_log_send_and_compose_impl(v21, v22, v23, v24, &dword_1B17A2000, v19, type, "-FigRoutingManager- %s: Failed creating the aggregate endpoint for '%{public}s err: %d");
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      MEMORY[0x1B2734EB0](50000);
      --v10;
    }

    while (v10);
  }

  if (AggregateEndpoint)
  {
    if (dword_1EB75DF20)
    {
      OUTLINED_FUNCTION_4_4();
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v27 = os_log_type_enabled(v26, type);
      if (OUTLINED_FUNCTION_10(v27))
      {
        v39 = 136315138;
        v40 = "FigRoutingManagerInternal_CreateAirPlayAggregate";
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_2();
        _os_log_send_and_compose_impl(v28, v29, v30, v31, v32, v33, type, v34, &v39);
      }

      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRoutingManagerContextUtilities_SetAggregateEndpoint(a2, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v18 = cf;
LABEL_26:
    FigRoutingManagerContextUtilities_SetAggregateEndpoint(a2, v18);
    AggregateEndpoint = 0;
    *a4 = cf;
  }

  return AggregateEndpoint;
}

void FigRoutingManagerCreateAndActivateSystemRemotePoolEndpoint()
{
  v31 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_4);
  }

  cf = 0;
  v28 = 0;
  v1 = FigRoutingManagerContextUtilities_CopySystemRemotePoolContextUUID(&cf);
  FigRoutingManagerInternal_CreateAirPlayAggregateForSystemRemotePool(v1, cf, &v28);
  if (v28 && MXSystemRemotePool_ActivateAggregateEndpoint(v28, cf) && dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = OUTLINED_FUNCTION_17(os_log_and_send_and_compose_flags_and_os_log_type, v3, v4, v5, v6, v7, v8, v9, v23, v24, v25, *v26, v26[2], OS_LOG_TYPE_DEFAULT, 0);
    if (OUTLINED_FUNCTION_3_0(v10))
    {
      v29 = 136315138;
      v30 = "FigRoutingManagerCreateAndActivateSystemRemotePoolEndpoint";
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, v16, v0, v17);
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_13(v18, v19, v20, v21, v22);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v28)
  {
    CFRelease(v28);
  }
}

uint64_t FigRoutingManagerInternal_CreateAirPlayAggregateForSystemRemotePool(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a3)
  {
    return 0;
  }

  v5 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache getEndpointManagerForType:"getEndpointManagerForType:", *MEMORY[0x1E69618D0]];
  if (!v5)
  {
    return 0;
  }

  v7 = v5;
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled(v5, v6))
  {
    AggregateEndpoint = MXAggregateEndpointCreateAggregateEndpoint(v7, a2, 3, &cf);
  }

  else
  {
    v9 = 5;
    do
    {
      if (dword_1EB75DF20)
      {
        OUTLINED_FUNCTION_12_0();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v11 = v26;
        }

        else
        {
          v11 = v26 & 0xFFFFFFFE;
        }

        if (v11)
        {
          v28 = 136315138;
          v29 = "FigRoutingManagerInternal_CreateAirPlayAggregateForSystemRemotePool";
          OUTLINED_FUNCTION_8_1();
          OUTLINED_FUNCTION_5();
          _os_log_send_and_compose_impl(v12, v13, v14, v15, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, type, "-FigRoutingManager- %s: Calling to copy aggregate endpoint for remoteMusicPool", &v28);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v16)
      {
        AggregateEndpoint = v16(v7, &cf);
        if (!AggregateEndpoint)
        {
          v17 = cf;
          if (cf)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        AggregateEndpoint = 4294954514;
      }

      OUTLINED_FUNCTION_12_0();
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(v18, type))
      {
        v19 = v26;
      }

      else
      {
        v19 = v26 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v28 = 136315394;
        v29 = "FigRoutingManagerInternal_CreateAirPlayAggregateForSystemRemotePool";
        v30 = 1024;
        v31 = AggregateEndpoint;
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl(v20, v21, v22, v23, &dword_1B17A2000, v18, type, "-FigRoutingManager- %s: Failed creating the aggregate endpoint for remoteMusicPool err: %d", &v28, 18);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      MEMORY[0x1B2734EB0](50000);
      --v9;
    }

    while (v9);
  }

  if (!AggregateEndpoint)
  {
    v17 = cf;
    if (cf)
    {
LABEL_26:
      FigRoutingManagerContextUtilities_SetAggregateEndpoint(a2, v17);
      AggregateEndpoint = 0;
      *a3 = cf;
      return AggregateEndpoint;
    }

    return 0;
  }

  FigRoutingManagerContextUtilities_SetAggregateEndpoint(a2, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  return AggregateEndpoint;
}

uint64_t FigRoutingManagerCreateAggregateForContextIfNecessary(const void *a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsAirPlayDaemonEnabled(a1, a2) || !FigRoutingManagerContextUtilities_DoesContextSupportWHAMultiDeviceRouting(a1))
  {
    return 0;
  }

  ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
  if (ContextType == 9)
  {
    if (FigRoutingManagerUtilities_AreAllEndpointsOfTypeAirPlay(a2))
    {
LABEL_5:
      cf = 0;
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, &cf);
      if (cf)
      {
        IsEndpointActivated = FigRoutingManagerIsEndpointActivated(cf);
        if (IsEndpointActivated)
        {
          if (dword_1EB75DF20)
          {
            v13 = OUTLINED_FUNCTION_9_1(IsEndpointActivated, v6, v7, v8, v9, v10, v11, v12, v49, v51, v53, SBYTE2(v53), SBYTE3(v53), SHIDWORD(v53));
            v21 = OUTLINED_FUNCTION_16(v13, v14, v15, v16, v17, v18, v19, v20, v50, v52, v54, v55, v56, type);
            if (OUTLINED_FUNCTION_3_0(v21))
            {
              v59 = 136315138;
              v60 = "FigRoutingManagerCreateAggregateForContextIfNecessary";
              OUTLINED_FUNCTION_8_1();
              OUTLINED_FUNCTION_2();
              _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v27, ContextType, v28, &v59);
            }

            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_13(v43, v44, v45, v46, v47);
          }
        }

        else if (ContextType == 9)
        {
          MXSystemRemotePool_ActivateAggregateEndpoint(cf, a1);
        }

        else
        {
          FigRoutingManager_iOSActivateEndpoint(cf, a1, 0, 0);
        }
      }

      else
      {
        FigRoutingManagerCreateAndActivateAggregateEndpointForContext(a1);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }
  }

  else if (FigRoutingManagerUtilities_AreAllEndpointsWHAGroupable(a2))
  {
    goto LABEL_5;
  }

  if (dword_1EB75DF20)
  {
    LODWORD(cf) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v30 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_3_0(v30))
    {
      v59 = 136315138;
      v60 = "FigRoutingManagerCreateAggregateForContextIfNecessary";
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_2();
      _os_log_send_and_compose_impl(v31, v32, v33, v34, v35, v36, 0, v37, &v59);
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_13(v38, v39, v40, v41, v42);
  }

  return 0;
}

uint64_t routingManager_registerContextInternal(uint64_t a1, const void *a2, uint64_t a3, int a4, const __CFDictionary *a5)
{
  v8 = FigRoutingManagerContextUtilities_AddContext(a2, a3, a4, a5);
  if (v8)
  {
    return v8;
  }

  if (a4 == 4)
  {
    if (CMSMDeviceState_IsHomePodHub())
    {
      cf = 0;
      Value = CFDictionaryGetValue(a5, @"isAudioContextTest");
      if (Value != *MEMORY[0x1E695E4D0])
      {
        FigRoutingManagerInternal_CreateAirPlayAggregate(Value, a2, 0, &cf);
        FigRoutingManagerContextUtilities_SetAggregateEndpoint(a2, cf);
        if (cf)
        {
          IsEndpointActivated = FigRoutingManagerIsEndpointActivated(cf);
          v9 = cf;
          if (IsEndpointActivated)
          {
LABEL_6:
            if (v9)
            {
              CFRelease(v9);
            }

            goto LABEL_10;
          }

          MXAudioContext_ActivateAggregateEndpoint(cf, a2);
LABEL_5:
          v9 = cf;
          goto LABEL_6;
        }
      }
    }
  }

  else if (a4 == 5)
  {
    cf = 0;
    FigRoutingManagerContextUtilities_CopySystemAudioContextUUID(&cf);
    FigRoutingContextUtilities_SetLeaderUUIDForContext(a2, cf, @"configUpdateReasonEndedBottomUpRouteChange");
    FigRoutingManagerContextUtilities_SetDefaultLeaderUUIDForContext(a2, cf);
    goto LABEL_5;
  }

LABEL_10:
  FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(a2, @"currentRouteChanged", 0);
  if (a2)
  {
    CFRetain(a2);
  }

  OUTLINED_FUNCTION_15();
  MXDispatchAsync(v11, v12, v13, v14, v15, v16, v17);
  return v8;
}

uint64_t FigRoutingManagerRegisterContextWithUUID(uint64_t a1, const __CFDictionary *a2, int a3, const void *a4)
{
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_4);
  }

  if (a3 - 1) < 0xE && ((0x3F07u >> (a3 - 1)))
  {
    return 4294955276;
  }

  if (qword_1ED6D2E28)
  {
    v9 = &unk_1ED6D2E20;
  }

  else
  {
    v9 = 0;
  }

  result = routingManager_registerContextInternal(v9, a4, a1, a3, a2);
  if (!result)
  {
    FigRoutingContextUtilities_LogCurrentState();
    return 0;
  }

  return result;
}

void FigRoutingManagerUnregisterContext(const void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    ContextType = FigRoutingManagerContextUtilities_GetContextType(a1);
    if ((ContextType - 5) > 1)
    {
      if (ContextType == 4 && CMSMDeviceState_IsHomePodHub() && dword_1EB75DF20)
      {
        LODWORD(theArray) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v15 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_10(v15))
        {
          v30 = 136315394;
          v31 = "FigRoutingManagerUnregisterContext";
          v32 = 2114;
          v33 = a1;
          OUTLINED_FUNCTION_5();
          _os_log_send_and_compose_impl(v16, v17, v18, v19, v20, os_log_and_send_and_compose_flags_and_os_log_type, 0, v21, &v30, 22);
        }

        OUTLINED_FUNCTION_0_0();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      theArray = 0;
      FigRoutingManagerContextUtilities_CopyActivatedEndpointsInfo(a1, &theArray);
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v4 = Count;
          for (i = 0; i != v4; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            Value = CFDictionaryGetValue(ValueAtIndex, @"ActivatedEndpointsInfo_Endpoint");
            FigCFDictionaryGetInt64IfPresent();
            if (dword_1EB75DF20)
            {
              v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_0_0();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            FigRoutingManager_iOSDeactivateEndpoint(Value, 0, 0);
            OUTLINED_FUNCTION_15();
            FigRoutingManagerContextUtilities_SetPickedEndpoints(v9, v10, v11, v12, v13);
          }
        }

        if (theArray)
        {
          CFRelease(theArray);
        }
      }
    }

    if (_MergedGlobals != -1)
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_4);
    }

    CFRetain(a1);
    OUTLINED_FUNCTION_15();
    MXDispatchAsync(v22, v23, v24, v25, v26, v27, v28);
    FigRoutingManagerContextUtilities_RemoveContext(a1);
    FigRoutingContextUtilities_LogCurrentState();
  }
}

uint64_t FigRoutingManagerCopyContextWithUUID(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID(a1, a2);
  }

  else
  {
    return 4294955276;
  }
}

uint64_t FigRoutingManagerCopyPickedRouteDescriptorForRoutingContext(uint64_t a1, __CFDictionary **a2)
{
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_4);
  }

  cf = 0;
  v4 = 4294954516;
  if (a1 && a2)
  {
    v4 = FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a1, 0, &cf);
    v5 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(cf, 0);
    if (cf)
    {
      CFRelease(cf);
    }

    *a2 = v5;
  }

  return v4;
}

uint64_t FigRoutingManagerCopyPickedRouteDescriptorsForRoutingContext(uint64_t a1, const __CFArray **a2)
{
  cf = 0;
  v2 = 4294954516;
  if (a1 && a2)
  {
    if (_MergedGlobals != -1)
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_4);
    }

    v2 = routingManager_iOSCopyPickedEndpointsForRoutingContext(a1, &cf);
    *a2 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(cf, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v2;
}

uint64_t FigRoutingManagerCopyPickedEndpointForRemoteControl(uint64_t a1, void *a2)
{
  v5 = 0;
  result = 4294954516;
  if (a1)
  {
    if (a2)
    {
      FigRoutingManagerContextUtilities_CopyPickedEndpointForRemoteControl(a1, &v5);
      result = 0;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t FigRoutingManagerSaveCommunicationChannelUUIDForContext(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return FigRoutingManagerContextUtilities_SaveCommChannelUUID(a1, a2);
  }

  else
  {
    return 4294954516;
  }
}

uint64_t FigRoutingManagerPerformPostInitOperations()
{
  v4 = 0;
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_4);
  }

  if (FigRoutingManagerDoesDeviceAlwaysHaveAggregateForLocalPlayback())
  {
    FigRoutingManagerCreateAndActivateAggregateEndpointForLocalPlayback();
    v1 = 0;
  }

  else
  {
    cf = 0;
    v0 = FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
    FigRoutingManagerInternal_CreateAirPlayAggregate(v0, cf, 0, &v4);
    v1 = 0;
    if (v4)
    {
      v1 = FigRoutingManager_iOSActivateEndpoint(v4, cf, 0, 0);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v4)
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  FigRoutingManagerCreateAndActivateSystemRemotePoolEndpoint();
  return v1;
}

void FigRoutingManagerHandleAggregateFailure(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    cf = 0;
    v64 = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v2)
    {
      goto LABEL_16;
    }

    v2(CMBaseObject, *MEMORY[0x1E6962238], *MEMORY[0x1E695E480], &cf);
    v10 = cf;
    if (!cf)
    {
      goto LABEL_16;
    }

    if (dword_1EB75DF20)
    {
      CMBaseObject = OUTLINED_FUNCTION_11(cf, v3, v4, v5, v6, v7, v8, v9, v52, v54, v56, v58, SBYTE2(v58), SBYTE3(v58), SHIDWORD(v58));
      v11 = os_log_type_enabled(CMBaseObject, BYTE3(v58));
      if (OUTLINED_FUNCTION_10(v11))
      {
        v65 = 136315394;
        v66 = "FigRoutingManagerHandleAggregateFailure";
        v67 = 2114;
        v68 = cf;
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl(v12, v13, v14, v15, v16, CMBaseObject, BYTE3(v58), v17);
      }

      OUTLINED_FUNCTION_0_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v10 = cf;
    }

    FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(v10, 0, &v64);
    v18 = FigCFEqual();
    if (v18)
    {
      if (dword_1EB75DF20)
      {
        v26 = OUTLINED_FUNCTION_11(v18, v19, v20, v21, v22, v23, v24, v25, v52, v54, v56, v58, SBYTE2(v58), SBYTE3(v58), SHIDWORD(v58));
        v34 = OUTLINED_FUNCTION_17(v26, v27, v28, v29, v30, v31, v32, v33, v53, v55, v57, v59, v60, type, v62);
        if (OUTLINED_FUNCTION_3_0(v34))
        {
          v65 = 136315394;
          v66 = "FigRoutingManagerHandleAggregateFailure";
          v67 = 2114;
          v68 = cf;
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_2();
          _os_log_send_and_compose_impl(v35, v36, v37, v38, v39, v40, CMBaseObject, v41);
        }

        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_13(v42, v43, v44, v45, v46);
      }

      CMSMUtility_InterruptSessionsWithRoutingContextUUID(cf);
      FigRoutingManagerPickEndpointsForContext(cf, 0, 0, 0);
      OUTLINED_FUNCTION_15();
      FigRoutingManagerContextUtilities_SetPickedEndpoints(v47, v48, v49, v50, v51);
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_16:
  if (v64)
  {
    CFRelease(v64);
  }
}

void FigRoutingManagerCopySelectedBufferedEndpoint_cold_1(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  FigRoutingContextUtilities_CopyLeaderUUIDForContext(a1, &cf);
  FigRoutingManagerCopyPickedEndpointForRoutingContext(cf, a2);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FVIOKit_PlayVibration(CMTime *x0_0, float a2)
{
  if (!gFVInfo)
  {
    return 4294950806;
  }

  if (a2 >= 0.0 && a2 <= 1.0)
  {
    OUTLINED_FUNCTION_11_0();
    if (!v9 || (v10 = v8, v11 = v7, v12 = v6, OUTLINED_FUNCTION_0_1(), v75 = *MEMORY[0x1E6960CC0], time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2) == -1))
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v75, DWORD2(v75), v91);
    }

    else
    {
      v13 = FigSimpleMutexLock();
      if (!v13)
      {
        OUTLINED_FUNCTION_11_0();
        if (v9 && (OUTLINED_FUNCTION_7_0(), OUTLINED_FUNCTION_6_0(v127, v14, v15, v16, v17, v18, v19, v75, v91, v100, v105, v114, *&time2.value, time2.epoch, v124, time1.value) == 1) && (OUTLINED_FUNCTION_11_0(), v9) && (OUTLINED_FUNCTION_2_1(), OUTLINED_FUNCTION_6_0(v128, v20, v21, v22, v23, v24, v25, v75, v91, v100, v105, v114, *&time2.value, time2.epoch, v124, time1.value) == 1))
        {
          OUTLINED_FUNCTION_0_1();
          if (OUTLINED_FUNCTION_4_5(*(v12 + 16), v75, *(&v75 + 1), v91, v100, v105, v114, *v12, *(v12 + 8), time2.epoch, v124, time1.value) == -1 || (OUTLINED_FUNCTION_7_0(), OUTLINED_FUNCTION_4_5(*(v11 + 16), v76, v84, v92, v101, v106, v115, *v11, *(v11 + 8), time2.epoch, v124, time1.value) == -1) || (OUTLINED_FUNCTION_2_1(), OUTLINED_FUNCTION_6_0(v129, v26, v27, v28, v29, v30, v31, v77, v93, v102, v107, v116, *&time2.value, time2.epoch, v124, time1.value) == -1))
          {
            started = 4294950805;
            goto LABEL_56;
          }

          time1 = *v12;
          if (OUTLINED_FUNCTION_4_5(*(gFVInfo + 88), v78, v85, v94, v103, v108, v117, *(gFVInfo + 72), *(gFVInfo + 80), time2.epoch, v124, time1.value) == -1)
          {
            memset(&time1, 0, sizeof(time1));
            time2 = *(gFVInfo + 48);
            CMTimeMultiply(&time1, &time2, 2);
            if (OUTLINED_FUNCTION_10_0(v130, *(v12 + 16), v79, v86, v95, v109, v118, *v12, *(v12 + 8), time2.epoch, v124, *&time1.value, time1.epoch) == -1)
            {
              *v12 = time1;
            }
          }

          else
          {
            OUTLINED_FUNCTION_12_1();
          }

          time1 = *v11;
          v65 = OUTLINED_FUNCTION_4_5(*(gFVInfo + 64), v79, v86, v95, *(&v95 + 1), v109, v118, *(gFVInfo + 48), *(gFVInfo + 56), time2.epoch, v124, time1.value);
          if (v65 == -1)
          {
            v73 = *(gFVInfo + 48);
            *(v11 + 16) = *(gFVInfo + 64);
            *v11 = v73;
          }

          *&time1.timescale = 0;
          time1.epoch = 0;
          OUTLINED_FUNCTION_5_0(v65, v66, v67, v68, v69, v70, v71, v72, v82, v89, v98, v112, v121, *&time2.value, time2.epoch, v124, 0);
          if (OUTLINED_FUNCTION_10_0(v131, *(v11 + 16), v83, v90, v99, v113, v122, *v11, *(v11 + 8), time2.epoch, v124, *&time1.value, time1.epoch) != 1)
          {
LABEL_27:
            if (!*(gFVInfo + 112))
            {
              if (IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"coremedia-vibrating", (gFVInfo + 108)))
              {
                v48 = 0;
              }

              else
              {
                v48 = *(gFVInfo + 108) != 0;
              }

              *(gFVInfo + 104) = v48;
              OUTLINED_FUNCTION_0_1();
              v52 = OUTLINED_FUNCTION_4_5(*(v12 + 16), v81, v88, v97, v104, v111, v120, *v12, *(v12 + 8), time2.epoch, v124, time1.value);
              v53 = gFVInfo;
              if (v52 == 1)
              {
                OUTLINED_FUNCTION_7_0();
                v54 = FVIOKit_ConvertFigTimeToMillisec(&time1);
                OUTLINED_FUNCTION_2_1();
                v55 = FVIOKit_ConvertFigTimeToMillisec(&time1);
                v56 = v54 - v55;
                v57 = v53;
                v58 = a2;
                v59 = 1;
              }

              else
              {
                OUTLINED_FUNCTION_2_1();
                v55 = FVIOKit_ConvertFigTimeToMillisec(&time1);
                v57 = v53;
                v58 = a2;
                v56 = 0;
                v59 = 0;
              }

              started = FVIOKit_StartIOServiceVibration(v57, v55, v56, v59, v58);
              if (started)
              {
                if (*(gFVInfo + 104))
                {
                  IOPMAssertionRelease(*(gFVInfo + 108));
                  v60 = gFVInfo;
                  *(gFVInfo + 104) = 0;
                  *(v60 + 108) = 0;
                }

                goto LABEL_56;
              }

              OUTLINED_FUNCTION_16_0(gFVInfo);
              *(v61 + 120) = v10;
              if (v10)
              {
                CFRetain(v10);
              }

              if (v11)
              {
                CFRelease(v11);
              }

              time2 = *x0_0;
              CMTimeConvertScale(&time1, &time2, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              *x0_0 = time1;
              v62 = dispatch_time(0, x0_0->value);
              dispatch_source_set_timer(*(gFVInfo + 96), v62, 0xFFFFFFFFFFFFFFFFLL, 0);
              goto LABEL_55;
            }

            if (*(gFVInfo + 192))
            {
              started = 4294950801;
LABEL_56:
              FigSimpleMutexUnlock();
              return started;
            }

            Current = CFAbsoluteTimeGetCurrent();
            OUTLINED_FUNCTION_0_1();
            v50 = Current + CMTimeGetSeconds(&time1);
            v51 = gFVInfo;
            if (*(gFVInfo + 192))
            {
              if (*(gFVInfo + 136) < v50)
              {
                OUTLINED_FUNCTION_8_2(gFVInfo, v50);
              }

              if (*(v51 + 208) >= a2)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_8_2(gFVInfo, v50);
            }

            *(v51 + 208) = a2;
LABEL_51:
            *(v51 + 192) = 1;
            v63 = *(v51 + 200);
            *(v51 + 200) = v10;
            if (v10)
            {
              CFRetain(v10);
            }

            if (v63)
            {
              CFRelease(v63);
            }

LABEL_55:
            started = 0;
            goto LABEL_56;
          }
        }

        else
        {
          OUTLINED_FUNCTION_13_0();
          if (OUTLINED_FUNCTION_4_5(v32[11], v75, *(&v75 + 1), v91, v100, v105, v114, v32[9], v32[10], time2.epoch, v124, time1.value) == -1)
          {
            OUTLINED_FUNCTION_13_0();
            if (OUTLINED_FUNCTION_4_5(v44[8], v80, v87, v96, *(&v96 + 1), v110, v119, v44[6], v44[7], time2.epoch, v124, time1.value) == -1)
            {
              v45 = *(gFVInfo + 48);
              x0_0->epoch = *(gFVInfo + 64);
              *&x0_0->value = v45;
            }

            v46 = *&x0_0->value;
            *(v11 + 16) = x0_0->epoch;
            *v11 = v46;
            OUTLINED_FUNCTION_12_1();
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_0_1();
          Seconds = CMTimeGetSeconds(&time1);
          time1 = *(gFVInfo + 72);
          v34 = ceil(Seconds / CMTimeGetSeconds(&time1));
          OUTLINED_FUNCTION_0_1();
          v35 = CMTimeGetSeconds(&time1);
          v36 = CMTimeMakeWithSeconds(&time1, v35 / v34, 1000);
          *v12 = time1;
          OUTLINED_FUNCTION_5_0(v36, v37, v38, v39, v40, v41, v42, v43, v80, v87, v96, v110, v119, *&time2.value, time2.epoch, v124, time1.value);
        }

        *v11 = time1;
        goto LABEL_27;
      }
    }

    return v13;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950805, "-FigVibrator_IOKit-", 281, v2);
}

uint64_t FVIOKit_PlayVibrationWithPattern(const __CFArray *a1, const void *a2, float a3)
{
  v60 = 0;
  if (!gFVInfo)
  {
    return 4294950806;
  }

  v5 = a3 < 0.0 || a3 > 1.0;
  if (!v5 && a1)
  {
    cf = a2;
    valuePtr = *(gFVInfo + 72);
    v7 = FVIOKit_ConvertFigTimeToMillisec(&valuePtr);
    valuePtr = *(gFVInfo + 48);
    v60 = FVIOKit_ConvertFigTimeToMillisec(&valuePtr);
    v8 = FigSimpleMutexLock();
    if (v8)
    {
      return v8;
    }

    Count = CFArrayGetCount(a1);
    if (Count < 2 || (v10 = Count, (Count & 1) != 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9();
      v41 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, cf, LODWORD(valuePtr.value));
      Mutable = 0;
    }

    else
    {
      v11 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v57 = v3;
        v13 = 0;
        v14 = *MEMORY[0x1E695E4C0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v13);
          if (!ValueAtIndex)
          {
            goto LABEL_74;
          }

          v16 = ValueAtIndex;
          TypeID = CFBooleanGetTypeID();
          if (TypeID != CFGetTypeID(v16))
          {
            goto LABEL_74;
          }

          if (CFBooleanGetValue(v16) == 1)
          {
            IntensityDictionary = FVIOKit_CreateIntensityDictionary(a3);
            if (!IntensityDictionary)
            {
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_14_0(IntensityDictionary);
            CFRelease(TypeID);
          }

          else
          {
            CFArrayAppendValue(Mutable, v16);
          }

          v19 = CFArrayGetValueAtIndex(a1, v13 | 1);
          if (!v19 || (v20 = v19, v21 = CFNumberGetTypeID(), v21 != CFGetTypeID(v20)))
          {
LABEL_74:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_1();
            v41 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_71;
          }

          Value = CFBooleanGetValue(v16);
          if (Value == 1)
          {
            OUTLINED_FUNCTION_17_1(1, v23, v24, v25, v26, v27, v28, v29, v57, cf, valuePtr.value);
            if (SLODWORD(valuePtr.value) <= v7)
            {
              if (SLODWORD(valuePtr.value) < v60)
              {
                LODWORD(valuePtr.value) = v60;
              }
            }

            else
            {
              LODWORD(valuePtr.value) = v7;
            }

            v31 = CFNumberCreate(v11, kCFNumberSInt32Type, &valuePtr);
            OUTLINED_FUNCTION_14_0(v31);
            CFRelease(v20);
            v13 += 2;
            if (v13 >= v10)
            {
              v34 = CFArrayGetValueAtIndex(a1, 0);
            }

            else
            {
              v32 = CFArrayGetValueAtIndex(a1, v13);
              if (!v32)
              {
                goto LABEL_74;
              }

              v20 = v32;
              v33 = CFBooleanGetTypeID();
              if (v33 != CFGetTypeID(v20))
              {
                goto LABEL_74;
              }

              v34 = v20;
            }

            if (CFBooleanGetValue(v34) == 1)
            {
              v20 = CFNumberCreate(v11, kCFNumberSInt32Type, &v60);
              CFArrayAppendValue(Mutable, v14);
              CFArrayAppendValue(Mutable, v20);
              if (v20)
              {
                CFRelease(v20);
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_17_1(Value, v23, v24, v25, v26, v27, v28, v29, v57, cf, valuePtr.value);
            if (SLODWORD(valuePtr.value) < v60)
            {
              LODWORD(valuePtr.value) = v60;
            }

            v30 = CFNumberCreate(v11, kCFNumberSInt32Type, &valuePtr);
            OUTLINED_FUNCTION_14_0(v30);
            CFRelease(v20);
            v13 += 2;
          }
        }

        while (v13 < v10);
        v35 = CFArrayGetCount(Mutable);
        if (v35 < 1)
        {
          v37 = 0;
        }

        else
        {
          v20 = v35;
          v36 = 0;
          v37 = 0;
          do
          {
            v38 = CFArrayGetValueAtIndex(Mutable, v36);
            if (v38)
            {
              v39 = v38;
              v40 = CFNumberGetTypeID();
              if (v40 == CFGetTypeID(v39))
              {
                LODWORD(valuePtr.value) = 0;
                CFNumberGetValue(v39, kCFNumberSInt32Type, &valuePtr);
                v37 += LODWORD(valuePtr.value);
              }
            }

            ++v36;
          }

          while (v20 != v36);
        }

        if (*(gFVInfo + 112))
        {
          if (*(gFVInfo + 192))
          {
            v41 = 4294950801;
            goto LABEL_71;
          }

          v45 = CFAbsoluteTimeGetCurrent() + (v37 / 1000.0);
          v46 = gFVInfo;
          if (!*(gFVInfo + 192) || *(gFVInfo + 136) < v45)
          {
            *(gFVInfo + 136) = v45;
            CMTimeMake(&valuePtr, 0, 1);
            v46[7] = valuePtr;
            v47 = gFVInfo;
            CMTimeMake(&valuePtr, 0, 1);
            v47[6] = valuePtr;
            v48 = *(gFVInfo + 128);
            *(gFVInfo + 128) = Mutable;
            CFRetain(Mutable);
            if (v48)
            {
              CFRelease(v48);
            }
          }

          v49 = gFVInfo;
          if (!*(gFVInfo + 192) || *(gFVInfo + 208) < a3)
          {
            *(gFVInfo + 208) = a3;
          }

          *(v49 + 192) = 1;
          v50 = *(v49 + 200);
          *(v49 + 200) = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          if (v50)
          {
            CFRelease(v50);
          }

          goto LABEL_70;
        }

        v42 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"coremedia-vibrating", (gFVInfo + 108));
        v43 = gFVInfo;
        if (v42)
        {
          v44 = 0;
        }

        else
        {
          v44 = *(gFVInfo + 108) != 0;
        }

        *(gFVInfo + 104) = v44;
        started = FVIOKit_StartIOServiceVibrationWithPattern(v43, Mutable);
        if (!started)
        {
          OUTLINED_FUNCTION_16_0(gFVInfo);
          *(v53 + 120) = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          v54 = dispatch_time(0, 1000000 * v37);
          dispatch_source_set_timer(*(gFVInfo + 96), v54, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_70:
          v41 = 0;
          goto LABEL_71;
        }

        v41 = started;
        if (*(gFVInfo + 104))
        {
          IOPMAssertionRelease(*(gFVInfo + 108));
          v52 = gFVInfo;
          *(gFVInfo + 104) = 0;
          *(v52 + 108) = 0;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_9();
        v41 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, cf, LODWORD(valuePtr.value));
      }
    }

LABEL_71:
    FigSimpleMutexUnlock();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v41;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_9();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FVIOKit_PlayVibrationEndTimeout()
{
  if (gFVInfo)
  {
    if (FigSimpleMutexLock())
    {
      return;
    }

    v0 = gFVInfo;
    if (*(gFVInfo + 112))
    {
      if (FVIOKit_StopVibrator(gFVInfo))
      {
        goto LABEL_26;
      }

      v0 = gFVInfo;
    }

    if (*(v0 + 192))
    {
      v1 = *(v0 + 136);
      v2 = v1 - CFAbsoluteTimeGetCurrent();
      v3 = *(gFVInfo + 128);
      if (v3)
      {
        started = FVIOKit_StartIOServiceVibrationWithPattern(gFVInfo, v3);
        v5 = *(gFVInfo + 128);
        if (v5)
        {
          CFRelease(v5);
          *(gFVInfo + 128) = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_15_0();
        Seconds = CMTimeGetSeconds(v8);
        v10 = gFVInfo;
        v11 = *(gFVInfo + 208);
        if (v2 <= Seconds)
        {
          OUTLINED_FUNCTION_15_0();
          v15 = FVIOKit_ConvertFigTimeToMillisec(v20);
          v17 = v10;
          v18 = v11;
          v16 = 0;
          v19 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_15_0();
          v13 = FVIOKit_ConvertFigTimeToMillisec(v12);
          OUTLINED_FUNCTION_15_0();
          v15 = FVIOKit_ConvertFigTimeToMillisec(v14);
          v16 = v13 - v15;
          v17 = v10;
          v18 = v11;
          v19 = 1;
        }

        started = FVIOKit_StartIOServiceVibration(v17, v15, v16, v19, v18);
      }

      if (started)
      {
        goto LABEL_26;
      }

      v21 = gFVInfo;
      *(gFVInfo + 192) = 0;
      v22 = *(v21 + 120);
      v23 = *(v21 + 200);
      *(v21 + 120) = v23;
      if (v23)
      {
        CFRetain(v23);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      v24 = gFVInfo;
      v25 = *(gFVInfo + 200);
      if (v25)
      {
        CFRelease(v25);
        v24 = gFVInfo;
        *(gFVInfo + 200) = 0;
      }

      v26 = *(v24 + 96);
      v7 = dispatch_time(0, (v2 * 1000000000.0));
      v6 = v26;
    }

    else
    {
      *(v0 + 112) = 0;
      if (*(v0 + 104))
      {
        IOPMAssertionRelease(*(v0 + 108));
        v0 = gFVInfo;
        *(gFVInfo + 104) = 0;
        *(v0 + 108) = 0;
      }

      v6 = *(v0 + 96);
      v7 = -1;
    }

    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_26:
    FigSimpleMutexUnlock();
    return;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t FVIOKit_StartIOServiceVibration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibration_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibration_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibration_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibration_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibrationWithPattern_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibrationWithPattern_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StartIOServiceVibrationWithPattern_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FVIOKit_StopVibrator_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigStarkModeControllerRemoteCreate(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(algn_1ED6D2E74);
  if (_MergedGlobals_0 || !qword_1ED6D2E78)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF20]);
    v5 = [v4 initWithObjectsAndKeys:{@"ServerConnectionDied", *MEMORY[0x1E69633B0], 0}];
    FigNote_AllowInternalDefaultLogs();
    OUTLINED_FUNCTION_5_1();
    fig_note_initialize_category_with_default_work();
    OUTLINED_FUNCTION_5_1();
    fig_note_initialize_category_with_default_work();
    v6 = FigXPCRemoteClientCreate();
    _MergedGlobals_0 = v6;
    if (v6 || !qword_1ED6D2E78)
    {
      MXSimulateCrash([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"FigXPCRemoteClientCreate failed with error=%d, gFigStarkModeControllerRemoteClient=%p", v6, qword_1ED6D2E78), "UTF8String"]);
    }
  }

  os_unfair_lock_unlock(algn_1ED6D2E74);
  v9 = _MergedGlobals_0;
  if (!_MergedGlobals_0)
  {
    FigStarkModeControllerGetClassID(v7, v8);
    v10 = CMDerivedObjectCreate();
    if (v10)
    {
      v9 = v10;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_2();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v12 = FigXPCCreateBasicMessage();
      if (v12 || (v12 = OUTLINED_FUNCTION_6_1(qword_1ED6D2E78), v12))
      {
        v9 = v12;
      }

      else
      {
        uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (*(DerivedStorage + 8))
        {
          v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, 0);
        }

        else
        {
          *DerivedStorage = uint64;
          v15 = FigXPCRemoteClientAssociateObject();
        }

        v9 = v15;
        if (v15)
        {
          v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_0_2();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          *a3 = 0;
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t remoteFigStarkModeController_GetCurrentMode(uint64_t a1, UInt8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7, a8, cf, v23, v24, v25);
  if (v9 || (v9 = FigXPCCreateBasicMessage(), v9) || (v9 = OUTLINED_FUNCTION_6_1(qword_1ED6D2E78), v9))
  {
    v18 = v9;
  }

  else
  {
    v10 = FigXPCMessageCopyCFData();
    v18 = v10;
    if (!v10)
    {
      v19 = OUTLINED_FUNCTION_2_2(v10, v11, v12, v13, v14, v15, v16, v17, cfa);
      CFDataGetBytes(v19, v26, a2);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (cfa)
  {
    CFRelease(cfa);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v18;
}

uint64_t remoteFigStarkModeController_RequestModeChange(uint64_t a1, uint64_t a2, const char *a3, UInt8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v11 = OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7, a8, cf, v28, v29, v30);
  if (v11 || (v11 = FigXPCCreateBasicMessage(), v11))
  {
    v23 = v11;
    v9 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  if (a2)
  {
    v12 = MXCFDataCreate(a2, 72);
    v13 = FigXPCMessageSetCFData();
    if (v13 || *(a2 + 16) && (v13 = FigXPCMessageSetCFString(), v13) || *(a2 + 40) && (v13 = FigXPCMessageSetCFString(), v13))
    {
      v23 = v13;
      v9 = 0;
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
    if (v9)
    {
LABEL_10:
      v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v9, 0x8000100u);
      FigXPCMessageSetCFString();
    }
  }

  FigXPCMessageSetCFBoolean();
  v14 = OUTLINED_FUNCTION_6_1(qword_1ED6D2E78);
  if (v14)
  {
    v23 = v14;
  }

  else
  {
    v15 = FigXPCMessageCopyCFData();
    v23 = v15;
    if (a4 && !v15)
    {
      v24 = OUTLINED_FUNCTION_2_2(v15, v16, v17, v18, v19, v20, v21, v22, cfa);
      CFDataGetBytes(v24, v31, a4);
    }
  }

LABEL_15:
  FigXPCRelease();
  FigXPCRelease();
  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v23;
}

uint64_t remoteFigStarkModeController_RequestInitialModeChange(uint64_t a1, UInt8 *a2, UInt8 *a3, uint64_t a4, const char *a5, UInt8 *a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v11 = a3;
  v12 = a2;
  v13 = OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7, a8, cf, v32, v33, v34);
  if (v13 || (v13 = FigXPCCreateBasicMessage(), v13))
  {
    v27 = v13;
    v11 = 0;
    v16 = 0;
    v9 = 0;
    v12 = 0;
    goto LABEL_19;
  }

  if (v12)
  {
    v12 = MXCFDataCreate(v12, 12);
    v14 = FigXPCMessageSetCFData();
    if (v14)
    {
      v27 = v14;
      v11 = 0;
LABEL_37:
      v16 = 0;
      goto LABEL_38;
    }
  }

  if (v11)
  {
    v11 = MXCFDataCreate(v11, 12);
    v15 = FigXPCMessageSetCFData();
    if (v15)
    {
      v27 = v15;
      goto LABEL_37;
    }
  }

  if (a4)
  {
    v16 = MXCFDataCreate(a4, 72);
    v17 = FigXPCMessageSetCFData();
    if (!v17)
    {
      if (!*(a4 + 16) || (v17 = FigXPCMessageSetCFString(), !v17))
      {
        if (!*(a4 + 40) || (v17 = FigXPCMessageSetCFString(), !v17))
        {
          if (!v9)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }
      }
    }

    v27 = v17;
LABEL_38:
    v9 = 0;
    goto LABEL_19;
  }

  v16 = 0;
  if (v9)
  {
LABEL_14:
    v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v9, 0x8000100u);
    FigXPCMessageSetCFString();
  }

LABEL_15:
  v18 = OUTLINED_FUNCTION_6_1(qword_1ED6D2E78);
  if (v18)
  {
    v27 = v18;
  }

  else
  {
    v19 = FigXPCMessageCopyCFData();
    v27 = v19;
    if (a6 && !v19)
    {
      v28 = OUTLINED_FUNCTION_2_2(v19, v20, v21, v22, v23, v24, v25, v26, cfa);
      CFDataGetBytes(v28, v35, a6);
    }
  }

LABEL_19:
  FigXPCRelease();
  FigXPCRelease();
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v27;
}

uint64_t remoteXPCStarkModeController_GetObjectID(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294954315;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    v7 = qword_1EB75E1F0;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294949644, "-FigStarkModeControllerRemote-", 65, v2);
  }

  else
  {
    v5 = DerivedStorage;
    result = 0;
    *a2 = *v5;
  }

  return result;
}

uint64_t _central_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v33 = qword_1EB75E210;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 4294954511, "-endpoint_central-", 1155, v4);
  }

  v10 = DerivedStorage;
  v11 = *MEMORY[0x1E6962358];
  v12 = CFEqual(a2, *MEMORY[0x1E6962358]);
  v13 = MEMORY[0x1E6961FF8];
  if (v12 || CFEqual(a2, *MEMORY[0x1E6961FF8]))
  {
    EntityDoingActivity = _FigEndpointCentralGetEntityDoingActivity(a1, @"TurnByTurnNavigation");
    v21 = CFEqual(a2, v11);
    v22 = MEMORY[0x1E695E4D0];
    if (v21)
    {
      v23 = EntityDoingActivity == 2;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      v24 = CFEqual(a2, *v13);
      if (EntityDoingActivity != 1 || v24 == 0)
      {
        v22 = MEMORY[0x1E695E4C0];
      }
    }

    v16 = *v22;
    goto LABEL_36;
  }

  if (CFEqual(a2, *MEMORY[0x1E6962000]))
  {
    v28 = _FigEndpointCentralGetEntityDoingActivity(a1, @"Speech");
    v19 = MEMORY[0x1E695E4D0];
    v29 = MEMORY[0x1E695E4C0];
    v30 = v28 == 1;
    goto LABEL_33;
  }

  if (CFEqual(a2, *MEMORY[0x1E6962010]))
  {
    v31 = @"Screen";
LABEL_32:
    v32 = _FigEndpointCentralEntityHoldsResource(a1, @"Car", v31);
    v19 = MEMORY[0x1E695E4C0];
    v29 = MEMORY[0x1E695E4D0];
    v30 = v32 == 0;
LABEL_33:
    if (!v30)
    {
      v19 = v29;
    }

    goto LABEL_35;
  }

  if (CFEqual(a2, *MEMORY[0x1E6962008]))
  {
    v31 = @"MainAudio";
    goto LABEL_32;
  }

  v14 = CFEqual(a2, *MEMORY[0x1E6962018]);
  if (!v14)
  {
    if (!CFEqual(a2, @"IsAnyAirPlayCapableVideoSessionActive"))
    {
      CMBaseObject = FigEndpointGetCMBaseObject();

      return CMBaseObjectCopyProperty_0(CMBaseObject, a2, a3, a4);
    }

    v18 = [+[MXSessionManager sharedInstance](MXSessionManager someAirPlayCapableVideoClientIsActive];
    v19 = MEMORY[0x1E695E4D0];
    if (!v18)
    {
      v19 = MEMORY[0x1E695E4C0];
    }

LABEL_35:
    v16 = *v19;
    goto LABEL_36;
  }

  if (MX_FeatureFlags_IsAirPlayDaemonEnabled(v14, v15))
  {
    v16 = *(v10 + 1);
    if (!v16)
    {
      v17 = 0;
LABEL_37:
      result = 0;
      *a4 = v17;
      return result;
    }

LABEL_36:
    v17 = CFRetain(v16);
    goto LABEL_37;
  }

  return 4294954509;
}

BOOL FigEndpointCreateCentral_cold_1(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t _VAEndpointManager_SetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || *(DerivedStorage + 8))
  {
    return 4294950584;
  }

  if (CFEqual(a2, @"VAEM_DeviceQuietBufferSize"))
  {
    [+[MXSessionManager sharedInstance](MXSessionManager defaultVADID];
    MXCFNumberGetValueUInt32(a3);
    v6 = OUTLINED_FUNCTION_14_1();
    vaemSetDeviceBufferNumPCMFramesQuiet(v6, v7, v8);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_UplinkMute"))
  {
    vaemSetUplinkMuteOnDevice(*MEMORY[0x1E695E4D0] == a3);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_DownlinkMute"))
  {
    if (*MEMORY[0x1E695E4D0] == a3)
    {
      v18 = vaemGetUplinkMute() | 2;
      v9 = qword_1EB75E070;
      if (!qword_1EB75E070)
      {
        return 0;
      }

      p_UplinkMute = &v18;
    }

    else
    {
      UplinkMute = vaemGetUplinkMute();
      v9 = qword_1EB75E070;
      if (!qword_1EB75E070)
      {
        return 0;
      }

      p_UplinkMute = &UplinkMute;
    }

    v9(1, p_UplinkMute);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_BTLowLatencyMode"))
  {
    CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    ValueSInt32 = MXCFNumberGetValueSInt32(a3);
    vaeSetBTLowLatencyMode(CurrentOutputPortAtIndex, ValueSInt32);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_CurrentInputDataSource"))
  {
    vaemSetInputDataSource(a3);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_CurrentOutputDataDestination"))
  {
    vaemSetOutputDataDestination(a3);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_DefaultInputGain"))
  {
    vaemSetDefaultInputGain();
    return 0;
  }

  if (CFEqual(a2, @"VAEM_DeviceInputGainScalar"))
  {
    ValueFloat32 = MXCFNumberGetValueFloat32(a3);
    vaemSetDeviceInputGainScalar(*&ValueFloat32);
    return 0;
  }

  if (CFEqual(a2, @"VAEM_ThermalGainAdjustment_Speaker"))
  {
    v15 = MXCFNumberGetValueFloat32(a3);
    if (*&v15 > 1.0)
    {
      *&v15 = 1.0;
    }

    LODWORD(qword_1EB75D188) = LODWORD(v15);
LABEL_35:
    vaemUpdateThermalGainAdjustment();
    return 0;
  }

  if (CFEqual(a2, @"VAEM_ThermalGainAdjustment_Haptics"))
  {
    v16 = MXCFNumberGetValueFloat32(a3);
    if (*&v16 > 1.0)
    {
      *&v16 = 1.0;
    }

    HIDWORD(qword_1EB75D188) = LODWORD(v16);
    goto LABEL_35;
  }

  result = CFEqual(a2, @"VAEM_DisallowAudioFormatChanges");
  if (result)
  {
    v17 = FigCFEqual();
    result = 0;
    byte_1EB75D184 = v17;
  }

  return result;
}

uint64_t _VAEndpointManager_SetPropertyForAudioDevice(uint64_t a1, const void *a2, uint64_t a3, unsigned __int8 *a4, const __CFNumber *a5)
{
  CMBaseObjectGetDerivedStorage();
  result = 4294950586;
  if (a2 && a3)
  {
    if (CFEqual(a2, @"VAEM_DeviceVolume"))
    {
      ValueFloat32 = MXCFNumberGetValueFloat32(a5);
      vaemSetDeviceVolume(a3, 0, *&ValueFloat32);
      return 0;
    }

    result = CFEqual(a2, @"VAEM_DeviceFormat");
    if (result)
    {
      if (a4)
      {
        v11 = *a4;
      }

      else
      {
        v11 = 0;
      }

      vaemSetDeviceFormat(a3, a5, v11);
      return 0;
    }
  }

  return result;
}

uint64_t FigVAEndpointManagerCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void endpointUIAgentHelper_UIAgentCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global_16);
  }

  if (qword_1ED6D2E88)
  {
    v6 = &unk_1ED6D2EA0;
  }

  else
  {
    v6 = 24;
  }

  if (*v6)
  {
    if (a2)
    {
      v7 = 40;
      if (qword_1ED6D2E88)
      {
        v7 = &unk_1ED6D2EB0;
      }

      v8 = *v7;
      v9 = &unk_1ED6D2EB8;
      if (!qword_1ED6D2E88)
      {
        v9 = 48;
      }

      v10 = *v9;
      v11 = 0;
      v12 = a2;
    }

    else
    {
      if (!a1)
      {
        return;
      }

      v13 = 40;
      if (qword_1ED6D2E88)
      {
        v13 = &unk_1ED6D2EB0;
      }

      v8 = *v13;
      v14 = &unk_1ED6D2EB8;
      if (!qword_1ED6D2E88)
      {
        v14 = 48;
      }

      v10 = *v14;
      v11 = a1;
      v12 = 0;
    }

    (*v6)(v11, v12, a3, v8, v10);
    *v6 = 0;
  }
}

uint64_t FigEndpointUIAgentHelper_CleanupPrompt(const void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global_16);
  }

  v7 = qword_1ED6D2E88;
  if (qword_1ED6D2E88)
  {
    v8 = &qword_1ED6D2E88;
  }

  else
  {
    v8 = 0;
  }

  if (a1 && (a2 || !a4))
  {
    FigSimpleMutexLock();
    if (v7)
    {
      v9 = &qword_1ED6D2E90;
    }

    else
    {
      v9 = 8;
    }

    v10 = *v9;
    if (*v9 || (endpointUIAgentHelper_updateCurrentUIAgent(v8), (v10 = *v9) != 0))
    {
      v11 = CFRetain(v10);
      FigSimpleMutexUnlock();
      if (v11)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v13 = Mutable;
          CFDictionarySetValue(Mutable, @"ATVName", a1);
          v14 = MEMORY[0x1E695E4C0];
          if (a4)
          {
            v14 = MEMORY[0x1E695E4D0];
          }

          CFDictionarySetValue(v13, @"savePassword", *v14);
          FigCFDictionarySetValue();
          FigCFDictionarySetValue();
          v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v16)
          {
            v16(v11, v13);
          }

          v23 = 0uLL;
          v26 = 0;
          v27 = 0;
          v24 = a2;
          v25 = 0;
          FigEndpointAuthRequestHandler_SetProcessNextRequest(1, v15);
          FigEndpointAuthRequestHandler_ProcessRequest(&v23);
          Request = FigEndpointAuthRequestHandler_SetProcessNextRequest(0, v17);
          if (FigEndpointAuthRequestHandler_IsAuthListEmpty(Request, v19))
          {
            v20 = &unk_1ED6D2EA0;
            if (!v7)
            {
              v20 = 24;
            }

            *v20 = 0;
          }

          CFRelease(v11);
          v21 = v13;
        }

        else
        {
          v21 = v11;
        }

        CFRelease(v21);
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }
  }

  return 0;
}

void FigVolumeControllerAddVirtualAudioVolumeNotificationListeners(uint64_t a1, uint64_t a2)
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (MX_FeatureFlags_IsSystemInputPickerEnabled(a1, a2))
  {
    if (FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F8]))
    {
      v3 = FigVolumeControllerCopySharedController(cf);
      if (v3)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB75DE98, v3, "-FigVolumeController-", 1573, v2);
      }

      else
      {
        if (dword_1EB75DEA0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB75DE98, 4294954314, "-FigVolumeController-", 1570, v2);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

uint64_t volumeController_SetMainVolumeForRoutingContext_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t volumeController_GetMainVolumeForRoutingContext_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t volumeController_IsMainVolumeControlSupportedForRoutingContext_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke_cold_1(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (FigRoutingManagerIsEndpointDissociated(*a1))
  {
    result = 0;
    *a4 = *a3;
  }

  else
  {
    if (*(a2 + 80))
    {
      FigEndpointAggregateGetClassID();
      CMBaseObjectIsMemberOfClass();
    }

    OUTLINED_FUNCTION_0_4();
    return 1;
  }

  return result;
}

uint64_t __FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke_cold_2(uint64_t *a1, uint64_t a2)
{
  if (FigRoutingManagerIsEndpointDissociated(*a1))
  {
    return 1;
  }

  if (*(a2 + 80))
  {
    FigEndpointAggregateGetClassID();
    CMBaseObjectIsMemberOfClass();
  }

  OUTLINED_FUNCTION_0_4();
  return 0;
}

uint64_t FigVAEndpointManagerGetPropertyUInt32(uint64_t a1)
{
  FigEndpointManagerGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = OUTLINED_FUNCTION_0_5();
    v2(v1);
  }

  return 0;
}

uint64_t FigSTSCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigSTSCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigSTSCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t FigEndpointUIAgentCreate(uint64_t a1, CFTypeRef *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_1_7();
  fig_note_initialize_category_with_default_work();
  OUTLINED_FUNCTION_1_7();
  v3 = fig_note_initialize_category_with_default_work();
  if (dword_1EB75DFA0 >= 0x100)
  {
    dword_1EB75DFA0 = 0;
  }

  if (a2)
  {
    FigEndpointUIAgentGetClassID(v3, v4);
    if (!CMDerivedObjectCreate())
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v6 = FigReentrantMutexCreate();
      *(DerivedStorage + 8) = v6;
      if (v6)
      {
        if (dword_1EB75DFA0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_0_8();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *a2 = 0;
      }
    }
  }

  return 0;
}

uint64_t figEndpointUIAgent_setAuthValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2 || a3)
  {
    if (*DerivedStorage)
    {
      v8 = 4294950514;
    }

    else
    {
      v6 = *(DerivedStorage + 24);
      if (v6)
      {
        v6(a2, a3, *(DerivedStorage + 16));
      }

      *(DerivedStorage + 24) = 0;
      v7 = *(DerivedStorage + 16);
      if (v7)
      {
        CFRelease(v7);
        v8 = 0;
        *(DerivedStorage + 16) = 0;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t figEndpointUIAgent_finishedWithPrompt(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 4294950516;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950513;
  }

  v4 = Mutable;
  CFDictionarySetValue(Mutable, @"finishedWithPromptInfo", a2);
  CMNotificationCenterGetDefaultLocalCenter();
  v5 = CMNotificationCenterPostNotification();
  CFRelease(v4);
  return v5;
}

uint64_t figEndpointUIAgent_showError(uint64_t a1, const void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DFA0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_8();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    return 4294950516;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950513;
  }

  v5 = Mutable;
  CFDictionarySetValue(Mutable, @"showErrorPromptInfo", a2);
  FigCFDictionaryGetValue();
  FigCFDictionarySetValue();
  CMNotificationCenterGetDefaultLocalCenter();
  v6 = CMNotificationCenterPostNotification();
  CFRelease(v5);
  return v6;
}

uint64_t figEndpointUIAgent_copyPasswordFromKeychain(uint64_t a1, const __CFDictionary *a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294950516;
  }

  v8 = DerivedStorage;
  CFDictionaryGetValue(a2, @"ATVName");
  FigSimpleMutexLock();
  if (*v8)
  {
    v11 = 4294950514;
LABEL_9:
    FigSimpleMutexUnlock();
    return v11;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v10 = Mutable;
  CFDictionarySetValue(Mutable, @"copyPasswordInfo", a2);
  CFDictionarySetValue(v10, @"copyPasswordFromKeychainContext", a3);
  *(v8 + 32) = a4;
  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();
  v11 = CMNotificationCenterPostNotification();
  CFRelease(v10);
  return v11;
}

uint64_t figEndpointUIAgent_setPasswordFromKeychain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v8 = 4294950514;
  }

  else
  {
    v6 = *(DerivedStorage + 32);
    if (v6)
    {
      v6(a2, a3);
    }

    *(DerivedStorage + 32) = 0;
    v7 = *(DerivedStorage + 16);
    if (v7)
    {
      CFRelease(v7);
      v8 = 0;
      *(DerivedStorage + 16) = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  FigSimpleMutexUnlock();
  return v8;
}

__CFArray *MXCFArrayCreateFromCArrayOfSInt32(int *a1, unsigned int a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1 && a2)
  {
    v6 = a2;
    do
    {
      v7 = *a1++;
      valuePtr = v7;
      v8 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
      if (v8)
      {
        v9 = v8;
        CFArrayAppendValue(Mutable, v8);
        CFRelease(v9);
      }

      --v6;
    }

    while (v6);
  }

  return Mutable;
}

uint64_t CMSMUtility_CopyCurrentPlayingSessionIsRoutedViaCarBT()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopyCurrentRouteTypes();
  if (FigCFArrayContainsValue())
  {
    v1 = 1;
  }

  else
  {
    v1 = FigCFArrayContainsValue() != 0;
  }

  v2 = FigRoutingManagerCopyCarBluetoothIDs(qword_1EB75E190);
  v3 = OUTLINED_FUNCTION_0_9();
  v5 = 0;
  if (v3)
  {
    if (v1)
    {
      CurrentDeviceIdentifierAtIndex = CMSMUtility_GetCurrentDeviceIdentifierAtIndex(0);
      if (cmsmIsDeviceIDIncludedInCarBluetoothIDs(CurrentDeviceIdentifierAtIndex, v2))
      {
        v5 = 1;
      }
    }
  }

  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v5];
  v7 = CMSMUtility_CopyCurrentRouteIdentifiers();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v6;
}

const __CFArray *CMSMUtility_CopyMostImportantPlayingSession()
{
  v0 = OUTLINED_FUNCTION_0_9();
  if (v0)
  {
    v1 = v0;
    if (CFArrayGetCount(v0) < 1)
    {
      v5 = 0;
      v4 = 0;
      v3 = 0;
    }

    else
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v2);
        if (([(__CFArray *)ValueAtIndex hasPhoneCallBehavior]& 1) != 0 || CMSUtility_IsAudioCategoryRingtone(ValueAtIndex))
        {
          v5 = ValueAtIndex;
        }

        else if ([(__CFArray *)ValueAtIndex isTheAssistant])
        {
          v4 = ValueAtIndex;
        }

        else
        {
          v3 = ValueAtIndex;
        }

        ++v2;
      }

      while (v2 < CFArrayGetCount(v1));
    }

    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v3;
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v10 = v8;
    CFRelease(v1);
    v0 = v10;
  }

  return v0;
}

BOOL CMSMUtility_iOSWillRequestCarMainAudio(int a1)
{
  v2 = OUTLINED_FUNCTION_0_9();
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        if (([ValueAtIndex hasPhoneCallBehavior] & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(ValueAtIndex))
        {
          v6 = ValueAtIndex;
        }

        else if ([ValueAtIndex isTheAssistant])
        {
          v5 = ValueAtIndex;
        }

        else
        {
          v4 = ValueAtIndex;
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v3));
      if (v6 | v5)
      {
        v9 = kFigEndpointCentralTransferType_Borrow;
        goto LABEL_19;
      }
    }

    ShouldBorrowCarMainAudio = CMSUtility_ShouldBorrowCarMainAudio(v4);
    v9 = kFigEndpointCentralTransferType_Borrow;
    if (!ShouldBorrowCarMainAudio)
    {
      v9 = &kFigEndpointCentralTransferType_Take;
    }

LABEL_19:
    v10 = *v9;
    CFRelease(v3);
    if (a1)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v10 = 0;
  if (a1)
  {
LABEL_20:
    v11 = @"Borrow";
    return v10 == v11;
  }

LABEL_15:
  v11 = @"Take";
  return v10 == v11;
}

void CMSMUtility_CopyFigStarkModeController_cold_1(uint64_t a1, CFTypeRef *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t HandleStarkModeControllerMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  HIDWORD(v22) = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v14 = OpCode;
    goto LABEL_54;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  cf[0] = 0;
  v6 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v6)
  {
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
  }

  v14 = v6;
  if (v6)
  {
    goto LABEL_54;
  }

  switch(HIDWORD(v22))
  {
    case 0x2E637079:
      v7 = FigXPCHandleStdCopyPropertyMessage();
      goto LABEL_26;
    case 0x72716D63:
      OUTLINED_FUNCTION_0_10();
      buffer = 0;
      v29 = 0;
      v8 = FigXPCMessageCopyCFData();
      if (!v8)
      {
        v33.location = 0;
        v33.length = 72;
        CFDataGetBytes(0, v33, cf);
        v8 = FigXPCMessageCopyCFString();
        if (!v8)
        {
          v9 = MEMORY[0x1E695E480];
          v8 = FigXPCMessageCopyCFString();
          if (!v8)
          {
            v8 = FigXPCMessageCopyCFString();
            if (!v8)
            {
              v8 = FigXPCMessageCopyCFBoolean();
              if (!v8)
              {
                v15 = FigCFEqual();
                v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (!v16)
                {
                  v17 = 0;
                  v14 = 4294954514;
                  goto LABEL_33;
                }

                v8 = v16(0, cf, 0, bytes, v15);
                if (!v8)
                {
                  v17 = CFDataCreate(*v9, bytes, 32);
                  v14 = FigXPCMessageSetCFData();
LABEL_33:
                  if (v27[0])
                  {
                    CFRelease(v27[0]);
                  }

                  if (v28)
                  {
                    CFRelease(v28);
                  }

                  if (v17)
                  {
                    CFRelease(v17);
                  }

                  v18 = v29;
                  goto LABEL_53;
                }
              }
            }
          }
        }
      }

      v14 = v8;
      v17 = 0;
      goto LABEL_33;
    case 0x6774636D:
      *cf = 0u;
      *v27 = 0u;
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v12)
      {
        v14 = 4294954514;
        goto LABEL_54;
      }

      v7 = v12(0, cf);
      if (v7)
      {
        goto LABEL_26;
      }

      v13 = CFDataCreate(*MEMORY[0x1E695E480], cf, 32);
      v14 = FigXPCMessageSetCFData();
      if (v13)
      {
        CFRelease(v13);
      }

      goto LABEL_54;
    case 0x72696D63:
      v32 = 0;
      buffer = 0;
      v30 = 0;
      v29 = 0;
      OUTLINED_FUNCTION_0_10();
      v10 = FigXPCMessageCopyCFData();
      if (!v10)
      {
        v10 = FigXPCMessageCopyCFString();
        if (!v10)
        {
          v11 = MEMORY[0x1E695E480];
          v10 = FigXPCMessageCopyCFString();
          if (!v10)
          {
            v10 = FigXPCMessageCopyCFString();
            if (!v10)
            {
              v10 = FigXPCMessageCopyCFData();
              if (!v10)
              {
                v10 = FigXPCMessageCopyCFData();
                if (!v10)
                {
                  v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                  if (!v19)
                  {
                    v20 = 0;
                    v14 = 4294954514;
                    goto LABEL_46;
                  }

                  v10 = v19(0, &buffer, &v29, cf, 0, bytes);
                  if (!v10)
                  {
                    v20 = CFDataCreate(*v11, bytes, 32);
                    v14 = FigXPCMessageSetCFData();
LABEL_46:
                    if (v27[0])
                    {
                      CFRelease(v27[0]);
                    }

                    if (v28)
                    {
                      CFRelease(v28);
                    }

                    if (v20)
                    {
                      CFRelease(v20);
                    }

                    v18 = 0;
LABEL_53:
                    free(v18);
                    goto LABEL_54;
                  }
                }
              }
            }
          }
        }
      }

      v14 = v10;
      v20 = 0;
      goto LABEL_46;
    case 0x646F6F6D:
      v7 = FigXPCServerDisassociateObjectWithConnection();
LABEL_26:
      v14 = v7;
      goto LABEL_54;
  }

  v14 = 4294951138;
LABEL_54:
  objc_autoreleasePoolPop(v4);
  return v14;
}

uint64_t stsServer_HandleMessage(uint64_t a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t FigSTSCreateRemote(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951306, "-FigSTSRemote-", 428, v4);
LABEL_20:
    v7 = v13;
    goto LABEL_13;
  }

  if (!a4)
  {
    v14 = fig_log_get_emitter();
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 4294951306, "-FigSTSRemote-", 429, v4);
    goto LABEL_20;
  }

  if (qword_1ED6D2EE0 != -1)
  {
    dispatch_once(&qword_1ED6D2EE0, &__block_literal_global_31);
  }

  v7 = _MergedGlobals_3;
  if (!_MergedGlobals_3)
  {
    FigSTSGetClassID(a1, a2);
    v8 = CMDerivedObjectCreate();
    if (v8 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), *(DerivedStorage + 8) = CFRetain(a2), v8 = FigXPCCreateBasicMessage(), v8) || (v8 = FigXPCMessageSetCFObject(), v8) || (v8 = FigXPCMessageSetCFDictionary(), v8) || (v8 = OUTLINED_FUNCTION_4_0(qword_1ED6D2ED8), v8))
    {
      v7 = v8;
    }

    else
    {
      uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
      *CMBaseObjectGetDerivedStorage() = uint64;
      v7 = FigXPCRemoteClientAssociateObject();
      if (!v7)
      {
        *a4 = 0;
      }
    }
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  if (qword_1ED6D2ED8)
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  return v7;
}

uint64_t remoteSTS_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    FigXPCRemoteClientDisassociateObject();
    if (!*(DerivedStorage + 16) && *DerivedStorage && !FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  return FigXPCRelease();
}

uint64_t remoteSTS_CopyProperty(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (a2)
  {
    ObjectID = remoteSTS_GetObjectID(a1, &v7);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_2_6();
      ObjectID = FigXPCSendStdCopyPropertyMessage();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  }

  v4 = ObjectID;
  OUTLINED_FUNCTION_3_4(qword_1ED6D2ED8, v3, "remoteSTS_CopyProperty");
  return v4;
}

uint64_t remoteSTS_SetProperty(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (a2)
  {
    ObjectID = remoteSTS_GetObjectID(a1, &v7);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_2_6();
      ObjectID = FigXPCSendStdSetPropertyMessage();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  }

  v4 = ObjectID;
  OUTLINED_FUNCTION_3_4(qword_1ED6D2ED8, v3, "remoteSTS_SetProperty");
  return v4;
}

uint64_t remoteSTS_SetActive(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v7, v8);
    goto LABEL_8;
  }

  ObjectID = remoteSTS_GetObjectID(a1, &v7);
  if (ObjectID)
  {
LABEL_8:
    v5 = ObjectID;
    goto LABEL_6;
  }

  v5 = FigXPCCreateBasicMessage();
  if (!v5)
  {
    v5 = FigXPCMessageSetCFString();
    if (!v5)
    {
      xpc_dictionary_set_BOOL(0, kFigSTSXPCMsgParam_ActiveState[0], a3 != 0);
      v5 = FigXPCRemoteClientSendSyncMessage();
    }
  }

LABEL_6:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteSTS_GetActive(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v8 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_10:
    v5 = ObjectID;
    goto LABEL_8;
  }

  ObjectID = remoteSTS_GetObjectID(a1, &v8);
  if (ObjectID)
  {
    goto LABEL_10;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_10;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_10;
  }

  v5 = OUTLINED_FUNCTION_4_0(qword_1ED6D2ED8);
  if (!v5)
  {
    *a3 = xpc_dictionary_get_BOOL(0, kFigSTSXPCMsgParam_ActiveState[0]);
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_3_4(qword_1ED6D2ED8, v6, "remoteSTS_GetActive");
  return v5;
}

uint64_t remoteSTS_SetPropertyByLabel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_12;
  }

  ObjectID = remoteSTS_GetObjectID(a1, &v8);
  if (ObjectID)
  {
LABEL_12:
    v6 = ObjectID;
    goto LABEL_9;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5 || (v5 = FigXPCMessageSetCFString(), v5) || (v5 = FigXPCMessageSetCFString(), v5) || (v5 = FigXPCMessageSetCFObject(), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t remoteSTS_CopyPropertyByLabel(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v9 = 0;
  if (!a2 || !a3 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_12();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_13:
    v6 = ObjectID;
    goto LABEL_11;
  }

  ObjectID = remoteSTS_GetObjectID(a1, &v9);
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = OUTLINED_FUNCTION_4_0(qword_1ED6D2ED8);
  if (ObjectID)
  {
    goto LABEL_13;
  }

  v6 = FigXPCMessageCopyCFObject();
  if (!v6)
  {
    *a4 = 0;
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_3_4(qword_1ED6D2ED8, v7, "remoteSTS_CopyPropertyByLabel");
  return v6;
}

uint64_t remoteSTS_CopyShmem(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_13:
    v5 = ObjectID;
    goto LABEL_9;
  }

  ObjectID = remoteSTS_GetObjectID(a1, &v7);
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  ObjectID = OUTLINED_FUNCTION_4_0(qword_1ED6D2ED8);
  if (ObjectID)
  {
    goto LABEL_13;
  }

  if (!xpc_dictionary_get_value(0, kFigSTSXPCMsgParam_ShmemObject[0]))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_13;
  }

  v5 = 0;
  *a3 = FigXPCRetain();
LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteSTS_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t remoteXPCRouteDiscoverer_GetObjectID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t singletonVolumeController_ChangeMasterVolumeOfRoutingContext(uint64_t a1, const void *a2, float a3)
{
  OUTLINED_FUNCTION_14_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v7 = singletonVolumeController_copyRemoteVolumeController(v4, v6);
  if (!v7)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      v10 = 4294954514;
      if (!v3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v8 = OUTLINED_FUNCTION_20();
    v7 = v9(v8, a3);
  }

  v10 = v7;
  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t singletonVolumeController_SetMasterVolumeOfRoutingContext(uint64_t a1, const void *a2, float a3)
{
  OUTLINED_FUNCTION_14_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v7 = singletonVolumeController_copyRemoteVolumeController(v4, v6);
  if (!v7)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v10 = 4294954514;
      if (!v3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v8 = OUTLINED_FUNCTION_20();
    v7 = v9(v8, a3);
  }

  v10 = v7;
  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t singletonVolumeController_GetMasterVolumeOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_15_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(OUTLINED_FUNCTION_38(v5, v6, v7, v8, v9, v10, v11, v12, v17, cf) + 16) + 32))
    {
      v15 = 4294954514;
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_17_0();
    v5 = v14(v13);
  }

  v15 = v5;
  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t singletonVolumeController_GetVolumeOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_4(a1, a2, a3, a4, a5, a6, a7, a8, v13, cf);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cfa)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    v9 = OUTLINED_FUNCTION_4();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cfa)
  {
LABEL_7:
    CFRelease(cfa);
  }

  return v11;
}

uint64_t singletonVolumeController_CanSetVolumeOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_4(a1, a2, a3, a4, a5, a6, a7, a8, v13, cf);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cfa)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v9 = OUTLINED_FUNCTION_4();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cfa)
  {
LABEL_7:
    CFRelease(cfa);
  }

  return v11;
}

void singletonVolumeController_SetVolumeOfRoomID(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_34();
  v21 = v20;
  OUTLINED_FUNCTION_14_2(v22, v23);
  OUTLINED_FUNCTION_13_2();
  if (!singletonVolumeController_copyRemoteVolumeController(v19, v24))
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 120))
    {
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v25 = OUTLINED_FUNCTION_20();
    v26(v25, v21);
  }

  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

LABEL_8:
  if (v18)
  {
    CFRelease(v18);
  }

  OUTLINED_FUNCTION_33();
}

void singletonVolumeController_GetVolumeOfRoomID(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_14_2(v20, v21);
  OUTLINED_FUNCTION_13_2();
  if (!singletonVolumeController_copyRemoteVolumeController(v19, v22))
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 128))
    {
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v23 = OUTLINED_FUNCTION_20();
    v24(v23);
  }

  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

LABEL_8:
  if (v18)
  {
    CFRelease(v18);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t singletonVolumeController_SetMuteOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_14_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 136))
    {
      v8 = 4294954514;
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = OUTLINED_FUNCTION_20();
    v5 = v7(v6);
  }

  v8 = v5;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

LABEL_8:
  if (v2)
  {
    CFRelease(v2);
  }

  return v8;
}

uint64_t singletonVolumeController_GetMuteOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_14_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 144))
    {
      v8 = 4294954514;
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = OUTLINED_FUNCTION_20();
    v5 = v7(v6);
  }

  v8 = v5;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

LABEL_8:
  if (v2)
  {
    CFRelease(v2);
  }

  return v8;
}

uint64_t singletonVolumeController_SetMuteOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_24(a1, a2, a3, a4, a5, a6, a7, a8, v14, cf);
  if (v10)
  {
LABEL_4:
    v12 = v10;
    if (!cfa)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (v11)
  {
    v10 = v11(cfa, a2, a3);
    goto LABEL_4;
  }

  v12 = 4294954514;
  if (cfa)
  {
LABEL_7:
    CFRelease(cfa);
  }

  return v12;
}

uint64_t singletonVolumeController_GetMuteOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_4(a1, a2, a3, a4, a5, a6, a7, a8, v13, cf);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cfa)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 160))
  {
    v9 = OUTLINED_FUNCTION_4();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cfa)
  {
LABEL_7:
    CFRelease(cfa);
  }

  return v11;
}

uint64_t singletonVolumeController_CanSetMuteOfRoutingContext(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_14_2(a1, a2);
  OUTLINED_FUNCTION_13_2();
  v5 = singletonVolumeController_copyRemoteVolumeController(v3, v4);
  if (!v5)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 184))
    {
      v8 = 4294954514;
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = OUTLINED_FUNCTION_20();
    v5 = v7(v6);
  }

  v8 = v5;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

LABEL_8:
  if (v2)
  {
    CFRelease(v2);
  }

  return v8;
}

uint64_t singletonVolumeController_CanSetMuteOfEndpointWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_6_4(a1, a2, a3, a4, a5, a6, a7, a8, v13, cf);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cfa)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 192))
  {
    v9 = OUTLINED_FUNCTION_4();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cfa)
  {
LABEL_7:
    CFRelease(cfa);
  }

  return v11;
}

__CFString *volumeControllerRemote_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = 0;
  if (!volumeControllerRemote_getObjectID(a1, &v4))
  {
    CFStringAppendFormat(Mutable, 0, @"<FigVolumeControllerRemote %p, objectID = %llu>", a1, v4);
  }

  return Mutable;
}

uint64_t volumeControllerRemote_ChangeMasterVolumeOfRoutingContext(uint64_t a1, uint64_t a2)
{
  xdict = 0;
  v11 = 0;
  v9 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_26();
    ObjectID = volumeControllerRemote_getObjectID(v4, &v11);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_8();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigRoutingContextXPCRemoteGetObjectID(v2, &v9);
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(xdict, kFigVolumeControllerXPCMsgParam_RoutingContext, v9);
          xpc_dictionary_set_double(xdict, kFigVolumeControllerXPCMsgParam_VolumeDelta, v3);
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    v6 = ObjectID;
  }

  else
  {
    v6 = 4294949706;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23(gFigVolumeControllerRemoteClient, v7, "volumeControllerRemote_ChangeMasterVolumeOfRoutingContext");
  return v6;
}

uint64_t volumeControllerRemote_SetMasterVolumeOfRoutingContext(uint64_t a1, uint64_t a2)
{
  xdict = 0;
  v11 = 0;
  v9 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_26();
    ObjectID = volumeControllerRemote_getObjectID(v4, &v11);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_8();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigRoutingContextXPCRemoteGetObjectID(v2, &v9);
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(xdict, kFigVolumeControllerXPCMsgParam_RoutingContext, v9);
          xpc_dictionary_set_double(xdict, kFigVolumeControllerXPCMsgParam_Volume, v3);
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    v6 = ObjectID;
  }

  else
  {
    v6 = 4294949706;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23(gFigVolumeControllerRemoteClient, v7, "volumeControllerRemote_SetMasterVolumeOfRoutingContext");
  return v6;
}

uint64_t volumeControllerRemote_GetMasterVolumeOfRoutingContext()
{
  OUTLINED_FUNCTION_0_13();
  if (v4)
  {
    v5 = v2;
    if (v2)
    {
      if (OUTLINED_FUNCTION_10_2(v3, value, v29, xdict) || (OUTLINED_FUNCTION_8(), v6 = FigXPCCreateBasicMessage(), v6) || OUTLINED_FUNCTION_31(v6, v7, v8, v9, v10, v11, v12, v13, valuea))
      {
        OUTLINED_FUNCTION_21();
      }

      else
      {
        xpc_dictionary_set_uint64(xdicta, kFigVolumeControllerXPCMsgParam_RoutingContext, valueb);
        v14 = OUTLINED_FUNCTION_11_2();
        v22 = OUTLINED_FUNCTION_22(v14, v15, v16, v17, v18, v19, v20, v21, valueb, v30);
        if (!v0)
        {
          v23 = xpc_dictionary_get_double(v22, kFigVolumeControllerXPCMsgParam_Volume);
          *v5 = v23;
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_29(*(v1 + 3512), v24, "volumeControllerRemote_GetMasterVolumeOfRoutingContext");
  return v0;
}

uint64_t volumeControllerRemote_GetVolumeOfEndpointWithID()
{
  OUTLINED_FUNCTION_2_7();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, v25, v28, v31) || (OUTLINED_FUNCTION_8(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFString())
    {
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_11_2();
      v13 = OUTLINED_FUNCTION_16_2(v5, v6, v7, v8, v9, v10, v11, v12, v26, v29);
      if (!v0)
      {
        v14 = xpc_dictionary_get_double(v13, kFigVolumeControllerXPCMsgParam_Volume);
        OUTLINED_FUNCTION_27(v14, v15, v16, v17, v18, v19, v20, v21, v22, v27, v30);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_23(*(v1 + 3512), v23, "volumeControllerRemote_GetVolumeOfEndpointWithID");
  return v0;
}

uint64_t volumeControllerRemote_CanSetVolumeOfEndpointWithID()
{
  OUTLINED_FUNCTION_2_7();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, v24, v27, v30) || (OUTLINED_FUNCTION_8(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFString())
    {
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_11_2();
      v13 = OUTLINED_FUNCTION_16_2(v5, v6, v7, v8, v9, v10, v11, v12, v25, v28);
      if (!v0)
      {
        v14 = xpc_dictionary_get_BOOL(v13, kFigVolumeControllerXPCMsgParam_CanSetEndpointVolume);
        OUTLINED_FUNCTION_30(v14, v15, v16, v17, v18, v19, v20, v21, v26, v29);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_23(*(v1 + 3512), v22, "volumeControllerRemote_CanSetVolumeOfEndpointWithID");
  return v0;
}

uint64_t volumeControllerRemote_SetVolumeOfRoomWithID(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  xdict = 0;
  v12 = 0;
  v4 = 4294949706;
  v10 = 0;
  if (a2 && a3)
  {
    ObjectID = volumeControllerRemote_getObjectID(a1, &v12);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_8();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigRoutingContextXPCRemoteGetObjectID(a2, &v10);
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(xdict, kFigVolumeControllerXPCMsgParam_RoutingContext, v10);
          ObjectID = FigXPCMessageSetCFString();
          if (!ObjectID)
          {
            xpc_dictionary_set_double(xdict, kFigVolumeControllerXPCMsgParam_Volume, a4);
            ObjectID = FigXPCRemoteClientSendSyncMessage();
          }
        }
      }
    }

    v4 = ObjectID;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_29(gFigVolumeControllerRemoteClient, v8, "volumeControllerRemote_SetVolumeOfRoomWithID");
  return v4;
}

uint64_t volumeControllerRemote_SetMuteOfRoutingContext(uint64_t a1, uint64_t a2, int a3)
{
  xdict = 0;
  v11 = 0;
  v9 = 0;
  if (a2)
  {
    ObjectID = volumeControllerRemote_getObjectID(a1, &v11);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_8();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigRoutingContextXPCRemoteGetObjectID(a2, &v9);
        if (!ObjectID)
        {
          xpc_dictionary_set_uint64(xdict, kFigVolumeControllerXPCMsgParam_RoutingContext, v9);
          xpc_dictionary_set_BOOL(xdict, kFigVolumeControllerXPCMsgParam_Mute, a3 != 0);
          ObjectID = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    v6 = ObjectID;
  }

  else
  {
    v6 = 4294949706;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_29(gFigVolumeControllerRemoteClient, v7, "volumeControllerRemote_SetMuteOfRoutingContext");
  return v6;
}

uint64_t volumeControllerRemote_GetMuteOfRoutingContext()
{
  OUTLINED_FUNCTION_0_13();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, value, v36, xdict) || (OUTLINED_FUNCTION_8(), v5 = FigXPCCreateBasicMessage(), v5) || OUTLINED_FUNCTION_31(v5, v6, v7, v8, v9, v10, v11, v12, valuea))
    {
      OUTLINED_FUNCTION_21();
    }

    else
    {
      xpc_dictionary_set_uint64(xdicta, kFigVolumeControllerXPCMsgParam_RoutingContext, valueb);
      v13 = OUTLINED_FUNCTION_11_2();
      v21 = OUTLINED_FUNCTION_22(v13, v14, v15, v16, v17, v18, v19, v20, valueb, v37);
      if (!v0)
      {
        v22 = xpc_dictionary_get_BOOL(v21, kFigVolumeControllerXPCMsgParam_Mute);
        OUTLINED_FUNCTION_32(v22, v23, v24, v25, v26, v27, v28, v29, valuec, v38);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_29(*(v1 + 3512), v30, "volumeControllerRemote_GetMuteOfRoutingContext");
  return v0;
}

uint64_t volumeControllerRemote_SetMuteOfEndpointWithID(uint64_t a1, uint64_t a2, int a3)
{
  v34 = 0;
  if (a2)
  {
    if (volumeControllerRemote_getObjectID(a1, &v34))
    {
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      OUTLINED_FUNCTION_25();
      v5 = FigXPCCreateBasicMessage();
      OUTLINED_FUNCTION_7_2(v5, v6, v7, v8, v9, v10, v11, v12, 0);
      if (!v3)
      {
        v13 = FigXPCMessageSetCFString();
        v21 = OUTLINED_FUNCTION_7_2(v13, v14, v15, v16, v17, v18, v19, v20, v32);
        xpc_dictionary_set_BOOL(v21, kFigVolumeControllerXPCMsgParam_Mute, a3 != 0);
        v22 = FigXPCRemoteClientSendSyncMessage();
        OUTLINED_FUNCTION_7_2(v22, v23, v24, v25, v26, v27, v28, v29, v33);
      }
    }
  }

  else
  {
    v3 = 4294949706;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_23(gFigVolumeControllerRemoteClient, v30, "volumeControllerRemote_SetMuteOfEndpointWithID");
  return v3;
}

uint64_t volumeControllerRemote_GetMuteOfEndpointWithID()
{
  OUTLINED_FUNCTION_2_7();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, v24, v27, v30) || (OUTLINED_FUNCTION_8(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFString())
    {
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_11_2();
      v13 = OUTLINED_FUNCTION_16_2(v5, v6, v7, v8, v9, v10, v11, v12, v25, v28);
      if (!v0)
      {
        v14 = xpc_dictionary_get_BOOL(v13, kFigVolumeControllerXPCMsgParam_Mute);
        OUTLINED_FUNCTION_30(v14, v15, v16, v17, v18, v19, v20, v21, v26, v29);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_23(*(v1 + 3512), v22, "volumeControllerRemote_GetMuteOfEndpointWithID");
  return v0;
}

uint64_t volumeControllerRemote_CanSetMuteOfRoutingContext()
{
  OUTLINED_FUNCTION_0_13();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, value, v36, xdict) || (OUTLINED_FUNCTION_8(), v5 = FigXPCCreateBasicMessage(), v5) || OUTLINED_FUNCTION_31(v5, v6, v7, v8, v9, v10, v11, v12, valuea))
    {
      OUTLINED_FUNCTION_21();
    }

    else
    {
      xpc_dictionary_set_uint64(xdicta, kFigVolumeControllerXPCMsgParam_RoutingContext, valueb);
      v13 = OUTLINED_FUNCTION_11_2();
      v21 = OUTLINED_FUNCTION_22(v13, v14, v15, v16, v17, v18, v19, v20, valueb, v37);
      if (!v0)
      {
        v22 = xpc_dictionary_get_BOOL(v21, kFigVolumeControllerXPCMsgParam_Mute);
        OUTLINED_FUNCTION_32(v22, v23, v24, v25, v26, v27, v28, v29, valuec, v38);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_29(*(v1 + 3512), v30, "volumeControllerRemote_CanSetMuteOfRoutingContext");
  return v0;
}

uint64_t volumeControllerRemote_CanSetMuteOfEndpointWithID()
{
  OUTLINED_FUNCTION_2_7();
  if (v4 && v2)
  {
    if (OUTLINED_FUNCTION_10_2(v3, v24, v27, v30) || (OUTLINED_FUNCTION_8(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFString())
    {
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_11_2();
      v13 = OUTLINED_FUNCTION_16_2(v5, v6, v7, v8, v9, v10, v11, v12, v25, v28);
      if (!v0)
      {
        v14 = xpc_dictionary_get_BOOL(v13, kFigVolumeControllerXPCMsgParam_Mute);
        OUTLINED_FUNCTION_30(v14, v15, v16, v17, v18, v19, v20, v21, v26, v29);
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_23(*(v1 + 3512), v22, "volumeControllerRemote_CanSetMuteOfEndpointWithID");
  return v0;
}

uint64_t singletonVolumeController_copyCachedRemoteVolumeController_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t volumeControllerRemote_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t volumeControllerRemote_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t LookupSystemControllerByObjectIDForConnection_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingSession_createInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t routingSession_CopyDestination_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXSessionCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXSessionCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _MXSessionCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _MXSessionCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXSessionCreateWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t MXSessionCreateWithOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _MXSessionBeginInterruption_WithFlags_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _MXSessionBeginInterruption_WithSecTaskAndFlags_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _MXSessionEndInterruption_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t _MXSessionEndInterruption_WithSecTaskAndStatus_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t volumeControllerServer_handleGetMasterVolumeMessage()
{
  OUTLINED_FUNCTION_5_4();
  v9 = 0.0;
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(v1, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v3 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v3)
  {
    v6 = v3;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 32))
  {
    v4 = OUTLINED_FUNCTION_14_3();
    v6 = v5(v4);
    if (!v6)
    {
      xpc_dictionary_set_double(v0, kFigVolumeControllerXPCMsgParam_Volume, v9);
    }
  }

  else
  {
    v6 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t volumeControllerServer_handleGetEndpointVolumeMessage()
{
  OUTLINED_FUNCTION_5_4();
  v1 = OUTLINED_FUNCTION_27_0();
  if (v1)
  {
    return v1;
  }

  if (!*(*(OUTLINED_FUNCTION_22_0() + 16) + 72))
  {
    return 4294954514;
  }

  v2 = OUTLINED_FUNCTION_14_3();
  v4 = v3(v2);
  if (!v4)
  {
    xpc_dictionary_set_double(v0, kFigVolumeControllerXPCMsgParam_Volume, 0.0);
  }

  return v4;
}

uint64_t volumeControllerServer_handleCanSetEndpointVolumeMessage()
{
  OUTLINED_FUNCTION_0_16();
  v0 = OUTLINED_FUNCTION_27_0();
  if (v0)
  {
    v9 = v0;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 80))
  {
    v1 = OUTLINED_FUNCTION_9_4();
    v9 = v2(v1);
    if (!v9)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_CanSetEndpointVolume, v3, v4, v5, v6, v7, v8, cf, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t volumeControllerServer_handleGetSubEndpointVolumeControlTypeMessage()
{
  OUTLINED_FUNCTION_10_3();
  v1 = OUTLINED_FUNCTION_26_0();
  if (v1)
  {
    return v1;
  }

  v1 = OUTLINED_FUNCTION_28();
  if (v1)
  {
    return v1;
  }

  if (!*(*(OUTLINED_FUNCTION_37_0() + 16) + 96))
  {
    return 4294954514;
  }

  v2 = OUTLINED_FUNCTION_2_3();
  v4 = v3(v2);
  if (!v4)
  {
    xpc_dictionary_set_uint64(v0, kFigVolumeControllerXPCMsgParam_GetEndpointVolumeControlType, 0);
  }

  return v4;
}

uint64_t volumeControllerServer_handleSetSubEndpointVolumeMessage()
{
  OUTLINED_FUNCTION_20_0();
  v41 = *MEMORY[0x1E69E9840];
  v1 = FigXPCMessageCopyCFString();
  if (!v1)
  {
    v1 = FigXPCMessageCopyCFString();
    if (!v1)
    {
      v10 = xpc_dictionary_get_double(v0, kFigVolumeControllerXPCMsgParam_Volume);
      if (dword_1EB75DEC0)
      {
        v11 = OUTLINED_FUNCTION_21_0(v2, v3, v4, v5, v6, v7, v8, v9, v29, v31, v33, v35, SBYTE2(v35), SBYTE3(v35), SHIDWORD(v35));
        v19 = OUTLINED_FUNCTION_35(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v34, v36, v37, v38, v39);
        v20 = OUTLINED_FUNCTION_10(v19);
        if (v20)
        {
          OUTLINED_FUNCTION_12(v20, v21, v40, v22, &dword_1B17A2000, v23, v24, "-FigVolumeControllerServer- %s: setSubEndpointVolume volume=%f, endpointID = %{private}@, subEndpointID = %{private}@");
        }

        OUTLINED_FUNCTION_4_1();
      }

      if (!*(*(CMBaseObjectGetVTable() + 16) + 104))
      {
        return 4294954514;
      }

      v25 = OUTLINED_FUNCTION_23_0();
      return v26(v25, v10);
    }
  }

  return v1;
}

uint64_t volumeControllerServer_handleGetSubEndpointVolumeMessage()
{
  OUTLINED_FUNCTION_10_3();
  v12 = 0;
  cf = 0;
  v0 = OUTLINED_FUNCTION_26_0();
  if (v0 || (v0 = OUTLINED_FUNCTION_28(), v0))
  {
    v9 = v0;
  }

  else if (*(*(OUTLINED_FUNCTION_37_0() + 16) + 112))
  {
    v1 = OUTLINED_FUNCTION_2_3();
    v9 = v2(v1);
    if (!v9)
    {
      OUTLINED_FUNCTION_25_0(0, kFigVolumeControllerXPCMsgParam_Volume, v3, v4, v5, v6, v7, v8, v11, 0, 0, v14, 0);
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t volumeControllerServer_handleSetRoomVolumeMessage()
{
  OUTLINED_FUNCTION_20_0();
  v50 = *MEMORY[0x1E69E9840];
  cf = 0;
  v42 = 0;
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2)
  {
    goto LABEL_9;
  }

  v2 = FigXPCMessageCopyCFString();
  if (v2)
  {
    goto LABEL_9;
  }

  v11 = xpc_dictionary_get_double(v0, kFigVolumeControllerXPCMsgParam_Volume);
  if (dword_1EB75DEC0)
  {
    v12 = OUTLINED_FUNCTION_21_0(v3, v4, v5, v6, v7, v8, v9, v10, v30, v32, v34, v36, SBYTE2(v36), SBYTE3(v36), SHIDWORD(v36));
    v20 = OUTLINED_FUNCTION_35(v12, v13, v14, v15, v16, v17, v18, v19, v31, v33, v35, v37, v38, v39, v40);
    v21 = OUTLINED_FUNCTION_10(v20);
    if (v21)
    {
      v43 = 136315651;
      v44 = "volumeControllerServer_handleSetRoomVolumeMessage";
      v45 = 2048;
      v46 = v11;
      v47 = 2113;
      v48 = v42;
      OUTLINED_FUNCTION_12(v21, v22, v49, v23, &dword_1B17A2000, v24, v25, "-FigVolumeControllerServer- %s: setVolumeRoomID volume = %f, roomID = %{private}@");
    }

    OUTLINED_FUNCTION_4_1();
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 120))
  {
    v26 = OUTLINED_FUNCTION_23_0();
    v2 = v27(v26, v11);
LABEL_9:
    v28 = v2;
    goto LABEL_11;
  }

  v28 = 4294954514;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return v28;
}

uint64_t volumeControllerServer_handleGetRoomVolumeMessage()
{
  OUTLINED_FUNCTION_10_3();
  v17 = 0;
  cf = 0;
  v15 = 0;
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2 || (v2 = OUTLINED_FUNCTION_26_0(), v2))
  {
    v11 = v2;
  }

  else if (*(*(CMBaseObjectGetVTable() + 16) + 128))
  {
    v3 = OUTLINED_FUNCTION_2_3();
    v11 = v4(v3);
    if (!v11)
    {
      OUTLINED_FUNCTION_25_0(0, kFigVolumeControllerXPCMsgParam_Volume, v5, v6, v7, v8, v9, v10, v13, cf, v15, v16, v17);
    }
  }

  else
  {
    v11 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v11;
}

uint64_t volumeControllerServer_handleSetEndpointWithRoomIDVolumeMessage()
{
  OUTLINED_FUNCTION_20_0();
  v1 = FigXPCMessageCopyCFString();
  if (!v1)
  {
    v1 = FigXPCMessageCopyCFString();
    if (!v1)
    {
      xpc_dictionary_get_double(v0, kFigVolumeControllerXPCMsgParam_Volume);
      if (!*(*(CMBaseObjectGetVTable() + 16) + 208))
      {
        return 4294954514;
      }

      v2 = OUTLINED_FUNCTION_23_0();
      return v3(v2);
    }
  }

  return v1;
}

uint64_t volumeControllerServer_handleGetEndpointWithRoomIDVolumeMessage()
{
  OUTLINED_FUNCTION_10_3();
  cf = 0;
  v13 = 0;
  v0 = OUTLINED_FUNCTION_28();
  if (v0 || (v0 = OUTLINED_FUNCTION_26_0(), v0))
  {
    v9 = v0;
  }

  else if (*(*(CMBaseObjectGetVTable() + 16) + 216))
  {
    v1 = OUTLINED_FUNCTION_2_3();
    v9 = v2(v1);
    if (!v9)
    {
      OUTLINED_FUNCTION_25_0(0, kFigVolumeControllerXPCMsgParam_Volume, v3, v4, v5, v6, v7, v8, v11, 0, 0, v14, 0);
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v9;
}

uint64_t volumeControllerServer_handleSetMuteOfRoutingContextMessage()
{
  OUTLINED_FUNCTION_20_0();
  cf = 0;
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2)
  {
    goto LABEL_4;
  }

  xpc_dictionary_get_BOOL(v0, kFigVolumeControllerXPCMsgParam_Mute);
  if (*(*(CMBaseObjectGetVTable() + 16) + 136))
  {
    v3 = OUTLINED_FUNCTION_11_3();
    v2 = v4(v3);
LABEL_4:
    v5 = v2;
    goto LABEL_6;
  }

  v5 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t volumeControllerServer_handleGetMuteOfRoutingContextMessage()
{
  OUTLINED_FUNCTION_0_16();
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2)
  {
    v11 = v2;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 144))
  {
    v3 = OUTLINED_FUNCTION_9_4();
    v11 = v4(v3);
    if (!v11)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_Mute, v5, v6, v7, v8, v9, v10, cf, v14, v15, v16, v17);
    }
  }

  else
  {
    v11 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t volumeControllerServer_handleSetMuteOfEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_20_0();
  v1 = FigXPCMessageCopyCFString();
  if (!v1)
  {
    xpc_dictionary_get_BOOL(v0, kFigVolumeControllerXPCMsgParam_Mute);
    if (!*(*(CMBaseObjectGetVTable() + 16) + 152))
    {
      return 4294954514;
    }

    v2 = OUTLINED_FUNCTION_11_3();
    return v3(v2);
  }

  return v1;
}

uint64_t volumeControllerServer_handleGetMuteOfEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_0_16();
  v0 = OUTLINED_FUNCTION_27_0();
  if (v0)
  {
    v9 = v0;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 160))
  {
    v1 = OUTLINED_FUNCTION_9_4();
    v9 = v2(v1);
    if (!v9)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_Mute, v3, v4, v5, v6, v7, v8, cf, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t volumeControllerServer_handleSetMuteOfSubEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_20_0();
  v1 = FigXPCMessageCopyCFString();
  if (!v1)
  {
    v1 = FigXPCMessageCopyCFString();
    if (!v1)
    {
      xpc_dictionary_get_BOOL(v0, kFigVolumeControllerXPCMsgParam_Mute);
      if (!*(*(CMBaseObjectGetVTable() + 16) + 168))
      {
        return 4294954514;
      }

      v2 = OUTLINED_FUNCTION_11_3();
      return v3(v2);
    }
  }

  return v1;
}

uint64_t volumeControllerServer_handleGetMuteOfSubEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_10_3();
  v0 = OUTLINED_FUNCTION_26_0();
  if (v0)
  {
    return v0;
  }

  v0 = OUTLINED_FUNCTION_28();
  if (v0)
  {
    return v0;
  }

  if (!*(*(OUTLINED_FUNCTION_37_0() + 16) + 176))
  {
    return 4294954514;
  }

  v1 = OUTLINED_FUNCTION_2_3();
  v3 = v2(v1);
  if (!v3)
  {
    OUTLINED_FUNCTION_15_3(kFigVolumeControllerXPCMsgParam_Mute, 0);
  }

  return v3;
}

uint64_t volumeControllerServer_handleCanSetMuteOfRoutingContextMessage()
{
  OUTLINED_FUNCTION_0_16();
  uint64 = xpc_dictionary_get_uint64(v0, kFigVolumeControllerXPCMsgParam_RoutingContext);
  v2 = FigRoutingContextXPCServerCopyRoutingContextForID(uint64, &cf);
  if (v2)
  {
    v11 = v2;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 184))
  {
    v3 = OUTLINED_FUNCTION_9_4();
    v11 = v4(v3);
    if (!v11)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_Mute, v5, v6, v7, v8, v9, v10, cf, v14, v15, v16, v17);
    }
  }

  else
  {
    v11 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t volumeControllerServer_handleCanSetMuteOfEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_0_16();
  v0 = OUTLINED_FUNCTION_27_0();
  if (v0)
  {
    v9 = v0;
  }

  else if (*(*(OUTLINED_FUNCTION_22_0() + 16) + 192))
  {
    v1 = OUTLINED_FUNCTION_9_4();
    v9 = v2(v1);
    if (!v9)
    {
      OUTLINED_FUNCTION_13_3(0, kFigVolumeControllerXPCMsgParam_Mute, v3, v4, v5, v6, v7, v8, cf, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t volumeControllerServer_handleCanSetMuteOfSubEndpointWithIDMessage()
{
  OUTLINED_FUNCTION_10_3();
  v0 = OUTLINED_FUNCTION_26_0();
  if (v0)
  {
    return v0;
  }

  v0 = OUTLINED_FUNCTION_28();
  if (v0)
  {
    return v0;
  }

  if (!*(*(OUTLINED_FUNCTION_37_0() + 16) + 200))
  {
    return 4294954514;
  }

  v1 = OUTLINED_FUNCTION_2_3();
  v3 = v2(v1);
  if (!v3)
  {
    OUTLINED_FUNCTION_15_3(kFigVolumeControllerXPCMsgParam_Mute, 0);
  }

  return v3;
}

uint64_t FigVibratorInitialize()
{
  if (gFVInfo)
  {
    return 0;
  }

  v0 = malloc_type_calloc(1uLL, 0xE8uLL, 0x10E2040E5D538DEuLL);
  if (v0)
  {
    v8 = v0;
    v0[112] = 0;
    *(v0 + 15) = 0;
    v0[192] = 0;
    *(v0 + 25) = 0;
    *(v0 + 52) = 0;
    *(v0 + 27) = 0;
    v0[224] = 0;
    *(v0 + 17) = 0;
    *v0 = 0;
    *(v0 + 1) = 0;
    *(v0 + 13) = 0;
    if (_MergedGlobals_6 != -1)
    {
      OUTLINED_FUNCTION_1_10();
      dispatch_once_f(v59, v60, v61);
    }

    if (gvVibeSynthIsAvailable)
    {
      *(v8 + 24) = dlsym(qword_1ED6D2F20, "VibeSynthEngineInitialize");
      *(v8 + 32) = dlsym(qword_1ED6D2F20, "VibeSynthEngineStartPrewarm");
      *(v8 + 40) = dlsym(qword_1ED6D2F20, "VibeSynthEngineStopPrewarm");
      *(v8 + 48) = dlsym(qword_1ED6D2F20, "VibeSynthEnginePlay");
      v9 = dlsym(qword_1ED6D2F20, "VibeSynthEngineCancelWithOptions");
      *(v8 + 56) = v9;
      v10 = *(v8 + 24);
      if (!v10 || !*(v8 + 32) || !*(v8 + 40) || !*(v8 + 48) || !v9)
      {
        goto LABEL_48;
      }

      v11 = v10();
      if (v11)
      {
        goto LABEL_54;
      }

      *(v8 + 64) = 0;
    }

    else
    {
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      v12 = OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v62, valuePtr.value);
      *(v8 + 48) = valuePtr;
      v20 = OUTLINED_FUNCTION_2_10(v12, v13, v14, v15, v16, v17, v18, v19, v63, valuePtr.value);
      *(v8 + 72) = valuePtr;
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 108) = 0;
      *(v8 + 136) = 0;
      v28 = OUTLINED_FUNCTION_2_10(v20, v21, v22, v23, v24, v25, v26, v27, v64, valuePtr.value);
      *(v8 + 144) = valuePtr;
      OUTLINED_FUNCTION_2_10(v28, v29, v30, v31, v32, v33, v34, v35, v65, valuePtr.value);
      *(v8 + 168) = valuePtr;
      *(v8 + 128) = 0;
      v36 = *MEMORY[0x1E696CD60];
      v37 = IOServiceNameMatching("vibrator");
      MatchingService = IOServiceGetMatchingService(v36, v37);
      *(v8 + 24) = MatchingService;
      if (!MatchingService)
      {
        v52 = 4294950803;
        goto LABEL_26;
      }
    }

    v39 = FigSimpleMutexCreate();
    *v8 = v39;
    if (v39)
    {
      v40 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v41 = dispatch_queue_create("com.apple.coremedia.vibrator", v40);
      *(v8 + 8) = v41;
      if (v41)
      {
        v42 = notify_register_check("com.apple.coremedia.vibration", (v8 + 16));
        *(v8 + 20) = v42 == 0;
        if (!v42)
        {
          notify_set_state(*(v8 + 16), 0);
          notify_post("com.apple.coremedia.vibration");
        }

        if (gvVibeSynthIsAvailable)
        {
          goto LABEL_24;
        }

        v43 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v8 + 8));
        *(v8 + 96) = v43;
        if (!v43)
        {
          v52 = 4294950804;
          goto LABEL_26;
        }

        dispatch_source_set_timer(v43, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
        dispatch_source_set_event_handler(*(v8 + 96), DispatchSourceBlock);
        _Block_release(DispatchSourceBlock);
        dispatch_resume(*(v8 + 96));
        v45 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(v8 + 32) = Mutable;
        if (Mutable)
        {
          Default = FVIOKit_VibePatternArrayCreateDefault(1.0);
          if (Default)
          {
            v48 = Default;
            CFDictionarySetValue(*(v8 + 32), @"hertz_millisecs", Default);
            CFRelease(v48);
            CFDictionarySetValue(*(v8 + 32), @"repeat", *MEMORY[0x1E695E4C0]);
            LODWORD(valuePtr.value) = 0;
            v49 = CFNumberCreate(v45, kCFNumberIntType, &valuePtr);
            *(v8 + 40) = v49;
            if (v49)
            {
              CMTimeMake(&valuePtr, 20, 1000);
              *(v8 + 48) = valuePtr;
              CMTimeMake(&valuePtr, 5000, 1000);
              *(v8 + 72) = valuePtr;
              DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
              CFNotificationCenterPostNotification(DarwinNotifyCenter, @"VibeWillStop", 0, 0, 1u);
LABEL_24:
              v51 = 0;
              atomic_compare_exchange_strong_explicit(&gFVInfo, &v51, v8, memory_order_relaxed, memory_order_relaxed);
              if (v51)
              {
                v52 = 0;
LABEL_26:
                if (*v8)
                {
                  FigSimpleMutexDestroy();
                  *v8 = 0;
                }

                if (!gvVibeSynthIsAvailable)
                {
                  v55 = *(v8 + 32);
                  if (v55)
                  {
                    CFRelease(v55);
                    *(v8 + 32) = 0;
                  }

                  v56 = *(v8 + 40);
                  if (v56)
                  {
                    CFRelease(v56);
                    *(v8 + 40) = 0;
                  }

                  v57 = *(v8 + 96);
                  if (v57)
                  {
                    dispatch_source_cancel(v57);
                    v58 = *(v8 + 96);
                    if (v58)
                    {
                      dispatch_release(v58);
                      *(v8 + 96) = 0;
                    }
                  }
                }

                v53 = *(v8 + 8);
                if (v53)
                {
                  dispatch_release(v53);
                  *(v8 + 8) = 0;
                }

                if (*(v8 + 20))
                {
                  notify_cancel(*(v8 + 16));
                }

                free(v8);
                return v52;
              }

              FigVibratorStopWithOptions(0);
              return 0;
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_9();
            v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_54:
            v52 = v11;
            goto LABEL_26;
          }
        }
      }
    }

LABEL_48:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_54;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_9();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t FigVibratorStopWithOptions(uint64_t a1)
{
  if (!gFVInfo)
  {
    return 4294950806;
  }

  v2 = FigSimpleMutexLock();
  if (v2)
  {
    return v2;
  }

  if (!gvVibeSynthIsAvailable)
  {
    v3 = FVIOKit_StopVibrator(gFVInfo);
    v4 = gFVInfo;
    if (v3)
    {
      goto LABEL_15;
    }

    if (*(gFVInfo + 112))
    {
      dispatch_source_set_timer(*(gFVInfo + 96), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v4 = gFVInfo;
      *(gFVInfo + 112) = 0;
      *(v4 + 192) = 0;
      if (*(v4 + 128))
      {
        CFRelease(*(v4 + 128));
        v4 = gFVInfo;
        *(gFVInfo + 128) = 0;
      }

      *(v4 + 216) = 0;
      *(v4 + 224) = 0;
      if (*(v4 + 200))
      {
        CFRelease(*(v4 + 200));
        v4 = gFVInfo;
        *(gFVInfo + 200) = 0;
      }
    }

    if (*(v4 + 104))
    {
      IOPMAssertionRelease(*(v4 + 108));
      v3 = 0;
      v5 = gFVInfo;
      *(gFVInfo + 104) = 0;
      *(v5 + 108) = 0;
      goto LABEL_15;
    }

LABEL_14:
    v3 = 0;
    goto LABEL_15;
  }

  if (!*(gFVInfo + 68))
  {
    goto LABEL_14;
  }

  v3 = (*(gFVInfo + 56))(a1);
LABEL_15:
  FigSimpleMutexUnlock();
  return v3;
}

void FigVibratorStartPrewarm(int a1)
{
  if (gvVibeSynthIsAvailable && gFVInfo)
  {
    v1 = !*(gFVInfo + 64) && !*(gFVInfo + 65);
    if (a1 == 1)
    {
      *(gFVInfo + 65) = 1;
      if (!v1)
      {
        return;
      }

      goto LABEL_10;
    }

    if (!a1)
    {
      *(gFVInfo + 64) = 1;
    }

    if (v1)
    {
LABEL_10:
      if (!FigSimpleMutexLock())
      {
        (*(gFVInfo + 32))();
        FigSimpleMutexUnlock();
      }
    }
  }
}

void FigVibratorStopPrewarm(int a1)
{
  if (!gvVibeSynthIsAvailable)
  {
    return;
  }

  v1 = gFVInfo;
  if (!gFVInfo)
  {
    return;
  }

  v2 = *(gFVInfo + 64);
  if (!*(gFVInfo + 64) && !*(gFVInfo + 65))
  {
    return;
  }

  if (!a1)
  {
    *(gFVInfo + 64) = 0;
    if (*(v1 + 65))
    {
      return;
    }

    goto LABEL_11;
  }

  if (a1 == 1)
  {
    *(gFVInfo + 65) = 0;
  }

  if (!(*(v1 + 65) | v2))
  {
LABEL_11:
    if (!FigSimpleMutexLock())
    {
      (*(gFVInfo + 40))();
      FigSimpleMutexUnlock();
    }
  }
}

uint64_t FigVibratorPlayVibrationWithDictionary(CFDictionaryRef theDict, int a2, const void *a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, float a8)
{
  valuePtr = 1.0;
  if (!gFVInfo)
  {
    return 4294950806;
  }

  if (gvVibeSynthIsAvailable)
  {
    if (theDict)
    {
      v13 = a7;
      v14 = a6;
      v15 = a4;
      Value = CFDictionaryGetValue(theDict, @"Intensity");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
        v18 = valuePtr;
        if (valuePtr <= 1.0)
        {
          if (valuePtr < 0.0)
          {
            valuePtr = 0.0;
            v18 = 0.0;
          }

          goto LABEL_8;
        }

        valuePtr = 1.0;
      }

      v18 = 1.0;
LABEL_8:
      if (a2)
      {
        v18 = v18 * a8;
        valuePtr = v18;
      }

      return FVSynthEngine_PlayVibrationWithPatternDictionary(theDict, a3, v15, a5, v14, v13, v18);
    }

    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950805, "-FigVibrator-", 509, v8);
  }

  else
  {
    v28 = 0;
    v27 = 0.0;
    v26 = 0;
    *v25 = 0;
    FVIOKit_GetVibrationPatternFromDictionary(theDict, &v28 + 1, &v28, &v27, &valuePtr, v25, &v26 + 1, &v26);
    if (!v26)
    {
      v27 = 2678400.0;
    }

    if (a2)
    {
      valuePtr = valuePtr * a8;
    }

    v20 = valuePtr;
    if (*v25)
    {
      result = FVIOKit_PlayVibrationWithPattern(*v25, a5, valuePtr);
      if (result)
      {
        return result;
      }
    }

    else
    {
      CMTimeMakeWithSeconds(&v24, v27, 1000);
      CMTimeMakeWithSeconds(&v23, *&v28, 1000);
      CMTimeMakeWithSeconds(&v22, *(&v28 + 1), 1000);
      result = FVIOKit_PlayVibration(&v24, v20);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }
}

uint64_t FigVAEndpointCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t PowerManager_InitializeCPMSForHaptics()
{
  v79 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_7)
  {
    return 0;
  }

  qword_1ED6D2F30 = [MEMORY[0x1E6991F30] sharedCPMSAgent];
  if (!qword_1ED6D2F30)
  {
    return 4294954510;
  }

  qword_1ED6D2F38 = vaemCopyCPMSPowerBudgetRangeInMilliWatts(6);
  if (qword_1ED6D2F38)
  {
    *v70 = 0;
    v2 = qword_1ED6D2F30;
    v3 = objc_opt_new();
    [v3 setClientId:6];
    [v3 setPowerLevels:qword_1ED6D2F38];
    [v3 setIsContinuous:1];
    [v3 setNotificationCallback:&__block_literal_global_5_0];
    [v3 setGetCurrentPower:&__block_literal_global_46];
    [v3 setPowerBudgetUpdateMinimumPeriod:10];
    [v3 setPowerBudgetUpdateMinimumPeriod:1000];
    v4 = _MergedGlobals_7;
    if ((_MergedGlobals_7 & 1) == 0)
    {
      v5 = [v2 registerClientWithDescription:v3 error:v70];
      if (!v5)
      {
        v1 = 4294954513;
        goto LABEL_33;
      }

      _MergedGlobals_7 = 1;
    }

    v73 = 0;
    v13 = qword_1ED6D2F30;
    PowerBudgetRequestDict = PowerManager_CreatePowerBudgetRequestDict(qword_1ED6D2F38, 1);
    if (PowerBudgetRequestDict)
    {
      v22 = PowerBudgetRequestDict;
      v23 = [v13 copyPowerBudgetForRequest:PowerBudgetRequestDict forClient:6 error:&v73];
      if (v23)
      {
        v24 = v23;
        if (qword_1ED6D2F40)
        {
          CFRelease(qword_1ED6D2F40);
        }

        qword_1ED6D2F40 = v24;
        if (dword_1EB75DE40)
        {
          OUTLINED_FUNCTION_4_10();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (OUTLINED_FUNCTION_5_5(os_log_and_send_and_compose_flags_and_os_log_type, v26, v27, v28, v29, v30, v31, v32, v67, v68, v69, *v70, v71, SBYTE2(v71), HIBYTE(v71), *type))
          {
            v37 = v0;
          }

          else
          {
            v37 = v0 & 0xFFFFFFFE;
          }

          if (v37)
          {
            v74 = 136315394;
            v75 = "powerManager_RequestPowerBudgetFromCPMSForHapticsResource";
            v76 = 2114;
            v77 = qword_1ED6D2F40;
            LODWORD(v68) = 22;
            v67 = &v74;
            OUTLINED_FUNCTION_2_11(v37, v33, v78, v34, &dword_1B17A2000, v35, v36, "-PowerManager- %s: Budget granted by CPMS for haptics is %{public}@.");
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CFRelease(v22);
        v5 = PowerManager_SetPowerBudgetOnVAAndSendAcknowledgementToCPMSForResource(6, qword_1ED6D2F30, qword_1ED6D2F40);
        v1 = v5;
        if ((v4 & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      OUTLINED_FUNCTION_4_10();
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (OUTLINED_FUNCTION_5_5(v38, v39, v40, v41, v42, v43, v44, v45, v67, v68, v69, *v70, v71, SBYTE2(v71), HIBYTE(v71), *type))
      {
        v46 = v0;
      }

      else
      {
        v46 = v0 & 0xFFFFFFFE;
      }

      if (v46)
      {
        [v73 description];
        v74 = 136315394;
        v75 = "powerManager_RequestPowerBudgetFromCPMSForHapticsResource";
        OUTLINED_FUNCTION_1_11();
        OUTLINED_FUNCTION_2_11(v46, v47, v78, v48, &dword_1B17A2000, v49, v50, "-PowerManager- %s: Failed to request power budget from CPMS for haptics with error %{public}@");
      }

      OUTLINED_FUNCTION_0_17();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      CFRelease(v22);
    }

    v51 = OUTLINED_FUNCTION_3_7(PowerBudgetRequestDict, v15, v16, v17, v18, v19, v20, v21, v67, v68, v69, *v70, v71, type[0], v73);
    v52 = v73;
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
      v74 = 136315138;
      v75 = "powerManager_RequestInitialBudgetFromCPMSForHapticsResource";
      LODWORD(v68) = 12;
      _os_log_send_and_compose_impl(v54, 0, v78, 128, &dword_1B17A2000, v51, v53, "-PowerManager- %s: Failed to create initial budget request dictionary for haptics.", &v74);
    }

    OUTLINED_FUNCTION_0_17();
    v5 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    v1 = 4294954510;
    if (!v4)
    {
LABEL_39:

      if (qword_1ED6D2F40)
      {
        if (v1 != -12783)
        {
          return v1;
        }

        goto LABEL_41;
      }

      return 4294954510;
    }

LABEL_33:
    v55 = OUTLINED_FUNCTION_3_7(v5, v6, v7, v8, v9, v10, v11, v12, v67, v68, v69, *v70, v71, type[0], v73);
    v56 = v73;
    if (os_log_type_enabled(v55, type[0]))
    {
      v57 = v56;
    }

    else
    {
      v57 = v56 & 0xFFFFFFFE;
    }

    if (v57)
    {
      [*v70 description];
      v74 = 136315394;
      v75 = "powerManager_RequestInitialBudgetFromCPMSForHapticsResource";
      OUTLINED_FUNCTION_1_11();
      OUTLINED_FUNCTION_2_11(v57, v58, v78, v59, &dword_1B17A2000, v60, v61, "-PowerManager- %s: Failed to register client with CPMS for haptics with error '%{public}@'");
    }

    OUTLINED_FUNCTION_0_17();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_39;
  }

LABEL_41:
  LODWORD(v73) = 0;
  v70[0] = OS_LOG_TYPE_DEFAULT;
  v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v63 = v73;
  v64 = v70[0];
  if (os_log_type_enabled(v62, v70[0]))
  {
    v65 = v63;
  }

  else
  {
    v65 = v63 & 0xFFFFFFFE;
  }

  if (v65)
  {
    [0 description];
    v74 = 136315394;
    v75 = "PowerManager_InitializeCPMSForHaptics";
    OUTLINED_FUNCTION_1_11();
    _os_log_send_and_compose_impl(v65, 0, v78, 128, &dword_1B17A2000, v62, v64, "-PowerManager- %s: Failed to register CPMS client haptics with error %{public}@");
  }

  OUTLINED_FUNCTION_0_17();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 4294954513;
}

uint64_t FVSynthEngine_PlayVibrationWithPatternDictionary(uint64_t a1, const void *a2, int a3, const void *a4, int a5, int a6, float a7)
{
  v27[16] = *MEMORY[0x1E69E9840];
  if (!gFVInfo)
  {
    return 4294950806;
  }

  if (a7 < 0.0 || a7 > 1.0)
  {
    v24 = qword_1EB75DE38;
    v25 = v7;
    v26 = 99;
  }

  else
  {
    if (a1)
    {
      v16 = FigSimpleMutexLock();
      if (v16)
      {
        return v16;
      }

      v17 = gFVInfo;
      v18 = (a3 != 0) | (2 * (a5 != 0));
      if (a6)
      {
        v19 = v18 | 4;
      }

      else
      {
        v19 = v18;
      }

      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (a4)
      {
        CFRetain(a4);
      }

      v21 = *(v17 + 48);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __FVSynthEngine_StartVibrationWithPattern_block_invoke;
      v27[3] = &__block_descriptor_40_e5_v8__0l;
      v27[4] = a4;
      v22 = v21(a1, a2, v19, v27, a7);
      if (v22)
      {
        if (a4)
        {
          CFRelease(a4);
        }
      }

      else
      {
        ++*(gFVInfo + 68);
        if (*(v17 + 20))
        {
          notify_set_state(*(v17 + 16), 1uLL);
          notify_post("com.apple.coremedia.vibration");
        }

        FigVibratorPostNotification(@"VibeWillStart");
      }

      FigSimpleMutexUnlock();
      return v22;
    }

    v24 = qword_1EB75DE38;
    v25 = v7;
    v26 = 100;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 4294950805, "-FigVibrator_VS-", v26, v25);
}