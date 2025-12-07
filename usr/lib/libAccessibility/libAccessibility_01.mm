void _removePreference(const __CFString *a1, const __CFString *a2)
{
  _setPreferenceAppWithNotification(a1, 0, 0, a2);

  _updateAccessibilitySettings(v2);
}

void _AXSetPreferenceWithNotification(const __CFString *a1, const void *a2, const __CFString *a3)
{
  _setPreferenceAppWithNotification(a1, 0, a2, a3);

  _updateAccessibilitySettings(v3);
}

float _getFloatPreference(const __CFString *a1, uint64_t a2, _BYTE *a3)
{
  v5 = objc_autoreleasePoolPush();
  if (a3)
  {
    *a3 = 1;
  }

  v6 = _copyValuePreferenceApp(a1, 0, 0);
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v6 floatValue];
    v8 = v7;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    v8 = 3.4028e38;
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

void _AXSAssistiveTouchKickstart(uint64_t a1)
{
  v1 = ASTLogKickStart(a1);
  v2 = os_signpost_id_generate(v1);

  v4 = ASTLogKickStart(v3);
  v5 = v4;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_186307000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Kickstart AST", &unk_186340A7D, buf, 2u);
  }

  _kickstartProcess("com.apple.assistivetouchd");
  v7 = ASTLogKickStart(v6);
  v8 = v7;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_186307000, v8, OS_SIGNPOST_INTERVAL_END, v2, "Kickstart AST", &unk_186340A7D, v9, 2u);
  }
}

void _kickstartProcess(char *service_name)
{
  v24 = *MEMORY[0x1E69E9840];
  sp = 0;
  v2 = bootstrap_look_up(*MEMORY[0x1E69E99F8], service_name, &sp);
  if (sp)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    *&msg.msgh_bits = 0x1800001413;
    msg.msgh_remote_port = sp;
    msg.msgh_local_port = 0;
    msg.msgh_voucher_port = 0;
    msg.msgh_id = 1776;
    v12 = mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0);
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v5 = AXSupportLogCommon(v12);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = service_name;
      v17 = 1024;
      v18 = v13;
      v19 = 1024;
      v20 = sp;
      v8 = "Could not kickstart %s [%d - port: %d]";
      p_msg = buf;
      v10 = v5;
      v11 = 24;
      goto LABEL_12;
    }
  }

  else
  {
    v4 = v2;
    v5 = AXSupportLogCommon(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sp;
      v7 = bootstrap_strerror(v4);
      msg.msgh_bits = 136315906;
      *&msg.msgh_size = service_name;
      LOWORD(msg.msgh_local_port) = 1024;
      *(&msg.msgh_local_port + 2) = v4;
      HIWORD(msg.msgh_voucher_port) = 1024;
      msg.msgh_id = v6;
      v22 = 2080;
      v23 = v7;
      v8 = "Could not look up process with name: %s [%d - port: %d] - error: %s";
      p_msg = &msg;
      v10 = v5;
      v11 = 34;
LABEL_12:
      _os_log_error_impl(&dword_186307000, v10, OS_LOG_TYPE_ERROR, v8, p_msg, v11);
    }
  }
}

uint64_t _isProcessDistributedNotificationSender(uint64_t a1, uint64_t a2)
{
  if (_AXSCurrentProcessIsWebContent_onceToken != -1)
  {
    _isProcessDistributedNotificationSender_cold_1();
  }

  return _AXSCurrentProcessIsWebContent_IsWebContent ^ 1u;
}

uint64_t _AXSCurrentProcessIsWebContent(uint64_t a1, uint64_t a2)
{
  if (_AXSCurrentProcessIsWebContent_onceToken != -1)
  {
    _isProcessDistributedNotificationSender_cold_1();
  }

  return _AXSCurrentProcessIsWebContent_IsWebContent;
}

void _AXSForcePreferenceUpdate(const __CFString *a1)
{
  if (CFEqual(a1, kAXSVoiceOverTouchEnabledPreference))
  {
    _kAXSCacheVoiceOverTouchEnabled = _getBooleanPreference(a1, 0);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSVoiceOverTouchEnabledNotification, 0, 0, 1u);
  }

  if (CFEqual(a1, kAXSBrailleScreenInputEnabledPreference))
  {
    _kAXSCacheBrailleScreenInputEnabled = _getBooleanPreference(a1, 0);
    v3 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v3, kAXSBrailleScreenInputEnabledNotification, 0, 0, 1u);
  }

  if (CFEqual(a1, kAXSHoverTextEnabledPreference))
  {
    _kAXSCacheHoverTextEnabled = _getBooleanPreference(a1, 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v4, kAXSHoverTextEnabledNotification, 0, 0, 1u);
  }

  if (CFEqual(a1, kAXSHoverTextTypingEnabledPreference))
  {
    _kAXSCacheHoverTextTypingEnabled = _getBooleanPreference(a1, 0);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v5, kAXSHoverTextTypingEnabledNotification, 0, 0, 1u);
  }

  if (CFEqual(a1, kAXSLiveSpeechEnabledPreference))
  {
    _kAXSCacheLiveSpeechEnabled = _getBooleanPreference(a1, 0);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v6, kAXSLiveSpeechEnabledNotification, 0, 0, 1u);
  }

  if (CFEqual(a1, kAXSZoomTouchEnabledPreference))
  {
    _kAXSCacheZoomTouchEnabled = _getBooleanPreference(a1, 0);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v7, kAXSZoomTouchEnabledNotification, 0, 0, 1u);
  }

  if (CFEqual(a1, kAXSMonoAudioEnabledPreference))
  {
    _kAXSCacheMonoAudioEnabled = _getBooleanPreference(a1, 0);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    v9 = kAXSMonoAudioEnabledNotification;

    CFNotificationCenterPostNotification(v8, v9, 0, 0, 1u);
  }
}

void _AXSSetInUnitTestMode(uint64_t a1)
{
  v1 = a1;
  _inUnitTestMode = a1;
  v2 = _AXSApplicationAccessibilityEnabled(a1);
  if (v1 || !v2)
  {
    v4 = _AXSApplicationAccessibilityEnabled(v2);
    if (!v1 || v4)
    {
      return;
    }

    v3 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v2))
    {
      return;
    }

    v3 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v3);
}

uint64_t _AXSFaceTimeCaptionsEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSFaceTimeCaptionsEnabled_onceToken != -1)
  {
    _AXSFaceTimeCaptionsEnabled_cold_1();
  }

  return _kAXSCacheFaceTimeCaptionsEnabled;
}

void _AXSSetFaceTimeCaptionsEnabled(uint64_t a1)
{
  _kAXSCacheFaceTimeCaptionsEnabled = a1;
  _setPreferenceAppWithNotification(kAXSFaceTimeCaptionsPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.FaceTimeCaptions");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSInPerformanceTestMode(uint64_t a1, uint64_t a2)
{
  if (_AXSInPerformanceTestMode_onceToken != -1)
  {
    _AXSInPerformanceTestMode_cold_1();
  }

  return _kAXSCacheInPerformanceTestMode;
}

void _AXSSetInPerformanceTestMode(uint64_t a1)
{
  _kAXSCacheInPerformanceTestMode = a1;
  _setPreferenceAppWithNotification(kAXSInPerformanceTestModePreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.performance.testing.mode");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSCurrentAccessibilitySettingsCanSupportLoginUI()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithPath:AXSAccessibilityUtilitiesPath()];
  [v0 load];

  if (_AXSVoiceOverTouchEnabled())
  {
    return 0;
  }

  if (_AXSAssistiveTouchEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_2();
  }

  if (_kAXSAssistiveTouchEnabledCache)
  {
    return 0;
  }

  if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_3();
  }

  if (_kAXSCacheSwitchControlEnabled)
  {
    return 0;
  }

  if (_AXSZoomTouchEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_1();
  }

  if (_kAXSCacheZoomTouchEnabled || _AXSInvertColorsEnabled() || _AXSReduceWhitePointEnabled() || MADisplayFilterPrefGetCategoryEnabled() || MADisplayFilterPrefGetCategoryEnabled() || MADisplayFilterPrefGetCategoryEnabled() || MADisplayFilterPrefGetCategoryEnabled() || MADisplayFilterPrefGetCategoryEnabled() || _AXSEnhanceTextLegibilityEnabled() || _AXDarkenSystemColors() || _AXSEnhanceBackgroundContrastEnabled())
  {
    return 0;
  }

  if (_AXSHearingAidsPaired_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_4();
  }

  if (_kAXSCacheHearingAidPaired)
  {
    return 0;
  }

  v2 = [NSClassFromString(&cfstr_Axsettings.isa) valueForKey:@"sharedInstance"];
  v3 = [v2 valueForKey:@"touchAccommodationsEnabled"];
  v4 = [v3 BOOLValue] ^ 1;

  return v4;
}

uint64_t _AXSReduceWhitePointEnabled()
{
  result = MADisplayFilterPrefGetCategoryEnabled();
  if (result)
  {
    return MADisplayFilterPrefGetType() == 128;
  }

  return result;
}

void _AXSSetAllowOpaqueTouchGestures(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSAllowOpaqueTouchGesturesPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], kAXSAllowOpaqueTouchGesturesChangedNotification);

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSPencilExtendedSqueezeRangeEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSPencilExtendedSqueezeRangeEnabled_onceToken != -1)
  {
    _AXSPencilExtendedSqueezeRangeEnabled_cold_1();
  }

  return _kAXSCachePencilExtendedSqueezeRangeEnabled;
}

void _AXSSetPencilExtendedSqueezeRangeEnabled(uint64_t a1)
{
  _kAXSCachePencilExtendedSqueezeRangeEnabled = a1 != 0;
  _setPreferenceAppWithNotification(@"AXSPencilExtendedSqueezeRangeEnabledPreference", 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.pencil.extended.squeeze.range");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSSpatialAudioHeadTracking()
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v0 = _copyValuePreferenceApp(@"AXSAirPodsSpatialAudioLockToDevice", 0, &v7);
  v1 = v0;
  if (v0)
  {
    v2 = v7 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = AXLogAirPodSettings(v0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v1;
      _os_log_impl(&dword_186307000, v3, OS_LOG_TYPE_INFO, "Migrated lock to device to spatial audio %@", buf, 0xCu);
    }

    if ([v1 BOOLValue])
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    _kAXSCacheSpatialAudioHeadTracking = v4;
    _setPreferenceAppWithNotification(@"AXSSpatialAudioHeadTracking", 0, [MEMORY[0x1E696AD98] numberWithLong:?], @"com.apple.accessibility.SpatialAudioHeadTracking.notification");
    _setPreferenceAppWithNotification(@"AXSAirPodsSpatialAudioLockToDevice", 0, 0, 0);
  }

  if (_AXSSpatialAudioHeadTracking_onceToken != -1)
  {
    _AXSSpatialAudioHeadTracking_cold_1();
  }

  v5 = _kAXSCacheSpatialAudioHeadTracking;

  return v5;
}

void _AXSSetSpatialAudioHeadTracking(uint64_t a1)
{
  _kAXSCacheSpatialAudioHeadTracking = a1;
  v1 = [MEMORY[0x1E696AD98] numberWithLong:a1];

  _setPreferenceAppWithNotification(@"AXSSpatialAudioHeadTracking", 0, v1, @"com.apple.accessibility.SpatialAudioHeadTracking.notification");
}

uint64_t _AXSAirPodsSpatialAudioLockToDevice(uint64_t a1, uint64_t a2)
{
  if (_AXSAirPodsSpatialAudioLockToDevice_onceToken != -1)
  {
    _AXSAirPodsSpatialAudioLockToDevice_cold_1();
  }

  return _kAXSCacheAirPodsSpatialAudioLockToDeviceEnabled;
}

void _AXSSetAirPodsSpatialAudioLockToDevice(uint64_t a1)
{
  _kAXSCacheAirPodsSpatialAudioLockToDeviceEnabled = a1 != 0;
  _setPreferenceAppWithNotification(@"AXSAirPodsSpatialAudioLockToDevice", 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.airpod.spatial.audio.lock.to.device");

  _updateAccessibilitySettings(v1);
}

id AXSAirPodsDictionaryForPreference(const __CFString *a1)
{
  v4 = 0;
  v1 = _copyValuePreferenceApp(a1, 0, &v4);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id AXSAirPodsUpdatedDictionaryForPreference(const __CFString *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = AXSAirPodsDictionaryForPreference(a1);
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
  }

  v8 = v7;
  [v7 setObject:v5 forKeyedSubscript:a2];

  return v8;
}

id _AXSAirPodSettingForDevice(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = AXSAirPodsDictionaryForPreference(a1);
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:a2];
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = AXLogAirPodSettings(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _AXSAirPodSettingForDevice_cold_1();
    }

    v7 = 0;
  }

  return v7;
}

void _AXSAirPodSettingSetForDevice(const __CFString *a1, uint64_t a2, const __CFString *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (a2)
  {
    v9 = AXSAirPodsUpdatedDictionaryForPreference(a1, a2, v7);
    _setPreferenceAppWithNotification(a1, 0, v9, a3);
    v11 = AXLogAirPodSettings(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = a1;
      v14 = 2112;
      v15 = a2;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_186307000, v11, OS_LOG_TYPE_INFO, "Setting AirPods %@:%@ %@", &v12, 0x20u);
    }
  }

  else
  {
    v9 = AXLogAirPodSettings(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _AXSAirPodSettingSetForDevice_cold_1();
    }
  }
}

uint64_t _AXSAirPodsNoiseCancellationWithOneUnit(uint64_t a1)
{
  v2 = kAXSAirPodsNoiseCancellationWithOneUnitPreference;
  v3 = objc_opt_class();
  v4 = _AXSAirPodSettingForDevice(v2, a1, v3);
  v5 = [v4 BOOLValue];

  return v5;
}

void _AXSSetAirPodsNoiseCancellationWithOneUnit(uint64_t a1, uint64_t a2)
{
  v3 = kAXSAirPodsNoiseCancellationWithOneUnitPreference;
  v4 = kAXSAirPodsNoiseCancellationWithOneUnitChangedNotification;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];
  _AXSAirPodSettingSetForDevice(v3, a2, v4, v5);
}

float _AXSAirPodsTapSpeed(uint64_t a1)
{
  v2 = kAXSAirPodsTouchTapSpeedPreference;
  v3 = objc_opt_class();
  v4 = _AXSAirPodSettingForDevice(v2, a1, v3);
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.25;
  }

  return v7;
}

void _AXSSetAirPodsTapSpeed(uint64_t a1)
{
  v2 = kAXSAirPodsTouchTapSpeedPreference;
  v3 = kAXSAirPodsTapSpeedChangedNotification;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  _AXSAirPodSettingSetForDevice(v2, a1, v3, v4);
}

uint64_t _AXSAirPodsDefaultToneVolume(uint64_t a1)
{
  v2 = kAXSAirPodsDefaultToneVolumePreference;
  v3 = objc_opt_class();
  v4 = _AXSAirPodSettingForDevice(v2, a1, v3);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntValue];
  }

  else
  {
    v6 = 80;
  }

  return v6;
}

void _AXSSetAirPodsDefaultToneVolume(uint64_t a1, uint64_t a2)
{
  v3 = kAXSAirPodsDefaultToneVolumePreference;
  v4 = kAXSAirPodsDefaultToneVolumeChangedNotification;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  _AXSAirPodSettingSetForDevice(v3, a2, v4, v5);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = kAXSAirPodsDefaultToneVolumeChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v7, 0, 0, 1u);
}

uint64_t _AXSAirPodsToneVolume(uint64_t a1)
{
  v2 = kAXSAirPodsToneVolumePreference;
  v3 = objc_opt_class();
  v4 = _AXSAirPodSettingForDevice(v2, a1, v3);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntValue];
  }

  else
  {
    v6 = 80;
  }

  return v6;
}

void _AXSSetAirPodsToneVolume(unsigned int a1, uint64_t a2)
{
  if (a1 >= 0x64)
  {
    v3 = 100;
  }

  else
  {
    v3 = a1;
  }

  if (v3 <= 0xF)
  {
    v4 = 15;
  }

  else
  {
    v4 = v3;
  }

  v5 = kAXSAirPodsToneVolumePreference;
  v6 = kAXSAirPodsToneVolumeChangedNotification;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  _AXSAirPodSettingSetForDevice(v5, a2, v6, v7);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v9 = kAXSAirPodsToneVolumeChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v9, 0, 0, 1u);
}

uint64_t _AXSHeadsetCaseTonesEnabled(uint64_t a1)
{
  v2 = kAXSHeadsetCaseTonesPreference;
  v3 = objc_opt_class();
  v4 = _AXSAirPodSettingForDevice(v2, a1, v3);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void _AXSSetHeadsetCaseTonesEnabled(uint64_t a1, uint64_t a2)
{
  v3 = kAXSHeadsetCaseTonesPreference;
  v4 = kAXSHeadsetCaseTonesChangedNotification;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];
  _AXSAirPodSettingSetForDevice(v3, a2, v4, v5);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = kAXSHeadsetCaseTonesChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v7, 0, 0, 1u);
}

float _AXSAirPodsHoldDuration(uint64_t a1)
{
  v2 = kAXSAirPodsHoldDurationPreference;
  v3 = objc_opt_class();
  v4 = _AXSAirPodSettingForDevice(v2, a1, v3);
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.5;
  }

  return v7;
}

void _AXSSetAirPodsHoldDuration(uint64_t a1)
{
  v2 = kAXSAirPodsHoldDurationPreference;
  v3 = kAXSAirPodsHoldDurationChangedNotification;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  _AXSAirPodSettingSetForDevice(v2, a1, v3, v4);
}

uint64_t _AXSAirPodsVolumeSwipeEnabled(uint64_t a1)
{
  v2 = kAXSAirPodsVolumeSwipeEnabledPreference;
  v3 = objc_opt_class();
  v4 = _AXSAirPodSettingForDevice(v2, a1, v3);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void _AXSSetAirPodsVolumeSwipeEnabled(uint64_t a1, uint64_t a2)
{
  v3 = kAXSAirPodsVolumeSwipeEnabledPreference;
  v4 = kAXSAirPodsVolumeSwipeEnabledChangedNotification;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];
  _AXSAirPodSettingSetForDevice(v3, a2, v4, v5);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = kAXSAirPodsVolumeSwipeEnabledChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v7, 0, 0, 1u);
}

float _AXSAirPodsVolumeSwipeDuration(uint64_t a1)
{
  v2 = kAXSAirPodsVolumeSwipeDurationPreference;
  v3 = objc_opt_class();
  v4 = _AXSAirPodSettingForDevice(v2, a1, v3);
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.5;
  }

  return v7;
}

void _AXSSetAirPodsVolumeSwipeDuration(uint64_t a1)
{
  v2 = kAXSAirPodsVolumeSwipeDurationPreference;
  v3 = kAXSAirPodsVolumeSwipeDurationChangedNotification;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  _AXSAirPodSettingSetForDevice(v2, a1, v3, v4);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = kAXSAirPodsVolumeSwipeDurationChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v6, 0, 0, 1u);
}

float _AXSOpaqueTouchTapSpeed()
{
  v1 = 0;
  result = _getFloatPreference(kAXSOpaqueTouchTapSpeedPreference, 0, &v1);
  if (!v1)
  {
    return 0.5;
  }

  return result;
}

void _AXSSetAccessibilityHasNoticedOpaqueTouchDevice(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSOpaqueTouchDeviceEverNoticedPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], 0);

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAccessibilityHasNoticedOpaqueTouchDevice()
{
  v1 = 0;
  LODWORD(result) = _getBooleanPreference(kAXSOpaqueTouchDeviceEverNoticedPreference, &v1);
  if (v1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void AXCatchUserDefaultsInconsistencies(uint64_t a1)
{
  v1 = _AXSCanDisableApplicationAccessibility(a1);
  if (!v1 && !_AXSApplicationAccessibilityEnabled(v1))
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_INFO, "Checking for user defaults inconsistencies and can't disable AX just yet.", v3, 2u);
    }

    _AXSApplicationAccessibilitySetEnabled(1);
  }
}

uint64_t _AXSCanDisableApplicationAccessibility(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = _AXSAccessibilityEnablers(a1);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [v1 allKeys];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v1 objectForKey:v7];
        v9 = v8[2]();

        if (v9)
        {
          v11 = AXLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v18 = v7;
            _os_log_impl(&dword_186307000, v11, OS_LOG_TYPE_DEFAULT, "Still an ax enabler: %@", buf, 0xCu);
          }

          v10 = 0;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_13:

  return v10;
}

id _AXSPreferenceKeysToNotifications(uint64_t a1)
{
  if (_AXSPreferenceKeysToNotifications_onceToken != -1)
  {
    _AXSPreferenceKeysToNotifications_cold_1();
  }

  v2 = _AXSPreferenceKeysToNotifications_PrefKeysToNotifications;

  return v2;
}

void AXBeginListeningToUserDefaultsChanges()
{
  v17 = *MEMORY[0x1E69E9840];
  IsResponsibleForPreferenceObserving = _processIsResponsibleForPreferenceObserving();
  if (IsResponsibleForPreferenceObserving)
  {
    v1 = _AXSPreferenceKeysToNotifications(IsResponsibleForPreferenceObserving);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    obj = [v1 allKeys];
    v2 = [obj countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v12;
      v5 = MEMORY[0x1E69E96A0];
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v12 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          [v1 objectForKeyedSubscript:v7];
          v9 = v8 = v1;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __ObservePreferenceDistributed_block_invoke;
          block[3] = &__block_descriptor_48_e5_v8__0l;
          block[4] = v9;
          block[5] = v7;
          dispatch_async(v5, block);

          v1 = v8;
        }

        v3 = [obj countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v3);
    }

    [DefaultsObserver startObservingPreference:kAXSVoiceOverTouchEnabledPreference andPerformBlock:&__block_literal_global_1879];
    [DefaultsObserver startObservingPreference:kAXSAssistiveTouchEnabledPreference andPerformBlock:&__block_literal_global_1882];
    [DefaultsObserver startObservingPreference:kAXSApplicationAccessibilityEnabledPreference andPerformBlock:&__block_literal_global_1884];
    [DefaultsObserver startObservingPreference:kAXSAssistiveTouchScannerEnabledPreference andPerformBlock:&__block_literal_global_1886];
    [DefaultsObserver startObservingPreference:kAXSInvertColorsEnabledPreference andPerformBlock:&__block_literal_global_1888];
    AXCatchUserDefaultsInconsistencies([DefaultsObserver startObservingPreference:kAXSClassicInvertColorsPreference andPerformBlock:&__block_literal_global_1888]);
  }

  else
  {
    v1 = AXSupportLogCommon(IsResponsibleForPreferenceObserving);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_186307000, v1, OS_LOG_TYPE_DEFAULT, "This process is not responsible for listening to AX user defaults changes. Please file a bug.", block, 2u);
    }
  }
}

void __AXBeginListeningToUserDefaultsChanges_block_invoke()
{
  BooleanPreference = _getBooleanPreference(kAXSVoiceOverTouchEnabledPreference, 0);
  v4 = 0;
  v1 = _getBooleanPreference(kAXSVoiceOverTouchEnabledByiTunesPreference, &v4);
  if (v4)
  {
    v2 = v1 == BooleanPreference;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    _setPreferenceAppWithNotification(kAXSVoiceOverTouchEnabledByiTunesPreference, 0, 0, 0);
    _updateAccessibilitySettings(v3);
  }

  if (BooleanPreference)
  {
    if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
    {
      __AXBeginListeningToUserDefaultsChanges_block_invoke_cold_1();
    }

    if (_kAXSCacheSwitchControlEnabled)
    {
      _AXSAssistiveTouchScannerSetEnabled(0);
    }

    _AXSApplicationAccessibilitySetEnabled(1);
    _kickstartProcess("com.apple.VoiceOverTouch");
  }
}

void __AXBeginListeningToUserDefaultsChanges_block_invoke_2()
{
  BooleanPreference = _getBooleanPreference(kAXSAssistiveTouchEnabledPreference, 0);
  if (BooleanPreference)
  {
    if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
    {
      _updateAccessibilitySettings_cold_3();
    }

    if (_kAXSCacheSwitchControlEnabled)
    {
      _AXSAssistiveTouchScannerSetEnabled(0);
    }

    _AXSAssistiveTouchKickstart(BooleanPreference);
  }

  else
  {
    _setPreferenceAppWithNotification(kAXSAssistiveTouchHardwareEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:0], kAXSAssistiveTouchHardwareChangedNotification);

    _updateAccessibilitySettings(v1);
  }
}

void __AXBeginListeningToUserDefaultsChanges_block_invoke_3(uint64_t a1)
{
  if (!_AXSCanDisableApplicationAccessibility(a1))
  {

    _AXSApplicationAccessibilitySetEnabled(1);
  }
}

void __AXBeginListeningToUserDefaultsChanges_block_invoke_4()
{
  if (_getBooleanPreference(kAXSAssistiveTouchScannerEnabledPreference, 0))
  {
    _disableConflictingSettingsForSwitchControl();
    _AXSApplicationAccessibilitySetEnabled(1);

    _AXSAssistiveTouchKickstart(v0);
  }
}

void _disableConflictingSettingsForSwitchControl()
{
  if (_AXSAssistiveTouchEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_2();
  }

  if (_kAXSAssistiveTouchEnabledCache)
  {
    _AXSAssistiveTouchSetEnabled(0);
  }

  if (_AXSVoiceOverTouchEnabled())
  {
    _AXSVoiceOverTouchSetEnabled(0);
  }

  if (_AXSFullKeyboardAccessEnabled())
  {
    _kAXSCacheFullKeyboardAccessEnabled = 0;
    _setPreferenceAppWithNotification(kAXSFullKeyboardAccessEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:0], @"com.apple.accessibility.cache.full.keyboard.access");
    _updateAccessibilitySettings(v0);
    if (_AXSCanDisableApplicationAccessibility(v1))
    {

      _AXSApplicationAccessibilitySetEnabled(0);
    }
  }
}

uint64_t __AXBeginListeningToUserDefaultsChanges_block_invoke_5()
{
  v4 = 1;
  v0 = AXSGetPreferenceValue(kAXSInvertColorsEnabledPreference, 0);
  if (_getBooleanPreference(kAXSClassicInvertColorsPreference, &v4))
  {
    v1 = 1;
  }

  else
  {
    v1 = v0 == 1;
  }

  v2 = v1;
  return _AXSInvertColorsDisplaySetEnabled(v2);
}

uint64_t _AXSInvertColorsDisplaySetEnabled(uint64_t a1)
{
  v1 = a1;
  v5 = *MEMORY[0x1E69E9840];
  v2 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v1;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Invert colors HW display toggled: %d", v4, 8u);
  }

  if (v1)
  {
    MADisplayFilterPrefSetType();
    return MADisplayFilterPrefSetCategoryEnabled();
  }

  result = MADisplayFilterPrefGetType();
  if (result == 512)
  {
    result = MADisplayFilterPrefGetCategoryEnabled();
    if (result)
    {
      return MADisplayFilterPrefSetCategoryEnabled();
    }
  }

  return result;
}

void _AXSAssistiveTouchSetEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSAssistiveTouchEnabledCache = a1;
  _setPreferenceAppWithNotification(kAXSAssistiveTouchEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.ast");
  _updateAccessibilitySettings(v2);
  if (!v1)
  {
    _setPreferenceAppWithNotification(kAXSAssistiveTouchHardwareEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:0], kAXSAssistiveTouchHardwareChangedNotification);
    _updateAccessibilitySettings(v3);
  }

  v6 = 0;
  BooleanPreference = _getBooleanPreference(kAXSAssistiveTouchEnabledByiTunesPreference, &v6);
  if (v6 && BooleanPreference != v1)
  {
    _setPreferenceAppWithNotification(kAXSAssistiveTouchEnabledByiTunesPreference, 0, 0, 0);
    _updateAccessibilitySettings(v5);
  }

  if (v1)
  {
    if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
    {
      __AXBeginListeningToUserDefaultsChanges_block_invoke_cold_1();
    }

    if (_kAXSCacheSwitchControlEnabled)
    {
      _AXSAssistiveTouchScannerSetEnabled(0);
    }
  }
}

uint64_t _AXSDwellControlEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSDwellControlEnabled_onceToken != -1)
  {
    _AXSDwellControlEnabled_cold_1();
  }

  return _kAXSCacheDwellControlEnabled;
}

