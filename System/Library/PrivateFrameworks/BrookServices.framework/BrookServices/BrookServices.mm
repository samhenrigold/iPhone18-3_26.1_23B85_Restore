id BRKLocalizedUserNotificationString(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [a3 localizedStringForKey:v6 value:&stru_285413D38 table:0];
  v8 = UNFormatLocalizedString();
  v9 = [MEMORY[0x277CE1F40] localizedStringForKey:v6 arguments:v5 value:v8];

  return v9;
}

void sub_241EE7E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BRKLoggingObjectForDomain(uint64_t a1)
{
  if (BRKLoggingObjectForDomain_onceToken != -1)
  {
    BRKLoggingObjectForDomain_cold_1();
  }

  v2 = BRKLoggingObjectForDomain_LogObjects;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __BRKLoggingObjectForDomain_block_invoke()
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 15; ++i)
  {
    v1 = os_log_create("Brook", off_278D28A08[i]);
    if (v1)
    {
      v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      [v5 setObject:v1 forKeyedSubscript:v2];
    }
  }

  v3 = [v5 copy];
  v4 = BRKLoggingObjectForDomain_LogObjects;
  BRKLoggingObjectForDomain_LogObjects = v3;
}

uint64_t BRKIsInternalBuild(uint64_t a1, uint64_t a2)
{
  if (BRKIsInternalBuild_onceToken != -1)
  {
    BRKIsInternalBuild_cold_1();
  }

  return BRKIsInternalBuild_isInternalBuild;
}

uint64_t __BRKIsInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  BRKIsInternalBuild_isInternalBuild = result;
  return result;
}

uint64_t BRKIsInternalCarryEnabled(uint64_t a1, uint64_t a2)
{
  if (BRKIsInternalBuild_onceToken != -1)
  {
    BRKIsInternalBuild_cold_1();
  }

  if (BRKIsInternalBuild_isInternalBuild != 1)
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  v3 = [v2 isEqualToString:@"walkabout"];

  return v3;
}

id BRKBuildVersion(uint64_t a1)
{
  if (BRKBuildVersion_onceToken != -1)
  {
    BRKBuildVersion_cold_1();
  }

  v2 = BRKBuildVersion_Build;

  return v2;
}

uint64_t __BRKBuildVersion_block_invoke()
{
  BRKBuildVersion_Build = MGGetStringAnswer();

  return MEMORY[0x2821F96F8]();
}

__CFString *BRKDetectorVersion()
{
  v0 = [NSClassFromString(&cfstr_Brkassetsmanag.isa) sharedInstance];
  v1 = [v0 installedAssetVersion];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = &stru_285413D38;
  }

  v4 = v3;

  return v3;
}

id BRKHardwareVersion(uint64_t a1)
{
  if (BRKHardwareVersion_onceToken != -1)
  {
    BRKHardwareVersion_cold_1();
  }

  v2 = BRKHardwareVersion_HWVersion;

  return v2;
}

uint64_t __BRKHardwareVersion_block_invoke()
{
  BRKHardwareVersion_HWVersion = MGGetStringAnswer();

  return MEMORY[0x2821F96F8]();
}

uint64_t BRKCurrentDeviceVariant(uint64_t a1, uint64_t a2)
{
  if (BRKCurrentDeviceVariant_onceToken != -1)
  {
    BRKCurrentDeviceVariant_cold_1();
  }

  return BRKCurrentDeviceVariant_Device;
}

