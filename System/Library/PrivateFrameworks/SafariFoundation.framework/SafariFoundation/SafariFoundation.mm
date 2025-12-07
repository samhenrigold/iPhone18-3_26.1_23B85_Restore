void sub_264510F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id extensionMatchingAttributes(int a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CCA0F8];
  if (a1)
  {
    v9[0] = @"com.apple.authentication-services-credential-provider-ui";
    v2 = *MEMORY[0x277D3D388];
    v8[0] = v1;
    v8[1] = v2;
    v3 = [&unk_287602118 description];
    v9[1] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  else
  {
    v6 = *MEMORY[0x277CCA0F8];
    v7 = @"com.apple.authentication-services-credential-provider-ui";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  return v4;
}

uint64_t extensionAndContainingAppHaveDeveloperEntitlement(void *a1)
{
  v1 = a1;
  v2 = [v1 _plugIn];
  v3 = [v2 entitlements];
  v4 = [v3 safari_BOOLForKey:@"com.apple.developer.authentication-services.autofill-credential-provider"];

  if (v4)
  {
    v7 = objc_alloc(MEMORY[0x277CC1E70]);
    v8 = [v1 _plugIn];
    v9 = [v8 containingUrl];
    v10 = [v7 initWithURL:v9 allowPlaceholder:0 error:0];

    v11 = [v10 entitlements];
    v12 = [v11 objectForKey:@"com.apple.developer.authentication-services.autofill-credential-provider" ofClass:objc_opt_class()];
    v13 = [v12 isEqual:MEMORY[0x277CBEC38]];

    if ((v13 & 1) == 0)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        extensionAndContainingAppHaveDeveloperEntitlement_cold_2(v16, v1);
      }
    }
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension(v5, v6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      extensionAndContainingAppHaveDeveloperEntitlement_cold_1(v17, v1);
    }

    v13 = 0;
  }

  return v13;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_264511344()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_264511428@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSharedInGroup];
  *a2 = result;
  return result;
}

