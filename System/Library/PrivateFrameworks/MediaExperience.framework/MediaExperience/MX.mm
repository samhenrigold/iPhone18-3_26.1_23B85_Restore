@interface MX
@end

@implementation MX

void __MX_RunningBoardServices_StartMonitoringForPID_block_invoke(uint64_t a1, void *a2)
{
  [a2 setPredicates:{objc_msgSend(*(a1 + 32), "allObjects")}];
  v3 = *(a1 + 32);
}

void __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v15 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = dispatch_semaphore_create(0);
  if (!v18[5])
  {
    *type = 0;
    v13 = OS_LOG_TYPE_DEFAULT;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke_23;
  v11[3] = &unk_1E7AEB2A0;
  v12 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke_2;
  v10[3] = &unk_1E7AE73A0;
  v10[4] = &v17;
  [stMediaStatusDomainPublisher updateVolatileDataWithBlock:v11 completion:v10];
  v4 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v18[5], v4))
  {
    *type = 0;
    v13 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = *type;
    v7 = v13;
    if (os_log_type_enabled(v5, v13))
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v15 = 136315138;
      v16 = "MX_SystemStatus_PublishRecordingClientsInfo_block_invoke_3";
      _os_log_send_and_compose_impl(v8, 0, v23, 128, &dword_1B17A2000, v5, v7, "-MX_SystemStatus- %s: completionStatusSemaphore: Timeout occurred", &v15);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v9 = v18[5];
  if (v9)
  {
    dispatch_release(v9);
    v18[5] = 0;
  }

  FigSimpleMutexUnlock();

  _Block_object_dispose(&v17, 8);
}

uint64_t __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke_23(uint64_t a1, void *a2)
{
  [a2 setMicrophoneAttributions:{objc_msgSend(*(a1 + 32), "allObjects")}];
  v4 = *(a1 + 40);

  return [a2 setMutedAudioRecordingAttributions:v4];
}

uint64_t __MX_SystemStatus_PublishRecordingClientsInfo_block_invoke_2(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    dispatch_semaphore_signal(v2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t __MX_FeatureFlags_IsSharePlayEnabled_block_invoke()
{
  result = CMSMDeviceState_ItsAHomePod();
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = TelephonyUtilitiesLibraryCore(0);
    if (!result)
    {
      return result;
    }

    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v2 = getTUSharePlayForceDisabledSymbolLoc_ptr;
    v8 = getTUSharePlayForceDisabledSymbolLoc_ptr;
    if (!getTUSharePlayForceDisabledSymbolLoc_ptr)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __getTUSharePlayForceDisabledSymbolLoc_block_invoke;
      v4[3] = &unk_1E7AE73A0;
      v4[4] = &v5;
      __getTUSharePlayForceDisabledSymbolLoc_block_invoke(v4);
      v2 = v6[3];
    }

    _Block_object_dispose(&v5, 8);
    if (!v2)
    {
      v3 = __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
      _Block_object_dispose(&v5, 8);
      _Unwind_Resume(v3);
    }

    result = v2();
    v1 = result ^ 1;
  }

  MX_FeatureFlags_IsSharePlayEnabled_sharePlayEnabled = v1;
  return result;
}

uint64_t __MX_FeatureFlags_IsAdditiveRoutingEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAdditiveRoutingEnabled_additiveRoutingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsCorianderEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCorianderEnabled_corianderEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_relativeVoiceOverVolumeEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsAlertsRelativeVoiceOverVolumeEnabled_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_onceToken != -1)
  {
    MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_cold_1();
  }

  if (MX_FeatureFlags_IsRelativeVoiceOverVolumeEnabled_relativeVoiceOverVolumeEnabled)
  {
    result = _os_feature_enabled_impl();
  }

  else
  {
    result = 0;
  }

  MX_FeatureFlags_IsAlertsRelativeVoiceOverVolumeEnabled_alertsRelativeVoiceOverVolumeEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsAirPlayDaemonEnabled_block_invoke()
{
  result = FigIsAirplaydEnabled();
  MX_FeatureFlags_IsAirPlayDaemonEnabled_isAirPlayDaemonEnabled = result != 0;
  return result;
}

uint64_t __MX_FeatureFlags_IsCallManagementMuteControlEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCallManagementMuteControlEnabled_sCallManagementMuteControlEnabled = result;
  return result;
}

uint64_t __MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled_sIsDiscoveryEnhancementEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsCounterfeitDetectionEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCounterfeitDetectionEnabled_gapaEnabled = result;
  return result;
}

