id AXFormatMagnificationFactor(float a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = AXCLocString(@"magnification.factor.format");
  *&v4 = a1;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v6 = AXFormatNumberWithOptions(v5, 1, 1, 0);
  v7 = [v2 stringWithFormat:v3, v6];

  return v7;
}

id AXFormatLocalizedPlaybackSpeedFactor(float a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = AXCLocString(@"playback.speed.factor.format");
  *&v4 = a1;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v6 = AXFormatNumberWithOptions(v5, 1, 0, 0);
  v7 = [v2 stringWithFormat:v3, v6];

  return v7;
}

uint64_t AXIntegerValueFromString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [MEMORY[0x1E696AD60] string];
    v3 = [MEMORY[0x1E696AE88] localizedScannerWithString:v1];
    if (([v3 isAtEnd] & 1) == 0)
    {
      do
      {
        v4 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
        v9 = 0;
        v5 = [v3 scanCharactersFromSet:v4 intoString:&v9];
        v6 = v9;

        if (v5)
        {
          [v2 appendString:v6];
        }

        else
        {
          [v3 setScanLocation:{objc_msgSend(v3, "scanLocation") + 1}];
        }
      }

      while (![v3 isAtEnd]);
    }

    if ([v2 length])
    {
      v7 = [v2 integerValue];
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

  return v7;
}

id AXDescriptionForHeadingInDegrees(int a1, double a2)
{
    ;
  }

    ;
  }

  v4 = @"DIRECTION_NORTH";
  if (i >= 22.0)
  {
    if (i >= 67.0)
    {
      if (i >= 112.0)
      {
        if (i >= 157.0)
        {
          if (i >= 202.0)
          {
            if (i >= 247.0)
            {
              if (i >= 292.0)
              {
                if (i < 337.0)
                {
                  v4 = @"DIRECTION_NORTHWEST";
                }
              }

              else
              {
                v4 = @"DIRECTION_WEST";
              }
            }

            else
            {
              v4 = @"DIRECTION_SOUTHWEST";
            }
          }

          else
          {
            v4 = @"DIRECTION_SOUTH";
          }
        }

        else
        {
          v4 = @"DIRECTION_SOUTHEAST";
        }
      }

      else
      {
        v4 = @"DIRECTION_EAST";
      }
    }

    else
    {
      v4 = @"DIRECTION_NORTHEAST";
    }
  }

  v5 = AXCLocString(v4);
  v6 = v5;
  if (a1)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = AXCLocString(@"degrees.format");
    LODWORD(v9) = llround(i);
    v10 = [v7 localizedStringWithFormat:v8, v9, v5];

    v11 = MEMORY[0x1E696AEC0];
    v12 = AXCLocString(@"compass.heading.format");
    v6 = [v11 localizedStringWithFormat:v12, v10, v5];
  }

  return v6;
}

