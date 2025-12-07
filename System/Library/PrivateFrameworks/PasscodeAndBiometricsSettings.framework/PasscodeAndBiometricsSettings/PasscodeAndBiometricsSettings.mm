void sub_25E0ECA94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_25E0ECE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0ED958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E0EE17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getEREyeReliefClientClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!EyeReliefLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __EyeReliefLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A03168;
    v6 = 0;
    EyeReliefLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (EyeReliefLibraryCore_frameworkLibrary)
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
  result = objc_getClass("EREyeReliefClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getEREyeReliefClientClass_block_invoke_cold_1();
  }

  getEREyeReliefClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __EyeReliefLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  EyeReliefLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E0EFA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0EFEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0F0074(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25E0F0C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0F19B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0F1FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0F2AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E0F4AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0F4D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getLAContextClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __LocalAuthenticationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A03360;
    v6 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (LocalAuthenticationLibraryCore_frameworkLibrary)
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
  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAContextClass_block_invoke_cold_1();
  }

  getLAContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_25E0F5D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0F6984(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_25E0F79BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E0F7D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0F89EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E0F9280(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25E0F9F20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_25E0FA608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void dtoStatusChangedNotification(uint64_t a1, void *a2)
{
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "DTO: Received notification: Changed arm/overall state", v5, 2u);
  }

  if (a2)
  {
    [a2 handleDTOStatusChanged];
  }

  else
  {
    v4 = PABSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      dtoStatusChangedNotification_cold_1();
    }
  }
}

Class __getLAContextClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __LocalAuthenticationLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A03508;
    v6 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (LocalAuthenticationLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAContextClass_block_invoke_cold_1();
  }

  getLAContextClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getBYFlowSkipControllerClass_block_invoke(uint64_t a1)
{
  SetupAssistantLibrary();
  result = objc_getClass("BYFlowSkipController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBYFlowSkipControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBYFlowSkipControllerClass_block_invoke_cold_1();
    return SetupAssistantLibrary();
  }

  return result;
}

uint64_t SetupAssistantLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SetupAssistantLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279A03520;
    v5 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SetupAssistantLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!SetupAssistantLibraryCore_frameworkLibrary)
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

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBYFlowSkipIdentifierTouchIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYFlowSkipIdentifierTouchID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYFlowSkipIdentifierTouchIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_25E0FBF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E0FC348(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25E0FD5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0FDF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E0FF408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E100668(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

Class __getBFFStyleClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A03740;
    v6 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary = result;
  return result;
}

void __getPKWalletVisibilityClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKWalletVisibility");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKWalletVisibilityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPKWalletVisibilityClass_block_invoke_cold_1();
    PassKitCoreLibrary();
  }
}

void PassKitCoreLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __PassKitCoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279A03758;
    v3 = 0;
    PassKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PassKitCoreLibraryCore_frameworkLibrary)
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

uint64_t __PassKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPKPaymentRegistrationUtilitiesClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary();
  result = objc_getClass("PKPaymentRegistrationUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentRegistrationUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPKPaymentRegistrationUtilitiesClass_block_invoke_cold_1();
    return __getPKPaymentWebServiceClass_block_invoke(v3);
  }

  return result;
}

Class __getPKPaymentWebServiceClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary();
  result = objc_getClass("PKPaymentWebService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentWebServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPKPaymentWebServiceClass_block_invoke_cold_1();
    return +[(PABSBiometrics *)v3];
  }

  return result;
}

void sub_25E1022C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_25E102D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E103530(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25E10392C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25E103C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E105908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E105F90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_25E10624C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_25E1074A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E1077EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E1084EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E1099D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E109D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E10A110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E10A754(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_25E10AE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak((v34 + 56));
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&a34);
  objc_destroyWeak((v37 - 120));
  objc_destroyWeak((v37 - 112));
  _Unwind_Resume(a1);
}

void dtoStatusChangedNotification_0(uint64_t a1, void *a2)
{
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "DTO: Received notification: Changed arm/overall state", v5, 2u);
  }

  if (a2)
  {
    [a2 handleDTOStatusChanged];
  }

  else
  {
    v4 = PABSLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      dtoStatusChangedNotification_cold_1_0();
    }
  }
}

id getAFPreferencesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass;
  v7 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke;
    v3[3] = &unk_279A03148;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E10D69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getLockdownModeManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLockdownModeManagerClass_softClass;
  v7 = getLockdownModeManagerClass_softClass;
  if (!getLockdownModeManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getLockdownModeManagerClass_block_invoke;
    v3[3] = &unk_279A03148;
    v3[4] = &v4;
    __getLockdownModeManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E110D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E111470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 160));
  _Unwind_Resume(a1);
}

void sub_25E112240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E113F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getHMHomeManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HomeKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A03E48;
    v6 = 0;
    HomeKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (HomeKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("HMHomeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHMHomeManagerClass_block_invoke_cold_1();
  }

  getHMHomeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HomeKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HomeKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __getAKAppleIDAuthenticationInAppContextClass_block_invoke(uint64_t a1)
{
  AuthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AKAppleIDAuthenticationInAppContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKAppleIDAuthenticationInAppContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAKAppleIDAuthenticationInAppContextClass_block_invoke_cold_1();
    AuthKitLibrary();
  }
}

void AuthKitLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __AuthKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279A03E60;
    v3 = 0;
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AuthKitLibraryCore_frameworkLibrary)
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

uint64_t __AuthKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAKAppleIDAuthenticationControllerClass_block_invoke(uint64_t a1)
{
  AuthKitLibrary();
  result = objc_getClass("AKAppleIDAuthenticationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKAppleIDAuthenticationControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAKAppleIDAuthenticationControllerClass_block_invoke_cold_1();
    return __getAFPreferencesClass_block_invoke(v3);
  }

  return result;
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A03E78;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AssistantServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAFPreferencesClass_block_invoke_cold_1();
  }

  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getLockdownModeManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!LockdownModeLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __LockdownModeLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A03E90;
    v6 = 0;
    LockdownModeLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (LockdownModeLibraryCore_frameworkLibrary)
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
  result = objc_getClass("LockdownModeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLockdownModeManagerClass_block_invoke_cold_1();
  }

  getLockdownModeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LockdownModeLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  LockdownModeLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

void sub_25E117388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E117648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NanoRegistryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A03F00;
    v6 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (NanoRegistryLibraryCore_frameworkLibrary)
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

  getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSFUnlockManagerClass_block_invoke(uint64_t a1)
{
  SharingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFUnlockManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFUnlockManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSFUnlockManagerClass_block_invoke_cold_1();
    SharingLibrary();
  }
}

void SharingLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SharingLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SharingLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279A03F18;
    v3 = 0;
    SharingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SharingLibraryCore_frameworkLibrary)
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

uint64_t __SharingLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SharingLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getIDSDefaultPairedDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __IDSLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279A03F30;
    v7 = 0;
    IDSLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = IDSLibraryCore_frameworkLibrary;
    if (IDSLibraryCore_frameworkLibrary)
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

  v2 = IDSLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "IDSDefaultPairedDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSDefaultPairedDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IDSLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSFAuthenticationManagerClass_block_invoke(uint64_t a1)
{
  SharingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFAuthenticationManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFAuthenticationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSFAuthenticationManagerClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_2();
  }
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id PABS_BundleForPABSFramework(uint64_t a1)
{
  if (PABS_BundleForPABSFramework_onceToken != -1)
  {
    PABS_BundleForPABSFramework_cold_1();
  }

  v2 = PABS_BundleForPABSFramework__frameworkBundle;

  return v2;
}

id PABS_LocalizedStringForPasscodeLock(void *a1)
{
  v1 = a1;
  v2 = PABS_BundleForPABSFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Passcode Lock"];

  return v3;
}

id PABSLogForCategory(uint64_t a1)
{
  if (a1)
  {
    PABSLogForCategory_cold_1();
  }

  if (PABSLogForCategory_loggingToken[0] != -1)
  {
    PABSLogForCategory_cold_2();
  }

  v1 = PABSLogForCategory_logObjects_0;

  return v1;
}