id sub_264511470@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSavedInPasswordsApp];
  *a2 = result;
  return result;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAutoFill(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXAutoFill_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAutoFill_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAutoFill_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCredentials(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXCredentials_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCredentials_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCredentials_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswordSharing(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXPasswordSharing_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswordSharing_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswordSharing_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_log;
}

void sub_264511A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  _Block_object_dispose((v19 - 64), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getUNOneTimeCodeClientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUNOneTimeCodeClientClass_softClass;
  v7 = getUNOneTimeCodeClientClass_softClass;
  if (!getUNOneTimeCodeClientClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUNOneTimeCodeClientClass_block_invoke;
    v3[3] = &unk_279B61628;
    v3[4] = &v4;
    __getUNOneTimeCodeClientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_264511D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264512554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264514A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t compareStringToString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 0;
  }

  else if (v3 || !v4)
  {
    if (!v3 || v4)
    {
      v6 = [v3 compare:v4];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

void sub_2645151E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIMOneTimeCodeAcceleratorClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __IMCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279B61648;
    v5 = 0;
    IMCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    __getIMOneTimeCodeAcceleratorClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("IMOneTimeCodeAccelerator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIMOneTimeCodeAcceleratorClass_block_invoke_cold_1();
  }

  getIMOneTimeCodeAcceleratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getEMOneTimeCodeAcceleratorClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!EmailLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __EmailLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279B61680;
    v5 = 0;
    EmailLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!EmailLibraryCore_frameworkLibrary)
  {
    __getEMOneTimeCodeAcceleratorClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("EMOneTimeCodeAccelerator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getEMOneTimeCodeAcceleratorClass_block_invoke_cold_1();
  }

  getEMOneTimeCodeAcceleratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __EmailLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  EmailLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getUNOneTimeCodeClientClass_block_invoke(uint64_t a1)
{
  if (!UserNotificationsLibraryCore_frameworkLibrary)
  {
    UserNotificationsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("UNOneTimeCodeClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUNOneTimeCodeClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UserNotificationsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UserNotificationsLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

SFAutoFillPasskey *__corePasskeysToSFPasskeys_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SFAutoFillPasskey alloc] initWithCoreAutoFillPasskey:v2];

  return v3;
}

void sub_2645169B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNPSManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __NanoPreferencesSyncLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279B61700;
    v5 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    __getNPSManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNPSManagerClass_block_invoke_cold_1();
  }

  getNPSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary = result;
  return result;
}

void __isUsingEducationMode_block_invoke()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  isUsingEducationMode_usingEducationMode = [v0 isEphemeralMultiUser];
}

void sub_2645176DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_2645185C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id fillCodeString(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = _WBSLocalizedString();
  v4 = [v1 stringWithFormat:v3, v2];

  return v4;
}

id fromAppNameString(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = _WBSLocalizedString();
  v4 = [v1 stringWithFormat:v3, v2];

  return v4;
}

void *__getIMOneTimeCodeTimeStampKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMOneTimeCodeTimeStampKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMOneTimeCodeTimeStampKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IMSharedUtilitiesLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __IMSharedUtilitiesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279B61768;
    v4 = 0;
    IMSharedUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IMSharedUtilitiesLibraryCore_frameworkLibrary;
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary)
  {
    IMSharedUtilitiesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __IMSharedUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IMSharedUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getIMOneTimeCodeGuidKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMOneTimeCodeGuidKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMOneTimeCodeGuidKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIMOneTimeCodeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMOneTimeCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMOneTimeCodeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIMOneTimeCodeDisplayKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMOneTimeCodeDisplayKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMOneTimeCodeDisplayKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIMOneTimeCodeHandleKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMOneTimeCodeHandleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMOneTimeCodeHandleKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIMOneTimeCodeMachineReadableCodeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMOneTimeCodeMachineReadableCodeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMOneTimeCodeMachineReadableCodeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIMOneTimeCodeDomainKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMOneTimeCodeDomainKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMOneTimeCodeDomainKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIMOneTimeCodeEmbeddedDomainKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMOneTimeCodeEmbeddedDomainKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMOneTimeCodeEmbeddedDomainKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIMOneTimeCodeDomainStrictMatchKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMOneTimeCodeDomainStrictMatchKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMOneTimeCodeDomainStrictMatchKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIMOneTimeCodeEmbeddedDomainsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMOneTimeCodeEmbeddedDomainsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMOneTimeCodeEmbeddedDomainsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id SFStringFromCredentialIdentityType(char a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Password Credential"];
    [v3 addObject:@"Passkey Credential"];
    [v3 addObject:@"One-Time Code Credential"];
  }

  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

void sub_26451BA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26451D19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_26451D7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_26451DC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26451E3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

BOOL extensionIsEnabled(void *a1)
{
  v1 = [a1 _plugIn];
  v2 = ([v1 userElection] & 0xFFFFFFFFFFFF00FFLL) == 1;

  return v2;
}

void sub_26451EF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __findEnabledExtensions_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (extensionIsEnabled(v2) && extensionAndContainingAppHaveDeveloperEntitlement(v2))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void credentialIdentityMatchesDomains(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = sqlite3_value_text(*a3);
    if (v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      if (v7 && ((v8 = sqlite3_value_int64(a3[1]), v8 >= 2) ? (v9 = 0) : (v9 = v8), (v10 = sqlite3_value_pointer(a3[2], "domainSet")) != 0))
      {
        v11 = v10;
        if (v9 == 1)
        {
          v15 = [MEMORY[0x277CCACE0] componentsWithString:v7];
          v18 = [v15 host];
          v16 = [v18 safari_highLevelDomainFromHost];

          if (v16)
          {
            v19 = [v16 lowercaseString];
            v17 = [v11 containsObject:v19];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v12 = [v7 safari_highLevelDomainFromHost];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = v7;
          }

          v15 = v14;

          v16 = [v15 lowercaseString];
          v17 = [v11 containsObject:v16];
        }

        sqlite3_result_int(a1, v17);
      }

      else
      {
        sqlite3_result_int(a1, 0);
      }
    }

    else
    {
      sqlite3_result_int(a1, 0);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {

    sqlite3_result_int(a1, 0);
  }
}

void sub_264520D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SafariShared::WBSSQLiteDatabaseFetch<>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x277D49B08]) initWithDatabase:v3 query:v4];
  v6 = [v5 fetch];

  return v6;
}

