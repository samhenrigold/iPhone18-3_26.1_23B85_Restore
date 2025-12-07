PDCFileBackedConsentStore *PDCGlobalConsentStoreInstance()
{
  v0 = [PDCFileBackedConsentStore alloc];
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/com.apple.PrivacyDisclosure/consents/"];
  v2 = [(PDCFileBackedConsentStore *)v0 initWithConsentStoreURL:v1];

  v3 = PDCGlobalBackupManager();
  v4 = v3;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __PDCGlobalConsentStoreInstance_block_invoke;
    v6[3] = &unk_279AA1ED8;
    v7 = v3;
    [(PDCFileBackedConsentStore *)v2 setChangeObserver:v6];
  }

  return v2;
}

uint64_t __isGreenTea_block_invoke()
{
  result = MGGetBoolAnswer();
  isGreenTea_result = result;
  return result;
}

void __isRunningInDemoMode_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", *MEMORY[0x277CBF010]);
  if (v1)
  {
    v2 = v1;
    CFAutorelease(v1);
    v3 = CFGetTypeID(v2);
    if (v3 == CFBooleanGetTypeID())
    {
      isRunningInDemoMode_result = CFBooleanGetValue(v2) != 0;
    }
  }

  objc_autoreleasePoolPop(v0);
}

id PDCGlobalDeviceSettings(uint64_t a1)
{
  if (PDCGlobalDeviceSettings_once != -1)
  {
    PDCGlobalDeviceSettings_cold_1();
  }

  v2 = PDCGlobalDeviceSettings_result;

  return v2;
}

uint64_t __PDCGlobalDeviceSettings_block_invoke()
{
  PDCGlobalDeviceSettings_result = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.PrivacyDisclosure"];

  return MEMORY[0x2821F96F8]();
}

void sub_25F702C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F7032DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSBSRemoteAlertPresentationTargetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSBSRemoteAlertPresentationTargetClass_softClass;
  v7 = getSBSRemoteAlertPresentationTargetClass_softClass;
  if (!getSBSRemoteAlertPresentationTargetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSBSRemoteAlertPresentationTargetClass_block_invoke;
    v3[3] = &unk_279AA1E30;
    v3[4] = &v4;
    __getSBSRemoteAlertPresentationTargetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25F7033D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBSMutableSettingsClass_block_invoke(uint64_t a1)
{
  BaseBoardLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BSMutableSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBSMutableSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBSMutableSettingsClass_block_invoke_cold_1();
    BaseBoardLibrary();
  }
}

void BaseBoardLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!BaseBoardLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __BaseBoardLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279AA1E50;
    v3 = 0;
    BaseBoardLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!BaseBoardLibraryCore_frameworkLibrary)
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

uint64_t __BaseBoardLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BaseBoardLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSBSRemoteAlertDefinitionClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SBSRemoteAlertDefinition");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSRemoteAlertDefinitionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSBSRemoteAlertDefinitionClass_block_invoke_cold_1();
    SpringBoardServicesLibrary();
  }
}

void SpringBoardServicesLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279AA1E88;
    v3 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
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

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSBSRemoteAlertConfigurationContextClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  result = objc_getClass("SBSRemoteAlertConfigurationContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSRemoteAlertConfigurationContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSBSRemoteAlertConfigurationContextClass_block_invoke_cold_1();
    return __getBSActionClass_block_invoke(v3);
  }

  return result;
}

Class __getBSActionClass_block_invoke(uint64_t a1)
{
  BaseBoardLibrary();
  result = objc_getClass("BSAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBSActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBSActionClass_block_invoke_cold_1();
    return __getSBSRemoteAlertHandleClass_block_invoke(v3);
  }

  return result;
}

Class __getSBSRemoteAlertHandleClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  result = objc_getClass("SBSRemoteAlertHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSRemoteAlertHandleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSBSRemoteAlertHandleClass_block_invoke_cold_1();
    return __getSBSRemoteAlertActivationContextClass_block_invoke(v3);
  }

  return result;
}

Class __getSBSRemoteAlertActivationContextClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  result = objc_getClass("SBSRemoteAlertActivationContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSRemoteAlertActivationContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSBSRemoteAlertActivationContextClass_block_invoke_cold_1();
    return __getSBSRemoteAlertPresentationTargetClass_block_invoke(v3);
  }

  return result;
}

Class __getSBSRemoteAlertPresentationTargetClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  result = objc_getClass("SBSRemoteAlertPresentationTarget");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSRemoteAlertPresentationTargetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSBSRemoteAlertPresentationTargetClass_block_invoke_cold_1();
    return __getSBSRemoteAlertPresentationTargetPredicateClass_block_invoke(v3);
  }

  return result;
}