uint64_t __MX_FeatureFlags_IsConversationDetectSupported_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsConversationDetectSupported_conversationDetectSupported = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsSmartRoutingOnActivationEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsSmartRoutingOnActivationEnabled_sSmartRoutingOnActivationEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsInterruptOnRouteDisconnectEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsInterruptOnRouteDisconnectEnabled_sInterruptOnRouteDisconnect = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsInterruptLongFormVideoOnSpeechDetectEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsInterruptLongFormVideoOnSpeechDetectEnabled_sInterruptLongFormVideoOnSpeechDetect = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsAssertionActivityReportingEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAssertionActivityReportingEnabled_sAssertionActivityReportingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsAudioFormatArbitrationEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAudioFormatArbitrationEnabled_sAudioFormatArbitrationEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsMXSilentModeEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsMXSilentModeEnabled_sIsUseMXSilentModeEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsAdaptiveVolumeControlEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAdaptiveVolumeControlEnabled_sAdaptiveVolumeControlEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsSpeechDetectEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsSpeechDetectEnabled_sSpeechDetectEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsKeyboardCHAudioEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsKeyboardCHAudioEnabled_sIsKeyboardCHAudioEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = MGGetBoolAnswer();
  if (v0)
  {
    LOBYTE(v0) = _os_feature_enabled_impl();
  }

  MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_sIsQuiesceableWiredConnectionEnabled = v0;
  result = CMSMDeviceState_ItsAniPhone();
  if (result)
  {
    if (MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_sIsQuiesceableWiredConnectionEnabled)
    {
      result = _os_feature_enabled_impl();
    }

    else
    {
      result = 0;
    }

    MX_FeatureFlags_IsQuiesceableWiredConnectionEnabled_sIsQuiesceableWiredConnectionEnabled = result;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsPublishHostAttributionToSystemStatusEnabled_sPublishHostAttributionToSystemStatusEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsSystemInputPickerEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsSystemInputPickerEnabled_sIsSystemInputPickerEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled_isBufferedBadgingAndCapabilitiesEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsAsyncDuckingEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAsyncDuckingEnabled_isAsyncDuckingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void __MX_FeatureFlags_IsOffloadActivationOffACQEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (MX_FeatureFlags_IsAsyncDuckingEnabled_onceToken != -1)
    {
      MX_FeatureFlags_IsAsyncDuckingEnabled_cold_1();
    }

    v0 = MX_FeatureFlags_IsAsyncDuckingEnabled_isAsyncDuckingEnabled != 0;
  }

  else
  {
    v0 = 0;
  }

  MX_FeatureFlags_IsOffloadActivationOffACQEnabled_isOffloadActivationOffACQEnabled = v0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t __MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled_isSystemRemoteDisplayContextEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsMaxSpeakerVolumeLimitEnabled_sIsMaxSpeakerVolumeLimitEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsOnenessEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsOnenessEnabled_sIsOnenessEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void __MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (MX_FeatureFlags_IsOnenessEnabled_onceToken != -1)
    {
      MX_FeatureFlags_IsOnenessEnabled_cold_1();
    }

    v0 = MX_FeatureFlags_IsOnenessEnabled_sIsOnenessEnabled != 0;
  }

  else
  {
    v0 = 0;
  }

  MX_FeatureFlags_IsSystemSoundsMutingBehaviorInOnenessEnabled_sIsSystemSoundsMutingBehaviorInOnenessEnabled = v0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (MX_FeatureFlags_IsOnenessEnabled_onceToken != -1)
    {
      MX_FeatureFlags_IsOnenessEnabled_cold_1();
    }

    v0 = MX_FeatureFlags_IsOnenessEnabled_sIsOnenessEnabled != 0;
  }

  else
  {
    v0 = 0;
  }

  MX_FeatureFlags_IsInterruptingPlayingSessionsInOnenessEnabled_sIsInterruptingPlayingSessionsInOnenessEnabled = v0;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t __MX_FeatureFlags_IsHangsBufferedSizeHintEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsHangsBufferedSizeHintEnabled_sHangsBufferedSizeHintEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsHangsAudioSessionClientCachingEnabled_sHangsAudioSessionClientCachingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsCarPlayRingtoneFadeInEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCarPlayRingtoneFadeInEnabled_sIsCarPlayRingtoneFadeInEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsPersonalDevicesMediaVolumeUpdateEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsPersonalDevicesMediaVolumeUpdateEnabled_sIsPersonalDevicesMediaVolumeUpdateEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsStartupSequenceChangeEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsStartupSequenceChangeEnabled_isStartupSequenceChangeEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsNowPlayingAppStackEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsNowPlayingAppStackEnabled_sIsNowPlayingAppStackEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsSessionBasedMutingEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  MX_FeatureFlags_IsSessionBasedMutingEnabled_isSessionBasedMutingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsProtectedAppsEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsProtectedAppsEnabled_isProtectedAppsEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsAllowBackgroundPlaybackEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAllowBackgroundPlaybackEnabled_isAllowBackgroundPlaybackEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsOverdubRecordingEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsOverdubRecordingEnabled_isOverdubRecordingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsMediaMultitaskingEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsMediaMultitaskingEnabled_isMediaMultitaskingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled_isInputAudioCoexistenceSupportEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAirPodsStudioVoiceMicEnabled_sIsAirPodsStudioVoiceMicEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsHighQualityLocalRecordingEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsHighQualityLocalRecordingEnabled_sIsHighQualityLocalRecordingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsPersonalTranslatorEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsPersonalTranslatorEnabled_isPersonalTranslatorEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsAirPodsInEarRoutingWithCarsAndSpeakersEnabled_isAirPodsInEarRoutingWithCarsAndSpeakersEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled_isCustomizedRoutingWithCarsAndSpeakersEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsRoutingContextReportingEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsRoutingContextReportingEnabled_isRoutingContextReportingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled_isWHAInstantDiscoveryCachingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsShortFormOutputMutingEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsShortFormOutputMutingEnabled_isShortFormOutputMutingEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsCallConnectHapticsEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsCallConnectHapticsEnabled_isCallConnectHapticsEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  MX_FeatureFlags_IsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled_sIsSynchronizeSiriAlarmVolumesToMediaVolumeEnabled = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

