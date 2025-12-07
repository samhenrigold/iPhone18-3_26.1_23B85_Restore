uint64_t sub_21CF23B58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CF23B98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE44AC8, &qword_21CF58D70);
  sub_21CF53294(&qword_27CE44AE0, &qword_27CE44AC8, &qword_21CF58D70, MEMORY[0x277D4D800]);
  return swift_getOpaqueTypeConformance2();
}

void sub_21CF287D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _shouldShowAccessoryInfo(void *a1)
{
  v1 = a1;
  if ([v1 shouldBeHiddenFromUI])
  {
    goto LABEL_9;
  }

  v2 = [v1 bonjourName];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 isAvailableOverBonjour];

    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v5 = [v1 bonjourName];
  if (!v5)
  {
    if ([v1 isConnected])
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_27;
  }

LABEL_7:
  v6 = [v1 manufacturer];
  if ([v6 length])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v1 serialNumber];
    if ([v8 length])
    {
      v7 = 1;
    }

    else
    {
      v9 = [v1 modelNumber];
      if ([v9 length])
      {
        v7 = 1;
      }

      else
      {
        v10 = [v1 firmwareRevision];
        if ([v10 length])
        {
          v7 = 1;
        }

        else
        {
          v11 = [v1 hardwareRevision];
          if ([v11 length])
          {
            v7 = 1;
          }

          else
          {
            v12 = [v1 bonjourName];
            if ([v12 length])
            {
              v7 = 1;
            }

            else
            {
              v7 = [v1 supportsPublicIap];
            }
          }
        }
      }
    }
  }

LABEL_27:
  return v7;
}

void sub_21CF2ED94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PSGIsDeviceNameSettable()
{
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    return 0;
  }

  v1 = [MEMORY[0x277D262A0] sharedConnection];
  v2 = [v1 isDeviceNameModificationAllowed];

  return v2;
}

void sub_21CF334E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21CF33AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21CF33C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFMDFMIPManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!FindMyDeviceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __FindMyDeviceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278325328;
    v6 = 0;
    FindMyDeviceLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (FindMyDeviceLibraryCore_frameworkLibrary)
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
  result = objc_getClass("FMDFMIPManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFMDFMIPManagerClass_block_invoke_cold_1();
  }

  getFMDFMIPManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FindMyDeviceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FindMyDeviceLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t SensorKitLibraryCore(uint64_t a1)
{
  if (!SensorKitLibraryCore_frameworkLibrary)
  {
    SensorKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SensorKitLibraryCore_frameworkLibrary;
}

uint64_t __SensorKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SensorKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSRResetAllAuthorizationsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRResetAllAuthorizations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRResetAllAuthorizationsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SensorKitLibrary()
{
  v3 = 0;
  v0 = SensorKitLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

Class __getSRAuthorizationClientClass_block_invoke(uint64_t a1)
{
  SensorKitLibrary();
  result = objc_getClass("SRAuthorizationClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSRAuthorizationClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSRAuthorizationClientClass_block_invoke_cold_1();
    return __getCHResetInventorySymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getCHResetInventorySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreHandwritingLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreHandwritingLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278325378;
    v7 = 0;
    CoreHandwritingLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = CoreHandwritingLibraryCore_frameworkLibrary;
    if (CoreHandwritingLibraryCore_frameworkLibrary)
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

  v2 = CoreHandwritingLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "CHResetInventory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHResetInventorySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreHandwritingLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreHandwritingLibraryCore_frameworkLibrary = result;
  return result;
}

void __getDDRResetOptionsClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DDRResetOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDRResetOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getDDRResetOptionsClass_block_invoke_cold_1();
    EmbeddedDataResetLibrary();
  }
}

void EmbeddedDataResetLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!EmbeddedDataResetLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __EmbeddedDataResetLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278325390;
    v3 = 0;
    EmbeddedDataResetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!EmbeddedDataResetLibraryCore_frameworkLibrary)
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

uint64_t __EmbeddedDataResetLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  EmbeddedDataResetLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMBManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MobileBackupLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MobileBackupLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2783253A8;
    v6 = 0;
    MobileBackupLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MobileBackupLibraryCore_frameworkLibrary)
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
  result = objc_getClass("MBManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMBManagerClass_block_invoke_cold_1();
  }

  getMBManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileBackupLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileBackupLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getDDRResetRequestClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  result = objc_getClass("DDRResetRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDRResetRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getDDRResetRequestClass_block_invoke_cold_1();
    return __getDDRResetServiceClass_block_invoke(v3);
  }

  return result;
}

void __getDDRResetServiceClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DDRResetService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDRResetServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getDDRResetServiceClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_0();
  }
}