uint64_t __PABSLogForCategory_block_invoke()
{
  PABSLogForCategory_logObjects_0 = os_log_create("com.apple.PasscodeAndBiometricsSettings", "Passcode");

  return MEMORY[0x2821F96F8]();
}

id sub_25E117F14(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_25E11D1D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25E11D1F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20]();
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 specifier];
  if (result)
  {
    v39 = a2;
    v40 = result;
    result = [a1 specifier];
    if (result)
    {
      v17 = result;
      v18 = [result target];

      v37 = v9;
      v38 = v8;
      v35 = v13;
      v36 = v12;
      if (v18)
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          v20 = v19;
          v21 = [v19 parentViewController];
          v34 = v20;
          if (v21)
          {
            v22 = v21;
            v18 = [v21 navigationItem];
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v18 = 0;
          v34 = 0;
        }
      }

      else
      {
        v34 = 0;
      }

      v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
      v24 = objc_opt_self();
      v25 = sub_25E11D220();
      v26 = [v24 preferredFontForTextStyle_];

      [v23 setFont_];
      v27 = v23;
      v28 = sub_25E1183DC(v39, a3, a4);
      [v27 setAttributedText_];

      sub_25E11A044(0, &qword_27FCDBBE0, 0x277D85C78);
      v29 = sub_25E11D2D0();
      v30 = swift_allocObject();
      *(v30 + 16) = v18;
      *(v30 + 24) = v27;
      aBlock[4] = sub_25E119F94;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25E118680;
      aBlock[3] = &block_descriptor;
      v31 = _Block_copy(aBlock);
      v32 = v18;
      sub_25E11D1E0();
      v41 = MEMORY[0x277D84F90];
      sub_25E119FB4(&qword_27FCDBBE8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDBBF0, &qword_25E120088);
      sub_25E119FFC(&qword_27FCDBBF8, &qword_27FCDBBF0, &qword_25E120088, MEMORY[0x277D83970]);
      v33 = v38;
      sub_25E11D2F0();
      MEMORY[0x25F8AB370](0, v15, v11, v31);

      _Block_release(v31);
      (*(v37 + 8))(v11, v33);
      (*(v35 + 8))(v15, v36);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_25E1183DC(uint64_t a1, uint64_t a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDBC00, &qword_25E120090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E120020;
  v5 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 labelColor];
  v9 = [v8 colorWithAlphaComponent_];

  *(inited + 64) = sub_25E11A044(0, &qword_27FCDBC08, 0x277D75348);
  *(inited + 40) = v9;
  sub_25E119E18(inited, &qword_27FCDBC20, &qword_25E1200A0, &qword_27FCDBC10, &qword_25E120098);
  swift_setDeallocating();
  sub_25E11A08C(inited + 32);
  v10 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v11 = sub_25E11D220();
  type metadata accessor for Key(0);
  sub_25E119FB4(&qword_27FCDBC18, type metadata accessor for Key, &unk_25E120374);
  v12 = sub_25E11D210();

  v13 = [v10 initWithString:v11 attributes:v12];

  return v13;
}

uint64_t sub_25E1185C8(void *a1, uint64_t a2)
{
  sub_25E11D2B0();
  sub_25E11D2A0();
  sub_25E11D290();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    [a1 setTitleView_];
  }
}

uint64_t sub_25E118680(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25E1186C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_25E11D2B0();
  sub_25E11D2A0();
  sub_25E11D290();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x25F8AB300](23328, 0xE200000000000000);
  MEMORY[0x25F8AB300](a5, a6);
  MEMORY[0x25F8AB300](10333, 0xE200000000000000);
  MEMORY[0x25F8AB300](a7, a8);
  MEMORY[0x25F8AB300](41, 0xE100000000000000);

  sub_25E11D200();
}

void sub_25E118850()
{
  sub_25E11D2B0();
  sub_25E11D2A0();
  sub_25E11D290();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = sub_25E11D190();
  v3 = [v1 canOpenURL_];

  if (v3)
  {
    v4 = [v0 sharedApplication];
    v5 = sub_25E11D190();
    sub_25E119E18(MEMORY[0x277D84F90], &qword_27FCDBBD0, &qword_25E120078, &qword_27FCDBBD8, &qword_25E120080);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_25E119FB4(&qword_27FCDBBC8, type metadata accessor for OpenExternalURLOptionsKey, &unk_25E1203B8);
    v6 = sub_25E11D210();

    [v4 openURL:v5 options:v6 completionHandler:0];
  }

  else
  {
  }
}