id __26__MX_TelephonyClient_init__block_invoke(uint64_t a1)
{
  v5[20] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  result = [*(*(a1 + 32) + 8) getUserDefaultVoiceSubscriptionContext:v5];
  if (v5[0] || result && ((result = [*(*(a1 + 32) + 8) copyMobileSubscriberCountryCode:result error:v5], v5[0]) || result && ((result = objc_msgSend(*(*(a1 + 32) + 8), "copyMobileSubscriberIsoCountryCode:error:", result, v5), v5[0]) || (result ? (v4 = dword_1EB75DE40 == 0) : (v4 = 1), !v4))))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __46__MX_TelephonyClient_copyIsoCountryCodeForMCC__block_invoke(uint64_t a1)
{
  v5[20] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  result = [*(*(a1 + 32) + 8) getUserDefaultVoiceSubscriptionContext:v5];
  if (v5[0])
  {
    goto LABEL_7;
  }

  if (!result)
  {
    return result;
  }

  result = [*(*(a1 + 32) + 8) copyMobileSubscriberCountryCode:result error:v5];
  if (v5[0])
  {
    goto LABEL_7;
  }

  if (!result)
  {
    return result;
  }

  result = [*(*(a1 + 32) + 8) copyMobileSubscriberIsoCountryCode:result error:v5];
  if (v5[0])
  {
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v4 = result;
    if (result)
    {
      result = [result length];
      if (result)
      {
        result = [v4 isEqualToString:&stru_1F2890CF0];
        if ((result & 1) == 0)
        {
          result = [v4 uppercaseString];
          *(*(*(a1 + 40) + 8) + 40) = result;
        }
      }
    }
  }

  return result;
}

id __40__MX_TelephonyClient_getIsInHomeCountry__block_invoke(uint64_t a1)
{
  v4[20] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  result = [*(*(a1 + 32) + 8) getUserDefaultVoiceSubscriptionContext:v4];
  if (v4[0])
  {
    goto LABEL_4;
  }

  if (!result)
  {
    return result;
  }

  result = [*(*(a1 + 32) + 8) copyIsInHomeCountry:result error:v4];
  if (v4[0])
  {
LABEL_4:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else if (result)
  {
    result = [result BOOLValue];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

void __62__MX_TelephonyClient_copyCountryNameFromOperatorCountryBundle__block_invoke(uint64_t a1)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = [*(*(a1 + 32) + 8) getUserDefaultVoiceSubscriptionContext:&v10];
  if (v10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v4 = v2;
    if (v2)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x3052000000;
      v14 = __Block_byref_object_copy__2;
      v5 = getCTBundleClass_softClass;
      v15 = __Block_byref_object_dispose__2;
      v16 = getCTBundleClass_softClass;
      if (!getCTBundleClass_softClass)
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __getCTBundleClass_block_invoke;
        v17[3] = &unk_1E7AE73A0;
        v17[4] = &v11;
        __getCTBundleClass_block_invoke(v17);
        v5 = v12[5];
      }

      _Block_object_dispose(&v11, 8);
      v6 = [[v5 alloc] initWithBundleType:6];
      v7 = [*(*(a1 + 32) + 8) copyCarrierBundleValue:v4 key:@"CountryName" bundleType:v6 error:&v10];
      v8 = v7;
      if (v10)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else if ([v7 length])
      {
        if (([v8 isEqualToString:&stru_1F2890CF0] & 1) == 0)
        {
          *(*(*(a1 + 40) + 8) + 40) = v8;
        }
      }
    }
  }
}

MX_TelephonyClient *__mx_telephonyClient_Initialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = CoreTelephonyLibraryCore(0);
  if (result)
  {
    result = objc_alloc_init(MX_TelephonyClient);
    gTelephonyClient = result;
    if (!result)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void *__MX_CoreServices_Initialize_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreServices.framework/CoreServices", 4);
  gCoreServicesLib = result;
  if (result)
  {
    gLSApplicationProxyClass = objc_getClass("LSApplicationProxy");
    gLSApplicationWorkspaceClass = objc_getClass("LSApplicationWorkspace");
    gLSBundleRecordClass = objc_getClass("LSBundleRecord");
    gLSApplicationExtensionRecordClass = objc_getClass("LSApplicationExtensionRecord");
    gDeviceManagementPolicyCache = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    gObserver = objc_alloc_init(MX_DeviceManagementPolicyDidChangeObserver);
    v1 = [gLSApplicationWorkspaceClass defaultWorkspace];
    result = [v1 addObserver:gObserver];
    gCoreServicesIsInitialized = 1;
  }

  return result;
}

dispatch_queue_t __MX_CoreServices_GetSerialQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.mediaexperience.CoreServices", v0);
  MX_CoreServices_GetSerialQueue_sSerialQueue = result;
  return result;
}