void sub_21CF37AD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_21CF39554(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a10)
  {
    (*(a10 + 16))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a11)
  {
    (*(a11 + 16))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_21CF4208C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21CF4251C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21CF43178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21CF43690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBFFStyleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBFFStyleClass_softClass;
  v7 = getBFFStyleClass_softClass;
  if (!getBFFStyleClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBFFStyleClass_block_invoke;
    v3[3] = &unk_278325308;
    v3[4] = &v4;
    __getBFFStyleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21CF43770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBFFStyleClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BFFStyle");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBFFStyleClass_block_invoke_cold_1();
    SetupAssistantUILibrary();
  }
}

void SetupAssistantUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SetupAssistantUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278325680;
    v3 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
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

uint64_t __SetupAssistantUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBFFPaneHeaderViewClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary();
  result = objc_getClass("BFFPaneHeaderView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFPaneHeaderViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBFFPaneHeaderViewClass_block_invoke_cold_1();
    return +[(PSGMousePointerController *)v3];
  }

  return result;
}

id PSG_LocalizedString(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:0];

  return v3;
}

id PSG_BundleForGeneralSettingsUIFramework(uint64_t a1)
{
  if (PSG_BundleForGeneralSettingsUIFramework_onceToken != -1)
  {
    PSG_BundleForGeneralSettingsUIFramework_cold_1();
  }

  v2 = PSG_BundleForGeneralSettingsUIFramework__generalSettingsUIFrameworkBundle;

  return v2;
}

id PSG_LocalizedStringForAbout(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"About"];

  return v3;
}

id PSG_LocalizedStringForBackupAlert(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"BackupAlert"];

  return v3;
}

id PSG_LocalizedStringForBackupInfo(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"BackupInfo"];

  return v3;
}

id PSG_LocalizedStringForContinuity(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Continuity"];

  return v3;
}

id PSG_LocalizedStringForGeneral(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"General"];

  return v3;
}

id PSG_LocalizedStringForHomeButton(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"HomeButton-sshb"];

  return v3;
}

id PSG_LocalizedStringForModelNames(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ModelNames"];

  return v3;
}

id PSG_LocalizedStringForNFC(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Nfc"];

  return v3;
}

id PSG_LocalizedStringForPointers(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Pointers"];

  return v3;
}

id PSG_LocalizedStringForPointersHiding(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Pointers-R418-R428"];

  return v3;
}

id PSG_LocalizedStringForReset(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Reset"];

  return v3;
}

id PSG_LocalizedStringForMatter(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Matter"];

  return v3;
}

id PSG_LocalizedStringForWombat(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Wombat"];

  return v3;
}

id PSG_LocalizedStringForLOTX(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"LOTX"];

  return v3;
}

id _PSGLoggingFacility(uint64_t a1)
{
  if (_PSGLoggingFacility_onceToken != -1)
  {
    _PSGLoggingFacility_cold_1();
  }

  v2 = _PSGLoggingFacility_oslog;

  return v2;
}

id _PSGSignpostLoggingFacility(uint64_t a1)
{
  if (_PSGSignpostLoggingFacility_onceToken != -1)
  {
    _PSGSignpostLoggingFacility_cold_1();
  }

  v2 = _PSGSignpostLoggingFacility_oslog;

  return v2;
}

uint64_t __PSGGreenTeaLoggerForAppListing_block_invoke()
{
  result = ct_green_tea_logger_create();
  PSGGreenTeaLoggerForAppListing_appListLogger = result;
  return result;
}

uint64_t __PSGGreenTeaLoggerForIMEI_block_invoke()
{
  result = ct_green_tea_logger_create();
  PSGGreenTeaLoggerForIMEI_psgIMEILogger = result;
  return result;
}

uint64_t __PSGGreenTeaLoggerForWLANHardwareAddress_block_invoke()
{
  result = ct_green_tea_logger_create();
  PSGGreenTeaLoggerForWLANHardwareAddress_psgWLANLogger = result;
  return result;
}

uint64_t __PSGGreenTeaLoggerForBluetoothHardwareAddress_block_invoke()
{
  result = ct_green_tea_logger_create();
  PSGGreenTeaLoggerForBluetoothHardwareAddress_psgBluetoothLogger = result;
  return result;
}

void PSGGreenTeaAppListLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (PSGGreenTeaLoggerForAppListing_onceToken != -1)
  {
    PSGGreenTeaAppListLog_cold_1();
  }

  if (PSGGreenTeaLoggerForAppListing_appListLogger)
  {
    v10 = getCTGreenTeaOsLogHandle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:&a9];
      *buf = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", buf, 0x16u);
    }
  }
}

void PSGGreenTeaIMEILog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (PSGGreenTeaLoggerForIMEI_onceToken != -1)
  {
    PSGGreenTeaIMEILog_cold_1();
  }

  if (PSGGreenTeaLoggerForIMEI_psgIMEILogger)
  {
    v10 = getCTGreenTeaOsLogHandle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:&a9];
      *buf = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", buf, 0x16u);
    }
  }
}

void PSGGreenTeaWLANHardwareAddressLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (PSGGreenTeaLoggerForWLANHardwareAddress_onceToken != -1)
  {
    PSGGreenTeaWLANHardwareAddressLog_cold_1();
  }

  if (PSGGreenTeaLoggerForWLANHardwareAddress_psgWLANLogger)
  {
    v10 = getCTGreenTeaOsLogHandle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:&a9];
      *buf = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", buf, 0x16u);
    }
  }
}

void PSGGreenTeaBluetoothHardwareAddressLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (PSGGreenTeaLoggerForBluetoothHardwareAddress_onceToken != -1)
  {
    PSGGreenTeaBluetoothHardwareAddressLog_cold_1();
  }

  if (PSGGreenTeaLoggerForBluetoothHardwareAddress_psgBluetoothLogger)
  {
    v10 = getCTGreenTeaOsLogHandle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:&a9];
      *buf = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", buf, 0x16u);
    }
  }
}

void sub_21CF49B10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21CF4CCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21CF4D600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21CF4D874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21CF4DEB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

Class __getCRCarPlayPreferencesClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  result = objc_getClass("CRCarPlayPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRCarPlayPreferencesClass_block_invoke_cold_1();
  }

  getCRCarPlayPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CarKitLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __CarKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278325A00;
    v3 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!CarKitLibraryCore_frameworkLibrary)
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

uint64_t __CarKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBFFStyleClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278325A18;
    v6 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary_0)
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

  getBFFStyleClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getCRPairedVehicleManagerClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  result = objc_getClass("CRPairedVehicleManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRPairedVehicleManagerClass_block_invoke_cold_1();
  }

  getCRPairedVehicleManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t getEnumTagSinglePayload for SoftwareUpdateFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SoftwareUpdateFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21CF4F900()
{
  result = qword_27CE44AB8;
  if (!qword_27CE44AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE44AB8);
  }

  return result;
}

uint64_t sub_21CF4F95C()
{
  sub_21CF557C4();
  MEMORY[0x223D384A0](0);
  return sub_21CF557E4();
}

uint64_t sub_21CF4F9C8(uint64_t a1)
{
  sub_21CF557C4();
  MEMORY[0x223D384A0](0);
  return sub_21CF557E4();
}

Swift::Void __swiftcall UIViewController.psg_popViewController(animated:)(Swift::Bool animated)
{
  v2 = v1;
  v4 = sub_21CF555A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 traitCollection];
  sub_21CF556B4();

  LOBYTE(v8) = sub_21CF55574();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    v10 = [v2 traitCollection];
    sub_21CF556B4();

    LOBYTE(v10) = sub_21CF55594();
    v9(v7, v4);
    if ((v10 & 1) == 0)
    {
      v11 = [v2 traitCollection];
      sub_21CF556B4();

      sub_21CF55584();
      v9(v7, v4);
    }
  }

  else
  {
    v12 = [v2 navigationController];
  }
}

void sub_21CF4FC04(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UIViewController.psg_popViewController(animated:)(a3);
}

id EmitNavigationEventWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmitNavigationEventWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmitNavigationEventWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EmitNavigationEventWrapper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EmitNavigationEventWrapper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_21CF4FE78(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v39 = a5;
  v41 = a4;
  v43 = sub_21CF553C4();
  v8 = *(v43 - 8);
  v9 = MEMORY[0x28223BE20](v43);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = sub_21CF55524();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CF55564();
  v36 = sub_21CF55554();
  *v17 = a1;
  v17[1] = a2;
  v18 = *MEMORY[0x277D4D788];
  v37 = v17;
  v38 = v15;
  (*(v15 + 104))(v17, v18, v14);
  v42 = sub_21CF5027C();
  v47 = v42;
  v46[0] = a3;

  v19 = a3;
  sub_21CF553B4();
  v20 = v41;
  if (v41 >> 62)
  {
    goto LABEL_19;
  }

  v21 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v21)
  {
    v45 = MEMORY[0x277D84F90];
    result = sub_21CF523C8(0, v21 & ~(v21 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v41 = v21;
      v34 = v13;
      v35 = v14;
      v23 = 0;
      v24 = v45;
      v25 = v20;
      v26 = v20 & 0xC000000000000001;
      v40 = v20 & 0xFFFFFFFFFFFFFF8;
      v13 = (v8 + 32);
      v27 = v20;
      while (1)
      {
        if (v26)
        {
          v28 = MEMORY[0x223D38410](v23, v25);
        }

        else
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v21 = sub_21CF55754();
            goto LABEL_3;
          }

          if (v23 >= *(v40 + 16))
          {
            goto LABEL_18;
          }

          v28 = *(v25 + 8 * v23 + 32);
        }

        v29 = v28;
        v47 = v42;
        v46[0] = v28;
        sub_21CF502C8(v46, v44);
        v30 = v29;
        sub_21CF553B4();
        __swift_destroy_boxed_opaque_existential_0(v46);

        v45 = v24;
        v20 = *(v24 + 16);
        v31 = *(v24 + 24);
        v14 = v20 + 1;
        if (v20 >= v31 >> 1)
        {
          sub_21CF523C8((v31 > 1), v20 + 1, 1);
          v24 = v45;
        }

        ++v23;
        *(v24 + 16) = v14;
        (*(v8 + 32))(v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v11, v43);
        v25 = v27;
        if (v41 == v23)
        {
          v32 = v38;
          v13 = v34;
          v14 = v35;
          v33 = v37;
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v33 = v37;
    v32 = v38;
LABEL_16:
    sub_21CF55544();

    (*(v8 + 8))(v13, v43);
    return (*(v32 + 8))(v33, v14);
  }

  return result;
}

unint64_t sub_21CF5027C()
{
  result = qword_27CE44AC0;
  if (!qword_27CE44AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE44AC0);
  }

  return result;
}

