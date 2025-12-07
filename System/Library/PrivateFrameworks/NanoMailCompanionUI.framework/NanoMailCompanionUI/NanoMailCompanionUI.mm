id soft_BPSCellHightlightColor()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getBPSCellHightlightColorSymbolLoc_ptr;
  v9 = getBPSCellHightlightColorSymbolLoc_ptr;
  if (!getBPSCellHightlightColorSymbolLoc_ptr)
  {
    v1 = BridgePreferencesLibrary();
    v7[3] = dlsym(v1, "BPSCellHightlightColor");
    getBPSCellHightlightColorSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    soft_BPSCellHightlightColor_cold_1();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = v0();

  return v2;
}

id soft_BPSTextColor()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getBPSTextColorSymbolLoc_ptr;
  v9 = getBPSTextColorSymbolLoc_ptr;
  if (!getBPSTextColorSymbolLoc_ptr)
  {
    v1 = BridgePreferencesLibrary();
    v7[3] = dlsym(v1, "BPSTextColor");
    getBPSTextColorSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    soft_BPSCellHightlightColor_cold_1();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = v0();

  return v2;
}

id soft_BPSDetailTextColor()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getBPSDetailTextColorSymbolLoc_ptr;
  v9 = getBPSDetailTextColorSymbolLoc_ptr;
  if (!getBPSDetailTextColorSymbolLoc_ptr)
  {
    v1 = BridgePreferencesLibrary();
    v7[3] = dlsym(v1, "BPSDetailTextColor");
    getBPSDetailTextColorSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    soft_BPSCellHightlightColor_cold_1();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = v0();

  return v2;
}

void *__getBPSCellHightlightColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary();
  result = dlsym(v2, "BPSCellHightlightColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSCellHightlightColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BridgePreferencesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!BridgePreferencesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __BridgePreferencesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279934680;
    v5 = 0;
    BridgePreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BridgePreferencesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!BridgePreferencesLibraryCore_frameworkLibrary)
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

uint64_t __BridgePreferencesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BridgePreferencesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBPSTextColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary();
  result = dlsym(v2, "BPSTextColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSTextColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBPSDetailTextColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary();
  result = dlsym(v2, "BPSDetailTextColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSDetailTextColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBPSBridgeTintColorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary();
  result = dlsym(v2, "BPSBridgeTintColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSBridgeTintColorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getNNMKEmailAddressTokenKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getNNMKEmailAddressTokenKeySymbolLoc_ptr;
  v9 = getNNMKEmailAddressTokenKeySymbolLoc_ptr;
  if (!getNNMKEmailAddressTokenKeySymbolLoc_ptr)
  {
    v1 = NanoMailKitServerLibrary();
    v7[3] = dlsym(v1, "NNMKEmailAddressTokenKey");
    getNNMKEmailAddressTokenKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    soft_BPSCellHightlightColor_cold_1();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

id getNanoMailCloudNotificationsEnabledKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getNanoMailCloudNotificationsEnabledKeySymbolLoc_ptr;
  v9 = getNanoMailCloudNotificationsEnabledKeySymbolLoc_ptr;
  if (!getNanoMailCloudNotificationsEnabledKeySymbolLoc_ptr)
  {
    v1 = NanoMailKitServerLibrary();
    v7[3] = dlsym(v1, "NanoMailCloudNotificationsEnabledKey");
    getNanoMailCloudNotificationsEnabledKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    soft_BPSCellHightlightColor_cold_1();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

void sub_25B193A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B1945D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getNNMKURLRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNNMKURLRequestClass_softClass;
  v7 = getNNMKURLRequestClass_softClass;
  if (!getNNMKURLRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getNNMKURLRequestClass_block_invoke;
    v3[3] = &unk_279934660;
    v3[4] = &v4;
    __getNNMKURLRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25B1946CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNNMKEmailAddressTokenKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoMailKitServerLibrary();
  result = dlsym(v2, "NNMKEmailAddressTokenKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNNMKEmailAddressTokenKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoMailKitServerLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!NanoMailKitServerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __NanoMailKitServerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2799347D8;
    v5 = 0;
    NanoMailKitServerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoMailKitServerLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!NanoMailKitServerLibraryCore_frameworkLibrary)
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

uint64_t __NanoMailKitServerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoMailKitServerLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getNanoMailCloudNotificationsEnabledKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoMailKitServerLibrary();
  result = dlsym(v2, "NanoMailCloudNotificationsEnabledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNanoMailCloudNotificationsEnabledKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBPSNanoBulletinSubsectionIdSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary_0();
  result = dlsym(v2, "BPSNanoBulletinSubsectionId");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSNanoBulletinSubsectionIdSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BridgePreferencesLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!BridgePreferencesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __BridgePreferencesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2799347F0;
    v5 = 0;
    BridgePreferencesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = BridgePreferencesLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!BridgePreferencesLibraryCore_frameworkLibrary_0)
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

uint64_t __BridgePreferencesLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  BridgePreferencesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getBPSNanoBulletinShowsAlertsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BridgePreferencesLibrary_0();
  result = dlsym(v2, "BPSNanoBulletinShowsAlerts");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBPSNanoBulletinShowsAlertsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNNMKPCCEmailAddressKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoMailKitServerLibrary();
  result = dlsym(v2, "NNMKPCCEmailAddressKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNNMKPCCEmailAddressKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSLGoogleAuthControllerClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  result = objc_getClass("SLGoogleAuthController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSLGoogleAuthControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSLGoogleAuthControllerClass_block_invoke_cold_1();
    return __getNNMKURLRequestClass_block_invoke(v3);
  }

  return result;
}

void __getNNMKURLRequestClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKURLRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKURLRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNNMKURLRequestClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void nnmk_setupLoggingSubsystems(uint64_t result, uint64_t a2)
{
  if (nnmk_setupLoggingSubsystems_onceToken != -1)
  {
    nnmk_setupLoggingSubsystems_cold_1();
  }
}

uint64_t __nnmk_setupLoggingSubsystems_block_invoke()
{
  v0 = os_log_create("com.apple.NanoMail", "General");
  v1 = __logCategories;
  __logCategories = v0;

  v2 = os_log_create("com.apple.NanoMail", "Notification");
  v3 = qword_27FA3F1D8;
  qword_27FA3F1D8 = v2;

  v4 = os_log_create("com.apple.NanoMail", "Sync");
  v5 = qword_27FA3F1D0;
  qword_27FA3F1D0 = v4;

  qword_27FA3F1E0 = os_log_create("com.apple.NanoMail", "Standalone");

  return MEMORY[0x2821F96F8]();
}

void sub_25B195DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMailAccountEmailAddressesSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MessageLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MessageLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279934828;
    v7 = 0;
    MessageLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MessageLibraryCore_frameworkLibrary;
    if (MessageLibraryCore_frameworkLibrary)
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

  v2 = MessageLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MailAccountEmailAddresses");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMailAccountEmailAddressesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MessageLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MessageLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getNNMKAccountClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!NanoMailKitServerLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NanoMailKitServerLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279934840;
    v6 = 0;
    NanoMailKitServerLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (NanoMailKitServerLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("NNMKAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNNMKAccountClass_block_invoke_cold_1();
  }

  getNNMKAccountClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoMailKitServerLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  NanoMailKitServerLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_25B196E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B1972E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B1982A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B198518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void soft_BPSCellHightlightColor_cold_1()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  __104__NMCUICloudNotificationAccountDataSource_handleAccountAuthenication_viewController_stateUpdateHandler___block_invoke_3_cold_1(v1);
}