void __78__MX_DeviceManagementPolicyDidChangeObserver_deviceManagementPolicyDidChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (gCoreServicesIsInitialized == 1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v1 = *(a1 + 32);
    v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v11;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v10 + 1) + 8 * i);
          cmsmLSUpdateDeviceManagementCache([v6 deviceManagementPolicy], objc_msgSend(v6, "bundleIdentifier"));
          if ([v6 deviceManagementPolicy])
          {
            if (CMSMUtility_IsCarPlaySessionPresent())
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
                v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              CMSMNotificationUtility_PostStopCommandToActiveClientWithDisplayID([v6 bundleIdentifier], 0);
            }
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v3);
    }
  }
}

uint64_t __42__MX_GEOCountryConfigurationObserver_init__block_invoke(uint64_t a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__7;
  v2 = getGEOCountryConfigurationClass_softClass;
  v9 = __Block_byref_object_dispose__7;
  v10 = getGEOCountryConfigurationClass_softClass;
  if (!getGEOCountryConfigurationClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getGEOCountryConfigurationClass_block_invoke;
    v11[3] = &unk_1E7AE73A0;
    v11[4] = &v5;
    __getGEOCountryConfigurationClass_block_invoke(v11);
    v2 = v6[5];
  }

  _Block_object_dispose(&v5, 8);
  *(*(a1 + 32) + 16) = [v2 sharedConfiguration];
  *(*(a1 + 32) + 24) = [*(*(a1 + 32) + 16) countryCode];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

void *__59__MX_GEOCountryConfigurationObserver_getCurrentCountryCode__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) length];
  if (result)
  {
    result = [*(*(a1 + 32) + 24) isEqualToString:&stru_1F2890CF0];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 40) = *(*(a1 + 32) + 24);
    }
  }

  return result;
}

uint64_t __91__MX_GEOCountryConfigurationObserver__updateCountryCodeFromCurrentGeoCountryConfiguration___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 24) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 24) = *(a1 + 40);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