void _AXSDwellControlSetEnabled(uint64_t a1)
{
  _kAXSCacheDwellControlEnabled = a1;
  _setPreferenceAppWithNotification(kAXSDwellControlEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.dwell.control");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSSoundActionEnabledForSwitchControl()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [NSClassFromString(&cfstr_Axsettings.isa) valueForKey:@"sharedInstance"];
  v1 = [v0 valueForKey:@"assistiveTouchSwitches"];

  if (v1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(*(&v11 + 1) + 8 * v6) source];
          v8 = [v7 isEqualToString:@"SCATSwitchSourceSound"];

          if (v8)
          {
            v9 = 1;
            goto LABEL_12;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t _AXSSwitchControlEnabledAndNeedsCameraOnLockScreen()
{
  if (_AXSSwitchControlEnabledAndNeedsCameraOnLockScreen_onceToken != -1)
  {
    _AXSSwitchControlEnabledAndNeedsCameraOnLockScreen_cold_1();
  }

  v0 = _kAXSCacheSwitchControlNeedsCameraOnLockScreen;
  v1 = _kAXSCacheNeedsCameraOnLockScreen;
  if (_kAXSCacheNeedsCameraOnLockScreen)
  {
    if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
    {
      _updateAccessibilitySettings_cold_3();
    }

    v1 = _kAXSCacheSwitchControlEnabled != 0;
  }

  _kAXSCacheSwitchControlNeedsCameraOnLockScreen = v1;
  if (v0 != v1)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, kAXSSwitchControlNeedsCameraOnLockScreenNotification, 0, 0, 1u);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSSwitchControlNeedsCameraOnLockScreenNotification, 0, 0, 1u);
    return _kAXSCacheSwitchControlNeedsCameraOnLockScreen;
  }

  return v0;
}

void _AXSSetAccessibilityNeedsCameraOnLockScreen(uint64_t a1)
{
  _kAXSCacheNeedsCameraOnLockScreen = a1;
  _setPreferenceAppWithNotification(kAXSAccessibilityNeedsCameraOnLockScreenPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.needs.camera.cache");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSSwitchControlEnabledAndNeedsMicrophoneOnLockScreen()
{
  if (_AXSSwitchControlEnabledAndNeedsMicrophoneOnLockScreen_onceToken != -1)
  {
    _AXSSwitchControlEnabledAndNeedsMicrophoneOnLockScreen_cold_1();
  }

  v0 = _kAXSCacheSwitchControlNeedsMicrophoneOnLockScreen;
  v1 = _kAXSCacheNeedsMicrophoneOnLockScreen;
  if (_kAXSCacheNeedsMicrophoneOnLockScreen)
  {
    if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
    {
      _updateAccessibilitySettings_cold_3();
    }

    v1 = _kAXSCacheSwitchControlEnabled != 0;
  }

  _kAXSCacheSwitchControlNeedsMicrophoneOnLockScreen = v1;
  if (v0 != v1)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, kAXSSwitchControlNeedsMicrophoneOnLockScreenNotification, 0, 0, 1u);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSSwitchControlNeedsMicrophoneOnLockScreenNotification, 0, 0, 1u);
    return _kAXSCacheSwitchControlNeedsMicrophoneOnLockScreen;
  }

  return v0;
}

void _AXSSetAccessibilityNeedsMicrophoneOnLockScreen(uint64_t a1)
{
  _kAXSCacheNeedsMicrophoneOnLockScreen = a1;
  _setPreferenceAppWithNotification(kAXSAccessibilityNeedsMicrophoneOnLockScreenPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.needs.microphone.cache");

  _updateAccessibilitySettings(v1);
}

void _AXSAssistiveTouchSetRepairIncarnationModeEnabled(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSAssistiveTouchRepairIncarnationModePreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], 0);
  _updateAccessibilitySettings(v2);
  _AXSAssistiveTouchSetEnabled(a1);

  _AXSAssistiveTouchSetUIEnabled(a1);
}

void _AXSAssistiveTouchSetUIEnabled(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSAssistiveTouchUIEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], 0);

  _updateAccessibilitySettings(v1);
}

void _AXSAssistiveTouchSetHardwareEnabled(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSAssistiveTouchHardwareEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], kAXSAssistiveTouchHardwareChangedNotification);
  _updateAccessibilitySettings(v2);
  if (a1)
  {
    if (_AXSAssistiveTouchEnabled_onceToken != -1)
    {
      _updateAccessibilitySettings_cold_2();
    }

    if (!_kAXSAssistiveTouchEnabledCache)
    {
      _AXSAssistiveTouchSetEnabled(a1);

      _AXSAssistiveTouchSetUIEnabled(0);
    }
  }

  else
  {
    if (_AXSAssistiveTouchEnabled_onceToken != -1)
    {
      _updateAccessibilitySettings_cold_2();
    }

    if (_kAXSAssistiveTouchEnabledCache)
    {
      PrefBooleanValueWithCustomCallback = _getPrefBooleanValueWithCustomCallback(kAXSAssistiveTouchUIEnabledPreference, 0, _handleAssistiveTouchPrefsChangedNotification);
      if (!PrefBooleanValueWithCustomCallback)
      {

        _AXSAssistiveTouchSetEnabled(PrefBooleanValueWithCustomCallback);
      }
    }
  }
}

void _AXSAssistiveTouchScannerSetEnabled(uint64_t a1)
{
  v1 = a1;
  if (_kAXSCacheSwitchControlEnabled != a1)
  {
    _kAXSCacheSwitchControlEnabled = a1;
    _setPreferenceAppWithNotification(kAXSAssistiveTouchScannerEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.switch.control");
    _updateAccessibilitySettings(v2);
  }

  if (v1)
  {
    _disableConflictingSettingsForSwitchControl();

    _AXSAssistiveTouchKickstart(v3);
  }
}

uint64_t _AXSAccessibilitySecureIntentProvider(uint64_t a1, uint64_t a2)
{
  if (_AXSAccessibilitySecureIntentProvider_onceToken != -1)
  {
    _AXSAccessibilitySecureIntentProvider_cold_1();
  }

  return _kAXSCacheSecureIntentProviderPreference;
}

void _AXSAccessibilitySetSecureIntentProvider(uint64_t a1)
{
  _kAXSCacheSecureIntentProviderPreference = a1;
  v1 = kAXSSecureIntentProviderPreference;
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];

  _setPreferenceAppWithNotification(v1, 0, v2, @"com.apple.accessibility.cache.secure.intent.provider");
}

uint64_t _AXSSwitchControlExtendedKeyboardPredictionsEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSSwitchControlExtendedKeyboardPredictionsEnabled_onceToken != -1)
  {
    _AXSExtendedKeyboardPredictionsEnabled_cold_2();
  }

  return _kAXSCacheSwitchControlUseExtendedKeyboardPredictionsEnabled;
}

uint64_t _AXSAssistiveTouchExtendedKeyboardPredictionsEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSAssistiveTouchExtendedKeyboardPredictionsEnabled_onceToken != -1)
  {
    _AXSExtendedKeyboardPredictionsEnabled_cold_5();
  }

  return _kAXSCacheAssistiveTouchUseExtendedKeyboardPredictionsEnabled;
}

void _AXSSwitchControlExtendedKeyboardPredictionsSetEnabled(uint64_t a1)
{
  _kAXSCacheSwitchControlUseExtendedKeyboardPredictionsEnabled = a1;
  _setPreferenceAppWithNotification(kAXSSwitchControlUseExtendedKeyboardPredictionsEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.switch.control.useextendedkeyboardpredictions");

  _updateAccessibilitySettings(v1);
}

void _AXSAssistiveTouchExtendedKeyboardPredictionsSetEnabled(uint64_t a1)
{
  _kAXSCacheAssistiveTouchUseExtendedKeyboardPredictionsEnabled = a1;
  _setPreferenceAppWithNotification(kAXSAssistiveTouchUseExtendedKeyboardPredictionsEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.assistivetouch.useextendedkeyboardpredictions");

  _updateAccessibilitySettings(v1);
}

void _AXSUpdateAccessibilityKeyboardContinuousPathEnabled(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_3();
  }

  if (_kAXSCacheSwitchControlEnabled && (a1 = _AXSSwitchControlKeyboardContinuousPathEnabled(a1, a2), a1))
  {
    v3 = 1;
  }

  else if (_AXSDwellKeyboardContinuousPathEnabled(a1, a2))
  {
    if (_AXSAssistiveTouchEnabled_onceToken != -1)
    {
      _updateAccessibilitySettings_cold_2();
    }

    v3 = _kAXSAssistiveTouchEnabledCache != 0;
  }

  else
  {
    v3 = 0;
  }

  if (_kAXSCacheAccessibilityKeyboardContinuousPathEnabled != v3)
  {
    _kAXSCacheAccessibilityKeyboardContinuousPathEnabled = v3;
    if (v2)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      v5 = kAXSAccessibilityKeyboardContinuousPathEnabledNotification;

      CFNotificationCenterPostNotification(LocalCenter, v5, 0, 0, 1u);
    }
  }
}

uint64_t _AXSSwitchControlKeyboardContinuousPathEnabled(uint64_t a1, uint64_t a2)
{
  result = AXRuntimeCheck_DwellKeyboardSwipe(a1, a2);
  if (result)
  {
    if (_AXSSwitchControlKeyboardContinuousPathEnabled_onceToken != -1)
    {
      _AXSSwitchControlKeyboardContinuousPathEnabled_cold_1();
    }

    return _kAXSCacheSwitchControlKeyboardContinuousPathEnabled;
  }

  return result;
}

uint64_t _AXSDwellKeyboardContinuousPathEnabled(uint64_t a1, uint64_t a2)
{
  result = AXRuntimeCheck_DwellKeyboardSwipe(a1, a2);
  if (result)
  {
    if (_AXSDwellKeyboardContinuousPathEnabled_onceToken != -1)
    {
      _AXSDwellKeyboardContinuousPathEnabled_cold_1();
    }

    return _kAXSCacheDwellKeyboardContinuousPathEnabled;
  }

  return result;
}

uint64_t _AXSDidSetDwellKeyboardContinuousPathEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSDidSetDwellKeyboardContinuousPathEnabled_onceToken != -1)
  {
    _AXSDidSetDwellKeyboardContinuousPathEnabled_cold_1();
  }

  return _kAXSCacheDidSetDwellKeyboardContinuousPathEnabled;
}

void _AXSSetDwellKeyboardContinuousPathEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSDidSetDwellKeyboardContinuousPathEnabled_onceToken != -1)
  {
    _AXSDidSetDwellKeyboardContinuousPathEnabled_cold_1();
  }

  if (!_kAXSCacheDidSetDwellKeyboardContinuousPathEnabled)
  {
    _kAXSCacheDidSetDwellKeyboardContinuousPathEnabled = 1;
    _setPreferenceAppWithNotification(kAXSDidSetDwellKeyboardContinuousPathEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:1], 0);
    _updateAccessibilitySettings(v3);
  }

  _kAXSCacheDwellKeyboardContinuousPathEnabled = a1;
  _setPreferenceAppWithNotification(kAXSDwellKeyboardContinuousPathEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.dwell.keyboardcontinuouspath");

  _updateAccessibilitySettings(v4);
}

void _AXSSetSwitchControlKeyboardContinuousPathEnabled(uint64_t a1)
{
  _kAXSCacheSwitchControlKeyboardContinuousPathEnabled = a1;
  _setPreferenceAppWithNotification(kAXSSwitchControlKeyboardContinuousPathEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.switch.control.keyboardcontinuouspath");

  _updateAccessibilitySettings(v1);
}

uint64_t _accessibilityEnabled()
{
  if (_accessibilityEnabled_onceToken != -1)
  {
    _accessibilityEnabled_cold_1();
  }

  return _kAXSCacheAccessibilityEnabled;
}

uint64_t _AXSGuestPassWasActiveAtSystemAppStartup()
{
  if (_AXSGuestPassWasActiveAtSystemAppStartup_onceToken != -1)
  {
    ___AXSAccessibilityEnabled_block_invoke_cold_1();
  }

  return _AXSGuestPassWasActiveAtSystemAppStartup_InGuestPassAtSystemAppStartup;
}

void _AXSSetAccessibilityEnabled()
{
  if (!_kAXSCacheAccessibilityEnabled)
  {
    _kAXSCacheAccessibilityEnabled = 1;
    _setPreferenceAppWithNotification(kAXSAccessibilityEnabledPreference, 0, *MEMORY[0x1E695E4D0], @"com.apple.accessibility.cache.ax");
  }
}

void _AXSTripleClickAddOption(uint64_t a1)
{
  if ((_isComputedTripleClickOption(a1) & 1) == 0)
  {
    v2 = _AXSTripleClickCopyOptions();
    v6 = v2;
    if (v2)
    {
      v3 = [(__CFArray *)v2 mutableCopy];
    }

    else
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v4 = v3;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
    if (([(__CFArray *)v6 containsObject:v5]& 1) == 0)
    {
      [v4 addObject:v5];
      _AXSSetTripleClickOptions(v4);
    }
  }
}

uint64_t _isComputedTripleClickOption(uint64_t a1)
{
  v2 = _computedTripleClickOptions(a1);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v4 = [v2 containsObject:v3];

  return v4;
}

void _AXSSetTripleClickOptions(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFB8] orderedSetWithArray:a1];
  v3 = [a1 count];
  v4 = [v2 count];
  if (v3 != v4)
  {
    v5 = AXSupportLogCommon(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      _AXSSetTripleClickOptions_cold_1();
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = _computedTripleClickOptions(v4);
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v2 containsObject:{v11, v17}])
        {
          v12 = [v2 mutableCopy];
          [v12 removeObject:v11];

          v2 = v12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v13 = [v2 array];
  v14 = AXLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = a1;
    _os_log_impl(&dword_186307000, v14, OS_LOG_TYPE_DEFAULT, "Setting triple click options: %@", buf, 0xCu);
  }

  if (os_variant_has_internal_ui())
  {
    v15 = AXLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&dword_186307000, v15, OS_LOG_TYPE_DEFAULT, "Setting triple click options: %@", buf, 0xCu);
    }
  }

  _setPreferenceAppWithNotification(kAXSTripleClickPreference, 0, v13, 0);
  _didUpdateTripleClickOptions();
}

void _AXSTripleClickRemoveOption(uint64_t a1)
{
  if ((_isComputedTripleClickOption(a1) & 1) == 0)
  {
    v2 = _AXSTripleClickCopyOptions();
    v7 = v2;
    if (v2)
    {
      v3 = [(__CFArray *)v2 mutableCopy];
    }

    else
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v4 = v3;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
    v6 = [v4 indexOfObject:v5];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 removeObjectAtIndex:v6];
      _AXSSetTripleClickOptions(v4);
    }
  }
}

uint64_t _AXSGuidedAccessEnabledNoCaching()
{
  if (_AXSClarityBoardEnabled_onceToken != -1)
  {
    _AXSApplicationAccessibilityEnabled_cold_2();
  }

  if (_AXSClarityBoardEnabled_isEnabled)
  {
    return 0;
  }

  v2 = kAXSGuidedAccessEnabledPreference;

  return _getBooleanPreference(v2, 0);
}

void _AXSHandleTripleClickHomeButtonPress(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = AXUtilsBackBoardServer();
  v2 = objc_opt_respondsToSelector();
  if (v2)
  {
    [v1 tripleClickHomeButtonPress];
  }

  else
  {
    v3 = AXSupportLogCommon(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_186307000, v3, OS_LOG_TYPE_DEFAULT, "BB Server does not respond to triple click", v4, 2u);
    }
  }
}

void sub_1863207B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = AXSupportLogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&dword_186307000, v10, OS_LOG_TYPE_DEFAULT, "couldn't message BB server: %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x186320784);
  }

  _Unwind_Resume(exception_object);
}

id AXUtilsBackBoardServer()
{
  if (AXUtilsBackBoardServer_onceToken != -1)
  {
    AXUtilsBackBoardServer_cold_1();
  }

  v0 = [NSClassFromString(&cfstr_Axbackboardser_0.isa) valueForKey:@"server"];

  return v0;
}

void sub_1863208DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = AXSupportLogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&dword_186307000, v10, OS_LOG_TYPE_DEFAULT, "couldn't load AXBackBoardServer: %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x186320898);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _AXSHandleHomeButtonPressSwallowedForGuidedAccess()
{
  v1 = AXUtilsBackBoardServer();
  if (objc_opt_respondsToSelector())
  {
    [v1 homeClickSwallowedForGuidedAccess];
  }

  return MEMORY[0x1EEE66BB8]();
}

id _computedTripleClickOptions(uint64_t a1)
{
  if (_computedTripleClickOptions_onceToken != -1)
  {
    _computedTripleClickOptions_cold_1();
  }

  v2 = _computedTripleClickOptions_ComputedOptions;

  return v2;
}

void _didUpdateTripleClickOptions()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSTripleHomeEnabledNotification, 0, 0, 1u);

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSGenericAccessibilityClientEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSGenericAccessibilityClientEnabled_onceToken != -1)
  {
    _AXSGenericAccessibilityClientEnabled_cold_1();
  }

  return _kAXSCacheGenericAccessibilityClientEnabled;
}

void _AXSSetGenericAccessibilityClientEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheGenericAccessibilityClientEnabled = a1;
  _setPreferenceAppWithNotification(kAXSGenericAccessibilityClientEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.generic.accessibility.client");
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v3))
    {
      return;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
}

uint64_t _AXSClarityUIEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSClarityUIEnabled_onceToken != -1)
  {
    _AXSClarityUIEnabled_cold_1();
  }

  return _kAXSCacheClarityUIEnabled;
}

void _AXSClarityUISetEnabled(uint64_t a1)
{
  _kAXSCacheClarityUIEnabled = a1;
  _setPreferenceAppWithNotification(kAXSClarityUIEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.clarityui");
  _updateAccessibilitySettings(v1);

  _didUpdateTripleClickOptions();
}

id _AXSClarityUIConvertBundleIdentifier(void *a1, int a2)
{
  v3 = a1;
  if (_AXSClarityUIConvertBundleIdentifier_onceToken != -1)
  {
    _AXSClarityUIConvertBundleIdentifier_cold_1();
  }

  v4 = &_AXSClarityUIConvertBundleIdentifier_ClarityToStandardBundleIdentifiers;
  if (!a2)
  {
    v4 = &_AXSClarityUIConvertBundleIdentifier_StandardToClarityBundleIdentifiers;
  }

  v5 = [*v4 objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = v3;
  }

  return v5;
}

void _AXSCommandAndControlSetEnabled(uint64_t a1)
{
  v1 = a1;
  v8 = *MEMORY[0x1E69E9840];
  _kAXSCacheCommandAndControlEnabled = a1;
  _setPreferenceAppWithNotification(kAXSCommandAndControlEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.command.and.control");
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v5 = _AXSCanDisableApplicationAccessibility(v3);
    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
LABEL_6:
  v6 = AXSupportLogCommon(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v1;
    _os_log_impl(&dword_186307000, v6, OS_LOG_TYPE_DEFAULT, "Set Voice Control enabled: %d", v7, 8u);
  }

  if (v1)
  {
    _kickstartProcess("com.apple.commandandcontrol");
  }
}

void _AXSCommandAndControlCarPlaySetEnabled(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a1;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set Voice Control CarPlay enabled: %d", v5, 8u);
  }

  _kAXSCacheCommandAndControlCarPlayEnabled = a1;
  _setPreferenceAppWithNotification(kAXSCommandAndControlCarPlayEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.command.and.control.carplay");
  _updateAccessibilitySettings(v3);
  if (a1)
  {
    _AXSApplicationAccessibilitySetEnabled(1);
    _kickstartProcess("com.apple.commandandcontrol");
  }

  else if (_AXSCanDisableApplicationAccessibility(v4))
  {
    _AXSApplicationAccessibilitySetEnabled(0);
  }
}

void _AXSFullKeyboardAccessSetEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheFullKeyboardAccessEnabled = a1;
  _setPreferenceAppWithNotification(kAXSFullKeyboardAccessEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.full.keyboard.access");
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    _AXSApplicationAccessibilitySetEnabled(1);
    if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
    {
      _updateAccessibilitySettings_cold_3();
    }

    if (_kAXSCacheSwitchControlEnabled)
    {
      _AXSAssistiveTouchScannerSetEnabled(0);
    }

    _kickstartProcess("com.apple.fullkeyboardaccess");
  }

  else if (_AXSCanDisableApplicationAccessibility(v3))
  {

    _AXSApplicationAccessibilitySetEnabled(0);
  }
}

uint64_t _AXSFullKeyboardAccessFocusRingEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSFullKeyboardAccessFocusRingEnabled_onceToken != -1)
  {
    _AXSFullKeyboardAccessFocusRingEnabled_cold_1();
  }

  return _kAXSCacheFullKeyboardAccessFocusRingEnabled;
}

void _AXSFullKeyboardAccessSetFocusRingEnabled(uint64_t a1)
{
  _kAXSCacheFullKeyboardAccessFocusRingEnabled = a1;
  _setPreferenceAppWithNotification(kAXSFullKeyboardAccessFocusRingEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.full.keyboard.access.focus.ring");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSFullKeyboardAccessPassthroughModeEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSFullKeyboardAccessPassthroughModeEnabled_onceToken != -1)
  {
    _AXSFullKeyboardAccessPassthroughModeEnabled_cold_1();
  }

  return _kAXSCacheFullKeyboardAccessPassthroughModeEnabled;
}

void _AXSFullKeyboardAccessSetPassthroughModeEnabled(uint64_t a1)
{
  _kAXSCacheFullKeyboardAccessPassthroughModeEnabled = a1;
  _setPreferenceAppWithNotification(kAXSFullKeyboardAccessPassthroughModeEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.full.keyboard.access.passthrough.mode");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSFullKeyboardAccessUsesSimulatedKeyboardForAutomation(uint64_t a1, uint64_t a2)
{
  if (_AXSFullKeyboardAccessUsesSimulatedKeyboardForAutomation_onceToken != -1)
  {
    _AXSFullKeyboardAccessUsesSimulatedKeyboardForAutomation_cold_1();
  }

  return _AXSFullKeyboardAccessUsesSimulatedKeyboardForAutomation_UsesSimulatedKeyboard;
}

uint64_t _AXSLiveTranscriptionEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSLiveTranscriptionEnabled_onceToken != -1)
  {
    _AXSLiveTranscriptionEnabled_cold_1();
  }

  return _kAXSCacheLiveTranscriptionEnabled;
}

void _AXSLiveTranscriptionSetEnabled(uint64_t a1)
{
  _kAXSCacheLiveTranscriptionEnabled = a1;
  _setPreferenceAppWithNotification(kAXSLiveTranscriptionEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"_AXSCacheLiveTranscriptionNotification");

  _updateAccessibilitySettings(v1);
}

void _AXSLiveTranscriptionInCallSetEnabled(uint64_t a1)
{
  v1 = kAXSLiveTranscriptionInCallEnabledPreference;
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];

  _setPreferenceAppWithNotification(v1, 0, v2, 0);
}

void _AXSLiveTranscriptionSetMicOn(uint64_t a1)
{
  v1 = _kAXSLiveTranscriptionMicOnPreference;
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];

  _setPreferenceAppWithNotification(v1, 0, v2, 0);
}

void _AXSLiveTranscriptionSetPaused(uint64_t a1)
{
  v1 = _kAXSLiveTranscriptionPausedPreference;
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];

  _setPreferenceAppWithNotification(v1, 0, v2, 0);
}

uint64_t _AXSLiveCaptionsBoldTextEnabled()
{
  v0 = 0xFFFFFFFFLL;
  valuePtr = -1;
  NumberPreference = _getNumberPreference(kAXSLiveCaptionsBoldTextChangePreference, 0);
  if (NumberPreference)
  {
    CFNumberGetValue(NumberPreference, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  return v0;
}

void _AXSLiveCaptionsSetBoldTextEnabled(uint64_t a1)
{
  v1 = kAXSLiveCaptionsBoldTextChangePreference;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:a1];

  _setPreferenceAppWithNotification(v1, 0, v2, 0);
}

uint64_t _AXSUIFocusRingEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSUIFocusRingEnabled_onceToken != -1)
  {
    _AXSUIFocusRingEnabled_cold_1();
  }

  return _kAXSCacheUIFocusRingEnabled;
}

void _AXSSetUIFocusRingEnabled(uint64_t a1)
{
  _kAXSCacheUIFocusRingEnabled = a1;
  _setPreferenceAppWithNotification(kAXSUIFocusRingEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.ui.focus.ring");

  _updateAccessibilitySettings(v1);
}

void _AXSSetPrefersNonBlinkingCursorIndicatorApp(uint64_t a1, __CFString *a2)
{
  v3 = a1;
  v4 = a1;
  _subscribeOnCacheNotificationsIfNeeded(kAXSPrefersNonBlinkingCursorIndicatorPreference, a1, _AXSPrefersNonBlinkingCursorIndicator);
  _updateCachePreferenceAfterChange(kAXSPrefersNonBlinkingCursorIndicatorPreference, a2, &_kAXSCachePrefersNonBlinkingCursorIndicator, v3);
  _setNumberPreferenceApp(kAXSPrefersNonBlinkingCursorIndicatorPreference, kCFNumberIntType, &v4, @"com.apple.accessibility.cache.non.blinking.cursor.status", a2);
}

void _subscribeOnCacheNotificationsIfNeeded(uint64_t isProcessDistributedNotificationSender_cold_1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a2;
  v5 = isProcessDistributedNotificationSender_cold_1;
  v11 = *MEMORY[0x1E69E9840];
  if (_AXSCurrentProcessIsWebContent_onceToken != -1)
  {
    _isProcessDistributedNotificationSender_cold_1();
  }

  if (_AXSCurrentProcessIsWebContent_IsWebContent)
  {
    if (a3)
    {
      isProcessDistributedNotificationSender_cold_1 = a3();
    }

    v6 = AXSupportLogCommon(isProcessDistributedNotificationSender_cold_1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v5;
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_186307000, v6, OS_LOG_TYPE_INFO, "API Setting value for Web: preference = %@, value = %d", &v7, 0x12u);
    }
  }
}

void _updateCachePreferenceAfterChange(uint64_t CachePreference, CFStringRef theString1, _DWORD *a3, int a4)
{
  v6 = CachePreference;
  v22 = *MEMORY[0x1E69E9840];
  v15 = a4;
  if (cachedAppID_onceToken != -1)
  {
    _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_cold_2();
  }

  v7 = cachedAppID_CachedAppID;
  if (!theString1)
  {
    v11 = &v15;
    v9 = v6;
    v10 = cachedAppID_CachedAppID;
    v8 = 0;
    goto LABEL_8;
  }

  if (cachedAppID_CachedAppID)
  {
    CachePreference = CFStringCompare(theString1, cachedAppID_CachedAppID, 0);
    if (!CachePreference)
    {
      v8 = &v15;
      v9 = v6;
      v10 = v7;
      v11 = 0;
LABEL_8:
      CachePreference = _fetchCachePreference(v9, v10, v11, v8);
      *a3 = CachePreference;
    }
  }

  v12 = AXSupportLogCommon(CachePreference);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *a3;
    if (v13 == -1)
    {
      v14 = @"Empty";
    }

    else
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v13];
    }

    *buf = 138412802;
    v17 = theString1;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v14;
    _os_log_debug_impl(&dword_186307000, v12, OS_LOG_TYPE_DEBUG, "Settings Update Cache Value: appID = %@, preference = %@, result = %@", buf, 0x20u);
    if (v13 != -1)
    {
    }
  }
}

void _setNumberPreferenceApp(const __CFString *a1, CFNumberType a2, const void *a3, const __CFString *a4, __CFString *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], a2, a3);
    v9 = AXSupportLogCommon(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412802;
      v11 = a5;
      v12 = 2112;
      v13 = a1;
      v14 = 2112;
      v15 = v8;
      _os_log_debug_impl(&dword_186307000, v9, OS_LOG_TYPE_DEBUG, "Settings Setting Value: appID = %@, preference = %@, value = %@ (-1 - empty, 0 - false, 1 - true)", &v10, 0x20u);
    }

    _setPreferenceAppWithNotification(a1, a5, v8, a4);
    CFRelease(v8);
  }
}

void _AXSSetPreferActionSliderAlternative(int a1)
{
  v1 = a1 != 0;
  v2 = a1 != 0;
  _subscribeOnCacheNotificationsIfNeeded(kAXSPreferActionSliderAlternativePreference, v1, _AXSGetPreferActionSliderAlternative);
  _updateCachePreferenceAfterChange(kAXSPreferActionSliderAlternativePreference, 0, &_kAXSCachePreferActionSliderAlternative, v1);
  _setNumberPreferenceApp(kAXSPreferActionSliderAlternativePreference, kCFNumberIntType, &v2, @"com.apple.accessibility.cache.prefer.action.slider.alternative.status", 0);
}

void _AXSSetPrefersHorizontalTextLayoutApp(uint64_t a1, __CFString *a2)
{
  v3 = a1;
  v4 = a1;
  _subscribeOnCacheNotificationsIfNeeded(kAXSPrefersHorizontalTextPreference, a1, _AXSPrefersHorizontalTextLayout);
  _updateCachePreferenceAfterChange(kAXSPrefersHorizontalTextPreference, a2, _kAXSCachePrefersHorizontalText, v3);
  _setNumberPreferenceApp(kAXSPrefersHorizontalTextPreference, kCFNumberIntType, &v4, @"com.apple.accessibility.cache.prefers.horizontal.text", a2);
}

void _AXSGuidedAccessStartSession()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = kAXSGuidedAccessActivateNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v1, 0, 0, 1u);
}

uint64_t _AXSAutoBrightnessEnabled()
{
  keyExistsAndHasValidFormat = 0;
  LODWORD(result) = CFPreferencesGetAppBooleanValue(@"BKEnableALS", @"com.apple.backboardd", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    return result;
  }

  else
  {
    return 1;
  }
}