void _AXAssertIsMainThread()
{
  v0 = [MEMORY[0x1E696AF00] currentThread];
  v1 = [v0 isMainThread];

  if ((v1 & 1) == 0)
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _AXAssertIsMainThread_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void _AXAssertIsThread(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  v2 = a1;
  v3 = [v1 currentThread];
  v4 = [v3 isEqual:v2];

  if ((v4 & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _AXAssertIsThread_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

void _AXAssertIsThreadNamed(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  v2 = a1;
  v3 = [v1 currentThread];
  v4 = [v3 name];
  v5 = [v4 isEqualToString:v2];

  if ((v5 & 1) == 0)
  {
    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _AXAssertIsThread_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

uint64_t AXSetThreadPriority(int a1)
{
  v7 = 0;
  v6 = 0;
  v2 = pthread_self();
  pthread_getschedparam(v2, &v6, &v7);
  sched_priority = v7.sched_priority;
  v7.sched_priority = a1;
  v4 = pthread_self();
  pthread_setschedparam(v4, 2, &v7);
  return sched_priority;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id AXCBundle()
{
  v0 = AXCBundle_CUBundle;
  if (!AXCBundle_CUBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXCoreUtilities"];
    v2 = AXCBundle_CUBundle;
    AXCBundle_CUBundle = v1;

    v0 = AXCBundle_CUBundle;
  }

  return v0;
}

id AXCLanguageToCanonicalPlistPath()
{
  v0 = AXCBundle();
  v1 = [v0 pathForResource:@"AXLanguageToLocale" ofType:@"plist"];

  return v1;
}

id AXCLanguageFallbackPlistPath()
{
  v0 = AXCBundle();
  v1 = [v0 pathForResource:@"AXLanguageToFallback" ofType:@"plist"];

  return v1;
}

id AXCLanguageToLocales(uint64_t a1)
{
  if (AXCLanguageToLocales_onceToken != -1)
  {
    AXCLanguageToLocales_cold_1();
  }

  v2 = AXCLanguageToLocales_LanguageToLangLocale;

  return v2;
}

void __AXCLanguageToLocales_block_invoke()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v3 = AXCLanguageToCanonicalPlistPath();
  v1 = [v0 initWithContentsOfFile:v3];
  v2 = AXCLanguageToLocales_LanguageToLangLocale;
  AXCLanguageToLocales_LanguageToLangLocale = v1;
}

id AXCLanguageToFallbacks(uint64_t a1)
{
  if (AXCLanguageToFallbacks_onceToken != -1)
  {
    AXCLanguageToFallbacks_cold_1();
  }

  v2 = AXCLanguageToFallbacks_LanguageToFallback;

  return v2;
}

void __AXCLanguageToFallbacks_block_invoke()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v3 = AXCLanguageFallbackPlistPath();
  v1 = [v0 initWithContentsOfFile:v3];
  v2 = AXCLanguageToFallbacks_LanguageToFallback;
  AXCLanguageToFallbacks_LanguageToFallback = v1;
}

void sub_1915CAFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void AXBackgroundLog(void *a1, os_log_type_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (os_log_type_enabled(v5, a2))
  {
    if (_AXBackgroundLoggingQueue_onceToken[0] != -1)
    {
      AXBackgroundLog_cold_1();
    }

    v7 = _AXBackgroundLoggingQueue__queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AXBackgroundLog_block_invoke;
    block[3] = &unk_1E735BF40;
    v10 = v6;
    v9 = v5;
    v11 = a2;
    dispatch_async(v7, block);
  }
}

uint64_t __AXLogCommon_block_invoke()
{
  AXLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXSupportLogCommon(uint64_t a1)
{
  if (AXSupportLogCommon_onceToken != -1)
  {
    AXSupportLogCommon_cold_1();
  }

  v2 = AXSupportLogCommon___logObj;

  return v2;
}

uint64_t __AXSupportLogCommon_block_invoke()
{
  AXSupportLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXSupportCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogCommon(uint64_t a1)
{
  if (AXRuntimeLogCommon_onceToken != -1)
  {
    AXRuntimeLogCommon_cold_1();
  }

  v2 = AXRuntimeLogCommon___logObj;

  return v2;
}

uint64_t __AXRuntimeLogCommon_block_invoke()
{
  AXRuntimeLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeCommon");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AXRuntimeLogPID_block_invoke()
{
  AXRuntimeLogPID___logObj = os_log_create("com.apple.Accessibility", "AXRuntimePID");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogNotifications(uint64_t a1)
{
  if (AXRuntimeLogNotifications_onceToken != -1)
  {
    AXRuntimeLogNotifications_cold_1();
  }

  v2 = AXRuntimeLogNotifications___logObj;

  return v2;
}

uint64_t __AXRuntimeLogNotifications_block_invoke()
{
  AXRuntimeLogNotifications___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeNotifications");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogSerialization(uint64_t a1)
{
  if (AXRuntimeLogSerialization_onceToken != -1)
  {
    AXRuntimeLogSerialization_cold_1();
  }

  v2 = AXRuntimeLogSerialization___logObj;

  return v2;
}

uint64_t __AXRuntimeLogSerialization_block_invoke()
{
  AXRuntimeLogSerialization___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeSerialization");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogElementFetcher(uint64_t a1)
{
  if (AXRuntimeLogElementFetcher_onceToken != -1)
  {
    AXRuntimeLogElementFetcher_cold_1();
  }

  v2 = AXRuntimeLogElementFetcher___logObj;

  return v2;
}

uint64_t __AXRuntimeLogElementFetcher_block_invoke()
{
  AXRuntimeLogElementFetcher___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeElementFetcher");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogCommon(uint64_t a1)
{
  if (AXTTSLogCommon_onceToken != -1)
  {
    AXTTSLogCommon_cold_1();
  }

  v2 = AXTTSLogCommon___logObj;

  return v2;
}

uint64_t __AXTTSLogCommon_block_invoke()
{
  AXTTSLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXTTSCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogRange(uint64_t a1)
{
  if (AXTTSLogRange_onceToken != -1)
  {
    AXTTSLogRange_cold_1();
  }

  v2 = AXTTSLogRange___logObj;

  return v2;
}

uint64_t __AXTTSLogRange_block_invoke()
{
  AXTTSLogRange___logObj = os_log_create("com.apple.Accessibility", "AXTTSRange");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogVoiceBank(uint64_t a1)
{
  if (AXTTSLogVoiceBank_onceToken != -1)
  {
    AXTTSLogVoiceBank_cold_1();
  }

  v2 = AXTTSLogVoiceBank___logObj;

  return v2;
}

uint64_t __AXTTSLogVoiceBank_block_invoke()
{
  AXTTSLogVoiceBank___logObj = os_log_create("com.apple.Accessibility", "TTSVB");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogResourceManager(uint64_t a1)
{
  if (AXTTSLogResourceManager_onceToken != -1)
  {
    AXTTSLogResourceManager_cold_1();
  }

  v2 = AXTTSLogResourceManager___logObj;

  return v2;
}

uint64_t __AXTTSLogResourceManager_block_invoke()
{
  AXTTSLogResourceManager___logObj = os_log_create("com.apple.Accessibility", "AXTTSResourceManager");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogResourceMigration(uint64_t a1)
{
  if (AXTTSLogResourceMigration_onceToken != -1)
  {
    AXTTSLogResourceMigration_cold_1();
  }

  v2 = AXTTSLogResourceMigration___logObj;

  return v2;
}

uint64_t __AXTTSLogResourceMigration_block_invoke()
{
  AXTTSLogResourceMigration___logObj = os_log_create("com.apple.Accessibility", "AXTTSResourceMigration");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogKona(uint64_t a1)
{
  if (AXTTSLogKona_onceToken != -1)
  {
    AXTTSLogKona_cold_1();
  }

  v2 = AXTTSLogKona___logObj;

  return v2;
}

uint64_t __AXTTSLogKona_block_invoke()
{
  AXTTSLogKona___logObj = os_log_create("com.apple.Accessibility", "AXTTSKona");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogEventTap(uint64_t a1)
{
  if (AXLogEventTap_onceToken != -1)
  {
    AXLogEventTap_cold_1();
  }

  v2 = AXLogEventTap___logObj;

  return v2;
}

uint64_t __AXLogEventTap_block_invoke()
{
  AXLogEventTap___logObj = os_log_create("com.apple.Accessibility", "AXEventTap");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDisplay(uint64_t a1)
{
  if (AXLogDisplay_onceToken != -1)
  {
    AXLogDisplay_cold_1();
  }

  v2 = AXLogDisplay___logObj;

  return v2;
}

uint64_t __AXLogDisplay_block_invoke()
{
  AXLogDisplay___logObj = os_log_create("com.apple.Accessibility", "AXDisplay");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUserInterfaceService(uint64_t a1)
{
  if (AXLogUserInterfaceService_onceToken != -1)
  {
    AXLogUserInterfaceService_cold_1();
  }

  v2 = AXLogUserInterfaceService___logObj;

  return v2;
}

uint64_t __AXLogUserInterfaceService_block_invoke()
{
  AXLogUserInterfaceService___logObj = os_log_create("com.apple.Accessibility", "AXUserInterfaceService");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUIViewService(uint64_t a1)
{
  if (AXLogUIViewService_onceToken != -1)
  {
    AXLogUIViewService_cold_1();
  }

  v2 = AXLogUIViewService___logObj;

  return v2;
}

uint64_t __AXLogUIViewService_block_invoke()
{
  AXLogUIViewService___logObj = os_log_create("com.apple.Accessibility", "AXUIViewService");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBrokenHomeButton(uint64_t a1)
{
  if (AXLogBrokenHomeButton_onceToken != -1)
  {
    AXLogBrokenHomeButton_cold_1();
  }

  v2 = AXLogBrokenHomeButton___logObj;

  return v2;
}

uint64_t __AXLogBrokenHomeButton_block_invoke()
{
  AXLogBrokenHomeButton___logObj = os_log_create("com.apple.Accessibility", "AXBrokenHomeButton");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMIDI(uint64_t a1)
{
  if (AXLogMIDI_onceToken != -1)
  {
    AXLogMIDI_cold_1();
  }

  v2 = AXLogMIDI___logObj;

  return v2;
}

uint64_t __AXLogMIDI_block_invoke()
{
  AXLogMIDI___logObj = os_log_create("com.apple.Accessibility", "AXMIDI");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDataMigrator(uint64_t a1)
{
  if (AXLogDataMigrator_onceToken != -1)
  {
    AXLogDataMigrator_cold_1();
  }

  v2 = AXLogDataMigrator___logObj;

  return v2;
}

uint64_t __AXLogDataMigrator_block_invoke()
{
  AXLogDataMigrator___logObj = os_log_create("com.apple.Accessibility", "AXDataMigrator");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDragging(uint64_t a1)
{
  if (AXLogDragging_onceToken != -1)
  {
    AXLogDragging_cold_1();
  }

  v2 = AXLogDragging___logObj;

  return v2;
}

uint64_t __AXLogDragging_block_invoke()
{
  AXLogDragging___logObj = os_log_create("com.apple.Accessibility", "AXDragging");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSettings(uint64_t a1)
{
  if (AXLogSettings_onceToken != -1)
  {
    AXLogSettings_cold_1();
  }

  v2 = AXLogSettings___logObj;

  return v2;
}

uint64_t __AXLogSettings_block_invoke()
{
  AXLogSettings___logObj = os_log_create("com.apple.Accessibility", "AXSettings");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSiriShortcuts(uint64_t a1)
{
  if (AXLogSiriShortcuts_onceToken != -1)
  {
    AXLogSiriShortcuts_cold_1();
  }

  v2 = AXLogSiriShortcuts___logObj;

  return v2;
}

uint64_t __AXLogSiriShortcuts_block_invoke()
{
  AXLogSiriShortcuts___logObj = os_log_create("com.apple.Accessibility", "AXSiriShortcuts");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAssertions(uint64_t a1)
{
  if (AXLogAssertions_onceToken != -1)
  {
    AXLogAssertions_cold_1();
  }

  v2 = AXLogAssertions___logObj;

  return v2;
}

uint64_t __AXLogAssertions_block_invoke()
{
  AXLogAssertions___logObj = os_log_create("com.apple.Accessibility", "AXAssertions");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTimeProfile(uint64_t a1)
{
  if (AXLogTimeProfile_onceToken != -1)
  {
    AXLogTimeProfile_cold_1();
  }

  v2 = AXLogTimeProfile___logObj;

  return v2;
}

uint64_t __AXLogTimeProfile_block_invoke()
{
  AXLogTimeProfile___logObj = os_log_create("com.apple.Accessibility", "AXTimeProfile");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMemoryProfile(uint64_t a1)
{
  if (AXLogMemoryProfile_onceToken != -1)
  {
    AXLogMemoryProfile_cold_1();
  }

  v2 = AXLogMemoryProfile___logObj;

  return v2;
}

uint64_t __AXLogMemoryProfile_block_invoke()
{
  AXLogMemoryProfile___logObj = os_log_create("com.apple.Accessibility", "AXMemoryProfile");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLookingGlass(uint64_t a1)
{
  if (AXLogLookingGlass_onceToken != -1)
  {
    AXLogLookingGlass_cold_1();
  }

  v2 = AXLogLookingGlass___logObj;

  return v2;
}

uint64_t __AXLogLookingGlass_block_invoke()
{
  AXLogLookingGlass___logObj = os_log_create("com.apple.Accessibility", "AXLookingGlass");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLookingGlassUI(uint64_t a1)
{
  if (AXLogLookingGlassUI_onceToken != -1)
  {
    AXLogLookingGlassUI_cold_1();
  }

  v2 = AXLogLookingGlassUI___logObj;

  return v2;
}

uint64_t __AXLogLookingGlassUI_block_invoke()
{
  AXLogLookingGlassUI___logObj = os_log_create("com.apple.Accessibility", "AXLookingGlassUI");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAccessories(uint64_t a1)
{
  if (AXLogAccessories_onceToken != -1)
  {
    AXLogAccessories_cold_1();
  }

  v2 = AXLogAccessories___logObj;

  return v2;
}

uint64_t __AXLogAccessories_block_invoke()
{
  AXLogAccessories___logObj = os_log_create("com.apple.Accessibility", "AXAccessories");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUI(uint64_t a1)
{
  if (AXLogUI_onceToken != -1)
  {
    AXLogUI_cold_1();
  }

  v2 = AXLogUI___logObj;

  return v2;
}

uint64_t __AXLogUI_block_invoke()
{
  AXLogUI___logObj = os_log_create("com.apple.Accessibility", "AXUI");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogManager(uint64_t a1)
{
  if (AXLogManager_onceToken != -1)
  {
    AXLogManager_cold_1();
  }

  v2 = AXLogManager___logObj;

  return v2;
}

uint64_t __AXLogManager_block_invoke()
{
  AXLogManager___logObj = os_log_create("com.apple.Accessibility", "AXManager");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBackboardServer(uint64_t a1)
{
  if (AXLogBackboardServer_onceToken != -1)
  {
    AXLogBackboardServer_cold_1();
  }

  v2 = AXLogBackboardServer___logObj;

  return v2;
}

uint64_t __AXLogBackboardServer_block_invoke()
{
  AXLogBackboardServer___logObj = os_log_create("com.apple.Accessibility", "AXBackboardServer");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpringboardServer(uint64_t a1)
{
  if (AXLogSpringboardServer_onceToken != -1)
  {
    AXLogSpringboardServer_cold_1();
  }

  v2 = AXLogSpringboardServer___logObj;

  return v2;
}

uint64_t __AXLogSpringboardServer_block_invoke()
{
  AXLogSpringboardServer___logObj = os_log_create("com.apple.Accessibility", "AXSpringboardServer");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSystemApp(uint64_t a1)
{
  if (AXLogSystemApp_onceToken != -1)
  {
    AXLogSystemApp_cold_1();
  }

  v2 = AXLogSystemApp___logObj;

  return v2;
}

uint64_t __AXLogSystemApp_block_invoke()
{
  AXLogSystemApp___logObj = os_log_create("com.apple.Accessibility", "AXSystemApp");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPhysicalInteraction(uint64_t a1)
{
  if (AXLogPhysicalInteraction_onceToken != -1)
  {
    AXLogPhysicalInteraction_cold_1();
  }

  v2 = AXLogPhysicalInteraction___logObj;

  return v2;
}

uint64_t __AXLogPhysicalInteraction_block_invoke()
{
  AXLogPhysicalInteraction___logObj = os_log_create("com.apple.Accessibility", "AXPhysicalInteraction");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAudioRouting(uint64_t a1)
{
  if (AXLogAudioRouting_onceToken != -1)
  {
    AXLogAudioRouting_cold_1();
  }

  v2 = AXLogAudioRouting___logObj;

  return v2;
}

uint64_t __AXLogAudioRouting_block_invoke()
{
  AXLogAudioRouting___logObj = os_log_create("com.apple.Accessibility", "AXAudioRouting");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPointerControl(uint64_t a1)
{
  if (AXLogPointerControl_onceToken != -1)
  {
    AXLogPointerControl_cold_1();
  }

  v2 = AXLogPointerControl___logObj;

  return v2;
}

uint64_t __AXLogPointerControl_block_invoke()
{
  AXLogPointerControl___logObj = os_log_create("com.apple.Accessibility", "AXPointerControl");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogCommon(uint64_t a1)
{
  if (ASTLogCommon_onceToken != -1)
  {
    ASTLogCommon_cold_1();
  }

  v2 = ASTLogCommon___logObj;

  return v2;
}

uint64_t __ASTLogCommon_block_invoke()
{
  ASTLogCommon___logObj = os_log_create("com.apple.Accessibility", "ASTCommon");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogMouse(uint64_t a1)
{
  if (ASTLogMouse_onceToken != -1)
  {
    ASTLogMouse_cold_1();
  }

  v2 = ASTLogMouse___logObj;

  return v2;
}

uint64_t __ASTLogMouse_block_invoke()
{
  ASTLogMouse___logObj = os_log_create("com.apple.Accessibility", "ASTMouse");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogEventManagement(uint64_t a1)
{
  if (ASTLogEventManagement_onceToken != -1)
  {
    ASTLogEventManagement_cold_1();
  }

  v2 = ASTLogEventManagement___logObj;

  return v2;
}

uint64_t __ASTLogEventManagement_block_invoke()
{
  ASTLogEventManagement___logObj = os_log_create("com.apple.Accessibility", "ASTEventManagement");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogRocker(uint64_t a1)
{
  if (ASTLogRocker_onceToken != -1)
  {
    ASTLogRocker_cold_1();
  }

  v2 = ASTLogRocker___logObj;

  return v2;
}

uint64_t __ASTLogRocker_block_invoke()
{
  ASTLogRocker___logObj = os_log_create("com.apple.Accessibility", "ASTRocker");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogSystemPointerController(uint64_t a1)
{
  if (ASTLogSystemPointerController_onceToken != -1)
  {
    ASTLogSystemPointerController_cold_1();
  }

  v2 = ASTLogSystemPointerController___logObj;

  return v2;
}

uint64_t __ASTLogSystemPointerController_block_invoke()
{
  ASTLogSystemPointerController___logObj = os_log_create("com.apple.Accessibility", "ASTSystemPointerController");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogRuntimeManager(uint64_t a1)
{
  if (ASTLogRuntimeManager_onceToken != -1)
  {
    ASTLogRuntimeManager_cold_1();
  }

  v2 = ASTLogRuntimeManager___logObj;

  return v2;
}

uint64_t __ASTLogRuntimeManager_block_invoke()
{
  ASTLogRuntimeManager___logObj = os_log_create("com.apple.Accessibility", "ASTRuntimeManager");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogDeviceManager(uint64_t a1)
{
  if (ASTLogDeviceManager_onceToken != -1)
  {
    ASTLogDeviceManager_cold_1();
  }

  v2 = ASTLogDeviceManager___logObj;

  return v2;
}

uint64_t __ASTLogDeviceManager_block_invoke()
{
  ASTLogDeviceManager___logObj = os_log_create("com.apple.Accessibility", "ASTDeviceManager");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogDisplayManager(uint64_t a1)
{
  if (ASTLogDisplayManager_onceToken != -1)
  {
    ASTLogDisplayManager_cold_1();
  }

  v2 = ASTLogDisplayManager___logObj;

  return v2;
}

uint64_t __ASTLogDisplayManager_block_invoke()
{
  ASTLogDisplayManager___logObj = os_log_create("com.apple.Accessibility", "ASTDisplayManager");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogKickStart(uint64_t a1)
{
  if (ASTLogKickStart_onceToken != -1)
  {
    ASTLogKickStart_cold_1();
  }

  v2 = ASTLogKickStart___logObj;

  return v2;
}

uint64_t __ASTLogKickStart_block_invoke()
{
  ASTLogKickStart___logObj = os_log_create("com.apple.Accessibility", "ASTKickStart");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAggregate(uint64_t a1)
{
  if (AXLogAggregate_onceToken != -1)
  {
    AXLogAggregate_cold_1();
  }

  v2 = AXLogAggregate___logObj;

  return v2;
}

uint64_t __AXLogAggregate_block_invoke()
{
  AXLogAggregate___logObj = os_log_create("com.apple.Accessibility", "AXAggregate");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUIA(uint64_t a1)
{
  if (AXLogUIA_onceToken != -1)
  {
    AXLogUIA_cold_1();
  }

  v2 = AXLogUIA___logObj;

  return v2;
}

uint64_t __AXLogUIA_block_invoke()
{
  AXLogUIA___logObj = os_log_create("com.apple.Accessibility", "AXUIA");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLocCaptionPanel(uint64_t a1)
{
  if (AXLogLocCaptionPanel_onceToken != -1)
  {
    AXLogLocCaptionPanel_cold_1();
  }

  v2 = AXLogLocCaptionPanel___logObj;

  return v2;
}

uint64_t __AXLogLocCaptionPanel_block_invoke()
{
  AXLogLocCaptionPanel___logObj = os_log_create("com.apple.Accessibility", "AXLocCaptionPanel");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogContextKit(uint64_t a1)
{
  if (AXLogContextKit_onceToken != -1)
  {
    AXLogContextKit_cold_1();
  }

  v2 = AXLogContextKit___logObj;

  return v2;
}

uint64_t __AXLogContextKit_block_invoke()
{
  AXLogContextKit___logObj = os_log_create("com.apple.Accessibility", "AXContextKit");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPronunciations(uint64_t a1)
{
  if (AXLogPronunciations_onceToken != -1)
  {
    AXLogPronunciations_cold_1();
  }

  v2 = AXLogPronunciations___logObj;

  return v2;
}

uint64_t __AXLogPronunciations_block_invoke()
{
  AXLogPronunciations___logObj = os_log_create("com.apple.Accessibility", "AXPronunciations");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBrailleHW(uint64_t a1)
{
  if (AXLogBrailleHW_onceToken != -1)
  {
    AXLogBrailleHW_cold_1();
  }

  v2 = AXLogBrailleHW___logObj;

  return v2;
}

uint64_t __AXLogBrailleHW_block_invoke()
{
  AXLogBrailleHW___logObj = os_log_create("com.apple.Accessibility", "AXBrailleHW");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBluetooth(uint64_t a1)
{
  if (AXLogBluetooth_onceToken != -1)
  {
    AXLogBluetooth_cold_1();
  }

  v2 = AXLogBluetooth___logObj;

  return v2;
}

uint64_t __AXLogBluetooth_block_invoke()
{
  AXLogBluetooth___logObj = os_log_create("com.apple.Accessibility", "AXBluetooth");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogFocusEngine(uint64_t a1)
{
  if (AXLogFocusEngine_onceToken != -1)
  {
    AXLogFocusEngine_cold_1();
  }

  v2 = AXLogFocusEngine___logObj;

  return v2;
}

uint64_t __AXLogFocusEngine_block_invoke()
{
  AXLogFocusEngine___logObj = os_log_create("com.apple.Accessibility", "AXFocusEngine");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSoundBoard(uint64_t a1)
{
  if (AXLogSoundBoard_onceToken != -1)
  {
    AXLogSoundBoard_cold_1();
  }

  v2 = AXLogSoundBoard___logObj;

  return v2;
}

uint64_t __AXLogSoundBoard_block_invoke()
{
  AXLogSoundBoard___logObj = os_log_create("com.apple.Accessibility", "AXSoundBoard");

  return MEMORY[0x1EEE66BB8]();
}

id FKALogCommon(uint64_t a1)
{
  if (FKALogCommon_onceToken != -1)
  {
    FKALogCommon_cold_1();
  }

  v2 = FKALogCommon___logObj;

  return v2;
}

uint64_t __FKALogCommon_block_invoke()
{
  FKALogCommon___logObj = os_log_create("com.apple.Accessibility", "FKACommon");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogCommon(uint64_t a1)
{
  if (GAXLogCommon_onceToken != -1)
  {
    GAXLogCommon_cold_1();
  }

  v2 = GAXLogCommon___logObj;

  return v2;
}

uint64_t __GAXLogCommon_block_invoke()
{
  GAXLogCommon___logObj = os_log_create("com.apple.Accessibility", "GAXCommon");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogTimeRestrictions(uint64_t a1)
{
  if (GAXLogTimeRestrictions_onceToken != -1)
  {
    GAXLogTimeRestrictions_cold_1();
  }

  v2 = GAXLogTimeRestrictions___logObj;

  return v2;
}

uint64_t __GAXLogTimeRestrictions_block_invoke()
{
  GAXLogTimeRestrictions___logObj = os_log_create("com.apple.Accessibility", "GAXTimeRestrictions");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogIntegrity(uint64_t a1)
{
  if (GAXLogIntegrity_onceToken != -1)
  {
    GAXLogIntegrity_cold_1();
  }

  v2 = GAXLogIntegrity___logObj;

  return v2;
}

uint64_t __GAXLogIntegrity_block_invoke()
{
  GAXLogIntegrity___logObj = os_log_create("com.apple.Accessibility", "GAXIntegrity");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogAppLaunching(uint64_t a1)
{
  if (GAXLogAppLaunching_onceToken != -1)
  {
    GAXLogAppLaunching_cold_1();
  }

  v2 = GAXLogAppLaunching___logObj;

  return v2;
}

uint64_t __GAXLogAppLaunching_block_invoke()
{
  GAXLogAppLaunching___logObj = os_log_create("com.apple.Accessibility", "GAXAppLaunching");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogBlockedTouches(uint64_t a1)
{
  if (GAXLogBlockedTouches_onceToken != -1)
  {
    GAXLogBlockedTouches_cold_1();
  }

  v2 = GAXLogBlockedTouches___logObj;

  return v2;
}

uint64_t __GAXLogBlockedTouches_block_invoke()
{
  GAXLogBlockedTouches___logObj = os_log_create("com.apple.Accessibility", "GAXBlockedTouches");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogInvertColors(uint64_t a1)
{
  if (AXLogInvertColors_onceToken != -1)
  {
    AXLogInvertColors_cold_1();
  }

  v2 = AXLogInvertColors___logObj;

  return v2;
}

uint64_t __AXLogInvertColors_block_invoke()
{
  AXLogInvertColors___logObj = os_log_create("com.apple.Accessibility", "AXInvertColors");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogInvertColorsTraversal(uint64_t a1)
{
  if (AXLogInvertColorsTraversal_onceToken != -1)
  {
    AXLogInvertColorsTraversal_cold_1();
  }

  v2 = AXLogInvertColorsTraversal___logObj;

  return v2;
}

uint64_t __AXLogInvertColorsTraversal_block_invoke()
{
  AXLogInvertColorsTraversal___logObj = os_log_create("com.apple.Accessibility", "AXInvertColorsTraversal");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogInvertColorsLoadBundles(uint64_t a1)
{
  if (AXLogInvertColorsLoadBundles_onceToken != -1)
  {
    AXLogInvertColorsLoadBundles_cold_1();
  }

  v2 = AXLogInvertColorsLoadBundles___logObj;

  return v2;
}

uint64_t __AXLogInvertColorsLoadBundles_block_invoke()
{
  AXLogInvertColorsLoadBundles___logObj = os_log_create("com.apple.Accessibility", "AXInvertColorsLoadBundles");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMuseAccessibility(uint64_t a1)
{
  if (AXLogMuseAccessibility_onceToken != -1)
  {
    AXLogMuseAccessibility_cold_1();
  }

  v2 = AXLogMuseAccessibility___logObj;

  return v2;
}

uint64_t __AXLogMuseAccessibility_block_invoke()
{
  AXLogMuseAccessibility___logObj = os_log_create("com.apple.Accessibility", "AXMuseAccessibility");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AXLogAppAccessibility_block_invoke()
{
  AXLogAppAccessibility___logObj = os_log_create("com.apple.Accessibility", "AXAppAccessibility");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAppCompareGeometry(uint64_t a1)
{
  if (AXLogAppCompareGeometry_onceToken != -1)
  {
    AXLogAppCompareGeometry_cold_1();
  }

  v2 = AXLogAppCompareGeometry___logObj;

  return v2;
}

uint64_t __AXLogAppCompareGeometry_block_invoke()
{
  AXLogAppCompareGeometry___logObj = os_log_create("com.apple.Accessibility", "AXAppCompareGeometry");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogValidations(uint64_t a1)
{
  if (AXLogValidations_onceToken != -1)
  {
    AXLogValidations_cold_1();
  }

  v2 = AXLogValidations___logObj;

  return v2;
}

uint64_t __AXLogValidations_block_invoke()
{
  AXLogValidations___logObj = os_log_create("com.apple.Accessibility", "AXValidations");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogValidationRunner(uint64_t a1)
{
  if (AXLogValidationRunner_onceToken != -1)
  {
    AXLogValidationRunner_cold_1();
  }

  v2 = AXLogValidationRunner___logObj;

  return v2;
}

uint64_t __AXLogValidationRunner_block_invoke()
{
  AXLogValidationRunner___logObj = os_log_create("com.apple.Accessibility", "AXValidationRunner");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogElementTraversal(uint64_t a1)
{
  if (AXLogElementTraversal_onceToken != -1)
  {
    AXLogElementTraversal_cold_1();
  }

  v2 = AXLogElementTraversal___logObj;

  return v2;
}

uint64_t __AXLogElementTraversal_block_invoke()
{
  AXLogElementTraversal___logObj = os_log_create("com.apple.Accessibility", "AXElementTraversal");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogFirstElement(uint64_t a1)
{
  if (AXLogFirstElement_onceToken != -1)
  {
    AXLogFirstElement_cold_1();
  }

  v2 = AXLogFirstElement___logObj;

  return v2;
}

uint64_t __AXLogFirstElement_block_invoke()
{
  AXLogFirstElement___logObj = os_log_create("com.apple.Accessibility", "AXFirstElement");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogHitTest(uint64_t a1)
{
  if (AXLogHitTest_onceToken != -1)
  {
    AXLogHitTest_cold_1();
  }

  v2 = AXLogHitTest___logObj;

  return v2;
}

uint64_t __AXLogHitTest_block_invoke()
{
  AXLogHitTest___logObj = os_log_create("com.apple.Accessibility", "AXHitTest");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogScrollToVisible(uint64_t a1)
{
  if (AXLogScrollToVisible_onceToken != -1)
  {
    AXLogScrollToVisible_cold_1();
  }

  v2 = AXLogScrollToVisible___logObj;

  return v2;
}

uint64_t __AXLogScrollToVisible_block_invoke()
{
  AXLogScrollToVisible___logObj = os_log_create("com.apple.Accessibility", "AXScrollToVisible");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVisibleFrame(uint64_t a1)
{
  if (AXLogVisibleFrame_onceToken != -1)
  {
    AXLogVisibleFrame_cold_1();
  }

  v2 = AXLogVisibleFrame___logObj;

  return v2;
}

uint64_t __AXLogVisibleFrame_block_invoke()
{
  AXLogVisibleFrame___logObj = os_log_create("com.apple.Accessibility", "AXVisibleFrame");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogOpaqueElements(uint64_t a1)
{
  if (AXLogOpaqueElements_onceToken != -1)
  {
    AXLogOpaqueElements_cold_1();
  }

  v2 = AXLogOpaqueElements___logObj;

  return v2;
}

uint64_t __AXLogOpaqueElements_block_invoke()
{
  AXLogOpaqueElements___logObj = os_log_create("com.apple.Accessibility", "AXOpaqueElements");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLoading(uint64_t a1)
{
  if (AXLogLoading_onceToken != -1)
  {
    AXLogLoading_cold_1();
  }

  v2 = AXLogLoading___logObj;

  return v2;
}

uint64_t __AXLogLoading_block_invoke()
{
  AXLogLoading___logObj = os_log_create("com.apple.Accessibility", "AXLoading");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVectorKit(uint64_t a1)
{
  if (AXLogVectorKit_onceToken != -1)
  {
    AXLogVectorKit_cold_1();
  }

  v2 = AXLogVectorKit___logObj;

  return v2;
}

uint64_t __AXLogVectorKit_block_invoke()
{
  AXLogVectorKit___logObj = os_log_create("com.apple.Accessibility", "AXVectorKit");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogRemoteElement(uint64_t a1)
{
  if (AXLogRemoteElement_onceToken != -1)
  {
    AXLogRemoteElement_cold_1();
  }

  v2 = AXLogRemoteElement___logObj;

  return v2;
}

uint64_t __AXLogRemoteElement_block_invoke()
{
  AXLogRemoteElement___logObj = os_log_create("com.apple.Accessibility", "AXRemoteElement");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogEscape(uint64_t a1)
{
  if (AXLogEscape_onceToken != -1)
  {
    AXLogEscape_cold_1();
  }

  v2 = AXLogEscape___logObj;

  return v2;
}

uint64_t __AXLogEscape_block_invoke()
{
  AXLogEscape___logObj = os_log_create("com.apple.Accessibility", "AXEscape");

  return MEMORY[0x1EEE66BB8]();
}

id MAGLogCommon(uint64_t a1)
{
  if (MAGLogCommon_onceToken != -1)
  {
    MAGLogCommon_cold_1();
  }

  v2 = MAGLogCommon___logObj;

  return v2;
}

uint64_t __MAGLogCommon_block_invoke()
{
  MAGLogCommon___logObj = os_log_create("com.apple.Accessibility", "MAGCommon");

  return MEMORY[0x1EEE66BB8]();
}

id MAGLogBrightness(uint64_t a1)
{
  if (MAGLogBrightness_onceToken != -1)
  {
    MAGLogBrightness_cold_1();
  }

  v2 = MAGLogBrightness___logObj;

  return v2;
}

uint64_t __MAGLogBrightness_block_invoke()
{
  MAGLogBrightness___logObj = os_log_create("com.apple.Accessibility", "MAGBrightness");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMotionCues(uint64_t a1)
{
  if (AXLogMotionCues_onceToken != -1)
  {
    AXLogMotionCues_cold_1();
  }

  v2 = AXLogMotionCues___logObj;

  return v2;
}

uint64_t __AXLogMotionCues_block_invoke()
{
  AXLogMotionCues___logObj = os_log_create("com.apple.Accessibility", "AXMotionCues");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogGuestPass(uint64_t a1)
{
  if (AXLogGuestPass_onceToken != -1)
  {
    AXLogGuestPass_cold_1();
  }

  v2 = AXLogGuestPass___logObj;

  return v2;
}

uint64_t __AXLogGuestPass_block_invoke()
{
  AXLogGuestPass___logObj = os_log_create("com.apple.Accessibility", "AXGuestPass");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeechAssetDownload(uint64_t a1)
{
  if (AXLogSpeechAssetDownload_onceToken != -1)
  {
    AXLogSpeechAssetDownload_cold_1();
  }

  v2 = AXLogSpeechAssetDownload___logObj;

  return v2;
}

uint64_t __AXLogSpeechAssetDownload_block_invoke()
{
  AXLogSpeechAssetDownload___logObj = os_log_create("com.apple.Accessibility", "AXSpeechAssetDownload");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogCharacterVoices(uint64_t a1)
{
  if (AXLogCharacterVoices_onceToken != -1)
  {
    AXLogCharacterVoices_cold_1();
  }

  v2 = AXLogCharacterVoices___logObj;

  return v2;
}

uint64_t __AXLogCharacterVoices_block_invoke()
{
  AXLogCharacterVoices___logObj = os_log_create("com.apple.Accessibility", "AXCharacterVoices");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeechSynthesis(uint64_t a1)
{
  if (AXLogSpeechSynthesis_onceToken != -1)
  {
    AXLogSpeechSynthesis_cold_1();
  }

  v2 = AXLogSpeechSynthesis___logObj;

  return v2;
}

uint64_t __AXLogSpeechSynthesis_block_invoke()
{
  AXLogSpeechSynthesis___logObj = os_log_create("com.apple.Accessibility", "AXSpeechSynthesis");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogOrator(uint64_t a1)
{
  if (AXLogOrator_onceToken != -1)
  {
    AXLogOrator_cold_1();
  }

  v2 = AXLogOrator___logObj;

  return v2;
}

uint64_t __AXLogOrator_block_invoke()
{
  AXLogOrator___logObj = os_log_create("com.apple.Accessibility", "AXOrator");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakSelection(uint64_t a1)
{
  if (AXLogSpeakSelection_onceToken != -1)
  {
    AXLogSpeakSelection_cold_1();
  }

  v2 = AXLogSpeakSelection___logObj;

  return v2;
}

uint64_t __AXLogSpeakSelection_block_invoke()
{
  AXLogSpeakSelection___logObj = os_log_create("com.apple.Accessibility", "AXSpeakSelection");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakTyping(uint64_t a1)
{
  if (AXLogSpeakTyping_onceToken != -1)
  {
    AXLogSpeakTyping_cold_1();
  }

  v2 = AXLogSpeakTyping___logObj;

  return v2;
}

uint64_t __AXLogSpeakTyping_block_invoke()
{
  AXLogSpeakTyping___logObj = os_log_create("com.apple.Accessibility", "AXSpeakTyping");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakScreen(uint64_t a1)
{
  if (AXLogSpeakScreen_onceToken != -1)
  {
    AXLogSpeakScreen_cold_1();
  }

  v2 = AXLogSpeakScreen___logObj;

  return v2;
}

uint64_t __AXLogSpeakScreen_block_invoke()
{
  AXLogSpeakScreen___logObj = os_log_create("com.apple.Accessibility", "AXSpeakScreen");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakFingerManager(uint64_t a1)
{
  if (AXLogSpeakFingerManager_onceToken != -1)
  {
    AXLogSpeakFingerManager_cold_1();
  }

  v2 = AXLogSpeakFingerManager___logObj;

  return v2;
}

uint64_t __AXLogSpeakFingerManager_block_invoke()
{
  AXLogSpeakFingerManager___logObj = os_log_create("com.apple.Accessibility", "AXSpeakFingerManager");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpokenContentTextProcessing(uint64_t a1)
{
  if (AXLogSpokenContentTextProcessing_onceToken != -1)
  {
    AXLogSpokenContentTextProcessing_cold_1();
  }

  v2 = AXLogSpokenContentTextProcessing___logObj;

  return v2;
}

uint64_t __AXLogSpokenContentTextProcessing_block_invoke()
{
  AXLogSpokenContentTextProcessing___logObj = os_log_create("com.apple.Accessibility", "AXSpokenContentTextProcessing");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogCommon(uint64_t a1)
{
  if (SWCHLogCommon_onceToken != -1)
  {
    SWCHLogCommon_cold_1();
  }

  v2 = SWCHLogCommon___logObj;

  return v2;
}

uint64_t __SWCHLogCommon_block_invoke()
{
  SWCHLogCommon___logObj = os_log_create("com.apple.Accessibility", "SWCHCommon");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogElementNav(uint64_t a1)
{
  if (SWCHLogElementNav_onceToken != -1)
  {
    SWCHLogElementNav_cold_1();
  }

  v2 = SWCHLogElementNav___logObj;

  return v2;
}

uint64_t __SWCHLogElementNav_block_invoke()
{
  SWCHLogElementNav___logObj = os_log_create("com.apple.Accessibility", "SWCHElementNav");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogPauseResume(uint64_t a1)
{
  if (SWCHLogPauseResume_onceToken != -1)
  {
    SWCHLogPauseResume_cold_1();
  }

  v2 = SWCHLogPauseResume___logObj;

  return v2;
}

uint64_t __SWCHLogPauseResume_block_invoke()
{
  SWCHLogPauseResume___logObj = os_log_create("com.apple.Accessibility", "SWCHPauseResume");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogHW(uint64_t a1)
{
  if (SWCHLogHW_onceToken != -1)
  {
    SWCHLogHW_cold_1();
  }

  v2 = SWCHLogHW___logObj;

  return v2;
}

uint64_t __SWCHLogHW_block_invoke()
{
  SWCHLogHW___logObj = os_log_create("com.apple.Accessibility", "SWCHHW");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogMenu(uint64_t a1)
{
  if (SWCHLogMenu_onceToken != -1)
  {
    SWCHLogMenu_cold_1();
  }

  v2 = SWCHLogMenu___logObj;

  return v2;
}

uint64_t __SWCHLogMenu_block_invoke()
{
  SWCHLogMenu___logObj = os_log_create("com.apple.Accessibility", "SWCHMenu");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogSettings(uint64_t a1)
{
  if (SWCHLogSettings_onceToken != -1)
  {
    SWCHLogSettings_cold_1();
  }

  v2 = SWCHLogSettings___logObj;

  return v2;
}

uint64_t __SWCHLogSettings_block_invoke()
{
  SWCHLogSettings___logObj = os_log_create("com.apple.Accessibility", "SWCHSettings");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogInputController(uint64_t a1)
{
  if (SWCHLogInputController_onceToken != -1)
  {
    SWCHLogInputController_cold_1();
  }

  v2 = SWCHLogInputController___logObj;

  return v2;
}

uint64_t __SWCHLogInputController_block_invoke()
{
  SWCHLogInputController___logObj = os_log_create("com.apple.Accessibility", "SWCHInputController");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogScannerManager(uint64_t a1)
{
  if (SWCHLogScannerManager_onceToken != -1)
  {
    SWCHLogScannerManager_cold_1();
  }

  v2 = SWCHLogScannerManager___logObj;

  return v2;
}

uint64_t __SWCHLogScannerManager_block_invoke()
{
  SWCHLogScannerManager___logObj = os_log_create("com.apple.Accessibility", "SWCHScannerManager");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogModernMenuActions(uint64_t a1)
{
  if (SWCHLogModernMenuActions_onceToken != -1)
  {
    SWCHLogModernMenuActions_cold_1();
  }

  v2 = SWCHLogModernMenuActions___logObj;

  return v2;
}

uint64_t __SWCHLogModernMenuActions_block_invoke()
{
  SWCHLogModernMenuActions___logObj = os_log_create("com.apple.Accessibility", "SWCHModernMenuActions");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTapticTime(uint64_t a1)
{
  if (AXLogTapticTime_onceToken != -1)
  {
    AXLogTapticTime_cold_1();
  }

  v2 = AXLogTapticTime___logObj;

  return v2;
}

uint64_t __AXLogTapticTime_block_invoke()
{
  AXLogTapticTime___logObj = os_log_create("com.apple.Accessibility", "AXTapticTime");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTouchAccommodations(uint64_t a1)
{
  if (AXLogTouchAccommodations_onceToken != -1)
  {
    AXLogTouchAccommodations_cold_1();
  }

  v2 = AXLogTouchAccommodations___logObj;

  return v2;
}

uint64_t __AXLogTouchAccommodations_block_invoke()
{
  AXLogTouchAccommodations___logObj = os_log_create("com.apple.Accessibility", "AXTouchAccommodations");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AXLogIDS_block_invoke()
{
  AXLogIDS___logObj = os_log_create("com.apple.Accessibility", "AXIDS");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogCommon(uint64_t a1)
{
  if (VOTLogCommon_onceToken != -1)
  {
    VOTLogCommon_cold_1();
  }

  v2 = VOTLogCommon___logObj;

  return v2;
}

uint64_t __VOTLogCommon_block_invoke()
{
  VOTLogCommon___logObj = os_log_create("com.apple.Accessibility", "VOTCommon");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogLayoutChange(uint64_t a1)
{
  if (VOTLogLayoutChange_onceToken != -1)
  {
    VOTLogLayoutChange_cold_1();
  }

  v2 = VOTLogLayoutChange___logObj;

  return v2;
}

uint64_t __VOTLogLayoutChange_block_invoke()
{
  VOTLogLayoutChange___logObj = os_log_create("com.apple.Accessibility", "VOTLayoutChange");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogHandwriting(uint64_t a1)
{
  if (VOTLogHandwriting_onceToken != -1)
  {
    VOTLogHandwriting_cold_1();
  }

  v2 = VOTLogHandwriting___logObj;

  return v2;
}

uint64_t __VOTLogHandwriting_block_invoke()
{
  VOTLogHandwriting___logObj = os_log_create("com.apple.Accessibility", "VOTHandwriting");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogSpeech(uint64_t a1)
{
  if (VOTLogSpeech_onceToken != -1)
  {
    VOTLogSpeech_cold_1();
  }

  v2 = VOTLogSpeech___logObj;

  return v2;
}

uint64_t __VOTLogSpeech_block_invoke()
{
  VOTLogSpeech___logObj = os_log_create("com.apple.Accessibility", "VOTSpeech");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogICloud(uint64_t a1)
{
  if (VOTLogICloud_onceToken != -1)
  {
    VOTLogICloud_cold_1();
  }

  v2 = VOTLogICloud___logObj;

  return v2;
}

uint64_t __VOTLogICloud_block_invoke()
{
  VOTLogICloud___logObj = os_log_create("com.apple.Accessibility", "VOTICloud");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogAudio(uint64_t a1)
{
  if (VOTLogAudio_onceToken != -1)
  {
    VOTLogAudio_cold_1();
  }

  v2 = VOTLogAudio___logObj;

  return v2;
}

uint64_t __VOTLogAudio_block_invoke()
{
  VOTLogAudio___logObj = os_log_create("com.apple.Accessibility", "VOTAudio");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogElement(uint64_t a1)
{
  if (VOTLogElement_onceToken != -1)
  {
    VOTLogElement_cold_1();
  }

  v2 = VOTLogElement___logObj;

  return v2;
}

uint64_t __VOTLogElement_block_invoke()
{
  VOTLogElement___logObj = os_log_create("com.apple.Accessibility", "VOTElement");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogEvent(uint64_t a1)
{
  if (VOTLogEvent_onceToken != -1)
  {
    VOTLogEvent_cold_1();
  }

  v2 = VOTLogEvent___logObj;

  return v2;
}

uint64_t __VOTLogEvent_block_invoke()
{
  VOTLogEvent___logObj = os_log_create("com.apple.Accessibility", "VOTEvent");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogBraille(uint64_t a1)
{
  if (VOTLogBraille_onceToken != -1)
  {
    VOTLogBraille_cold_1();
  }

  v2 = VOTLogBraille___logObj;

  return v2;
}

uint64_t __VOTLogBraille_block_invoke()
{
  VOTLogBraille___logObj = os_log_create("com.apple.Accessibility", "VOTBraille");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogBrailleGestures(uint64_t a1)
{
  if (VOTLogBrailleGestures_onceToken != -1)
  {
    VOTLogBrailleGestures_cold_1();
  }

  v2 = VOTLogBrailleGestures___logObj;

  return v2;
}

uint64_t __VOTLogBrailleGestures_block_invoke()
{
  VOTLogBrailleGestures___logObj = os_log_create("com.apple.Accessibility", "VOTBrailleGestures");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogNotifications(uint64_t a1)
{
  if (VOTLogNotifications_onceToken != -1)
  {
    VOTLogNotifications_cold_1();
  }

  v2 = VOTLogNotifications___logObj;

  return v2;
}

uint64_t __VOTLogNotifications_block_invoke()
{
  VOTLogNotifications___logObj = os_log_create("com.apple.Accessibility", "VOTNotifications");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogKeyboard(uint64_t a1)
{
  if (VOTLogKeyboard_onceToken != -1)
  {
    VOTLogKeyboard_cold_1();
  }

  v2 = VOTLogKeyboard___logObj;

  return v2;
}

uint64_t __VOTLogKeyboard_block_invoke()
{
  VOTLogKeyboard___logObj = os_log_create("com.apple.Accessibility", "VOTKeyboard");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogTVFocus(uint64_t a1)
{
  if (VOTLogTVFocus_onceToken != -1)
  {
    VOTLogTVFocus_cold_1();
  }

  v2 = VOTLogTVFocus___logObj;

  return v2;
}

uint64_t __VOTLogTVFocus_block_invoke()
{
  VOTLogTVFocus___logObj = os_log_create("com.apple.Accessibility", "VOTTVFocus");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogTVExplorer(uint64_t a1)
{
  if (VOTLogTVExplorer_onceToken != -1)
  {
    VOTLogTVExplorer_cold_1();
  }

  v2 = VOTLogTVExplorer___logObj;

  return v2;
}

uint64_t __VOTLogTVExplorer_block_invoke()
{
  VOTLogTVExplorer___logObj = os_log_create("com.apple.Accessibility", "VOTTVExplorer");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogIAP(uint64_t a1)
{
  if (VOTLogIAP_onceToken != -1)
  {
    VOTLogIAP_cold_1();
  }

  v2 = VOTLogIAP___logObj;

  return v2;
}

uint64_t __VOTLogIAP_block_invoke()
{
  VOTLogIAP___logObj = os_log_create("com.apple.Accessibility", "VOTIAP");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogLifeCycle(uint64_t a1)
{
  if (VOTLogLifeCycle_onceToken != -1)
  {
    VOTLogLifeCycle_cold_1();
  }

  v2 = VOTLogLifeCycle___logObj;

  return v2;
}

uint64_t __VOTLogLifeCycle_block_invoke()
{
  VOTLogLifeCycle___logObj = os_log_create("com.apple.Accessibility", "VOTLifeCycle");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogMagicTap(uint64_t a1)
{
  if (VOTLogMagicTap_onceToken != -1)
  {
    VOTLogMagicTap_cold_1();
  }

  v2 = VOTLogMagicTap___logObj;

  return v2;
}

uint64_t __VOTLogMagicTap_block_invoke()
{
  VOTLogMagicTap___logObj = os_log_create("com.apple.Accessibility", "VOTMagicTap");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogRotor(uint64_t a1)
{
  if (VOTLogRotor_onceToken != -1)
  {
    VOTLogRotor_cold_1();
  }

  v2 = VOTLogRotor___logObj;

  return v2;
}

uint64_t __VOTLogRotor_block_invoke()
{
  VOTLogRotor___logObj = os_log_create("com.apple.Accessibility", "VOTRotor");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogQuickSettings(uint64_t a1)
{
  if (VOTLogQuickSettings_onceToken != -1)
  {
    VOTLogQuickSettings_cold_1();
  }

  v2 = VOTLogQuickSettings___logObj;

  return v2;
}

uint64_t __VOTLogQuickSettings_block_invoke()
{
  VOTLogQuickSettings___logObj = os_log_create("com.apple.Accessibility", "VOTQuickSettings");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogSimpleTap(uint64_t a1)
{
  if (VOTLogSimpleTap_onceToken != -1)
  {
    VOTLogSimpleTap_cold_1();
  }

  v2 = VOTLogSimpleTap___logObj;

  return v2;
}

uint64_t __VOTLogSimpleTap_block_invoke()
{
  VOTLogSimpleTap___logObj = os_log_create("com.apple.Accessibility", "VOTSimpleTap");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AXLogPunctuationStorage_block_invoke()
{
  AXLogPunctuationStorage___logObj = os_log_create("com.apple.Accessibility", "AXPunctuationStorage");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogWebPageMovement(uint64_t a1)
{
  if (VOTLogWebPageMovement_onceToken != -1)
  {
    VOTLogWebPageMovement_cold_1();
  }

  v2 = VOTLogWebPageMovement___logObj;

  return v2;
}

uint64_t __VOTLogWebPageMovement_block_invoke()
{
  VOTLogWebPageMovement___logObj = os_log_create("com.apple.Accessibility", "VOTWebPageMovement");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogCommands(uint64_t a1)
{
  if (VOTLogCommands_onceToken != -1)
  {
    VOTLogCommands_cold_1();
  }

  v2 = VOTLogCommands___logObj;

  return v2;
}

uint64_t __VOTLogCommands_block_invoke()
{
  VOTLogCommands___logObj = os_log_create("com.apple.Accessibility", "VOTCommands");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogImageExplorer(uint64_t a1)
{
  if (VOTLogImageExplorer_onceToken != -1)
  {
    VOTLogImageExplorer_cold_1();
  }

  v2 = VOTLogImageExplorer___logObj;

  return v2;
}

uint64_t __VOTLogImageExplorer_block_invoke()
{
  VOTLogImageExplorer___logObj = os_log_create("com.apple.Accessibility", "VOTImageExplorer");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVisualAlerts(uint64_t a1)
{
  if (AXLogVisualAlerts_onceToken != -1)
  {
    AXLogVisualAlerts_cold_1();
  }

  v2 = AXLogVisualAlerts___logObj;

  return v2;
}

uint64_t __AXLogVisualAlerts_block_invoke()
{
  AXLogVisualAlerts___logObj = os_log_create("com.apple.Accessibility", "AXVisualAlerts");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AXLogRTT_block_invoke()
{
  AXLogRTT___logObj = os_log_create("com.apple.Accessibility", "AXRTT");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUltron(uint64_t a1)
{
  if (AXLogUltron_onceToken != -1)
  {
    AXLogUltron_cold_1();
  }

  v2 = AXLogUltron___logObj;

  return v2;
}

uint64_t __AXLogUltron_block_invoke()
{
  AXLogUltron___logObj = os_log_create("com.apple.Accessibility", "AXUltron");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUltronKShot(uint64_t a1)
{
  if (AXLogUltronKShot_onceToken != -1)
  {
    AXLogUltronKShot_cold_1();
  }

  v2 = AXLogUltronKShot___logObj;

  return v2;
}

uint64_t __AXLogUltronKShot_block_invoke()
{
  AXLogUltronKShot___logObj = os_log_create("com.apple.Accessibility", "AXUltronKShot");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAudiogram(uint64_t a1)
{
  if (AXLogAudiogram_onceToken != -1)
  {
    AXLogAudiogram_cold_1();
  }

  v2 = AXLogAudiogram___logObj;

  return v2;
}

uint64_t __AXLogAudiogram_block_invoke()
{
  AXLogAudiogram___logObj = os_log_create("com.apple.Accessibility", "AXAudiogram");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDisplayFilters(uint64_t a1)
{
  if (AXLogDisplayFilters_onceToken != -1)
  {
    AXLogDisplayFilters_cold_1();
  }

  v2 = AXLogDisplayFilters___logObj;

  return v2;
}

uint64_t __AXLogDisplayFilters_block_invoke()
{
  AXLogDisplayFilters___logObj = os_log_create("com.apple.Accessibility", "AXDisplayFilters");

  return MEMORY[0x1EEE66BB8]();
}

id ZOOMLogCommon(uint64_t a1)
{
  if (ZOOMLogCommon_onceToken != -1)
  {
    ZOOMLogCommon_cold_1();
  }

  v2 = ZOOMLogCommon___logObj;

  return v2;
}

uint64_t __ZOOMLogCommon_block_invoke()
{
  ZOOMLogCommon___logObj = os_log_create("com.apple.Accessibility", "ZOOMCommon");

  return MEMORY[0x1EEE66BB8]();
}

id ZOOMLogEvents(uint64_t a1)
{
  if (ZOOMLogEvents_onceToken != -1)
  {
    ZOOMLogEvents_cold_1();
  }

  v2 = ZOOMLogEvents___logObj;

  return v2;
}

uint64_t __ZOOMLogEvents_block_invoke()
{
  ZOOMLogEvents___logObj = os_log_create("com.apple.Accessibility", "ZOOMEvents");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUnitTesting(uint64_t a1)
{
  if (AXLogUnitTesting_onceToken != -1)
  {
    AXLogUnitTesting_cold_1();
  }

  v2 = AXLogUnitTesting___logObj;

  return v2;
}

uint64_t __AXLogUnitTesting_block_invoke()
{
  AXLogUnitTesting___logObj = os_log_create("com.apple.Accessibility", "AXUnitTesting");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPerfTesting(uint64_t a1)
{
  if (AXLogPerfTesting_onceToken != -1)
  {
    AXLogPerfTesting_cold_1();
  }

  v2 = AXLogPerfTesting___logObj;

  return v2;
}

uint64_t __AXLogPerfTesting_block_invoke()
{
  AXLogPerfTesting___logObj = os_log_create("com.apple.Accessibility", "AXPerfTesting");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogCommon(uint64_t a1)
{
  if (AXMediaLogCommon_onceToken != -1)
  {
    AXMediaLogCommon_cold_1();
  }

  v2 = AXMediaLogCommon___logObj;

  return v2;
}

uint64_t __AXMediaLogCommon_block_invoke()
{
  AXMediaLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXMediaCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogSettings(uint64_t a1)
{
  if (AXMediaLogSettings_onceToken != -1)
  {
    AXMediaLogSettings_cold_1();
  }

  v2 = AXMediaLogSettings___logObj;

  return v2;
}

uint64_t __AXMediaLogSettings_block_invoke()
{
  AXMediaLogSettings___logObj = os_log_create("com.apple.Accessibility", "AXMediaSettings");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogService(uint64_t a1)
{
  if (AXMediaLogService_onceToken != -1)
  {
    AXMediaLogService_cold_1();
  }

  v2 = AXMediaLogService___logObj;

  return v2;
}

uint64_t __AXMediaLogService_block_invoke()
{
  AXMediaLogService___logObj = os_log_create("com.apple.Accessibility", "AXMediaService");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogEngineCache(uint64_t a1)
{
  if (AXMediaLogEngineCache_onceToken != -1)
  {
    AXMediaLogEngineCache_cold_1();
  }

  v2 = AXMediaLogEngineCache___logObj;

  return v2;
}

uint64_t __AXMediaLogEngineCache_block_invoke()
{
  AXMediaLogEngineCache___logObj = os_log_create("com.apple.Accessibility", "AXMediaEngineCache");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogEnginePriority(uint64_t a1)
{
  if (AXMediaLogEnginePriority_onceToken != -1)
  {
    AXMediaLogEnginePriority_cold_1();
  }

  v2 = AXMediaLogEnginePriority___logObj;

  return v2;
}

uint64_t __AXMediaLogEnginePriority_block_invoke()
{
  AXMediaLogEnginePriority___logObj = os_log_create("com.apple.Accessibility", "AXMediaEnginePriority");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogScreenGrab(uint64_t a1)
{
  if (AXMediaLogScreenGrab_onceToken != -1)
  {
    AXMediaLogScreenGrab_cold_1();
  }

  v2 = AXMediaLogScreenGrab___logObj;

  return v2;
}

uint64_t __AXMediaLogScreenGrab_block_invoke()
{
  AXMediaLogScreenGrab___logObj = os_log_create("com.apple.Accessibility", "AXMediaScreenGrab");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogOCR(uint64_t a1)
{
  if (AXMediaLogOCR_onceToken != -1)
  {
    AXMediaLogOCR_cold_1();
  }

  v2 = AXMediaLogOCR___logObj;

  return v2;
}

uint64_t __AXMediaLogOCR_block_invoke()
{
  AXMediaLogOCR___logObj = os_log_create("com.apple.Accessibility", "AXMediaOCR");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogMLElement(uint64_t a1)
{
  if (AXMediaLogMLElement_onceToken != -1)
  {
    AXMediaLogMLElement_cold_1();
  }

  v2 = AXMediaLogMLElement___logObj;

  return v2;
}

uint64_t __AXMediaLogMLElement_block_invoke()
{
  AXMediaLogMLElement___logObj = os_log_create("com.apple.Accessibility", "AXMediaMLElement");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogTextProcessing(uint64_t a1)
{
  if (AXMediaLogTextProcessing_onceToken != -1)
  {
    AXMediaLogTextProcessing_cold_1();
  }

  v2 = AXMediaLogTextProcessing___logObj;

  return v2;
}

uint64_t __AXMediaLogTextProcessing_block_invoke()
{
  AXMediaLogTextProcessing___logObj = os_log_create("com.apple.Accessibility", "AXMediaTextProcessing");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogElementVision(uint64_t a1)
{
  if (AXMediaLogElementVision_onceToken != -1)
  {
    AXMediaLogElementVision_cold_1();
  }

  v2 = AXMediaLogElementVision___logObj;

  return v2;
}

uint64_t __AXMediaLogElementVision_block_invoke()
{
  AXMediaLogElementVision___logObj = os_log_create("com.apple.Accessibility", "AXMediaElementVision");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogTextLayout(uint64_t a1)
{
  if (AXMediaLogTextLayout_onceToken != -1)
  {
    AXMediaLogTextLayout_cold_1();
  }

  v2 = AXMediaLogTextLayout___logObj;

  return v2;
}

uint64_t __AXMediaLogTextLayout_block_invoke()
{
  AXMediaLogTextLayout___logObj = os_log_create("com.apple.Accessibility", "AXMediaTextLayout");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogResults(uint64_t a1)
{
  if (AXMediaLogResults_onceToken != -1)
  {
    AXMediaLogResults_cold_1();
  }

  v2 = AXMediaLogResults___logObj;

  return v2;
}

uint64_t __AXMediaLogResults_block_invoke()
{
  AXMediaLogResults___logObj = os_log_create("com.apple.Accessibility", "AXMediaResults");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogTracking(uint64_t a1)
{
  if (AXMediaLogTracking_onceToken != -1)
  {
    AXMediaLogTracking_cold_1();
  }

  v2 = AXMediaLogTracking___logObj;

  return v2;
}

uint64_t __AXMediaLogTracking_block_invoke()
{
  AXMediaLogTracking___logObj = os_log_create("com.apple.Accessibility", "AXMediaTracking");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogOutput(uint64_t a1)
{
  if (AXMediaLogOutput_onceToken != -1)
  {
    AXMediaLogOutput_cold_1();
  }

  v2 = AXMediaLogOutput___logObj;

  return v2;
}

uint64_t __AXMediaLogOutput_block_invoke()
{
  AXMediaLogOutput___logObj = os_log_create("com.apple.Accessibility", "AXMediaOutput");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogSpeech(uint64_t a1)
{
  if (AXMediaLogSpeech_onceToken != -1)
  {
    AXMediaLogSpeech_cold_1();
  }

  v2 = AXMediaLogSpeech___logObj;

  return v2;
}

uint64_t __AXMediaLogSpeech_block_invoke()
{
  AXMediaLogSpeech___logObj = os_log_create("com.apple.Accessibility", "AXMediaSpeech");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogSounds(uint64_t a1)
{
  if (AXMediaLogSounds_onceToken != -1)
  {
    AXMediaLogSounds_cold_1();
  }

  v2 = AXMediaLogSounds___logObj;

  return v2;
}

uint64_t __AXMediaLogSounds_block_invoke()
{
  AXMediaLogSounds___logObj = os_log_create("com.apple.Accessibility", "AXMediaSounds");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogHaptics(uint64_t a1)
{
  if (AXMediaLogHaptics_onceToken != -1)
  {
    AXMediaLogHaptics_cold_1();
  }

  v2 = AXMediaLogHaptics___logObj;

  return v2;
}

uint64_t __AXMediaLogHaptics_block_invoke()
{
  AXMediaLogHaptics___logObj = os_log_create("com.apple.Accessibility", "AXMediaHaptics");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogCaptionDescriptions(uint64_t a1)
{
  if (AXMediaLogCaptionDescriptions_onceToken != -1)
  {
    AXMediaLogCaptionDescriptions_cold_1();
  }

  v2 = AXMediaLogCaptionDescriptions___logObj;

  return v2;
}

uint64_t __AXMediaLogCaptionDescriptions_block_invoke()
{
  AXMediaLogCaptionDescriptions___logObj = os_log_create("com.apple.Accessibility", "AXMediaCaptionDescriptions");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogDiagnostics(uint64_t a1)
{
  if (AXMediaLogDiagnostics_onceToken != -1)
  {
    AXMediaLogDiagnostics_cold_1();
  }

  v2 = AXMediaLogDiagnostics___logObj;

  return v2;
}

uint64_t __AXMediaLogDiagnostics_block_invoke()
{
  AXMediaLogDiagnostics___logObj = os_log_create("com.apple.Accessibility", "AXMediaDiagnostics");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogLanguageTranslation(uint64_t a1)
{
  if (AXMediaLogLanguageTranslation_onceToken != -1)
  {
    AXMediaLogLanguageTranslation_cold_1();
  }

  v2 = AXMediaLogLanguageTranslation___logObj;

  return v2;
}

uint64_t __AXMediaLogLanguageTranslation_block_invoke()
{
  AXMediaLogLanguageTranslation___logObj = os_log_create("com.apple.Accessibility", "AXMediaLanguageTranslation");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAirPodSettings(uint64_t a1)
{
  if (AXLogAirPodSettings_onceToken != -1)
  {
    AXLogAirPodSettings_cold_1();
  }

  v2 = AXLogAirPodSettings___logObj;

  return v2;
}

uint64_t __AXLogAirPodSettings_block_invoke()
{
  AXLogAirPodSettings___logObj = os_log_create("com.apple.Accessibility", "AXAirPodSettings");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAssetDaemon(uint64_t a1)
{
  if (AXLogAssetDaemon_onceToken != -1)
  {
    AXLogAssetDaemon_cold_1();
  }

  v2 = AXLogAssetDaemon___logObj;

  return v2;
}

uint64_t __AXLogAssetDaemon_block_invoke()
{
  AXLogAssetDaemon___logObj = os_log_create("com.apple.Accessibility", "AXAssetDaemon");

  return MEMORY[0x1EEE66BB8]();
}

id AXPlatformTranslationLogCommon(uint64_t a1)
{
  if (AXPlatformTranslationLogCommon_onceToken != -1)
  {
    AXPlatformTranslationLogCommon_cold_1();
  }

  v2 = AXPlatformTranslationLogCommon___logObj;

  return v2;
}

uint64_t __AXPlatformTranslationLogCommon_block_invoke()
{
  AXPlatformTranslationLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXPlatformTranslationCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTemp(uint64_t a1)
{
  if (AXLogTemp_onceToken != -1)
  {
    AXLogTemp_cold_1();
  }

  v2 = AXLogTemp___logObj;

  return v2;
}

uint64_t __AXLogTemp_block_invoke()
{
  AXLogTemp___logObj = os_log_create("com.apple.Accessibility", "AXTemp");

  return MEMORY[0x1EEE66BB8]();
}

id BRLLogTranslation(uint64_t a1)
{
  if (BRLLogTranslation_onceToken != -1)
  {
    BRLLogTranslation_cold_1();
  }

  v2 = BRLLogTranslation___logObj;

  return v2;
}

uint64_t __BRLLogTranslation_block_invoke()
{
  BRLLogTranslation___logObj = os_log_create("com.apple.Accessibility", "BRLTranslation");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBackTap(uint64_t a1)
{
  if (AXLogBackTap_onceToken != -1)
  {
    AXLogBackTap_cold_1();
  }

  v2 = AXLogBackTap___logObj;

  return v2;
}

uint64_t __AXLogBackTap_block_invoke()
{
  AXLogBackTap___logObj = os_log_create("com.apple.Accessibility", "AXBackTap");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSoundActions(uint64_t a1)
{
  if (AXLogSoundActions_onceToken != -1)
  {
    AXLogSoundActions_cold_1();
  }

  v2 = AXLogSoundActions___logObj;

  return v2;
}

uint64_t __AXLogSoundActions_block_invoke()
{
  AXLogSoundActions___logObj = os_log_create("com.apple.Accessibility", "AXSoundActions");

  return MEMORY[0x1EEE66BB8]();
}

id CLFLogCommon(uint64_t a1)
{
  if (CLFLogCommon_onceToken != -1)
  {
    CLFLogCommon_cold_1();
  }

  v2 = CLFLogCommon___logObj;

  return v2;
}

uint64_t __CLFLogCommon_block_invoke()
{
  CLFLogCommon___logObj = os_log_create("com.apple.Accessibility", "CLFCommon");

  return MEMORY[0x1EEE66BB8]();
}

id CLFLogSettings(uint64_t a1)
{
  if (CLFLogSettings_onceToken != -1)
  {
    CLFLogSettings_cold_1();
  }

  v2 = CLFLogSettings___logObj;

  return v2;
}

uint64_t __CLFLogSettings_block_invoke()
{
  CLFLogSettings___logObj = os_log_create("com.apple.Accessibility", "CLFSettings");

  return MEMORY[0x1EEE66BB8]();
}

id CLFLogBacklight(uint64_t a1)
{
  if (CLFLogBacklight_onceToken != -1)
  {
    CLFLogBacklight_cold_1();
  }

  v2 = CLFLogBacklight___logObj;

  return v2;
}

uint64_t __CLFLogBacklight_block_invoke()
{
  CLFLogBacklight___logObj = os_log_create("com.apple.Accessibility", "CLFBacklight");

  return MEMORY[0x1EEE66BB8]();
}

id HTLogCommon(uint64_t a1)
{
  if (HTLogCommon_onceToken != -1)
  {
    HTLogCommon_cold_1();
  }

  v2 = HTLogCommon___logObj;

  return v2;
}

uint64_t __HTLogCommon_block_invoke()
{
  HTLogCommon___logObj = os_log_create("com.apple.Accessibility", "HTCommon");

  return MEMORY[0x1EEE66BB8]();
}

id LiveSpeechLogCommon(uint64_t a1)
{
  if (LiveSpeechLogCommon_onceToken != -1)
  {
    LiveSpeechLogCommon_cold_1();
  }

  v2 = LiveSpeechLogCommon___logObj;

  return v2;
}

uint64_t __LiveSpeechLogCommon_block_invoke()
{
  LiveSpeechLogCommon___logObj = os_log_create("com.apple.Accessibility", "LiveSpeechCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLiveTranscription(uint64_t a1)
{
  if (AXLogLiveTranscription_onceToken != -1)
  {
    AXLogLiveTranscription_cold_1();
  }

  v2 = AXLogLiveTranscription___logObj;

  return v2;
}

uint64_t __AXLogLiveTranscription_block_invoke()
{
  AXLogLiveTranscription___logObj = os_log_create("com.apple.Accessibility", "AXLiveTranscription");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTwiceRemoteScreen(uint64_t a1)
{
  if (AXLogTwiceRemoteScreen_onceToken != -1)
  {
    AXLogTwiceRemoteScreen_cold_1();
  }

  v2 = AXLogTwiceRemoteScreen___logObj;

  return v2;
}

uint64_t __AXLogTwiceRemoteScreen_block_invoke()
{
  AXLogTwiceRemoteScreen___logObj = os_log_create("com.apple.Accessibility", "AXTwiceRemoteScreen");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogHapticMusic(uint64_t a1)
{
  if (AXLogHapticMusic_onceToken != -1)
  {
    AXLogHapticMusic_cold_1();
  }

  v2 = AXLogHapticMusic___logObj;

  return v2;
}

uint64_t __AXLogHapticMusic_block_invoke()
{
  AXLogHapticMusic___logObj = os_log_create("com.apple.Accessibility", "AXHapticMusic");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAVS(uint64_t a1)
{
  if (AXLogAVS_onceToken != -1)
  {
    AXLogAVS_cold_1();
  }

  v2 = AXLogAVS___logObj;

  return v2;
}

uint64_t __AXLogAVS_block_invoke()
{
  AXLogAVS___logObj = os_log_create("com.apple.Accessibility", "AXAVS");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogHearingTest(uint64_t a1)
{
  if (AXLogHearingTest_onceToken != -1)
  {
    AXLogHearingTest_cold_1();
  }

  v2 = AXLogHearingTest___logObj;

  return v2;
}

uint64_t __AXLogHearingTest_block_invoke()
{
  AXLogHearingTest___logObj = os_log_create("com.apple.Accessibility", "AXHearingTest");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogReader(uint64_t a1)
{
  if (AXLogReader_onceToken != -1)
  {
    AXLogReader_cold_1();
  }

  v2 = AXLogReader___logObj;

  return v2;
}

uint64_t __AXLogReader_block_invoke()
{
  AXLogReader___logObj = os_log_create("com.apple.Accessibility", "AXReader");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVoiceOverMapsAI(uint64_t a1)
{
  if (AXLogVoiceOverMapsAI_onceToken != -1)
  {
    AXLogVoiceOverMapsAI_cold_1();
  }

  v2 = AXLogVoiceOverMapsAI___logObj;

  return v2;
}

uint64_t __AXLogVoiceOverMapsAI_block_invoke()
{
  AXLogVoiceOverMapsAI___logObj = os_log_create("com.apple.Accessibility", "AXVoiceOverMapsAI");

  return MEMORY[0x1EEE66BB8]();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1915D2A64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1915D2A84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1915D2B04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1915D2B24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1915D2B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_191652EA0(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF258, &qword_191671A40);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t sub_1915D2BFC()
{
  v0 = sub_191652FB4(&unk_1F05754B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF260, &qword_191671A48);
  result = swift_arrayDestroy();
  qword_1EADB6DE8 = v0;
  return result;
}

uint64_t sub_1915D2C58()
{
  v0 = sub_191652FB4(&unk_1F0575540);
  result = sub_1915D3224(&unk_1F0575560);
  qword_1EADB6DF0 = v0;
  return result;
}

uint64_t sub_1915D2C98(uint64_t a1, id *a2)
{
  result = sub_19166B728();
  *a2 = 0;
  return result;
}

uint64_t sub_1915D2D10(uint64_t a1, id *a2)
{
  v3 = sub_19166B738();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1915D2D90@<X0>(uint64_t *a3@<X8>)
{
  sub_19166B748();
  v4 = sub_19166B718();

  *a3 = v4;
  return result;
}

uint64_t sub_1915D2DD4(uint64_t a1)
{
  v2 = sub_1915D33B8(&qword_1EADAF2C0, type metadata accessor for Name, &unk_191671DE4);
  v3 = sub_1915D33B8(&unk_1EADAF2C8, type metadata accessor for Name, &unk_191671D84);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1915D2E90(uint64_t a1)
{
  v2 = sub_1915D33B8(&qword_1EADAE4C0, type metadata accessor for FileAttributeKey, &unk_191671E74);
  v3 = sub_1915D33B8(&unk_1EADAF2D8, type metadata accessor for FileAttributeKey, &unk_191671C70);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1915D2F4C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_19166B718();

  *a2 = v3;
  return result;
}

uint64_t sub_1915D2F94(uint64_t a1)
{
  v2 = sub_1915D33B8(&qword_1EADAE670, type metadata accessor for NSKeyValueChangeKey, &unk_191671EB8);
  v3 = sub_1915D33B8(&qword_1EADAF2E8, type metadata accessor for NSKeyValueChangeKey, &unk_191671B5C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1915D3050(uint64_t a1, uint64_t a2)
{
  v2 = sub_19166B748();
  v3 = MEMORY[0x193AFC7B0](v2);

  return v3;
}

uint64_t sub_1915D308C(uint64_t a1, uint64_t a2)
{
  sub_19166B748();
  sub_19166B828();
}

uint64_t sub_1915D30E0(uint64_t a1, uint64_t a2)
{
  sub_19166B748();
  sub_19166C778();
  sub_19166B828();
  v2 = sub_19166C7B8();

  return v2;
}

uint64_t sub_1915D3154(void *a1, uint64_t *a2)
{
  v2 = sub_19166B748();
  v4 = v3;
  if (v2 == sub_19166B748() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_19166C5E8();
  }

  return v7 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1915D3224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF260, &qword_191671A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1915D32DC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1915D33B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t axObservationTrackingStream<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19166BB98();
  MEMORY[0x1EEE9AC00](v6, v7);
  v12 = a3;
  v13 = a1;
  v14 = a2;
  (*(v9 + 104))(&v11[-v8], *MEMORY[0x1E69E8650]);
  return sub_19166BC18();
}

uint64_t sub_1915D3744(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v34 = a4;
  v35 = a1;
  v5 = sub_19166BBC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v36 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v16 = sub_19166BB78();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v34 - v20;
  a2(v19);
  v22 = v35;
  sub_19166BBA8();
  (*(v17 + 8))(v21, v16);
  sub_19166BB38();
  v23 = sub_19166BB58();
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  v24 = v36;
  (*(v6 + 16))(v36, v22, v5);
  v25 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v26 = (v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v34;
  *(v27 + 4) = v34;
  (*(v6 + 32))(&v27[v25], v24, v5);
  v29 = &v27[v26];
  v30 = v37;
  *v29 = a2;
  *(v29 + 1) = v30;

  v31 = sub_1915D42EC(0, 0, v14, &unk_1916720A0, v27);
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  *(v32 + 24) = v31;
  return sub_19166BB88();
}

uint64_t sub_1915D3A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = swift_task_alloc();
  v8 = sub_19166BB78();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915D3B90, 0, 0);
}

uint64_t sub_1915D3B90()
{
  if (sub_19166BC48())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1915D3C78;
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[3];
    v7 = v0[4];

    return withNextChange<A>(_:)(v4, v6, v7, v5);
  }
}

uint64_t sub_1915D3C78()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1915D3ECC;
  }

  else
  {
    v2 = sub_1915D3D8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1915D3D8C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_19166BBC8();
  sub_19166BBA8();
  (*(v2 + 8))(v1, v3);
  if (sub_19166BC48())
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1915D3C78;
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v10 = v0[4];

    return withNextChange<A>(_:)(v7, v9, v10, v8);
  }
}

uint64_t sub_1915D3ECC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t withNextChange<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1915D3F60, 0, 0);
}

uint64_t sub_1915D3F60()
{
  v1 = *(v0 + 40);
  type metadata accessor for ObservationSentinel(0);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 16) = 0;
  v10 = *(v0 + 24);
  sub_19166B438();
  v3 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v0 + 56) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v10;
  *(v4 + 48) = v3;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1915D40D4;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v8, &unk_191671F10, v4, sub_1915D5FE4, v5, 0, 0, v7);
}

uint64_t sub_1915D40D4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1915D4264;
  }

  else
  {

    v2 = sub_1915D41F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1915D41F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1915D4264()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1915D42EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v23 - v10;
  sub_1915D77C0(a3, v23 - v10);
  v12 = sub_19166BB58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1915D7830(v11);
  }

  else
  {
    sub_19166BB48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19166BA78();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19166B7D8() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1915D7830(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1915D7830(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1915D455C@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8650];
  v4 = sub_19166BB98();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t type metadata accessor for ObservationSentinel(uint64_t a1)
{
  result = qword_1EADAE810;
  if (!qword_1EADAE810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1915D4620()
{
  swift_getKeyPath();
  sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel, &unk_191671FD8);
  sub_19166B428();

  return *(v0 + 16);
}

uint64_t sub_1915D46C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel, &unk_191671FD8);
  sub_19166B428();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1915D4790(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel, &unk_191671FD8);
    sub_19166B418();
  }

  return result;
}

uint64_t sub_1915D48A0()
{
  v1 = OBJC_IVAR____TtC15AXCoreUtilitiesP33_AB91057B37695AB1D964E83478A9F98119ObservationSentinel___observationRegistrar;
  v2 = sub_19166B448();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1915D493C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1915D4964, 0, 0);
}

uint64_t sub_1915D4964()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1915D4A5C;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000012, 0x800000019167C550, sub_1915D7DD0, v1, v5);
}

uint64_t sub_1915D4A5C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1915D4B98, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1915D4B98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1915D4BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1915D4C24, 0, 0);
}

uint64_t sub_1915D4C24()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1915D4D28;
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000012, 0x800000019167C550, sub_1915D7E9C, v2, v6);
}

uint64_t sub_1915D4D28()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1915D4E64, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1915D4E64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1915D4EC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D4F90;

  return sub_1915D4BFC(a1, v5, v6, v7, v8, v4);
}

uint64_t sub_1915D4F90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1915D5084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v30 = a1;
  v31 = a5;
  v28 = a4;
  v29 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
  v10 = sub_19166BAA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v27 - v15;
  v32 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a6;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  (*(v11 + 16))(v16, v30, v10);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 2) = a6;
  *(v21 + 3) = v22;
  *(v21 + 4) = a2;
  (*(v11 + 32))(&v21[v20], v16, v10);
  v23 = &v21[(v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  v24 = v28;
  *v23 = v29;
  v23[1] = v24;
  v25 = v22;

  sub_19166B408();

  return (*(v32 + 8))(v19, a6);
}

uint64_t sub_1915D52E8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getKeyPath();
  sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel, &unk_191671FD8);
  sub_19166B428();

  return a2(v3);
}

uint64_t sub_1915D53A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a5;
  v29 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
  v11 = sub_19166BAA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v28 - v19;
  v21 = sub_19166BB58();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v12 + 16))(v16, a4, v11);
  v22 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = a7;
  *(v23 + 5) = a2;
  *(v23 + 6) = a3;
  (*(v12 + 32))(&v23[v22], v16, v11);
  v24 = &v23[(v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v29;
  *v24 = v28;
  v24[1] = v25;
  v26 = a2;

  sub_1915D593C(0, 0, v20, &unk_191672090, v23);
}

uint64_t sub_1915D55EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1915D5620, 0, 0);
}

uint64_t sub_1915D5620()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  [*(v0 + 24) lock];
  sub_1915D5724(v5, v4, v3, v1, v2);
  [*(v0 + 24) unlock];
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1915D5724(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  result = MEMORY[0x1EEE9AC00](a1, a2);
  if ((*(result + 17) & 1) == 0)
  {
    *(result + 17) = 1;
    v7 = result;
    swift_getKeyPath();
    sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel, &unk_191671FD8);
    sub_19166B428();

    if (*(v7 + 16) == 1)
    {
      sub_19166BAB8();
      sub_1915D8150(&qword_1EADAF3C8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      swift_allocError();
      sub_19166B658();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
      sub_19166BAA8();
      return sub_19166BA88();
    }

    else
    {
      a3(v8);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
      sub_19166BAA8();
      return sub_19166BA98();
    }
  }

  return result;
}

uint64_t sub_1915D593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1915D77C0(a3, v26 - v11);
  v13 = sub_19166BB58();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1915D7830(v12);
  }

  else
  {
    sub_19166BB48();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_19166BA78();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_19166B7D8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1915D7830(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1915D7830(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1915D5BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1915D77C0(a3, v26 - v11);
  v13 = sub_19166BB58();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1915D7830(v12);
  }

  else
  {
    sub_19166BB48();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_19166BA78();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_19166B7D8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3C0, &qword_1916738F0);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_1915D7830(a3);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1915D7830(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3C0, &qword_1916738F0);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1915D5ED0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_19166BB58();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a1;

  sub_1915D593C(0, 0, v7, &unk_191672080, v9);
}

uint64_t sub_1915D5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1915D600C, 0, 0);
}

uint64_t sub_1915D600C()
{
  v1 = *(v0 + 32);
  [*(v0 + 24) lock];
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    v2 = *(v0 + 32);
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    *(v0 + 16) = v2;
    sub_1915D8150(&qword_1EADAE820, type metadata accessor for ObservationSentinel, &unk_191671FD8);
    sub_19166B418();
  }

  [*(v0 + 24) unlock];
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1915D6164()
{
  type metadata accessor for AXBlockObserver();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  qword_1EADAF3B0 = v0;
  return result;
}

uint64_t AXBlockObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t static AXBlockObserver.shared.getter()
{
  if (qword_1EADAEFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AXBlockObserver.shared.setter(uint64_t a1)
{
  if (qword_1EADAEFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADAF3B0 = a1;
}

uint64_t (*static AXBlockObserver.shared.modify(uint64_t a1))()
{
  if (qword_1EADAEFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1915D6374@<X0>(void *a1@<X8>)
{
  if (qword_1EADAEFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EADAF3B0;
}

uint64_t sub_1915D63F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EADAEFF0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADAF3B0 = v1;
}

uint64_t AXBlockObserver.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t sub_1915D64A8(uint64_t a1)
{
  v3 = sub_19166B1C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {

    sub_1915DB2EC(a1);
    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
      sub_19166BC28();
    }

    else
    {
    }
  }

  (*(v4 + 16))(v7, a1, v3);
  swift_beginAccess();
  sub_1915E0BE8(0, v7);
  return swift_endAccess();
}

uint64_t (*sub_1915D6640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v35 = a3;
  v34 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v32 - v8;
  v33 = sub_19166B1C8();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v33, v12);
  v14 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v37 = &v32 - v16;
  sub_19166B1B8();
  sub_19166BB38();
  v17 = sub_19166BB58();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 0, 1, v17);
  sub_19166BB28();

  v19 = sub_19166BB18();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v22 = v35;
  v20[4] = v34;
  v20[5] = a2;
  v20[6] = v22;
  v20[7] = a4;
  v23 = sub_1915D42EC(0, 0, v9, &unk_191671F28, v20);
  v18(v9, 1, 1, v17);
  v24 = v33;
  (*(v10 + 16))(v14, v37, v33);
  v25 = *(v10 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v36;
  *(v26 + 4) = v36;
  *(v26 + 5) = v23;
  v28 = *(v10 + 32);
  v28(&v26[(v25 + 48) & ~v25], v14, v24);

  sub_1915D593C(0, 0, v9, &unk_191671F38, v26);

  v29 = v24;
  v28(v14, v37, v24);
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  v28((v30 + ((v25 + 24) & ~v25)), v14, v29);

  return sub_1915D7470;
}

uint64_t sub_1915D6980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_19166BB28();
  v7[6] = sub_19166BB18();
  v9 = sub_19166BA78();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1915D6A1C, v9, v8);
}

uint64_t sub_1915D6A1C(uint64_t a1)
{
  if (sub_19166BC48())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = v1[2];
    v5 = v1[3];
    v6 = swift_allocObject();
    v1[9] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;

    return MEMORY[0x1EEE6DFA0](sub_1915D6AEC, 0, 0);
  }
}

uint64_t sub_1915D6AEC()
{
  v1 = v0[9];
  type metadata accessor for ObservationSentinel(0);
  v2 = swift_allocObject();
  v0[10] = v2;
  *(v2 + 16) = 0;
  sub_19166B438();
  v3 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v0[11] = v3;
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v2;
  v4[3] = sub_1915D7D08;
  v4[4] = v1;
  v4[5] = v3;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1915D6C58;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v6, &unk_191672070, v4, sub_1915D833C, v5, 0, 0, v7);
}

uint64_t sub_1915D6C58()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1915D6ED8;
  }

  else
  {

    v2 = sub_1915D6D7C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1915D6D7C()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1915D6DF4, v1, v2);
}

uint64_t sub_1915D6DF4(uint64_t a1)
{
  if (sub_19166BC48() & 1) != 0 || ((*(v1 + 32))(), (sub_19166BC48()))
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = swift_allocObject();
    *(v1 + 72) = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;

    return MEMORY[0x1EEE6DFA0](sub_1915D6AEC, 0, 0);
  }
}

uint64_t sub_1915D6ED8()
{
  v1 = v0[11];

  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1915D6F68, v2, v3);
}

uint64_t sub_1915D6F68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1915D6FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1915D8338;

  return sub_1915D6980(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1915D70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1915D70C4, a4, 0);
}

uint64_t sub_1915D70C4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_1915E20A0(v2, v1, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v7;
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1915D718C(uint64_t a1)
{
  v4 = *(sub_19166B1C8() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1915D8338;

  return sub_1915D70A0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1915D7290(uint64_t a1, uint64_t a2)
{
  v4 = sub_19166B1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  v12 = sub_19166BB58();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_1915D593C(0, 0, v11, &unk_191672050, v14);
}

uint64_t sub_1915D7470()
{
  v1 = *(sub_19166B1C8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1915D7290(v2, v3);
}

uint64_t sub_1915D74D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1915D74F4, a4, 0);
}

uint64_t sub_1915D74F4()
{
  sub_1915D64A8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*static AXBlockObserver.observe(_:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (qword_1EADAEFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_1915D6640(a1, a2, a3, a4);

  return sub_1915D7470;
}

uint64_t AXBlockObserver.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AXBlockObserver.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1915D76A0(uint64_t a1)
{
  result = sub_19166B448();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1915D77C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915D7830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1915D7898(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1915D798C;

  return v5(v2 + 32);
}

uint64_t sub_1915D798C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1915D7AA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1915D8338;

  return sub_1915D7898(a1, v4);
}

uint64_t sub_1915D7B58(uint64_t a1)
{
  v4 = *(sub_19166B1C8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_1915D74D4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1915D7C50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1915D8338;

  return sub_1915FCC6C(a1, v4);
}

uint64_t sub_1915D7D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1915D8338;

  return sub_1915D493C(a1, v4, v5, v7, v6);
}

uint64_t sub_1915D7DDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1915D8338;

  return sub_1915D5FEC(a1, v4, v5, v7, v6);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1915D7F00(uint64_t a1)
{
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
  v4 = *(sub_19166BAA8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1915D53A8(a1, v6, v7, v1 + v5, v9, v10, v3);
}

uint64_t sub_1915D7FD8(uint64_t a1)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3B8, &qword_1916724F0);
  v4 = *(sub_19166BAA8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v9 = v1[6];
  v10 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1915D4F90;

  return sub_1915D55EC(a1, v6, v7, v8, v9, v1 + v5, v11, v12);
}

uint64_t sub_1915D8150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1915D8198(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(sub_19166BBC8() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1915D8338;

  return sub_1915D3A9C(a1, v8, v9, v1 + v7, v11, v12, v5);
}

uint64_t sub_1915D82D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);

  return sub_19166BC28();
}

uint64_t AXFetchableStream.callAsFunction()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1915D4F90;

  return AXFetchableStream.value()(a1, a2);
}

uint64_t AXFetchableStream.value()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1915D8424, 0, 0);
}

uint64_t sub_1915D8424()
{
  v1 = (v0[4] + *(v0[3] + 28));
  v5 = (*v1 + **v1);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1915D8520;
  v3 = v0[2];

  return v5(v3);
}

uint64_t sub_1915D8520()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AXFetchableStream.makeAsyncIterator()(uint64_t a1)
{
  sub_19166BC08();

  return sub_19166BBD8();
}

uint64_t AXFetchableStream.stream.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_19166BC08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t AXFetchableStream.init(stream:fetcher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_19166BC08();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for AXFetchableStream(0, a4, v11, v12);
  v14 = (a5 + *(result + 28));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t AXFetchableStream.asyncMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v22 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = sub_19166BC08();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v21 - v14;
  v16 = *(a3 + 16);
  v17 = sub_19166BC08();
  AsyncStream.asyncMap<A>(_:)(a1, a2, v17, a4);
  (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = a4;
  *(v19 + 4) = v21;
  *(v19 + 5) = a2;
  (*(v10 + 32))(&v19[v18], &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  AXFetchableStream.init(stream:fetcher:)(v15, &unk_1916720C8, v19, a4, v22);
}

uint64_t sub_1915D893C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a5 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915D89F8, 0, 0);
}

uint64_t sub_1915D89F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[5];
  v6 = (v5 + *(type metadata accessor for AXFetchableStream(0, v4[6], a3, a4) + 28));
  v10 = (*v6 + **v6);
  v7 = swift_task_alloc();
  v4[9] = v7;
  *v7 = v4;
  v7[1] = sub_1915D8AFC;
  v8 = v4[8];

  return v10(v8);
}

uint64_t sub_1915D8AFC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v8 = (v2 + *v2);
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v3;
  v4[1] = sub_1915D8CD8;
  v5 = v1[8];
  v6 = v1[2];

  return v8(v6, v5);
}

uint64_t sub_1915D8CD8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1915D8E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = *(type metadata accessor for AXFetchableStream(0, v7, a3, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[4];
  v11 = v4[5];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1915D4F90;

  return sub_1915D893C(a1, v10, v11, v4 + v9, v7);
}

uint64_t sub_1915D8F38(uint64_t a1)
{
  AXFetchableStream.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_1915D8F98(double a1)
{
  v13 = sub_19166BDB8();
  v3 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19166BDA8();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_19166B5B8();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  *(v1 + 16) = 0;
  v12[1] = sub_1915DAA60(0, &qword_1EADAE7F0, 0x1E69E9610);
  sub_19166B598();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1915DAAA8(&qword_1EADAE7F8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3E0, &unk_1916721A0);
  sub_1915DAAF0(&qword_1EADAE808, &qword_1EADAF3E0, &unk_1916721A0);
  sub_19166BFE8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v13);
  *(v1 + 32) = sub_19166BDE8();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1915D9218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v41 = sub_19166B588();
  MEMORY[0x1EEE9AC00](v41, v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19166B578();
  v38 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v37 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v36 - v11);
  v44 = sub_19166B5F8();
  v46 = *(v44 - 8);
  v14 = MEMORY[0x1EEE9AC00](v44, v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v43 = &v36 - v18;
  v19 = sub_19166BE08();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  if (*(a1 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_19166BE38();
    swift_unknownObjectRelease();
  }

  sub_1915DAA60(0, &qword_1EADAE678, 0x1E69E9630);
  sub_19166BDF8();
  v24 = v45;
  v25 = *(v45 + 32);
  v36 = sub_19166BE18();

  (*(v20 + 8))(v23, v19);
  result = sub_19166B5D8();
  v27 = *(v24 + 24) * 1000.0;
  if (COERCE__INT64(fabs(v27)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v27 < 9.22337204e18)
  {
    *v12 = v27;
    v28 = v38;
    v29 = v38[13];
    v29(v12, *MEMORY[0x1E69E7F38], v6);
    v30 = v43;
    sub_19166B5E8();
    v31 = v28[1];
    v31(v12, v6);
    v32 = *(v46 + 8);
    v46 += 8;
    v38 = v32;
    (v32)(v16, v44);
    v33 = v36;
    ObjectType = swift_getObjectType();
    v29(v12, *MEMORY[0x1E69E7F40], v6);
    v35 = v37;
    *v37 = 0;
    v29(v35, *MEMORY[0x1E69E7F28], v6);
    MEMORY[0x193AFCD80](v30, v12, v35, ObjectType);
    v31(v35, v6);
    v31(v12, v6);
    aBlock[4] = v39;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1915EADB4;
    aBlock[3] = &block_descriptor_31;
    _Block_copy(aBlock);
    v47 = MEMORY[0x1E69E7CC0];
    sub_1915DAAA8(&qword_1EADAE6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
    sub_1915DAAF0(&qword_1EADAE6A0, &qword_1EADAF3D8, &qword_191676060);
    sub_19166BFE8();
    sub_19166B618();
    swift_allocObject();
    sub_19166B608();

    sub_19166BE28();

    sub_19166BE48();
    (v38)(v43, v44);
    *(v45 + 16) = v33;
    return swift_unknownObjectRelease();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1915D97E8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AsyncStream.debounced(delay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v45 = a3;
  v43 = *(a1 - 8);
  v44 = a1;
  v47 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v38 - v10;
  v41 = &v38 - v10;
  v12 = *(a1 + 16);
  v13 = sub_19166BB98();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v38 - v16;
  v42 = sub_19166BBC8();
  v18 = *(v42 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v42, v20);
  v39 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v38 - v23;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8650], v13);
  v40 = v12;
  sub_19166BB68();
  (*(v14 + 8))(v17, v13);
  v25 = sub_19166BB58();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  v26 = v43;
  v27 = v7;
  v28 = v7;
  v29 = v44;
  (*(v43 + 16))(v28, v46, v44);
  v30 = v42;
  (*(v18 + 16))(&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v42);
  v31 = (*(v26 + 80) + 48) & ~*(v26 + 80);
  v32 = (v47 + v31 + *(v18 + 80)) & ~*(v18 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v34 = v40;
  *(v33 + 32) = v40;
  *(v33 + 40) = a4;
  (*(v26 + 32))(v33 + v31, v27, v29);
  (*(v18 + 32))(v33 + v32, v39, v30);
  v35 = sub_1915D593C(0, 0, v41, &unk_1916720E0, v33);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  sub_19166BB88();
  return (*(v18 + 8))(v24, v30);
}

uint64_t sub_1915D9C54(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = a7;
  *(v7 + 80) = a5;
  *(v7 + 72) = a1;
  v9 = sub_19166B588();
  *(v7 + 104) = v9;
  *(v7 + 112) = *(v9 - 8);
  *(v7 + 120) = swift_task_alloc();
  v10 = sub_19166B5B8();
  *(v7 + 128) = v10;
  *(v7 + 136) = *(v10 - 8);
  *(v7 + 144) = swift_task_alloc();
  v11 = *(a7 - 8);
  *(v7 + 152) = v11;
  *(v7 + 160) = *(v11 + 64);
  *(v7 + 168) = swift_task_alloc();
  v12 = sub_19166BBC8();
  *(v7 + 176) = v12;
  v13 = *(v12 - 8);
  *(v7 + 184) = v13;
  *(v7 + 192) = *(v13 + 64);
  *(v7 + 200) = swift_task_alloc();
  sub_19166BF58();
  *(v7 + 208) = swift_task_alloc();
  v14 = sub_19166BBF8();
  *(v7 + 216) = v14;
  *(v7 + 224) = *(v14 - 8);
  *(v7 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915D9ECC, 0, 0);
}

uint64_t sub_1915D9ECC()
{
  v1 = v0[9];
  type metadata accessor for Debouncer();
  *(v0 + 30) = swift_allocObject();
  sub_1915D8F98(v1);
  sub_19166BC08();
  sub_19166BBD8();
  v2 = swift_task_alloc();
  *(v0 + 31) = v2;
  *v2 = v0;
  v2[1] = sub_1915D9FC8;
  v3 = *(v0 + 26);
  v4 = *(v0 + 27);

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v4);
}

uint64_t sub_1915D9FC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1915DA0C4, 0, 0);
}

uint64_t sub_1915DA0C4()
{
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[12];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[21];
  v6 = v0[22];
  if (v4 == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_19166BBB8();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[24];
    v24 = v0[25];
    v10 = v0[23];
    v25 = v0[30];
    v27 = v0[18];
    v31 = v0[17];
    v32 = v0[16];
    v30 = v0[14];
    v28 = v0[15];
    v29 = v0[13];
    (*(v10 + 16))();
    v11 = *(v2 + 32);
    v11(v5, v1, v3);
    v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v13 = *(v2 + 80);
    v14 = v9 + v13 + v12;
    v15 = v5;
    v16 = v14 & ~v13;
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    (*(v10 + 32))(v17 + v12, v24, v6);
    v11(v17 + v16, v15, v3);
    v18 = *(v25 + 32);
    v19 = swift_allocObject();
    v19[2] = v25;
    v19[3] = sub_1915DA974;
    v19[4] = v17;
    v0[6] = sub_1915DAA3C;
    v0[7] = v19;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1915EADB4;
    v0[5] = &block_descriptor;
    v20 = _Block_copy(v0 + 2);
    aBlock = v18;

    sub_19166B598();
    v0[8] = MEMORY[0x1E69E7CC0];
    sub_1915DAAA8(&qword_1EADAE6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
    sub_1915DAAF0(&qword_1EADAE6A0, &qword_1EADAF3D8, &qword_191676060);
    sub_19166BFE8();
    MEMORY[0x193AFCC80](0, v27, v28, v20);
    _Block_release(v20);

    (*(v30 + 8))(v28, v29);
    (*(v31 + 8))(v27, v32);

    v21 = swift_task_alloc();
    v0[31] = v21;
    *v21 = v0;
    v21[1] = sub_1915D9FC8;
    v22 = v0[26];
    v23 = v0[27];

    return MEMORY[0x1EEE6D9C8](v22, 0, 0, v23);
  }
}

uint64_t sub_1915DA520(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 4);
  v6 = *(sub_19166BC08() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_19166BBC8() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + 2);
  v12 = *(v1 + 3);
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1915D8338;

  return sub_1915D9C54(v13, a1, v11, v12, v1 + v7, v1 + v10, v5);
}

uint64_t sub_1915DA690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19166BB78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v14 - v11;
  (*(v5 + 16))(v7, a2, a3);
  sub_19166BBC8();
  sub_19166BBA8();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1915DA850(uint64_t a1)
{
  result = sub_19166BC08();
  if (v2 <= 0x3F)
  {
    result = sub_1915DA900();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1915DA900()
{
  result = qword_1ED5A81E8;
  if (!qword_1ED5A81E8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED5A81E8);
  }

  return result;
}

uint64_t sub_1915DA974()
{
  v1 = *(v0 + 16);
  v2 = *(sub_19166BBC8() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_1915DA690(v0 + v3, v4, v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1915DAA60(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1915DAAA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1915DAAF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double AXSettingProtocol.objcMode.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

void *sub_1915DAB60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF3F0, &unk_191674CF0);
  v5 = sub_19164AB68(v4, 1, a1, v4, *(*(a2 + 8) + 8));
  v6 = (*(a2 + 24))(a1, a2);
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = sub_1915F4D18(*(v6 + 16), 0);
    v10 = sub_1915DBA54(&v19, (v9 + 4), v8, v7);
    result = sub_1915DBBC0(v19);
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v18 = *(v5 + 16);
  if (v18)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      ++v12;
      v14 = *v13;
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 24);
      swift_unknownObjectRetain();
      v17 = v16(ObjectType, v14);
      v19 = v9;

      sub_1915E38BC(v17);

      result = swift_unknownObjectRelease();
      v9 = v19;
      v13 += 2;
      if (v18 == v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    return v9;
  }

  return result;
}

uint64_t AXObservableSettings.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 24))(a3, a5);
  if (*(v8 + 16) && (v9 = sub_1915DB0E4(a1, a2), (v10 & 1) != 0))
  {
    sub_1915DB15C(*(v8 + 56) + 40 * v9, v15);

    sub_1915A04D0(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3E8, &qword_1916721B0);
    type metadata accessor for AXSettingRecord(0, a4, v11, v12);
    swift_dynamicCast();
    return v14;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t AXSettingsStore.value(forKey:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = &type metadata for AXConcreteKey;
  v15[4] = &protocol witness table for AXConcreteKey;
  v12 = swift_allocObject();
  v15[0] = v12;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 2;
  *(v12 + 88) = 0;
  v13 = *(a6 + 8);

  v13(v15, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t AXSettingsStore.set(value:forKey:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[3] = &type metadata for AXConcreteKey;
  v17[4] = &protocol witness table for AXConcreteKey;
  v14 = swift_allocObject();
  v17[0] = v14;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 2;
  *(v14 + 88) = 0;
  v15 = *(a7 + 16);

  v15(a1, v17, a6, a7);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t AXSettingsStore.observe(key:domain:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[3] = &type metadata for AXConcreteKey;
  v19[4] = &protocol witness table for AXConcreteKey;
  v16 = swift_allocObject();
  v19[0] = v16;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 2;
  *(v16 + 88) = 0;
  v17 = *(a8 + 32);

  v17(v19, a5, a6, a7, a8);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

unint64_t sub_1915DB0E4(uint64_t a1, uint64_t a2)
{
  sub_19166C778();
  sub_19166B828();
  v4 = sub_19166C7B8();

  return sub_1915DB4A4(a1, a2, v4);
}

uint64_t sub_1915DB15C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1915DB1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

unint64_t sub_1915DB2EC(uint64_t a1)
{
  sub_19166B1C8();
  sub_1915DB708(&qword_1EADAE9E0, MEMORY[0x1E69695B8]);
  v2 = sub_19166B6B8();

  return sub_1915DB55C(a1, v2);
}

unint64_t sub_1915DB3AC(uint64_t a1)
{
  sub_19166C1E8();
  v2 = sub_19166B6B8();

  return sub_1915DB74C(a1, v2);
}

unint64_t sub_1915DB410(uint64_t a1, uint64_t a2)
{
  sub_19166B748();
  sub_19166C778();
  sub_19166B828();
  v3 = sub_19166C7B8();

  return sub_1915DB8E4(a1, v3);
}

unint64_t sub_1915DB4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_19166C5E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1915DB55C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_19166B1C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1915DB708(&qword_1EADAE910, MEMORY[0x1E69695C8]);
      v16 = sub_19166B6E8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1915DB708(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_19166B1C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1915DB74C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_19166C1E8();
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_19166B6E8();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1915DB8E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_19166B748();
      v8 = v7;
      if (v6 == sub_19166B748() && v8 == v9)
      {
        break;
      }

      v11 = sub_19166C5E8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1915DB9E8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1915DBA54(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1915DB15C(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_1915A04D0(v20, v21);
      sub_1915A04D0(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void static AXKeyedArchiveSourcable.migrate(from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1915DCB54(a1, a2);
  v8 = sub_1915DCA94();
  sub_1915DCBA8(a1, a2);
  if (!v4)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v12 = sub_19166B718();

    [v8 setClass:ObjCClassFromMetadata forClassName:v12];

    [v8 setRequiresSecureCoding_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF400, &unk_191672230);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_191672210;
    *(v13 + 32) = AssociatedTypeWitness;
    sub_19166B748();
    sub_19166BF38();

    if (v15[3])
    {
      if (swift_dynamicCast())
      {
        v15[0] = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
        sub_1915DCCB8();
        sub_19166C058();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      sub_1915DCBFC(v15);
    }

    sub_1915DCC64();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
  }
}

void static Array<A>.migrate(from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1915DCB54(a1, a2);
  v10 = sub_1915DCA94();
  sub_1915DCBA8(a1, a2);
  if (!v4)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = sub_19166B718();

    [v10 setClass:ObjCClassFromMetadata forClassName:v14];

    [v10 setRequiresSecureCoding_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF400, &unk_191672230);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_191672220;
    *(v15 + 32) = AssociatedTypeWitness;
    *(v15 + 40) = sub_1915DAA60(0, &qword_1EADAFBD0, 0x1E695DEC8);
    sub_19166B748();
    sub_19166BF38();

    if (v26[3])
    {
      v16 = sub_19166BA68();
      v17 = swift_dynamicCast();
      if (v17)
      {
        v25[1] = v25;
        v26[0] = v26[5];
        MEMORY[0x1EEE9AC00](v17, v18);
        v24[2] = a3;
        v24[3] = a4;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
        WitnessTable = swift_getWitnessTable();
        v22 = sub_1915DC290(sub_1915DCD34, v24, v16, v19, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v21);

        v26[0] = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF420, &qword_191672248);
        sub_1915DCD54();
        sub_19166C058();
LABEL_7:

        return;
      }
    }

    else
    {
      sub_1915DCBFC(v26);
    }

    sub_1915DCC64();
    swift_allocError();
    *v23 = 5;
    swift_willThrow();
    goto LABEL_7;
  }
}

uint64_t sub_1915DC1D4@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t sub_1915DC290(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_19166BD28();
  if (!v22)
  {
    return sub_19166BA28();
  }

  v44 = v22;
  v48 = sub_19166C158();
  v35 = sub_19166C168();
  sub_19166C138();
  result = sub_19166BD08();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_19166BD48();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_19166C148();
      result = sub_19166BD38();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void static Set<>.migrate(from:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1915DCB54(a1, a2);
  v16 = sub_1915DCA94();
  sub_1915DCBA8(a1, a2);
  if (!v7)
  {
    v35 = a7;
    v36 = a6;
    v34 = a5;
    [v16 setRequiresSecureCoding_];
    v17 = a4;
    v18 = a3;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v22 = sub_19166B718();

    [v16 setClass:ObjCClassFromMetadata forClassName:v22];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF400, &unk_191672230);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_191672220;
    *(v23 + 32) = AssociatedTypeWitness;
    *(v23 + 40) = sub_1915DAA60(0, &unk_1EADAF430, 0x1E695DFD8);
    sub_19166B748();
    sub_19166BF38();
    v24 = v16;

    if (v37[3])
    {
      v25 = sub_19166BCF8();
      v26 = swift_dynamicCast();
      if (v26)
      {
        v37[0] = v37[5];
        MEMORY[0x1EEE9AC00](v26, v27);
        v33[2] = v18;
        v33[3] = v17;
        v33[4] = v34;
        v33[5] = v36;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
        WitnessTable = swift_getWitnessTable();
        v31 = sub_1915DC290(sub_1915DCDD8, v33, v25, v28, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v30);

        v37[0] = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF420, &qword_191672248);
        sub_1915DCD54();
        sub_19166C058();
LABEL_7:

        return;
      }
    }

    else
    {
      sub_1915DCBFC(v37);
    }

    sub_1915DCC64();
    swift_allocError();
    *v32 = 5;
    swift_willThrow();
    goto LABEL_7;
  }
}

id sub_1915DCA94()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = sub_19166B0D8();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_19166AFF8();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1915DCB54(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1915DCBA8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1915DCBFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1915DCC64()
{
  result = qword_1EADAF410;
  if (!qword_1EADAF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF410);
  }

  return result;
}

unint64_t sub_1915DCCB8()
{
  result = qword_1EADAE850;
  if (!qword_1EADAE850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF418, &qword_191672240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE850);
  }

  return result;
}

unint64_t sub_1915DCD54()
{
  result = qword_1EADAF428;
  if (!qword_1EADAF428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF420, &qword_191672248);
    sub_1915DCCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF428);
  }

  return result;
}

uint64_t sub_1915DCE4C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + qword_1EADB6DA8);
  if (*(v3 + 16) && (v4 = sub_1915DB370(&type metadata for AXTraitsKey), (v5 & 1) != 0))
  {
    sub_1915DFD18(*(v3 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  result = swift_dynamicCast();
  v7 = v8;
  if (!result)
  {
    v7 = 0;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1915DCF04()
{
  v1 = *(*v0 + 80);
  v2 = sub_19166BF58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  (*(*(v1 - 8) + 56))(&v8 - v5, 1, 1, v1);
  sub_1915DFD9C(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t AXSettingRecord.key.getter()
{
  v0 = sub_1915DFD88();

  return v0;
}

uint64_t AXSettingRecord.domain.getter()
{
  v0 = sub_1915DFD74();

  return v0;
}

uint64_t sub_1915DD09C(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = sub_19166BF58();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1915DD150(uint64_t a1, uint64_t a2)
{
  v3 = sub_19166BF58();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a2);
  return sub_1915DD09C(v6);
}

uint64_t sub_1915DD234@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 160);
  swift_beginAccess();
  return sub_1915E0A90(v1 + v3, a1, &qword_1EADAF4A0, &qword_191673940);
}

uint64_t sub_1915DD2A8(uint64_t a1)
{
  v3 = *(*v1 + 160);
  swift_beginAccess();
  sub_1915E0A20(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1915DD314@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(*v1 + 152));
  [v3 lock];
  sub_1915DD234(a1);

  return [v3 unlock];
}

uint64_t sub_1915DD388(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + *(*v1 + 152));
  [v4 lock];
  sub_1915DD43C(v2, a1);
  [v4 unlock];
  return sub_19159E780(a1, &qword_1EADAF4A0, &qword_191673940);
}

uint64_t sub_1915DD43C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - v5;
  sub_1915E0A90(a2, &v8 - v5, &qword_1EADAF4A0, &qword_191673940);
  return sub_1915DD2A8(v6);
}

uint64_t sub_1915DD4F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v6 = sub_19166BF58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16[-1] - v9;
  v11 = *(v2 + *(v4 + 168));
  sub_1915DD9C4(v16);
  v11(v16);
  sub_19159E780(v16, &qword_1EADAF4A8, &qword_191672420);
  v12 = *(v5 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v5) != 1)
  {
    return (*(v12 + 32))(a1, v10, v5);
  }

  (*(v2 + qword_1EADB6DA0))();
  result = (v13)(v10, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1915DD758(uint64_t a1)
{
  v3 = *v1;
  sub_1915DFE34(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_1915DD7D4(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_19159F050(v9);
  return sub_1915DD8E8;
}

void sub_1915DD8E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1915DFE34(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1915DFE34(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1915DD9C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[1] = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v26 - v10;
  v28[0] = v2;
  v27 = *(v3 + 80);
  v12 = v27;
  swift_getKeyPath();
  type metadata accessor for AXSettingRecord(255, v12, v13, v14);
  swift_getWitnessTable();
  sub_19166B428();

  v15 = *(v2 + *(*v2 + 152));
  [v15 lock];
  sub_1915DD234(v11);
  [v15 unlock];
  v16 = sub_19166B1C8();
  LODWORD(v3) = (*(*(v16 - 8) + 48))(v11, 1, v16);
  sub_19159E780(v11, &qword_1EADAF4A0, &qword_191673940);
  if (v3 == 1)
  {
    v17 = *(v2 + qword_1EADB6D90 + 24);
    v18 = *(v2 + qword_1EADB6D90 + 32);
    __swift_project_boxed_opaque_existential_1((v2 + qword_1EADB6D90), v17);
    v29 = swift_checkMetadataState();
    v30 = &protocol witness table for AXSettingRecord<A>;
    v28[0] = v2;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    *(v20 + 24) = v19;
    v21 = *(v18 + 32);

    v21(v28, sub_1915E0008, v20, v17, v18);

    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_1915DD388(v8);
  }

  v22 = *(v2 + qword_1EADB6D90 + 24);
  v23 = *(v2 + qword_1EADB6D90 + 32);
  __swift_project_boxed_opaque_existential_1((v2 + qword_1EADB6D90), v22);
  v29 = swift_checkMetadataState();
  v30 = &protocol witness table for AXSettingRecord<A>;
  v28[0] = v2;
  v24 = *(v23 + 8);

  v24(v28, v22, v23);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

void *sub_1915DDCFC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(result + *(*result + 200));
    [v3 lock];
    sub_1915DDDC4(v2);
    [v3 unlock];
  }

  return result;
}

uint64_t sub_1915DDDC4(void *a1)
{
  v1 = *(*a1 + 80);
  swift_getKeyPath();
  type metadata accessor for AXSettingRecord(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_19166B418();
}

uint64_t sub_1915DDEB4(uint64_t a1)
{
  v1 = *(*a1 + 80);
  v2 = sub_19166BF58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  (*(*(v1 - 8) + 56))(&v8 - v5, 1, 1, v1);
  sub_1915DFD9C(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1915DDFD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + *(*v1 + 200));
  [v4 lock];
  sub_1915DE088(v2, a1);
  [v4 unlock];
  return sub_19159E780(a1, &qword_1EADAF4A8, &qword_191672420);
}

uint64_t sub_1915DE088(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 80);
  swift_getKeyPath();
  type metadata accessor for AXSettingRecord(255, v2, v3, v4);
  swift_getWitnessTable();
  sub_19166B418();
}

uint64_t sub_1915DE184(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v15 = sub_19166BF58();
  v5 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v6);
  v8 = &v16[-1] - v7;
  v9 = *(a1 + qword_1EADB6D90 + 24);
  v10 = *(a1 + qword_1EADB6D90 + 32);
  __swift_project_boxed_opaque_existential_1((a1 + qword_1EADB6D90), v9);
  v16[3] = type metadata accessor for AXSettingRecord(0, v4, v11, v12);
  v16[4] = &protocol witness table for AXSettingRecord<A>;
  v16[0] = a1;
  v13 = *(v10 + 16);

  v13(a2, v16, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v16);
  (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
  sub_1915DFD9C(v8);
  return (*(v5 + 8))(v8, v15);
}

void (*sub_1915DE330(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_1915DD9C4(v3);
  return sub_1915DE3A8;
}

void sub_1915DE3A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1915E0A90(*a1, v2 + 40, &qword_1EADAF4A8, &qword_191672420);
    sub_1915DDFD4(v2 + 40);
    sub_19159E780(v2, &qword_1EADAF4A8, &qword_191672420);
  }

  else
  {
    sub_1915DDFD4(*a1);
  }

  free(v2);
}

uint64_t sub_1915DE438()
{
  v1 = *(*v0 + 80);

  axObservationTrackingStream<A>(_:)(sub_1915E0010, v0, v1);
}

uint64_t sub_1915DE4B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_19166BC08();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v9 - v6;
  sub_1915DE438();
  AXFetchableStream.init(stream:fetcher:)(v7, &unk_191672358, v1, v3, a1);
}

uint64_t sub_1915DE570(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1915DE590, 0, 0);
}

uint64_t sub_1915DE590()
{
  sub_19159F050(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v47 = a1;
  v48 = a8;
  v49 = a3;
  v52 = a6;
  v53 = a7;
  v50 = a4;
  v51 = a5;
  v46 = a9;
  v44 = a2;
  v45 = a10;
  v54 = a18;
  v41 = a16;
  v42 = a17;
  v19 = *(v18 + 80);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v39 = a12;
  MEMORY[0x1EEE9AC00](a1, a2);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *v23;
  (*(v20 + 16))(v22);
  v24 = *(v20 + 80);
  v43 = v20;
  v25 = (v24 + 80) & ~v24;
  v26 = swift_allocObject();
  v27 = v19;
  *(v26 + 2) = v19;
  *(v26 + 3) = a12;
  *(v26 + 4) = a13;
  *(v26 + 5) = a14;
  v29 = v41;
  v28 = v42;
  *(v26 + 6) = a15;
  *(v26 + 7) = v29;
  v30 = v54;
  *(v26 + 8) = v28;
  *(v26 + 9) = v30;
  v31 = v27;
  (*(v20 + 32))(&v26[v25], v22);
  v55 = v40;
  v32 = swift_allocObject();
  v33 = v39;
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = a13;
  v32[5] = a14;
  v32[6] = a15;
  v32[7] = v29;
  v34 = v54;
  v32[8] = v28;
  v32[9] = v34;
  v35 = swift_allocObject();
  v35[2] = v31;
  v35[3] = v33;
  v35[4] = a13;
  v35[5] = a14;
  v35[6] = a15;
  v35[7] = v29;
  v35[8] = v28;
  v35[9] = v34;
  v36 = sub_1915E0410(v47, sub_1915E00B0, v26, v49, v50, v51, v52, v53, v48, v46, v45, &v55, sub_1915E00F0, v32, sub_1915E00F4, v35, v33, v29);
  swift_unknownObjectRelease();
  (*(v43 + 8))(v44, v31);
  return v36;
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v32 = a1;
  v33 = a8;
  v34 = a3;
  v37 = a6;
  v38 = a7;
  v35 = a4;
  v36 = a5;
  v31 = a9;
  v29 = a2;
  v30 = a10;
  v17 = *(v16 + 80);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v21;
  (*(v18 + 16))(v20);
  v22 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v17;
  *(v23 + 3) = a12;
  *(v23 + 4) = a13;
  *(v23 + 5) = a14;
  *(v23 + 6) = a15;
  *(v23 + 7) = a16;
  (*(v18 + 32))(&v23[v22], v20, v17);
  v39 = v28;
  v24 = swift_allocObject();
  v24[2] = v17;
  v24[3] = a12;
  v24[4] = a13;
  v24[5] = a14;
  v24[6] = a15;
  v24[7] = a16;
  v25 = swift_allocObject();
  v25[2] = v17;
  v25[3] = a12;
  v25[4] = a13;
  v25[5] = a14;
  v25[6] = a15;
  v25[7] = a16;
  v26 = sub_1915E0410(v32, sub_1915E04F0, v23, v34, v35, v36, v37, v38, v33, v31, v30, &v39, sub_1915E0530, v24, sub_1915E0534, v25, a12, a14);
  swift_unknownObjectRelease();
  (*(v18 + 8))(v29, v17);
  return v26;
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v32 = a8;
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v30 = a9;
  v31 = a1;
  v28 = a2;
  v29 = a10;
  v16 = *(v15 + 80);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v20;
  (*(v17 + 16))(v19);
  v22 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v16;
  *(v23 + 3) = a12;
  *(v23 + 4) = a13;
  *(v23 + 5) = a14;
  *(v23 + 6) = a15;
  (*(v17 + 32))(&v23[v22], v19, v16);
  v38 = v21;
  v24 = swift_allocObject();
  v24[2] = v16;
  v24[3] = a12;
  v24[4] = a13;
  v24[5] = a14;
  v24[6] = a15;
  v25 = swift_allocObject();
  v25[2] = v16;
  v25[3] = a12;
  v25[4] = a13;
  v25[5] = a14;
  v25[6] = a15;
  v26 = sub_1915E0410(v31, sub_1915E0538, v23, v33, v34, v35, v36, v37, v32, v30, v29, &v38, sub_1915E0578, v24, sub_1915E057C, v25, a12, a15);
  swift_unknownObjectRelease();
  (*(v17 + 8))(v28, v16);
  return v26;
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v33 = *a12;
  v20 = swift_allocObject();
  v21 = *(v19 + 80);
  v20[2] = v21;
  v20[3] = a13;
  v20[4] = a14;
  v20[5] = a15;
  v20[6] = a16;
  v20[7] = a17;
  v20[8] = a18;
  v20[9] = a19;
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a13;
  v22[4] = a14;
  v22[5] = a15;
  v22[6] = a16;
  v22[7] = a17;
  v22[8] = a18;
  v22[9] = a19;
  v23 = sub_1915E0410(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &v33, sub_1915E0BD0, v20, sub_1915E0BD4, v22, a13, a17);
  swift_unknownObjectRelease();
  return v23;
}

uint64_t sub_1915DEE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1915E0A90(a1, &v10, &qword_1EADAF4A8, &qword_191672420);
  if (*(&v11 + 1))
  {
    v13[0] = v10;
    v13[1] = v11;
    v14 = v12;
    type metadata accessor for AXMigratingDecoder();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E7CC0];
    v7[2] = MEMORY[0x1E69E7CC0];
    v7[3] = sub_191653100(v8);
    v7[4] = 0xC000000000000000;
    sub_19164EF2C(a2, v13, a2, a3);
    sub_1915E0AF8(v13);

    return (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
  }

  else
  {
    sub_19159E780(&v10, &qword_1EADAF4A8, &qword_191672420);
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }
}

uint64_t sub_1915DEFA0@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  type metadata accessor for AXMigratingEncoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v8[4] = 0xC000000000000000;
  v8[2] = v9;
  sub_191654454(a2, x8_0);
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v31 = *a12;
  v19 = swift_allocObject();
  v20 = *(v17 + 80);
  v19[2] = v20;
  v19[3] = a13;
  v19[4] = a14;
  v19[5] = a15;
  v19[6] = a16;
  v19[7] = a17;
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a13;
  v21[4] = a14;
  v21[5] = a15;
  v21[6] = a16;
  v21[7] = a17;
  v22 = sub_1915E0410(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &v31, sub_1915E0BD8, v19, sub_1915E0BDC, v21, a13, a15);
  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_1915DF1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v26 = a4;
  v25[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_19166BF58();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = v25 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v11, v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v25 - v20;
  sub_1915E0A90(a1, &v27, &qword_1EADAF4A8, &qword_191672420);
  if (*(&v28 + 1))
  {
    v25[2] = a5;
    v30[0] = v27;
    v30[1] = v28;
    v31 = v29;
    type metadata accessor for AXMigratingDecoder();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E7CC0];
    v22[2] = MEMORY[0x1E69E7CC0];
    v22[3] = sub_191653100(v23);
    v22[4] = 0xC000000000000000;
    sub_19164EF2C(AssociatedTypeWitness, v30, AssociatedTypeWitness, v26);

    (*(v14 + 56))(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v21, v13, AssociatedTypeWitness);
    (*(v14 + 16))(v18, v21, AssociatedTypeWitness);
    sub_19166B9A8();
    (*(v14 + 8))(v21, AssociatedTypeWitness);
    return sub_1915E0AF8(v30);
  }

  else
  {
    sub_19159E780(&v27, &qword_1EADAF4A8, &qword_191672420);
    return (*(*(a2 - 8) + 56))(a5, 1, 1, a2);
  }
}

uint64_t sub_1915DF518@<X0>(uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v13 = &v17 - v12;
  type metadata accessor for AXMigratingEncoder();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v14[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v14[4] = 0xC000000000000000;
  v14[2] = v15;
  sub_19166B998();
  sub_191654454(AssociatedTypeWitness, x8_0);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t *AXSettingRecord.__allocating_init<A>(owner:defaultValue:key:domain:didSet:willSet:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v30 = *a12;
  v19 = swift_allocObject();
  v20 = *(v16 + 80);
  v19[2] = v20;
  v19[3] = a13;
  v19[4] = a14;
  v19[5] = a15;
  v19[6] = a16;
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a13;
  v21[4] = a14;
  v21[5] = a15;
  v21[6] = a16;
  v22 = sub_1915E0410(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &v30, sub_1915E0BE0, v19, sub_1915E0BE4, v21, a13, a16);
  swift_unknownObjectRelease();
  return v22;
}

uint64_t *AXSettingRecord.deinit()
{
  v1 = qword_1EADAE9C0;
  v2 = sub_19166B448();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EADB6D90));

  v3 = *(*v0 + 144);
  v4 = sub_19166BF58();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_19159E780(v0 + *(*v0 + 160), &qword_1EADAF4A0, &qword_191673940);

  sub_19159F5CC(*(v0 + *(*v0 + 184)), *(v0 + *(*v0 + 184) + 8));
  sub_19159F5CC(*(v0 + *(*v0 + 192)), *(v0 + *(*v0 + 192) + 8));

  return v0;
}

uint64_t AXSettingRecord.__deallocating_deinit()
{
  AXSettingRecord.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1915DFAB8(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1915DE330(v2);
  return sub_1915DFB2C;
}

void sub_1915DFB2C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1915DFB98()
{
  v0 = sub_1915DFD88();

  return v0;
}

uint64_t sub_1915DFBD4()
{
  v0 = sub_1915DFD74();

  return v0;
}

int8x16_t sub_1915DFC58@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1915DB370(&type metadata for AXWatchPreferenceKey), (v5 & 1) != 0))
  {
    sub_1915DFD18(*(a1 + 56) + 32 * v4, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B0, &qword_191672418);
  if (swift_dynamicCast())
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = vdupq_n_s64(v6);
  result = vandq_s8(v9, v7);
  *a2 = result;
  a2[1] = vandq_s8(v10, v7);
  return result;
}

uint64_t sub_1915DFD18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1915DFD9C(uint64_t a1)
{
  v3 = *(v1 + qword_1EADB6DB0);
  [v3 lock];
  sub_1915DD150(v1, a1);

  return [v3 unlock];
}

uint64_t sub_1915DFE34(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, a1);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v16[-1] - v9;
  v12 = *(v1 + *(v11 + 192));
  if (v12)
  {
    v12(v8);
    (*(v3 + 32))(v10, v6, v2);
  }

  else
  {
    (*(v3 + 16))(&v16[-1] - v9);
  }

  (*(v1 + *(*v1 + 176)))(v16, v10);
  sub_1915DDFD4(v16);
  v13 = (v1 + *(*v1 + 184));
  if (*v13)
  {
    (*v13)(v10);
  }

  return (*(v3 + 8))(v10, v2);
}

uint64_t sub_1915E0014(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1915D4F90;

  return sub_1915DE570(a1, v1);
}

uint64_t *sub_1915E00F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *v18;
  v39 = *a12;
  sub_19166B438();
  v22 = qword_1EADB6DB0;
  *(v18 + v22) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  (*(*(*(v21 + 80) - 8) + 56))(v18 + *(*v18 + 144), 1, 1);
  v23 = *(*v18 + 152);
  *(v18 + v23) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v24 = *(*v18 + 160);
  v25 = sub_19166B1C8();
  (*(*(v25 - 8) + 56))(v18 + v24, 1, 1, v25);
  v26 = *(*v18 + 200);
  *(v18 + v26) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  (*(a18 + 56))(v42, a17, a18);
  sub_1915A04D0(v42, v18 + qword_1EADB6D90);
  if (!a7)
  {
    a6 = (*(a18 + 48))(a17, a18);
    a7 = v27;
  }

  v28 = (v18 + qword_1EADB6D88);
  *v28 = a6;
  v28[1] = a7;
  v29 = (v18 + qword_1EADB6D98);
  *v29 = a4;
  v29[1] = a5;
  v30 = (v18 + qword_1EADB6DA0);
  *v30 = a2;
  v30[1] = a3;
  v31 = (v18 + *(*v18 + 184));
  *v31 = a8;
  v31[1] = a9;
  v32 = (v18 + *(*v18 + 192));
  *v32 = a10;
  v32[1] = a11;
  *(v18 + qword_1EADB6DA8) = v39;
  v33 = (v18 + *(*v18 + 176));
  *v33 = a15;
  v33[1] = a16;
  v34 = (v18 + *(*v18 + 168));
  *v34 = a13;
  v34[1] = a14;
  return v18;
}

uint64_t *sub_1915E0410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  type metadata accessor for AXSettingRecord(0, *(v18 + 80), a3, a4);
  swift_allocObject();
  return sub_1915E00F8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_1915E067C(uint64_t a1)
{
  sub_19166B448();
  if (v1 <= 0x3F)
  {
    sub_19166BF58();
    if (v2 <= 0x3F)
    {
      sub_1915E09C8(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1915E09C8(uint64_t a1)
{
  if (!qword_1EADAE9D8)
  {
    sub_19166B1C8();
    v1 = sub_19166BF58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADAE9D8);
    }
  }
}

uint64_t sub_1915E0A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915E0A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1915E0B84()
{
  result = qword_1EADAE918;
  if (!qword_1EADAE918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADAE918);
  }

  return result;
}

uint64_t sub_1915E0BE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1915E20A0(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_19166B1C8();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1915DB2EC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_191647AC0();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_19166B1C8();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1916471BC(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_19166B1C8();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1915E0DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1915E226C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_19159E780(a1, &qword_1EADAF4A8, &qword_191672420);
    sub_1915E1FEC(a2, a3, v10);

    return sub_19159E780(v10, &qword_1EADAF4A8, &qword_191672420);
  }

  return result;
}

_OWORD *sub_1915E0E80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1915E4370(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1915E2578(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_19159E780(a1, &unk_1EADB0270, &unk_191672C20);
    v7 = sub_1915DB370(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_191648090();
        v11 = v13;
      }

      sub_1915E4370((*(v11 + 56) + 32 * v9), v14);
      sub_191647630(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_19159E780(v14, &unk_1EADB0270, &unk_191672C20);
  }

  return result;
}

uint64_t sub_1915E0F84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1915E2980(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_19166B1C8();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1915DB2EC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_191648654();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_19166B1C8();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1916471BC(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_19166B1C8();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1915E1144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1915E2CC4(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_191648B80, sub_191646F08);

    *v3 = v14;
  }

  else
  {
    sub_1915DB0E4(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_191648B80();
        v13 = v15;
      }

      result = sub_191649424();
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_1915E128C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_1915E1324(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1915E13BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_1915E1454(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

double sub_1915E14EC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  swift_beginAccess();
  v10 = *(v2 + 16);
  if (*(v10 + 16))
  {

    v11 = sub_1915DB0E4(v7, v9);
    v13 = v12;

    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v11);

      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      v17 = (*(v16 + 8))(v15, v16);
      if (*(v14 + 16))
      {
        v19 = sub_1915DB0E4(v17, v18);
        v21 = v20;

        if (v21)
        {
          sub_1915E1F90(*(v14 + 56) + 40 * v19, a2);

          return result;
        }
      }

      else
      {
      }
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1915E1668(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v7 = *(v5 + 16);
  v8 = v7(v6, v5);
  v10 = v9;
  v54 = v7;
  v11 = v7(v6, v5);
  v13 = v12;
  swift_beginAccess();
  v14 = *(v2 + 16);
  if (*(v14 + 16))
  {
    v52 = v8;

    v15 = sub_1915DB0E4(v11, v13);
    v17 = v16;

    if (v17)
    {
      v18 = *(*(v14 + 56) + 8 * v15);

      v8 = v52;
      goto LABEL_7;
    }

    v8 = v52;
  }

  else
  {
  }

  v18 = sub_191652FC8(MEMORY[0x1E69E7CC0]);
LABEL_7:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58[0] = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1915E2CC4(v18, v8, v10, isUniquelyReferenced_nonNull_native, sub_191647EF4, sub_191645920);

  *(v3 + 16) = v58[0];
  swift_endAccess();
  v20 = v54(v6, v5);
  v22 = v21;
  v53 = sub_1915E136C(v58);
  v23 = sub_1915E1AAC(v57, v20, v22);
  if (*v24)
  {
    v50 = v5;
    v25 = v6;
    v26 = a2[3];
    v27 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v26);
    v28 = (*(v27 + 8))(v26, v27);
    v30 = v29;
    sub_1915E0A90(a1, &v55, &qword_1EADAF4A8, &qword_191672420);
    v31 = v30;
    v6 = v25;
    v5 = v50;
    sub_1915E0DA8(&v55, v28, v31);
    (v23)(v57, 0);

    (v53)(v58, 0);
  }

  else
  {
    (v23)(v57, 0);

    (v53)(v58, 0);
  }

  v55 = v54(v6, v5);
  v56 = v32;
  MEMORY[0x193AFC710](46, 0xE100000000000000);
  v33 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  v35 = (*(v34 + 8))(v33, v34);
  MEMORY[0x193AFC710](v35);

  v37 = v55;
  v36 = v56;
  swift_beginAccess();
  v38 = *(v3 + 24);
  v39 = *(v38 + 16);

  if (v39)
  {
    v40 = sub_1915DB0E4(v37, v36);
    v42 = v41;

    if (v42)
    {
      v43 = *(*(v38 + 56) + 8 * v40);

      goto LABEL_15;
    }
  }

  else
  {
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_15:

  v45 = *(v43 + 16);
  if (!v45)
  {
  }

  v46 = 0;
  v47 = v43 + 40;
  while (v46 < *(v43 + 16))
  {
    ++v46;
    v48 = *(v47 - 8);

    v48(v49);

    v47 += 16;
    if (v45 == v46)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1915E1AAC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1915E2F7C(v6, a2, a3);
  return sub_1915E1B34;
}

uint64_t (*sub_1915E1B38(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1915E302C(v6, a2, a3);
  return sub_1915E4388;
}

uint64_t (*sub_1915E1BC0(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1915E30D8(v4, a2);
  return sub_1915E4388;
}

void sub_1915E1C38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1915E1C84(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v23 = (*(v9 + 16))(v8, v9);
  v24 = v10;
  MEMORY[0x193AFC710](46, 0xE100000000000000);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  MEMORY[0x193AFC710](v13);

  swift_beginAccess();
  v14 = *(v3 + 24);
  if (*(v14 + 16))
  {

    v15 = sub_1915DB0E4(v23, v24);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B8, &qword_191672428);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(inited + 32) = sub_1915E4118;
  *(inited + 40) = v19;

  sub_1915E3CAC(inited);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_1915E2CC4(v17, v23, v24, isUniquelyReferenced_nonNull_native, sub_191647F08, sub_191645934);

  *(v4 + 24) = v22;
  return swift_endAccess();
}

uint64_t AXInMemorySettingsStore.deinit()
{

  return v0;
}

uint64_t AXInMemorySettingsStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1915E1FEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1915DB0E4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_191647D40();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_191647474(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1915E20A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19166B1C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1915DB2EC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_191647AC0();
      goto LABEL_7;
    }

    sub_1916452A4(v18, a3 & 1);
    v23 = sub_1915DB2EC(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1915E2E5C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_19166C6F8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

uint64_t sub_1915E226C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1915DB0E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_191645650(v16, a4 & 1);
      v11 = sub_1915DB0E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_19166C6F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_191647D40();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_1915E4314(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_1915E23FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1915DB0E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_191645948(v16, a4 & 1);
      v11 = sub_1915DB0E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_19166C6F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_191647F1C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_1915E2578(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1915DB370(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_191648090();
      v9 = v17;
      goto LABEL_8;
    }

    sub_191645BF0(v14, a3 & 1);
    v9 = sub_1915DB370(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_19166C6F8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1915E4370(a1, v20);
  }

  else
  {

    return sub_1915E2F14(v9, a2, a1, v19);
  }
}

unint64_t sub_1915E26A4(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1915DB0E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_191645E68(v16, a4 & 1);
      result = sub_1915DB0E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_19166C6F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_19164820C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1915E2808(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1915DB0E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_19164663C(v16, a4 & 1);
      v11 = sub_1915DB0E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_19166C6F8();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_191648640();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1915E2980(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19166B1C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1915DB2EC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_191648654();
      goto LABEL_7;
    }

    sub_191646650(v18, a3 & 1);
    v24 = sub_1915DB2EC(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1915E2E5C(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_19166C6F8();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

unint64_t sub_1915E2B4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1915DB370(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_191646C98(v14, a3 & 1);
      result = sub_1915DB370(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_19166C6F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_191648A24();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1915E2CC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1915DB0E4(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1915DB0E4(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_19166C6F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_1915E2E5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_19166B1C8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1915E2F14(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1915E4370(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t (*sub_1915E2F7C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1915E3860(v7);
  v7[9] = sub_1915E31DC(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1915E3028;
}

uint64_t (*sub_1915E302C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1915E3894(v7);
  v7[9] = sub_1915E334C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1915E438C;
}

uint64_t (*sub_1915E30D8(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1915E3894(v5);
  v5[9] = sub_1915E35F8(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1915E438C;
}

void sub_1915E317C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1915E31DC(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1915DB0E4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_191647EF4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_191645920(v18, a4 & 1);
    v13 = sub_1915DB0E4(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_19166C6F8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1915E3334;
}

void (*sub_1915E334C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1915DB0E4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_191648B80();
      v13 = v21;
      goto LABEL_11;
    }

    sub_191646F08(v18, a4 & 1);
    v13 = sub_1915DB0E4(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_19166C6F8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1915E3334;
}

void sub_1915E34A4(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  LOBYTE(v5) = *(*a1 + 40);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v3[4];
    v7 = *v3[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v9 = v3[1];
    v8 = v3[2];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v10 = (v7[6] + 16 * v6);
    *v10 = v9;
    v10[1] = v8;
    *(v7[7] + 8 * v6) = v4;
    v11 = v7[2];
    v12 = __OFADD__(v11, 1);
    v5 = v11 + 1;
    if (!v12)
    {
LABEL_13:
      v7[2] = v5;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v5)
    {
      v13 = v3[4];
      v14 = *v3[3];
      sub_1915E42C0(*(v14 + 48) + 16 * v13);
      a3(v13, v14);
    }

    goto LABEL_14;
  }

  v6 = v3[4];
  v7 = *v3[3];
  if ((v5 & 1) == 0)
  {
    v17 = v3[1];
    v16 = v3[2];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v18 = (v7[6] + 16 * v6);
    *v18 = v17;
    v18[1] = v16;
    *(v7[7] + 8 * v6) = v4;
    v19 = v7[2];
    v12 = __OFADD__(v19, 1);
    v5 = v19 + 1;
    if (v12)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v7[7] + 8 * v6) = v4;
LABEL_14:

  free(v3);
}

void (*sub_1915E35F8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1915DB370(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_191648A24();
      v11 = v19;
      goto LABEL_11;
    }

    sub_191646C98(v16, a3 & 1);
    v11 = sub_1915DB370(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_19166C6F8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1915E3740;
}

void sub_1915E3740(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (v2[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_191647950(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v10 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v10;
    *(v6[7] + 8 * v5) = v3;
    v11 = v6[2];
    v9 = __OFADD__(v11, 1);
    v4 = v11 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_1915E3860(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1915E3888;
}

uint64_t (*sub_1915E3894(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1915E4380;
}

uint64_t sub_1915E38BC(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1915F43E4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = v9 - v11;
  result = sub_1915DBA54(&v41, &v4[5 * v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v14 = v4[2];
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
      goto LABEL_20;
    }

    v4[2] = v16;
  }

  if (result != v12)
  {
    result = sub_1915DBBC0(v41);
LABEL_14:
    *v1 = v4;
    return result;
  }

LABEL_17:
  v2 = v4[2];
  v13 = v42;
  v32 = v42;
  v33 = v41;
  v3 = v43;
  v16 = v44;
  v17 = v45;
  if (v45)
  {
    v18 = v44;
LABEL_27:
    v22 = (v17 - 1) & v17;
    sub_1915DB15C(*(v33 + 56) + 40 * (__clz(__rbit64(v17)) | (v18 << 6)), &v38);
    v21 = v18;
    while (1)
    {
      sub_1915E0A90(&v38, &v36, &qword_1EADAF4C8, &qword_191672478);
      if (!v37)
      {
        break;
      }

      v3 = (v3 + 64) >> 6;
      v23 = &qword_1EADAF4C8;
      while (1)
      {
        sub_19159E780(&v36, v23, &qword_191672478);
        v24 = v4[3];
        v25 = v24 >> 1;
        if ((v24 >> 1) < v2 + 1)
        {
          v4 = sub_1915F43E4((v24 > 1), v2 + 1, 1, v4);
          v25 = v4[3] >> 1;
        }

        sub_1915E0A90(&v38, &v34, v23, &qword_191672478);
        if (v35)
        {
          break;
        }

        v30 = v21;
LABEL_52:
        sub_19159E780(&v34, v23, &qword_191672478);
        v26 = v2;
        v21 = v30;
LABEL_31:
        v4[2] = v26;
        sub_1915E0A90(&v38, &v36, v23, &qword_191672478);
        if (!v37)
        {
          goto LABEL_53;
        }
      }

      if (v2 <= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v2;
      }

      while (1)
      {
        sub_1915A04D0(&v34, &v36);
        if (v2 == v26)
        {
          __swift_destroy_boxed_opaque_existential_1(&v36);
          v2 = v26;
          goto LABEL_31;
        }

        v27 = v23;
        sub_19159E780(&v38, v23, &qword_191672478);
        sub_1915A04D0(&v36, &v4[5 * v2 + 4]);
        if (!v22)
        {
          break;
        }

        v28 = v21;
LABEL_50:
        v31 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        sub_1915DB15C(*(v33 + 56) + 40 * (v31 | (v28 << 6)), &v38);
        v30 = v28;
LABEL_39:
        ++v2;
        v23 = v27;
        sub_1915E0A90(&v38, &v34, v27, &qword_191672478);
        v21 = v30;
        if (!v35)
        {
          goto LABEL_52;
        }
      }

      if (v3 <= (v21 + 1))
      {
        v29 = v21 + 1;
      }

      else
      {
        v29 = v3;
      }

      v30 = v29 - 1;
      while (1)
      {
        v28 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v28 >= v3)
        {
          v22 = 0;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          goto LABEL_39;
        }

        v22 = *(v32 + 8 * v28);
        ++v21;
        if (v22)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_55:
      v22 = 0;
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
    }

LABEL_53:
    sub_19159E780(&v38, &qword_1EADAF4C8, &qword_191672478);
    sub_1915DBBC0(v33);
    result = sub_19159E780(&v36, &qword_1EADAF4C8, &qword_191672478);
    goto LABEL_14;
  }

LABEL_20:
  v19 = (v3 + 64) >> 6;
  if (v19 <= v16 + 1)
  {
    v20 = v16 + 1;
  }

  else
  {
    v20 = (v3 + 64) >> 6;
  }

  v21 = v20 - 1;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v19)
    {
      goto LABEL_55;
    }

    v17 = *(v13 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_1915E3CAC(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1915F4408(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D8, &unk_191672490);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}