void sub_264521D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264522448(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_264522620(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_264522DB4(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_264524160(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14 = 0;
  v7 = [objc_alloc(MEMORY[0x277D49B08]) initWithDatabase:v5 query:v6 error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 execute];
    [v7 invalidate];
    if ((v10 - 100) >= 2 && v10 != 0)
    {
      [v5 reportErrorWithCode:v10 statement:objc_msgSend(v7 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v12 = v8;
      *a2 = v9;
    }

    v10 = [v9 code];
  }

  return v10;
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,SFCredentialServiceIdentifierType &,NSString * {__strong}&,NSString * {__strong}&,long &,long &>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType &,NSString * {__strong}&,NSString * {__strong}&,long &,long &>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType &,NSString * {__strong}&,NSString * {__strong}&,long &,long &>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindInt64:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong}&,NSString * {__strong}&,long &,long &>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong}&,NSString * {__strong}&,long &,long &>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong}&,long &,long &>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong}&,long &,long &>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:5];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,long &,long &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,long &,long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:6];
  [v5 bindInt64:*a3 atParameterIndex:7];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,SFCredentialServiceIdentifierType &,NSString * {__strong}&,NSString * {__strong}&,long &,NSString * {__strong}&,NSString * {__strong}&,long &>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a1;
  [v16 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType &,NSString * {__strong}&,NSString * {__strong}&,long &,NSString * {__strong}&,NSString * {__strong}&,long &>(v16, a3, a4, a5, a6, a7, a8, a9);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType &,NSString * {__strong}&,NSString * {__strong}&,long &,NSString * {__strong}&,NSString * {__strong}&,long &>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  [v15 bindInt64:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong}&,NSString * {__strong}&,long &,NSString * {__strong}&,NSString * {__strong}&,long &>(v15, a3, a4, a5, a6, a7, a8);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong}&,NSString * {__strong}&,long &,NSString * {__strong}&,NSString * {__strong}&,long &>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong}&,long &,NSString * {__strong}&,NSString * {__strong}&,long &>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong}&,long &,NSString * {__strong}&,NSString * {__strong}&,long &>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:5];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,long &,NSString * {__strong}&,NSString * {__strong}&,long &>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,long &,NSString * {__strong}&,NSString * {__strong}&,long &>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:6];
  SafariShared::_WBSSQLiteStatementBindAllParameters<7,NSString * {__strong}&,NSString * {__strong}&,long &>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<7,NSString * {__strong}&,NSString * {__strong}&,long &>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:7];
  SafariShared::_WBSSQLiteStatementBindAllParameters<8,NSString * {__strong}&,long &>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<8,NSString * {__strong}&,long &>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:8];
  [v5 bindInt64:*a3 atParameterIndex:9];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},NSString * {__strong},long>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},long>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:4];
  [v5 bindInt64:*a3 atParameterIndex:5];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},NSString * {__strong},long>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong},long>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong},long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:5];
  [v5 bindInt64:*a3 atParameterIndex:6];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a1;
  [v16 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v16, a3, a4, a5, a6, a7, a8, a9);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  [v15 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v15, a3, a4, a5, a6, a7, a8);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindInt64:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:5];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,long,NSString * {__strong},NSString * {__strong}>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,long,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:6];
  SafariShared::_WBSSQLiteStatementBindAllParameters<7,NSString * {__strong},NSString * {__strong}>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<7,NSString * {__strong},NSString * {__strong}>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:7];
  [v5 bindString:*a3 atParameterIndex:8];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  [v15 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,long>(v15, a3, a4, a5, a6, a7, a8);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,long>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindInt64:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},NSString * {__strong},long,long>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},NSString * {__strong},long,long>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong},long,long>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong},long,long>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:5];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,long,long>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,long,long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindInt64:*a2 atParameterIndex:6];
  [v5 bindInt64:*a3 atParameterIndex:7];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a1;
  [v17 bindInt64:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong},long>(v17, a3, a4, a5, a6, a7, a8, a9, a10);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a1;
  [v16 bindString:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong},long>(v16, a3, a4, a5, a6, a7, a8, a9);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  [v15 bindInt64:*a2 atParameterIndex:3];
  SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong},long>(v15, a3, a4, a5, a6, a7, a8);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<4,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  [v13 bindString:*a2 atParameterIndex:4];
  SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},long>(v13, a3, a4, a5, a6, a7);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<5,NSString * {__strong},long,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  [v11 bindString:*a2 atParameterIndex:5];
  SafariShared::_WBSSQLiteStatementBindAllParameters<6,long,NSString * {__strong},NSString * {__strong},long>(v11, a3, a4, a5, a6);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<6,long,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindInt64:*a2 atParameterIndex:6];
  SafariShared::_WBSSQLiteStatementBindAllParameters<7,NSString * {__strong},NSString * {__strong},long>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<7,NSString * {__strong},NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindString:*a2 atParameterIndex:7];
  SafariShared::_WBSSQLiteStatementBindAllParameters<8,NSString * {__strong},long>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<8,NSString * {__strong},long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:8];
  [v5 bindInt64:*a3 atParameterIndex:9];
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  [v9 bindString:*a2 atParameterIndex:1];
  SafariShared::_WBSSQLiteStatementBindAllParameters<2,SFCredentialServiceIdentifierType,NSString * {__strong},long>(v9, a3, a4, a5);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<2,SFCredentialServiceIdentifierType,NSString * {__strong},long>(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  [v7 bindInt64:*a2 atParameterIndex:2];
  SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},long>(v7, a3, a4);
}

