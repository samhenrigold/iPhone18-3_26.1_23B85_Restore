id HAENotificationsLog(uint64_t a1)
{
  if (HAENotificationsLog_once != -1)
  {
    HAENotificationsLog_cold_1();
  }

  v2 = HAENotificationsLog_haeNotificationsLog;

  return v2;
}

id GetDeviceSpecificDefaults(const __CFString *a1)
{
  v1 = CFPreferencesCopyAppValue(a1, *MEMORY[0x277CEFAA8]);

  return v1;
}

id __copy_constructor_8_8_s0_s8_s16_t24w2(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

void __destructor_8_s0_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id HAENLocalizationUtilityGetBundle(uint64_t a1)
{
  if (HAENLocalizationUtilityGetBundle_once != -1)
  {
    HAENLocalizationUtilityGetBundle_cold_1();
  }

  v2 = HAENLocalizationUtilityGetBundle__haeNotificationFrameworkBundle;

  return v2;
}

uint64_t __HAENLocalizationUtilityGetBundle_block_invoke()
{
  HAENLocalizationUtilityGetBundle__haeNotificationFrameworkBundle = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/HAENotifications.framework"];

  return MEMORY[0x2821F96F8]();
}

void ReleaseHAENRouteInfo(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 8) = 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 16) = 0;
    }
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id NSErrorWithHAENErrorCode(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a2 forKey:*MEMORY[0x277CCA450]];
  }

  else
  {
    v2 = 0;
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAENotficiationsError" code:*"pyt!" userInfo:v2];

  return v3;
}

void settingsChanged(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HAENotificationsLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "HAENDefaults received notification: %@", &v9, 0xCu);
  }

  if (+[HAENDefaults isCurrentProcessMediaserverd](HAENDefaults, "isCurrentProcessMediaserverd") && (([v3 isEqualToString:*MEMORY[0x277CEFA88]] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CEFA80])))
  {
    v5 = +[HAENDefaults sharedInstance];
    [v5 updateUserVolumeForVolumeLimit];
  }

  if ([v3 isEqualToString:*MEMORY[0x277CEFA70]])
  {
    v6 = +[HAENDefaults sharedInstance];
    [v6 removeAllAdapters];
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CEFA90]])
  {
    v6 = +[HAENDefaults sharedInstance];
    [v6 wiredDeviceStatusDidChange];
  }

  else
  {
    v7 = [v3 isEqualToString:*MEMORY[0x277CEFA88]];
    v8 = +[HAENDefaults sharedInstance];
    v6 = v8;
    if (v7)
    {
      [v8 updateRLSSettings];
    }

    else
    {
      [v8 forceReadDefaults];

      v6 = +[HAENUnknownDeviceManager sharedInstance];
      [v6 updateWiredDeviceStatus];
    }
  }
}

void sub_250827214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id errorForIOKitFailure(unsigned int a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"system=%#x subsystem=%#x code=%#x", a1 >> 26, (a1 >> 14) & 0xFFF, a1 & 0x3FFF];
  v3 = objc_alloc(MEMORY[0x277CCA9B8]);
  v4 = *MEMORY[0x277CCA4A8];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v6 = [v3 initWithDomain:v4 code:a1 userInfo:v5];

  if (a1 == -536870183)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  v11 = *MEMORY[0x277CCA7E8];
  v12 = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = makeError(v8, v7);

  return v9;
}

id errorForBadDeviceInfo(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad value for device info %@", a1];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = makeError(v2, 4u);

  return v3;
}

id makeError(void *a1, unsigned int a2)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = [v5 initWithDomain:HAENAccessoryInfoErrorDomain code:a2 userInfo:v4];

  return v6;
}

void GeoLocationDidChange(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HAENotificationsLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "HAENLocationGating Received Darwin Notification: %@", &v7, 0xCu);
  }

  v5 = [v3 isEqualToString:*MEMORY[0x277CEFA78]];
  if (v5)
  {
    v6 = +[HAENLocationGatingHelper sharedInstance];
    [v6 deviceDataDispositionDidChange];
  }

  else
  {
    v6 = HAENotificationsLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      GeoLocationDidChange_cold_1(v3, v6);
    }
  }
}

void RemoveDeviceSpecificDefaultsFor(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = HAENotificationsLog(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_25081E000, v2, OS_LOG_TYPE_DEFAULT, "removing key: %@", &v3, 0xCu);
  }

  CFPreferencesSetAppValue(v1, 0, *MEMORY[0x277CEFAA8]);
}

void SetDeviceSpecificDefaultsFor(__CFString *a1, const void *a2)
{
  if (a2)
  {
    CFPreferencesSetAppValue(a1, a2, *MEMORY[0x277CEFAA8]);
  }

  else
  {
    RemoveDeviceSpecificDefaultsFor(a1);
  }
}

uint64_t __HAENotificationsLog_block_invoke()
{
  HAENotificationsLog_haeNotificationsLog = os_log_create("com.apple.coreaudio.haenotifications", "ADAM");

  return MEMORY[0x2821F96F8]();
}

void GeoLocationDidChange_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25081E000, a2, OS_LOG_TYPE_ERROR, "HAENLocationGating action %@ not handled", &v2, 0xCu);
}