void _AXSGuidedAccessSetEnabled(uint64_t a1)
{
  _kAXSCacheGuidedAccessEnabled = a1;
  _setPreferenceAppWithNotification(kAXSGuidedAccessEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.guided.access");
  _updateAccessibilitySettings(v1);

  _didUpdateTripleClickOptions();
}

uint64_t _AXSGuidedAccessEnabledByManagedConfiguration(uint64_t a1, uint64_t a2)
{
  if (_AXSGuidedAccessEnabledByManagedConfiguration_onceToken != -1)
  {
    _AXSGuidedAccessEnabledByManagedConfiguration_cold_1();
  }

  return _kAXSCacheGuidedAccessEnabledByManagedConfiguration;
}

void _AXSGuidedAccessSetEnabledByManagedConfiguration(uint64_t a1)
{
  _kAXSCacheGuidedAccessEnabledByManagedConfiguration = a1;
  _setPreferenceAppWithNotification(kAXSGuidedAccessEnabledByManagedConfigurationPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.guided.access.via.mdm");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSGuidedAccessHasPasscode(uint64_t a1, uint64_t a2)
{
  if (_AXSGuidedAccessHasPasscode_onceToken != -1)
  {
    _AXSGuidedAccessHasPasscode_cold_1();
  }

  return _kAXSCacheGuidedAccessHasPasscode;
}

void _AXSGuidedAccessSetHasPasscode(uint64_t a1)
{
  _kAXSCacheGuidedAccessHasPasscode = a1;
  _setPreferenceAppWithNotification(kAXSGuidedAccessHasPasscodePreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.gax.haspasscode");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSSideButtonClickSpeedEnabled()
{
  v4 = 0;
  FloatPreference = _getFloatPreference(kAXSSideButtonClickSpeedPreference, 0, &v4);
  if (v4)
  {
    v1 = FloatPreference < 0.0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  return v2 & (fabsf(FloatPreference + -0.4) > 0.01);
}

float _AXSSideButtonClickSpeed()
{
  v2 = 0;
  result = _getFloatPreference(kAXSSideButtonClickSpeedPreference, 0, &v2);
  if (v2)
  {
    v1 = result < 0.0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0.4;
  }

  return result;
}

void _AXSSetSideButtonClickSpeed(float a1)
{
  if (fabsf(a1 + -1.2) >= 0.01)
  {
    if (fabsf(a1 + -0.7) >= 0.01)
    {
      if (fabsf(a1 + -0.4) >= 0.01)
      {
        return;
      }

      v1 = 1053609165;
    }

    else
    {
      v1 = 1060320051;
    }
  }

  else
  {
    v1 = 1067030938;
  }

  v2 = v1;
  _setNumberPreferenceApp(kAXSSideButtonClickSpeedPreference, kCFNumberFloatType, &v2, kAXSSideButtonClickSpeedChangedNotification, 0);
}

uint64_t _AXSHomeClickEnabled()
{
  v4 = 0;
  FloatPreference = _getFloatPreference(kAXSHomeClickSpeedPreference, 0, &v4);
  if (v4)
  {
    v1 = FloatPreference < 0.0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  return v2 & (fabsf(FloatPreference + -0.35) > 0.01);
}

float _AXSHomeClickSpeed()
{
  v2 = 0;
  result = _getFloatPreference(kAXSHomeClickSpeedPreference, 0, &v2);
  if (v2)
  {
    v1 = result < 0.0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0.35;
  }

  return result;
}

void _AXSHomeClickSetSpeed(float a1)
{
  if (fabsf(a1 + -0.7) >= 0.01)
  {
    if (fabsf(a1 + -0.5) >= 0.01)
    {
      if (fabsf(a1 + -0.35) >= 0.01)
      {
        return;
      }

      v1 = 1051931443;
    }

    else
    {
      v1 = 1056964608;
    }
  }

  else
  {
    v1 = 1060320051;
  }

  v4 = v1;
  v2 = _AXSHomeClickEnabled();
  _setNumberPreferenceApp(kAXSHomeClickSpeedPreference, kCFNumberFloatType, &v4, kAXSHomeClickSpeedChangedNotification, 0);
  if (!v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSHomeClickEnabledNotification, 0, 0, 1u);
  }
}

float _AXSLockClickDownPressDurationScaleFactor()
{
  v3 = 0;
  FloatPreference = _getFloatPreference(kAXSHomeClickSpeedPreference, 0, &v3);
  if (v3)
  {
    v1 = FloatPreference < 0.0;
  }

  else
  {
    v1 = 1;
  }

  result = FloatPreference / 0.35;
  if (v1)
  {
    return 1.0;
  }

  return result;
}

float _AXSLockClickVarianceScaleFactor()
{
  v3 = 0;
  FloatPreference = _getFloatPreference(kAXSHomeClickSpeedPreference, 0, &v3);
  if (v3)
  {
    v1 = FloatPreference < 0.0;
  }

  else
  {
    v1 = 1;
  }

  result = FloatPreference / 0.35;
  if (v1)
  {
    return 1.0;
  }

  return result;
}

uint64_t _AXSPearlAuthenticationHapticsEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSPearlAuthenticationHapticsEnabled_onceToken != -1)
  {
    _AXSPearlAuthenticationHapticsEnabled_cold_1();
  }

  return _kAXSCachePearlAuthenticationHapticsEnabled;
}

void _AXSSetPearlAuthenticationHapticsEnabled(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set pearl-auth haptics: %d", v4, 8u);
  }

  _kAXSCachePearlAuthenticationHapticsEnabled = a1;
  _setPreferenceAppWithNotification(kAXSPearlAuthenticationHapticsPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.perl.auth.haptics");
  _updateAccessibilitySettings(v3);
}

uint64_t _AXSPearlRestingUnlock()
{
  v1 = 0;
  _getBooleanPreference(kAXSRestingPearlUnlockPreference, &v1);
  return v1;
}

uint64_t _AXSPearlRestingUnlockEverSet(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = _kAXSCacheRestingPearlUnlockEnabled;
    _os_log_impl(&dword_186307000, v1, OS_LOG_TYPE_DEFAULT, "Retrieving pearl-resting unlock: %d", v3, 8u);
  }

  if (_AXSPearlRestingUnlockEverSet_onceToken != -1)
  {
    _AXSPearlRestingUnlockEverSet_cold_1();
  }

  return _kAXSCacheRestingPearlUnlockEnabled;
}

void _AXSPearlSetRestingUnlock(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set pearl-resting unlock: %d", v4, 8u);
  }

  _kAXSCacheRestingPearlUnlockEnabled = a1;
  _setPreferenceAppWithNotification(kAXSRestingPearlUnlockPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.resting.home.button.unlock");
  _updateAccessibilitySettings(v3);
}

void _AXSSetAttentionAwarenessFeaturesEnabled(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set attention aware: %d", v4, 8u);
  }

  _kAXSCacheAttentionAwarenessFeaturesEnabled = a1;
  _setPreferenceAppWithNotification(kAXSAttentionAwarenessFeaturesEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.attention.awareness");
  _updateAccessibilitySettings(v3);
}

uint64_t _AXSUserEnabledPasscodeForPurchases(uint64_t a1, uint64_t a2)
{
  if (_AXSUserEnabledPasscodeForPurchases_onceToken != -1)
  {
    _AXSUserEnabledPasscodeForPurchases_cold_1();
  }

  return _kAXSCachePasscodeForPurchases;
}

void _AXSSetUserEnabledPasscodeForPurchases(uint64_t a1)
{
  _kAXSCachePasscodeForPurchases = a1;
  _setPreferenceAppWithNotification(kAXSPasscodeForPurchasesPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.passcode.purchases");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSHomeButtonRestingUnlockEverSet()
{
  v1 = 0;
  _getBooleanPreference(kAXSRestingHomeButtonUnlockPreference, &v1);
  return v1;
}

uint64_t _AXSHomeButtonRestingUnlockPreferredForDevice()
{
  v0 = MGGetSInt32Answer();
  result = 0;
  if (v0 == 2)
  {
    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t _AXSHomeButtonRestingUnlock(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (_kAXSCacheRestingHomeButtonUnlockEnabled == -1)
  {
    a1 = _AXSHomeButtonRestingUnlockPreferredForDevice();
    _kAXSCacheRestingHomeButtonUnlockEnabled = a1;
  }

  v1 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = _kAXSCacheRestingHomeButtonUnlockEnabled;
    _os_log_impl(&dword_186307000, v1, OS_LOG_TYPE_DEFAULT, "Retrieving resting unlock: %d", v3, 8u);
  }

  if (_AXSHomeButtonRestingUnlock_onceToken != -1)
  {
    _AXSHomeButtonRestingUnlock_cold_1();
  }

  return _kAXSCacheRestingHomeButtonUnlockEnabled;
}

void _AXSHomeButtonSetRestingUnlock(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set resting unlock: %d", v4, 8u);
  }

  _kAXSCacheRestingHomeButtonUnlockEnabled = a1;
  _setPreferenceAppWithNotification(kAXSRestingHomeButtonUnlockPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.resting.home.button.unlock");
  _updateAccessibilitySettings(v3);
}

void _AXSAXInspectorSetEnabled(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "AXInspector enabled for inspection: %d", v4, 8u);
  }

  _kAXSCacheAXInspectorEnabled = a1;
  _setPreferenceAppWithNotification(kAXSAXInspectorPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.internal.axinspector");
  _updateAccessibilitySettings(v3);
}

uint64_t _AXSAXInspectorEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSAXInspectorEnabled_onceToken != -1)
  {
    _AXSAXInspectorEnabled_cold_1();
  }

  return _kAXSCacheAXInspectorEnabled;
}

uint64_t _AXSLogValidationErrors(uint64_t a1, uint64_t a2)
{
  if (_AXSLogValidationErrors_onceToken != -1)
  {
    _AXSLogValidationErrors_cold_1();
  }

  return _kAXSCacheLogValidationErrors;
}

void _AXSSetLogValidationErrors(uint64_t a1)
{
  _kAXSCacheLogValidationErrors = a1;
  _setPreferenceAppWithNotification(kAXSLogValidationErrorsPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.internal.logvalidationerrors");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSReportValidationErrors(uint64_t a1, uint64_t a2)
{
  if (_AXSReportValidationErrors_onceToken != -1)
  {
    _AXSReportValidationErrors_cold_1();
  }

  return _kAXSCacheReportValidationErrors;
}

void _AXSSetReportValidationErrors(uint64_t a1)
{
  _kAXSCacheReportValidationErrors = a1;
  _setPreferenceAppWithNotification(kAXSReportValidationErrorsPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.internal.reportvalidationerrors");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSCrashOnValidationErrors(uint64_t a1, uint64_t a2)
{
  if (_AXSCrashOnValidationErrors_onceToken != -1)
  {
    _AXSCrashOnValidationErrors_cold_1();
  }

  return _kAXSCacheCrashOnValidationErrors;
}

void _AXSSetCrashOnValidationErrors(uint64_t a1)
{
  _kAXSCacheCrashOnValidationErrors = a1;
  _setPreferenceAppWithNotification(kAXSCrashOnValidationErrorsPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.internal.crashonvalidationerrors");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSClassicInvertColorsEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSClassicInvertColorsEnabled_onceToken != -1)
  {
    _AXSClassicInvertColorsEnabled_cold_1();
  }

  return _kAXSCacheClassicInvertColorsEnabled;
}

const __CFString *_AXSInvertColorsEnabledAppCached(const __CFString *result)
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    valuePtr = -1;
    v2 = cachedSmartInvertPreferences(result);
    v3 = [v2 valueForKey:v1];

    if (!v3 || (CFNumberGetValue(v3, kCFNumberIntType, &valuePtr), v4 = valuePtr, valuePtr == -2))
    {
      v20 = -1;
      NumberPreference = _getNumberPreference(kAXSInvertColorsEnabledPreference, v1);
      v6 = AXLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = NumberPreference;
        _os_log_impl(&dword_186307000, v6, OS_LOG_TYPE_DEFAULT, "Update invert status global: %@", buf, 0xCu);
      }

      if (!NumberPreference || (Value = CFNumberGetValue(NumberPreference, kCFNumberIntType, &v20), v20 == -1))
      {
        v8 = _kAXSCacheInvertColorsGlobal;
        if (_kAXSCacheInvertColorsGlobal == -1)
        {
          v8 = 0;
        }

        v20 = v8;
      }

      v9 = cachedSmartInvertPreferences(Value);
      v10 = [MEMORY[0x1E696AD98] numberWithInt:v20];
      [v9 setValue:v10 forKey:v1];

      v12 = cachedSmartInvertPreferences(v11);
      v13 = [v12 valueForKey:v1];

      if (valuePtr != -2)
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandleSmartInvertPrefChangedApp, @"com.apple.accessibility.cache.invert.colors", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        v17 = AXSupportLogCommon(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          _AXSInvertColorsEnabledAppCached_cold_1();
        }
      }

      if (v13)
      {
        v14 = CFNumberGetValue(v13, kCFNumberIntType, &valuePtr);
      }

      v18 = AXSupportLogCommon(v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        _AXSInvertColorsEnabledAppCached_cold_2(v1, &valuePtr);
      }

      v4 = valuePtr;
    }

    return (v4 == 1);
  }

  return result;
}

id cachedSmartInvertPreferences(uint64_t a1)
{
  if (cachedSmartInvertPreferences_onceToken != -1)
  {
    cachedSmartInvertPreferences_cold_1();
  }

  v2 = cachedSmartInvertPreferences_CachedSmartInvertPreferences;

  return v2;
}

void _axsHandleSmartInvertPrefChangedApp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:a3];
  [v3 replaceOccurrencesOfString:@"com.apple.accessibility.cache.invert.colors" withString:&stru_1EF54FCF8 options:0 range:{0, objc_msgSend(v3, "length")}];
  _invalidateCacheSmartInvertPreference(v3);
}

void _AXSInvertColorsSetEnabledApp(uint64_t a1, __CFString *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    *buf = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = a2;
    _os_log_impl(&dword_186307000, v4, OS_LOG_TYPE_DEFAULT, "Set invert colors enabled: %@ app: %@", buf, 0x16u);
  }

  _subscribeOnCacheNotificationsIfNeeded(kAXSInvertColorsEnabledPreference, a1, _AXSInvertColorsEnabled);
  _updateCachePreferenceAfterChange(kAXSInvertColorsEnabledPreference, a2, &_kAXSCacheInvertColors, a1);
  _setNumberPreferenceApp(kAXSInvertColorsEnabledPreference, kCFNumberIntType, &v9, @"com.apple.accessibility.cache.invert.colors", a2);
  if (v9 == 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSPreLoadInvertColorsEnabledNotification, 0, 0, 1u);
  }

  _updateAccessibilitySettings(v6);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v8, kAXSInvertColorsStatusDidChangeNotification, 0, 0, 1u);
}

void _AXSClassicInvertColorsSetEnabled(uint64_t a1)
{
  if (a1 && _AXSInvertColorsEnabled())
  {
    _AXSInvertColorsSetEnabled(0);
  }

  _kAXSCacheClassicInvertColorsEnabled = a1;
  _AXSInvertColorsDisplaySetEnabled(a1);
  _setPreferenceAppWithNotification(kAXSClassicInvertColorsPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.classic.invert.colors");

  _updateAccessibilitySettings(v2);
}

void _AXSInvertColorsMarkInvertColorsPreloadComplete()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v1 = kAXSInvertColorsEnabledNotification;

  CFNotificationCenterPostNotification(LocalCenter, v1, 0, 0, 1u);
}

uint64_t _AXSDisplayFilterColorSetEnabled(uint64_t a1)
{
  MADisplayFilterPrefSetCategoryEnabled();
  result = MADisplayFilterPrefGetType();
  if (result == 1)
  {

    return _AXSGrayscaleSetEnabled(a1);
  }

  return result;
}

uint64_t _AXSGrayscaleSetEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheGrayscaleEnabled = a1;
  _setPreferenceAppWithNotification(kAXSGrayscaleEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.grayscale");
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    MADisplayFilterPrefSetType();
  }

  else
  {
    result = MADisplayFilterPrefGetType();
    if (result != 1)
    {
      return result;
    }

    result = MADisplayFilterPrefGetCategoryEnabled();
    if (!result)
    {
      return result;
    }
  }

  return MADisplayFilterPrefSetCategoryEnabled();
}

void _AXSUpdateGrayscaleEnabledCache()
{
  if (MADisplayFilterPrefGetCategoryEnabled())
  {
    v0 = MADisplayFilterPrefGetType() == 1;
  }

  else
  {
    v0 = 0;
  }

  _kAXSCacheGrayscaleEnabled = v0;
  _setPreferenceAppWithNotification(kAXSGrayscaleEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:?], 0);
  _updateAccessibilitySettings(v1);
  _setPreferenceAppWithNotification(kAXSDidCheckGrayscalePreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:1], 0);

  _updateAccessibilitySettings(v2);
}

uint64_t _AXSRedGreenFilterEnabled()
{
  result = MADisplayFilterPrefGetCategoryEnabled();
  if (result)
  {
    return MADisplayFilterPrefGetType() == 2;
  }

  return result;
}

uint64_t _AXSRedGreenFilterSetEnabled(int a1)
{
  if (a1)
  {
    MADisplayFilterPrefSetType();
  }

  else
  {
    result = MADisplayFilterPrefGetType();
    if (result != 2)
    {
      return result;
    }

    result = MADisplayFilterPrefGetCategoryEnabled();
    if (!result)
    {
      return result;
    }
  }

  return MADisplayFilterPrefSetCategoryEnabled();
}

uint64_t _AXSRedGreenFilterSetIntensity(double a1)
{
  MADisplayFilterPrefSuspendNotifications();
  MADisplayFilterPrefSetRedColorCorrectionIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  return MADisplayFilterPrefSuspendNotifications();
}

uint64_t _AXSGreenRedFilterEnabled()
{
  result = MADisplayFilterPrefGetCategoryEnabled();
  if (result)
  {
    return MADisplayFilterPrefGetType() == 4;
  }

  return result;
}

uint64_t _AXSGreenRedFilterSetEnabled(int a1)
{
  if (a1)
  {
    MADisplayFilterPrefSetType();
  }

  else
  {
    result = MADisplayFilterPrefGetType();
    if (result != 4)
    {
      return result;
    }

    result = MADisplayFilterPrefGetCategoryEnabled();
    if (!result)
    {
      return result;
    }
  }

  return MADisplayFilterPrefSetCategoryEnabled();
}

uint64_t _AXSGreenRedFilterSetIntensity(double a1)
{
  MADisplayFilterPrefSuspendNotifications();
  MADisplayFilterPrefSetGreenColorCorrectionIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  return MADisplayFilterPrefSuspendNotifications();
}

uint64_t _AXSBlueYellowFilterEnabled()
{
  result = MADisplayFilterPrefGetCategoryEnabled();
  if (result)
  {
    return MADisplayFilterPrefGetType() == 8;
  }

  return result;
}

uint64_t _AXSBlueYellowFilterSetEnabled(int a1)
{
  if (a1)
  {
    MADisplayFilterPrefSetType();
  }

  else
  {
    result = MADisplayFilterPrefGetType();
    if (result != 8)
    {
      return result;
    }

    result = MADisplayFilterPrefGetCategoryEnabled();
    if (!result)
    {
      return result;
    }
  }

  return MADisplayFilterPrefSetCategoryEnabled();
}

uint64_t _AXSBlueYellowFilterSetIntensity(double a1)
{
  MADisplayFilterPrefSuspendNotifications();
  MADisplayFilterPrefSetBlueColorCorrectionIntensity();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSDisplayFilterForceUpdateNotification, 0, 0, 1u);

  return MADisplayFilterPrefSuspendNotifications();
}

uint64_t _AXSColorTintFilterEnabled()
{
  result = MADisplayFilterPrefGetCategoryEnabled();
  if (result)
  {
    return MADisplayFilterPrefGetType() == 16;
  }

  return result;
}

uint64_t _AXSColorTintSetEnabled(int a1)
{
  if (a1)
  {
    MADisplayFilterPrefSetType();
  }

  else
  {
    result = MADisplayFilterPrefGetType();
    if (result != 16)
    {
      return result;
    }

    result = MADisplayFilterPrefGetCategoryEnabled();
    if (!result)
    {
      return result;
    }
  }

  return MADisplayFilterPrefSetCategoryEnabled();
}

uint64_t _AXSScreenFilterShowInitialAlert(uint64_t a1, uint64_t a2)
{
  if (_AXSScreenFilterShowInitialAlert_onceToken != -1)
  {
    _AXSScreenFilterShowInitialAlert_cold_1();
  }

  return _kAXSCacheDisplayFilterShowInitialAlert;
}

void _AXSScreenFilterSetShowInitialAlert(uint64_t a1)
{
  _kAXSCacheDisplayFilterShowInitialAlert = a1;
  _setPreferenceAppWithNotification(kAXSDisplayFilterShowInitialAlertPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.displayfilter.showinitialalert");

  _updateAccessibilitySettings(v1);
}

void *_AXSDisableScreenFilters()
{
  if (_AXSInvertColorsEnabled())
  {
    _AXSInvertColorsSetEnabled(0);
  }

  result = _AXSGrayscaleEnabled();
  if (result)
  {

    return _AXSGrayscaleSetEnabled(0);
  }

  return result;
}

void *_AXSCachedValueForBrightnessFilter(const void *a1)
{
  v2 = _copyValuePreferenceApp(kAXSCachedBrightnessFiltersPreference, 0, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [CFDictionaryGetValue(v2 a1)];
  CFRelease(v3);

  return v4;
}

void _AXSSetCacheForBrightnessFilter(const void *a1, const void *a2)
{
  v4 = _copyValuePreferenceApp(kAXSCachedBrightnessFiltersPreference, 0, 0);
  if (v4)
  {
    v5 = v4;
    Count = CFDictionaryGetCount(v4);
    MutableCopy = CFDictionaryCreateMutableCopy(0, Count, v5);
    CFRelease(v5);
    if (a2)
    {
      CFDictionarySetValue(MutableCopy, a1, a2);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, a1);
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    MutableCopy = Mutable;
    if (a2)
    {
      CFDictionaryAddValue(Mutable, a1, a2);
    }
  }

  _setPreferenceAppWithNotification(kAXSCachedBrightnessFiltersPreference, 0, MutableCopy, kAXSCachedBrightnessFiltersPreferenceChangedNotification);

  CFRelease(MutableCopy);
}

void _AXSClosedCaptionsSetEnabled(int a1)
{
  if (a1)
  {
    v2 = kMACaptionAppearanceDisplayTypeAlwaysOn;
  }

  else
  {
    v2 = kMACaptionAppearanceDisplayTypeAutomatic;
  }

  MACaptionAppearanceSetDisplayType(kMACaptionAppearanceDomainDefault, v2);
  MACaptionAppearancePrefSetPreferAccessibleCaptions();
  v8 = 0;
  BooleanPreference = _getBooleanPreference(kAXSClosedCaptioningEnabledByiTunesPreference, &v8);
  if (v8)
  {
    v4 = BooleanPreference == a1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    _setPreferenceAppWithNotification(kAXSClosedCaptioningEnabledByiTunesPreference, 0, 0, 0);
    _updateAccessibilitySettings(v5);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileipod.notify.MovieClosedCaptioningEnabledSetting", 0, 0, 1u);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v7, @"com.apple.accessibility.cache.captioning", 0, 0, 1u);
}

uint64_t _AXSExtendedVoiceIsolationMediaModesEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSExtendedVoiceIsolationMediaModesEnabled_onceToken != -1)
  {
    _AXSExtendedVoiceIsolationMediaModesEnabled_cold_1();
  }

  return _kAXSCacheExtendedVoiceIsolationMediaModesEnabled;
}

void _AXSSetExtendedVoiceIsolationMediaModesEnabled(uint64_t a1)
{
  _kAXSCacheExtendedVoiceIsolationMediaModesEnabled = a1;
  _setPreferenceAppWithNotification(kAXSExtendedVoiceIsolationMediaModesEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.extendedvoiceisolationmodes");

  _updateAccessibilitySettings(v1);
}

void _AXSSetPreferredContentSizeCategoryNameApp(const void *a1, __CFString *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v26 = 0;
    v4 = [objc_alloc(getLSApplicationRecordClass()) initWithBundleIdentifier:a2 allowPlaceholder:0 error:&v26];
    v5 = v26;
    v6 = v5;
    if (v5)
    {
      v7 = AXSupportLogCommon(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _copyValuePreferenceApp_cold_2();
      }
    }

    v8 = [v4 dataContainerURL];
    v9 = [v8 path];

    if (v9)
    {
      if (![(__CFString *)a2 hasPrefix:@"com.apple."])
      {
LABEL_17:
        v18 = _CFPreferencesSetAppValueWithContainer();
        v19 = AXSupportLogCommon(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *v28 = v9;
          *&v28[8] = 2112;
          *&v28[10] = a2;
          *&v28[18] = 2112;
          v29 = a1;
          _os_log_debug_impl(&dword_186307000, v19, OS_LOG_TYPE_DEBUG, "CF Save CategoryName to Container: domain = %@, appID = %@, category name = %@", buf, 0x20u);
        }

        v21 = AXSupportLogCommon(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v28 = a1;
          _os_log_impl(&dword_186307000, v21, OS_LOG_TYPE_DEFAULT, "Saved CategoryName to Contaier: category name = %@", buf, 0xCu);
        }

        goto LABEL_22;
      }

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = a2;
  }

  else
  {
    v11 = [AXCPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
    v9 = 0;
    v10 = 1;
  }

  CFPreferencesSetAppValue(@"UIPreferredContentSizeCategoryName", a1, v11);
  v12 = CFPreferencesAppSynchronize(v11);
  v13 = v12;
  v14 = AXSupportLogCommon(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *v28 = v11;
    *&v28[8] = 2112;
    *&v28[10] = a2;
    *&v28[18] = 2112;
    v29 = a1;
    _os_log_debug_impl(&dword_186307000, v14, OS_LOG_TYPE_DEBUG, "CF Save CategoryName: domain = %@, appID = %@, category name = %@", buf, 0x20u);
  }

  v16 = AXSupportLogCommon(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v28 = a2 != 0;
    *&v28[4] = 2112;
    *&v28[6] = a1;
    *&v28[14] = 1024;
    *&v28[16] = v13;
    _os_log_impl(&dword_186307000, v16, OS_LOG_TYPE_DEFAULT, "Saved CategoryName to Domain: per-app = %d, category name = %@, synced = %d", buf, 0x18u);
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_22:
  v22 = AXSupportLogCommon(v17);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = geteuid();
    *buf = 67109634;
    *v28 = a2 != 0;
    *&v28[4] = 2112;
    *&v28[6] = a1;
    *&v28[14] = 1024;
    *&v28[16] = v23 != 0;
    _os_log_impl(&dword_186307000, v22, OS_LOG_TYPE_DEFAULT, "Saved CategoryName: per-app = %d, category name = %@, usermode = %d", buf, 0x18u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSApplePreferredContentSizeCategoryNotification, 0, 0, 1u);
  if (_inUnitTestMode)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, kAXSApplePreferredContentSizeCategoryNotification, 0, 0, 1u);
  }
}

id getLSApplicationRecordClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLSApplicationRecordClass_softClass;
  v7 = getLSApplicationRecordClass_softClass;
  if (!getLSApplicationRecordClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLSApplicationRecordClass_block_invoke;
    v3[3] = &unk_1E6F45698;
    v3[4] = &v4;
    __getLSApplicationRecordClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1863247F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AXSSetLargeTextUsesExtendedRange(int a1)
{
  v1 = kLargeTextUsesExtendedRange;
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1 != 0];
  v3 = kPreferencesFrameworkDomain;

  CFPreferencesSetAppValue(v1, v2, v3);
}

float _AXSPreferredFontSize(uint64_t a1, uint64_t a2)
{
  if (_AXSPreferredFontSize_onceToken != -1)
  {
    _AXSPreferredFontSize_cold_1();
  }

  return *&_kAXSCachedPreferredFontSize;
}

void _AXSPreferredFontSizeSetSize(float a1)
{
  v1 = a1;
  _kAXSCachedPreferredFontSize = LODWORD(a1);
  _setNumberPreferenceApp(kAXSPreferredFontSizePreference, kCFNumberFloatType, &v1, @"com.apple.accessibility.cache.large.text.change", 0);
}

uint64_t _AXSPhoneLockToEndCallEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSPhoneLockToEndCallEnabled_onceToken != -1)
  {
    _AXSPhoneLockToEndCallEnabled_cold_1();
  }

  return _kAXSCachePhoneLockToEndCall;
}

void _AXSPhoneLockToEndCallSetEnabled(uint64_t a1)
{
  _kAXSCachePhoneLockToEndCall = a1;
  _setPreferenceAppWithNotification(kAXSPhoneLockToEndCallPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.lock.to.end.call");

  _updateAccessibilitySettings(v1);
}

void _AXSSetDefaultRouteForCall(uint64_t a1)
{
  v3 = a1;
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    _AXSSetDefaultRouteForCall_cold_1(a1);
  }

  _setNumberPreferenceApp(kAXSDefaultRouteForCallPreference, kCFNumberIntType, &v3, kAXSDefaultRouteChangedNotification, 0);
  _AXSSetAccessibilityEnabled();
}