void SafariShared::_WBSSQLiteStatementBindAllParameters<3,NSString * {__strong},long>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [v5 bindString:*a2 atParameterIndex:3];
  [v5 bindInt64:*a3 atParameterIndex:4];
}

void OUTLINED_FUNCTION_1_1(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

id SFCredentialIdentityStoreIdentifierCreateWithConnectionToExtension(void *a1)
{
  v1 = MEMORY[0x277D3D350];
  v2 = a1;
  v3 = [v1 defaultManager];
  v4 = [v2 _xpcConnection];

  v5 = [v3 containingAppForPlugInConnectedTo:v4];

  if (v5)
  {
    v6 = v5;
  }

  return v5;
}

id containerForCredentialIdentityStoreWithIdentifier(void *a1)
{
  v1 = SFCredentialIdentityStoreIdentifierGetApplicationBundleIdentifier(a1);
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:0];
  v3 = [v2 dataContainerURL];
  v4 = [v3 URLByAppendingPathComponent:@"/SystemData/com.apple.AuthenticationServices" isDirectory:1];

  return v4;
}

void sub_264526E44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 96));
  _Unwind_Resume(a1);
}

id getFinishHandlersForExtension(void *a1, char *a2)
{
  v3 = a1;
  v4 = objc_getAssociatedObject(v3, getFinishHandlersForExtension_extensionFinishHandlersAssociationKey);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = 1;
    objc_setAssociatedObject(v3, getFinishHandlersForExtension_extensionFinishHandlersAssociationKey, v5, 1);
  }

  *a2 = v6;

  return v5;
}

void callHandler(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  os_unfair_lock_lock(&registrationLock);
  v9 = 0;
  v8 = getFinishHandlersForExtension(v6, &v9);

  v7 = [v8 objectForKeyedSubscript:v5];
  [v8 removeObjectForKey:v5];

  os_unfair_lock_unlock(&registrationLock);
  if (v7)
  {
    v7[2](v7, a3);
  }
}

void sub_2645287CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264528F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264529580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id usernameAndWebsiteStringFromCredential(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v2 user];
  v4 = [v2 site];

  v5 = [v1 stringWithFormat:@"%@@%@", v3, v4];

  return v5;
}