uint64_t sub_21CF502C8(uint64_t a1, uint64_t a2)
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

unint64_t sub_21CF503A8()
{
  result = qword_280B1A1B8;
  if (!qword_280B1A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1A1B8);
  }

  return result;
}

uint64_t sub_21CF50418@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = sub_21CF55494();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21CF55424();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AD8, &qword_21CF58D80);
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  sub_21CF53450(0, &qword_280B1A108, off_278324360);
  v13 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) init];
  v14 = *MEMORY[0x277D40038];
  v32 = a1;
  [v13 setProperty:a1 forKey:v14];
  v33 = a2;
  [v13 setProperty:a2 forKey:@"PSGPPTRelayKey"];
  sub_21CF55454();
  sub_21CF55414();
  sub_21CF554E4();
  sub_21CF53450(0, &qword_280B1A100, 0x277CCA8D8);
  if (!sub_21CF556C4())
  {
    v15 = [objc_opt_self() mainBundle];
  }

  v16 = sub_21CF554F4();
  v18 = v17;
  v20 = v19;
  v21 = sub_21CF5333C(qword_280B1A118, MEMORY[0x277D40248], MEMORY[0x277D40240]);
  sub_21CF55504();
  sub_21CF53498(v16, v18, v20 & 1);

  (*(v7 + 8))(v9, v6);
  if (qword_280B1A110 != -1)
  {
    swift_once();
  }

  v22 = sub_21CF554A4();
  __swift_project_value_buffer(v22, qword_280B1A328);
  v23 = swift_allocObject();
  v24 = v32;
  v25 = v33;
  *(v23 + 16) = v32;
  *(v23 + 24) = v25;
  v26 = v24;
  v27 = v25;
  v35 = v6;
  v36 = v21;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  sub_21CF55514();

  return (*(v30 + 8))(v12, v28);
}

uint64_t sub_21CF5086C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AE8, &qword_21CF58D98);
  v3[26] = swift_task_alloc();
  v4 = sub_21CF55354();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AF0, &qword_21CF58DA0);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v5 = sub_21CF55494();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v6 = sub_21CF55534();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v7 = sub_21CF554D4();
  v3[42] = v7;
  v3[43] = *(v7 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v8 = sub_21CF553F4();
  v3[46] = v8;
  v3[47] = *(v8 - 8);
  v3[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AF8, &qword_21CF58DA8);
  v3[49] = swift_task_alloc();
  v9 = sub_21CF553A4();
  v3[50] = v9;
  v3[51] = *(v9 - 8);
  v3[52] = swift_task_alloc();
  sub_21CF556A4();
  v3[53] = sub_21CF55694();
  v11 = sub_21CF55684();

  return MEMORY[0x2822009F8](sub_21CF50C20, v11, v10);
}

uint64_t sub_21CF50C20()
{
  v149 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v5 = *(v0 + 368);
  v6 = *(v0 + 376);

  sub_21CF555D4();
  sub_21CF55374();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = *(v0 + 360);
    v8 = *(v0 + 336);
    v9 = *(v0 + 344);
    sub_21CF532DC(*(v0 + 392), &qword_27CE44AF8, &qword_21CF58DA8);
    sub_21CF555C4();
    sub_21CF555F4();
    (*(v9 + 8))(v7, v8);
    goto LABEL_81;
  }

  (*(*(v0 + 408) + 32))(*(v0 + 416), *(v0 + 392), *(v0 + 400));
  sub_21CF555C4();
  *(v0 + 96) = sub_21CF55384();
  *(v0 + 104) = v10;
  *(v0 + 112) = 47;
  *(v0 + 120) = 0xE100000000000000;
  sub_21CF53038();
  v11 = sub_21CF556F4();

  v13 = 0;
  v14 = *(v11 + 16);
  v15 = MEMORY[0x277D84F90];