float _AXSScreenContrast()
{
  v1 = 1;
  result = _getFloatPreference(kAXSScreenConstrastPreference, 0, &v1);
  if (!v1)
  {
    return 0.0;
  }

  return result;
}

void _AXSSetScreenContrast(float a1)
{
  v1 = a1;
  if (_getFloatPreference(kAXSScreenConstrastPreference, 0, 0) != a1)
  {
    _setNumberPreferenceApp(kAXSScreenConstrastPreference, kCFNumberFloatType, &v1, kAXSScreenContrastChangedNotification, 0);
  }
}

void _AXSEarpieceNoiseCancellationSetEnabled(uint64_t a1)
{
  _kAXSCacheEarpieceNoiseCancellation = a1;
  _setPreferenceAppWithNotification(kAXSEarpieceNoiseCancellationPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.earpiece.noise");

  _updateAccessibilitySettings(v1);
}

void _AXSHearingAidsSetPaired(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_INFO, "Setting hearing aids paired: %d", v4, 8u);
  }

  _kAXSCacheHearingAidPaired = a1;
  _setPreferenceAppWithNotification(kAXSHearingAidPairedPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.hearing.aid.paired");
  _updateAccessibilitySettings(v3);
}

uint64_t _AXSHearingAidRingtoneStreamingEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSHearingAidRingtoneStreamingEnabled_onceToken != -1)
  {
    _AXSHearingAidRingtoneStreamingEnabled_cold_1();
  }

  return _kAXSCacheHearingAidRingtonStreamingEnabled;
}

void _AXSHearingAidRingtoneStreamingSetEnabled(uint64_t a1)
{
  _kAXSCacheHearingAidRingtonStreamingEnabled = a1;
  _setPreferenceAppWithNotification(kAXSHearingAidRingtoneStreamingPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], kAXSHearingAidRingtoneStreamPreferenceChangedNotification);

  _updateAccessibilitySettings(v1);
}

void _AXSMonoAudioSetEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheMonoAudioEnabled = a1;
  _setPreferenceAppWithNotification(kAXSMonoAudioEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.mono.audio");
  _updateAccessibilitySettings(v2);
  v6 = 0;
  BooleanPreference = _getBooleanPreference(kAXSMonoAudioEnabledByiTunesPreference, &v6);
  if (v6)
  {
    v4 = BooleanPreference == v1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    _setPreferenceAppWithNotification(kAXSMonoAudioEnabledByiTunesPreference, 0, 0, 0);
    _updateAccessibilitySettings(v5);
  }
}

uint64_t _AXSAlwaysShowVolumeControlEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSAlwaysShowVolumeControlEnabled_onceToken != -1)
  {
    _AXSAlwaysShowVolumeControlEnabled_cold_1();
  }

  return _kAXSCacheAlwaysShowVolumeControlsEnabled;
}

void _AXSAlwaysShowVolumeControlSetEnabled(uint64_t a1)
{
  _kAXSCacheAlwaysShowVolumeControlsEnabled = a1;
  _setPreferenceAppWithNotification(kAXSAlwaysShowVolumeControlEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.alwaysshowvolume");

  _updateAccessibilitySettings(v1);
}

void _AXSHearingAidComplianceSetEnabled(uint64_t a1)
{
  _kAXSCacheHearingAidComplianceEnabled = a1;
  _setPreferenceAppWithNotification(kAXSHearingAidCompliancePreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.hac.audio");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSHearingDevicePairedEars()
{
  v0 = _copyValuePreferenceApp(kAXSHearingDevicePairedEarsPreference, 0, 0);
  v1 = [v0 unsignedIntegerValue];

  return v1;
}

void _AXSHearingSetDevicePairedEars(uint64_t a1)
{
  v1 = kAXSHearingDevicePairedEarsPreference;
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1];
  v3 = kAXSHearingDevicePairedEarsPreferenceChangedNotification;

  _setPreferenceAppWithNotification(v1, 0, v2, v3);
}

id _AXSHearingDevicePairedUUIDs()
{
  v0 = _copyValuePreferenceApp(kAXSHearingDevicePairedUUIDsPreference, 0, 0);

  return v0;
}

uint64_t _AXSHearingDeviceStreamingEars()
{
  v0 = _copyValuePreferenceApp(kAXSHearingDeviceStreamingEarsPreference, 0, 0);
  v1 = [v0 unsignedIntegerValue];

  return v1;
}

void _AXSHearingSetDeviceStreamingEars(uint64_t a1)
{
  v1 = kAXSHearingDeviceStreamingEarsPreference;
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1];
  v3 = kAXSHearingDeviceStreamingEarsPreferenceChangedNotification;

  _setPreferenceAppWithNotification(v1, 0, v2, v3);
}

uint64_t _AXSSoftwareTTYEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSSoftwareTTYEnabled_onceToken != -1)
  {
    _AXSSoftwareTTYEnabled_cold_1();
  }

  return _kAXSCacheSoftwareTTYEnabled;
}

void _AXSSoftwareTTYSetEnabled(uint64_t a1)
{
  _kAXSCacheSoftwareTTYEnabled = a1;
  _setPreferenceAppWithNotification(kAXSSoftwareTTYPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.softwaretty");

  _updateAccessibilitySettings(v1);
}

id _AXSHearingCCAllOptions(uint64_t a1)
{
  if (_AXSHearingCCAllOptions_registerOnce != -1)
  {
    _AXSHearingCCAllOptions_cold_1();
  }

  v2 = _AXSHearingCCAllOptions_hearingCCOptions;

  return v2;
}

id _AXSHearingCCEnabledOptions()
{
  v3 = 0;
  v0 = _copyValuePreferenceApp(kAXSHearingCCOptionsPreference, 0, &v3);
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void _AXSHearingCCSetEnabledOptions(const void *a1)
{
  if (a1)
  {
    _setPreferenceAppWithNotification(kAXSHearingCCOptionsPreference, 0, a1, kAXSHearingCCOptionsNotification);
  }
}

double _AXSLeftRightAudioBalance()
{
  valuePtr = 0;
  v0 = CFPreferencesCopyValue(kAXSLeftRightBalancePreference, kAXSAccessibilityPreferenceDomain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(v1))
  {
    CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
  }

  CFRelease(v1);
  LODWORD(result) = valuePtr;
  return result;
}

uint64_t _AXSSetLeftRightAudioBalance(float a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  CFPreferencesSetAppValue(kAXSLeftRightBalancePreference, v1, kAXSAccessibilityPreferenceDomain);
  CFRelease(v1);
  return notify_post([kAXSLeftRightBalanceChangedNotification UTF8String]);
}

uint64_t _AXSHomeButtonAssistant(uint64_t a1, uint64_t a2)
{
  if (_AXSHomeButtonAssistant_onceToken != -1)
  {
    _AXSHomeButtonAssistant_cold_1();
  }

  return _kAXSHomeButtonAssistant;
}

void _AXSSetHomeButtonAssistant(uint64_t a1)
{
  _kAXSHomeButtonAssistant = a1;
  v1 = kAXSHomeButtonAssistantPreference;
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];

  _setPreferenceAppWithNotification(v1, 0, v2, @"com.apple.accessibility.cache.homebuttonassistant");
}

uint64_t _AXSSpeechSettingsDisabledByManagedConfiguration()
{
  if (_AXSSpeechSettingsDisabledByManagedConfiguration_onceToken != -1)
  {
    _AXSQuickSpeakEnabled_cold_1();
  }

  return _kAXSCacheSpeechSettingsDisabledByManagedConfiguration;
}

void _AXSSpeechSettingsSetDisabledByManagedConfiguration(uint64_t a1)
{
  _kAXSCacheSpeechSettingsDisabledByManagedConfiguration = a1;
  _setPreferenceAppWithNotification(kAXSSpeechSettingsDisabledByManagedConfigurationPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.speech.settings.disabled.by.mc");

  _updateAccessibilitySettings(v1);
}

void _AXSQuickSpeakSetEnabled(uint64_t a1)
{
  if (!a1)
  {
    _setPreferenceAppWithNotification(kAXSQuickSpeakLocaleForLanguagePreference, 0, 0, kAXSQuickSpeakLocaleForLanguageNotification);
  }

  _kAXSCacheQuickSpeakEnabled = a1;
  _setPreferenceAppWithNotification(kAXSQuickSpeakEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.quick.speak");

  _updateAccessibilitySettings(v2);
}

void _AXSQuickSpeakSetPreferredLocaleForLanguage(const void *a1, const void *a2)
{
  v4 = _copyValuePreferenceApp(kAXSQuickSpeakLocaleForLanguagePreference, 0, 0);
  if (v4)
  {
    v5 = v4;
    Count = CFDictionaryGetCount(v4);
    MutableCopy = CFDictionaryCreateMutableCopy(0, Count, v5);
    CFRelease(v5);
    CFDictionarySetValue(MutableCopy, a2, a1);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(MutableCopy, a2, a1);
  }

  _setPreferenceAppWithNotification(kAXSQuickSpeakLocaleForLanguagePreference, 0, MutableCopy, kAXSQuickSpeakLocaleForLanguageNotification);

  CFRelease(MutableCopy);
}

uint64_t _AXSQuickSpeakHighlightTextEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSQuickSpeakHighlightTextEnabled_onceToken != -1)
  {
    _AXSQuickSpeakHighlightTextEnabled_cold_1();
  }

  return _kAXSCacheQuickSpeakHighlightTextEnabled;
}

void _AXSQuickSpeakSetHighlightTextEnabled(uint64_t a1)
{
  _kAXSCacheQuickSpeakHighlightTextEnabled = a1;
  _setPreferenceAppWithNotification(kAXSQuickSpeakHighlightTextEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.quick.speak.highlight.text");

  _updateAccessibilitySettings(v1);
}

id _AXSAccessibilityEnablers(uint64_t a1)
{
  if (_AXSAccessibilityEnablers_onceToken != -1)
  {
    _AXSAccessibilityEnablers_cold_1();
  }

  v2 = _AXSAccessibilityEnablers_Enablers;

  return v2;
}

uint64_t _AXSSiriSemanticContextEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSSiriSemanticContextEnabled_onceToken != -1)
  {
    ___AXSAccessibilityEnablers_block_invoke_7_cold_1();
  }

  return _kAXSCacheSiriSemanticContextEnabled;
}

uint64_t _AXSZoomSpeakUnderFingerEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSZoomSpeakUnderFingerEnabled_onceToken != -1)
  {
    ___AXSAccessibilityEnablers_block_invoke_17_cold_1();
  }

  return _kAXSCacheZoomSpeakUnderFingerEnabled;
}

uint64_t _AXSSpeakThisEnabledNoCaching()
{
  if (_AXSClarityBoardEnabled_onceToken != -1)
  {
    _AXSApplicationAccessibilityEnabled_cold_2();
  }

  if (_AXSClarityBoardEnabled_isEnabled)
  {
    return 0;
  }

  if (_AXSSpeechSettingsDisabledByManagedConfiguration_onceToken != -1)
  {
    _AXSQuickSpeakEnabled_cold_1();
  }

  if (_kAXSCacheSpeechSettingsDisabledByManagedConfiguration)
  {
    return 0;
  }

  v1 = kAXSSpeakThisEnabledPreference;

  return _getBooleanPreference(v1, 0);
}

void _AXSSetSpeakThisEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheSpeakThisEnabled = a1;
  _setPreferenceAppWithNotification(kAXSSpeakThisEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.speak.this");
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v5 = _AXSCanDisableApplicationAccessibility(v3);
    if (!v5)
    {
      goto LABEL_6;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
LABEL_6:

  _updateAccessibilitySettings(v5);
}

uint64_t _AXSSpeakThisHighlightVisible(uint64_t a1, uint64_t a2)
{
  if (_AXSSpeakThisHighlightVisible_onceToken != -1)
  {
    _AXSSpeakThisHighlightVisible_cold_1();
  }

  return _kAXSCacheSpeakThisHighlightVisible;
}

void _AXSSpeakThisSetHighlightVisible(uint64_t a1)
{
  if (_kAXSWriteableClient)
  {
    goto LABEL_5;
  }

  v2 = AXLogSpeakScreen(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    _AXSSpeakThisSetHighlightVisible_cold_1();
  }

  if (_kAXSWriteableClient)
  {
LABEL_5:
    _kAXSCacheSpeakThisHighlightVisible = a1;
    _setPreferenceAppWithNotification(kAXSSpeakThisHighlightVisiblePreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.speak.this.highlight.visible");
    _updateAccessibilitySettings(v3);
  }
}

void _AXSSetAutomationEnabled(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a1;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Setting automation enabled: %d", v6, 8u);
  }

  _kAXSCacheAutomationEnabled = a1;
  _setPreferenceAppWithNotification(kAXSAutomationEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.automation.enabled");
  _updateAccessibilitySettings(v3);
  if (a1)
  {
    v5 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v4))
    {
      return;
    }

    v5 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v5);
}

void _AXSSetLocalizationCaptionModeEnabled(uint64_t a1)
{
  _kAXSCacheLocalizationCaptionModeEnabled = a1;
  _AXSAutomationLocalizedStringLookupInfoSetEnabled(a1);
  _setPreferenceAppWithNotification(kAXSLocalizationCaptionModeEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.loc.caption.mode.enabled");
  _updateAccessibilitySettings(v2);
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v3))
    {
      return;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
}

void _AXSAutomationLocalizedStringLookupInfoSetEnabled(uint64_t a1)
{
  _kAXSCacheAutomationLocalizedStringLookup = a1;
  _setPreferenceAppWithNotification(kAXSAutomationLocalizedStringLookupInfoEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.automation.localized.lookup");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAutomationHitpointWarpingEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSAutomationHitpointWarpingEnabled_onceToken != -1)
  {
    _AXSAutomationHitpointWarpingEnabled_cold_1();
  }

  return _kAXSCacheAutomationHitpointWarpingEnabled;
}

void _AXSAutomationSetHitpointWarpingEnabled(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSAutomationHitpointWarpingEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.automation.hitpoint_warping.enabled");

  _updateAccessibilitySettings(v1);
}

void _AXSAutomationSetFauxTableViewCellsEnabled(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSAutomationEnableFauxTableViewCellsPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], 0);

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAutomationFauxTableViewCellsEnabled()
{
  v1 = 0;
  LODWORD(result) = _getBooleanPreference(kAXSAutomationEnableFauxTableViewCellsPreference, &v1);
  if (v1)
  {
    return result;
  }

  else
  {
    return 1;
  }
}

void _AXSAutomationSetFauxCollectionViewCellsEnabled(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSAutomationEnableFauxCollectionCellsPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], 0);

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAutomationLocalizedStringLookupInfoEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSAutomationLocalizedStringLookupInfoEnabled_onceToken != -1)
  {
    _AXSAutomationLocalizedStringLookupInfoEnabled_cold_1();
  }

  return _kAXSCacheAutomationLocalizedStringLookup;
}

uint64_t _AXSAutomationPreferredLocalization(uint64_t a1, uint64_t a2)
{
  if (_AXSAutomationPreferredLocalization_onceToken != -1)
  {
    _AXSAutomationPreferredLocalization_cold_1();
  }

  return _AXSAutomationPreferredLocalization_loc;
}

void _AXSSetSiriSemanticContextEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheSiriSemanticContextEnabled = a1;
  _setPreferenceAppWithNotification(kAXSSiriSemanticContextEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.siri.semantic.context.enabled");
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v3))
    {
      return;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
}

uint64_t _AXSContextKitAppIsAllowed()
{
  if (_AXSContextKitAppIsAllowed_DidSetAllowedList == 1)
  {
    return _AXSContextKitAppIsAllowed_IsOnAllowedlist;
  }

  _AXSContextKitAppIsAllowed_DidSetAllowedList = 1;
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v1 bundleIdentifier];

  if (![v2 hasPrefix:@"com.apple"] || (objc_msgSend(v2, "isEqualToString:", @"com.apple.mobilesafari") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.MobileSMS") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.news") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.iBooks") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.mobilemail") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.mobilenotes") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.Pages") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.Keynote") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.Numbers") & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"com.apple.siri.context.companion"))
  {
    _AXSContextKitAppIsAllowed_IsOnAllowedlist = 1;
  }

  IsAllowed = _AXSContextKitAppIsAllowed();
  _AXSContextKitAppIsAllowed_IsOnAllowedlist = IsAllowed;

  return IsAllowed;
}

void _AXSSetAuditInspectionModeEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheAuditInspectionModeModeEnabled = a1;
  _setPreferenceAppWithNotification(kAXSAuditInspectionModeEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.audit.inspection.mode");
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v3))
    {
      return;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
}

void _AXSSetNocturneAccessibilityModeEnabled(uint64_t a1)
{
  _kAXSCacheNocturneAccessibilityModeEnabled = a1;
  _setPreferenceAppWithNotification(kAXSNocturneAccessibilityModeEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.nocturne.enabled");
  _updateAccessibilitySettings(v2);
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v3))
    {
      goto LABEL_6;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
LABEL_6:

  _AXSAutomationLocalizedStringLookupInfoSetEnabled(a1);
}

void _AXSSetClipTracerAccessibilityModeEnabled(uint64_t a1)
{
  _kAXSCacheClipTracerAccessibilityModeEnabled = a1;
  _setPreferenceAppWithNotification(kAXSClipTracerAccessibilityModeEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.clip.tracer.enabled");
  _updateAccessibilitySettings(v2);
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v3))
    {
      goto LABEL_6;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
LABEL_6:

  _AXSAutomationLocalizedStringLookupInfoSetEnabled(a1);
}

void _AXSVisualAlertSetEnabled(uint64_t a1)
{
  _kAXSCacheVisualAlertEnabled = a1;
  _setPreferenceAppWithNotification(kAXSVisualAlertEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.visual.alert");

  _updateAccessibilitySettings(v1);
}

CFComparisonResult _langSort(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"RotorItem");
  v4 = CFDictionaryGetValue(a2, @"RotorItem");

  return CFStringCompare(Value, v4, 1uLL);
}

uint64_t _AXSVoiceOverTouchLanguageRotorItemsExist()
{
  result = _copyValuePreferenceApp(kAXSVoiceOverTouchLanguageRotorPreference, 0, 0);
  if (result)
  {
    CFRelease(result);
    return 1;
  }

  return result;
}

uint64_t AXRetrieveSupportedAccessibilityLanguages(uint64_t a1, uint64_t a2)
{
  if (AXRetrieveSupportedAccessibilityLanguages_registerOnce != -1)
  {
    AXRetrieveSupportedAccessibilityLanguages_cold_1();
  }

  return AXRetrieveSupportedAccessibilityLanguages_Langauges;
}

void __AXRetrieveSupportedAccessibilityLanguages_block_invoke()
{
  v5 = [MEMORY[0x1E695DFA8] set];
  v0 = AXCLanguageToLocales(v5);
  v1 = [v0 allValues];
  [v5 addObjectsFromArray:v1];

  v2 = [v5 allObjects];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_2293];
  v4 = AXRetrieveSupportedAccessibilityLanguages_Langauges;
  AXRetrieveSupportedAccessibilityLanguages_Langauges = v3;
}

CFArrayRef _AXSVoiceOverTouchCopyLanguageRotorItems(int a1)
{
  v2 = 0x1EA8E2000uLL;
  v3 = _copyValuePreferenceApp(kAXSVoiceOverTouchLanguageRotorPreference, 0, 0);
  v4 = *MEMORY[0x1E695E480];
  if (v3)
  {
    v5 = v3;
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v3);
    CFRelease(v5);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  Count = CFArrayGetCount(MutableCopy);
  Mutable = CFSetCreateMutable(v4, Count, MEMORY[0x1E695E9F8]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
      Value = CFDictionaryGetValue(ValueAtIndex, @"RotorItem");
      CFSetAddValue(Mutable, Value);
    }
  }

  if (AXRetrieveSupportedAccessibilityLanguages_registerOnce != -1)
  {
    AXRetrieveSupportedAccessibilityLanguages_cold_1();
  }

  v12 = AXRetrieveSupportedAccessibilityLanguages_Langauges;
  v13 = CFArrayGetCount(AXRetrieveSupportedAccessibilityLanguages_Langauges);
  if (v13 == CFArrayGetCount(MutableCopy) || (v14 = CFArrayGetCount(v12), v14 < 1))
  {
    v21 = 0;
  }

  else
  {
    v15 = v14;
    v24 = a1;
    v16 = 0;
    v17 = 0;
    v18 = *MEMORY[0x1E695E4C0];
    do
    {
      v19 = CFArrayGetValueAtIndex(v12, v16);
      if (!CFSetContainsValue(Mutable, v19))
      {
        v20 = CFDictionaryCreateMutable(v4, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionaryAddValue(v20, @"RotorItem", v19);
        CFDictionaryAddValue(v20, @"Enabled", v18);
        CFArrayAppendValue(MutableCopy, v20);
        CFRelease(v20);
        v17 = 1;
      }

      ++v16;
    }

    while (v15 != v16);
    v21 = v17 != 0;
    v2 = 0x1EA8E2000;
    a1 = v24;
  }

  Copy = CFArrayCreateCopy(v4, MutableCopy);
  CFRelease(Mutable);
  CFRelease(MutableCopy);
  if (a1 && v21)
  {
    _setPreferenceAppWithNotification(*(v2 + 3072), 0, Copy, 0);
  }

  return Copy;
}

uint64_t _AXSVoiceOverTouchEnabledThroughAccessory()
{
  v1 = 0;
  LODWORD(result) = _getBooleanPreference(kAXSVoiceOverTouchEnabledThroughAccessoryPreference, &v1);
  if (v1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void _AXSVoiceOverTouchSetEnabledThroughAccessory(uint64_t a1)
{
  if (a1)
  {
    _AXSVoiceOverTouchSetUsageConfirmed(a1);
  }

  _setPreferenceAppWithNotification(kAXSVoiceOverTouchEnabledThroughAccessoryPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], kAXSVoiceOverTouchEnabledThroughAccessoryNotification);

  _updateAccessibilitySettings(v2);
}

void _AXSVoiceOverTouchSetUsageConfirmed(uint64_t a1)
{
  _kAXSCacheVoiceOverUsageConfirmation = a1;
  _setPreferenceAppWithNotification(kAXSVoiceOverTouchUsageConfirmedPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.vo.usage.confirm");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSVoiceOverTouchActive2DBrailleDisplays(uint64_t a1, uint64_t a2)
{
  if (_AXSVoiceOverTouchActive2DBrailleDisplays_onceToken != -1)
  {
    _AXSVoiceOverTouchActive2DBrailleDisplays_cold_1();
  }

  return _kAXSCacheActive2DBrailleDisplays;
}

uint64_t _AXSVoiceOverTouchUpdateActive2DBrailleDisplays()
{
  if (_kAXSCacheActive2DBrailleDisplays)
  {
    CFRelease(_kAXSCacheActive2DBrailleDisplays);
    _kAXSCacheActive2DBrailleDisplays = 0;
  }

  v5 = 0;
  v0 = _copyValuePreferenceApp(kAXSVoiceOverHasActive2DBrailleDisplayPreference, 0, &v5);
  if (v5)
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || (v2 = v0, v3 = CFGetTypeID(v0), result = CFArrayGetTypeID(), v3 != result))
  {
    result = CFRetain(MEMORY[0x1E695E0F0]);
    v2 = result;
  }

  _kAXSCacheActive2DBrailleDisplays = v2;
  return result;
}

uint64_t _AXSVoiceOverTouchBrailleVirtualStatusAlignment()
{
  v4 = 0;
  v0 = _copyValuePreferenceApp(kAXSVoiceOverTouchBrailleVirtualStatusAlignmentPreference, 0, &v4);
  v1 = v0;
  if (v4)
  {
    v2 = [v0 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _AXSVoiceOverTouchBrailleMasterStatusCellIndex()
{
  CFPreferencesAppSynchronize(kAXSAccessibilityPreferenceDomain);
  v3 = 0;
  v0 = _copyValuePreferenceApp(kAXSVoiceOverTouchBrailleMasterStatusCellIndexPreference, 0, &v3);
  v1 = [v0 integerValue];

  return v1;
}

void _AXSVoiceOverTouchSetUIEnabled(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSVoiceOverTouchUIEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], 0);

  _updateAccessibilitySettings(v1);
}

void _AXSVoiceOverTouchSetShouldRouteToSpeakerWithProximity(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSVoiceOverTouchShouldRouteToSpeakerWithProximityPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], 0);

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSVoiceOverTouchSpeakTimeOnWake(uint64_t a1, uint64_t a2)
{
  if (_AXSVoiceOverTouchSpeakTimeOnWake_onceToken != -1)
  {
    _AXSVoiceOverTouchSpeakTimeOnWake_cold_1();
  }

  return _kAXSCacheVoiceOverSpeakTimeOnWake;
}

void _AXSVoiceOverTouchSetSpeakTimeOnWake(uint64_t a1)
{
  _kAXSCacheVoiceOverSpeakTimeOnWake = a1;
  _setPreferenceAppWithNotification(kAXSVoiceOverTouchSpeakTimeOnWakePreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.AXSCacheVoiceOverSpeakTimeOnWakeNotification");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSWalkieTalkieTapToTalkEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSWalkieTalkieTapToTalkEnabled_onceToken != -1)
  {
    _AXSWalkieTalkieTapToTalkEnabled_cold_1();
  }

  return _kAXSCacheWalkieTalkieTapToTalk;
}

void _AXSWalkieTalkieSetTapToTalkEnabled(uint64_t a1)
{
  _kAXSCacheWalkieTalkieTapToTalk = a1;
  _setPreferenceAppWithNotification(kAXSWalkieTalkieTapToTalkPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.AXSCacheWalkieTalkieTapToTalkNotification");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAppSwitcherAutoSelectEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSAppSwitcherAutoSelectEnabled_onceToken != -1)
  {
    _AXSAppSwitcherAutoSelectEnabled_cold_1();
  }

  return _kAXSCacheAppSwitcherAutoSelect;
}

void _AXSAppSwitcherSetAutoSelectEnabled(uint64_t a1)
{
  _kAXSCacheAppSwitcherAutoSelect = a1;
  _setPreferenceAppWithNotification(kAXSAppSwitcherAutoSelectPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.AXSCacheAppSwitcherAutoSelectNotification");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSCharacterVoiceDefaultSupportedLanguages(uint64_t a1, uint64_t a2)
{
  if (_AXSCharacterVoiceDefaultSupportedLanguages_onceToken != -1)
  {
    _AXSCharacterVoiceDefaultSupportedLanguages_cold_1();
  }

  return _AXSCharacterVoiceDefaultSupportedLanguages_supportedLanguages;
}

uint64_t _AXSCharacterVoiceSupportedForLocale(uint64_t result)
{
  if (result)
  {
    v1 = MEMORY[0x1866047C0]();

    return _AXSCharacterVoiceSupportedForLocaleIdentifier(v1, v2);
  }

  return result;
}

uint64_t _AXSCharacterVoiceSupportedForLocaleIdentifier(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (_AXSCharacterVoiceDefaultSupportedLanguages_onceToken != -1)
  {
    _AXSCharacterVoiceDefaultSupportedLanguages_cold_1();
  }

  v3 = _AXSCharacterVoiceDefaultSupportedLanguages_supportedLanguages;
  v21.length = CFArrayGetCount(_AXSCharacterVoiceDefaultSupportedLanguages_supportedLanguages);
  v21.location = 0;
  if (CFArrayContainsValue(v3, v21, a1))
  {
    return 1;
  }

  v5 = [a1 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v6 = [v5 lowercaseString];

  if ([v6 isEqualToString:@"ca-es"] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"ca"))
  {
    v7 = @"es-ES";
  }

  else
  {
    if (![v6 hasPrefix:@"nb"])
    {
      goto LABEL_10;
    }

    v7 = @"no-NO";
  }

  v6 = v7;
LABEL_10:
  if (([(__CFArray *)v3 containsObject:v6]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v8 = [v6 rangeOfString:@"-"];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v6;
    }

    else
    {
      v9 = [v6 substringToIndex:v8 + 1];
    }

    v10 = v9;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = v3;
    v4 = [(__CFArray *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v12 = *v16;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v15 + 1) + 8 * i) hasPrefix:{v10, v15}])
          {
            v4 = 1;
            goto LABEL_27;
          }
        }

        v4 = [(__CFArray *)v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:
  }

  return v4;
}

void _AXSVoiceOverTouchSetEnabledAppTemporaryOverride(uint64_t a1)
{
  VoiceOverTemporaryOverride = a1;
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"com.apple.accessibility.cache.vot", 0, 0, 1u);
}

void _AXSVoiceOverTouchSetEnabled(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = AXSupportLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = a1;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_INFO, "Requesting VoiceOver enabled: %d", v10, 8u);
  }

  _kAXSCacheVoiceOverTouchEnabled = a1;
  _setPreferenceAppWithNotification(kAXSVoiceOverTouchEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.vot");
  _updateAccessibilitySettings(v3);
  LOBYTE(v10[0]) = 0;
  BooleanPreference = _getBooleanPreference(kAXSVoiceOverTouchEnabledByiTunesPreference, v10);
  if (LOBYTE(v10[0]) && BooleanPreference != a1)
  {
    _setPreferenceAppWithNotification(kAXSVoiceOverTouchEnabledByiTunesPreference, 0, 0, 0);
    _updateAccessibilitySettings(v5);
  }

  if (a1)
  {
    if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
    {
      __AXBeginListeningToUserDefaultsChanges_block_invoke_cold_1();
    }

    if (_kAXSCacheSwitchControlEnabled)
    {
      _AXSAssistiveTouchScannerSetEnabled(0);
    }

    _kickstartProcess("com.apple.VoiceOverTouch");
    v6 = 1;
  }

  else
  {
    _setPreferenceAppWithNotification(kAXSBrailleInputDeviceConnectedPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:0], @"com.apple.accessibility.cache.braille.input.connection.changed");
    _updateAccessibilitySettings(v7);
    v9 = _AXSCanDisableApplicationAccessibility(v8);
    v6 = 0;
    if (!v9)
    {
      return;
    }
  }

  _AXSApplicationAccessibilitySetEnabled(v6);
}

void _AXSVoiceOverTouchSetEnabledAndAutoConfirmUsage(uint64_t a1)
{
  if (a1)
  {
    _AXSApplicationAccessibilitySetEnabled(1);
    _AXSVoiceOverTouchSetUsageConfirmed(1);
  }

  _AXSVoiceOverTouchSetEnabled(a1);
}

uint64_t _AXSVoiceOverTouchUsageConfirmed(uint64_t a1, uint64_t a2)
{
  if (_AXSVoiceOverTouchUsageConfirmed_onceToken != -1)
  {
    _AXSVoiceOverTouchUsageConfirmed_cold_1();
  }

  return _kAXSCacheVoiceOverUsageConfirmation;
}

uint64_t _AXSVoiceOverTouchUserHasReadNoHomeButtonGestureDescription(uint64_t a1, uint64_t a2)
{
  if (_AXSVoiceOverTouchUserHasReadNoHomeButtonGestureDescription_onceToken != -1)
  {
    _AXSVoiceOverTouchUserHasReadNoHomeButtonGestureDescription_cold_1();
  }

  return _kAXSCacheVOTUserHasReadNoHomeButtonGesture;
}

void _AXSVoiceOverTouchSetUserHasReadNoHomeButtonGestureDescription(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSVoiceOverTouchUserHasReadNoHomeButtonGesturePreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.vo.user.has.read.no.home.button.gesture");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSVoiceOverTouchScreenCurtainEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSVoiceOverTouchScreenCurtainEnabled_onceToken != -1)
  {
    _AXSVoiceOverTouchScreenCurtainEnabled_cold_1();
  }

  return _kAXSCacheVoiceOverScreenCurtain;
}

void _AXSVoiceOverTouchSetScreenCurtainEnabled(uint64_t a1)
{
  _kAXSCacheVoiceOverScreenCurtain = a1;
  _setPreferenceAppWithNotification(kAXSVoiceOverTouchScreenCurtainPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.vo.screen.curtain");

  _updateAccessibilitySettings(v1);
}

float _AXSVoiceOverTouchVolume(uint64_t a1, uint64_t a2)
{
  if (_AXSVoiceOverTouchVolume_onceToken != -1)
  {
    _AXSVoiceOverTouchVolume_cold_1();
  }

  return *&_kAXSCachedVoiceOverVolume;
}

void _AXSVoiceOverTouchSetVolume(float a1)
{
  v1 = fminf(fmaxf(a1, 0.01), 1.0);
  _kAXSCachedVoiceOverVolume = LODWORD(v1);
  _setNumberPreferenceApp(kAXSVoiceOverTouchVolumePreference, kCFNumberFloatType, &v1, @"com.apple.accessibility.cache.vot.volume", 0);
}

float _AXSVoiceOverTouchSpeakingRate()
{
  v0 = [NSClassFromString(&cfstr_Axsettings.isa) valueForKey:@"sharedInstance"];
  v1 = [v0 valueForKey:@"voiceOverSpeakingRate"];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

void _AXSVoiceOverTouchSetSpeakingRate()
{
  v0 = AXLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    _AXSVoiceOverTouchSetSpeakingRate_cold_1();
  }
}

void _AXSVoiceOverTouchSetLanguageRotorItems(const void *a1)
{
  if (a1)
  {
    _setPreferenceAppWithNotification(kAXSVoiceOverTouchLanguageRotorPreference, 0, a1, kAXSVoiceOverTouchLanguageRotorChangedNotification);
  }
}

void _AXSVoiceOverTouchSetBrailleLanguageRotorItems(const void *a1)
{
  if (a1)
  {
    _setPreferenceAppWithNotification(kAXSVoiceOverTouchBrailleLanguageRotorPreference, 0, a1, kAXSVoiceOverTouchBrailleLanguageRotorChangedNotification);
  }
}

void _AXSVoiceOverTouchSetBrailleUIMainMenuItems(const void *a1)
{
  if (a1)
  {
    _setPreferenceAppWithNotification(kAXSVoiceOverTouchBrailleUIMainMenuItemsPreference, 0, a1, kAXSVoiceOverTouchBrailleUIMainMenuItemsChangedNotification);
  }
}

CFIndex _AXSVoiceOverTouchBrailleContractionMode()
{
  CFPreferencesAppSynchronize(kAXSAccessibilityPreferenceDomain);
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(kAXSVoiceOverTouchBrailleContractionModePreference, kAXSAccessibilityPreferenceDomain, &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 1;
  }

  return result;
}

uint64_t _AXSVoiceOverTouchBrailleEightDotMode()
{
  v1 = 1;
  LODWORD(result) = _getBooleanPreference(kAXSVoiceOverTouchBrailleEightDotModePreference, &v1);
  if (v1)
  {
    return result;
  }

  else
  {
    return 1;
  }
}

void _AXSVoiceOverTouchSetBrailleEightDotMode(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSVoiceOverTouchBrailleEightDotModePreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], kAXSVoiceOverTouchBrailleEightDotModeChangedNotification);

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSVoiceOverTouchBrailleDisplayDisconnectOnSleep()
{
  v1 = 1;
  LODWORD(result) = _getBooleanPreference(kAXSVoiceOverTouchBrailleDisplayDisconnectOnSleepPreference, &v1);
  if (v1)
  {
    return result;
  }

  else
  {
    return 1;
  }
}

void _AXSVoiceOverTouchSetBrailleDisplayDisconnectOnSleep(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSVoiceOverTouchBrailleDisplayDisconnectOnSleepPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], kAXSVoiceOverTouchBrailleBrailleDisplayDisconnectOnSleepChangedNotification);

  _updateAccessibilitySettings(v1);
}