uint64_t numberOfDotsInString(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    do
    {
      if ([v1 characterAtIndex:v4] == 46)
      {
        ++v5;
      }

      ++v4;
    }

    while (v3 != v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *lengthOfLongestCommonSubstring(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  if ([v3 length])
  {
    v6 = 0;
    do
    {
      if ([v4 length])
      {
        v7 = 0;
        do
        {
          v8 = [v3 length] - v6;
          v9 = [v4 length] - v7;
          if (v8 >= v9)
          {
            v10 = v4;
          }

          else
          {
            v10 = v3;
          }

          if (v8 >= v9)
          {
            v11 = v7;
          }

          else
          {
            v11 = v6;
          }

          v12 = [v10 length];
          v13 = 0;
          v14 = v12 - v11;
          if (v12 != v11)
          {
            while (1)
            {
              v15 = [v3 characterAtIndex:v6 + v13];
              if (v15 != [v4 characterAtIndex:v7 + v13])
              {
                break;
              }

              if (v14 == ++v13)
              {
                v13 = v14;
                break;
              }
            }
          }

          if (v5 <= v13)
          {
            v5 = v13;
          }

          ++v7;
        }

        while (v7 < [v4 length]);
      }

      ++v6;
    }

    while (v6 < [v3 length]);
  }

  return v5;
}

void sub_26452E624(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26452E810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL29getPKAutoFillCardManagerClassv_block_invoke(uint64_t a1)
{
  if (!PassKitCoreLibraryCore(char **)::frameworkLibrary)
  {
    PassKitCoreLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("PKAutoFillCardManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKAutoFillCardManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL22PassKitCoreLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_2645326BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_264532DE4()
{
  v1 = OBJC_IVAR___SFFileVaultRecoveryKeyStore____lazy_storage___listenerProxy;
  v2 = *(v0 + OBJC_IVAR___SFFileVaultRecoveryKeyStore____lazy_storage___listenerProxy);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFFileVaultRecoveryKeyStore____lazy_storage___listenerProxy);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D49A20]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t SFFileVaultRecoveryKeyStore.saveRecoveryKey(request:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_264532E78, 0, 0);
}

uint64_t sub_264532E78()
{
  v1 = v0[18];
  v2 = sub_264532DE4();
  v0[20] = v2;
  v3 = *(v1 + OBJC_IVAR___SFFileVaultRecoveryKeySaveRequest_underlyingRequest);
  v0[2] = v0;
  v0[3] = sub_264532FB4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72108, &qword_26453E5D8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2645331E0;
  v0[13] = &block_descriptor;
  v0[14] = v4;
  [v2 saveRecoveryKeyWithRequest:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264532FB4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_264533128;
  }

  else
  {
    v2 = sub_2645330C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2645330C4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264533128()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
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

uint64_t sub_2645331E0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72140, &qword_26453E6B8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_26453329C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2645334D4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_264533598;

  return SFFileVaultRecoveryKeyStore.saveRecoveryKey(request:)(v6);
}

uint64_t sub_264533598()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_26453926C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t SFFileVaultRecoveryKeyStore.recoveryKey(volumeID:serialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x2822009F8](sub_26453375C, 0, 0);
}

uint64_t sub_26453375C()
{
  v1 = sub_264532DE4();
  v0[24] = v1;
  v2 = sub_2645392AC();
  v0[25] = v2;
  v3 = sub_2645392AC();
  v0[26] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2645338CC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72110, &qword_26453E5E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264533AFC;
  v0[13] = &block_descriptor_4;
  v0[14] = v4;
  [v1 recoveryKeyForVolumeID:v2 serialNumber:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2645338CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_264533A78;
  }

  else
  {
    v2 = sub_2645339DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2645339DC()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  v4 = 0;
  if (v1)
  {
    type metadata accessor for SFFileVaultRecoveryKey();
    v4 = sub_264533BCC(v1);
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_264533A78()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_264533AFC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72140, &qword_26453E6B8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

_BYTE *sub_264533BCC(void *a1)
{
  v2 = sub_26453929C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [a1 volumeID];
  if (!v6)
  {
    sub_2645392BC();
    v6 = sub_2645392AC();
  }

  v7 = [a1 serialNumber];
  if (!v7)
  {
    sub_2645392BC();
    v7 = sub_2645392AC();
  }

  v8 = [a1 recoveryKey];
  if (!v8)
  {
    sub_2645392BC();
    v8 = sub_2645392AC();
  }

  v9 = [a1 displayName];
  if (!v9)
  {
    sub_2645392BC();
    v9 = sub_2645392AC();
  }

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = [a1 creationDate];
  sub_26453928C();

  v12 = sub_26453927C();
  (*(v3 + 8))(v5, v2);
  v13 = [v10 initWithVolumeID:v6 serialNumber:v7 recoveryKey:v8 displayName:v9 creationDate:v12];

  v14 = v13;
  v15 = [a1 isSharedInGroup];
  v16 = OBJC_IVAR___SFFileVaultRecoveryKey_isSharedInGroup;
  swift_beginAccess();
  v14[v16] = v15;
  v17 = [a1 isSavedInPasswordsApp];
  v18 = OBJC_IVAR___SFFileVaultRecoveryKey_isSavedInPasswordsApp;
  swift_beginAccess();
  v14[v18] = v17;
  v19 = [a1 deviceModel];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2645392BC();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = &v14[OBJC_IVAR___SFFileVaultRecoveryKey_deviceModel];
  swift_beginAccess();
  *v24 = v21;
  v24[1] = v23;

  v25 = [a1 deviceVariant];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2645392BC();
    v29 = v28;
  }

  else
  {

    v27 = 0;
    v29 = 0;
  }

  v30 = &v14[OBJC_IVAR___SFFileVaultRecoveryKey_deviceVariant];
  swift_beginAccess();
  *v30 = v27;
  v30[1] = v29;

  return v14;
}

uint64_t sub_2645340F8(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_2645392BC();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_2645392BC();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_2645341F4;

  return SFFileVaultRecoveryKeyStore.recoveryKey(volumeID:serialNumber:)(v6, v8, v9, v11);
}

uint64_t sub_2645341F4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_26453926C();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t SFFileVaultRecoveryKeyStore.recoveryKeys(serialNumber:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_2645343F8, 0, 0);
}

uint64_t sub_2645343F8()
{
  v1 = sub_264532DE4();
  v0[22] = v1;
  v2 = sub_2645392AC();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_264534544;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72118, &qword_26453E5F8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264534850;
  v0[13] = &block_descriptor_8;
  v0[14] = v3;
  [v1 recoveryKeysForSerialNumber:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264534544()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_2645347D8;
  }

  else
  {
    v2 = sub_264534654;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264534654()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    v2 = sub_26453938C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    v6 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = MEMORY[0x277D84F90];
  result = sub_26453935C();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  type metadata accessor for SFFileVaultRecoveryKey();
  v4 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26673B450](v4, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v4 + 32);
    }

    ++v4;
    sub_264533BCC(v5);
    sub_26453933C();
    sub_26453936C();
    sub_26453937C();
    sub_26453934C();
  }

  while (v2 != v4);

  v6 = v9;
LABEL_12:
  v7 = *(v0 + 184);

  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t sub_2645347D8()
{
  v1 = v0[23];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_264534850(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72140, &qword_26453E6B8);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_264536628(0, &qword_27FF72138, 0x277D49A18);
    **(*(v4 + 64) + 40) = sub_2645392EC();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_264534AC8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_2645392BC();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_264534B9C;

  return SFFileVaultRecoveryKeyStore.recoveryKeys(serialNumber:)(v5, v7);
}

uint64_t sub_264534B9C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_26453926C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for SFFileVaultRecoveryKey();
    v10 = sub_2645392DC();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t SFFileVaultRecoveryKeyStore.deleteRecoveryKey(volumeID:serialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x2822009F8](sub_264534D74, 0, 0);
}

uint64_t sub_264534D74()
{
  v1 = sub_264532DE4();
  v0[23] = v1;
  v2 = sub_2645392AC();
  v0[24] = v2;
  v3 = sub_2645392AC();
  v0[25] = v3;
  v0[2] = v0;
  v0[3] = sub_264534EDC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72108, &qword_26453E5D8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2645331E0;
  v0[13] = &block_descriptor_12;
  v0[14] = v4;
  [v1 deleteRecoveryKeyForVolumeID:v2 serialNumber:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264534EDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_26453505C;
  }

  else
  {
    v2 = sub_264534FEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264534FEC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26453505C()
{
  v1 = v0[25];
  v3 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_264535270(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_2645392BC();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_2645392BC();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_26453536C;

  return SFFileVaultRecoveryKeyStore.deleteRecoveryKey(volumeID:serialNumber:)(v6, v8, v9, v11);
}

uint64_t sub_26453536C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_26453926C();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

void __swiftcall SFFileVaultRecoveryKeyStore.init()(SFFileVaultRecoveryKeyStore *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id SFFileVaultRecoveryKeyStore.init()()
{
  *(v0 + OBJC_IVAR___SFFileVaultRecoveryKeyStore____lazy_storage___listenerProxy) = 0;
  v2.super_class = SFFileVaultRecoveryKeyStore;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_264535614()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_264536688;

  return sub_264535270(v2, v3, v5, v4);
}

uint64_t sub_2645356D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_264536688;

  return v6();
}

uint64_t sub_2645357BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264536688;

  return sub_2645356D4(v2, v3, v4);
}

uint64_t sub_26453587C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_264535964;

  return v7();
}

uint64_t sub_264535964()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264535A58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264536688;

  return sub_26453587C(a1, v4, v5, v6);
}

uint64_t sub_264535B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72130, &qword_26453E608);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_264535DE0(a3, v22 - v9);
  v11 = sub_26453931C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_264535E50(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_26453930C();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_2645392FC();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_2645392CC() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_264535E50(a3);

    return v20;
  }

LABEL_8:
  sub_264535E50(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_264535DE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72130, &qword_26453E608);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264535E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72130, &qword_26453E608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264535EB8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_264535FB0;

  return v6(a1);
}

uint64_t sub_264535FB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2645360A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264536688;

  return sub_264535EB8(a1, v4);
}