LABEL_4:
  v16 = (v11 + 40 + 16 * v13);
  while (v14 != v13)
  {
    if (v13 >= *(v11 + 16))
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      return result;
    }

    v18 = *(v16 - 1);
    v17 = *v16;
    v16 += 2;
    ++v13;
    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      *&v146[0] = v15;
      if ((result & 1) == 0)
      {
        result = sub_21CF523E8(0, *(v15 + 2) + 1, 1);
        v15 = *&v146[0];
      }

      v20 = v15;
      v21 = *(v15 + 2);
      v22 = *(v20 + 3);
      if (v21 >= v22 >> 1)
      {
        result = sub_21CF523E8((v22 > 1), v21 + 1, 1);
        v20 = *&v146[0];
      }

      *(v20 + 2) = v21 + 1;
      v23 = &v20[16 * v21];
      *(v23 + 4) = v18;
      *(v23 + 5) = v17;
      v15 = v20;
      goto LABEL_4;
    }
  }

  v24 = *(v15 + 2);
  if (!v24)
  {
    sub_21CF55394();
    if (v93)
    {
      v94 = *(v0 + 200);

      v95 = sub_21CF55624();

      [v94 setSpecifierIdentifierToScrollAndHighlight_];

      goto LABEL_80;
    }

    v24 = *(v15 + 2);
    if (!v24)
    {

      goto LABEL_80;
    }
  }

  v25 = (*(v0 + 264) + 8);
  v134 = (*(v0 + 312) + 48);
  v26 = *(v0 + 224);
  v140 = (v26 + 8);
  v27 = 37;
  v139 = v26;
  v133 = v25;
  while (1)
  {
    v138 = v27;
    v29 = *(v15 + 4);
    v28 = *(v15 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v24 - 1) > *(v15 + 3) >> 1)
    {
      v15 = sub_21CF52910(isUniquelyReferenced_nonNull_native, v24, 1, v15);
    }

    sub_21CF53240((v15 + 32));
    v31 = *(v15 + 2);
    memmove(v15 + 32, v15 + 48, 16 * v31 - 16);
    *(v15 + 2) = v31 - 1;

    v32 = sub_21CF5417C(v29, v28);
    v33 = v32;
    if (v32 == 37)
    {
      break;
    }

    v72 = v32;

    if (v33 == 30)
    {
      if ([objc_opt_self() isRunningInStoreDemoMode])
      {
        goto LABEL_76;
      }
    }

    else if (v33 == 1)
    {
      result = [objc_opt_self() sharedManager];
      if (!result)
      {
        goto LABEL_89;
      }

      v73 = result;
      v74 = [result isMultiUser];

      if (v74)
      {
LABEL_76:
        v72 = v138;
LABEL_77:

        if (v72 == 37)
        {
LABEL_80:
          v119 = *(v0 + 408);
          v118 = *(v0 + 416);
          v120 = *(v0 + 400);
          v122 = *(v0 + 344);
          v121 = *(v0 + 352);
          v123 = *(v0 + 336);
          sub_21CF555F4();
          (*(v122 + 8))(v121, v123);
          (*(v119 + 8))(v118, v120);
        }

        else
        {
          v108 = *(v0 + 304);
          v109 = *(v0 + 272);
          v110 = *(v0 + 256);
          v111 = *(v0 + 240);
          sub_21CF535F8(v72, v109);
          sub_21CF55444();
          v112 = *v25;
          (*v25)(v109, v110);
          if ((*v134)(v111, 1, v108) == 1)
          {
            v113 = *(v0 + 368);
            v114 = *(v0 + 376);
            v115 = *(v0 + 288);
            v116 = *(v0 + 256);
            v117 = *(v0 + 208);
            sub_21CF532DC(*(v0 + 240), &qword_27CE44AF0, &qword_21CF58DA0);
            sub_21CF555D4();
            (*(v114 + 56))(v117, 0, 1, v113);
            sub_21CF53D78(v117, v72, v115);
            sub_21CF532DC(v117, &qword_27CE44AE8, &qword_21CF58D98);
            sub_21CF5333C(&qword_27CE44B28, MEMORY[0x277D40250], MEMORY[0x277D40258]);
            sub_21CF554C4();
            v112(v115, v116);
            goto LABEL_80;
          }

          v125 = *(v0 + 408);
          v145 = *(v0 + 416);
          v126 = *(v0 + 400);
          v128 = *(v0 + 344);
          v127 = *(v0 + 352);
          v129 = *(v0 + 336);
          v130 = *(v0 + 312);
          v131 = *(v0 + 320);
          v132 = *(v0 + 304);
          (*(v130 + 32))(v131, *(v0 + 240), v132);
          sub_21CF555E4();
          (*(v130 + 8))(v131, v132);
          (*(v128 + 8))(v127, v129);
          (*(v125 + 8))(v145, v126);
        }

LABEL_81:

        v124 = *(v0 + 8);

        return v124();
      }
    }

    v87 = *(v0 + 296);
    v86 = *(v0 + 304);
    v89 = *(v0 + 248);
    v88 = *(v0 + 256);
    sub_21CF535F8(v72, v87);
    sub_21CF55444();
    v90 = *v25;
    (*v25)(v87, v88);
    if ((*v134)(v89, 1, v86) != 1)
    {
      v96 = *(v0 + 408);
      v142 = *(v0 + 400);
      v144 = *(v0 + 416);
      v97 = *(v0 + 344);
      v98 = *(v0 + 352);
      v100 = *(v0 + 328);
      v99 = *(v0 + 336);
      v102 = *(v0 + 304);
      v101 = *(v0 + 312);
      v103 = *(v0 + 248);

      (*(v101 + 32))(v100, v103, v102);
      sub_21CF555E4();
      (*(v101 + 8))(v100, v102);
      (*(v97 + 8))(v98, v99);
      (*(v96 + 8))(v144, v142);
      goto LABEL_81;
    }

    sub_21CF532DC(*(v0 + 248), &qword_27CE44AF0, &qword_21CF58DA0);
    if (v138 != 37)
    {
      v91 = *(v0 + 288);
      v92 = *(v0 + 256);
      sub_21CF535F8(v138, v91);
      sub_21CF5333C(&qword_27CE44B28, MEMORY[0x277D40250], MEMORY[0x277D40258]);
      sub_21CF554C4();
      v90(v91, v92);
    }

    v26 = v139;