void _AXSVoiceOverTouchSetTypingMode(uint64_t a1)
{
  v1 = kAXSVoiceOverTouchTypingModePreference;
  v2 = [MEMORY[0x1E696AD98] numberWithLong:a1];
  v3 = [(__CFString *)v1 stringByAppendingString:@".notification"];

  _setPreferenceAppWithNotification(v1, 0, v2, v3);
}

uint64_t _AXSVoiceOverTouchTypingMode()
{
  v0 = _copyPrefValueWithCustomCallback(kAXSVoiceOverTouchTypingModePreference, _handleVoiceOverTypingModeChangedNotification);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = [v0 integerValue];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void _AXSSetWebAccessibilityEventsEnabled(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSWebAccessibilityEventsEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.web.accessibility.events.enabled");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSVoiceOverMediaDuckingMode(uint64_t a1, uint64_t a2)
{
  if (_AXSVoiceOverMediaDuckingMode_onceToken != -1)
  {
    _AXSVoiceOverMediaDuckingMode_cold_1();
  }

  return _kAXSCachedVoiceOverMediaDuckingMode;
}

void _AXSVoiceOverMediaDuckingSetMode(uint64_t a1)
{
  v1 = a1;
  _kAXSCachedVoiceOverMediaDuckingMode = a1;
  _setNumberPreferenceApp(kAXSVoiceOverTouchMediaDuckingModePreference, kCFNumberIntType, &v1, @"com.apple.accessibility.cache.vot.media.ducking.mode", 0);
}

uint64_t _AXSVoiceOverTouchTutorialUsageConfirmed(uint64_t a1, uint64_t a2)
{
  if (_AXSVoiceOverTouchTutorialUsageConfirmed_onceToken != -1)
  {
    _AXSVoiceOverTouchTutorialUsageConfirmed_cold_1();
  }

  return _kAXSCacheVoiceOverTutorialUsageConfirmation;
}

void _AXSVoiceOverTouchSetTutorialUsageConfirmed(uint64_t a1)
{
  _kAXSCacheVoiceOverTutorialUsageConfirmation = a1;
  _setPreferenceAppWithNotification(kAXSVoiceOverTouchTutorialUsageConfirmedPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.vo.usage.tutorial.confirm");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSBrailleScreenInputEnabled()
{
  result = _AXSVoiceOverTouchEnabled();
  if (result)
  {
    if (_AXSBrailleScreenInputEnabled_onceToken != -1)
    {
      _AXSBrailleScreenInputEnabled_cold_1();
    }

    return _kAXSCacheBrailleScreenInputEnabled;
  }

  return result;
}

uint64_t _AXSBrailleScreenInputSetEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheBrailleScreenInputEnabled = a1;
  _setPreferenceAppWithNotification(kAXSBrailleScreenInputEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.bsi");
  _updateAccessibilitySettings(v2);
  LODWORD(result) = _AXSBrailleScreenInputSetEnabled_token;
  if (_AXSBrailleScreenInputSetEnabled_token != -1 || (notify_register_check("com.apple.accessibility.bsi.8.dot.mode", &_AXSBrailleScreenInputSetEnabled_token), result = _AXSBrailleScreenInputSetEnabled_token, _AXSBrailleScreenInputSetEnabled_token != -1))
  {
    notify_set_state(result, v1);

    return notify_post("com.apple.accessibility.bsi.8.dot.mode");
  }

  return result;
}

void _AXSHoverTextSetEnabled(uint64_t a1)
{
  _kAXSCacheHoverTextEnabled = a1;
  _setPreferenceAppWithNotification(kAXSHoverTextEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.hovertext");

  _updateAccessibilitySettings(v1);
}

void _AXSHoverTextTypingSetEnabled(uint64_t a1)
{
  _kAXSCacheHoverTextTypingEnabled = a1;
  _setPreferenceAppWithNotification(kAXSHoverTextTypingEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.hovertext.typing");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSHoverTextTypingDisplayMode(uint64_t a1, uint64_t a2)
{
  if (_AXSHoverTextTypingDisplayMode_onceToken != -1)
  {
    _AXSHoverTextTypingDisplayMode_cold_1();
  }

  return _kAXSCacheHoverTextTypingDisplayMode;
}

void _AXSHoverTextTypingSetDisplayMode(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheHoverTextTypingDisplayMode = a1;
  _setNumberPreferenceApp(kAXSHoverTextTypingDisplayModePreference, kCFNumberIntType, &v1, @"com.apple.accessibility.cache.hovertext.typing.displaymode.change", 0);
}

void *_AXSHoverTextTypingCopyFontName()
{
  result = _copyValuePreferenceApp(kAXSHoverTextTypingFontNamePreference, 0, 0);
  if (!result)
  {
    v1 = kAXSHoverTextFontNamePreference;

    return _copyValuePreferenceApp(v1, 0, 0);
  }

  return result;
}

void *_AXSHoverTextTypingCopyTextColorData()
{
  result = _copyValuePreferenceApp(kAXSHoverTextTypingTextColorDataPreference, 0, 0);
  if (!result)
  {
    v1 = kAXSHoverTextTextColorDataPreference;

    return _copyValuePreferenceApp(v1, 0, 0);
  }

  return result;
}

void *_AXSHoverTextTypingCopyBackgroundColorData()
{
  result = _copyValuePreferenceApp(kAXSHoverTextTypingBackgroundColorDataPreference, 0, 0);
  if (!result)
  {
    v1 = kAXSHoverTextBackgroundColorDataPreference;

    return _copyValuePreferenceApp(v1, 0, 0);
  }

  return result;
}

void *_AXSHoverTextTypingCopyBorderColorData()
{
  result = _copyValuePreferenceApp(kAXSHoverTextTypingBorderColorDataPreference, 0, 0);
  if (!result)
  {
    v1 = kAXSHoverTextBorderColorDataPreference;

    return _copyValuePreferenceApp(v1, 0, 0);
  }

  return result;
}

float _AXSHoverTextFontSize(uint64_t a1, uint64_t a2)
{
  if (_AXSHoverTextFontSize_onceToken != -1)
  {
    _AXSHoverTextFontSize_cold_1();
  }

  return *&_kAXSCachedHoverTextFontSize;
}

void _AXSHoverTextSetFontSize(float a1)
{
  v1 = a1;
  _kAXSCachedHoverTextFontSize = LODWORD(a1);
  _setNumberPreferenceApp(kAXSHoverTextFontSizePreference, kCFNumberFloatType, &v1, @"com.apple.accessibility.cache.hovertext.fontsize.change", 0);
}

float _AXSHoverTextBackgroundOpacity(uint64_t a1, uint64_t a2)
{
  if (_AXSHoverTextBackgroundOpacity_onceToken != -1)
  {
    _AXSHoverTextBackgroundOpacity_cold_1();
  }

  return *&_kAXSCachedHoverTextBackgroundOpacity;
}

float _AXSHoverTextSetBackgroundOpacity(float a1)
{
  v1 = a1;
  if (v1 < 0.35)
  {
    v1 = 0.35;
  }

  *&v2 = fmin(v1, 1.0);
  v4 = v2;
  _kAXSCachedHoverTextBackgroundOpacity = v2;
  _setNumberPreferenceApp(kAXSHoverTextBackgroundOpacityPreference, kCFNumberFloatType, &v4, @"com.apple.accessibility.cache.hovertext.backgroundopacity.change", 0);
  return result;
}

uint64_t _AXSHoverTextDisplayMode(uint64_t a1, uint64_t a2)
{
  if (_AXSHoverTextDisplayMode_onceToken != -1)
  {
    _AXSHoverTextDisplayMode_cold_1();
  }

  return _kAXSCachedHoverTextDisplayMode;
}

void _AXSHoverTextSetDisplayMode(uint64_t a1)
{
  v1 = a1;
  _kAXSCachedHoverTextDisplayMode = a1;
  _setNumberPreferenceApp(kAXSHoverTextDisplayModePreference, kCFNumberIntType, &v1, @"com.apple.accessibility.cache.hovertext.displaymode.change", 0);
}

uint64_t _AXSLiveSpeechEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSLiveSpeechEnabled_onceToken != -1)
  {
    _AXSLiveSpeechEnabled_cold_1();
  }

  return _kAXSCacheLiveSpeechEnabled;
}

void _AXSLiveSpeechSetEnabled(uint64_t a1)
{
  _kAXSCacheLiveSpeechEnabled = a1;
  _setPreferenceAppWithNotification(kAXSLiveSpeechEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.livespeech");

  _updateAccessibilitySettings(v1);
}

void _AXSZoomTouchSetToggledByVoiceOver(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSZoomTouchToggledByVoiceOverPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], 0);

  _updateAccessibilitySettings(v1);
}

void _AXSZoomTouchSetToggledByPreferenceSwitch(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSZoomTouchToggledByPreferenceSwitchPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], 0);

  _updateAccessibilitySettings(v1);
}

void _AXSZoomSpeakUnderFingerSetEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheZoomSpeakUnderFingerEnabled = a1;
  _setPreferenceAppWithNotification(kAXSZoomSpeakUnderFingerEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.zoom.speakunderfinger");
  _updateAccessibilitySettings(v2);
  if (_AXSZoomTouchEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_1();
  }

  if (_kAXSCacheZoomTouchEnabled)
  {
    if (v1)
    {
      v4 = 1;
    }

    else
    {
      if (!_AXSCanDisableApplicationAccessibility(v3))
      {
        return;
      }

      v4 = 0;
    }

    _AXSApplicationAccessibilitySetEnabled(v4);
  }
}

uint64_t _AXSZoomTouchSmoothScalingDisabled(uint64_t a1, uint64_t a2)
{
  if (_AXSZoomTouchSmoothScalingDisabled_onceToken != -1)
  {
    _AXSZoomTouchSmoothScalingDisabled_cold_1();
  }

  return _kAXSCacheZoomTouchSmoothScalingDisabled;
}

void _AXSZoomTouchSetSmoothScalingDisabled(uint64_t a1)
{
  _kAXSCacheZoomTouchSmoothScalingDisabled = a1;
  _setPreferenceAppWithNotification(kAXSZoomTouchSmoothScalingPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.zoom.smoothscaling");

  _updateAccessibilitySettings(v1);
}

void _AXSZoomTouchSetEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheZoomTouchEnabled = a1;
  _setPreferenceAppWithNotification(kAXSZoomTouchEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.zoom");
  _updateAccessibilitySettings(v2);
  v7 = 0;
  BooleanPreference = _getBooleanPreference(kAXSZoomTouchEnabledByiTunesPreference, &v7);
  if (v7)
  {
    v4 = BooleanPreference == v1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    _setPreferenceAppWithNotification(kAXSZoomTouchEnabledByiTunesPreference, 0, 0, 0);
    _updateAccessibilitySettings(v5);
  }

  if (_AXSZoomSpeakUnderFingerEnabled_onceToken != -1)
  {
    _AXSZoomTouchSetEnabled_cold_1();
  }

  if (_kAXSCacheZoomSpeakUnderFingerEnabled)
  {
    if (v1)
    {
      v6 = 1;
    }

    else
    {
      if (!_AXSCanDisableApplicationAccessibility(BooleanPreference))
      {
        return;
      }

      v6 = 0;
    }

    _AXSApplicationAccessibilitySetEnabled(v6);
  }
}

uint64_t _AXSZoomTouchReadyForObservers(uint64_t a1, uint64_t a2)
{
  if (_AXSZoomTouchReadyForObservers_onceToken != -1)
  {
    _AXSZoomTouchReadyForObservers_cold_1();
  }

  return _kAXSCacheZoomTouchReadyForObservers;
}

void _AXSZoomTouchSetReadyForObservers(uint64_t a1)
{
  _kAXSCacheZoomTouchReadyForObservers = a1;
  _setPreferenceAppWithNotification(kAXSZoomTouchReadyForObserversPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.zoom.readyForObservers");

  _updateAccessibilitySettings(v1);
}

void _AXSSetEnhanceTextLegibilityEnabledApp(uint64_t a1, __CFString *a2)
{
  v3 = a1;
  v4 = a1;
  _subscribeOnCacheNotificationsIfNeeded(kAXSEnhanceTextLegibilityPreference, a1, _AXSEnhanceTextLegibilityEnabled);
  _updateCachePreferenceAfterChange(kAXSEnhanceTextLegibilityPreference, a2, _kAXSCacheEnhanceTextLegibility, v3);
  _setNumberPreferenceApp(kAXSEnhanceTextLegibilityPreference, kCFNumberIntType, &v4, @"com.apple.accessibility.cache.enhance.text.legibility", a2);
}

void _AXSSetCarPlayEnhanceTextLegibilityEnabled(uint64_t a1)
{
  _kAXSCacheCarPlayEnhanceTextLegibility = a1;
  _setPreferenceAppWithNotification(@"CarPlayEnhancedTextLegibilityEnabled", 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.carplay.enhance.text.legibility");

  _updateAccessibilitySettings(v1);
}

void _AXSSetEnhanceTextTrackingEnabled(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSEnhanceTextTrackingPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], 0);

  _updateAccessibilitySettings(v1);
}

void _AXSSetEnhanceBackgroundContrastEnabledApp(uint64_t a1, __CFString *a2)
{
  v3 = a1;
  v4 = a1;
  _subscribeOnCacheNotificationsIfNeeded(kAXSEnhanceBackgroundContrastPreference, a1, _AXSEnhanceBackgroundContrastEnabled);
  _updateCachePreferenceAfterChange(kAXSEnhanceBackgroundContrastPreference, a2, _kAXSCacheEnhanceBackgroundContrast, v3);
  _setNumberPreferenceApp(kAXSEnhanceBackgroundContrastPreference, kCFNumberIntType, &v4, @"com.apple.accessibility.cache.enhance.background.contrast", a2);
}

void _AXSSetDifferentiateWithoutColorEnabledApp(uint64_t a1, __CFString *a2)
{
  v3 = a1;
  v4 = a1;
  _subscribeOnCacheNotificationsIfNeeded(kAXSDifferentiateWithoutColorPreference, a1, _AXSDifferentiateWithoutColorEnabled);
  _updateCachePreferenceAfterChange(kAXSDifferentiateWithoutColorPreference, a2, _kAXSCacheDifferentiateWithoutColor, v3);
  _setNumberPreferenceApp(kAXSDifferentiateWithoutColorPreference, kCFNumberIntType, &v4, @"com.apple.accessibility.cache.differentiate.without.color", a2);
}

void _AXSSetReduceMotionEnabled(int a1)
{
  _AXSSetReduceMotionEnabledApp(a1 != 0, 0);
  v4 = 0;
  v2 = _copyValuePreferenceApp(kAXSPointerAllowAppCustomizationEnabledPreference, 0, &v4);
  if (!v4)
  {
    _AXSPointerAllowAppCustomizationSetEnabled(a1 == 0);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v4 = 0;
  v3 = _copyValuePreferenceApp(kAXSPointerInertiaEnabledPreference, 0, &v4);
  if (!v4)
  {
    _AXSPointerEffectScalingSetEnabled(a1 == 0);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void _AXSSetReduceMotionEnabledApp(uint64_t a1, __CFString *a2)
{
  v3 = a1;
  v4 = a1;
  _subscribeOnCacheNotificationsIfNeeded(kAXSReduceMotionPreference, a1, _AXSReduceMotionEnabled);
  _updateCachePreferenceAfterChange(kAXSReduceMotionPreference, a2, _kAXSCacheReduceMotion, v3);
  _setNumberPreferenceApp(kAXSReduceMotionPreference, kCFNumberIntType, &v4, @"com.apple.accessibility.cache.reduce.motion", a2);
}

void _AXSPointerAllowAppCustomizationSetEnabled(uint64_t a1)
{
  _kAXSCachePointerAllowAppCustomizationEnabled = a1;
  _setPreferenceAppWithNotification(kAXSPointerAllowAppCustomizationEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.pointer.allow.app.customization");

  _updateAccessibilitySettings(v1);
}

void _AXSPointerEffectScalingSetEnabled(uint64_t a1)
{
  _kAXSCachePointerEffectScalingEnabled = a1;
  _setPreferenceAppWithNotification(kAXSPointerEffectScalingEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.pointer.effect.scaling");

  _updateAccessibilitySettings(v1);
}

void _AXSSetReduceMotionAutoplayAnimatedImagesEnabled(uint64_t a1)
{
  _kAXSCacheReduceMotionAutoplayAnimatedImagesEnabled = a1;
  _setPreferenceAppWithNotification(kAXSReduceMotionAutoplayAnimatedImagesPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.reduce.motion.autoplay.animated.images");

  _updateAccessibilitySettings(v1);
}

void _AXSSetReduceMotionReduceSlideTransitionsEnabledApp(uint64_t a1, __CFString *a2)
{
  v3 = a1;
  v4 = a1;
  _subscribeOnCacheNotificationsIfNeeded(kAXSReduceMotionReduceSlideTransitionsPreference, a1, _AXSReduceMotionReduceSlideTransitionsEnabled);
  _updateCachePreferenceAfterChange(kAXSReduceMotionReduceSlideTransitionsPreference, a2, _kAXSCacheReduceMotionReduceSlideTransitions, v3);
  _setNumberPreferenceApp(kAXSReduceMotionReduceSlideTransitionsPreference, kCFNumberIntType, &v4, @"com.apple.accessibility.cache.reduce.motion.reduce.slide.transitions", a2);
}

uint64_t _AXSReduceMotionAutoplayMessagesEffectsEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSReduceMotionAutoplayMessagesEffectsEnabled_onceToken != -1)
  {
    _AXSReduceMotionAutoplayMessagesEffectsEnabled_cold_1();
  }

  return _kAXSCacheReduceMotionAutoplayMessagesEffectsEnabled;
}

void _AXSSetReduceMotionAutoplayMessagesEffectsEnabled(uint64_t a1)
{
  _kAXSCacheReduceMotionAutoplayMessagesEffectsEnabled = a1;
  _setPreferenceAppWithNotification(kAXSReduceMotionAutoplayMessagesEffectsPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.reduce.motion.autoplay.messages.effects");

  _updateAccessibilitySettings(v1);
}

BOOL _AXSReduceMotionAutoplayVideoPreviewsEnabledValueFromValueRespectingVoiceOverDefault(int a1)
{
  if (_AXSVoiceOverTouchEnabled())
  {
    return a1 == 1;
  }

  else
  {
    return a1 != 0;
  }
}

BOOL _AXSReduceMotionAutoplayVideoPreviewsEnabledGlobal()
{
  v0 = AXSGetPreferenceValue(kAXSReduceMotionAutoplayVideoPreviewsPreference, 0);
  if (_AXSVoiceOverTouchEnabled())
  {
    return v0 == 1;
  }

  else
  {
    return v0 != 0;
  }
}

void _AXSSetReduceMotionAutoplayVideoPreviewsEnabledApp(uint64_t a1, __CFString *a2)
{
  v3 = a1;
  v4 = a1;
  _subscribeOnCacheNotificationsIfNeeded(kAXSReduceMotionAutoplayVideoPreviewsPreference, a1, _AXSReduceMotionAutoplayVideoPreviewsEnabled);
  _updateCachePreferenceAfterChange(kAXSReduceMotionAutoplayVideoPreviewsPreference, a2, &_kAXSCacheReduceMotionAutoplayVideoPreviews, v3);
  _setNumberPreferenceApp(kAXSReduceMotionAutoplayVideoPreviewsPreference, kCFNumberIntType, &v4, @"com.apple.accessibility.cache.reduce.motion.autoplay.video.previews", a2);
}

void *_AXSUpdateWebAccessibilitySettings()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = AXLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_186307000, v0, OS_LOG_TYPE_DEFAULT, "Updating web accessibility settings", buf, 2u);
  }

  _updateBoolCachePreferenceAndRepostNotification(kAXSAccessibilityEnabledPreference, @"com.apple.accessibility.cache.ax", &_kAXSCacheAccessibilityEnabled);
  _updateBoolCachePreferenceAndRepostNotification(kAXSApplicationAccessibilityEnabledPreference, @"com.apple.accessibility.cache.app.ax", &_kAXSCacheApplicationAccessibilityEnabled);
  _updateCachePreferenceAndRepostNotification(kAXSIncreaseButtonLegibilityPreference, kAXSIncreaseButtonLegibilityNotification, 0, _kAXSCacheIncreaseButtonLegibility);
  _updateCachePreferenceAndRepostNotification(kAXSReduceMotionPreference, kAXSReduceMotionChangedNotification, 0, _kAXSCacheReduceMotion);
  _updateCachePreferenceAndRepostNotification(kAXSEnhanceTextLegibilityPreference, kAXSEnhanceTextLegibilityChangedNotification, 0, _kAXSCacheEnhanceTextLegibility);
  _updateCachePreferenceAndRepostNotification(kAXSDarkenSystemColorsEnabledPreference, kAXSDarkenSystemColorsEnabledNotification, 0, &_kAXSCacheDarkenSystemColors);
  v9 = -1;
  _updateCachePreferenceAndRepostNotification(@"AXSAirPodsSpatialAudioLockToDevice", kAXSAirPodSpatialAudioLockToDeviceChangedNotification, 0, &v9);
  _kAXSCacheAirPodsSpatialAudioLockToDeviceEnabled = v9 == 1;
  v1 = AXLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:_kAXSCacheAccessibilityEnabled];
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:_kAXSCacheApplicationAccessibilityEnabled];
    *buf = 138412546;
    *&buf[4] = v2;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_186307000, v1, OS_LOG_TYPE_DEFAULT, "New accessibility: %@, app ax: %@", buf, 0x16u);
  }

  v8 = 0;
  v4 = _copyValuePreferenceApp(@"AXSSpatialAudioHeadTracking", 0, &v8);
  v5 = v4;
  if (v8 && v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v5, kCFNumberCFIndexType, buf);
      _kAXSCacheSpatialAudioHeadTracking = *buf;
    }

    goto LABEL_10;
  }

  if (v4)
  {
LABEL_10:
    CFRelease(v5);
  }

  _updateCacheSmartInvertAndRepostNotification(0);
  result = _getBooleanPreference(kAXSGrayscaleEnabledPreference, 0);
  _kAXSCacheGrayscaleEnabled = result;
  return result;
}

void _updateBoolCachePreferenceAndRepostNotification(__CFString *a1, const __CFString *a2, BOOL *a3)
{
  CachePreference = _fetchCachePreference(a1, 0, 0, 0);
  *a3 = CachePreference == 1;
  v7 = AXSupportLogCommon(CachePreference);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    _updateBoolCachePreferenceAndRepostNotification_cold_1(a1, a3, v7);
  }

  postNotification(a2);
}