uint64_t sub_264536160(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264535964;

  return sub_264535EB8(a1, v4);
}

uint64_t sub_264536218()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264536688;

  return sub_264534AC8(v2, v3, v4);
}

uint64_t sub_2645362CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264535964;

  return sub_26453587C(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2645363E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_264536688;

  return sub_2645340F8(v2, v3, v5, v4);
}

uint64_t objectdestroy_38Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2645364F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_264536688;

  return sub_2645334D4(v2, v3, v4);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_264536628(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_2645366E0(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___SFFileVaultRecoveryKeySaveRequest_underlyingRequest];
  v5 = a1;
  v6 = [v4 *a3];
  if (!v6)
  {
    sub_2645392BC();
    v6 = sub_2645392AC();
  }

  return v6;
}

uint64_t sub_264536774(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR___SFFileVaultRecoveryKeySaveRequest_underlyingRequest) *a1];
  v3 = sub_2645392BC();

  return v3;
}

void __swiftcall SFFileVaultRecoveryKeySaveRequest.init(volumeID:serialNumber:recoveryKey:displayName:)(SFFileVaultRecoveryKeySaveRequest *__return_ptr retstr, Swift::String volumeID, Swift::String serialNumber, Swift::String recoveryKey, Swift::String displayName)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_2645392AC();

  v7 = sub_2645392AC();

  v8 = sub_2645392AC();

  v9 = sub_2645392AC();

  [v5 initWithVolumeID:v6 serialNumber:v7 recoveryKey:v8 displayName:v9];
}