LABEL_18:
    v24 = *(v15 + 2);
    v27 = v72;
    if (!v24)
    {
      goto LABEL_77;
    }
  }

  v135 = v29;
  v136 = v28;
  v137 = v15;
  result = sub_21CF55364();
  if (result)
  {
    v34 = result;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v143 = *(v34 + 16);
  if (!v143)
  {
    v36 = MEMORY[0x277D84F98];
LABEL_54:

    *(v0 + 432) = 1;
    sub_21CF55734();
    v75 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CF52EA8(v146, 0x6574616D696E61, 0xE700000000000000, v75);
    v76 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B10, &qword_21CF58DB8);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_21CF58B40;
    *(v77 + 32) = v135;
    *(v77 + 40) = v136;
    *&v146[0] = v77;
    v15 = v137;

    sub_21CF526EC(v78);
    *(v0 + 176) = *&v146[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B18, &qword_21CF58DC0);
    sub_21CF53294(&qword_27CE44B20, &qword_27CE44B18, &qword_21CF58DC0, MEMORY[0x277D83958]);
    v79 = sub_21CF55614();
    v81 = v80;

    v82 = sub_21CF55394();
    if (v83)
    {
      *&v146[0] = 35;
      *(&v146[0] + 1) = 0xE100000000000000;
      MEMORY[0x223D38320](v82);

      MEMORY[0x223D38320](*&v146[0], *(&v146[0] + 1));
    }

    v25 = v133;
    v84 = HIBYTE(v81) & 0xF;
    if ((v81 & 0x2000000000000000) == 0)
    {
      v84 = v79 & 0xFFFFFFFFFFFFLL;
    }

    v26 = v139;
    if (v84)
    {
      *(v0 + 128) = v79;
      *(v0 + 136) = v81;
      sub_21CF55734();
      v85 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v76;
      sub_21CF52EA8(v146, 1752457584, 0xE400000000000000, v85);
      v76 = v148;
    }

    else
    {
    }

    if (v138 != 37)
    {
      v105 = *(v0 + 280);
      v104 = *(v0 + 288);
      v106 = *(v0 + 256);

      sub_21CF535F8(v138, v105);
      sub_21CF51B68(v76);

      sub_21CF55434();

      v107 = *v133;
      (*v133)(v105, v106);
      sub_21CF5333C(&qword_27CE44B28, MEMORY[0x277D40250], MEMORY[0x277D40258]);
      sub_21CF554C4();
      v107(v104, v106);
      goto LABEL_80;
    }

    v72 = 37;
    goto LABEL_18;
  }

  v35 = 0;
  v141 = v34 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v36 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v35 >= *(v34 + 16))
    {
      __break(1u);
      goto LABEL_86;
    }

    (*(v26 + 16))(*(v0 + 232), v141 + *(v26 + 72) * v35, *(v0 + 216));
    v37 = sub_21CF55334();
    v39 = v38;
    v40 = sub_21CF55344();
    if (!v41 || (*(v0 + 144) = v40, *(v0 + 152) = v41, v42 = sub_21CF55704(), v44 = v43, , !v44))
    {
      v54 = sub_21CF527E0(v37, v39);
      v56 = v55;

      if (v56)
      {
        v57 = swift_isUniquelyReferenced_nonNull_native();
        *&v146[0] = v36;
        if (!v57)
        {
          sub_21CF5308C();
          v36 = *&v146[0];
        }

        v58 = *(v0 + 232);
        v59 = *(v0 + 216);

        v60 = v36[7] + 40 * v54;
        v61 = *v60;
        v62 = *(v60 + 16);
        *(v0 + 48) = *(v60 + 32);
        *(v0 + 16) = v61;
        *(v0 + 32) = v62;
        sub_21CF52CEC(v54, v36);
        (*v140)(v58, v59);
      }

      else
      {
        (*v140)(*(v0 + 232), *(v0 + 216));
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      result = sub_21CF532DC(v0 + 16, &qword_27CE44B08, &qword_21CF58DB0);
      goto LABEL_30;
    }

    *(v0 + 160) = v42;
    *(v0 + 168) = v44;
    sub_21CF55734();
    v45 = v146[1];
    *(v0 + 56) = v146[0];
    *(v0 + 72) = v45;
    *(v0 + 88) = v147;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v48 = sub_21CF527E0(v37, v39);
    v49 = v36[2];
    v50 = (v47 & 1) == 0;
    result = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_87;
    }

    v51 = v47;
    if (v36[3] < result)
    {
      break;
    }

    if ((v46 & 1) == 0)
    {
      sub_21CF5308C();
    }