void _updateCachePreferenceAndRepostNotification(__CFString *a1, const __CFString *a2, __CFString *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  CachePreference = _fetchCachePreference(a1, a3, 0, 0);
  *a4 = CachePreference;
  v9 = AXSupportLogCommon(CachePreference);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *a4;
    if (v10 == -1)
    {
      v11 = @"Empty";
    }

    else
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    }

    v12 = 138412802;
    v13 = a3;
    v14 = 2112;
    v15 = a1;
    v16 = 2112;
    v17 = v11;
    _os_log_debug_impl(&dword_186307000, v9, OS_LOG_TYPE_DEBUG, "Update Cache Value On Notification: appID = %@, preference = %@, result = %@", &v12, 0x20u);
    if (v10 != -1)
    {
    }
  }

  postNotification(a2);
}

void _updateCacheSmartInvertAndRepostNotification(const __CFString *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  valuePtr = -1;
  NumberPreference = _getNumberPreference(kAXSInvertColorsEnabledPreference, a1);
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = NumberPreference;
    _os_log_impl(&dword_186307000, v3, OS_LOG_TYPE_DEFAULT, "Read Per-App on Update: Smart invert = %@", buf, 0xCu);
  }

  if (NumberPreference)
  {
    Value = CFNumberGetValue(NumberPreference, kCFNumberIntType, &valuePtr);
    v5 = AXSupportLogCommon(Value);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      _updateCacheSmartInvertAndRepostNotification_cold_1(a1, &valuePtr);
    }
  }

  _kAXSCacheInvertColors = valuePtr;
  v6 = _getNumberPreference(kAXSInvertColorsEnabledPreference, 0);
  v7 = AXLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_186307000, v7, OS_LOG_TYPE_DEFAULT, "Smart invert status global: %@", buf, 0xCu);
  }

  if (v6)
  {
    v9 = CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
    _kAXSCacheInvertColorsGlobal = valuePtr;
    v10 = AXSupportLogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      _updateCacheSmartInvertAndRepostNotification_cold_2(a1, &valuePtr);
    }
  }

  if (_kAXSCacheInvertColors == -1)
  {
    _kAXSCacheInvertColors = _kAXSCacheInvertColorsGlobal;
  }

  v11 = AXSupportLogCommon(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    _updateCacheSmartInvertAndRepostNotification_cold_3();
  }

  if (_kAXSCacheInvertColors == 1 && _kAXSCacheInvertColorsGlobal != 1)
  {
    v13 = AXSupportLogCommon(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      _updateCacheSmartInvertAndRepostNotification_cold_4();
    }

    if (_AXSCurrentProcessIsWebContent_onceToken != -1)
    {
      _updateCacheSmartInvertAndRepostNotification_cold_5();
    }

    if ((_AXSCurrentProcessIsWebContent_IsWebContent & 1) == 0)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSAccessibilityEnabledNotification, 0, 0, 1u);
    }
  }

  postNotification(kAXSInvertColorsEnabledNotification);
}

void _AXSSetIncreaseButtonLegibilityApp(int a1, __CFString *a2)
{
  v3 = a1;
  _setNumberPreferenceApp(kAXSIncreaseButtonLegibilityPreference, kCFNumberIntType, &v3, @"com.apple.accessibility.cache.increase.button.legibility", a2);
  _updateCachePreferenceAfterChange(kAXSIncreaseButtonLegibilityPreference, a2, _kAXSCacheIncreaseButtonLegibility, v3);
}

void _AXSSetButtonShapesEnabledApp(uint64_t a1, __CFString *a2)
{
  v3 = a1;
  v4 = a1;
  _subscribeOnCacheNotificationsIfNeeded(kAXSButtonShapesEnabledPreference, a1, _AXSButtonShapesEnabled);
  _updateCachePreferenceAfterChange(kAXSButtonShapesEnabledPreference, a2, _kAXSCacheButtonShapes, v3);
  _setNumberPreferenceApp(kAXSButtonShapesEnabledPreference, kCFNumberIntType, &v4, @"com.apple.accessibility.cache.button.shapes.enabled", a2);
}

void _AXSSetReduceWhitePointEnabled(int a1)
{
  if (a1)
  {
    v1 = [NSClassFromString(&cfstr_Axsettings.isa) valueForKey:@"sharedInstance"];
    [v1 setValue:MEMORY[0x1E695E110] forKey:@"pulseWidthMaximization"];

    MADisplayFilterPrefSetType();
LABEL_3:
    MADisplayFilterPrefSetCategoryEnabled();
    goto LABEL_6;
  }

  if (MADisplayFilterPrefGetType() == 128 && MADisplayFilterPrefGetCategoryEnabled())
  {
    goto LABEL_3;
  }

LABEL_6:
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, kAXSReduceWhitePointEnabledNotification, 0, 0, 1u);
  if (_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = kAXSReduceWhitePointEnabledNotification;

    CFNotificationCenterPostNotification(DarwinNotifyCenter, v4, 0, 0, 1u);
  }
}

void _AXSSetUseDarkerKeyboard(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSUseDarkerKeyboardPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.use.darker.keyboard.enabled");

  _updateAccessibilitySettings(v1);
}

void _AXSSetHighContrastFocusIndicatorsEnabled(uint64_t a1)
{
  _kAXSCacheHighContrastFocusIndicatorsEnabled = a1;
  _setPreferenceAppWithNotification(kAXSHighContrastFocusIndicatorsEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.use.prominent.focus.indicators");

  _updateAccessibilitySettings(v1);
}

void _AXSSetUseSingleSystemColor(uint64_t a1)
{
  _kAXSCacheUseSingleSystemColor = a1;
  _setPreferenceAppWithNotification(kAXSUseSingleSystemColorPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.use.single.system.color.enabled");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSSingleSystemColorValues(uint64_t result, int *a2, int *a3, int *a4, _DWORD *a5)
{
  if (result > 3)
  {
    if (result <= 5)
    {
      if (result == 4)
      {
        v7 = 0;
        v5 = 1037621465;
        v6 = 1056635643;
      }

      else
      {
        v6 = 0;
        v5 = 1049529999;
        v7 = 1063511012;
      }

      goto LABEL_17;
    }

    if (result == 6)
    {
      v6 = 0;
      v5 = 1062260945;
      v7 = 1060616120;
      goto LABEL_17;
    }

    if (result == 7)
    {
      v5 = 1046010073;
      v6 = 1054135509;
      v7 = 1058247572;
      goto LABEL_17;
    }
  }

  else
  {
    if (result > 1)
    {
      if (result == 2)
      {
        v6 = 1006665857;
        v7 = 1062721496;
        v5 = 1006665857;
      }

      else
      {
        v5 = 1006665857;
        v6 = 1051503789;
        v7 = 1064300528;
      }

      goto LABEL_17;
    }

    if (!result)
    {
      return result;
    }

    if (result == 1)
    {
      v5 = 1065221630;
      v6 = 1051898547;
      v7 = 1042325665;
LABEL_17:
      *a2 = v7;
      *a3 = v6;
      *a4 = v5;
      *a5 = 1065353216;
    }
  }

  return 1;
}

uint64_t _AXSNamedSingleSystemColor()
{
  v0 = _copyValuePreferenceApp(kAXSNamedSystemColorChoicePreference, 0, 0);
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = [v0 intValue];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void _AXSSetNamedSingleSystemColor(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSNamedSystemColorChoicePreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1], objc_msgSend(kAXSNamedSystemColorChoicePreference, "stringByAppendingString:", @".notification"));
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.cache.use.single.system.color.enabled", 0, 0, 1u);
}

void _AXSSetDarkenSystemColors(uint64_t a1)
{
  _AXSSetDarkenSystemColorsApp(a1 != 0, 0);

  _AXSPointerIncreasedContrastSetEnabled(a1);
}

void _AXSSetDarkenSystemColorsApp(int a1, __CFString *a2)
{
  v3 = a1;
  _setNumberPreferenceApp(kAXSDarkenSystemColorsEnabledPreference, kCFNumberIntType, &v3, @"com.apple.accessibility.cache.darken.system.colors.enabled", a2);
  _updateCachePreferenceAfterChange(kAXSDarkenSystemColorsEnabledPreference, a2, &_kAXSCacheDarkenSystemColors, v3);
}

void _AXSPointerIncreasedContrastSetEnabled(uint64_t a1)
{
  _kAXSCachePointerIncreasedContrastEnabled = a1;
  _setPreferenceAppWithNotification(kAXSPointerIncreasedContrastEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.pointer.increased.contrast");

  _updateAccessibilitySettings(v1);
}

void _AXSSetShakeToUndoDisabled(uint64_t a1)
{
  v1 = kAXSShakeToUndoDisabledPreference;
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];
  v3 = [(__CFString *)v1 stringByAppendingString:@".notification"];

  _setPreferenceAppWithNotification(v1, 0, v2, v3);
}

uint64_t _AXSVibrationDisabled(uint64_t a1, uint64_t a2)
{
  if (_AXSVibrationDisabled_onceToken != -1)
  {
    _AXSVibrationDisabled_cold_1();
  }

  return _kAXSCacheVibrationDisabled;
}

void _AXSSetVibrationDisabled(uint64_t a1)
{
  _kAXSCacheVibrationDisabled = a1;
  _setPreferenceAppWithNotification(kAXSVibrationDisabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.VibrationDisabled");
  _updateAccessibilitySettings(v1);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"VibrationDisabledPreferenceDidChange", 0, 0, 1u);
}

uint64_t _AXSForceTouchEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSForceTouchEnabled_onceToken != -1)
  {
    _AXSForceTouchEnabled_cold_1();
  }

  return _kAXSCachedForceTouchEnabled;
}

void _AXSSetForceTouchEnabled(uint64_t a1)
{
  _kAXSCachedForceTouchEnabled = a1;
  _setPreferenceAppWithNotification(kAXSForceTouchEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.forcetouch.enabled.changed");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSForceTouchTimeDuration(uint64_t a1, uint64_t a2)
{
  if (_AXSForceTouchTimeDuration_onceToken != -1)
  {
    _AXSForceTouchTimeDuration_cold_1();
  }

  return *&_kAXSCachedForceTouchTiming;
}

void _AXSSetForceTouchTimeDuration(unsigned int a1)
{
  v1 = a1;
  *&_kAXSCachedForceTouchTiming = a1;
  _setNumberPreferenceApp(kAXSForceTouchTimingPreference, kCFNumberIntType, &v1, @"com.apple.accessibility.cache.forcetouch.timing.changed", 0);
}

float _AXSForceTouchSensitivity(uint64_t a1, uint64_t a2)
{
  if (_AXSForceTouchSensitivity_onceToken != -1)
  {
    _AXSForceTouchSensitivity_cold_1();
  }

  return *&_kAXSCachedForceTouchSensitivity;
}

void _AXSSetForceTouchSensitivity(float a1)
{
  v1 = fminf(fmaxf(a1, 0.8), 1.2);
  _kAXSCachedForceTouchSensitivity = LODWORD(v1);
  _setNumberPreferenceApp(kAXSForceTouchSensitivityPreference, kCFNumberFloatType, &v1, @"com.apple.accessibility.cache.forcetouch.sensitivity.changed", 0);
}

void _AXSSetLowercaseKeyboardDisplayEnabled(uint64_t a1)
{
  _kAXSCacheLowercaseKeyboardEnabled = a1;
  _setPreferenceAppWithNotification(kAXSLowerCaseKeyboardEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.lower.case.keyboard.enabled");

  _updateAccessibilitySettings(v1);
}

void _AXSSetSlowKeysEnabled(uint64_t a1)
{
  v1 = kAXSSlowKeysEnabledPreference;
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];
  v3 = [(__CFString *)v1 stringByAppendingString:@".notification"];

  _setPreferenceAppWithNotification(v1, 0, v2, v3);
}

double _getPrefTimeIntervalValueWithCustomCallback(__CFString *a1, uint64_t a2, double a3)
{
  v4 = _copyPrefValueWithCustomCallback(a1, a2);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 doubleValue];
      a3 = v5;
    }
  }

  return a3;
}

void _AXSSetSlowKeysAcceptanceDelay()
{
  v0 = kAXSSlowKeysAcceptanceDelayPreference;
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v2 = [(__CFString *)v0 stringByAppendingString:@".notification"];

  _setPreferenceAppWithNotification(v0, 0, v1, v2);
}

void _AXSSetKeyRepeatEnabled(uint64_t a1)
{
  v1 = kAXSKeyRepeatEnabledPreference;
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];
  v3 = [(__CFString *)v1 stringByAppendingString:@".notification"];

  _setPreferenceAppWithNotification(v1, 0, v2, v3);
}

double _AXSKeyRepeatInterval()
{
  PrefTimeIntervalValueWithCustomCallback = _getPrefTimeIntervalValueWithCustomCallback(kAXSKeyRepeatIntervalPreference, 0, 0.1);
  if (_getPrefBooleanValueWithCustomCallback(kAXSSlowKeysEnabledPreference, 0, _handleSlowKeysEnabledPreferenceDidChangeNotification))
  {
    v1 = _getPrefTimeIntervalValueWithCustomCallback(kAXSSlowKeysAcceptanceDelayPreference, _handleSlowKeysAcceptanceDelayPreferenceDidChangeNotification, 0.3);
    if (PrefTimeIntervalValueWithCustomCallback < v1)
    {
      return v1;
    }
  }

  return PrefTimeIntervalValueWithCustomCallback;
}

void _AXSSetKeyRepeatInterval()
{
  v0 = kAXSKeyRepeatIntervalPreference;
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v2 = [(__CFString *)v0 stringByAppendingString:@".notification"];

  _setPreferenceAppWithNotification(v0, 0, v1, v2);
}

double _AXSKeyRepeatDelay()
{
  PrefTimeIntervalValueWithCustomCallback = _getPrefTimeIntervalValueWithCustomCallback(kAXSKeyRepeatDelayPreference, 0, 0.4);
  if (_getPrefBooleanValueWithCustomCallback(kAXSSlowKeysEnabledPreference, 0, _handleSlowKeysEnabledPreferenceDidChangeNotification))
  {
    v1 = _getPrefTimeIntervalValueWithCustomCallback(kAXSSlowKeysAcceptanceDelayPreference, _handleSlowKeysAcceptanceDelayPreferenceDidChangeNotification, 0.3);
    if (PrefTimeIntervalValueWithCustomCallback < v1)
    {
      return v1;
    }
  }

  return PrefTimeIntervalValueWithCustomCallback;
}

void _AXSSetKeyRepeatDelay()
{
  v0 = kAXSKeyRepeatDelayPreference;
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v2 = [(__CFString *)v0 stringByAppendingString:@".notification"];

  _setPreferenceAppWithNotification(v0, 0, v1, v2);
}

void _handlePhoneticFeedbackPrefsChangedNotification()
{
  if (_AXSAccessibilityPreferenceDomain_onceToken != -1)
  {
    _handlePhoneticFeedbackPrefsChangedNotification_cold_1();
  }

  CFPreferencesAppSynchronize(_AXSAccessibilityPreferenceDomain_Domain);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = kAXSPhoneticFeedbackEnabledNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v1, 0, 0, 1u);
}

void _AXSSetPhoneticFeedbackEnabled(uint64_t a1)
{
  v1 = a1;
  _setPreferenceAppWithNotification(kAXSPhoneticFeedbackEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], objc_msgSend(kAXSPhoneticFeedbackEnabledPreference, "stringByAppendingString:", @".notification"));
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v3))
    {
      return;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
}

void _handleLetterFeedbackPrefsChangedNotification()
{
  if (_AXSAccessibilityPreferenceDomain_onceToken != -1)
  {
    _handlePhoneticFeedbackPrefsChangedNotification_cold_1();
  }

  CFPreferencesAppSynchronize(_AXSAccessibilityPreferenceDomain_Domain);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = kAXSLetterFeedbackEnabledNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v1, 0, 0, 1u);
}

void _AXSSetLetterFeedbackEnabled(uint64_t a1)
{
  v1 = a1;
  _setPreferenceAppWithNotification(kAXSLetterFeedbackEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], objc_msgSend(kAXSLetterFeedbackEnabledPreference, "stringByAppendingString:", @".notification"));
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v3))
    {
      return;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
}

void _handleQuickTypePredictionFeedbackPrefsChangedNotification()
{
  if (_AXSAccessibilityPreferenceDomain_onceToken != -1)
  {
    _handlePhoneticFeedbackPrefsChangedNotification_cold_1();
  }

  CFPreferencesAppSynchronize(_AXSAccessibilityPreferenceDomain_Domain);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = kAXSQuickTypePredictionFeedbackEnabledNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v1, 0, 0, 1u);
}

void _AXSSetQuickTypePredictionFeedbackEnabled(uint64_t a1)
{
  v1 = a1;
  _setPreferenceAppWithNotification(kAXSQuickTypePredictionFeedbackEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], objc_msgSend(kAXSQuickTypePredictionFeedbackEnabledPreference, "stringByAppendingString:", @".notification"));
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v3))
    {
      return;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
}

void _handleWordFeedbackPrefsChangedNotification()
{
  if (_AXSAccessibilityPreferenceDomain_onceToken != -1)
  {
    _handlePhoneticFeedbackPrefsChangedNotification_cold_1();
  }

  CFPreferencesAppSynchronize(_AXSAccessibilityPreferenceDomain_Domain);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = kAXSWordFeedbackEnabledNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v1, 0, 0, 1u);
}

void _AXSSetWordFeedbackEnabled(uint64_t a1)
{
  v1 = a1;
  _setPreferenceAppWithNotification(kAXSWordFeedbackEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], objc_msgSend(kAXSWordFeedbackEnabledPreference, "stringByAppendingString:", @".notification"));
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v3))
    {
      return;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
}

uint64_t _AXSWebProcessAllowsSecondaryThreadAccess(uint64_t a1, uint64_t a2)
{
  if (_AXSWebProcessAllowsSecondaryThreadAccess_onceToken != -1)
  {
    _AXSWebProcessAllowsSecondaryThreadAccess_cold_1();
  }

  return _kAXSCacheWebProcessAllowsSecondaryThreadEnabled;
}

void _AXSSetWebProcessAllowsSecondaryThreadAccess(uint64_t a1)
{
  _kAXSCacheWebProcessAllowsSecondaryThreadEnabled = a1;
  _setPreferenceAppWithNotification(kAXSWebProcessAllowsSecondaryThreadEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.allows.notification");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSPointerAllowAppCustomizationEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerAllowAppCustomizationEnabled_onceToken != -1)
  {
    _AXSPointerAllowAppCustomizationEnabled_cold_1();
  }

  return _kAXSCachePointerAllowAppCustomizationEnabled;
}

void _AXSPointerInertiaSetEnabled(uint64_t a1)
{
  _kAXSCachePointerInertiaEnabled = a1;
  _setPreferenceAppWithNotification(kAXSPointerInertiaEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.pointer.inertia");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSPointerInertiaEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerInertiaEnabled_onceToken != -1)
  {
    _AXSPointerInertiaEnabled_cold_1();
  }

  return _kAXSCachePointerInertiaEnabled;
}

uint64_t _AXSPointerEffectScalingEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerEffectScalingEnabled_onceToken != -1)
  {
    _AXSPointerEffectScalingEnabled_cold_1();
  }

  return _kAXSCachePointerEffectScalingEnabled;
}

void _AXSPointerSetSizeMultiplier(float a1)
{
  v1 = fminf(a1, 5.0);
  if (v1 < 1.0)
  {
    v1 = 1.0;
  }

  v2 = v1;
  _kAXSCachePointerSizeMultiplier = LODWORD(v1);
  _setNumberPreferenceApp(kAXSPointerSizeMultiplierPreference, kCFNumberFloatType, &v2, @"com.apple.accessibility.cache.pointer.size.multiplier", 0);
}

float _AXSPointerSizeMultiplier(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerSizeMultiplier_onceToken != -1)
  {
    _AXSPointerSizeMultiplier_cold_1();
  }

  return *&_kAXSCachePointerSizeMultiplier;
}

BOOL _AXSPointerShouldShowCenterPoint(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerSizeMultiplier_onceToken != -1)
  {
    _AXSPointerSizeMultiplier_cold_1();
  }

  return *&_kAXSCachePointerSizeMultiplier >= 3.0;
}

uint64_t _AXSPointerIncreasedContrastEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
  {
    _AXSPointerIncreasedContrastEnabled_cold_1();
  }

  return _kAXSCachePointerIncreasedContrastEnabled;
}

void _AXSPointerAutoHideSetEnabled(uint64_t a1)
{
  _kAXSCachePointerAutoHideEnabled = a1;
  _setPreferenceAppWithNotification(kAXSPointerAutoHideEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.pointer.auto.hide");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSPointerAutoHideEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerAutoHideEnabled_onceToken != -1)
  {
    _AXSPointerAutoHideEnabled_cold_1();
  }

  return _kAXSCachePointerAutoHideEnabled;
}

void _AXSPointerSetAutoHideDuration(float a1)
{
  v1 = a1;
  _kAXSCachePointerAutoHideDuration = LODWORD(a1);
  _setNumberPreferenceApp(kAXSPointerAutoHideDurationPreference, kCFNumberFloatType, &v1, @"com.apple.accessibility.cache.pointer.auto.hide.duration", 0);
}

float _AXSPointerAutoHideDuration(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerAutoHideDuration_onceToken != -1)
  {
    _AXSPointerAutoHideDuration_cold_1();
  }

  return *&_kAXSCachePointerAutoHideDuration;
}

void _AXSPointerSetStrokeColorWidth(float a1)
{
  v1 = a1;
  _kAXSCachePointerStrokeColorWidth = LODWORD(a1);
  _setNumberPreferenceApp(kAXSPointerStrokeColorWidthPreference, kCFNumberFloatType, &v1, @"com.apple.accessibility.cache.pointer.stroke.color.width", 0);
}

float _AXSPointerStrokeColorWidth(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerStrokeColorWidth_onceToken != -1)
  {
    _AXSPointerStrokeColorWidth_cold_1();
  }

  return *&_kAXSCachePointerStrokeColorWidth;
}

void _AXSPointerSetStrokeColor(int a1)
{
  v1 = a1;
  _kAXSCachePointerStrokeColor = a1;
  _setNumberPreferenceApp(kAXSPointerStrokeColorPreference, kCFNumberIntType, &v1, @"com.apple.accessibility.cache.pointer.stroke.color", 0);
}

uint64_t _AXSPointerStrokeColor(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerStrokeColor_onceToken != -1)
  {
    _AXSPointerStrokeColor_cold_1();
  }

  return _kAXSCachePointerStrokeColor;
}

uint64_t _AXSPointerStrokeColorValues(int a1, float *a2, float *a3, float *a4, _DWORD *a5)
{
  result = 0;
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
      {
        _AXSPointerIncreasedContrastEnabled_cold_1();
      }

      v12 = 1.0;
      v13 = 1.0;
      v19 = 1.0;
      goto LABEL_36;
    }

    if (a1 != 2)
    {
      if (a1 != 3)
      {
        return result;
      }

      if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
      {
        _AXSPointerIncreasedContrastEnabled_cold_1();
      }

      v11 = _kAXSCachePointerIncreasedContrastEnabled == 0;
      v12 = 0.75;
      if (!_kAXSCachePointerIncreasedContrastEnabled)
      {
        v12 = 1.0;
      }

      v13 = flt_186336D60[_kAXSCachePointerIncreasedContrastEnabled == 0];
      v14 = &unk_186336D68;
      goto LABEL_22;
    }

    if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
    {
      _AXSPointerIncreasedContrastEnabled_cold_1();
    }

    v15 = _kAXSCachePointerIncreasedContrastEnabled == 0;
    v12 = -0.25;
    if (!_kAXSCachePointerIncreasedContrastEnabled)
    {
      v12 = 0.0;
    }

    v13 = flt_186336D70[_kAXSCachePointerIncreasedContrastEnabled == 0];
    v19 = 0.75;
    v20 = 1.0;
LABEL_34:
    if (v15)
    {
      v19 = v20;
    }

    goto LABEL_36;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
      {
        _AXSPointerIncreasedContrastEnabled_cold_1();
      }

      v15 = _kAXSCachePointerIncreasedContrastEnabled == 0;
      v16 = _kAXSCachePointerIncreasedContrastEnabled == 0;
      v12 = 0.75;
      v17 = 1.0;
      v18 = &unk_186336D40;
    }

    else
    {
      if (a1 != 6)
      {
        return result;
      }

      if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
      {
        _AXSPointerIncreasedContrastEnabled_cold_1();
      }

      v15 = _kAXSCachePointerIncreasedContrastEnabled == 0;
      v16 = _kAXSCachePointerIncreasedContrastEnabled == 0;
      v12 = 0.75;
      v17 = 1.0;
      v18 = &unk_186336D38;
    }

    if (v15)
    {
      v12 = v17;
    }

    v13 = v18[v16];
    v19 = -0.25;
    v20 = 0.0;
    goto LABEL_34;
  }

  if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
  {
    _AXSPointerIncreasedContrastEnabled_cold_1();
  }

  v11 = _kAXSCachePointerIncreasedContrastEnabled == 0;
  v12 = flt_186336D48[_kAXSCachePointerIncreasedContrastEnabled == 0];
  v13 = flt_186336D50[_kAXSCachePointerIncreasedContrastEnabled == 0];
  v14 = &unk_186336D58;
LABEL_22:
  v19 = v14[v11];
LABEL_36:
  *a2 = v12;
  *a3 = v13;
  *a4 = v19;
  *a5 = 1065353216;
  return 1;
}

uint64_t _ASTVirtualTrackpadColorValues(int a1, float *a2, float *a3, float *a4, _DWORD *a5)
{
  result = 0;
  if (a1 <= 2)
  {
    if (!a1)
    {
      if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
      {
        _AXSPointerIncreasedContrastEnabled_cold_1();
      }

      v12 = flt_186336D78[_kAXSCachePointerIncreasedContrastEnabled == 0];
      v13 = v12;
      v16 = v12;
      goto LABEL_41;
    }

    if (a1 == 1)
    {
      if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
      {
        _AXSPointerIncreasedContrastEnabled_cold_1();
      }

      v12 = 1.0;
      v13 = 1.0;
      v16 = 1.0;
      goto LABEL_41;
    }

    if (a1 != 2)
    {
      return result;
    }

    if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
    {
      _AXSPointerIncreasedContrastEnabled_cold_1();
    }

    v15 = _kAXSCachePointerIncreasedContrastEnabled == 0;
    v12 = -0.25;
    if (!_kAXSCachePointerIncreasedContrastEnabled)
    {
      v12 = 0.0;
    }

    v13 = flt_186336D70[_kAXSCachePointerIncreasedContrastEnabled == 0];
    v16 = 0.75;
    v17 = 1.0;
    goto LABEL_35;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
      {
        _AXSPointerIncreasedContrastEnabled_cold_1();
      }

      v15 = _kAXSCachePointerIncreasedContrastEnabled == 0;
      v18 = _kAXSCachePointerIncreasedContrastEnabled == 0;
      v12 = 0.75;
      v19 = 1.0;
      v20 = &unk_186336D40;
    }

    else
    {
      if (a1 != 6)
      {
        return result;
      }

      if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
      {
        _AXSPointerIncreasedContrastEnabled_cold_1();
      }

      v15 = _kAXSCachePointerIncreasedContrastEnabled == 0;
      v18 = _kAXSCachePointerIncreasedContrastEnabled == 0;
      v12 = 0.75;
      v19 = 1.0;
      v20 = &unk_186336D38;
    }

    if (v15)
    {
      v12 = v19;
    }

    v13 = v20[v18];
    v16 = -0.25;
    v17 = 0.0;
LABEL_35:
    if (v15)
    {
      v16 = v17;
    }

    goto LABEL_41;
  }

  if (a1 == 3)
  {
    if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
    {
      _AXSPointerIncreasedContrastEnabled_cold_1();
    }

    v11 = _kAXSCachePointerIncreasedContrastEnabled == 0;
    v12 = 0.75;
    if (!_kAXSCachePointerIncreasedContrastEnabled)
    {
      v12 = 1.0;
    }

    v13 = flt_186336D60[_kAXSCachePointerIncreasedContrastEnabled == 0];
    v14 = &unk_186336D68;
  }

  else
  {
    if (_AXSPointerIncreasedContrastEnabled_onceToken != -1)
    {
      _AXSPointerIncreasedContrastEnabled_cold_1();
    }

    v11 = _kAXSCachePointerIncreasedContrastEnabled == 0;
    v12 = flt_186336D48[_kAXSCachePointerIncreasedContrastEnabled == 0];
    v13 = flt_186336D50[_kAXSCachePointerIncreasedContrastEnabled == 0];
    v14 = &unk_186336D58;
  }

  v16 = v14[v11];
LABEL_41:
  *a2 = v12;
  *a3 = v13;
  *a4 = v16;
  *a5 = 1065353216;
  return 1;
}

void _AXSPointerSetVoiceOverCursorOption(int a1)
{
  v1 = a1;
  _kAXSCachePointerVoiceOverCursorOption = a1;
  _setNumberPreferenceApp(kAXSPointerVoiceOverCursorOptionPreference, kCFNumberIntType, &v1, @"com.apple.accessibility.cache.pointer.voiceover.option", 0);
}

uint64_t _AXSPointerVoiceOverCursorOption(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerVoiceOverCursorOption_onceToken != -1)
  {
    _AXSPointerVoiceOverCursorOption_cold_1();
  }

  return _kAXSCachePointerVoiceOverCursorOption;
}