id SFFileVaultRecoveryKeySaveRequest.init(volumeID:serialNumber:recoveryKey:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = objc_allocWithZone(MEMORY[0x277D49A28]);
  v10 = sub_2645392AC();

  v11 = sub_2645392AC();

  v12 = sub_2645392AC();

  v13 = sub_2645392AC();

  v14 = [v9 initWithVolumeID:v10 serialNumber:v11 recoveryKey:v12 displayName:v13];

  *&v8[OBJC_IVAR___SFFileVaultRecoveryKeySaveRequest_underlyingRequest] = v14;
  v16.receiver = v8;
  v16.super_class = SFFileVaultRecoveryKeySaveRequest;
  return objc_msgSendSuper2(&v16, sel_init);
}

void __swiftcall SFFileVaultRecoveryKeySaveRequest.init()(SFFileVaultRecoveryKeySaveRequest *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for SFFileVaultRecoveryKeySaveRequest()
{
  result = qword_27FF72150;
  if (!qword_27FF72150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF72150);
  }

  return result;
}

uint64_t SFFileVaultRecoveryKey.volumeID.getter()
{
  v1 = *(v0 + OBJC_IVAR___SFFileVaultRecoveryKey_volumeID);

  return v1;
}

uint64_t SFFileVaultRecoveryKey.serialNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR___SFFileVaultRecoveryKey_serialNumber);

  return v1;
}

uint64_t SFFileVaultRecoveryKey.recoveryKey.getter()
{
  v1 = *(v0 + OBJC_IVAR___SFFileVaultRecoveryKey_recoveryKey);

  return v1;
}

id sub_264536C84(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2645392AC();

  return v3;
}

uint64_t SFFileVaultRecoveryKey.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR___SFFileVaultRecoveryKey_displayName);

  return v1;
}