MX_GEOCountryConfigurationObserver *__mx_geoCountryConfigurationObserver_Initialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = GeoServicesLibraryCore(0);
  if (result)
  {
    result = objc_alloc_init(MX_GEOCountryConfigurationObserver);
    gGeoCountryConfigurationObserver = result;
    if (!result)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void __27__MX_HIDEventObserver_init__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 8) = IOHIDEventSystemClientCreateWithType();
  if (*(*(a1 + 32) + 8) && (IOHIDEventSystemClientSetMatchingMultiple(), IOHIDEventSystemClientRegisterEventCallback(), CFRunLoopGetMain(), IOHIDEventSystemClientScheduleWithRunLoop(), (v2 = *(*(a1 + 32) + 8)) != 0))
  {
    v3 = IOHIDEventSystemClientCopyServices(v2);
    SmartCoverState = mx_ioKit_getSmartCoverState(v3, 1);
    v5 = mx_ioKit_getSmartCoverState(v3, 2) | SmartCoverState;
    v6 = v5 == 3;
    gFlap1StateIsEngaged = v5 > 1;
    gOpenStateIsEngaged = v5 & 1;
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
  }

  else
  {
    v6 = 0;
  }

  *(*(a1 + 32) + 16) = v6;
  CMSMDeviceState_UpdateSmartCoverState(*(*(a1 + 32) + 16));
}

void __35__MX_HIDEventObserver_handleEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) smartCoverClosed];
  if (IOHIDEventGetType() == 3)
  {
    [*(a1 + 32) handleButtonEvent:*(*(*(a1 + 40) + 8) + 24)];
  }

  v3 = [*(a1 + 32) smartCoverClosed];
  if (v2 != v3)
  {
    CMSMDeviceState_UpdateSmartCoverState(v3);
  }

  v4 = *(*(*(a1 + 40) + 8) + 24);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __MX_IOKit_Initialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  gMXHIDEventObserver = objc_alloc_init(MX_HIDEventObserver);
  if (!gMXHIDEventObserver)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_autoreleasePoolPop(v0);
}

void __MX_RunningBoardServices_StopMonitoringForPID_block_invoke(uint64_t a1, void *a2)
{
  [a2 setPredicates:{objc_msgSend(*(a1 + 32), "allObjects")}];
  v3 = *(a1 + 32);
}