void __BRKCurrentDeviceVariant_block_invoke()
{
  v0 = MGGetSInt32Answer();
  v1 = v0;
  if (v0 <= 12)
  {
    if (v0 == -1)
    {
      v3 = BRKLoggingObjectForDomain(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __BRKCurrentDeviceVariant_block_invoke_cold_1(v3);
      }

      goto LABEL_16;
    }

    if (v0 == 12)
    {
      v2 = 1;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (v0 == 17)
  {
    v2 = 3;
    goto LABEL_17;
  }

  if (v0 == 16)
  {
LABEL_16:
    v2 = 2;
    goto LABEL_17;
  }

  if (v0 != 13)
  {
LABEL_13:
    v4 = BRKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __BRKCurrentDeviceVariant_block_invoke_cold_2(v1, v4);
    }

    goto LABEL_16;
  }

  v2 = 0;
LABEL_17:
  BRKCurrentDeviceVariant_Device = v2;
}

id _BRKSharedUtilityQueue(uint64_t a1)
{
  if (_BRKSharedUtilityQueue_onceToken != -1)
  {
    _BRKSharedUtilityQueue_cold_1();
  }

  v2 = _BRKSharedUtilityQueue_Queue;

  return v2;
}

id _BRKSharedBackgroundQueue(uint64_t a1)
{
  if (_BRKSharedBackgroundQueue_onceToken != -1)
  {
    _BRKSharedBackgroundQueue_cold_1();
  }

  v2 = _BRKSharedBackgroundQueue_Queue;

  return v2;
}

dispatch_queue_t BRKCreateDispatchQueue(const char *a1, dispatch_qos_class_t a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, a2, 0);

  if (a2 == QOS_CLASS_UTILITY)
  {
    v7 = _BRKSharedUtilityQueue(v6);
    goto LABEL_5;
  }

  if (a2 == QOS_CLASS_BACKGROUND)
  {
    v7 = _BRKSharedBackgroundQueue(v6);
LABEL_5:
    v8 = v7;
    v9 = dispatch_queue_create_with_target_V2(a1, v5, v7);

    goto LABEL_7;
  }

  v9 = dispatch_queue_create(a1, v5);
LABEL_7:

  return v9;
}

id BRKDeviceLocale()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 localeIdentifier];

  return v1;
}

id BRKDeviceRegion()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 countryCode];

  return v1;
}

id BRKDeviceTimezone()
{
  v0 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v1 = [v0 abbreviation];

  return v1;
}

uint64_t BRKDeviceTimezoneOffset()
{
  v0 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v1 = [v0 secondsFromGMT];

  return v1;
}

id _BRKLocalesRequiringTallScript()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"th"];
  v6[0] = v0;
  v1 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"vi"];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"hi"];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"ar"];
  v6[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];

  return v4;
}

uint64_t BRKCurrentLanguageRequiresTallScript()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = _BRKLocalesRequiringTallScript();
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [*(*(&v9 + 1) + 8 * i) languageCode];
        v6 = [v0 languageCode];
        v7 = [v5 isEqualToString:v6];

        if (v7)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void _BRKRegisterForLockedStatusChange(uint64_t result, uint64_t a2)
{
  if (_BRKRegisterForLockedStatusChange_onceToken != -1)
  {
    _BRKRegisterForLockedStatusChange_cold_1();
  }
}

__CFString *BRKDeviceLockStateChangedNotification(uint64_t a1, uint64_t a2)
{
  if (_BRKRegisterForLockedStatusChange_onceToken != -1)
  {
    _BRKRegisterForLockedStatusChange_cold_1();
  }

  return @"BRKDeviceLockStateChangedNotification";
}