id sub_264536E54(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_2645392AC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_264536EE8(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_264536F48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_2645392BC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_264536FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_26453702C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2645392BC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_264537090(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_2645392AC();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t SFFileVaultRecoveryKey.isSharedInGroup.getter()
{
  v1 = OBJC_IVAR___SFFileVaultRecoveryKey_isSharedInGroup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SFFileVaultRecoveryKey.isSharedInGroup.setter(char a1)
{
  v3 = OBJC_IVAR___SFFileVaultRecoveryKey_isSharedInGroup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SFFileVaultRecoveryKey.isSavedInPasswordsApp.getter()
{
  v1 = OBJC_IVAR___SFFileVaultRecoveryKey_isSavedInPasswordsApp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SFFileVaultRecoveryKey.isSavedInPasswordsApp.setter(char a1)
{
  v3 = OBJC_IVAR___SFFileVaultRecoveryKey_isSavedInPasswordsApp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SFFileVaultRecoveryKey.init(volumeID:serialNumber:recoveryKey:displayName:creationDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_2645392AC();

  v11 = sub_2645392AC();

  v12 = sub_2645392AC();

  v13 = sub_2645392AC();

  v14 = sub_26453927C();
  v15 = [v9 initWithVolumeID:v10 serialNumber:v11 recoveryKey:v12 displayName:v13 creationDate:v14];

  v16 = sub_26453929C();
  (*(*(v16 - 8) + 8))(a9, v16);
  return v15;
}

{
  v10 = &v9[OBJC_IVAR___SFFileVaultRecoveryKey_deviceModel];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v9[OBJC_IVAR___SFFileVaultRecoveryKey_deviceVariant];
  *v11 = 0;
  v11[1] = 0;
  v9[OBJC_IVAR___SFFileVaultRecoveryKey_isSharedInGroup] = 0;
  v9[OBJC_IVAR___SFFileVaultRecoveryKey_isSavedInPasswordsApp] = 0;
  v12 = &v9[OBJC_IVAR___SFFileVaultRecoveryKey_volumeID];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v9[OBJC_IVAR___SFFileVaultRecoveryKey_serialNumber];
  *v13 = a3;
  v13[1] = a4;
  v14 = &v9[OBJC_IVAR___SFFileVaultRecoveryKey_recoveryKey];
  *v14 = a5;
  v14[1] = a6;
  v15 = &v9[OBJC_IVAR___SFFileVaultRecoveryKey_displayName];
  *v15 = a7;
  v15[1] = a8;
  *&v9[OBJC_IVAR___SFFileVaultRecoveryKey_objc_creationDate] = sub_26453927C();
  v19.receiver = v9;
  v19.super_class = SFFileVaultRecoveryKey;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  v17 = sub_26453929C();
  (*(*(v17 - 8) + 8))(a9, v17);
  return v16;
}

id SFFileVaultRecoveryKey.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SFFileVaultRecoveryKey()
{
  result = qword_27FF721A0;
  if (!qword_27FF721A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF721A0);
  }

  return result;
}

uint64_t sub_2645378A8()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void __getIMOneTimeCodeAcceleratorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getIMOneTimeCodeAcceleratorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFAppAutoFillOneTimeCodeProvider.m" lineNumber:54 description:{@"Unable to find class %s", "IMOneTimeCodeAccelerator"}];

  __break(1u);
}

void __getIMOneTimeCodeAcceleratorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *IMCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFAppAutoFillOneTimeCodeProvider.m" lineNumber:53 description:{@"%s", *a1}];

  __break(1u);
}

void __getEMOneTimeCodeAcceleratorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getEMOneTimeCodeAcceleratorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFAppAutoFillOneTimeCodeProvider.m" lineNumber:58 description:{@"Unable to find class %s", "EMOneTimeCodeAccelerator"}];

  __break(1u);
}

void __getEMOneTimeCodeAcceleratorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *EmailLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFAppAutoFillOneTimeCodeProvider.m" lineNumber:57 description:{@"%s", *a1}];

  __break(1u);
}

void __getNPSManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNPSManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFAutoFillFeatureManager.m" lineNumber:70 description:{@"Unable to find class %s", "NPSManager"}];

  __break(1u);
}

void __getNPSManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NanoPreferencesSyncLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFAutoFillFeatureManager.m" lineNumber:69 description:{@"%s", *a1}];

  __break(1u);
}

void IMSharedUtilitiesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *IMSharedUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFAutoFillOneTimeCode.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void extensionAndContainingAppHaveDeveloperEntitlement_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_26450F000, v5, v6, "Skipping extension %{public}@ because it is missing the %{public}@ entitlement", v7, v8, v9, v10);
}

void extensionAndContainingAppHaveDeveloperEntitlement_cold_2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_26450F000, v5, v6, "Skipping extension %{public}@ because its containing app is missing the %{public}@ entitlement", v7, v8, v9, v10);
}