LABEL_44:
    v63 = *(v0 + 232);
    v64 = *(v0 + 216);
    if (v51)
    {

      sub_21CF53384(v0 + 56, v36[7] + 40 * v48);
      result = (*v140)(v63, v64);
      v26 = v139;
    }

    else
    {
      v36[(v48 >> 6) + 8] |= 1 << v48;
      v65 = (v36[6] + 16 * v48);
      *v65 = v37;
      v65[1] = v39;
      v66 = v36[7] + 40 * v48;
      v67 = *(v0 + 88);
      v68 = *(v0 + 72);
      *v66 = *(v0 + 56);
      *(v66 + 16) = v68;
      *(v66 + 32) = v67;
      result = (*v140)(v63, v64);
      v69 = v36[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_88;
      }

      v36[2] = v71;
      v26 = v139;
    }

LABEL_30:
    if (v143 == ++v35)
    {
      goto LABEL_54;
    }
  }

  sub_21CF52A1C(result, v46);
  v52 = sub_21CF527E0(v37, v39);
  if ((v51 & 1) == (v53 & 1))
  {
    v48 = v52;
    goto LABEL_44;
  }

  return sub_21CF557B4();
}

uint64_t sub_21CF51B68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B38, &qword_21CF58DD0);
    v2 = sub_21CF55784();
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
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21CF533E0(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_21CF5343C(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_21CF5343C(v35, v24);
    result = sub_21CF55724();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_21CF5343C(v24, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_21CF51E54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AC8, &qword_21CF58D70);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - v3;
  v6 = *v0;
  v5 = *(v0 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = v6;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AD0, &qword_21CF58D78);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE44AD8, &qword_21CF58D80);
  v11 = sub_21CF55424();
  v12 = sub_21CF5333C(qword_280B1A118, MEMORY[0x277D40248], MEMORY[0x277D40240]);
  v18 = v11;
  v19 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v10;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21CF55604();
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  sub_21CF53294(&qword_27CE44AE0, &qword_27CE44AC8, &qword_21CF58D70, MEMORY[0x277D4D800]);
  v15 = v8;
  v16 = v9;
  sub_21CF555B4();
  return (*(v2 + 8))(v4, v1);
}

id sub_21CF520C8@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D3FA50]) init];
  result = [objc_allocWithZone(PSGPPTRelay) init];
  *a1 = v2;
  a1[1] = result;
  return result;
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

uint64_t sub_21CF521BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CF52270;

  return sub_21CF5086C(a1, a2, v6);
}

uint64_t sub_21CF52270()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21CF52364()
{
  v0 = sub_21CF554A4();
  __swift_allocate_value_buffer(v0, qword_280B1A328);
  __swift_project_value_buffer(v0, qword_280B1A328);
  return sub_21CF554B4();
}

