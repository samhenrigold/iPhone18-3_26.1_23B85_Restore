id Logger(uint64_t a1)
{
  if (Logger___onceToken != -1)
  {
    Logger_cold_1();
  }

  v2 = Logger___migrationLogger;

  return v2;
}

uint64_t __Logger_block_invoke()
{
  Logger___migrationLogger = os_log_create("com.apple.InternationalSupport", "IPWatchLocaleController");

  return MEMORY[0x2821F96F8]();
}

id MigrationLogger(uint64_t a1)
{
  if (MigrationLogger___onceToken != -1)
  {
    MigrationLogger_cold_1();
  }

  v2 = MigrationLogger___migrationLogger;

  return v2;
}

uint64_t __MigrationLogger_block_invoke()
{
  MigrationLogger___migrationLogger = os_log_create("com.apple.InternationalSupport", "InternationalSupportMigrator");

  return MEMORY[0x2821F96F8]();
}

id getUMUserManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUMUserManagerClass_softClass;
  v7 = getUMUserManagerClass_softClass;
  if (!getUMUserManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUMUserManagerClass_block_invoke;
    v3[3] = &unk_2787A8FA0;
    v3[4] = &v4;
    __getUMUserManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22DFBD664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DFBD8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUMUserManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UserManagementLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2787A8FC0;
    v6 = 0;
    UserManagementLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (UserManagementLibraryCore_frameworkLibrary)
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
  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUMUserManagerClass_block_invoke_cold_1();
  }

  getUMUserManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UserManagementLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UserManagementLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAKAppleIDAuthenticationControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AuthKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2787A8FF8;
    v6 = 0;
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AuthKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AKAppleIDAuthenticationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAppleIDAuthenticationControllerClass_block_invoke_cold_1();
  }

  getAKAppleIDAuthenticationControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_22DFBE9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 112), 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void IPLoadUIKitFramework(uint64_t result, uint64_t a2)
{
  if (IPLoadUIKitFramework_onceToken != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }
}

void *__IPLoadUIKitFramework_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 1);
  uiKitFramework = result;
  return result;
}

Class IPUIKeyboardInputModeController(uint64_t a1, uint64_t a2)
{
  if (IPLoadUIKitFramework_onceToken != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  return NSClassFromString(&cfstr_Uikeyboardinpu.isa);
}

Class IPUIKeyboardPreferencesController(uint64_t a1, uint64_t a2)
{
  if (IPLoadUIKitFramework_onceToken != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  return NSClassFromString(&cfstr_Uikeyboardpref.isa);
}

id IPUIKeyboardInputModeGetIdentifierWithKeyboardLayouts(void *a1)
{
  v1 = IPLoadUIKitFramework_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v3 = dlsym(uiKitFramework, "UIKeyboardInputModeGetIdentifierWithKeyboardLayouts");
  v4 = v3(v2);

  return v4;
}

id IPUIKeyboardInputModeGetBaseLanguage(void *a1)
{
  v1 = IPLoadUIKitFramework_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v3 = dlsym(uiKitFramework, "UIKeyboardInputModeGetBaseLanguage");
  v4 = v3(v2);

  return v4;
}

id IPUIKeyboardCanonicalInputModeName(void *a1)
{
  v1 = IPLoadUIKitFramework_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v3 = dlsym(uiKitFramework, "UIKeyboardCanonicalInputModeName");
  v4 = v3(v2);

  return v4;
}

id IPUIKeyboardInputModeGetLanguageWithRegion(void *a1)
{
  v1 = IPLoadUIKitFramework_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v3 = dlsym(uiKitFramework, "UIKeyboardInputModeGetLanguageWithRegion");
  v4 = v3(v2);

  return v4;
}

id IPUIKeyboardInputModeGetNormalizedIdentifier(void *a1)
{
  v1 = IPLoadUIKitFramework_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v3 = dlsym(uiKitFramework, "UIKeyboardInputModeGetNormalizedIdentifier");
  v4 = v3(v2);

  return v4;
}

void *IPUIKeyboardInputMode_Intl(uint64_t a1, uint64_t a2)
{
  if (IPLoadUIKitFramework_onceToken != -1)
  {
    IPLoadUIKitFramework_cold_1();
  }

  v3 = uiKitFramework;

  return dlsym(v3, "UIKeyboardInputMode_intl");
}

void sub_22DFC0250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DFC28C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRPairedDeviceRegistryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNRPairedDeviceRegistryClass_softClass;
  v7 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getNRPairedDeviceRegistryClass_block_invoke;
    v3[3] = &unk_2787A8FA0;
    v3[4] = &v4;
    __getNRPairedDeviceRegistryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22DFC29AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNPSManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNPSManagerClass_softClass;
  v7 = getNPSManagerClass_softClass;
  if (!getNPSManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getNPSManagerClass_block_invoke;
    v3[3] = &unk_2787A8FA0;
    v3[4] = &v4;
    __getNPSManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22DFC2A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DFC2BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  NanoRegistryLibrary();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
    return NanoRegistryLibrary();
  }

  return result;
}

uint64_t NanoRegistryLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __NanoRegistryLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2787A9150;
    v5 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!NanoRegistryLibraryCore_frameworkLibrary)
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

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getNRWatchOSVersionForRemoteDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRWatchOSVersionForRemoteDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getNPSManagerClass_block_invoke(uint64_t a1)
{
  NanoPreferencesSyncLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NPSManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNPSManagerClass_block_invoke_cold_1();
    NanoPreferencesSyncLibrary();
  }
}

void NanoPreferencesSyncLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __NanoPreferencesSyncLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2787A9168;
    v3 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPSIsNanoMirroringDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PreferencesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PreferencesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2787A9180;
    v7 = 0;
    PreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = PreferencesLibraryCore_frameworkLibrary;
    if (PreferencesLibraryCore_frameworkLibrary)
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

  v2 = PreferencesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "PSIsNanoMirroringDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPSIsNanoMirroringDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PreferencesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PreferencesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getNPSDomainAccessorClass_block_invoke(uint64_t a1)
{
  NanoPreferencesSyncLibrary();
  result = objc_getClass("NPSDomainAccessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNPSDomainAccessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNPSDomainAccessorClass_block_invoke_cold_1();
    return __32__IntlUtility_sharedIntlUtility__block_invoke();
  }

  return result;
}

void sub_22DFC44B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DFC4798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _isChineseLanguageCode(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"zh"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"yue"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"wuu"];
  }

  return v2;
}

void sub_22DFC775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DFC7FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NanoRegistryLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2787A93B0;
    v6 = 0;
    NanoRegistryLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (NanoRegistryLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
  }

  getNRPairedDeviceRegistryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoRegistryLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_22DFC8D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void IP_hashKeyValue(CC_SHA1_CTX *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  IP_hashString(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 allKeys];
    v8 = [v7 sortedArrayUsingSelector:sel_compare_];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          IP_hashString(a1, v14);
          v15 = MEMORY[0x277CCAAB0];
          v16 = [v6 objectForKeyedSubscript:{v14, v22}];
          v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:0 error:0];

          CC_SHA1_Update(a1, [v17 bytes], objc_msgSend(v17, "length"));
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:0 error:0];
    CC_SHA1_Update(a1, [v6 bytes], objc_msgSend(v6, "length"));
LABEL_13:

    goto LABEL_14;
  }

  v18 = v5;
  v19 = v5;
  v20 = [v19 bytes];
  v21 = [v19 length];

  CC_SHA1_Update(a1, v20, v21);
LABEL_14:
}

uint64_t IP_hashString(CC_SHA1_CTX *a1, id a2)
{
  v4 = a2;
  v5 = [a2 UTF8String];
  v6 = strlen(v5);

  return CC_SHA1_Update(a1, v5, v6);
}