uint64_t __26__MX_NetworkObserver_init__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v2 = getnw_path_monitor_create_with_typeSymbolLoc_ptr;
  v35 = getnw_path_monitor_create_with_typeSymbolLoc_ptr;
  if (!getnw_path_monitor_create_with_typeSymbolLoc_ptr)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getnw_path_monitor_create_with_typeSymbolLoc_block_invoke;
    v32 = &unk_1E7AE73A0;
    v33 = v34;
    v3 = NetworkLibrary();
    *(v34[1] + 24) = dlsym(v3, "nw_path_monitor_create_with_type");
    getnw_path_monitor_create_with_typeSymbolLoc_ptr = *(v33[1] + 24);
    v2 = *(v34[1] + 24);
  }

  _Block_object_dispose(v34, 8);
  if (!v2)
  {
    goto LABEL_24;
  }

  *(*(a1 + 32) + 16) = v2(2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __26__MX_NetworkObserver_init__block_invoke_2;
  v28[3] = &unk_1E7AEC6F0;
  v28[4] = v4;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v6 = getnw_path_monitor_set_update_handlerSymbolLoc_ptr;
  v35 = getnw_path_monitor_set_update_handlerSymbolLoc_ptr;
  if (!getnw_path_monitor_set_update_handlerSymbolLoc_ptr)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getnw_path_monitor_set_update_handlerSymbolLoc_block_invoke;
    v32 = &unk_1E7AE73A0;
    v33 = v34;
    v7 = NetworkLibrary();
    *(v34[1] + 24) = dlsym(v7, "nw_path_monitor_set_update_handler");
    getnw_path_monitor_set_update_handlerSymbolLoc_ptr = *(v33[1] + 24);
    v6 = *(v34[1] + 24);
  }

  _Block_object_dispose(v34, 8);
  if (!v6)
  {
LABEL_24:
    __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
    goto LABEL_27;
  }

  v6(v5, v28);
  v8 = *(a1 + 32);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v11 = getnw_path_monitor_set_queueSymbolLoc_ptr;
  v35 = getnw_path_monitor_set_queueSymbolLoc_ptr;
  if (!getnw_path_monitor_set_queueSymbolLoc_ptr)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getnw_path_monitor_set_queueSymbolLoc_block_invoke;
    v32 = &unk_1E7AE73A0;
    v33 = v34;
    v12 = NetworkLibrary();
    v13 = dlsym(v12, "nw_path_monitor_set_queue");
    *(v33[1] + 24) = v13;
    getnw_path_monitor_set_queueSymbolLoc_ptr = *(v33[1] + 24);
    v11 = *(v34[1] + 24);
  }

  _Block_object_dispose(v34, 8);
  if (!v11)
  {
    goto LABEL_26;
  }

  v11(v9, v10);
  v14 = *(*(a1 + 32) + 16);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v15 = getnw_path_monitor_startSymbolLoc_ptr;
  v35 = getnw_path_monitor_startSymbolLoc_ptr;
  if (!getnw_path_monitor_startSymbolLoc_ptr)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getnw_path_monitor_startSymbolLoc_block_invoke;
    v32 = &unk_1E7AE73A0;
    v33 = v34;
    v16 = NetworkLibrary();
    v17 = dlsym(v16, "nw_path_monitor_start");
    *(v33[1] + 24) = v17;
    getnw_path_monitor_startSymbolLoc_ptr = *(v33[1] + 24);
    v15 = *(v34[1] + 24);
  }

  _Block_object_dispose(v34, 8);
  if (!v15)
  {
    goto LABEL_26;
  }

  v15(v14);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v18 = getnw_path_create_evaluator_for_endpointSymbolLoc_ptr;
  v35 = getnw_path_create_evaluator_for_endpointSymbolLoc_ptr;
  if (!getnw_path_create_evaluator_for_endpointSymbolLoc_ptr)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getnw_path_create_evaluator_for_endpointSymbolLoc_block_invoke;
    v32 = &unk_1E7AE73A0;
    v33 = v34;
    v19 = NetworkLibrary();
    v20 = dlsym(v19, "nw_path_create_evaluator_for_endpoint");
    *(v33[1] + 24) = v20;
    getnw_path_create_evaluator_for_endpointSymbolLoc_ptr = *(v33[1] + 24);
    v18 = *(v34[1] + 24);
  }

  _Block_object_dispose(v34, 8);
  if (!v18)
  {
    goto LABEL_26;
  }

  result = (v18)(0, 0);
  v22 = result;
  if (!result)
  {
    goto LABEL_21;
  }

  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v23 = getnw_path_evaluator_copy_pathSymbolLoc_ptr;
  v35 = getnw_path_evaluator_copy_pathSymbolLoc_ptr;
  if (!getnw_path_evaluator_copy_pathSymbolLoc_ptr)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getnw_path_evaluator_copy_pathSymbolLoc_block_invoke;
    v32 = &unk_1E7AE73A0;
    v33 = v34;
    v24 = NetworkLibrary();
    v25 = dlsym(v24, "nw_path_evaluator_copy_path");
    *(v33[1] + 24) = v25;
    getnw_path_evaluator_copy_pathSymbolLoc_ptr = *(v33[1] + 24);
    v23 = *(v34[1] + 24);
  }

  _Block_object_dispose(v34, 8);
  if (!v23)
  {
LABEL_26:
    __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
LABEL_27:
    __break(1u);
  }

  v26 = v23(v22);
  [*(a1 + 32) networkPathUpdate:v26];
  result = soft_nw_release(v26);
LABEL_21:
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

MX_NetworkObserver *__mx_networkObserver_Initialize_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = NetworkLibraryCore(0);
  if (result)
  {
    result = objc_alloc_init(MX_NetworkObserver);
    gNetworkObserver = result;
    if (!result)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

id __34__MX_BannerManager_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance_13 = objc_alloc_init(MX_BannerManager);
  result = objc_alloc_init(MEMORY[0x1E69E58C0]);
  bannerResponseCacheMutex = result;
  return result;
}

dispatch_queue_t __44__MX_BannerManager_getAwaitingDispatchQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.MediaExperience.ConnectBannerAwaitingDispatchQueue", v0);
  sAwaitingDispatchQueue = result;
  return result;
}

dispatch_queue_t __49__MX_BannerManager_getBannerCleanupDispatchQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.MediaExperience.BannerCleanupDispatchQueue", v0);
  sBannerCleanupDispatchQueue = result;
  return result;
}

void *__41__MX_BannerManager_getSharedBannerClient__block_invoke()
{
  result = [MEMORY[0x1E69ADA30] sharedInstance];
  sBannerClient = result;
  return result;
}