void _AXSVoiceOverSpeakUnderPointerSetEnabled(uint64_t a1)
{
  _kAXSCacheVoiceOverSpeakUnderPointer = a1;
  _setPreferenceAppWithNotification(kAXSVoiceOverSpeakUnderPointerPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.voiceover.speak.under.pointer");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSVoiceOverSpeakUnderPointerEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSVoiceOverSpeakUnderPointerEnabled_onceToken != -1)
  {
    _AXSVoiceOverSpeakUnderPointerEnabled_cold_1();
  }

  return _kAXSCacheVoiceOverSpeakUnderPointer;
}

void _AXSVoiceOverSpeakUnderPointerSetDelay(float a1)
{
  v1 = a1;
  _kAXSCacheVoiceOverSpeakUnderPointerDelay = LODWORD(a1);
  _setNumberPreferenceApp(kAXSVoiceOverSpeakUnderPointerDelayPreference, kCFNumberFloatType, &v1, @"com.apple.accessibility.cache.voiceover.speak.under.pointer", 0);
}

float _AXSVoiceOverSpeakUnderPointerDelay(uint64_t a1, uint64_t a2)
{
  if (_AXSVoiceOverSpeakUnderPointerDelay_onceToken != -1)
  {
    _AXSVoiceOverSpeakUnderPointerDelay_cold_1();
  }

  return *&_kAXSCacheVoiceOverSpeakUnderPointerDelay;
}

void _AXSPointerScaleWithZoomLevelSetEnabled(uint64_t a1)
{
  _kAXSCachePointerScaleWithZoomLevelEnabled = a1;
  _setPreferenceAppWithNotification(kAXSPointerScaleWithZoomLevelEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.pointer.scale.with.zoom.level");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSPointerScaleWithZoomLevelEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSPointerScaleWithZoomLevelEnabled_onceToken != -1)
  {
    _AXSPointerScaleWithZoomLevelEnabled_cold_1();
  }

  return _kAXSCachePointerScaleWithZoomLevelEnabled;
}

void _AXSSetHapticMusicEnabled(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AXLogHapticMusic(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];
    v4 = [MEMORY[0x1E696AF00] callStackSymbols];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Enabling haptic music: %@: %@", &v6, 0x16u);
  }

  _kAXSCacheHapticMusicEnabled = a1 != 0;
  _setPreferenceAppWithNotification(kAXSHapticMusicEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], _kAXSCacheHapticMusicDidChangeNotification);
  _updateAccessibilitySettings(v5);
}

uint64_t _AXSHapticMusicEnabled(uint64_t a1, uint64_t a2)
{
  result = AXDeviceSupportsHapticMusic(a1, a2);
  if (result)
  {
    if (_AXSHapticMusicEnabled_onceToken != -1)
    {
      _AXSHapticMusicEnabled_cold_1();
    }

    return _kAXSCacheHapticMusicEnabled;
  }

  return result;
}

void _AXSSetAudioDonationSiriImprovementEnabled(uint64_t a1)
{
  _kAXSCacheAudioDonationSiriImprovementEnabled = a1 != 0;
  _setPreferenceAppWithNotification(kAXSAudioDonationSiriImprovementEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], _kAXSCacheAudioDonationSiriImprovementDidChangeNotification);

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAudioDonationSiriImprovementEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSAudioDonationSiriImprovementEnabled_onceToken != -1)
  {
    _AXSAudioDonationSiriImprovementEnabled_cold_1();
  }

  return _kAXSCacheAudioDonationSiriImprovementEnabled;
}

void _AXSSetMotionCuesActive(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AXLogMotionCues(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set motion cues active: %@", &v5, 0xCu);
  }

  _kAXSCacheMotionCuesActive = a1 != 0;
  _setPreferenceAppWithNotification(@"AXSMotionCuesActive", 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], _kAXSCacheMotionCuesActiveDidChangeNotification);
  _updateAccessibilitySettings(v4);
}

uint64_t _AXSMotionCuesActive(uint64_t a1, uint64_t a2)
{
  if (_AXSMotionCuesActive_onceToken != -1)
  {
    _AXSMotionCuesActive_cold_1();
  }

  return _kAXSCacheMotionCuesActive;
}

void _AXSSetMotionCuesShouldShowBanner(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AXLogMotionCues(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set motion cues shouldShowBanner: %@", &v5, 0xCu);
  }

  _kAXSCacheMotionCuesShouldShowBanner = a1 != 0;
  _setPreferenceAppWithNotification(@"AXSMotionCuesShouldShowBanner", 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], _kAXSCacheMotionCuesShouldShowBannerDidChangeNotification);
  _updateAccessibilitySettings(v4);
}

uint64_t _AXSMotionCuesShouldShowBanner(uint64_t a1, uint64_t a2)
{
  if (_AXSMotionCuesShouldShowBanner_onceToken != -1)
  {
    _AXSMotionCuesShouldShowBanner_cold_1();
  }

  return _kAXSCacheMotionCuesShouldShowBanner;
}

void _AXSSetMotionCuesEnabled(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AXLogMotionCues(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set enabled=%{BOOL}d", v4, 8u);
  }

  _kAXSCacheMotionCuesEnabled = a1 != 0;
  _setPreferenceAppWithNotification(kAXSMotionCuesEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], _kAXSCacheMotionCuesDidChangeNotification);
  _updateAccessibilitySettings(v3);
}

uint64_t _AXSMotionCuesEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSMotionCuesEnabled_onceToken != -1)
  {
    _AXSMotionCuesEnabled_cold_1();
  }

  return _kAXSCacheMotionCuesEnabled;
}

void _AXSSetMotionCuesModeAndShowBanner(uint64_t a1, int a2)
{
  v3 = a1;
  v9 = *MEMORY[0x1E69E9840];
  v6 = a1;
  if (_AXSMotionCuesMode_onceToken != -1)
  {
    _AXSSetMotionCuesModeAndShowBanner_cold_1();
  }

  if (a2 && _kAXSCacheMotionCuesMode != v3)
  {
    _AXSSetMotionCuesShouldShowBanner(1);
  }

  v4 = AXLogMotionCues(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&dword_186307000, v4, OS_LOG_TYPE_DEFAULT, "Set mode=%d", buf, 8u);
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (_AXSMotionCuesEnabled_onceToken != -1)
      {
        _AXSSetMotionCuesModeAndShowBanner_cold_2();
      }

      if (_kAXSCacheMotionCuesEnabled)
      {
        v5 = 0;
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (_AXSMotionCuesEnabled_onceToken != -1)
    {
      _AXSSetMotionCuesModeAndShowBanner_cold_2();
    }

    if (!_kAXSCacheMotionCuesEnabled)
    {
      v5 = 1;
LABEL_18:
      _AXSSetMotionCuesEnabled(v5);
    }
  }

  _kAXSCacheMotionCuesMode = v3;
  _setNumberPreferenceApp(kAXSMotionCuesModePreference, kCFNumberIntType, &v6, _kAXSCacheMotionCuesModeDidChangeNotification, 0);
}

uint64_t _AXSMotionCuesMode(uint64_t a1, uint64_t a2)
{
  if (_AXSMotionCuesMode_onceToken != -1)
  {
    _AXSSetMotionCuesModeAndShowBanner_cold_1();
  }

  return _kAXSCacheMotionCuesMode;
}

void _AXSSetMotionCuesStyle(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v2 = AXLogMotionCues(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set motion cues style: %@", buf, 0xCu);
  }

  _kAXSCacheMotionCuesStyle = a1;
  _setNumberPreferenceApp(kAXSMotionCuesStylePreference, kCFNumberIntType, &v4, _kAXSCacheMotionCuesStyleDidChangeNotification, 0);
}

uint64_t _AXSMotionCuesStyle(uint64_t a1, uint64_t a2)
{
  if (_AXSMotionCuesStyle_onceToken != -1)
  {
    _AXSMotionCuesStyle_cold_1();
  }

  return _kAXSCacheMotionCuesStyle;
}

void _AXSSetMotionCuesTintColor(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v2 = AXLogMotionCues(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set motion cues tintColor: %@", buf, 0xCu);
  }

  _kAXSCacheMotionCuesTintColor = a1;
  _setNumberPreferenceApp(kAXSMotionCuesTintColorPreference, kCFNumberIntType, &v4, _kAXSCacheMotionCuesTintColorDidChangeNotification, 0);
}

uint64_t _AXSMotionCuesTintColor(uint64_t a1, uint64_t a2)
{
  if (_AXSMotionCuesTintColor_onceToken != -1)
  {
    _AXSMotionCuesTintColor_cold_1();
  }

  return _kAXSCacheMotionCuesTintColor;
}

void _AXSSetMotionCuesIntensity(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v2 = AXLogMotionCues(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set motion cues intensity: %@", buf, 0xCu);
  }

  _kAXSCacheMotionCuesIntensity = a1;
  _setNumberPreferenceApp(kAXSMotionCuesIntensityPreference, kCFNumberIntType, &v4, _kAXSCacheMotionCuesIntensityDidChangeNotification, 0);
}

uint64_t _AXSMotionCuesIntensity(uint64_t a1, uint64_t a2)
{
  if (_AXSMotionCuesIntensity_onceToken != -1)
  {
    _AXSMotionCuesIntensity_cold_1();
  }

  return _kAXSCacheMotionCuesIntensity;
}

void _AXSSetIsolatedTreeMode(int a1)
{
  v1 = a1;
  _kAXSCacheIsolatedTreeMode = a1;
  _setNumberPreferenceApp(kAXSIsolatedTreeModeEnabledPreference, kCFNumberIntType, &v1, @"com.apple.accessibility.cache.isolated.tree.mode", 0);
}

uint64_t _AXSIsolatedTreeMode(uint64_t a1, uint64_t a2)
{
  if (_AXSIsolatedTreeMode_onceToken != -1)
  {
    _AXSIsolatedTreeMode_cold_1();
  }

  return _kAXSCacheIsolatedTreeMode;
}

void _AXSSetShowAudioTranscriptions(uint64_t a1)
{
  _kAXSCacheShowAudioTranscriptionsEnabled = a1;
  _setPreferenceAppWithNotification(kAXSShowAudioTranscriptionsEnabled, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.show.audio.transcriptions");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSShowAudioTranscriptions(uint64_t a1, uint64_t a2)
{
  if (_AXSShowAudioTranscriptions_onceToken != -1)
  {
    _AXSShowAudioTranscriptions_cold_1();
  }

  return _kAXSCacheShowAudioTranscriptionsEnabled;
}

uint64_t _AXSBackTapEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSBackTapEnabled_onceToken != -1)
  {
    _AXSBackTapEnabled_cold_1();
  }

  return _kAXSCacheBackTapEnabled;
}

void _AXSBackTapSetEnabled(uint64_t a1)
{
  _kAXSCacheBackTapEnabled = a1;
  _setPreferenceAppWithNotification(kAXSBackTapEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.back.tap.enabled");

  _updateAccessibilitySettings(v1);
}

void _AXSBrailleInputDeviceSetConnected(uint64_t a1)
{
  _kAXSCacheBrailleInputDeviceConnected = a1;
  _setPreferenceAppWithNotification(kAXSBrailleInputDeviceConnectedPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.braille.input.connection.changed");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSBrailleInputDeviceConnected()
{
  result = _AXSVoiceOverTouchEnabled();
  if (result)
  {
    if (_AXSBrailleInputDeviceConnected_onceToken != -1)
    {
      _AXSBrailleInputDeviceConnected_cold_1();
    }

    return _kAXSCacheBrailleInputDeviceConnected;
  }

  return result;
}

uint64_t _AXSLiveHeadphoneLevelEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSLiveHeadphoneLevelEnabled_onceToken != -1)
  {
    _AXSLiveHeadphoneLevelEnabled_cold_1();
  }

  return _kAXSCacheLiveHeadphoneLevelEnabled;
}

void _AXSLiveHeadphoneLevelSetEnabled(uint64_t a1)
{
  _setPreferenceAppWithNotification(kAXSLiveHeadphoneLevelEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], kAXSLiveHeadphoneLevelEnabledDidChangeNotification);

  _updateAccessibilitySettings(v1);
}

CFTypeRef _AXSLiveHeadphoneLevelAutomationSampleData()
{
  v0 = _copyValuePreferenceApp(kAXSLiveHeadphoneLevelAutomationSampleDataPreference, 0, 0);

  return CFAutorelease(v0);
}

uint64_t __AXSSoundDetectionState(uint64_t a1, uint64_t a2)
{
  if (__AXSSoundDetectionState_onceToken != -1)
  {
    __AXSSoundDetectionState_cold_1();
  }

  return _kAXSCacheSoundDetectionState;
}

uint64_t _AXSSoundDetectionRunning(uint64_t a1, uint64_t a2)
{
  if (__AXSSoundDetectionState_onceToken != -1)
  {
    __AXSSoundDetectionState_cold_1();
  }

  v2 = _kAXSCacheSoundDetectionState;
  if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_3();
  }

  if (_kAXSCacheSwitchControlEnabled)
  {
    v3 = _AXSSoundActionEnabledForSwitchControl();
  }

  else
  {
    v3 = 0;
  }

  return (v2 != 0) | v3 & 1u;
}

uint64_t _AXSWatchTypeToSiriEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSWatchTypeToSiriEnabled_onceToken != -1)
  {
    _AXSWatchTypeToSiriEnabled_cold_1();
  }

  return _kAXSCacheWatchTypeToSiriEnabled;
}

void _AXSWatchTypeToSiriSetEnabled(uint64_t a1)
{
  _kAXSCacheWatchTypeToSiriEnabled = a1;
  _setPreferenceAppWithNotification(kAXSWatchTypeToSiriEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.watch.typetosiri.enabled");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSWatchQuickActionsState(uint64_t a1, uint64_t a2)
{
  if (_AXSWatchQuickActionsState_onceToken != -1)
  {
    _AXSWatchQuickActionsState_cold_1();
  }

  return _kAXSCacheWatchQuickActionsState;
}

void _AXSWatchQuickActionsSetState(int a1)
{
  v1 = a1;
  _kAXSCacheWatchQuickActionsState = a1;
  _setNumberPreferenceApp(kAXSWatchQuickActionsStatePreference, kCFNumberIntType, &v1, @"com.apple.accessibility.cache.watch.quickactions.state", 0);
}

uint64_t _AXSWatchQuickActionsEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSWatchQuickActionsState_onceToken != -1)
  {
    _AXSWatchQuickActionsState_cold_1();
  }

  v3 = _kAXSCacheWatchQuickActionsState;

  return _AXSWatchQuickActionsResolvedEnabledStateForState(v3, a2);
}

uint64_t _AXSWatchQuickActionsResolvedEnabledStateForState(uint64_t a1, uint64_t a2)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (a1)
  {
    return 1;
  }

  if (_AXSWatchControlEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_13();
  }

  return _kAXSCacheWatchControlEnabled;
}

uint64_t _AXSWatchQuickActionBannerAppearance(uint64_t a1, uint64_t a2)
{
  if (_AXSWatchQuickActionBannerAppearance_onceToken != -1)
  {
    _AXSWatchQuickActionBannerAppearance_cold_1();
  }

  return _kAXSCacheWatchQuickActionBannerAppearance;
}

void _AXSWatchQuickActionSetBannerAppearance(int a1)
{
  v1 = a1;
  _kAXSCacheWatchQuickActionBannerAppearance = a1;
  _setNumberPreferenceApp(kAXSWatchQuickActionBannerAppearancePreference, kCFNumberIntType, &v1, @"com.apple.accessibility.cache.watch.quickactions.banner.appearance", 0);
}

void _AXSWatchControlSetEnabled(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheWatchControlEnabled = a1;
  _setPreferenceAppWithNotification(kAXSWatchControlEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.watch.control.enabled");
  _updateAccessibilitySettings(v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    if (!_AXSCanDisableApplicationAccessibility(v3))
    {
      return;
    }

    v4 = 0;
  }

  _AXSApplicationAccessibilitySetEnabled(v4);
}

void _AXSPhotosensitiveMitigationSetEnabled(uint64_t a1)
{
  _kAXSCachePhotosensitiveMitigationEnabled = a1;
  _setPreferenceAppWithNotification(@"PhotosensitiveMitigation", 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.pse.mitigation");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSPhotosensitiveSourceCopyDebuggingEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSPhotosensitiveSourceCopyDebuggingEnabled_onceToken != -1)
  {
    _AXSPhotosensitiveSourceCopyDebuggingEnabled_cold_1();
  }

  return _kAXSCachePhotosensitiveSourceCopyDebuggingEnabled;
}

void _AXSPhotosensitiveSourceCopyDebuggingSetEnabled(uint64_t a1)
{
  _kAXSCachePhotosensitiveSourceCopyDebuggingEnabled = a1;
  _setPreferenceAppWithNotification(@"PhotosensitiveSourceCopyDebugging", 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.pse.source.copy.debugging");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSPhotosensitiveVisualDebuggingEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSPhotosensitiveVisualDebuggingEnabled_onceToken != -1)
  {
    _AXSPhotosensitiveVisualDebuggingEnabled_cold_1();
  }

  return _kAXSCachePhotosensitiveVisualDebuggingEnabled;
}

void _AXSPhotosensitiveVisualDebuggingSetEnabled(uint64_t a1)
{
  _kAXSCachePhotosensitiveVisualDebuggingEnabled = a1;
  _setPreferenceAppWithNotification(@"PhotosensitiveVisualDebugging", 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.pse.visual.debugging");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSTwiceRemoteScreenEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSTwiceRemoteScreenEnabled_onceToken != -1)
  {
    _AXSTwiceRemoteScreenEnabled_cold_1();
  }

  return _kAXSCacheTwiceRemoteScreenEnabled;
}

void _AXSTwiceRemoteScreenSetEnabled(uint64_t a1)
{
  _kAXSCacheTwiceRemoteScreenEnabled = a1;
  _setPreferenceAppWithNotification(kAXSTwiceRemoteScreenEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.twice.remote.screen.enabled");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSTwiceRemoteScreenPlatform(uint64_t a1, uint64_t a2)
{
  if (_AXSTwiceRemoteScreenPlatform_onceToken != -1)
  {
    _AXSTwiceRemoteScreenPlatform_cold_1();
  }

  return _kAXSCacheTwiceRemoteScreenPlatform;
}

void _AXSTwiceRemoteScreenSetPlatform(uint64_t a1)
{
  v1 = a1;
  _kAXSCacheTwiceRemoteScreenPlatform = a1;
  _setNumberPreferenceApp(kAXSTwiceRemoteScreenPlatformPreference, kCFNumberCFIndexType, &v1, @"com.apple.accessibility.cache.twice.remote.screen.platform", 0);
}

uint64_t _AXSIncreaseBrightnessFloorEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSIncreaseBrightnessFloorEnabled_onceToken != -1)
  {
    _AXSIncreaseBrightnessFloorEnabled_cold_1();
  }

  return _kAXSCacheIncreaseBrightnessFloorEnabled;
}

void _AXSIncreaseBrightnessFloorSetEnabled(uint64_t a1)
{
  _kAXSCacheIncreaseBrightnessFloorEnabled = a1;
  _setPreferenceAppWithNotification(kAXSIncreaseBrightnessFloorEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.increase.brightness.floor.enabled");

  _updateAccessibilitySettings(v1);
}

void _AXSSetAppleTVRemoteUsesSimpleGestures(uint64_t a1)
{
  _kAXSCacheAppleTVSimpleGesturesEnabled = a1;
  _setPreferenceAppWithNotification(kAXSAppleTVSimpleGesturesEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.apple.tv.simple.gestures");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAppleTVRemoteUsesSimpleGestures(uint64_t a1, uint64_t a2)
{
  if (_AXSAppleTVRemoteUsesSimpleGestures_onceToken != -1)
  {
    _AXSAppleTVRemoteUsesSimpleGestures_cold_1();
  }

  return _kAXSCacheAppleTVSimpleGesturesEnabled;
}

void _AXSSetAppleTVRemoteForceLiveTVButtons(uint64_t a1)
{
  _kAXSCacheAppleTVForceLiveTVButtonsEnabled = a1;
  _setPreferenceAppWithNotification(kAXSAppleTVForceLiveTVButtonsEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.apple.tv.live.tv.buttons");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAppleTVRemoteForceLiveTVButtons(uint64_t a1, uint64_t a2)
{
  if (_AXSAppleTVRemoteForceLiveTVButtons_onceToken != -1)
  {
    _AXSAppleTVRemoteForceLiveTVButtons_cold_1();
  }

  return _kAXSCacheAppleTVForceLiveTVButtonsEnabled;
}

void _AXSSetAppleTVRemoteClickpadTapsForDirectionalNavigationEnabled(uint64_t a1)
{
  _kAXSCacheAppleTVRemoteClickpadTapsForDirectionalNavigationEnabled = a1;
  _setPreferenceAppWithNotification(kAXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.AppleTVRemoteClickpadTapsForDirectionalNavigationEnabled");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabled_onceToken != -1)
  {
    _AXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabled_cold_1();
  }

  return _kAXSCacheAppleTVRemoteClickpadTapsForDirectionalNavigationEnabled;
}

void _AXSSetAppleTVScaledUIEnabled(uint64_t a1)
{
  _kAXSCacheAppleTVScaledUIEnabled = a1;
  _setPreferenceAppWithNotification(kAXSAppleTVScaledUIEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.AppleTVScaledUIEnabled");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAppleTVScaledUIEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSAppleTVScaledUIEnabled_onceToken != -1)
  {
    _AXSAppleTVScaledUIEnabled_cold_1();
  }

  return _kAXSCacheAppleTVScaledUIEnabled;
}

uint64_t _AXSGetUSBRMDisablers(uint64_t a1, uint64_t a2)
{
  if (_AXSGetUSBRMDisablers_onceToken != -1)
  {
    _AXSGetUSBRMDisablers_cold_1();
  }

  return _kAXSCacheUSBRMDisablers;
}

void _AXSSetUSBRMDisablers(int a1)
{
  v1 = a1;
  _kAXSCacheUSBRMDisablers = a1;
  _setNumberPreferenceApp(kAXSUSBRMDisablersPreference, kCFNumberIntType, &v1, @"com.apple.accessibility.cache.AXSUSBRMDisablersNotification", 0);
}

const void *_AXSCopySettingsDataBlobForBuddy()
{
  v0 = [getAXBuddyDataPackageClass() dataBlobForBuddy];
  v1 = v0;
  if (v0)
  {
    CFRetain(v0);
  }

  return v1;
}

id getAXBuddyDataPackageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXBuddyDataPackageClass_softClass;
  v7 = getAXBuddyDataPackageClass_softClass;
  if (!getAXBuddyDataPackageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXBuddyDataPackageClass_block_invoke;
    v3[3] = &unk_1E6F45698;
    v3[4] = &v4;
    __getAXBuddyDataPackageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18632FBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _AXSRestoreSettingsFromDataBlobForBuddy(uint64_t a1)
{
  AXBuddyDataPackageClass = getAXBuddyDataPackageClass();

  return [AXBuddyDataPackageClass restoreDataBlobForBuddy:a1];
}

uint64_t _AXSResetAccessibilityFeatures()
{
  v0 = AXUtilsBackBoardServer();
  if (v0)
  {
    v2 = v0;
    if (objc_opt_respondsToSelector())
    {
      [v2 resetAccessibilityFeatures];
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

id AXNSLocalizedStringForLocale(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a4)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = a5;
    v11 = a3;
    v12 = a2;
    v13 = a1;
    v14 = [a4 bundleURL];
    v15 = CFBundleCreate(v9, v14);

    v16 = AXLocalizedStringForLocale(v13, v12, v11, v15, v10);

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

CFTypeRef AXLocalizedStringForLocale(uint64_t a1, uint64_t a2, uint64_t a3, CFBundleRef bundle, void *a5)
{
  if (!bundle)
  {
    return 0;
  }

  v8 = MEMORY[0x1E696AAE8];
  v9 = CFBundleCopyBundleURL(bundle);
  v10 = [v8 bundleWithURL:v9];

  v11 = AXLocalizationForLocale(a5, v10);
  v12 = CFBundleCopyLocalizedStringForLocalization();
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      if (([v12 isEqualToString:a2] & 1) == 0 && (a2 || !objc_msgSend(v13, "isEqualToString:", a1)))
      {
        goto LABEL_10;
      }

      CFRelease(v13);
    }

    v13 = CFBundleCopyLocalizedStringForLocalization();
  }

LABEL_10:
  v15 = CFAutorelease(v13);

  return v15;
}

id AXLocalizationForLocale(void *a1, void *a2)
{
  v2 = 0;
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = MEMORY[0x1E696AAE8];
    v5 = a1;
    v6 = [a2 localizations];
    v10[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [v4 preferredLocalizationsFromArray:v6 forPreferences:v7];

    v2 = [v8 firstObject];
  }

  return v2;
}

uint64_t _AXSAutomaticSubtitlesShowWhenLanguageMismatch(uint64_t a1, uint64_t a2)
{
  if (_AXSAutomaticSubtitlesShowWhenLanguageMismatch_onceToken != -1)
  {
    _AXSAutomaticSubtitlesShowWhenLanguageMismatch_cold_1();
  }

  return _kAXSCacheAutomaticSubtitlesShowWhenLanguageMismatch;
}

void _AXSSetAutomaticSubtitlesShowWhenLanguageMismatch(uint64_t a1)
{
  _kAXSCacheAutomaticSubtitlesShowWhenLanguageMismatch = a1;
  _setPreferenceAppWithNotification(kAXSAutomaticSubtitlesShowWhenLanguageMismatchPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.AutomaticSubtitlesShowWhenLanguageMismatch");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAutomaticSubtitlesShowWhenMuted(uint64_t a1, uint64_t a2)
{
  if (_AXSAutomaticSubtitlesShowWhenMuted_onceToken != -1)
  {
    _AXSAutomaticSubtitlesShowWhenMuted_cold_1();
  }

  return _kAXSCacheAutomaticSubtitlesShowWhenMuted;
}

void _AXSSetAutomaticSubtitlesShowWhenMuted(uint64_t a1)
{
  _kAXSCacheAutomaticSubtitlesShowWhenMuted = a1;
  _setPreferenceAppWithNotification(kAXSAutomaticSubtitlesShowWhenMutedPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.AutomationSubtitlesShowWhenMuted");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSAutomaticSubtitlesShowOnSkipBack(uint64_t a1, uint64_t a2)
{
  if (_AXSAutomaticSubtitlesShowOnSkipBack_onceToken != -1)
  {
    _AXSAutomaticSubtitlesShowOnSkipBack_cold_1();
  }

  return _kAXSCacheAutomaticSubtitlesShowOnSkipBack;
}

void _AXSSetAutomaticSubtitlesShowOnSkipBack(uint64_t a1)
{
  _kAXSCacheAutomaticSubtitlesShowOnSkipBack = a1;
  _setPreferenceAppWithNotification(kAXSAutomaticSubtitlesShowOnSkipBackPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.AutomationSubtitlesShowOnSkipBack");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSRosebudLoggingEnabled(uint64_t a1, uint64_t a2)
{
  if (_AXSRosebudLoggingEnabled_onceToken != -1)
  {
    _AXSRosebudLoggingEnabled_cold_1();
  }

  return _kAXSCacheRosebudLoggingEnabled;
}

void _AXSRosebudLoggingSetEnabled(uint64_t a1)
{
  _kAXSCacheRosebudLoggingEnabled = a1;
  _setPreferenceAppWithNotification(kAXSRosebudLoggingEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.rosebud.logging.enabled");

  _updateAccessibilitySettings(v1);
}

uint64_t _AXSSpeechSynthesisOptions()
{
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  if (_AXSSpeechSynthesisOptions_onceToken != -1)
  {
    _AXSSpeechSynthesisOptions_cold_1();
  }

  return _kAXSCacheSpeechSynthesisOptions;
}

void _AXSSpeechSynthesisSetOptions(uint64_t a1)
{
  v2 = a1;
  if (os_variant_has_internal_ui())
  {
    _kAXSCacheSpeechSynthesisOptions = a1;
    _setNumberPreferenceApp(kAXSSpeechSynthesisOptionsPreference, kCFNumberCFIndexType, &v2, @"com.apple.accessibility.cache.speech.synth.options", 0);
  }
}

uint64_t _AXSAllowsMixToUplink(uint64_t a1, uint64_t a2)
{
  if (_AXSAllowsMixToUplink_onceToken != -1)
  {
    _AXSAllowsMixToUplink_cold_1();
  }

  return _kAXSCacheAllowsMixToUplink;
}

void _AXSSetAllowsMixToUplink(uint64_t a1)
{
  _kAXSCacheAllowsMixToUplink = a1;
  _setPreferenceAppWithNotification(@"AXSAllowsMixToUplinkPreference", 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], @"com.apple.accessibility.cache.mix.to.uplink.notification");

  _updateAccessibilitySettings(v1);
}

const __CFBoolean *_AXSOnDeviceEyeTrackingEnabled()
{
  result = _copyValuePreferenceApp(@"AssistiveTouchMouseOnDeviceEyeTrackingEnabledPreference", @"com.apple.AssistiveTouch", 0);
  if (result)
  {
    v1 = result;
    Value = CFBooleanGetValue(result);
    CFRelease(v1);
    return Value;
  }

  return result;
}

void *__getAXMediaPreferencesParticipatingInGuestPassSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXMediaPreferencesParticipatingInGuestPass");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXMediaPreferencesParticipatingInGuestPassSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUtilitiesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E6F456B8;
    v4 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    AccessibilityUtilitiesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXProcessIsBackboardSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXProcessIsBackboard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsBackboardSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _invalidateAllCacheSmartInvertPreferences(uint64_t a1)
{
  v1 = cachedSmartInvertPreferences(a1);
  [v1 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_2677];
}

void _invalidateCacheSmartInvertPreference(uint64_t a1)
{
  v2 = cachedSmartInvertPreferences(a1);
  [v2 setValue:&unk_1EF5506B8 forKey:a1];

  v4 = AXSupportLogCommon(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _invalidateCacheSmartInvertPreference_cold_1();
  }
}

void ___processIsResponsibleForPreferenceObserving_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _processIsResponsibleForPreferenceObserving__sProcessIsBackboard = [v0 isEqualToString:@"com.apple.backboardd"];
}

uint64_t __ObservePreferenceDistributed_block_invoke(uint64_t a1)
{
  if (ObserverOnceToken != -1)
  {
    __ObservePreferenceDistributed_block_invoke_cold_1();
  }

  if (InitializePrefsChangedNotificationQueue_onceToken != -1)
  {
    __ObservePreferenceDistributed_block_invoke_cold_2();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ObservePreferenceDistributed_block_invoke_3;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(PrefsChangedNotificationQueue, block);
  return [DefaultsObserver startObservingPreference:*(a1 + 40) andBroadcastDarwinNotification:*(a1 + 32) postGlobally:1];
}

void __ObservePreferenceDistributed_block_invoke_2()
{
  if (!DefaultsObserver)
  {
    DefaultsObserver = objc_alloc_init(AXSupportDefaultsObserver);

    MEMORY[0x1EEE66BB8]();
  }
}

void __ObservePreferenceDistributed_block_invoke_3(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t _handlePrefsChangedNotification(uint64_t a1)
{
  if (_AXSAccessibilityPreferenceDomain_onceToken != -1)
  {
    _handlePhoneticFeedbackPrefsChangedNotification_cold_1();
  }

  v2 = _AXSAccessibilityPreferenceDomain_Domain;

  return CFPreferencesAppSynchronize(v2);
}

void _handlePreferenceChangeWithLocalNotification(const __CFString *a1)
{
  if (_AXSAccessibilityPreferenceDomain_onceToken != -1)
  {
    _handlePhoneticFeedbackPrefsChangedNotification_cold_1();
  }

  CFPreferencesAppSynchronize(_AXSAccessibilityPreferenceDomain_Domain);
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, a1, 0, 0, 1u);
}

void _axsHandleMusicHapticActiveStatusChanged()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x1E696F720] object:0];
}

void __AXUtilsBackBoardServer_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithPath:AXSAccessibilityUtilitiesPath()];
  [v0 load];
}

void ___computedTripleClickOptions_block_invoke()
{
  v0 = _computedTripleClickOptions_ComputedOptions;
  _computedTripleClickOptions_ComputedOptions = &unk_1EF550790;
}

uint64_t _fetchCachePreference(__CFString *a1, __CFString *a2, unsigned int *p_valuePtr, unsigned int *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  valuePtr = -1;
  if (a4)
  {
    v7 = *a4;
    valuePtr = *a4;
  }

  else
  {
    NumberPreference = _getNumberPreference(a1, a2);
    if (!NumberPreference)
    {
      goto LABEL_13;
    }

    CFNumberGetValue(NumberPreference, kCFNumberIntType, &valuePtr);
    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = valuePtr;
      if (valuePtr == -1)
      {
        v11 = @"Empty";
      }

      else
      {
        v11 = [MEMORY[0x1E696AD98] numberWithInt:valuePtr];
      }

      *buf = 138412546;
      v20 = a1;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_186307000, v9, OS_LOG_TYPE_DEFAULT, "Read Per-App: preference = %@, result = %@", buf, 0x16u);
      if (v10 != -1)
      {
      }
    }

    v7 = valuePtr;
  }

  if (v7 != -1)
  {
LABEL_12:
    p_valuePtr = &valuePtr;
    goto LABEL_14;
  }

LABEL_13:
  if (!p_valuePtr)
  {
    v13 = _getNumberPreference(a1, 0);
    if (v13)
    {
      Value = CFNumberGetValue(v13, kCFNumberIntType, &valuePtr);
      v15 = AXSupportLogCommon(Value);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = valuePtr;
        if (valuePtr == -1)
        {
          v17 = @"Empty";
        }

        else
        {
          v17 = [MEMORY[0x1E696AD98] numberWithInt:valuePtr];
        }

        *buf = 138412802;
        v20 = a2;
        v21 = 2112;
        v22 = a1;
        v23 = 2112;
        v24 = v17;
        _os_log_debug_impl(&dword_186307000, v15, OS_LOG_TYPE_DEBUG, "Read Global: appID = %@, preference = %@, result = %@", buf, 0x20u);
        if (v16 != -1)
        {
        }
      }
    }

    goto LABEL_12;
  }

LABEL_14:
  if (*p_valuePtr == -1)
  {
    return 0;
  }

  else
  {
    return *p_valuePtr;
  }
}

void ___updateInvertColorsValueFromMediaAccessibility_block_invoke()
{
  _setPreferenceAppWithNotification(kAXSInvertColorsEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithInt:_kAXSCacheInvertColors], 0);

  _updateAccessibilitySettings(v0);
}

uint64_t __cachedSmartInvertPreferences_block_invoke()
{
  cachedSmartInvertPreferences_CachedSmartInvertPreferences = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

Class __getLSApplicationRecordClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6F45738;
    v5 = 0;
    CoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    __getLSApplicationRecordClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("LSApplicationRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationRecordClass_block_invoke_cold_1();
  }

  getLSApplicationRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void postNotification(const __CFString *a1)
{
  if (a1)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, a1, 0, 0, 1u);
    if (_AXSCurrentProcessIsWebContent_onceToken != -1)
    {
      _isProcessDistributedNotificationSender_cold_1();
    }

    if ((_AXSCurrentProcessIsWebContent_IsWebContent & 1) == 0 && _processIsResponsibleForPreferenceObserving())
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

      CFNotificationCenterPostNotification(DarwinNotifyCenter, a1, 0, 0, 1u);
    }
  }
}

Class __getAXBuddyDataPackageClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  result = objc_getClass("AXBuddyDataPackage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXBuddyDataPackageClass_block_invoke_cold_1();
  }

  getAXBuddyDataPackageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

uint64_t AXRuntimeCheck_HasANE()
{
  if (AXRuntimeCheck_HasANE_onceToken != -1)
  {
    AXRuntimeCheck_HasANE_cold_1();
  }

  return AXRuntimeCheck_HasANE__hasANE;
}

uint64_t AXRuntimeCheck_isANEDeviceH13plus()
{
  if (AXRuntimeCheck_isANEDeviceH13plus_onceToken != -1)
  {
    AXRuntimeCheck_isANEDeviceH13plus_cold_1();
  }

  return AXRuntimeCheck_isANEDeviceH13plus_isANEH13plus;
}

uint64_t AXRuntimeCheck_SupportsMedina(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SupportsMedina_onceToken != -1)
  {
    AXRuntimeCheck_SupportsMedina_cold_1();
  }

  return AXRuntimeCheck_SupportsMedina__supportsMedina;
}

void sub_186331580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXRuntimeCheck_SupportsNearbyDeviceControl()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    IsPhone = AXDeviceIsPhone(result, v1);
    if (IsPhone)
    {
      return 1;
    }

    IsPod = AXDeviceIsPod(IsPhone, v3);
    if (IsPod)
    {
      return 1;
    }

    else
    {

      return AXDeviceIsWatch(IsPod, v5);
    }
  }

  return result;
}

uint64_t AXRuntimeCheck_SupportsMacAXV2(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SupportsMacAXV2_onceToken != -1)
  {
    AXRuntimeCheck_SupportsMacAXV2_cold_1();
  }

  return AXRuntimeCheck_SupportsMacAXV2__supportsMacAXV2;
}

uint64_t AXRuntimeCheck_VoiceOverSupportsNeuralVoices(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_VoiceOverSupportsNeuralVoices_onceToken != -1)
  {
    AXRuntimeCheck_VoiceOverSupportsNeuralVoices_cold_1();
  }

  return AXRuntimeCheck_VoiceOverSupportsNeuralVoices__supportsMacAXV2;
}

uint64_t AXRuntimeCheck_MauiSSE(uint64_t a1)
{
  if (AXRuntimeCheck_MauiSSE_onceToken != -1)
  {
    AXRuntimeCheck_MauiSSE_cold_1();
  }

  if (AXRuntimeCheck_MauiSSE__mauiSSE)
  {
    v1 = 1;
  }

  else
  {
    if (AXRuntimeCheck_MauiSSEOnly_onceToken_MauiSSEOnly != -1)
    {
      AXRuntimeCheck_MauiSSE_cold_2();
    }

    v1 = AXRuntimeCheck_MauiSSEOnly__ffEnabled_MauiSSEOnly;
  }

  return v1 & 1;
}

uint64_t AXRuntimeCheck_MauiSSEOnly(uint64_t a1)
{
  if (AXRuntimeCheck_MauiSSEOnly_onceToken_MauiSSEOnly != -1)
  {
    AXRuntimeCheck_MauiSSE_cold_2();
  }

  return AXRuntimeCheck_MauiSSEOnly__ffEnabled_MauiSSEOnly;
}

uint64_t AXRuntimeCheck_PerVoiceSettings(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_PerVoiceSettings_onceToken_PerVoiceSettings != -1)
  {
    AXRuntimeCheck_PerVoiceSettings_cold_1();
  }

  return AXRuntimeCheck_PerVoiceSettings__ffEnabled_PerVoiceSettings;
}

uint64_t AXRuntimeCheck_SiriSSEOnly(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SiriSSEOnly_onceToken_SiriSSEOnly != -1)
  {
    AXRuntimeCheck_SiriSSEOnly_cold_1();
  }

  return AXRuntimeCheck_SiriSSEOnly__ffEnabled_SiriSSEOnly;
}

uint64_t AXRuntimeCheck_SpeakUp(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SpeakUp_onceToken_SpeakUp != -1)
  {
    AXRuntimeCheck_SpeakUp_cold_1();
  }

  return AXRuntimeCheck_SpeakUp__ffEnabled_SpeakUp;
}