BOOL BRKDeviceIsLocked(uint64_t a1, uint64_t a2)
{
  if (_BRKRegisterForLockedStatusChange_onceToken != -1)
  {
    _BRKRegisterForLockedStatusChange_cold_1();
  }

  v2 = MKBGetDeviceLockState();
  if (v2)
  {
    v3 = v2 == 3;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

BOOL BRKDeviceUnlockedSinceBoot(uint64_t a1, uint64_t a2)
{
  if (_BRKRegisterForLockedStatusChange_onceToken != -1)
  {
    _BRKRegisterForLockedStatusChange_cold_1();
  }

  return MKBGetDeviceLockState() == 3 || MKBDeviceUnlockedSinceBoot() == 1;
}

uint64_t BRKWristOrientationIsRight()
{
  v0 = +[_BRKDeviceOrientationNotificationProxy sharedInstance];
  v1 = [v0 wristOrientationIsRight];

  return v1;
}

uint64_t BRKCrownOrientationIsRight()
{
  v0 = +[_BRKDeviceOrientationNotificationProxy sharedInstance];
  v1 = [v0 crownOrientationIsRight];

  return v1;
}

void BRKMarkFilePurgeable(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isFileURL])
  {
    v30 = 0;
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [v1 path];
    v4 = [v2 fileExistsAtPath:v3 isDirectory:&v30];

    if (v4)
    {
      if (v30 == 1)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v5 = [MEMORY[0x277CCAA00] defaultManager];
        v6 = [v5 enumeratorAtURL:v1 includingPropertiesForKeys:0 options:3 errorHandler:0];

        v7 = [v6 countByEnumeratingWithState:&v26 objects:v37 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v27;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v27 != v9)
              {
                objc_enumerationMutation(v6);
              }

              BRKMarkFilePurgeable(*(*(&v26 + 1) + 8 * i));
            }

            v8 = [v6 countByEnumeratingWithState:&v26 objects:v37 count:16];
          }

          while (v8);
        }
      }

      else
      {
        v25 = 66053;
        v11 = [v1 absoluteURL];
        v6 = [v11 path];

        v12 = open([v6 UTF8String], 0);
        if (v12 < 0)
        {
          v20 = BRKLoggingObjectForDomain(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            BRKMarkFilePurgeable_cold_1(v6, v20);
          }
        }

        else
        {
          v13 = v12;
          v14 = ffsctl(v12, 0xC0084A44uLL, &v25, 0);
          v15 = BRKLoggingObjectForDomain(0);
          v16 = v15;
          if (v14)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v17 = [v6 UTF8String];
              v18 = __error();
              v19 = strerror(*v18);
              *buf = 136315906;
              v32 = v17;
              v33 = 1024;
              *v34 = v14;
              *&v34[4] = 2080;
              *&v34[6] = v19;
              v35 = 2048;
              v36 = v25;
              _os_log_error_impl(&dword_241EE4000, v16, OS_LOG_TYPE_ERROR, "Failed to mark %s as purgeable %d (%s) (flags 0x%llx)", buf, 0x26u);
            }
          }

          else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v21 = [v6 UTF8String];
            v22 = v25;
            v23 = __error();
            v24 = strerror(*v23);
            *buf = 136315906;
            v32 = v21;
            v33 = 2048;
            *v34 = v22;
            *&v34[8] = 1024;
            *&v34[10] = 0;
            v35 = 2080;
            v36 = v24;
            _os_log_impl(&dword_241EE4000, v16, OS_LOG_TYPE_INFO, "Marked %s purgeable with flags 0x%llx returned %d (%s)", buf, 0x26u);
          }

          close(v13);
        }
      }
    }
  }
}

id _BRKFileAttributes(void *a1)
{
  v1 = a1;
  if ([v1 isFileURL])
  {
    v2 = [v1 absoluteURL];
    v3 = [v2 path];

    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    v5 = [v4 attributesOfItemAtPath:v3 error:&v10];
    v6 = v10;

    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = BRKLoggingObjectForDomain(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        _BRKFileAttributes_cold_1();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id BRKFileModifiedDate(void *a1)
{
  v1 = _BRKFileAttributes(a1);
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCA150]];

  return v2;
}

uint64_t BRKFileSize(void *a1)
{
  v1 = _BRKFileAttributes(a1);
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
  v3 = [v2 integerValue];

  return v3;
}

uint64_t BRKCreateDirectory(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    v4 = [v5 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v13];
    v6 = v13;

    v7 = BRKLoggingObjectForDomain(0);
    v8 = v7;
    if (v4)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x277CCAA00] defaultManager];
        v10 = [MEMORY[0x277CCAA00] defaultManager];
        v11 = [v10 delegate];
        *buf = 138412802;
        v15 = v1;
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_241EE4000, v8, OS_LOG_TYPE_DEFAULT, "Created directory at path %@ %@ %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      BRKCreateDirectory_cold_1();
    }
  }

  return v4;
}

BOOL BRKNumberIfFloatingPoint(void *a1)
{
  v1 = a1;
  v2 = [v1 objCType];
  if (*v2 == 102 && !v2[1])
  {
    v4 = 1;
  }

  else
  {
    v3 = [v1 objCType];
    v4 = *v3 == 100 && v3[1] == 0;
  }

  return v4;
}

id BRKDescriptionStringFromDictionary(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = [v1 arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __BRKDescriptionStringFromDictionary_block_invoke;
  v7[3] = &unk_278D28AA8;
  v8 = v3;
  v4 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];

  [v4 sortUsingComparator:&__block_literal_global_120];
  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

void __BRKDescriptionStringFromDictionary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", a2, a3];
  [v3 addObject:v4];
}