id sub_25E118B40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_25E11D220();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

id sub_25E118EBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25E118F38(uint64_t a1, id *a2)
{
  result = sub_25E11D230();
  *a2 = 0;
  return result;
}

uint64_t sub_25E118FB0(uint64_t a1, id *a2)
{
  v3 = sub_25E11D240();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25E119030@<X0>(uint64_t *a2@<X8>)
{
  sub_25E11D250();
  v3 = sub_25E11D220();

  *a2 = v3;
  return result;
}

uint64_t sub_25E119074()
{
  v0 = sub_25E11D250();
  v1 = MEMORY[0x25F8AB310](v0);

  return v1;
}

uint64_t sub_25E1190B0(uint64_t a1)
{
  sub_25E11D250();
  sub_25E11D260();
}

uint64_t sub_25E119104(uint64_t a1)
{
  sub_25E11D250();
  sub_25E11D330();
  sub_25E11D260();
  v1 = sub_25E11D340();

  return v1;
}

uint64_t sub_25E11917C(void *a1, uint64_t *a2)
{
  v2 = sub_25E11D250();
  v4 = v3;
  if (v2 == sub_25E11D250() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25E11D320();
  }

  return v7 & 1;
}

uint64_t sub_25E119208@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E11D250();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E119234(uint64_t a1)
{
  v2 = sub_25E119FB4(&qword_27FCDBC18, type metadata accessor for Key, &unk_25E120374);
  v3 = sub_25E119FB4(&qword_27FCDBC68, type metadata accessor for Key, &unk_25E1202C8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25E1192F0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25E11D220();

  *a2 = v3;
  return result;
}

uint64_t sub_25E119338(uint64_t a1)
{
  v2 = sub_25E119FB4(&qword_27FCDBBC8, type metadata accessor for OpenExternalURLOptionsKey, &unk_25E1203B8);
  v3 = sub_25E119FB4(&qword_27FCDBC70, type metadata accessor for OpenExternalURLOptionsKey, &unk_25E1201A8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_25E1193F4(uint64_t a1)
{
  sub_25E11D250();
  sub_25E11D330();
  sub_25E11D260();
  v2 = sub_25E11D340();

  return sub_25E119484(a1, v2);
}

unint64_t sub_25E119484(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_25E11D250();
      v8 = v7;
      if (v6 == sub_25E11D250() && v8 == v9)
      {
        break;
      }

      v11 = sub_25E11D320();

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

uint64_t sub_25E119588()
{
  swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDBBA8, &qword_25E120068);
  v53 = *(v1 - 8);
  v54 = v1;
  (MEMORY[0x28223BE20])();
  v52 = &v46 - v2;
  v47 = v0;
  [v0 setSelectionStyle_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  v6 = 0xD000000000000021;
  v44 = 0x800000025E123C40;
  v50 = sub_25E11D180();
  v51 = v7;

  if (PSIsPearlAvailable())
  {
    v8 = [v4 bundleForClass_];
    v9 = 0xD00000000000001ELL;
    v10 = sub_25E11D180();
    v48 = v11;
    v49 = v10;

    v12 = [v4 bundleForClass_];
    v44 = 0x800000025E123C40;
    v13 = sub_25E11D180();
    v15 = v14;

    v16 = [objc_opt_self() currentDevice];
    v17 = [v16 userInterfaceIdiom];

    if (v17)
    {
      v18 = "_SUBTITLE_FACE_ID";
    }

    else
    {
      v18 = "opic=ipad66441e44";
    }

    v19 = "opic=iph672384a0b";
  }

  else
  {
    v20 = PSSupportsMesa();
    v21 = [v4 bundleForClass_];
    if (v20)
    {
      v9 = 0xD00000000000001FLL;
      v22 = sub_25E11D180();
      v48 = v23;
      v49 = v22;

      v24 = [v4 bundleForClass_];
      v44 = 0x800000025E123C40;
      v13 = sub_25E11D180();
      v15 = v25;

      v26 = [objc_opt_self() currentDevice];
      v27 = [v26 userInterfaceIdiom];

      if (v27)
      {
        v18 = "_SUBTITLE_TOUCH_ID";
      }

      else
      {
        v18 = "opic=ipadcb11e17d";
      }

      v19 = "opic=iph14a867ae";
      v6 = 0xD000000000000021;
    }

    else
    {
      v28 = sub_25E11D180();
      v48 = v29;
      v49 = v28;

      v30 = [v4 bundleForClass_];
      v44 = 0x800000025E123C40;
      v13 = sub_25E11D180();
      v15 = v31;

      v32 = [objc_opt_self() currentDevice];
      v33 = [v32 userInterfaceIdiom];

      if (v33)
      {
        v6 = 0xD000000000000021;
      }

      else
      {
        v6 = 0xD000000000000020;
      }

      if (v33)
      {
        v18 = "_SUBTITLE_GENERIC";
      }

      else
      {
        v18 = "opic=ipad997daf9f";
      }

      v19 = "Descriptive Text";
      v9 = 0xD00000000000001FLL;
    }
  }

  v34 = v48;

  v35 = swift_allocObject();
  v46 = &v46;
  v36 = v49;
  v35[2] = v47;
  v35[3] = v36;
  v35[4] = v34;
  v37 = MEMORY[0x28223BE20](v35);
  *(&v46 - 12) = v38;
  *(&v46 - 11) = v34;
  *(&v46 - 10) = v13;
  *(&v46 - 9) = v15;
  v39 = v51;
  *(&v46 - 8) = v50;
  *(&v46 - 7) = v39;
  *(&v46 - 6) = v6;
  *(&v46 - 5) = v18 | 0x8000000000000000;
  *(&v46 - 4) = v9;
  *(&v46 - 3) = v19 | 0x8000000000000000;
  v44 = sub_25E119D20;
  v45 = v37;
  v50 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDBBB0, &qword_25E120070);
  sub_25E119FFC(&qword_27FCDBBB8, &qword_27FCDBBB0, &qword_25E120070, MEMORY[0x277D4D7A8]);
  v41 = v52;
  sub_25E11D1B0();

  sub_25E11D1C0();
  v42 = v54;
  v55[3] = v54;
  v55[4] = sub_25E119FFC(&qword_27FCDBBC0, &qword_27FCDBBA8, &qword_25E120068, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v55);
  sub_25E11D1A0();
  (*(v53 + 8))(v41, v42);
  MEMORY[0x25F8AB350](v55);
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

uint64_t sub_25E119CE0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_25E119E18(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_25E11D300();
    v10 = a1 + 32;

    while (1)
    {
      sub_25E11A154(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_25E1193F4(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_25E119F44(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_25E119F44(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25E119F54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25E119FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E119FFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_25E11A044(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25E11A08C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDBC10, &qword_25E120098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25E11A108(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_25E11A154(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

dispatch_queue_t __get_aks_client_dispatch_queue_block_invoke()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  get_aks_client_dispatch_queue_connection_queue = result;
  return result;
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x277CD28A0];
  v4 = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], path);
  v5 = MEMORY[0x277D85F48];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x277D85F48], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t OUTLINED_FUNCTION_5(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

char *aks_copy_packed_data(_DWORD *a1, const void *a2, int a3)
{
  v3 = a1 + 1;
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 = (v3 + a3);
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      return v3 + v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *aks_pack_data(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = aks_copy_packed_data(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

uint64_t SESExternalProviderCredentialPresent_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_SEService))
  {
    dlopenHelper_SEService(a1);
  }

  return MEMORY[0x2821AA898]();
}

double authPtrLoadHelper_x8__SESExternalProviderCredentialPresent(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SEService))
  {
    return dlopenHelper_SEService(result);
  }

  return result;
}

double dlopenHelper_SEService(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SEService.framework/SEService", 0);
  atomic_store(1u, &dlopenHelperFlag_SEService);
  return a1;
}