void *sub_21CF523C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CF52408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21CF523E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CF525E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21CF52408(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B40, &qword_21CF58DD8);
  v10 = *(sub_21CF553C4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21CF553C4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21CF525E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B10, &qword_21CF58DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21CF526EC(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_21CF52910(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_21CF527E0(uint64_t a1, uint64_t a2)
{
  sub_21CF557C4();
  sub_21CF55644();
  v4 = sub_21CF557E4();

  return sub_21CF52858(a1, a2, v4);
}

unint64_t sub_21CF52858(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21CF55794())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_21CF52910(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B10, &qword_21CF58DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21CF52A1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B30, &qword_21CF58DC8);
  v38 = v4;
  result = sub_21CF55774();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_21CF533E0(v27, &v39);
      }

      sub_21CF557C4();
      sub_21CF55644();
      result = sub_21CF557E4();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21CF52CEC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CF55714() + 1) & ~v5;
    do
    {
      sub_21CF557C4();

      sub_21CF55644();
      v11 = sub_21CF557E4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21CF52EA8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CF527E0(a2, a3);
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
      sub_21CF52A1C(v16, a4 & 1);
      v11 = sub_21CF527E0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_21CF557B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21CF5308C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_21CF53384(a1, v22);
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

unint64_t sub_21CF53038()
{
  result = qword_27CE44B00;
  if (!qword_27CE44B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE44B00);
  }

  return result;
}

void *sub_21CF5308C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B30, &qword_21CF58DC8);
  v2 = *v0;
  v3 = sub_21CF55764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_21CF533E0(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21CF53294(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_21CF532DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21CF5333C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_21CF5343C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21CF53450(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_21CF53498(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21CF53564(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CF535AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CF535F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_21CF55494();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CF556E4();
  MEMORY[0x28223BE20](v8 - 8);
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 25:
    case 26:
    case 28:
    case 29:
      sub_21CF556D4();
      return sub_21CF55474();
    case 5:
      sub_21CF53FF4(5);
      sub_21CF556D4();
      return sub_21CF55484();
    case 14:
      v10 = &unk_27CE44B98;
      v11 = off_278324370;
      goto LABEL_20;
    case 15:
      v10 = &unk_27CE44B90;
      v11 = off_278324380;
      goto LABEL_20;
    case 16:
      sub_21CF53FF4(16);
      sub_21CF556D4();
      return sub_21CF55484();
    case 24:
      v10 = &unk_27CE44B88;
      v11 = off_278324378;
      goto LABEL_20;
    case 27:
      v12 = [objc_opt_self() getExtendedResearchSettingsBundleName];
      v13 = sub_21CF55634();
      v15 = v14;

      v18[0] = v13;
      v18[1] = v15;
      sub_21CF55664();
      sub_21CF556D4();
      return sub_21CF55474();
    case 30:
      v10 = &unk_27CE44B80;
      v11 = off_2783243A0;
      goto LABEL_20;
    case 31:
      v10 = &qword_27CE44B48;
      v11 = off_278324388;
      goto LABEL_20;
    case 32:
      v10 = &unk_27CE44B78;
      v11 = off_278324350;
      goto LABEL_20;
    case 33:
      v18[3] = &type metadata for SoftwareUpdateFeatureFlags;
      v18[4] = sub_21CF53FA0();
      v16 = sub_21CF55404();
      __swift_destroy_boxed_opaque_existential_0(v18);
      if (v16)
      {
        sub_21CF556D4();
        sub_21CF55474();
      }

      else
      {
        sub_21CF53450(0, &qword_27CE44B70, off_278324398);
        sub_21CF55464();
      }

      return (*(v5 + 32))(a2, v7, v4);
    case 34:
      v10 = &unk_27CE44B60;
      v11 = off_278324390;
      goto LABEL_20;
    case 35:
      v10 = &unk_27CE44B58;
      v11 = off_278324340;
      goto LABEL_20;
    case 36:
      v10 = &unk_27CE44B50;
      v11 = off_278324348;
LABEL_20:
      sub_21CF53450(0, v10, v11);

      result = sub_21CF55464();
      break;
    default:
      sub_21CF53450(0, &unk_27CE44BA0, off_278324330);
      sub_21CF53FF4(0);

      result = sub_21CF55454();
      break;
  }

  return result;
}

uint64_t sub_21CF53D78@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AE8, &qword_21CF58D98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (v6 == 31)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) init];
    sub_21CF53F30(a1, v9);
    v11 = sub_21CF553F4();
    v12 = *(v11 - 8);
    v13 = 0;
    if ((*(v12 + 48))(v9, 1, v11) != 1)
    {
      v13 = sub_21CF553D4();
      (*(v12 + 8))(v9, v11);
    }

    [v10 setProperty:v13 forKey:@"deepLinkURL"];
    swift_unknownObjectRelease();
    sub_21CF53450(0, &qword_27CE44B48, off_278324388);
    return sub_21CF55454();
  }

  else
  {

    return sub_21CF535F8(a2, a3);
  }
}

uint64_t sub_21CF53F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AE8, &qword_21CF58D98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CF53FA0()
{
  result = qword_27CE44B68;
  if (!qword_27CE44B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE44B68);
  }

  return result;
}

id sub_21CF53FF4(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) init];
  if (a1 == 16 || a1 == 5)
  {
    v6 = sub_21CF55624();
    v5 = sub_21CF55624();
    [v2 setProperty:v6 forKey:v5];

LABEL_8:
    return v2;
  }

  if (!a1)
  {
    v3 = sub_21CF55624();
    [v2 setProperty:v3 forKey:*MEMORY[0x277D3FEE0]];

    v4 = sub_21CF55624();
    v5 = PSG_LocalizedStringForGeneral(v4);

    if (!v5)
    {
      sub_21CF55634();
      v5 = sub_21CF55624();
    }

    [v2 setName_];
    goto LABEL_8;
  }

  return v2;
}

unint64_t sub_21CF5417C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21CF557A4();

  if (v2 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v2;
  }
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}