uint64_t BRKIsRunningInCarousel(uint64_t a1, uint64_t a2)
{
  if (BRKIsRunningInCarousel_onceToken != -1)
  {
    BRKIsRunningInCarousel_cold_1();
  }

  return BRKIsRunningInCarousel_RunningInCarousel;
}

void __BRKIsRunningInCarousel_block_invoke()
{
  v1 = [MEMORY[0x277CC1E88] bundleProxyForCurrentProcess];
  v0 = [v1 bundleIdentifier];
  BRKIsRunningInCarousel_RunningInCarousel = [v0 isEqualToString:@"com.apple.Carousel"];
}

id BRKBundle(uint64_t a1)
{
  if (BRKBundle_onceToken != -1)
  {
    BRKBundle_cold_1();
  }

  v2 = BRKBundle_Bundle;

  return v2;
}

void __BRKBundle_block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/BrookDetector.framework/"];
  v1 = [v0 bundleWithURL:v3];
  v2 = BRKBundle_Bundle;
  BRKBundle_Bundle = v1;
}

id BRKPrimaryColor()
{
  v0 = [MEMORY[0x277D75348] systemBlueColor];
  v1 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v2 = [v0 resolvedColorWithTraitCollection:v1];

  return v2;
}

uint64_t BRKDeviceIsAltAccount(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = getNRDevicePropertyIsAltAccountSymbolLoc_ptr;
  v12 = getNRDevicePropertyIsAltAccountSymbolLoc_ptr;
  if (!getNRDevicePropertyIsAltAccountSymbolLoc_ptr)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getNRDevicePropertyIsAltAccountSymbolLoc_block_invoke;
    v8[3] = &unk_278D28AF0;
    v8[4] = &v9;
    __getNRDevicePropertyIsAltAccountSymbolLoc_block_invoke(v8);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v2)
  {
    BRKDeviceIsAltAccount_cold_1();
    v7 = v6;
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v7);
  }

  v3 = [v1 valueForProperty:*v2];
  v4 = [v3 BOOLValue];

  return v4;
}

void *__getNRDevicePropertyIsAltAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __NanoRegistryLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278D28B10;
    v7 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = NanoRegistryLibraryCore_frameworkLibrary;
    if (NanoRegistryLibraryCore_frameworkLibrary)
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

  v2 = NanoRegistryLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "NRDevicePropertyIsAltAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyIsAltAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_241EEB604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241EEBD40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_241EEC7A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t BRKIDSMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v29) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_28;
        }

        *(a1 + 40) |= 1u;
        v29 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v24 = v29;
        v25 = 8;
LABEL_40:
        *(a1 + v25) = v24;
        goto LABEL_41;
      }

      v19 = PBReaderReadString();
      v20 = *(a1 + 32);
      *(a1 + 32) = v19;

LABEL_41:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      *(a1 + 40) |= 2u;
      v29 = 0;
      v21 = [a2 position] + 8;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v24 = v29;
      v25 = 16;
    }

    else
    {
      if (v13 != 4)
      {
LABEL_28:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      *(a1 + 40) |= 4u;
      v29 = 0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v24 = v29;
      v25 = 24;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

void _BRKHandleNPSNotification(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___BRKHandleNPSNotification_block_invoke;
  block[3] = &unk_278D28838;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_241EEE4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __BRKCurrentDeviceVariant_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_241EE4000, a2, OS_LOG_TYPE_ERROR, "Unknown screen class %@. Defaulting to 394h variant", &v4, 0xCu);
}

void BRKMarkFilePurgeable_cold_1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 UTF8String];
  v4 = __error();
  v5 = strerror(*v4);
  v6 = 136315394;
  v7 = v3;
  v8 = 2080;
  v9 = v5;
  _os_log_error_impl(&dword_241EE4000, a2, OS_LOG_TYPE_ERROR, "Can't open %s to mark purgeable: %s", &v6, 0x16u);
}

void BRKDeviceIsAltAccount_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  [BRKRemindersSettingsHelper _handwashingLocationManager];
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}