uint64_t AXRuntimeCheck_DwellKeyboardKeyTimer(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_DwellKeyboardKeyTimer_onceToken_DwellKeyboardKeyTimer != -1)
  {
    AXRuntimeCheck_DwellKeyboardKeyTimer_cold_1();
  }

  return AXRuntimeCheck_DwellKeyboardKeyTimer__ffEnabled_DwellKeyboardKeyTimer;
}

uint64_t AXRuntimeCheck_DwellKeyboardSwipe_iPad(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_DwellKeyboardSwipe_iPad_onceToken_DwellKeyboardSwipe_iPad != -1)
  {
    AXRuntimeCheck_DwellKeyboardSwipe_iPad_cold_1();
  }

  return AXRuntimeCheck_DwellKeyboardSwipe_iPad__ffEnabled_DwellKeyboardSwipe_iPad;
}

uint64_t AXRuntimeCheck_DwellKeyboardSwipeContinuous(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_DwellKeyboardSwipeContinuous_onceToken_DwellKeyboardSwipeContinuous != -1)
  {
    AXRuntimeCheck_DwellKeyboardSwipeContinuous_cold_1();
  }

  return AXRuntimeCheck_DwellKeyboardSwipeContinuous__ffEnabled_DwellKeyboardSwipeContinuous;
}

uint64_t AXRuntimeCheck_DwellKeyboardSwipe(uint64_t a1, uint64_t a2)
{
  if (!AXDeviceIsPad(a1, a2))
  {
    goto LABEL_5;
  }

  if (AXRuntimeCheck_DwellKeyboardSwipe_iPad_onceToken_DwellKeyboardSwipe_iPad != -1)
  {
    AXRuntimeCheck_DwellKeyboardSwipe_iPad_cold_1();
  }

  if (AXRuntimeCheck_DwellKeyboardSwipe_iPad__ffEnabled_DwellKeyboardSwipe_iPad != 1)
  {
    v2 = 0;
  }

  else
  {
LABEL_5:
    if (AXRuntimeCheck_DwellKeyboardSwipe_onceToken_DwellKeyboardSwipe != -1)
    {
      AXRuntimeCheck_DwellKeyboardSwipe_cold_2();
    }

    v2 = AXRuntimeCheck_DwellKeyboardSwipe__ffEnabled_DwellKeyboardSwipe;
  }

  return v2 & 1;
}

uint64_t AXRuntimeCheck_MediaAnalysisSupport(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_MediaAnalysisSupport_onceToken != -1)
  {
    AXRuntimeCheck_MediaAnalysisSupport_cold_1();
  }

  return AXRuntimeCheck_MediaAnalysisSupport__supportsMediaAnalysisServices;
}

uint64_t AXRuntimeCheck_ScreenRecognitionSupport(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_ScreenRecognitionSupport_onceToken != -1)
  {
    AXRuntimeCheck_ScreenRecognitionSupport_cold_1();
  }

  return AXRuntimeCheck_ScreenRecognitionSupport__supportsScreenRecognition;
}

uint64_t AXRuntimeCheck_LiveCaptionsSupportsLanguageExpansion()
{
  v4 = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  if (AXRuntimeCheck_isANEDeviceH13plus_onceToken != -1)
  {
    AXRuntimeCheck_isANEDeviceH13plus_cold_1();
  }

  v0 = AXRuntimeCheck_isANEDeviceH13plus_isANEH13plus;
  v1 = AXLogLiveTranscription();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = v0;
    _os_log_impl(&dword_186307000, v1, OS_LOG_TYPE_DEFAULT, "Live Captions supports language expansion %d", v3, 8u);
  }

  return v0;
}

uint64_t AXRuntimeCheck_SoundRecognitionMedinaSupportEnabled(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SupportsMedina_onceToken != -1)
  {
    AXRuntimeCheck_SupportsMedina_cold_1();
  }

  if (AXRuntimeCheck_SupportsMedina__supportsMedina != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t AXRuntimeCheck_SoundRecognitionMedinaKShotEnrollmentEnabled(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SupportsMedina_onceToken != -1)
  {
    AXRuntimeCheck_SupportsMedina_cold_1();
  }

  return 0;
}

uint64_t AXRuntimeCheck_SupportsIncreaseBrightnessFloor(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SupportsIncreaseBrightnessFloor_onceToken != -1)
  {
    AXRuntimeCheck_SupportsIncreaseBrightnessFloor_cold_1();
  }

  return AXRuntimeCheck_SupportsIncreaseBrightnessFloor__supportsIncreaseBrightnessFloor;
}

uint64_t AXRuntimeCheck_SupportsDoseAnalysis(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SupportsDoseAnalysis_onceToken != -1)
  {
    AXRuntimeCheck_SupportsDoseAnalysis_cold_1();
  }

  return AXRuntimeCheck_SupportsDoseAnalysis__supportsDoseAnalysis;
}

uint64_t AXRuntimeCheck_SupportsVoiceoverIndepedentVolume(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SupportsVoiceoverIndepedentVolume_onceToken != -1)
  {
    AXRuntimeCheck_SupportsVoiceoverIndepedentVolume_cold_1();
  }

  return AXRuntimeCheck_SupportsVoiceoverIndepedentVolume__supportsVoiceoverIndepedentVolume;
}

uint64_t AXRuntimeCheck_SupportsBrailleUI(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SupportsBrailleUI_onceToken != -1)
  {
    AXRuntimeCheck_SupportsBrailleUI_cold_1();
  }

  return AXRuntimeCheck_SupportsBrailleUI__supportsBrailleUI;
}

uint64_t AXRuntimeCheck_SupportsWatchControlAXFocusSystem(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SupportsWatchControlAXFocusSystem_onceToken != -1)
  {
    AXRuntimeCheck_SupportsWatchControlAXFocusSystem_cold_1();
  }

  return AXRuntimeCheck_SupportsWatchControlAXFocusSystem__supportsWatchControlAXFocusSystem;
}

uint64_t AXRuntimeCheck_SupportsVoiceOverReadPrefixes(uint64_t a1, uint64_t a2)
{
  if (AXRuntimeCheck_SupportsVoiceOverReadPrefixes_onceToken != -1)
  {
    AXRuntimeCheck_SupportsVoiceOverReadPrefixes_cold_1();
  }

  return AXRuntimeCheck_SupportsVoiceOverReadPrefixes__supportsVoiceOverReadPrefixes;
}

uint64_t __AppleNeuralEngineLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppleNeuralEngineLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMGGetBoolAnswerSymbolLoc_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = libMobileGestaltLibraryCore_frameworkLibrary;
  v10 = libMobileGestaltLibraryCore_frameworkLibrary;
  if (!libMobileGestaltLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __libMobileGestaltLibraryCore_block_invoke;
    v4[4] = &unk_1E6F45788;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_1E6F45768;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libMobileGestaltLibraryCore_frameworkLibrary = *(v5[1] + 24);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    __getMGGetBoolAnswerSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MGGetBoolAnswer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetBoolAnswerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_186332204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMobileGestaltLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMobileGestaltLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL AXDeviceIsPad(uint64_t a1, uint64_t a2)
{
  if (AXDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    AXDeviceIsPad_cold_1();
  }

  return AXDeviceGetType__AXDeviceType == 3;
}

uint64_t AXDeviceGetType(uint64_t a1, uint64_t a2)
{
  if (AXDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    AXDeviceIsPad_cold_1();
  }

  return AXDeviceGetType__AXDeviceType;
}

BOOL AXDeviceIsPhone(uint64_t a1, uint64_t a2)
{
  if (AXDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    AXDeviceIsPad_cold_1();
  }

  return AXDeviceGetType__AXDeviceType == 1;
}

uint64_t __AXDeviceGetType_block_invoke()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMGGetSInt32AnswerSymbolLoc_ptr;
  v7 = getMGGetSInt32AnswerSymbolLoc_ptr;
  if (!getMGGetSInt32AnswerSymbolLoc_ptr)
  {
    v1 = libMobileGestaltLibrary();
    v5[3] = dlsym(v1, "MGGetSInt32Answer");
    getMGGetSInt32AnswerSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    __AXDeviceGetType_block_invoke_cold_1();
  }

  result = v0(@"DeviceClassNumber", 0xFFFFFFFFLL);
  v3 = result - 1;
  if (result - 1) <= 0xA && ((0x46Fu >> v3))
  {
    AXDeviceGetType__AXDeviceType = qword_186336F10[v3];
  }

  return result;
}

void sub_186332488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL AXDeviceIsPod(uint64_t a1, uint64_t a2)
{
  if (AXDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    AXDeviceIsPad_cold_1();
  }

  return AXDeviceGetType__AXDeviceType == 2;
}

BOOL AXDeviceIsWatch(uint64_t a1, uint64_t a2)
{
  if (AXDeviceGetType__AXCurrentDeviceTypeOnceToken != -1)
  {
    AXDeviceIsPad_cold_1();
  }

  return AXDeviceGetType__AXDeviceType == 5;
}

uint64_t AXDeviceSupportsHapticMusic(uint64_t a1, uint64_t a2)
{
  if (AXDeviceSupportsHapticMusic_onceToken != -1)
  {
    AXDeviceSupportsHapticMusic_cold_1();
  }

  return AXDeviceSupportsHapticMusic_Supported;
}

uint64_t __AXDeviceSupportsHapticMusic_block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  if (result)
  {
    v18 = -1431778695;
    v17 = xmmword_186336E58;
    if (soft_MGIsDeviceOfType(&v17) & 1) != 0 || (v16 = -121925081, v15 = xmmword_186336E6C, (soft_MGIsDeviceOfType(&v15)) || (v14 = -820493242, v13 = xmmword_186336E80, (soft_MGIsDeviceOfType(&v13)) || (v12 = -235416490, v11 = xmmword_186336E94, (soft_MGIsDeviceOfType(&v11)) || (v10 = -61007701, v9 = xmmword_186336EA8, (soft_MGIsDeviceOfType(&v9)) || (v8 = -1843102369, v7 = xmmword_186336EBC, (soft_MGIsDeviceOfType(&v7)) || (v6 = -427474227, v5 = xmmword_186336ED0, (soft_MGIsDeviceOfType(&v5)) || (v4 = 1477534141, v3 = xmmword_186336EE4, (soft_MGIsDeviceOfType(&v3)) || (v2 = -232427879, v1 = xmmword_186336EF8, (soft_MGIsDeviceOfType(&v1)))
    {
      result = 0;
    }

    else
    {
      result = soft_MGGetBoolAnswer();
    }

    AXDeviceSupportsHapticMusic_Supported = result;
  }

  return result;
}

uint64_t soft_MGIsDeviceOfType(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getMGIsDeviceOfTypeSymbolLoc_ptr;
  v8 = getMGIsDeviceOfTypeSymbolLoc_ptr;
  if (!getMGIsDeviceOfTypeSymbolLoc_ptr)
  {
    v3 = libMobileGestaltLibrary();
    v6[3] = dlsym(v3, "MGIsDeviceOfType");
    getMGIsDeviceOfTypeSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    soft_MGIsDeviceOfType_cold_1();
  }

  return v2(a1);
}

void sub_186332828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_MGGetBoolAnswer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMGGetBoolAnswerSymbolLoc_ptr_0;
  v6 = getMGGetBoolAnswerSymbolLoc_ptr_0;
  if (!getMGGetBoolAnswerSymbolLoc_ptr_0)
  {
    v1 = libMobileGestaltLibrary();
    v4[3] = dlsym(v1, "MGGetBoolAnswer");
    getMGGetBoolAnswerSymbolLoc_ptr_0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_MGGetBoolAnswer_cold_1();
  }

  return v0(@"cBy4BcYs5YWtFHbBpt4C6A");
}

void sub_186332924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXDeviceSupportsLiveRecognition(uint64_t a1, uint64_t a2)
{
  if (AXDeviceSupportsLiveRecognition_onceToken != -1)
  {
    AXDeviceSupportsLiveRecognition_cold_1();
  }

  return AXDeviceSupportsLiveRecognition_Supported;
}

uint64_t __AXDeviceSupportsLiveRecognition_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    AXDeviceSupportsLiveRecognition_Supported = 1;
  }

  return result;
}

void *__getMGGetSInt32AnswerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libMobileGestaltLibrary();
  result = dlsym(v2, "MGGetSInt32Answer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetSInt32AnswerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t libMobileGestaltLibrary()
{
  v11 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = libMobileGestaltLibraryCore_frameworkLibrary_0;
  v8 = libMobileGestaltLibraryCore_frameworkLibrary_0;
  if (!libMobileGestaltLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __libMobileGestaltLibraryCore_block_invoke_0;
    v2[4] = &unk_1E6F45788;
    v3 = &v5;
    v4 = v2;
    v9 = xmmword_1E6F457A8;
    v10 = 0;
    v6[3] = _sl_dlopen();
    libMobileGestaltLibraryCore_frameworkLibrary_0 = *(v3[1] + 24);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    libMobileGestaltLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

void sub_186332B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMobileGestaltLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMobileGestaltLibraryCore_frameworkLibrary_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMGIsDeviceOfTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libMobileGestaltLibrary();
  result = dlsym(v2, "MGIsDeviceOfType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGIsDeviceOfTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMGGetBoolAnswerSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = libMobileGestaltLibrary();
  result = dlsym(v2, "MGGetBoolAnswer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetBoolAnswerSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __AXSGetCachedPreference_block_invoke_3_cold_1(uint64_t a1, unsigned int **a2)
{
  v2 = **a2;
  if (v2 == -1)
  {
    v3 = @"Empty";
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:**a2];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  if (v2 != -1)
  {
  }
}

void _axsHandleSystemUILoadInvertBundles_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __AXSInitializeAsynchronouslyPerAppSmartInvert_block_invoke_cold_3(unsigned int *a1)
{
  v1 = *a1;
  if (v1 == -1)
  {
    v2 = @"Empty";
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInt:v1];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_186307000, v3, v4, "Read Per-App: preference = %@, result = %@", v5, v6, v7, v8);
  if (v1 != -1)
  {
  }
}

void __AXSInitializeAsynchronouslyPerAppSmartInvert_block_invoke_cold_4()
{
  v0 = _kAXSCacheInvertColors;
  if (_kAXSCacheInvertColors == -1)
  {
    v1 = @"Empty";
  }

  else
  {
    v1 = [MEMORY[0x1E696AD98] numberWithInt:_kAXSCacheInvertColors];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_186307000, v2, v3, "Updated cache: preference = %@, result = %@", v4, v5, v6, v7);
  if (v0 != -1)
  {
  }
}

void __AXSInitializeAsynchronouslyPerAppSmartInvert_block_invoke_cold_5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __AXSInitializeAsynchronouslyPerAppSmartInvert_block_invoke_cold_6()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __AXSGetCachedSmartInvert_block_invoke_cold_1(unsigned int *a1)
{
  v1 = *a1;
  if (v1 == -1)
  {
    v2 = @"Empty";
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInt:v1];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_186307000, v3, v4, "Read Global: preference = %@, result = %@", v5, v6, v7, v8);
  if (v1 != -1)
  {
  }
}

void _updateAccessibilitySettings_cold_16()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void _setPreferenceAppWithNotification_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL AXProcessIsBackboard_Soft(void)"];
  [v0 handleFailureInFunction:v1 file:@"AccessibilitySupport.m" lineNumber:59 description:{@"%s", dlerror()}];

  __break(1u);
}

void _setPreferenceAppWithNotification_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _AXSSetTripleClickOptions_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_186307000, v0, OS_LOG_TYPE_FAULT, "Invalid attempt to insert duplicates into the triple click menu: %@", v1, 0xCu);
}

void _AXSInvertColorsEnabledAppCached_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _AXSInvertColorsEnabledAppCached_cold_2(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 == -1)
  {
    v3 = @"Empty";
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:*a2];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_186307000, v4, v5, "Fetched cachedSmartInvertPreferences to App: appID = %@, res = %@", v6, v7, v8, v9);
  if (v2 != -1)
  {
  }
}

void _AXSSetDefaultRouteForCall_cold_1(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void _updateBoolCachePreferenceAndRepostNotification_cold_1(uint64_t a1, unsigned __int8 *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 138412802;
  v5 = 0;
  v6 = 2112;
  v7 = a1;
  v8 = 1024;
  v9 = v3;
  _os_log_debug_impl(&dword_186307000, log, OS_LOG_TYPE_DEBUG, "Update Cache Value On Notification: appID = %@, preference = %@, result = %d", &v4, 0x1Cu);
}

void _updateCacheSmartInvertAndRepostNotification_cold_1(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 == -1)
  {
    v3 = @"Empty";
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:*a2];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
  if (v2 != -1)
  {
  }
}

void _updateCacheSmartInvertAndRepostNotification_cold_2(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 == -1)
  {
    v3 = @"Empty";
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:*a2];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
  if (v2 != -1)
  {
  }
}

void _updateCacheSmartInvertAndRepostNotification_cold_3()
{
  v0 = _kAXSCacheInvertColors;
  if (_kAXSCacheInvertColors == -1)
  {
    v1 = @"Empty";
  }

  else
  {
    v1 = [MEMORY[0x1E696AD98] numberWithInt:_kAXSCacheInvertColors];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  if (v0 != -1)
  {
  }
}

void _updateCacheSmartInvertAndRepostNotification_cold_4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void AccessibilityUtilitiesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AccessibilitySupport.m" lineNumber:55 description:{@"%s", *a1}];

  __break(1u);
}

void _invalidateCacheSmartInvertPreference_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __getLSApplicationRecordClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLSApplicationRecordClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AccessibilitySupport.m" lineNumber:71 description:{@"Unable to find class %s", "LSApplicationRecord"}];

  __break(1u);
}

void __getLSApplicationRecordClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AccessibilitySupport.m" lineNumber:70 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXBuddyDataPackageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXBuddyDataPackageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AccessibilitySupport.m" lineNumber:56 description:{@"Unable to find class %s", "AXBuddyDataPackage"}];

  __break(1u);
}

void __getMGGetBoolAnswerSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *libMobileGestaltLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXFeatureRuntimeSupport.m" lineNumber:36 description:{@"%s", *a1}];

  __break(1u);
}

void __AXDeviceGetType_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MGDeviceClass soft_MGGetSInt32Answer(CFStringRef, SInt32)"}];
  [v0 handleFailureInFunction:v1 file:@"SoftGestalt.h" lineNumber:12 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MGIsDeviceOfType_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool soft_MGIsDeviceOfType(uint8_t *)"];
  [v0 handleFailureInFunction:v1 file:@"SoftGestalt.h" lineNumber:13 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MGGetBoolAnswer_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool soft_MGGetBoolAnswer(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"SoftGestalt.h" lineNumber:15 description:{@"%s", dlerror()}];

  __break(1u);
}

void libMobileGestaltLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *libMobileGestaltLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SoftGestalt.h" lineNumber:11 description:{@"%s", *a1}];

  __break(1u);
  CFArrayAppendValue(v4, v5);
}