uint64_t sub_22DFCF64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22DFD28F4();
  v6 = v5;
  v7 = sub_22DFD28F4();
  _sSo8NSLocaleC15IntlPreferencesE17_sameLocalizationySbSS_SStFZ_0(v4, v6, v7, v8);
  LOBYTE(v4) = v9;

  return v4 & 1;
}

uint64_t sub_22DFCF6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v160 = a4;
  v154 = sub_22DFD27B4();
  v166 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v128 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CC8, &qword_22DFD44C8);
  MEMORY[0x28223BE20](v153);
  v159 = &v127 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CE0, &qword_22DFD44D8);
  MEMORY[0x28223BE20](v9 - 8);
  v150 = &v127 - v10;
  v144 = sub_22DFD2894();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v141 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_22DFD28A4();
  v169 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v164 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CD0, &qword_22DFD44D0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v130 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v157 = &v127 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v158 = &v127 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v148 = &v127 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v155 = &v127 - v23;
  MEMORY[0x28223BE20](v22);
  v163 = &v127 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CC0, &qword_22DFD44C0);
  MEMORY[0x28223BE20](v25 - 8);
  v138 = &v127 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CE8, &qword_22DFD44E0);
  MEMORY[0x28223BE20](v27 - 8);
  v131 = &v127 - v28;
  v134 = sub_22DFD2764();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v127 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CF0, &qword_22DFD44E8);
  v31 = v30 - 8;
  MEMORY[0x28223BE20](v30);
  v33 = &v127 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CF8, &qword_22DFD44F0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v140 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v129 = &v127 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v156 = (&v127 - v40);
  MEMORY[0x28223BE20](v39);
  v132 = &v127 - v41;
  v42 = sub_22DFD2864();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v142 = &v127 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v139 = &v127 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v135 = &v127 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v162 = &v127 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v127 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = &v127 - v55;
  v152 = sub_22DFD2724();
  v151 = *(v152 - 8);
  v57 = MEMORY[0x28223BE20](v152);
  v149 = &v127 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v60 = &v127 - v59;

  v145 = a1;
  v146 = a2;
  sub_22DFD26D4();
  v61 = objc_opt_self();
  v147 = a3;
  v62 = sub_22DFD28E4();
  v63 = [v61 normalizedLanguageIDFromString_];

  sub_22DFD28F4();
  sub_22DFD27F4();
  v136 = v60;
  v64 = v132;
  sub_22DFD26C4();
  sub_22DFD2804();
  v137 = v43;
  v65 = v43;
  v66 = v156;
  v67 = *(v65 + 8);
  v170 = v42;
  v68 = v42;
  v69 = v133;
  v167 = v67;
  v168 = v65 + 8;
  v67(v54, v68);
  v161 = v56;
  v70 = v134;
  sub_22DFD2804();
  v71 = *(v31 + 56);
  sub_22DFD1FB0(v64, v33, &qword_27DA50CF8, &qword_22DFD44F0);
  sub_22DFD1FB0(v66, &v33[v71], &qword_27DA50CF8, &qword_22DFD44F0);
  v72 = *(v69 + 48);
  if (v72(v33, 1, v70) == 1)
  {
    sub_22DFD2018(v66, &qword_27DA50CF8, &qword_22DFD44F0);
    sub_22DFD2018(v64, &qword_27DA50CF8, &qword_22DFD44F0);
    v73 = v72(&v33[v71], 1, v70);
    v74 = v161;
    v75 = v136;
    if (v73 == 1)
    {
      sub_22DFD2018(v33, &qword_27DA50CF8, &qword_22DFD44F0);
      v76 = v165;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v77 = v129;
  sub_22DFD1FB0(v33, v129, &qword_27DA50CF8, &qword_22DFD44F0);
  if (v72(&v33[v71], 1, v70) == 1)
  {
    sub_22DFD2018(v156, &qword_27DA50CF8, &qword_22DFD44F0);
    sub_22DFD2018(v64, &qword_27DA50CF8, &qword_22DFD44F0);
    (*(v69 + 8))(v77, v70);
    v74 = v161;
    v75 = v136;
LABEL_6:
    sub_22DFD2018(v33, &qword_27DA50CF0, &qword_22DFD44E8);
    v76 = v165;
LABEL_7:
    v78 = sub_22DFD2774();
    (*(*(v78 - 8) + 56))(v131, 1, 1, v78);
    sub_22DFD26E4();
    goto LABEL_8;
  }

  v109 = &v33[v71];
  v110 = v127;
  (*(v69 + 32))(v127, v109, v70);
  sub_22DFD2078(&qword_27DA50D00, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
  v111 = sub_22DFD28D4();
  v112 = *(v69 + 8);
  v112(v110, v70);
  sub_22DFD2018(v156, &qword_27DA50CF8, &qword_22DFD44F0);
  sub_22DFD2018(v64, &qword_27DA50CF8, &qword_22DFD44F0);
  v112(v77, v70);
  sub_22DFD2018(v33, &qword_27DA50CF8, &qword_22DFD44F0);
  v76 = v165;
  v74 = v161;
  v75 = v136;
  if ((v111 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v79 = sub_22DFD27E4();
  (*(*(v79 - 8) + 56))(v138, 1, 1, v79);
  sub_22DFD2714();

  v80 = v164;
  sub_22DFD2744();
  v81 = v163;
  sub_22DFD27D4();
  v82 = *(v169 + 8);
  v169 += 8;
  v156 = v82;
  (v82)(v80, v76);
  v83 = *(v137 + 16);
  v84 = v162;
  v85 = v170;
  v83(v162, v74, v170);
  v86 = v155;
  sub_22DFD1FB0(v81, v155, &qword_27DA50CD0, &qword_22DFD44D0);
  sub_22DFD2834();
  v83(v135, v84, v85);
  v87 = v141;
  sub_22DFD2874();
  sub_22DFD2884();
  (*(v143 + 8))(v87, v144);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v89 = sub_22DFD28E4();
  v90 = sub_22DFD28E4();

  LOBYTE(v83) = [ObjCClassFromMetadata _language_usesSameLocalizationAs_];

  sub_22DFD1FB0(v81, v86, &qword_27DA50CD0, &qword_22DFD44D0);
  if ((v83 & 1) == 0)
  {
    sub_22DFD2704();
    sub_22DFD2824();
  }

  v91 = sub_22DFD26B4();
  sub_22DFD2834();
  v91(v171, 0);
  v92 = v154;
  v93 = v158;
  sub_22DFD2804();
  v94 = sub_22DFD26B4();
  sub_22DFD2814();
  v94(v171, 0);
  sub_22DFD2844();
  v95 = sub_22DFD26B4();
  sub_22DFD2854();
  v95(v171, 0);
  v96 = v139;
  sub_22DFD26C4();
  v97 = v148;
  sub_22DFD2824();
  v167(v96, v170);
  v98 = *(v166 + 48);
  LODWORD(v96) = v98(v97, 1, v92);
  sub_22DFD2018(v97, &qword_27DA50CD0, &qword_22DFD44D0);
  if (v96 == 1)
  {
    sub_22DFD27A4();
    (*(v166 + 56))(v86, 0, 1, v92);
    v99 = sub_22DFD26B4();
    sub_22DFD2834();
    v99(v171, 0);
  }

  sub_22DFD26F4();
  v100 = v142;
  sub_22DFD26C4();
  v101 = v157;
  sub_22DFD2824();
  v167(v100, v170);
  v102 = *(v153 + 48);
  v103 = v159;
  sub_22DFD1FB0(v93, v159, &qword_27DA50CD0, &qword_22DFD44D0);
  sub_22DFD1FB0(v101, v103 + v102, &qword_27DA50CD0, &qword_22DFD44D0);
  if (v98(v103, 1, v92) == 1)
  {
    sub_22DFD2018(v101, &qword_27DA50CD0, &qword_22DFD44D0);
    v104 = v159;
    sub_22DFD2018(v93, &qword_27DA50CD0, &qword_22DFD44D0);
    v105 = v98(v104 + v102, 1, v92);
    v106 = v161;
    if (v105 == 1)
    {
      sub_22DFD2018(v104, &qword_27DA50CD0, &qword_22DFD44D0);
      v107 = v166;
LABEL_21:
      (*(v107 + 56))(v155, 1, 1, v92);
      sub_22DFD2704();
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v108 = v130;
  sub_22DFD1FB0(v103, v130, &qword_27DA50CD0, &qword_22DFD44D0);
  if (v98(v103 + v102, 1, v92) == 1)
  {
    sub_22DFD2018(v157, &qword_27DA50CD0, &qword_22DFD44D0);
    v104 = v159;
    sub_22DFD2018(v158, &qword_27DA50CD0, &qword_22DFD44D0);
    (*(v166 + 8))(v108, v92);
    v106 = v161;
LABEL_17:
    sub_22DFD2018(v104, &qword_27DA50CC8, &qword_22DFD44C8);
    goto LABEL_22;
  }

  v107 = v166;
  v113 = v128;
  (*(v166 + 32))(v128, v103 + v102, v92);
  sub_22DFD2078(&qword_27DA50CD8, MEMORY[0x277CC9698], MEMORY[0x277CC96B0]);
  v114 = v103;
  v115 = sub_22DFD28D4();
  v116 = *(v107 + 8);
  v116(v113, v92);
  sub_22DFD2018(v157, &qword_27DA50CD0, &qword_22DFD44D0);
  sub_22DFD2018(v158, &qword_27DA50CD0, &qword_22DFD44D0);
  v116(v108, v92);
  sub_22DFD2018(v114, &qword_27DA50CD0, &qword_22DFD44D0);
  v106 = v161;
  if (v115)
  {
    goto LABEL_21;
  }

LABEL_22:
  v117 = objc_opt_self();
  v118 = v151;
  v119 = v152;
  (*(v151 + 16))(v149, v75, v152);
  v120 = v164;
  sub_22DFD2734();
  sub_22DFD2754();
  (v156)(v120, v165);
  v121 = sub_22DFD28E4();

  v122 = [v117 canonicalLocaleIdentifierFromString_];

  v123 = sub_22DFD28F4();
  v124 = v170;
  v125 = v167;
  v167(v162, v170);
  sub_22DFD2018(v163, &qword_27DA50CD0, &qword_22DFD44D0);
  v125(v106, v124);
  (*(v118 + 8))(v75, v119);
  return v123;
}

id sub_22DFD0A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22DFD28F4();
  v6 = v5;
  v7 = sub_22DFD28F4();
  v9 = v8;
  swift_getObjCClassMetadata();
  sub_22DFCF6BC(v4, v6, v7, v9);

  v10 = sub_22DFD28E4();

  return v10;
}

uint64_t static NSLocale._localeIdentifierForRegionChange(from:to:)(uint64_t a1, char *a2, void *a3)
{
  v93 = a3;
  v100 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CC0, &qword_22DFD44C0);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v79 - v4;
  v5 = sub_22DFD28A4();
  v98 = *(v5 - 8);
  v99 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CC8, &qword_22DFD44C8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v85 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50CD0, &qword_22DFD44D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v83 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v81 = &v79 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v79 - v18;
  v20 = sub_22DFD27B4();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v80 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - v24;
  v97 = sub_22DFD2724();
  v95 = *(v97 - 8);
  v26 = MEMORY[0x28223BE20](v97);
  v94 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v92 = &v79 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v79 - v30;
  v32 = sub_22DFD2754();
  v34 = v33;
  v35 = objc_opt_self();
  v82 = v32;
  v86 = v34;
  v36 = sub_22DFD28E4();
  v87 = v35;
  v37 = [v35 addLikelySubtagsForLocaleIdentifier_];

  sub_22DFD28F4();
  sub_22DFD26D4();

  sub_22DFD27C4();
  v38 = v21[2];
  v100 = v25;
  v89 = v38;
  v90 = v21 + 2;
  v38(v19, v25, v20);
  v39 = (v21 + 7);
  v91 = v21[7];
  v91(v19, 0, 1, v20);
  v88 = v31;
  v40 = v20;
  v41 = v85;
  sub_22DFD26F4();
  v42 = *(v8 + 56);
  sub_22DFD1FB0(v19, v41, &qword_27DA50CD0, &qword_22DFD44D0);
  sub_22DFD1FB0(v17, v41 + v42, &qword_27DA50CD0, &qword_22DFD44D0);
  v93 = v21;
  v43 = v21[6];
  if (v43(v41, 1, v40) == 1)
  {
    sub_22DFD2018(v17, &qword_27DA50CD0, &qword_22DFD44D0);
    sub_22DFD2018(v19, &qword_27DA50CD0, &qword_22DFD44D0);
    v44 = v43(v41 + v42, 1, v40);
    v45 = v98;
    if (v44 == 1)
    {
      sub_22DFD2018(v41, &qword_27DA50CD0, &qword_22DFD44D0);
      v46 = v97;
LABEL_11:
      v60 = v40;

      v64 = v95;
      v61 = v88;
      (*(v95 + 16))(v94, v88, v46);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v79 = v19;
  v47 = v41;
  v48 = v41;
  v49 = v81;
  sub_22DFD1FB0(v47, v81, &qword_27DA50CD0, &qword_22DFD44D0);
  if (v43(v48 + v42, 1, v40) == 1)
  {
    sub_22DFD2018(v17, &qword_27DA50CD0, &qword_22DFD44D0);
    sub_22DFD2018(v79, &qword_27DA50CD0, &qword_22DFD44D0);
    (v93[1])(v49, v40);
    v45 = v98;
    v41 = v48;
LABEL_6:
    sub_22DFD2018(v41, &qword_27DA50CC8, &qword_22DFD44C8);
    v46 = v97;
    goto LABEL_7;
  }

  v65 = v93;
  v66 = v80;
  (v93[4])(v80, v48 + v42, v40);
  sub_22DFD2078(&qword_27DA50CD8, MEMORY[0x277CC9698], MEMORY[0x277CC96B0]);
  v67 = sub_22DFD28D4();
  v68 = v65[1];
  v68(v66, v40);
  sub_22DFD2018(v17, &qword_27DA50CD0, &qword_22DFD44D0);
  sub_22DFD2018(v79, &qword_27DA50CD0, &qword_22DFD44D0);
  v68(v49, v40);
  sub_22DFD2018(v48, &qword_27DA50CD0, &qword_22DFD44D0);
  v46 = v97;
  v45 = v98;
  if (v67)
  {
    goto LABEL_11;
  }

LABEL_7:

  v50 = v92;
  sub_22DFD26D4();
  v51 = v83;
  v85 = v39;
  v89(v83, v100, v40);
  v91(v51, 0, 1, v40);
  v52 = sub_22DFD26B4();
  sub_22DFD2834();
  v52(v101, 0);
  v81 = *(v95 + 16);
  (v81)(v94, v50, v46);
  v53 = v96;
  sub_22DFD2734();
  sub_22DFD2754();
  (*(v45 + 8))(v53, v99);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = sub_22DFD28E4();

  v56 = sub_22DFD28E4();

  LODWORD(v52) = [ObjCClassFromMetadata _language_usesSameLocalizationAs_];

  v57 = v51;
  v58 = v91;
  v89(v51, v100, v40);
  v59 = v51;
  v60 = v40;
  v58(v59, 0, 1, v40);
  v61 = v88;
  if (v52)
  {
    v62 = sub_22DFD26B4();
    sub_22DFD2834();
    v62(v101, 0);
    v58(v57, 1, 1, v60);
  }

  sub_22DFD2704();
  v63 = sub_22DFD27E4();
  (*(*(v63 - 8) + 56))(v84, 1, 1, v63);
  sub_22DFD2714();
  v64 = v95;
  v46 = v97;
  (*(v95 + 8))(v92, v97);
  v45 = v98;
  (v81)(v94, v61, v46);
LABEL_12:
  v69 = v61;
  v70 = v96;
  sub_22DFD2734();
  sub_22DFD2754();
  (*(v45 + 8))(v70, v99);
  v71 = sub_22DFD28E4();

  v72 = v87;
  v73 = [v87 componentsFromLocaleIdentifier_];

  v74 = sub_22DFD28C4();
  sub_22DFD1630(v74);

  v75 = sub_22DFD28B4();

  v76 = [v72 canonicalLocaleIdentifierWithValidCalendarForComponents_];

  v77 = sub_22DFD28F4();
  (v93[1])(v100, v60);
  (*(v64 + 8))(v69, v46);
  return v77;
}

uint64_t sub_22DFD1630(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50D08, &qword_22DFD44F8);
    v2 = sub_22DFD2934();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_22DFD20C0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_22DFD20C0(v29, v30);
    result = sub_22DFD2924();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_22DFD20C0(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_22DFD18F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22DFD28A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DFD2794();
  v8 = sub_22DFD28F4();
  v10 = v9;
  swift_getObjCClassMetadata();
  static NSLocale._localeIdentifierForRegionChange(from:to:)(v7, v8, v10);

  (*(v5 + 8))(v7, v4);
  v11 = sub_22DFD28E4();

  return v11;
}

id sub_22DFD1A40(uint64_t a1, uint64_t a2)
{
  v2 = sub_22DFD28A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() preferredLocale];
  if (result)
  {
    v7 = result;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_22DFD2794();

    v9 = sub_22DFD2784();
    (*(v3 + 8))(v5, v2);
    v10 = sub_22DFD28E4();
    v11 = [ObjCClassFromMetadata _localeIdentifierForRegionChangeFrom_to_];

    v12 = sub_22DFD28F4();
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22DFD1BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_22DFD28F4();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_22DFD1A40(v3, v5);

  v6 = sub_22DFD28E4();

  return v6;
}

void _sSo8NSLocaleC15IntlPreferencesE17_sameLocalizationySbSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22DFD28E4();
  v9 = objc_opt_self();
  v10 = [v9 bundleWithIdentifier_];

  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = [v10 localizations];

  v12 = v11;
  v13 = v11;
  if (!v11)
  {
    sub_22DFD2914();
    v13 = sub_22DFD2904();

    sub_22DFD2914();
    v12 = sub_22DFD2904();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA50D10, &qword_22DFD4500);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22DFD44B0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v15 = v11;

  v16 = sub_22DFD2904();

  v17 = [v9 preferredLocalizationsFromArray:v13 forPreferences:v16];

  v18 = sub_22DFD2914();
  if (v18[2])
  {
    v20 = v18[4];
    v19 = v18[5];
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22DFD44B0;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;

  v22 = sub_22DFD2904();

  v23 = [v9 preferredLocalizationsFromArray:v12 forPreferences:v22];

  v24 = sub_22DFD2914();
  if (!v24[2])
  {

    if (!v19)
    {
      return;
    }

LABEL_18:

    return;
  }

  v26 = v24[4];
  v25 = v24[5];

  if (v19)
  {
    if (v25)
    {
      if (v20 == v26 && v19 == v25)
      {
      }

      else
      {
        sub_22DFD2944();
      }
    }

    goto LABEL_18;
  }

  if (v25)
  {
    goto LABEL_18;
  }
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

uint64_t sub_22DFD1FB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22DFD2018(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22DFD2078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_22DFD20C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}