Class __getSBSRemoteAlertPresentationTargetPredicateClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  result = objc_getClass("SBSRemoteAlertPresentationTargetPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBSRemoteAlertPresentationTargetPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSBSRemoteAlertPresentationTargetPredicateClass_block_invoke_cold_1();
    return +[(PDCPreflightRequestHandle *)v3];
  }

  return result;
}

uint64_t PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore(uint64_t a1, uint64_t a2)
{
  if (PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore_onceToken != -1)
  {
    PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore_cold_1();
  }

  return PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore_log;
}

void __PDCGlobalConsentStoreInstance_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a2 consentRecordURLForBundleIdentifier:?];
  v5 = [v3 stringWithUTF8String:{objc_msgSend(v4, "fileSystemRepresentation")}];

  [*(a1 + 32) backupFileAtPath:v5];
}

id PDCCurrentRegulatoryDisclosureVersionForApplicationIdentity(void *a1)
{
  v1 = a1;
  v9 = 0;
  v2 = [v1 findApplicationRecordWithError:&v9];
  v3 = v9;
  v5 = v3;
  if (v3)
  {
    v6 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      PDCCurrentRegulatoryDisclosureVersionForApplicationIdentity_cold_1(v1, v5, v6);
    }

    v7 = 0;
  }

  else
  {
    v7 = PDCCurrentRegulatoryDisclosureVersionForApplicationRecord(v2);
  }

  return v7;
}

id PDCCurrentRegulatoryDisclosureVersionForApplicationRecord(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 regulatoryPrivacyDisclosureVersion];
  }

  else
  {
    v3 = MEMORY[0x277CCA8D8];
    v4 = [v1 URL];

    v1 = [v3 bundleWithURL:v4];

    v5 = [v1 infoDictionary];
    v2 = PDCCurrentRegulatoryDisclosureVersionForInfoPlistContent(v5);
  }

  return v2;
}

id PDCCurrentRegulatoryDisclosureVersionForInfoPlistContent(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"NSRegulatoryPrivacyDisclosure"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 objectForKeyedSubscript:@"NSRegulatoryPrivacyDisclosureVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PDCSetOneTimeImplicitConsentState(void *a1, const char *a2)
{
  if (a2)
  {
    return [a1 setInteger:2 forKey:@"kOneTimeImplicitConsentGranted"];
  }

  else
  {
    return [a1 removeObjectForKey:@"kOneTimeImplicitConsentGranted"];
  }
}

uint64_t PDCSetOneTimeImplicitConsentGranted(void *a1, const char *a2)
{
  if (a2)
  {
    return [a1 setInteger:2 forKey:@"kOneTimeImplicitConsentGranted"];
  }

  else
  {
    return [a1 removeObjectForKey:@"kOneTimeImplicitConsentGranted"];
  }
}

uint64_t PDCPerformOneTimeImplicitConsentGrant(char a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 integerForKey:@"kOneTimeImplicitConsentGranted"] == 2)
  {
    goto LABEL_17;
  }

  if (a1)
  {
    [v7 setInteger:2 forKey:@"kOneTimeImplicitConsentGranted"];
LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [v9 allApplications];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 regulatoryPrivacyDisclosureVersion];
        v17 = [v15 bundleIdentifier];
        v18 = v17;
        if (v16)
        {
          v19 = v17 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          v20 = [v8 writeUserConsentedRegulatoryDisclosureVersion:v16 forBundleIdentifier:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  [v7 setInteger:2 forKey:@"kOneTimeImplicitConsentGranted"];
  v21 = 1;
LABEL_18:

  return v21;
}

id PDCGlobalApplicationEnvironment(uint64_t a1)
{
  if (PDCGlobalApplicationEnvironment_once != -1)
  {
    PDCGlobalApplicationEnvironment_cold_1();
  }

  v2 = PDCGlobalApplicationEnvironment_result;

  return v2;
}

uint64_t __PDCGlobalApplicationEnvironment_block_invoke()
{
  PDCGlobalApplicationEnvironment_result = objc_alloc_init(PDCLSBackedApplicationEnvironment);

  return MEMORY[0x2821F96F8]();
}

id PDCApplicationIdentityToLSApplicationIdentity(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      PDCApplicationIdentityToLSApplicationIdentity_cold_1();
    }
  }

  return v1;
}

void PDCCurrentRegulatoryDisclosureVersionForApplicationIdentity_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_25F701000, log, OS_LOG_TYPE_ERROR, "Attempt to locate app %@ failed: %@", &v3, 0x16u);
}