uint64_t __34__MX_BannerManager_cleanupBanners__block_invoke(uint64_t a1)
{
  [*(a1 + 32) cleanupBannerCache:*(*(a1 + 32) + 16)];
  v2 = *(a1 + 32);
  v3 = v2[1];

  return [v2 cleanupBannerCache:v3];
}

void __81__MX_BannerManager_cleanupBannersIfNeededForRoute_routeName_endpointManagerType___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", *(a1 + 40), *(a1 + 48)];
  [*(a1 + 32) cleanupBannerIfNeededForRoute:v2 routeName:*(a1 + 56) bannerType:1];
  [*(a1 + 32) cleanupBannerIfNeededForRoute:v2 routeName:*(a1 + 56) bannerType:0];
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __62__MX_BannerManager_promptUserResponseForRoute_connectHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  v5 = *(*(a1 + 64) + 8);
  if (*(v5 + 24) != 1)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_14;
    }

LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_14;
  }

  *(v5 + 24) = 0;
  if (![*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)])
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (dword_1EB75DE40)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 88);
  v10 = *(*(*(a1 + 72) + 8) + 24);
  v11 = *(*(*(a1 + 80) + 8) + 24);
  if (v2)
  {
    [v8 sendBannerActionToAudioStatistics:0 bannerType:0 targetDeviceType:v9 targetProductID:v10 sourceDeviceType:v11];
    [objc_msgSend(*(*(a1 + 32) + 8) objectForKey:{*(a1 + 40)), "setBannerResponse:", 2}];
    dispatch_semaphore_signal(*(a1 + 48));
  }

  else
  {
    [v8 sendBannerActionToAudioStatistics:1 bannerType:0 targetDeviceType:v9 targetProductID:v10 sourceDeviceType:v11];
    [objc_msgSend(*(*(a1 + 32) + 8) objectForKey:{*(a1 + 40)), "setBannerResponse:", 1}];
    dispatch_semaphore_signal(*(a1 + 48));
    if (dword_1EB75DE40)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    (*(*(a1 + 56) + 16))();
  }

LABEL_14:
  objc_sync_exit(v4);
  v13 = *(a1 + 96);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 112);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 104);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 120);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 128);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    dispatch_release(v18);
  }

  v19 = *(*(*(a1 + 72) + 8) + 24);
  if (v19)
  {
    CFRelease(v19);
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v20 = *(*(*(a1 + 80) + 8) + 24);
  if (v20)
  {
    CFRelease(v20);
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }
}

void __62__MX_BannerManager_promptUserResponseForRoute_connectHandler___block_invoke_101(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 40);
  v4 = dispatch_time(0, 20000000000);
  v5 = dispatch_semaphore_wait(v3, v4);
  v6 = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  if ([*(*(a1 + 48) + 8) objectForKey:*(a1 + 32)])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(objc_msgSend(*(*(a1 + 48) + 8), "objectForKey:", *(a1 + 32)), "bannerResponse")}];
    if (dword_1EB75DE40)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = &unk_1F28AF6E0;
  }

  if (v5)
  {
    if (!dword_1EB75DE40)
    {
      goto LABEL_14;
    }
  }

  else if (!dword_1EB75DE40)
  {
    goto LABEL_14;
  }

  v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_14:
  if ([v7 isEqualToNumber:&unk_1F28AF6F8])
  {
    if (dword_1EB75DE40)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    (*(*(a1 + 56) + 16))();
  }

  objc_sync_exit(v6);
  v12 = *(a1 + 72);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    dispatch_release(v17);
  }
}

void __63__MX_BannerManager_promptUserResponseForUndoRoute_undoHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v55 = *MEMORY[0x1E69E9840];
  v4 = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  v5 = *(*(a1 + 64) + 8);
  if (*(v5 + 24) != 1)
  {
    if (dword_1EB75DE40)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_67;
  }

  *(v5 + 24) = 0;
  v6 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (v6)
  {
    if (dword_1EB75DE40)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = [v6 routeSemaphore];
    v11 = *(a1 + 32);
    v12 = *(a1 + 112);
    v13 = *(*(*(a1 + 72) + 8) + 24);
    v14 = *(*(*(a1 + 80) + 8) + 24);
    if (v2)
    {
      [v11 sendBannerActionToAudioStatistics:0 bannerType:1 targetDeviceType:v12 targetProductID:v13 sourceDeviceType:v14];
      [v6 setBannerResponse:2];
      dispatch_semaphore_signal(v10);
      if (dword_1EB75DE40)
      {
        LODWORD(cf) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_58:
      v41 = *(a1 + 96);
      if (v41)
      {
        CFRelease(v41);
      }

      v42 = *(a1 + 88);
      if (v42)
      {
        CFRelease(v42);
      }

      v43 = *(a1 + 48);
      if (v43)
      {
        CFRelease(v43);
      }

      v44 = *(a1 + 104);
      if (v44)
      {
        CFRelease(v44);
      }

LABEL_67:
      objc_sync_exit(v4);
      v45 = *(*(*(a1 + 72) + 8) + 24);
      if (v45)
      {
        CFRelease(v45);
        *(*(*(a1 + 72) + 8) + 24) = 0;
      }

      v46 = *(*(*(a1 + 80) + 8) + 24);
      if (v46)
      {
        CFRelease(v46);
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }

      return;
    }

    [v11 sendBannerActionToAudioStatistics:1 bannerType:1 targetDeviceType:v12 targetProductID:v13 sourceDeviceType:v14];
    [v6 setBannerResponse:1];
    dispatch_semaphore_signal(v10);
    if (dword_1EB75DE40)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v21 = [*(a1 + 32) copyUndoEndpointsForRoute:*(a1 + 40)];
    v22 = [objc_msgSend(objc_msgSend(*(a1 + 48) "fromPorts")];
    v23 = [+[MXSessionManager sharedInstance](MXSessionManager isPortHeadphoneAndInEar:"isPortHeadphoneAndInEar:", v22];
    IsPortOfTypeBuiltInSpeakerOrReceiver = CMSMVAUtility_IsPortOfTypeBuiltInSpeakerOrReceiver(v22);
    if (!v23)
    {
      v26 = IsPortOfTypeBuiltInSpeakerOrReceiver;
      if (!MX_FeatureFlags_IsCustomizedRoutingWithCarsAndSpeakersEnabled(IsPortOfTypeBuiltInSpeakerOrReceiver, v25) || !v26)
      {
        if (dword_1EB75DE40)
        {
          LODWORD(cf) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_56;
      }
    }

    if (v21)
    {
      Count = CFArrayGetCount(v21);
      v28 = Count;
      if (Count || !dword_1EB75DE40)
      {
        if (Count >= 1)
        {
          v29 = 0;
          v49 = *MEMORY[0x1E695E480];
          v47 = *MEMORY[0x1E69621E8];
          v48 = v4;
          do
          {
            CFArrayGetValueAtIndex(v21, v29);
            cf = 0;
            CMBaseObject = FigEndpointGetCMBaseObject();
            v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v31)
            {
              v31(CMBaseObject, 0x1F289CDB0, v49, &cf);
            }

            if (cf)
            {
              CMSMVAUtility_GetPortFromCFNumber(cf);
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }
            }

            *type = 0;
            v32 = FigEndpointGetCMBaseObject();
            v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v33)
            {
              v33(v32, v47, v49, type);
            }

            if (dword_1EB75DE40)
            {
              v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v4 = v48;
            }

            if (*type)
            {
              CFRelease(*type);
            }

            ++v29;
          }

          while (v28 != v29);
        }

        goto LABEL_48;
      }
    }

    else if (!dword_1EB75DE40)
    {
LABEL_55:
      (*(*(a1 + 56) + 16))();
      [+[MX_BannerManager getSharedBannerClient](MX_BannerManager "getSharedBannerClient")];
LABEL_56:
      if (v21)
      {
        CFRelease(v21);
      }

      goto LABEL_58;
    }

    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_48:
    if (dword_1EB75DE40)
    {
      LODWORD(cf) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v38 = cf;
      v39 = type[0];
      if (os_log_type_enabled(v37, type[0]))
      {
        v40 = v38;
      }

      else
      {
        v40 = v38 & 0xFFFFFFFE;
      }

      if (v40)
      {
        v52 = 136315138;
        v53 = "[MX_BannerManager promptUserResponseForUndoRoute:undoHandler:]_block_invoke";
        _os_log_send_and_compose_impl(v40, 0, v54, 128, &dword_1B17A2000, v37, v39, "-MX_BannerManager- %s: UndoBannerResponse = connect", &v52);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_55;
  }

  if (dword_1EB75DE40)
  {
    LODWORD(cf) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = *(a1 + 88);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 96);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 104);
  if (v20)
  {
    CFRelease(v20);
  }

  objc_sync_exit(v4);
}

@end