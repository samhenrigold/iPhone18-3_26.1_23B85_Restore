uint64_t sub_2413BC170(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24140E9CC();

    return sub_24140E91C();
  }

  else
  {
    sub_24140E92C();
    swift_getWitnessTable();
    sub_24140E99C();
    sub_24140E91C();
    sub_24140EDEC();
    swift_getWitnessTable();
    sub_24140E92C();
    swift_getWitnessTable();
    sub_24140E99C();
    return sub_24140E91C();
  }
}

uint64_t sub_2413BC2D4(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24140E9CC();
    sub_24140E91C();
  }

  else
  {
    sub_24140E92C();
    swift_getWitnessTable();
    sub_24140E99C();
    sub_24140E91C();
    sub_24140EDEC();
    swift_getWitnessTable();
    sub_24140E92C();
    swift_getWitnessTable();
    sub_24140E99C();
    sub_24140E91C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2413BC4E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2413BC520()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2413BC570@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2413BC5C8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2413BC638()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2413BC674()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2413BC6BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2413BC898@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_2413BC958()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2413BC990()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_2413BCA34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_2413BD884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413BDD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413BDE50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2413BFFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CD1678;
    v6 = 0;
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    __getAnalyticsSendEventLazySymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

id getPETEventPropertyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPETEventPropertyClass_softClass;
  v7 = getPETEventPropertyClass_softClass;
  if (!getPETEventPropertyClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPETEventPropertyClass_block_invoke;
    v3[3] = &unk_278CD1658;
    v3[4] = &v4;
    __getPETEventPropertyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2413C2720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPETScalarEventTrackerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPETScalarEventTrackerClass_softClass;
  v7 = getPETScalarEventTrackerClass_softClass;
  if (!getPETScalarEventTrackerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPETScalarEventTrackerClass_block_invoke;
    v3[3] = &unk_278CD1658;
    v3[4] = &v4;
    __getPETScalarEventTrackerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2413C2D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void doAsync(void *a1)
{
  if (a1)
  {
    v2 = dispatch_get_global_queue(-32768, 0);
    dispatch_async(v2, a1);
  }
}

Class __getPETEventPropertyClass_block_invoke(uint64_t a1)
{
  ProactiveEventTrackerLibrary();
  result = objc_getClass("PETEventProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPETEventPropertyClass_block_invoke_cold_1();
  }

  getPETEventPropertyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ProactiveEventTrackerLibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!ProactiveEventTrackerLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __ProactiveEventTrackerLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_278CD1750;
    v2 = 0;
    ProactiveEventTrackerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ProactiveEventTrackerLibraryCore_frameworkLibrary)
  {
    ProactiveEventTrackerLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ProactiveEventTrackerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ProactiveEventTrackerLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPETScalarEventTrackerClass_block_invoke(uint64_t a1)
{
  ProactiveEventTrackerLibrary();
  result = objc_getClass("PETScalarEventTracker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPETScalarEventTrackerClass_block_invoke_cold_1();
  }

  getPETScalarEventTrackerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2413C51C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413C5474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413C6208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getVTUIGMEnrollmentViewControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!VoiceTriggerUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __VoiceTriggerUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CD1800;
    v5 = 0;
    VoiceTriggerUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceTriggerUILibraryCore_frameworkLibrary)
  {
    __getVTUIGMEnrollmentViewControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VTUIGMEnrollmentViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUIGMEnrollmentViewControllerClass_block_invoke_cold_1();
  }

  getVTUIGMEnrollmentViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceTriggerUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  VoiceTriggerUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2413C855C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getVTUIEnrollTrainingViewControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!VoiceTriggerUILibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __VoiceTriggerUILibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CD1818;
    v5 = 0;
    VoiceTriggerUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!VoiceTriggerUILibraryCore_frameworkLibrary_0)
  {
    __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VTUIEnrollTrainingViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_1();
  }

  getVTUIEnrollTrainingViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceTriggerUILibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  VoiceTriggerUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_2413C8D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CD1850;
    v6 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "SBSCopyDisplayIdentifiers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSCopyDisplayIdentifiersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2413CA238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413CA6B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class __getCKKnowledgeStoreClass_block_invoke(uint64_t a1)
{
  CoreKnowledgeLibrary();
  result = objc_getClass("CKKnowledgeStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKKnowledgeStoreClass_block_invoke_cold_1();
  }

  getCKKnowledgeStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CoreKnowledgeLibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!CoreKnowledgeLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __CoreKnowledgeLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_278CD1868;
    v2 = 0;
    CoreKnowledgeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreKnowledgeLibraryCore_frameworkLibrary)
  {
    CoreKnowledgeLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __CoreKnowledgeLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreKnowledgeLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCKPermanentEventStoreClass_block_invoke(uint64_t a1)
{
  CoreKnowledgeLibrary();
  result = objc_getClass("CKPermanentEventStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKPermanentEventStoreClass_block_invoke_cold_1();
  }

  getCKPermanentEventStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCKEventClass_block_invoke(uint64_t a1)
{
  CoreKnowledgeLibrary();
  result = objc_getClass("CKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKEventClass_block_invoke_cold_1();
  }

  getCKEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2413CC4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413CCE24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2413D02E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getCKKnowledgeStoreClass_block_invoke_0(uint64_t a1)
{
  CoreKnowledgeLibrary_0();
  result = objc_getClass("CKKnowledgeStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKKnowledgeStoreClass_block_invoke_cold_1_0();
  }

  getCKKnowledgeStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CoreKnowledgeLibrary_0()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!CoreKnowledgeLibraryCore_frameworkLibrary_0)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __CoreKnowledgeLibraryCore_block_invoke_0;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_278CD1A30;
    v2 = 0;
    CoreKnowledgeLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!CoreKnowledgeLibraryCore_frameworkLibrary_0)
  {
    CoreKnowledgeLibrary_cold_1_0(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __CoreKnowledgeLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  CoreKnowledgeLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getCKPermanentEventStoreClass_block_invoke_0(uint64_t a1)
{
  CoreKnowledgeLibrary_0();
  result = objc_getClass("CKPermanentEventStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKPermanentEventStoreClass_block_invoke_cold_1_0();
  }

  getCKPermanentEventStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCKEventClass_block_invoke_0(uint64_t a1)
{
  CoreKnowledgeLibrary_0();
  result = objc_getClass("CKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKEventClass_block_invoke_cold_1_0();
  }

  getCKEventClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2413D167C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413D2694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413D2CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413D3414(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2413D4228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  objc_destroyWeak(va);
  objc_destroyWeak((v22 - 104));
  _Unwind_Resume(a1);
}

void sub_2413D6C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
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
    v3[3] = &unk_278CD1658;
    v3[4] = &v4;
    __getNRPairedDeviceRegistryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2413D6D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNRDevicePropertySystemVersion()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getNRDevicePropertySystemVersionSymbolLoc_ptr;
  v7 = getNRDevicePropertySystemVersionSymbolLoc_ptr;
  if (!getNRDevicePropertySystemVersionSymbolLoc_ptr)
  {
    v1 = NanoRegistryLibrary();
    v5[3] = dlsym(v1, "NRDevicePropertySystemVersion");
    getNRDevicePropertySystemVersionSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getNRDevicePropertySystemVersion_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_2413D6E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413D7220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413D77A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413D7C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(va);
  objc_destroyWeak((v23 - 112));
  _Unwind_Resume(a1);
}

void sub_2413D8274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, id);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  objc_destroyWeak(va);
  objc_destroyWeak(va1);
  objc_destroyWeak((v16 - 112));
  _Unwind_Resume(a1);
}

void sub_2413D8898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 112));
  _Unwind_Resume(a1);
}

void sub_2413D9454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413DB580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413DCE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(va);
  objc_destroyWeak((v22 - 104));
  _Unwind_Resume(a1);
}

void sub_2413DD118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getVTUIEnrollTrainingViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVTUIEnrollTrainingViewControllerClass_softClass_0;
  v7 = getVTUIEnrollTrainingViewControllerClass_softClass_0;
  if (!getVTUIEnrollTrainingViewControllerClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getVTUIEnrollTrainingViewControllerClass_block_invoke_0;
    v3[3] = &unk_278CD1658;
    v3[4] = &v4;
    __getVTUIEnrollTrainingViewControllerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2413DD530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2413DDBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413DE594(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2413DE720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2413DF590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getVTUISiriDataSharingOptInPresenterClass_block_invoke(uint64_t a1)
{
  VoiceTriggerUILibrary();
  result = objc_getClass("VTUISiriDataSharingOptInPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUISiriDataSharingOptInPresenterClass_block_invoke_cold_1();
  }

  getVTUISiriDataSharingOptInPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void VoiceTriggerUILibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!VoiceTriggerUILibraryCore_frameworkLibrary_1)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __VoiceTriggerUILibraryCore_block_invoke_1;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_278CD1E58;
    v2 = 0;
    VoiceTriggerUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!VoiceTriggerUILibraryCore_frameworkLibrary_1)
  {
    VoiceTriggerUILibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __VoiceTriggerUILibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  VoiceTriggerUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  NanoRegistryLibrary();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
  }

  getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NanoRegistryLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __NanoRegistryLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278CD1E70;
    v4 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    NanoRegistryLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getNRDevicePropertySystemNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertySystemName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertySystemNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertySystemVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertySystemVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertySystemVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBYFlowSkipControllerClass_block_invoke(uint64_t a1)
{
  SetupAssistantLibrary();
  result = objc_getClass("BYFlowSkipController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBYFlowSkipControllerClass_block_invoke_cold_1();
  }

  getBYFlowSkipControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SetupAssistantLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __SetupAssistantLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278CD1E88;
    v4 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SetupAssistantLibraryCore_frameworkLibrary;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    SetupAssistantLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBYFlowSkipIdentifierSiriSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYFlowSkipIdentifierSiri");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYFlowSkipIdentifierSiriSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getVTUIVoiceSelectionViewControllerClass_block_invoke(uint64_t a1)
{
  VoiceTriggerUILibrary();
  result = objc_getClass("VTUIVoiceSelectionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUIVoiceSelectionViewControllerClass_block_invoke_cold_1();
  }

  getVTUIVoiceSelectionViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getVTUIEnrollTrainingViewControllerClass_block_invoke_0(uint64_t a1)
{
  VoiceTriggerUILibrary();
  result = objc_getClass("VTUIEnrollTrainingViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_1_0();
  }

  getVTUIEnrollTrainingViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2413E3EEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_2413E4D8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_2413E513C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2413E684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSPGetDisabledBundleSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SearchLibrary();
  result = dlsym(v2, "SPGetDisabledBundleSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledBundleSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SearchLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!SearchLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __SearchLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278CD1FC8;
    v4 = 0;
    SearchLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SearchLibraryCore_frameworkLibrary;
  if (!SearchLibraryCore_frameworkLibrary)
  {
    SearchLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __SearchLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SearchLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSPGetDisabledDomainSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SearchLibrary();
  result = dlsym(v2, "SPGetDisabledDomainSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledDomainSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AssistantDevice.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24AssistantSettingsSupport15AssistantDevice_identifier);
  sub_24140E7AC();
  return v1;
}

id AssistantDevice.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssistantDevice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413E6CCC()
{
  v1 = *v0;
  sub_24140EF8C();
  MEMORY[0x245CE5E20](v1);
  return sub_24140EFAC();
}

uint64_t sub_2413E6D40(uint64_t a1)
{
  v2 = *v1;
  sub_24140EF8C();
  MEMORY[0x245CE5E20](v2);
  return sub_24140EFAC();
}

void *sub_2413E6D84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2413E6D94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_24140E7AC();
  }
}

void type metadata accessor for AFUseDeviceSpeakerForTTS()
{
  if (!qword_27E542708)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E542708);
    }
  }
}

unint64_t sub_2413E6E34()
{
  result = qword_27E542710;
  if (!qword_27E542710)
  {
    type metadata accessor for AFUseDeviceSpeakerForTTS();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542710);
  }

  return result;
}

uint64_t sub_2413E6ED0(uint64_t a1, uint64_t a2)
{
  sub_24140E6AC();
  v2 = MEMORY[0x245CE5520]();
  v3 = sub_24140E67C();

  return v3 & 1;
}

uint64_t sub_2413E7030(uint64_t a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_24140E6AC();
  v5 = MEMORY[0x245CE5520]();
  sub_24140E68C();

  v6 = sub_24140ECDC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v1;
  sub_2413E7730(0, 0, v4, &unk_241412940, v7);
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

void sub_2413E7198(_BYTE *a2@<X8>)
{
  sub_24140E6AC();
  v3 = MEMORY[0x245CE5520]();
  v4 = sub_24140E67C();

  *a2 = v4 & 1;
}

uint64_t sub_2413E71E8(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *a1;
  sub_24140E6AC();
  v6 = MEMORY[0x245CE5520]();
  sub_24140E68C();

  v7 = sub_24140ECDC();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v5;
  sub_2413E7730(0, 0, v4, &unk_2414129C0, v8);
}

uint64_t sub_2413E730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2413E73A4;

  return MEMORY[0x2821667B0](a4);
}

uint64_t sub_2413E73A4()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2413E74D8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2413E74D8()
{
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_24140E72C();
  __swift_project_value_buffer(v2, qword_28120FD70);
  v3 = v1;
  v4 = sub_24140E70C();
  v5 = sub_24140ED7C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2413B9000, v4, v5, "Error setting GMS opt-in status: %@", v8, 0xCu);
    sub_2413E8560(v9, &qword_27E542720, &unk_241412F30);
    MEMORY[0x245CE6B00](v9, -1, -1);
    MEMORY[0x245CE6B00](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2413E767C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_2413E730C(a1, v4, v5, v6);
}

uint64_t sub_2413E7730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2413E8158(a3, v25 - v10);
  v12 = sub_24140ECDC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2413E8560(v11, &qword_27E542718, &qword_241412930);
  }

  else
  {
    sub_24140ECCC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24140EC8C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24140EC4C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2413E8560(a3, &qword_27E542718, &qword_241412930);

      return v23;
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

  sub_2413E8560(a3, &qword_27E542718, &qword_241412930);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void (*sub_2413E7A20(uint64_t a1))(uint64_t a1, char a2)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(v2);
  }

  *a1 = v3;
  *(a1 + 8) = sub_24140E6AC();
  v4 = MEMORY[0x245CE5520]();
  v5 = sub_24140E67C();

  *(a1 + 16) = v5 & 1;
  return sub_2413E7AD8;
}

void sub_2413E7AD8(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x245CE5520]();
  sub_24140E68C();

  v7 = sub_24140ECDC();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = *a1;
  if (a2)
  {
    v9 = &unk_241412948;
  }

  else
  {
    v9 = &unk_241412950;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v5;
  sub_2413E7730(0, 0, v8, v9, v10);

  free(v8);
}

uint64_t sub_2413E7BF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E7CA4;

  return sub_2413E730C(a1, v4, v5, v6);
}

uint64_t sub_2413E7CA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id GMOptInStatusProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMOptInStatusProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMOptInStatusProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GMOptInStatusProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMOptInStatusProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413E7E98(uint64_t a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_24140E6AC();
  v5 = MEMORY[0x245CE5520]();
  sub_24140E68C();

  v6 = sub_24140ECDC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v1;
  sub_2413E7730(0, 0, v4, &unk_2414129C8, v7);
}

uint64_t (*sub_2413E7FB8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2413E7A20(v2);
  return sub_2413E8020;
}

void sub_2413E8020(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2413E8158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2413E81C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2413E82C0;

  return v6(a1);
}

uint64_t sub_2413E82C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2413E83B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2413E85C0;

  return sub_2413E81C8(a1, v4);
}

uint64_t sub_2413E8470(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2413E7CA4;

  return sub_2413E81C8(a1, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2413E8560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2413E85C4(uint64_t a1@<X8>)
{
  v48 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542750, &qword_241412A28);
  MEMORY[0x28223BE20](v44);
  v46 = &v36 - v1;
  v47 = sub_24140EB9C();
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542758, &unk_241412A30);
  v38 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v37 = &v36 - v3;
  v41 = sub_24140E24C();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28120FD68 != -1)
  {
    swift_once();
  }

  v7 = qword_28120FCD8;
  v8 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_24140E19C();
  v39 = v12;
  v40 = v11;

  v13 = [objc_opt_self() currentDevice];
  [v13 sf_isiPad];

  type metadata accessor for GMFooterUtility();
  v14 = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_24140E19C();
  v18 = v17;

  v19 = objc_opt_self();
  sub_2413E92F8();
  v20 = sub_24140EC0C();

  v21 = [v19 URLWithTopicID_];

  if (v21)
  {

    sub_24140E22C();

    v22 = sub_24140E20C();
    v24 = v23;
    (*(v4 + 8))(v6, v41);
    v49 = v16;
    v50 = v18;
    MEMORY[0x245CE5AF0](40, 0xE100000000000000);
    MEMORY[0x245CE5AF0](v22, v24);

    MEMORY[0x245CE5AF0](41, 0xE100000000000000);
    v25 = *(v7 + v8);
    if (qword_285316D60 == v25 || qword_285316D68 == v25)
    {
      v32 = v42;
      sub_24140EB8C();
      v33 = v43;
      v34 = v47;
      (*(v43 + 16))(v46, v32, v47);
      swift_storeEnumTagMultiPayload();
      v35 = sub_2413E92A0();
      v49 = v34;
      v50 = v35;
      swift_getOpaqueTypeConformance2();
      sub_24140E98C();
      (*(v33 + 8))(v32, v34);
    }

    else
    {
      v26 = v42;
      sub_24140EB7C();
      v27 = sub_2413E92A0();
      v28 = v37;
      v29 = v47;
      sub_24140EA4C();
      (*(v43 + 8))(v26, v29);
      v30 = v38;
      v31 = v45;
      (*(v38 + 16))(v46, v28, v45);
      swift_storeEnumTagMultiPayload();
      v49 = v29;
      v50 = v27;
      swift_getOpaqueTypeConformance2();
      sub_24140E98C();
      (*(v30 + 8))(v28, v31);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_2413E8E3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_24140EC0C();
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

id sub_2413E906C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2413E90D0()
{
  result = qword_27E542730;
  if (!qword_27E542730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542728, &qword_241412A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542730);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_2413E91E0()
{
  result = qword_27E542740;
  if (!qword_27E542740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542738, &qword_241412A20);
    sub_24140EB9C();
    sub_2413E92A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542740);
  }

  return result;
}

unint64_t sub_2413E92A0()
{
  result = qword_27E542748;
  if (!qword_27E542748)
  {
    sub_24140EB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542748);
  }

  return result;
}

uint64_t sub_2413E92F8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    if (qword_28120FD68 != -1)
    {
      swift_once();
    }

    v2 = qword_28120FCD8;
    v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (qword_285316CD0 == v4 || unk_285316CD8 == v4)
    {
      return 0x3265346664617069;
    }

    else
    {
      return 0x3430356564617069;
    }
  }

  else
  {
    if (qword_28120FD68 != -1)
    {
      swift_once();
    }

    v7 = qword_28120FCD8;
    v8 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
    swift_beginAccess();
    v9 = *(v7 + v8);
    if (qword_285316CA0 == v9 || unk_285316CA8 == v9)
    {
      return 0x3738383461687069;
    }

    else
    {
      return 0x3236383263687069;
    }
  }
}

id sub_2413E94A8()
{
  result = [objc_allocWithZone(type metadata accessor for TipsManager()) init];
  qword_27E542760 = result;
  return result;
}

id TipsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TipsManager.shared.getter()
{
  if (qword_27E5426A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E542760;

  return v1;
}

uint64_t sub_2413E960C()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2413E96A4(char a1)
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2413E9758(void *a1)
{
  v3 = sub_24140E82C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24140E88C();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24140E85C();
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((byte_27E542768 & 1) == 0)
  {
    v19 = v7;
    v20 = v6;
    v21 = v4;
    v22 = v3;
    v15 = *(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_hostController);
    v23 = v1;
    *(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_hostController) = a1;
    v16 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542780, &qword_241412A60);
    sub_24140E8AC();
    *(swift_allocObject() + 16) = xmmword_241412A40;
    sub_24140E84C();
    sub_24140E86C();
    (*(v11 + 8))(v14, v10);
    sub_24140E87C();
    sub_24140E89C();
    (*(v24 + 8))(v9, v19);
    v17 = v20;
    sub_24140E81C();
    sub_24140E83C();
    (*(v21 + 8))(v17, v22);
    sub_24140E90C();

    byte_27E542768 = 1;
    return sub_2413E9B38();
  }

  return result;
}

uint64_t sub_2413E9B38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  swift_beginAccess();
  v0[v4] = 0;
  v5 = sub_24140ECDC();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v8 = v0;
  *&v8[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_appleIntelligenceTipObservationTask] = sub_2413E7730(0, 0, v3, &unk_241412AB0, v7);

  v6(v3, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v10 = v8;
  *&v10[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_imageCreateTipObservationTask] = sub_2413E7730(0, 0, v3, &unk_241412AC0, v9);
}

uint64_t sub_2413E9D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_24140EE8C();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = sub_24140EE9C();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = sub_24140E8EC();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427A8, &qword_241412AC8);
  v4[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427B0, &qword_241412AD0);
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427B8, &qword_241412AD8);
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2413E9FA0, 0, 0);
}

uint64_t sub_2413E9FA0()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  *(v0 + 296) = sub_2413EC1EC();
  sub_24140E73C();
  sub_24140ECEC();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_tipToDisplay;
  *(v0 + 304) = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  *(v0 + 312) = v4;
  *(v0 + 320) = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_hostController;
  swift_beginAccess();
  *(v0 + 124) = *MEMORY[0x277CE1A58];
  v5 = MEMORY[0x277CE1A50];
  *(v0 + 376) = *MEMORY[0x277CE1A10];
  *(v0 + 380) = *v5;
  v6 = swift_task_alloc();
  *(v0 + 328) = v6;
  *v6 = v0;
  v6[1] = sub_2413EA110;
  v7 = *(v0 + 272);
  v8 = *(v0 + 240);

  return MEMORY[0x2822003E8](v8, 0, 0, v7);
}

uint64_t sub_2413EA110()
{

  return MEMORY[0x2822009F8](sub_2413EA20C, 0, 0);
}

uint64_t sub_2413EA20C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  if ((*(v2 + 48))(*(v0 + 240), 1, v1) == 1)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 124);
    v37 = *(v0 + 304);
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    v8 = *(v0 + 144);
    sub_24140E75C();
    v38 = *(v2 + 104);
    v38(v7, v5, v1);
    LOBYTE(v5) = sub_24140E8DC();
    v9 = *(v2 + 8);
    v9(v7, v1);
    v9(v6, v1);
    *(v8 + v37) = v5 & 1;
    if (v5)
    {
      v10 = *(v0 + 312);
      v11 = *(v0 + 296);
      v12 = *(v0 + 144);
      *(v0 + 40) = &type metadata for AppleIntelligenceTip;
      *(v0 + 48) = v11;
      swift_beginAccess();
      sub_2413EC17C(v0 + 16, v12 + v10);
      swift_endAccess();
    }

    v13 = *(v0 + 380);
    v14 = *(v0 + 376);
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v17 = *(v0 + 208);
    sub_24140E75C();
    v18 = sub_24140E80C();
    (*(*(v18 - 8) + 104))(v16, v14, v18);
    v38(v16, v13, v17);
    LOBYTE(v13) = sub_24140E8DC();
    v9(v16, v17);
    v9(v15, v17);
    if (v13)
    {
      v20 = *(v0 + 160);
      v19 = *(v0 + 168);
      v21 = *(v0 + 152);
      v22 = sub_24140EFBC();
      v24 = v23;
      sub_24140EF6C();
      *(v0 + 128) = v22;
      *(v0 + 136) = v24;
      *(v0 + 112) = 0;
      *(v0 + 104) = 0;
      *(v0 + 120) = 1;
      v25 = sub_2413EC134(&qword_27E5427C8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
      sub_24140EF4C();
      sub_2413EC134(&qword_27E5427D0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      sub_24140EEAC();
      v26 = *(v20 + 8);
      *(v0 + 336) = v26;
      *(v0 + 344) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v26(v19, v21);
      v27 = swift_task_alloc();
      *(v0 + 352) = v27;
      *v27 = v0;
      v27[1] = sub_2413EA774;
      v29 = *(v0 + 176);
      v28 = *(v0 + 184);

      return MEMORY[0x2822008C8](v29, v0 + 104, v28, v25);
    }

    else
    {
      v30 = *(*(v0 + 144) + *(v0 + 320));
      *(v0 + 360) = v30;
      if (v30)
      {
        sub_24140ECBC();
        v31 = v30;
        *(v0 + 368) = sub_24140ECAC();
        v33 = sub_24140EC8C();

        return MEMORY[0x2822009F8](sub_2413EAB80, v33, v32);
      }

      else
      {
        sub_2413E8560(*(v0 + 240), &qword_27E5427A8, &qword_241412AC8);
        v34 = swift_task_alloc();
        *(v0 + 328) = v34;
        *v34 = v0;
        v34[1] = sub_2413EA110;
        v35 = *(v0 + 272);
        v36 = *(v0 + 240);

        return MEMORY[0x2822003E8](v36, 0, 0, v35);
      }
    }
  }
}

uint64_t sub_2413EA774()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[42];
    v4 = v2[22];
    v5 = v2[19];

    v3(v4, v5);
    v6 = sub_2413EAA24;
  }

  else
  {
    v8 = v2[24];
    v7 = v2[25];
    v9 = v2[23];
    (v2[42])(v2[22], v2[19]);
    (*(v8 + 8))(v7, v9);
    v6 = sub_2413EA8E0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2413EA8E0()
{
  v1 = *(v0[18] + v0[40]);
  v0[45] = v1;
  if (v1)
  {
    sub_24140ECBC();
    v2 = v1;
    v0[46] = sub_24140ECAC();
    v4 = sub_24140EC8C();

    return MEMORY[0x2822009F8](sub_2413EAB80, v4, v3);
  }

  else
  {
    sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
    v5 = swift_task_alloc();
    v0[41] = v5;
    *v5 = v0;
    v5[1] = sub_2413EA110;
    v6 = v0[34];
    v7 = v0[30];

    return MEMORY[0x2822003E8](v7, 0, 0, v6);
  }
}

uint64_t sub_2413EAA24()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = *(v0[18] + v0[40]);
  v0[45] = v1;
  if (v1)
  {
    sub_24140ECBC();
    v2 = v1;
    v0[46] = sub_24140ECAC();
    v4 = sub_24140EC8C();

    return MEMORY[0x2822009F8](sub_2413EAB80, v4, v3);
  }

  else
  {
    sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
    v5 = swift_task_alloc();
    v0[41] = v5;
    *v5 = v0;
    v5[1] = sub_2413EA110;
    v6 = v0[34];
    v7 = v0[30];

    return MEMORY[0x2822003E8](v7, 0, 0, v6);
  }
}

uint64_t sub_2413EAB80()
{
  v1 = *(v0 + 360);

  [v1 reloadSpecifiers];

  return MEMORY[0x2822009F8](sub_2413EABFC, 0, 0);
}

uint64_t sub_2413EABFC()
{
  sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = sub_2413EA110;
  v2 = v0[34];
  v3 = v0[30];

  return MEMORY[0x2822003E8](v3, 0, 0, v2);
}

uint64_t sub_2413EACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_24140EE8C();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = sub_24140EE9C();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = sub_24140E8EC();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427A8, &qword_241412AC8);
  v4[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427B0, &qword_241412AD0);
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427B8, &qword_241412AD8);
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2413EAF54, 0, 0);
}

uint64_t sub_2413EAF54()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  *(v0 + 296) = sub_2413EC0E0();
  sub_24140E73C();
  sub_24140ECEC();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_tipToDisplay;
  *(v0 + 304) = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  *(v0 + 312) = v4;
  *(v0 + 320) = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_hostController;
  swift_beginAccess();
  *(v0 + 124) = *MEMORY[0x277CE1A58];
  v5 = MEMORY[0x277CE1A50];
  *(v0 + 376) = *MEMORY[0x277CE1A10];
  *(v0 + 380) = *v5;
  v6 = swift_task_alloc();
  *(v0 + 328) = v6;
  *v6 = v0;
  v6[1] = sub_2413EB0C4;
  v7 = *(v0 + 272);
  v8 = *(v0 + 240);

  return MEMORY[0x2822003E8](v8, 0, 0, v7);
}

uint64_t sub_2413EB0C4()
{

  return MEMORY[0x2822009F8](sub_2413EB1C0, 0, 0);
}

uint64_t sub_2413EB1C0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  if ((*(v2 + 48))(*(v0 + 240), 1, v1) == 1)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 124);
    v37 = *(v0 + 304);
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    v8 = *(v0 + 144);
    sub_24140E75C();
    v38 = *(v2 + 104);
    v38(v7, v5, v1);
    LOBYTE(v5) = sub_24140E8DC();
    v9 = *(v2 + 8);
    v9(v7, v1);
    v9(v6, v1);
    *(v8 + v37) = v5 & 1;
    if (v5)
    {
      v10 = *(v0 + 312);
      v11 = *(v0 + 296);
      v12 = *(v0 + 144);
      *(v0 + 40) = &type metadata for ImageCreationTip;
      *(v0 + 48) = v11;
      swift_beginAccess();
      sub_2413EC17C(v0 + 16, v12 + v10);
      swift_endAccess();
    }

    v13 = *(v0 + 380);
    v14 = *(v0 + 376);
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v17 = *(v0 + 208);
    sub_24140E75C();
    v18 = sub_24140E80C();
    (*(*(v18 - 8) + 104))(v16, v14, v18);
    v38(v16, v13, v17);
    LOBYTE(v13) = sub_24140E8DC();
    v9(v16, v17);
    v9(v15, v17);
    if (v13)
    {
      v20 = *(v0 + 160);
      v19 = *(v0 + 168);
      v21 = *(v0 + 152);
      v22 = sub_24140EFBC();
      v24 = v23;
      sub_24140EF6C();
      *(v0 + 128) = v22;
      *(v0 + 136) = v24;
      *(v0 + 112) = 0;
      *(v0 + 104) = 0;
      *(v0 + 120) = 1;
      v25 = sub_2413EC134(&qword_27E5427C8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
      sub_24140EF4C();
      sub_2413EC134(&qword_27E5427D0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      sub_24140EEAC();
      v26 = *(v20 + 8);
      *(v0 + 336) = v26;
      *(v0 + 344) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v26(v19, v21);
      v27 = swift_task_alloc();
      *(v0 + 352) = v27;
      *v27 = v0;
      v27[1] = sub_2413EB728;
      v29 = *(v0 + 176);
      v28 = *(v0 + 184);

      return MEMORY[0x2822008C8](v29, v0 + 104, v28, v25);
    }

    else
    {
      v30 = *(*(v0 + 144) + *(v0 + 320));
      *(v0 + 360) = v30;
      if (v30)
      {
        sub_24140ECBC();
        v31 = v30;
        *(v0 + 368) = sub_24140ECAC();
        v33 = sub_24140EC8C();

        return MEMORY[0x2822009F8](sub_2413EBB34, v33, v32);
      }

      else
      {
        sub_2413E8560(*(v0 + 240), &qword_27E5427A8, &qword_241412AC8);
        v34 = swift_task_alloc();
        *(v0 + 328) = v34;
        *v34 = v0;
        v34[1] = sub_2413EB0C4;
        v35 = *(v0 + 272);
        v36 = *(v0 + 240);

        return MEMORY[0x2822003E8](v36, 0, 0, v35);
      }
    }
  }
}

uint64_t sub_2413EB728()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[42];
    v4 = v2[22];
    v5 = v2[19];

    v3(v4, v5);
    v6 = sub_2413EB9D8;
  }

  else
  {
    v8 = v2[24];
    v7 = v2[25];
    v9 = v2[23];
    (v2[42])(v2[22], v2[19]);
    (*(v8 + 8))(v7, v9);
    v6 = sub_2413EB894;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2413EB894()
{
  v1 = *(v0[18] + v0[40]);
  v0[45] = v1;
  if (v1)
  {
    sub_24140ECBC();
    v2 = v1;
    v0[46] = sub_24140ECAC();
    v4 = sub_24140EC8C();

    return MEMORY[0x2822009F8](sub_2413EBB34, v4, v3);
  }

  else
  {
    sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
    v5 = swift_task_alloc();
    v0[41] = v5;
    *v5 = v0;
    v5[1] = sub_2413EB0C4;
    v6 = v0[34];
    v7 = v0[30];

    return MEMORY[0x2822003E8](v7, 0, 0, v6);
  }
}

uint64_t sub_2413EB9D8()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = *(v0[18] + v0[40]);
  v0[45] = v1;
  if (v1)
  {
    sub_24140ECBC();
    v2 = v1;
    v0[46] = sub_24140ECAC();
    v4 = sub_24140EC8C();

    return MEMORY[0x2822009F8](sub_2413EBB34, v4, v3);
  }

  else
  {
    sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
    v5 = swift_task_alloc();
    v0[41] = v5;
    *v5 = v0;
    v5[1] = sub_2413EB0C4;
    v6 = v0[34];
    v7 = v0[30];

    return MEMORY[0x2822003E8](v7, 0, 0, v6);
  }
}

uint64_t sub_2413EBB34()
{
  v1 = *(v0 + 360);

  [v1 reloadSpecifiers];

  return MEMORY[0x2822009F8](sub_2413EBBB0, 0, 0);
}

uint64_t sub_2413EBBB0()
{
  sub_2413E8560(v0[30], &qword_27E5427A8, &qword_241412AC8);
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = sub_2413EB0C4;
  v2 = v0[34];
  v3 = v0[30];

  return MEMORY[0x2822003E8](v3, 0, 0, v2);
}

id TipsManager.init()()
{
  v0[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip] = 0;
  v1 = &v0[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_tipToDisplay];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_appleIntelligenceTipObservationTask] = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_imageCreateTipObservationTask] = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_hostController] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TipsManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

id TipsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413EBF38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_2413E9D08(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2413EC02C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E7CA4;

  return sub_2413EACBC(a1, v4, v5, v6);
}

unint64_t sub_2413EC0E0()
{
  result = qword_27E5427C0;
  if (!qword_27E5427C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5427C0);
  }

  return result;
}

uint64_t sub_2413EC134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2413EC17C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427A0, &unk_241412A98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2413EC1EC()
{
  result = qword_27E5427D8;
  if (!qword_27E5427D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5427D8);
  }

  return result;
}

uint64_t sub_2413EC240(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() assistantLanguageTitlesDictionary];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v4 = sub_24140EBBC();

  if (!v4)
  {
    goto LABEL_9;
  }

  sub_24140E7AC();
  sub_24140EE3C();
  if (!*(v4 + 16) || (v5 = sub_2413EC6F4(&v8), (v6 & 1) == 0))
  {

    sub_2413EC738(&v8);
LABEL_9:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_10;
  }

  sub_2413EC78C(*(v4 + 56) + 32 * v5, &v9);
  sub_2413EC738(&v8);

  if (!*(&v10 + 1))
  {
LABEL_10:
    sub_2413EC384(&v9);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v8;
  }

  return 0;
}

uint64_t sub_2413EC384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427E0, &unk_241412AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2413EC3EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 sf_deviceType];

  sub_24140EC1C();
  v11 = sub_24140EC3C();
  v13 = v12;

  MEMORY[0x245CE5AF0](v11, v13);

  sub_2413ECA08();
  v22 = sub_2413ECA5C();
  v23 = MEMORY[0x277D835C8];
  sub_24140ED4C();

  if (!a4)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_24140E19C();
  v19 = v18;

  if (v17 == 95 && v19 == 0xE100000000000000 || (sub_24140EF1C() & 1) != 0)
  {

    v20 = [v15 bundleForClass_];
    sub_24140E19C();
  }

  if (*(a2 + 16))
  {
LABEL_7:
    sub_2413F3B3C(a2);
    sub_24140EC2C();
  }

LABEL_8:
  v21 = sub_24140EC0C();

  [a1 setProperty:v21 forKey:*MEMORY[0x277D3FF88]];
}

unint64_t sub_2413EC6F4(uint64_t a1)
{
  v2 = sub_24140EE1C();

  return sub_2413EC8E4(a1, v2);
}

uint64_t sub_2413EC78C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2413EC7E8(uint64_t a1)
{
  sub_24140E4BC();
  sub_2413ECD14(&qword_28120FD00, MEMORY[0x277D0E220]);
  v2 = sub_24140EBCC();

  return sub_2413ECAB0(a1, v2);
}

unint64_t sub_2413EC86C(uint64_t a1, uint64_t a2)
{
  sub_24140EF8C();
  sub_24140EC5C();
  v4 = sub_24140EFAC();

  return sub_2413ECC5C(a1, a2, v4);
}

unint64_t sub_2413EC8E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2413EC9AC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CE5CB0](v9, a1);
      sub_2413EC738(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2413ECA08()
{
  result = qword_27E5427E8;
  if (!qword_27E5427E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5427E8);
  }

  return result;
}

unint64_t sub_2413ECA5C()
{
  result = qword_27E5427F0;
  if (!qword_27E5427F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5427F0);
  }

  return result;
}

unint64_t sub_2413ECAB0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24140E4BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2413ECD14(&qword_28120FCF8, MEMORY[0x277D0E228]);
      v15 = sub_24140EBDC();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2413ECC5C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24140EF1C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2413ECD14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24140E4BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2413ECD58(unint64_t a1)
{
  if (a1 < 0xE && ((0x3FBFu >> a1) & 1) != 0)
  {
    return *(&off_278CD20C8 + a1);
  }

  result = sub_24140EF2C();
  __break(1u);
  return result;
}

unint64_t sub_2413ECDD0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2413EE900(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2413ECE04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542840, &qword_241412C68);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542848, &qword_241412C70);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_241412AF0;
  v3 = v18 + v2;
  v4 = *(v0 + 48);
  v5 = *MEMORY[0x277D0E110];
  v6 = sub_24140E4BC();
  v7 = *(*(v6 - 8) + 104);
  v7(v3, v5, v6);
  *(v3 + v4) = 1;
  v8 = *(v0 + 48);
  v7(v3 + v1, *MEMORY[0x277D0E1B8], v6);
  *(v3 + v1 + v8) = 4;
  v9 = *(v0 + 48);
  v7(v3 + 2 * v1, *MEMORY[0x277D0E1D0], v6);
  *(v3 + 2 * v1 + v9) = 4;
  v10 = *(v0 + 48);
  v7(v3 + 3 * v1, *MEMORY[0x277D0E130], v6);
  *(v3 + 3 * v1 + v10) = 2;
  v11 = *(v0 + 48);
  v7(v3 + 4 * v1, *MEMORY[0x277D0E120], v6);
  *(v3 + 4 * v1 + v11) = 2;
  v12 = *(v0 + 48);
  v7(v3 + 5 * v1, *MEMORY[0x277D0E1A0], v6);
  *(v3 + 5 * v1 + v12) = 2;
  v13 = *(v0 + 48);
  v7(v3 + 6 * v1, *MEMORY[0x277D0E188], v6);
  *(v3 + 6 * v1 + v13) = 8;
  v14 = v3 + 7 * v1;
  v15 = *(v0 + 48);
  v7(v14, *MEMORY[0x277D0E210], v6);
  *(v14 + v15) = 16;
  v16 = sub_2413EE628(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27E5427F8 = v16;
  return result;
}

id GMAnalyticsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMAnalyticsProvider.init()()
{
  v0 = sub_24140E57C();
  v20 = *(v0 - 8);
  v21 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24140E40C();
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24140E52C();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24140E5DC();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24140E50C();
  v26 = &off_285317470;
  __swift_allocate_boxed_opaque_existential_1(&v24);
  sub_24140E3DC();
  sub_24140E3EC();
  (*(v3 + 8))(v5, v18);
  (*(v20 + 104))(v2, *MEMORY[0x277D0E2B8], v21);
  sub_24140E51C();
  sub_24140E5CC();
  (*(v6 + 8))(v8, v19);
  sub_24140E53C();
  (*(v9 + 8))(v11, v17);
  v12 = v22;
  sub_2413EE918(&v24, &v22[OBJC_IVAR___GMAnalyticsProvider_gmAvailabilityProvider]);
  v13 = &v12[OBJC_IVAR___GMAnalyticsProvider_sendFunction];
  *v13 = sub_2413ED460;
  v13[1] = 0;
  v14 = type metadata accessor for GMAnalyticsProvider();
  v23.receiver = v12;
  v23.super_class = v14;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t sub_2413ED460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24140EC0C();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2413ED520;
  v10[3] = &block_descriptor;
  v7 = _Block_copy(v10);

  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);

  return v8;
}

id sub_2413ED520(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2413EEAA0(0, &qword_27E542830, 0x277D82BB8);
    v4 = sub_24140EBAC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_2413ED630(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2413ED660@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2413ED68C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2413ED764@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2413EECE0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2413ED7A4(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___GMAnalyticsProvider_sendFunction];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = v1;
  LOBYTE(a1) = v3(0xD00000000000002CLL, 0x80000002414196F0, sub_2413EE954, v4);

  return a1 & 1;
}

unint64_t sub_2413ED850(unint64_t a1, uint64_t a2)
{
  v87 = a2;
  v88 = sub_24140E4BC();
  v3 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24140E50C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24140E4DC();
  v10 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542818, &qword_241412C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241412B00;
  *(inited + 32) = 7627617;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v77 = sub_2413EE7FC(inited);
  swift_setDeallocating();
  sub_2413E8560(inited + 32, &qword_27E542820, &unk_241412C50);
  v13 = sub_2413ECD58(a1);
  v84 = *(v13 + 16);
  v85 = v13;
  if (!v84)
  {
LABEL_51:

    return v77;
  }

  v83 = (v87 + OBJC_IVAR___GMAnalyticsProvider_gmAvailabilityProvider);
  v81 = (v7 + 88);
  v82 = (v7 + 16);
  v80 = *MEMORY[0x277D0DFB0];
  v74 = (v7 + 8);
  v73 = (v7 + 96);
  v14 = 0;
  v72 = (v10 + 32);
  v71 = (v10 + 8);
  v87 = v3 + 16;
  v15 = (v3 + 8);
  v79 = v6;
  v78 = v9;
  while (v14 < *(v85 + 16))
  {
    v16 = __swift_project_boxed_opaque_existential_1(v83, v83[3]);
    (*v82)(v9, v16, v6);
    v17 = (*v81)(v9, v6);
    if (v17 == v80)
    {
      (*v73)(v9, v6);
      v18 = v75;
      v19 = v76;
      (*v72)(v75, v9, v76);
      v20 = sub_24140E4CC();
      (*v71)(v18, v19);
    }

    else
    {
      (*v74)(v9, v6);
      v20 = MEMORY[0x277D84FA0];
    }

    v86 = v14 + 1;
    v21 = 1 << *(v20 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v20 + 56);
    v24 = (v21 + 63) >> 6;
    sub_24140E7AC();
    v25 = 0;
    for (i = MEMORY[0x277D84F90]; v23; *&i[8 * v34 + 32] = v70)
    {
      while (1)
      {
LABEL_19:
        (*(v3 + 16))(v5, *(v20 + 48) + *(v3 + 72) * (__clz(__rbit64(v23)) | (v25 << 6)), v88);
        if (qword_27E5426A8 != -1)
        {
          swift_once();
        }

        v23 &= v23 - 1;
        v28 = off_27E5427F8;
        if (*(off_27E5427F8 + 2))
        {
          v29 = sub_2413EC7E8(v5);
          if (v30)
          {
            break;
          }
        }

        (*v15)(v5, v88);
        if (!v23)
        {
          goto LABEL_15;
        }
      }

      v31 = *(v28[7] + 8 * v29);
      (*v15)(v5, v88);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        i = sub_2413F51D4(0, *(i + 2) + 1, 1, i);
      }

      v34 = *(i + 2);
      v33 = *(i + 3);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v69 = v34 + 1;
        v36 = sub_2413F51D4((v33 > 1), v34 + 1, 1, i);
        v35 = v69;
        i = v36;
      }

      *(i + 2) = v35;
    }

    while (1)
    {
LABEL_15:
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_53;
      }

      if (v27 >= v24)
      {
        break;
      }

      v23 = *(v20 + 56 + 8 * v27);
      ++v25;
      if (v23)
      {
        v25 = v27;
        goto LABEL_19;
      }
    }

    v37 = *(i + 2);
    if (!v37)
    {
      v39 = 0;
      v6 = v79;
      v9 = v78;
      goto LABEL_38;
    }

    v6 = v79;
    v9 = v78;
    if (v37 <= 3)
    {
      v38 = 0;
      v39 = 0;
LABEL_36:
      v45 = v37 - v38;
      v46 = &i[8 * v38 + 32];
      do
      {
        v47 = *v46;
        v46 += 8;
        *&v39 |= v47;
        --v45;
      }

      while (v45);
      goto LABEL_38;
    }

    v38 = v37 & 0x7FFFFFFFFFFFFFFCLL;
    v40 = (i + 48);
    v41 = 0uLL;
    v42 = v37 & 0x7FFFFFFFFFFFFFFCLL;
    v43 = 0uLL;
    do
    {
      v41 = vorrq_s8(v40[-1], v41);
      v43 = vorrq_s8(*v40, v43);
      v40 += 2;
      v42 -= 4;
    }

    while (v42);
    v44 = vorrq_s8(v43, v41);
    v39 = vorr_s8(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
    if (v37 != v38)
    {
      goto LABEL_36;
    }

LABEL_38:

    v48 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v49 = sub_2413EEAA0(0, &qword_27E542828, 0x277CCABB0);
    v91 = v89;
    v90 = v48;
    v92 = v49;
    if (v49)
    {
      sub_2413EEAA0(0, &qword_27E542830, 0x277D82BB8);
      if (swift_dynamicCast())
      {
        v50 = v89;
        v51 = v77;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v90 = v51;
        v53 = sub_2413EC86C(7631717, 0xE300000000000000);
        v55 = *(v51 + 16);
        v56 = (v54 & 1) == 0;
        v57 = __OFADD__(v55, v56);
        v58 = v55 + v56;
        if (v57)
        {
          goto LABEL_54;
        }

        v59 = v54;
        if (*(v51 + 24) >= v58)
        {
          if ((v52 & 1) == 0)
          {
            v67 = v53;
            sub_2413EE4BC();
            v53 = v67;
          }
        }

        else
        {
          sub_2413EE218(v58, v52);
          v53 = sub_2413EC86C(7631717, 0xE300000000000000);
          if ((v59 & 1) != (v60 & 1))
          {
            goto LABEL_56;
          }
        }

        v61 = v90;
        v77 = v90;
        if (v59)
        {
          v62 = v90[7];
          v63 = *(v62 + 8 * v53);
          *(v62 + 8 * v53) = v50;

          v50 = v63;
        }

        else
        {
          v90[(v53 >> 6) + 8] |= 1 << v53;
          v64 = (v61[6] + 16 * v53);
          *v64 = 7631717;
          v64[1] = 0xE300000000000000;
          *(v61[7] + 8 * v53) = v50;
          v65 = v61[2];
          v57 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v57)
          {
            goto LABEL_55;
          }

          v61[2] = v66;
        }
      }
    }

    else
    {
      sub_2413E8560(&v90, &qword_27E5427E0, &unk_241412AE0);
    }

    v14 = v86;
    if (v86 == v84)
    {
      goto LABEL_51;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_24140EF3C();
  __break(1u);
  return result;
}

id GMAnalyticsProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GMAnalyticsProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2413EE218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542838, &qword_241412C60);
  v35 = v4;
  result = sub_24140EECC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_24140E7AC();
        v25 = v24;
      }

      sub_24140EF8C();
      sub_24140EC5C();
      result = sub_24140EFAC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_2413EE4BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542838, &qword_241412C60);
  v2 = *v0;
  v3 = sub_24140EEBC();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_24140E7AC();
        result = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2413EE628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542848, &qword_241412C70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542850, &qword_241412C78);
    v7 = sub_24140EEDC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2413EEAE8(v9, v5);
      result = sub_2413EC7E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24140E4BC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_2413EE7FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542838, &qword_241412C60);
    v3 = sub_24140EEDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_24140E7AC();
      v8 = v7;
      result = sub_2413EC86C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_2413EE900(unint64_t result)
{
  if (result > 0xD || result == 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2413EE918(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2413EE960()
{
  result = qword_27E542810;
  if (!qword_27E542810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542810);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2413EEAA0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2413EEAE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542848, &qword_241412C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2413EEB84()
{
  result = qword_27E542858;
  if (!qword_27E542858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542858);
  }

  return result;
}

unint64_t sub_2413EEBDC()
{
  result = qword_27E542860;
  if (!qword_27E542860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542860);
  }

  return result;
}

unint64_t sub_2413EEC34()
{
  result = qword_27E542868;
  if (!qword_27E542868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542868);
  }

  return result;
}

unint64_t sub_2413EEC8C()
{
  result = qword_27E542870;
  if (!qword_27E542870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542870);
  }

  return result;
}

uint64_t sub_2413EECE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2413EED40@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542898, &qword_241412F08);
  a2[4] = sub_2413EF484(&qword_27E5428A0, MEMORY[0x277CC90F0]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_2413EF484(&qword_27E5428A8, MEMORY[0x277CC90F8]);
  return sub_24140E1AC();
}

uint64_t sub_2413EEE30()
{
  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return MEMORY[0x2821336E0](0xD000000000000014, 0x80000002414197A0, v1);
}

uint64_t sub_2413EEEB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542890, &qword_241412F00);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = sub_24140E8BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E5426B0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27E543AE8);
  (*(v1 + 16))(v3, v8, v0);
  sub_24140E8CC();
  sub_24140E79C();
  (*(v5 + 8))(v7, v4);
  v9 = sub_24140E7AC();

  return v9;
}

uint64_t sub_2413EF0AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542880, &qword_241412EF0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - v2;
  v4 = sub_24140E7EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542888, &qword_241412EF8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  sub_24140E7FC();
  v12 = MEMORY[0x277CE1A00];
  MEMORY[0x245CE5640](v7, v4, MEMORY[0x277CE1A00]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x245CE5660](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_24140E7CC();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

unint64_t sub_2413EF374()
{
  result = qword_27E542878;
  if (!qword_27E542878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542878);
  }

  return result;
}

uint64_t sub_2413EF3C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542890, &qword_241412F00);
  __swift_allocate_value_buffer(v0, qword_27E543AE8);
  __swift_project_value_buffer(v0, qword_27E543AE8);
  sub_2413EF538();
  return sub_24140E8FC();
}

uint64_t sub_2413EF484(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542898, &qword_241412F08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t sub_2413EF538()
{
  v0 = sub_24140E57C();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x28223BE20](v0);
  v23 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24140E40C();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24140E52C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24140E5DC();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24140E50C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  sub_24140E3FC();
  sub_24140E3EC();
  (*(v18 + 8))(v3, v21);
  (*(v24 + 104))(v23, *MEMORY[0x277D0E2B8], v25);
  sub_24140E51C();
  sub_24140E5CC();
  (*(v20 + 8))(v5, v22);
  sub_24140E53C();
  (*(v6 + 8))(v8, v19);
  (*(v10 + 104))(v13, *MEMORY[0x277D0E278], v9);
  LOBYTE(v3) = sub_24140E4FC();
  v16 = *(v10 + 8);
  v16(v13, v9);
  v16(v15, v9);
  return v3 & 1;
}

uint64_t sub_2413EF960(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24140E72C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  sub_24140E7AC();
  return sub_24140E71C();
}

uint64_t sub_2413EF9E8()
{
  v0 = sub_24140E72C();
  __swift_allocate_value_buffer(v0, qword_27E543B18);
  __swift_project_value_buffer(v0, qword_27E543B18);
  return sub_24140E71C();
}

uint64_t sub_2413EFA6C()
{
  v0 = sub_24140E72C();
  __swift_allocate_value_buffer(v0, qword_27E543B30);
  v1 = __swift_project_value_buffer(v0, qword_27E543B30);
  if (qword_27E5426C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E543B18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2413EFB34()
{
  v1[7] = v0;
  v2 = sub_24140E33C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_24140E36C();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2413EFC80, 0, 0);
}

uint64_t sub_2413EFC80()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC24AssistantSettingsSupport19FindMyLocateSession_session;
  v0[18] = OBJC_IVAR____TtC24AssistantSettingsSupport19FindMyLocateSession_session;
  v0[19] = *(v1 + v2);

  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_2413EFD40;
  v4 = v0[17];

  return MEMORY[0x28215FB40](v4, 1);
}

uint64_t sub_2413EFD40()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2413F0160;
  }

  else
  {

    v2 = sub_2413EFE5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2413EFE5C()
{
  v35 = v0;
  if (qword_27E5426C8 != -1)
  {
    swift_once();
  }

  receiver = v0[8].receiver;
  super_class = v0[8].super_class;
  v3 = v0[5].super_class;
  v4 = v0[6].receiver;
  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_27E543B30);
  v6 = v4[2];
  v6(receiver, super_class, v3);
  v7 = sub_24140E70C();
  v8 = sub_24140ED8C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8].receiver;
  v11 = v0[5].super_class;
  v12 = v0[6].receiver;
  if (v9)
  {
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v13 = 136315138;
    sub_2413F16CC();
    v31 = sub_24140EEFC();
    v33 = v6;
    v15 = v14;
    v16 = v11;
    v17 = v12[1];
    v17(v10, v16);
    v18 = sub_2413F10BC(v31, v15, &v34);
    v6 = v33;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2413B9000, v7, v8, "Successfully got active location sharing device: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x245CE6B00](v32, -1, -1);
    MEMORY[0x245CE6B00](v13, -1, -1);
  }

  else
  {

    v19 = v11;
    v17 = v12[1];
    v17(v10, v19);
  }

  v20 = v0[8].super_class;
  v21 = v0[7].super_class;
  v22 = v0[5].super_class;
  v6(v21, v20, v22);
  v23 = type metadata accessor for AssistantDevice();
  v24 = objc_allocWithZone(v23);
  v25 = sub_24140E35C();
  v26 = &v24[OBJC_IVAR____TtC24AssistantSettingsSupport15AssistantDevice_identifier];
  *v26 = v25;
  v26[1] = v27;
  v24[OBJC_IVAR____TtC24AssistantSettingsSupport15AssistantDevice_isThisDevice] = sub_24140E34C() & 1;
  v0[2].receiver = v24;
  v0[2].super_class = v23;
  v28 = objc_msgSendSuper2(v0 + 2, sel_init);
  v17(v21, v22);
  v17(v20, v22);

  v29 = v0->super_class;

  return v29(v28);
}

uint64_t sub_2413F0160()
{
  v1 = *(v0 + 168);

  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 72) + 88))(*(v0 + 80), *(v0 + 64)) == *MEMORY[0x277D090B0])
    {

      if (qword_27E5426C8 != -1)
      {
        swift_once();
      }

      v3 = sub_24140E72C();
      *(v0 + 176) = __swift_project_value_buffer(v3, qword_27E543B30);
      v4 = sub_24140E70C();
      v5 = sub_24140ED8C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_2413B9000, v4, v5, "Error getting cached location sharing device, trying not cached.", v6, 2u);
        MEMORY[0x245CE6B00](v6, -1, -1);
      }

      v7 = *(v0 + 144);
      v8 = *(v0 + 56);

      *(v0 + 184) = *(v8 + v7);

      v9 = swift_task_alloc();
      *(v0 + 192) = v9;
      *v9 = v0;
      v9[1] = sub_2413F0520;
      v10 = *(v0 + 112);

      return MEMORY[0x28215FB40](v10, 0);
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

  if (qword_27E5426C8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 168);
  v12 = sub_24140E72C();
  __swift_project_value_buffer(v12, qword_27E543B30);
  v13 = v11;
  v14 = sub_24140E70C();
  v15 = sub_24140ED7C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    v18 = sub_24140E1BC();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_2413B9000, v14, v15, "Error getting active location sharing device: %{public}@", v16, 0xCu);
    sub_2413F1664(v17);
    MEMORY[0x245CE6B00](v17, -1, -1);
    MEMORY[0x245CE6B00](v16, -1, -1);
  }

  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2413F0520()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2413F0908;
  }

  else
  {
    v2 = sub_2413F0654;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2413F0654()
{
  v31 = v0;
  v1 = *(v0[6].receiver + 2);
  v1(v0[6].super_class, v0[7].receiver, v0[5].super_class);
  v2 = sub_24140E70C();
  v3 = sub_24140ED8C();
  v4 = os_log_type_enabled(v2, v3);
  receiver = v0[6].receiver;
  super_class = v0[6].super_class;
  v7 = v0[5].super_class;
  if (v4)
  {
    v29 = v1;
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v8 = 136315138;
    sub_2413F16CC();
    v27 = sub_24140EEFC();
    v10 = v9;
    v11 = v7;
    v12 = receiver[1];
    v12(super_class, v11);
    v13 = sub_2413F10BC(v27, v10, &v30);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2413B9000, v2, v3, "Successfully got non-cached active location sharing device: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x245CE6B00](v28, -1, -1);
    v14 = v8;
    v1 = v29;
    MEMORY[0x245CE6B00](v14, -1, -1);
  }

  else
  {

    v15 = v7;
    v12 = receiver[1];
    v12(super_class, v15);
  }

  v16 = v0[7].receiver;
  v17 = v0[7].super_class;
  v18 = v0[5].super_class;
  v1(v17, v16, v18);
  v19 = type metadata accessor for AssistantDevice();
  v20 = objc_allocWithZone(v19);
  v21 = sub_24140E35C();
  v22 = &v20[OBJC_IVAR____TtC24AssistantSettingsSupport15AssistantDevice_identifier];
  *v22 = v21;
  v22[1] = v23;
  v20[OBJC_IVAR____TtC24AssistantSettingsSupport15AssistantDevice_isThisDevice] = sub_24140E34C() & 1;
  v0[1].receiver = v20;
  v0[1].super_class = v19;
  v24 = objc_msgSendSuper2(v0 + 1, sel_init);
  v12(v17, v18);
  v12(v16, v18);

  v25 = v0->super_class;

  return v25(v24);
}

uint64_t sub_2413F0908()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2413F0B2C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2413F0BD4;

  return sub_2413EFB34();
}

uint64_t sub_2413F0BD4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_24140E1BC();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id FindMyLocateSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FindMyLocateSession.init()()
{
  v1 = v0;
  v2 = sub_24140E30C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24140E31C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OBJC_IVAR____TtC24AssistantSettingsSupport19FindMyLocateSession_session;
  (*(v3 + 104))(v5, *MEMORY[0x277D09060], v2);
  sub_24140E32C();
  sub_24140E38C();
  swift_allocObject();
  *&v1[v7] = sub_24140E39C();
  Session = type metadata accessor for FindMyLocateSession();
  v10.receiver = v1;
  v10.super_class = Session;
  return objc_msgSendSuper2(&v10, sel_init);
}

id FindMyLocateSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyLocateSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2413F10BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_24140E7AC();
  v6 = sub_2413F1188(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2413EC78C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2413F1188(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2413F1294(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24140EE7C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2413F1294(uint64_t a1, unint64_t a2)
{
  v3 = sub_2413F12E0(a1, a2);
  sub_2413F1410(&unk_285316F78);
  return v3;
}

void *sub_2413F12E0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2413F14FC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24140EE7C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24140EC7C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2413F14FC(v10, 0);
        result = sub_24140EE5C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2413F1410(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2413F1570(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2413F14FC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428D8, &qword_241412F98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2413F1570(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428D8, &qword_241412F98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2413F1664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542720, &unk_241412F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2413F16CC()
{
  result = qword_27E5428D0;
  if (!qword_27E5428D0)
  {
    sub_24140E36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5428D0);
  }

  return result;
}

uint64_t dispatch thunk of FindMyLocateSession.getActiveLocationSharingDevice()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2413F1880;

  return v5();
}

uint64_t sub_2413F1880(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2413F197C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413E7CA4;

  return sub_2413F0B2C(v2, v3);
}

uint64_t sub_2413F1A28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2413E85C0;

  return sub_241405AAC(v2, v3, v4);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2413F1B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_241405B94(a1, v4, v5, v6);
}

void sub_2413F1BF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  if (*(v0 + 16))
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v4 = sub_24140E72C();
    __swift_project_value_buffer(v4, qword_28120FD70);
    v21 = sub_24140E70C();
    v5 = sub_24140ED5C();
    if (os_log_type_enabled(v21, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2413F10BC(0x29287472617473, 0xE700000000000000, &v22);
      _os_log_impl(&dword_2413B9000, v21, v5, "%s #GMS Already downloading", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x245CE6B00](v7, -1, -1);
      MEMORY[0x245CE6B00](v6, -1, -1);
    }

    else
    {
      v20 = v21;
    }
  }

  else
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v8 = sub_24140E72C();
    __swift_project_value_buffer(v8, qword_28120FD70);
    v9 = sub_24140E70C();
    v10 = sub_24140ED5C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2413F10BC(0x29287472617473, 0xE700000000000000, &v22);
      _os_log_impl(&dword_2413B9000, v9, v10, "%s #GMS Starting download", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CE6B00](v12, -1, -1);
      MEMORY[0x245CE6B00](v11, -1, -1);
    }

    v13 = sub_24140ECDC();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v0;

    *(v0 + 16) = sub_2413F29D8(0, 0, v3, &unk_241412FD8, v14);

    v15 = sub_24140E70C();
    v16 = sub_24140ED5C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2413B9000, v15, v16, "#GMS Availability: Forcing download of NL Router", v17, 2u);
      MEMORY[0x245CE6B00](v17, -1, -1);
    }

    v18 = [objc_opt_self() sharedManager];
    v19 = sub_24140EC0C();
    [v18 updateAssetsForSubscriber:v19 subscriptionName:0 policies:0 queue:0 progress:0 completion:0];
  }
}

uint64_t sub_2413F2048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428E0, &qword_241412FE0);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428E8, &qword_241412FE8);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2413F217C, 0, 0);
}

uint64_t sub_2413F217C()
{
  sub_24140E3CC();
  swift_allocObject();
  v0[15] = sub_24140E3BC();
  sub_24140E3AC();
  sub_24140ECEC();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_2413F2438;
  v2 = v0[9];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v2);
}

uint64_t sub_2413F2438()
{

  return MEMORY[0x2822009F8](sub_2413F2534, 0, 0);
}

uint64_t sub_2413F2534()
{
  v31 = v0;
  if (*(v0 + 48))
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
LABEL_9:
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v10 = sub_24140E72C();
    __swift_project_value_buffer(v10, qword_28120FD70);
    v11 = sub_24140E70C();
    v12 = sub_24140ED5C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 112);
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2413B9000, v11, v12, "#GMS Availability: Models Downloaded", v17, 2u);
      MEMORY[0x245CE6B00](v17, -1, -1);
    }

    (*(v16 + 8))(v14, v15);
    *(*(v0 + 64) + 16) = 0;

    v18 = *(v0 + 8);

    return v18();
  }

  if (sub_24140ED1C())
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v1 = sub_24140E72C();
    __swift_project_value_buffer(v1, qword_28120FD70);
    v2 = sub_24140E70C();
    v3 = sub_24140ED5C();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2413F10BC(0x29287472617473, 0xE700000000000000, &v30);
      _os_log_impl(&dword_2413B9000, v2, v3, "%s #GMS Download task was cancelled. Exiting", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x245CE6B00](v9, -1, -1);
      MEMORY[0x245CE6B00](v8, -1, -1);
    }

    (*(v6 + 8))(v5, v7);
    goto LABEL_9;
  }

  sub_2413F2D84();
  v20 = sub_24140EDCC();
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v21 = sub_24140E72C();
  __swift_project_value_buffer(v21, qword_28120FD70);
  v22 = v20;
  v23 = sub_24140E70C();
  v24 = sub_24140ED5C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_2413B9000, v23, v24, "#GMS download percentage: %@", v25, 0xCu);
    sub_2413E8560(v26, &qword_27E542720, &unk_241412F30);
    MEMORY[0x245CE6B00](v26, -1, -1);
    MEMORY[0x245CE6B00](v25, -1, -1);
    v22 = v23;
    v23 = v27;
  }

  v28 = swift_task_alloc();
  *(v0 + 128) = v28;
  *v28 = v0;
  v28[1] = sub_2413F2438;
  v29 = *(v0 + 72);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v29);
}

uint64_t sub_2413F29D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2413E8158(a3, v22 - v9);
  v11 = sub_24140ECDC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2413E8560(v10, &qword_27E542718, &qword_241412930);
  }

  else
  {
    sub_24140ECCC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24140EC8C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24140EC4C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2413E8560(a3, &qword_27E542718, &qword_241412930);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2413E8560(a3, &qword_27E542718, &qword_241412930);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2413F2C74()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2413F2CD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E7CA4;

  return sub_2413F2048(a1, v4, v5, v6);
}

unint64_t sub_2413F2D84()
{
  result = qword_27E542828;
  if (!qword_27E542828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E542828);
  }

  return result;
}

id ExternalAISettingsManager.__allocating_init(parentController:settings:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  objc_allocWithZone(sub_24140E6FC());
  v7 = a1;
  v8 = a2;
  *&v6[OBJC_IVAR____TtC24AssistantSettingsSupport25ExternalAISettingsManager_manager] = sub_24140E6EC();
  v11.receiver = v6;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id ExternalAISettingsManager.init(parentController:settings:)(void *a1, void *a2)
{
  v3 = v2;
  objc_allocWithZone(sub_24140E6FC());
  v6 = a1;
  v7 = a2;
  *&v3[OBJC_IVAR____TtC24AssistantSettingsSupport25ExternalAISettingsManager_manager] = sub_24140E6EC();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for ExternalAISettingsManager();
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

uint64_t sub_2413F2FF8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport25ExternalAISettingsManager_manager);
  if (v2)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = v2;
  v6 = a1;
  v7 = sub_24140E6DC();

  return v7 & 1;
}

id ExternalAISettingsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExternalAISettingsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExternalAISettingsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413F3218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542910, &qword_241413058);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-v4];
  v6 = *(a1 + OBJC_IVAR____TtC24AssistantSettingsSupport16AssistantTipCell_tipsManager);
  v7 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_tipToDisplay;
  swift_beginAccess();
  sub_2413F3ACC(v6 + v7, v11);
  sub_24140E78C();
  v8 = [objc_opt_self() clearColor];
  v11[0] = sub_24140EADC();
  sub_2413F3A84(&qword_27E542918, &qword_27E542910, &qword_241413058, MEMORY[0x277CE19B0]);
  sub_24140EA2C();

  return (*(v3 + 8))(v5, v2);
}

id sub_2413F344C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC24AssistantSettingsSupport16AssistantTipCell_tipsManager;
  if (qword_27E5426A0 != -1)
  {
    swift_once();
  }

  v11 = qword_27E542760;
  *&v5[v10] = qword_27E542760;
  v12 = v11;
  if (a3)
  {
    v13 = sub_24140EC0C();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithStyle_reuseIdentifier_specifier_, a1, v13, a4);

  if (v14)
  {
  }

  return v14;
}

uint64_t sub_2413F37C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542900, &qword_241413048);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-v4];
  [v1 setSelectionStyle_];
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542908, &qword_241413050);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542910, &qword_241413058);
  v7 = sub_2413F3A84(&qword_27E542918, &qword_27E542910, &qword_241413058, MEMORY[0x277CE19B0]);
  v13[0] = v6;
  v13[1] = MEMORY[0x277CE0F78];
  v13[2] = v7;
  v14 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  sub_24140E9BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542920, &unk_241413060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241413020;
  LOBYTE(v6) = sub_24140E9DC();
  *(inited + 32) = v6;
  v9 = sub_24140E9FC();
  *(inited + 33) = v9;
  sub_24140E9EC();
  sub_24140E9EC();
  if (sub_24140E9EC() != v6)
  {
    sub_24140E9EC();
  }

  sub_24140E9EC();
  if (sub_24140E9EC() != v9)
  {
    sub_24140E9EC();
  }

  v14 = v2;
  v15 = sub_2413F3A84(&qword_27E542928, &qword_27E542900, &qword_241413048, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_24140E9AC();
  (*(v3 + 8))(v5, v2);
  return MEMORY[0x245CE5C20](v13);
}

uint64_t sub_2413F3A84(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2413F3ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5427A0, &unk_241412A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2413F3B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2413F53E4(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D837D0];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);
      sub_24140E7AC();
      if (v8 >= v9 >> 1)
      {
        sub_2413F53E4((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_2413F690C();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_2413EE918(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id GMFooterUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMFooterUtility.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GMFooterUtility();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_2413F3D04()
{
  v0 = sub_2413F5F9C(&unk_285316FA0);
  swift_arrayDestroy();
  return v0;
}

void sub_2413F3DDC(void *a1, void *a2)
{
  if (qword_28120FD68 != -1)
  {
    v66 = a1;
    v67 = a2;
    swift_once();
    a1 = v66;
    a2 = v67;
  }

  v69 = a2;
  v70 = a1;
  v2 = qword_28120FCD8;
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (qword_27E5426B8 != -1)
  {
    swift_once();
  }

  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_27E543B00);
  v6 = sub_24140E70C();
  v7 = sub_24140ED8C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v71 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2413F10BC(0xD000000000000021, 0x8000000241419C90, &v71);
    *(v8 + 12) = 2080;
    v10 = GMEligibilityContext.description.getter(*(v2 + v3));
    v12 = sub_2413F10BC(v10, v11, &v71);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_2413B9000, v6, v7, "%s Choosing footer for eligibility: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v9, -1, -1);
    MEMORY[0x245CE6B00](v8, -1, -1);
  }

  v13 = objc_opt_self();
  v14 = [v13 sharedPreferences];
  v15 = [v14 languageCode];

  if (!v15 || (v16 = sub_24140EC1C(), v18 = v17, v15, v19 = sub_2413EC240(v16, v18), v21 = v20, , !v21))
  {
    sub_2413EC3EC(v70, MEMORY[0x277D84F90], 0xD000000000000014, 0x8000000241419520, 0xD000000000000027, 0x8000000241419A40);
    [v69 reloadSpecifier_];
    return;
  }

  switch(v4)
  {
    case 2:

      v22 = "GM_MODEL_INELIGIBLE_COUNTRY";
      v23 = MEMORY[0x277D84F90];
      v24 = 0xD000000000000025;
      goto LABEL_34;
    case 3:
    case 11:

      v22 = "GM_MODEL_ENQUEUED{DEVICE}";
      v23 = MEMORY[0x277D84F90];
      v24 = 0xD00000000000001FLL;
      goto LABEL_34;
    case 4:
    case 10:

      v22 = "GM_MODEL_DOWNLOADING{DEVICE}";
      v23 = MEMORY[0x277D84F90];
      v24 = 0xD000000000000019;
      goto LABEL_34;
    case 5:
    case 25:
    case 26:

      goto LABEL_20;
    case 6:

      v22 = "GM_MODEL_TURN_ON{DEVICE}";
      v24 = 0xD000000000000010;
      v23 = MEMORY[0x277D84F90];
      goto LABEL_34;
    case 7:
    case 8:
    case 9:

      type metadata accessor for GMFooterUtility();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v48 = [objc_opt_self() bundleForClass_];
      v68 = 0xE000000000000000;
      v49 = sub_24140E19C();
      v51 = v50;

      v35 = v70;
      sub_2413F48B0(v49, v51, v70);

      goto LABEL_37;
    case 12:
    case 21:

      v22 = "GM_MODEL_NOT_YET_QUEUED{DEVICE}";
      v23 = MEMORY[0x277D84F90];
      v24 = 0xD000000000000018;
      goto LABEL_34;
    case 14:

      v22 = "GM_MODEL_SHARED_IPAD";
      v23 = MEMORY[0x277D84F90];
      v24 = 0xD00000000000001BLL;
      goto LABEL_34;
    case 15:

      v29 = sub_2413F554C();
      if (v30)
      {
        v31 = v29;
        v32 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542930, &qword_241413070);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_241412B00;
        *(inited + 32) = v31;
        v34 = inited + 32;
        *(inited + 40) = v32;
        v35 = v70;
        sub_2413EC3EC(v70, inited, 0xD000000000000014, 0x8000000241419520, 0xD000000000000024, 0x8000000241419AA0);
        swift_setDeallocating();
        sub_2413F6104(v34);
        goto LABEL_37;
      }

      v52 = sub_24140E70C();
      v53 = sub_24140ED7C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_2413B9000, v52, v53, "Could not identify ineligible device language", v54, 2u);
        MEMORY[0x245CE6B00](v54, -1, -1);
      }

      v46 = v69;
      v35 = v70;
      goto LABEL_38;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542930, &qword_241413070);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_241412B00;
      *(v43 + 32) = v19;
      v44 = v43 + 32;
      *(v43 + 40) = v21;
      v35 = v70;
      sub_2413EC3EC(v70, v43, 0xD000000000000014, 0x8000000241419520, 0xD000000000000021, 0x8000000241419AD0);
      swift_setDeallocating();
      sub_2413F6104(v44);
      goto LABEL_37;
    case 17:

      v36 = [v13 &selRef_footerViewForSection_];
      v37 = [v36 &selRef_stopAnimating];

      if (!v37)
      {
        sub_2413F59E0();
LABEL_45:
        v35 = v70;
        if (!v42)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v38 = sub_24140EC1C();
      v40 = v39;

      v41 = sub_2413F59E0();
      if (!v40)
      {
        goto LABEL_45;
      }

      v35 = v70;
      if (!v42)
      {
LABEL_46:

        goto LABEL_47;
      }

      if (v38 == v41 && v42 == v40)
      {

LABEL_49:
        sub_2413EC3EC(v35, MEMORY[0x277D84F90], 0xD000000000000014, 0x8000000241419520, 0x4C45444F4D5F4D47, 0xEE005954504D455FLL);
        return;
      }

      v65 = sub_24140EF1C();

      if (v65)
      {
        goto LABEL_49;
      }

LABEL_47:
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_24140EE6C();

      v71 = 0xD00000000000002BLL;
      v72 = 0x8000000241419A70;
      v55 = [objc_opt_self() currentDevice];
      v56 = [v55 sf_deviceType];

      sub_24140EC1C();
      v57 = sub_24140EC3C();
      v59 = v58;

      MEMORY[0x245CE5AF0](v57, v59);

      type metadata accessor for GMFooterUtility();
      v60 = swift_getObjCClassFromMetadata();
      v61 = [objc_opt_self() bundleForClass_];
      v68 = 0xE000000000000000;
      v62 = sub_24140E19C();
      v64 = v63;

      sub_2413F4BB4(v62, v64, v35);

LABEL_37:
      v46 = v69;
LABEL_38:
      [v46 reloadSpecifier_];
      return;
    case 19:

      v23 = MEMORY[0x277D84F90];
      v28 = 0x8000000241419B00;
      v35 = v70;
      v45 = v70;
      v24 = 0xD000000000000014;
      goto LABEL_36;
    case 23:
    case 24:

      if (sub_2413F5E0C())
      {
        v22 = "D_LATER_WIFI{DEVICE}";
        v23 = MEMORY[0x277D84F90];
        v24 = 0xD00000000000001CLL;
      }

      else
      {
        v22 = "GM_MODEL_OUT_OF_SPACE_PRE_JOIN";
        v23 = MEMORY[0x277D84F90];
        v24 = 0xD000000000000024;
      }

LABEL_34:
      v28 = v22 | 0x8000000000000000;
      goto LABEL_35;
    default:

      v25 = sub_24140E70C();
      v26 = sub_24140ED8C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2413B9000, v25, v26, "Defaulting to empty", v27, 2u);
        MEMORY[0x245CE6B00](v27, -1, -1);
      }

LABEL_20:
      v23 = MEMORY[0x277D84F90];
      v24 = 0x4C45444F4D5F4D47;
      v28 = 0xEE005954504D455FLL;
LABEL_35:
      v35 = v70;
      v45 = v70;
LABEL_36:
      sub_2413EC3EC(v45, v23, 0xD000000000000014, 0x8000000241419520, v24, v28);
      goto LABEL_37;
  }
}

id sub_2413F48B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542940, &qword_2414130A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_24140E19C();
  v15 = v14;

  v31 = a1;
  v32 = a2;
  sub_24140E7AC();
  MEMORY[0x245CE5AF0](32, 0xE100000000000000);
  MEMORY[0x245CE5AF0](v13, v15);
  v17 = v31;
  v16 = v32;
  sub_2413EC3EC(a3, MEMORY[0x277D84F90], 0, 0, v31, v32);
  sub_2413F6808();
  v18 = swift_getObjCClassFromMetadata();
  v19 = NSStringFromClass(v18);
  if (!v19)
  {
    sub_24140EC1C();
    v19 = sub_24140EC0C();
  }

  [a3 setProperty:v19 forKey:*MEMORY[0x277D3FF48]];

  v31 = v17;
  v32 = v16;
  v29 = v13;
  v30 = v15;
  v20 = sub_24140E2FC();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_2413F6854();
  v21 = sub_24140EDFC();
  v23 = v22;
  v25 = v24;
  sub_2413E8560(v10, &qword_27E542940, &qword_2414130A8);

  if (v25)
  {
  }

  v31 = v21;
  v32 = v23;
  v29 = v17;
  v30 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542958, &qword_2414130B0);
  sub_2413F68A8();
  v27 = sub_24140EDDC();
  return [a3 addFooterHyperlinkWithRange:v27 target:v28 action:{v4, sel_openStorageManagement}];
}

id sub_2413F4BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542940, &qword_2414130A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_24140E19C();
  v15 = v14;

  v65 = a1;
  v66 = a2;
  sub_24140E7AC();
  MEMORY[0x245CE5AF0](32, 0xE100000000000000);
  MEMORY[0x245CE5AF0](v13, v15);
  v17 = v65;
  v16 = v66;
  v18 = [objc_opt_self() sharedPreferences];
  v19 = [v18 languageCode];

  if (!v19)
  {
LABEL_13:
  }

  v61 = v10;
  v62 = a3;
  v20 = sub_24140EC1C();
  v22 = v21;

  v23 = sub_2413F554C();
  if (!v24 || (v25 = v23, v26 = v24, v60 = v4, v27 = sub_2413EC240(v20, v22), v29 = v28, , !v29))
  {

    goto LABEL_13;
  }

  v58 = v27;
  v59 = v17;
  v30 = sub_2413F52D8(0, 1, 1, MEMORY[0x277D84F90]);
  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  v33 = v31 >> 1;
  v34 = v32 + 1;
  if (v31 >> 1 <= v32)
  {
    v30 = sub_2413F52D8((v31 > 1), v32 + 1, 1, v30);
    v31 = *(v30 + 3);
    v33 = v31 >> 1;
  }

  *(v30 + 2) = v34;
  v35 = &v30[16 * v32];
  *(v35 + 4) = v25;
  *(v35 + 5) = v26;
  v36 = v32 + 2;
  if (v33 < (v32 + 2))
  {
    v30 = sub_2413F52D8((v31 > 1), v32 + 2, 1, v30);
  }

  v37 = v58;
  v38 = v59;
  *(v30 + 2) = v36;
  v39 = &v30[16 * v34];
  *(v39 + 4) = v37;
  *(v39 + 5) = v29;
  v40 = v62;
  sub_2413EC3EC(v62, v30, 0xD000000000000014, 0x8000000241419520, v38, v16);
  sub_2413F6808();
  v41 = swift_getObjCClassFromMetadata();
  v42 = NSStringFromClass(v41);
  if (!v42)
  {
    sub_24140EC1C();
    v42 = sub_24140EC0C();
  }

  [v40 setProperty:v42 forKey:*MEMORY[0x277D3FF48]];

  sub_2413F3B3C(v30);

  v43 = sub_24140EC2C();
  v45 = v44;

  v65 = v43;
  v66 = v45;
  v63 = v13;
  v64 = v15;
  v46 = sub_24140E2FC();
  v47 = v61;
  (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
  sub_2413F6854();
  sub_24140E7AC();
  v48 = sub_24140EDFC();
  v50 = v49;
  v52 = v51;
  sub_2413E8560(v47, &qword_27E542940, &qword_2414130A8);

  v53 = v60;
  if (v52)
  {
  }

  v65 = v48;
  v66 = v50;
  v63 = v43;
  v64 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542958, &qword_2414130B0);
  sub_2413F68A8();
  v55 = sub_24140EDDC();
  return [v40 addFooterHyperlinkWithRange:v55 target:v56 action:{v53, sel_openAppleIntelligenceURL}];
}

void sub_2413F5098()
{
  if (qword_27E5426F0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
    sub_24140ED0C();
  }
}

id GMFooterUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMFooterUtility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2413F51D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542998, &unk_2414130E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2413F52D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542930, &qword_241413070);
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

void *sub_2413F53E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2413F5404(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2413F5404(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542980, &qword_2414130C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542988, &qword_2414130D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2413F554C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542968, &qword_2414130B8);
  MEMORY[0x28223BE20](v0 - 8);
  v42 = &v38 - v1;
  v2 = sub_24140E2DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = sub_24140E2FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v40 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542970, &qword_2414130C0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v38 - v19;
  sub_24140E2AC();
  sub_24140E2EC();
  v21 = *(v10 + 8);
  v43 = v9;
  v41 = v21;
  v21(v17, v9);
  sub_24140E2BC();
  v22 = *(v3 + 8);
  v22(v8, v2);
  v23 = sub_24140E26C();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v20, 1, v23) == 1)
  {
    v25 = &qword_27E542970;
    v26 = &qword_2414130C0;
LABEL_5:
    sub_2413E8560(v20, v25, v26);
    return 0;
  }

  v38 = sub_24140E25C();
  v39 = v27;
  (*(v24 + 8))(v20, v23);
  sub_24140E2AC();
  sub_24140E2EC();
  v28 = v43;
  v29 = v41;
  v41(v15, v43);
  v20 = v42;
  sub_24140E2CC();
  v22(v6, v2);
  v30 = sub_24140E29C();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v20, 1, v30) == 1)
  {

    v25 = &qword_27E542968;
    v26 = &qword_2414130B8;
    goto LABEL_5;
  }

  v33 = sub_24140E25C();
  v35 = v34;
  (*(v31 + 8))(v20, v30);
  v36 = v40;
  sub_24140E2AC();
  v44 = v38;
  v45 = v39;
  MEMORY[0x245CE5AF0](95, 0xE100000000000000);
  MEMORY[0x245CE5AF0](v33, v35);

  v37 = sub_24140E27C();

  v29(v36, v28);
  return v37;
}

uint64_t sub_2413F59E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542968, &qword_2414130B8);
  MEMORY[0x28223BE20](v0 - 8);
  v39 = &v34 - v1;
  v2 = sub_24140E2DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = sub_24140E2FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542970, &qword_2414130C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  sub_24140E2AC();
  sub_24140E2EC();
  v18 = *(v9 + 8);
  v18(v14, v8);
  sub_24140E2BC();
  v19 = *(v3 + 8);
  v38 = v2;
  v19(v7, v2);
  v20 = sub_24140E26C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v17, 1, v20) == 1)
  {
    v22 = &qword_27E542970;
    v23 = &qword_2414130C0;
    v24 = v17;
LABEL_5:
    sub_2413E8560(v24, v22, v23);
    return 0;
  }

  v35 = sub_24140E25C();
  v36 = v25;
  (*(v21 + 8))(v17, v20);
  sub_24140E2AC();
  v26 = v37;
  sub_24140E2EC();
  v18(v12, v8);
  v27 = v39;
  sub_24140E2CC();
  v19(v26, v38);
  v28 = sub_24140E29C();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {

    v22 = &qword_27E542968;
    v23 = &qword_2414130B8;
    v24 = v27;
    goto LABEL_5;
  }

  v31 = sub_24140E25C();
  v33 = v32;
  (*(v29 + 8))(v27, v28);
  v40 = v35;
  v41 = v36;
  MEMORY[0x245CE5AF0](45, 0xE100000000000000);
  MEMORY[0x245CE5AF0](v31, v33);

  return v40;
}

uint64_t sub_2413F5E0C()
{
  v0 = sub_24140E46C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  sub_24140E43C();
  sub_24140E42C();
  sub_24140E41C();

  sub_24140E47C();
  (*(v1 + 104))(v4, *MEMORY[0x277D61DE0], v0);
  v7 = sub_24140E45C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    v9 = sub_24140E44C();

    v10 = v9 ^ 1;
  }

  else
  {

    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_2413F5F9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542990, &qword_2414130D8);
    v3 = sub_24140EE4C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_24140EF8C();
      sub_24140E7AC();
      sub_24140EC5C();
      result = sub_24140EFAC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_24140EF1C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_2413F6808()
{
  result = qword_27E542948;
  if (!qword_27E542948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E542948);
  }

  return result;
}

unint64_t sub_2413F6854()
{
  result = qword_27E542950;
  if (!qword_27E542950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542950);
  }

  return result;
}

unint64_t sub_2413F68A8()
{
  result = qword_27E542960;
  if (!qword_27E542960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542958, &qword_2414130B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542960);
  }

  return result;
}

unint64_t sub_2413F690C()
{
  result = qword_27E542978;
  if (!qword_27E542978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542978);
  }

  return result;
}

uint64_t sub_2413F696C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_24140E5DC();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_2413F69F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_24140E5DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v12 + v13, v11, v8);
  return swift_endAccess();
}

uint64_t sub_2413F6B18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_24140E5DC();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

id GMAvailabilityProvider.init(provider:)(uint64_t a1)
{
  v2 = sub_24140E57C();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24140E40C();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24140E52C();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A0, &unk_2414130F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v30 - v10;
  v12 = sub_24140E5DC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v32 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v30 - v16;
  v18 = a1;
  sub_2413F709C(a1, v11);
  v19 = *(v13 + 48);
  v20 = v19(v11, 1, v12);
  v33 = v4;
  if (v20 == 1)
  {
    v31 = a1;
    sub_24140E3DC();
    v21 = sub_24140E3EC();
    v30[0] = v22;
    v30[1] = v21;
    (*(v36 + 8))(v6, v4);
    v23 = *MEMORY[0x277D0E2B8];
    (*(v39 + 104))(v38, v23, v40);
    sub_24140E51C();
    sub_24140E5CC();
    (*(v35 + 8))(v8, v37);
    if (v19(v11, 1, v12) != 1)
    {
      sub_2413F710C(v11);
    }

    v18 = v31;
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    v23 = *MEMORY[0x277D0E2B8];
  }

  v24 = *(v13 + 32);
  v25 = v34;
  v24(&v34[OBJC_IVAR____TtC24AssistantSettingsSupport22GMAvailabilityProvider_provider], v17, v12);
  sub_24140E3FC();
  sub_24140E3EC();
  (*(v36 + 8))(v6, v33);
  (*(v39 + 104))(v38, v23, v40);
  sub_24140E51C();
  v26 = v32;
  sub_24140E5CC();
  (*(v35 + 8))(v8, v37);
  v24(&v25[OBJC_IVAR____TtC24AssistantSettingsSupport22GMAvailabilityProvider_diffusionModelProvider], v26, v12);
  v27 = type metadata accessor for GMAvailabilityProvider(0);
  v41.receiver = v25;
  v41.super_class = v27;
  v28 = objc_msgSendSuper2(&v41, sel_init);
  sub_2413F710C(v18);
  return v28;
}

uint64_t sub_2413F709C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A0, &unk_2414130F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2413F710C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A0, &unk_2414130F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for GMAvailabilityProvider(uint64_t a1)
{
  result = qword_28120FD58;
  if (!qword_28120FD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2413F71DC()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2413F7304;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A8, &unk_241413100);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2413F745C;
  v0[13] = &block_descriptor_0;
  v0[14] = v2;
  [v1 currentAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2413F7304()
{

  return MEMORY[0x2822009F8](sub_2413F73E4, 0, 0);
}

uint64_t sub_2413F73E4()
{
  v1 = *(v0 + 144);
  v2 = [v1 status];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2413F745C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_2413F74F4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2413F761C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A8, &unk_241413100);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2413F745C;
  v0[13] = &block_descriptor_3;
  v0[14] = v2;
  [v1 currentAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2413F761C()
{

  return MEMORY[0x2822009F8](sub_2413F76FC, 0, 0);
}

uint64_t sub_2413F76FC()
{
  v1 = *(v0 + 144);
  v2 = [v1 unavailabiltyReasons];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2413F7774()
{
  v1 = sub_24140E5DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC24AssistantSettingsSupport22GMAvailabilityProvider_provider;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  sub_24140E53C();
  return (*(v2 + 8))(v4, v1);
}

id GMAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAvailabilityProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413F7A14()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2413F7304;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A8, &unk_241413100);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2413F745C;
  v0[13] = &block_descriptor_20;
  v0[14] = v2;
  [v1 currentAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2413F7B58()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2413F761C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A8, &unk_241413100);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2413F745C;
  v0[13] = &block_descriptor_17;
  v0[14] = v2;
  [v1 currentAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2413F7C80()
{
  v1 = sub_24140E5DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = OBJC_IVAR____TtC24AssistantSettingsSupport22GMAvailabilityProvider_provider;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_24140E53C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2413F7DAC@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = sub_24140E5DC();
  return (*(*(v6 - 8) + 16))(a2, v4 + v5, v6);
}

uint64_t dispatch thunk of GMAvailabilityProviding.availabilityStatus()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2413F8554;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GMAvailabilityProviding.unavailabilityReason()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2413F8554;

  return v7(a1, a2);
}

uint64_t sub_2413F80A8(uint64_t a1)
{
  result = sub_24140E5DC();
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

uint64_t dispatch thunk of GMAvailabilityProvider.availabilityStatus()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2413F82EC;

  return v5();
}

uint64_t sub_2413F82EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of GMAvailabilityProvider.unavailabilityReason()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2413F8554;

  return v5();
}

uint64_t sub_2413F8578()
{
  v1 = *(v0 + 48);
  sub_24140E65C();
  v2 = v1 + OBJC_IVAR____TtC24AssistantSettingsSupport20GMEnrollmentProvider_featureName;
  v3 = *(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport20GMEnrollmentProvider_featureName);
  v4 = *(v2 + 8);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2413F8638;

  return MEMORY[0x28214D5D0](v3, v4);
}

uint64_t sub_2413F8638(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_2413F87CC;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_2413F8760;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2413F8760()
{
  v1 = *(v0 + 72);
  v2 = sub_24140E66C();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2413F87CC()
{
  v16 = v0;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_24140E72C();
  __swift_project_value_buffer(v2, qword_28120FD70);
  v3 = v1;
  v4 = sub_24140E70C();
  v5 = sub_24140ED7C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_24140EF7C();
    v10 = sub_2413F10BC(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2413B9000, v4, v5, "#gmenrollment Error trying to enroll into queue %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CE6B00](v7, -1, -1);
    MEMORY[0x245CE6B00](v6, -1, -1);
  }

  v11 = *(v0 + 64);
  sub_24140E62C();
  v12 = sub_24140E5EC();

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_2413F89B8()
{
  v1 = *(v0 + 48);
  sub_24140E65C();
  v2 = v1 + OBJC_IVAR____TtC24AssistantSettingsSupport20GMEnrollmentProvider_featureName;
  v3 = *(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport20GMEnrollmentProvider_featureName);
  v4 = *(v2 + 8);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2413F8A78;

  return MEMORY[0x28214D5C8](v3, v4);
}

uint64_t sub_2413F8A78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_2413F8BA0;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_2413F9478;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2413F8BA0()
{
  v16 = v0;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_24140E72C();
  __swift_project_value_buffer(v2, qword_28120FD70);
  v3 = v1;
  v4 = sub_24140E70C();
  v5 = sub_24140ED7C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_24140EF7C();
    v10 = sub_2413F10BC(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2413B9000, v4, v5, "#gmenrollment Error trying to get ticket status %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CE6B00](v7, -1, -1);
    MEMORY[0x245CE6B00](v6, -1, -1);
  }

  v11 = *(v0 + 64);
  sub_24140E62C();
  v12 = sub_24140E5EC();

  v13 = *(v0 + 8);

  return v13(v12);
}

id GMEnrollmentProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMEnrollmentProvider.init()()
{
  v1 = &v0[OBJC_IVAR____TtC24AssistantSettingsSupport20GMEnrollmentProvider_featureName];
  *v1 = 0x6C6C2E64756F6C63;
  *(v1 + 1) = 0xE90000000000006DLL;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for GMEnrollmentProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

id GMEnrollmentProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMEnrollmentProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2413F8EAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2413F82EC;

  return sub_2413F8558();
}

uint64_t sub_2413F8F3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2413F8554;

  return sub_2413F8998();
}

uint64_t dispatch thunk of GMEnrollmentProviding.enroll()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2413F8554;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GMEnrollmentProviding.status()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2413F8554;

  return v7(a1, a2);
}

uint64_t dispatch thunk of GMEnrollmentProvider.enroll()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2413F82EC;

  return v5();
}

uint64_t dispatch thunk of GMEnrollmentProvider.status()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2413F8554;

  return v5();
}

unint64_t sub_2413F949C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2413F999C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t GMEligibilityContext.description.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0x6E6564646968;
    case 2:
    case 7:
    case 14:
      v3 = 9;
      goto LABEL_23;
    case 3:
      return 0xD000000000000013;
    case 4:
      return 0x6465756575716E65;
    case 5:
      return 0x6E45657669746361;
    case 6:
      return 0x646574696D696CLL;
    case 8:
      v3 = 13;
      goto LABEL_23;
    case 9:
      return 0xD000000000000017;
    case 10:
    case 23:
      v3 = 11;
      goto LABEL_23;
    case 11:
    case 22:
      return 0xD00000000000001FLL;
    case 12:
    case 15:
      v3 = 10;
LABEL_23:
      result = v3 | 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD00000000000001ELL;
      break;
    case 17:
      result = 0xD000000000000030;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0x5049646572616873;
      break;
    case 20:
      result = 0x646574704F746F6ELL;
      break;
    case 21:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0xD000000000000016;
      break;
    case 25:
      result = 0xD000000000000020;
      break;
    case 26:
      result = 0xD00000000000002ELL;
      break;
    default:
      result = sub_24140EF2C();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_2413F97E4()
{
  v0 = sub_24140E61C();
  v2 = v1;
  sub_24140E62C();
  v3 = sub_24140E5FC();
  v4 = sub_24140E61C();
  v6 = v5;

  if (v4 == v0 && v6 == v2)
  {

LABEL_5:

    return 5;
  }

  v7 = sub_24140EF1C();

  if (v7)
  {
    goto LABEL_5;
  }

  v9 = sub_24140E60C();
  v10 = sub_24140E61C();
  v12 = v11;

  if (v10 == v0 && v12 == v2)
  {

LABEL_10:

    return 4;
  }

  v13 = sub_24140EF1C();

  if (v13)
  {
    goto LABEL_10;
  }

  v14 = sub_24140E5EC();
  v15 = sub_24140E61C();
  v17 = v16;

  if (v15 == v0 && v17 == v2)
  {

    return 3;
  }

  else
  {
    v18 = sub_24140EF1C();

    if (v18)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_2413F999C(unint64_t result)
{
  if (result > 0x1A)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2413F99B0()
{
  result = qword_27E5429B8;
  if (!qword_27E5429B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5429B8);
  }

  return result;
}

uint64_t sub_2413F9A14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429C8, &qword_241413460);
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429D0, &qword_241413468);
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v39 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429D8, &qword_241413470);
  sub_2413F3A84(&qword_27E5429E0, &qword_27E5429D8, &qword_241413470, MEMORY[0x277CE14C0]);
  sub_24140EA0C();
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  v10 = sub_24140EA1C();
  v12 = v11;
  v14 = v13;
  v15 = sub_2413F3A84(&qword_27E5429F0, &qword_27E5429C8, &qword_241413460, MEMORY[0x277CDE5A0]);
  sub_24140EABC();
  sub_2413FE310(v10, v12, v14 & 1);

  (*(v35 + 8))(v5, v3);
  v40[0] = v3;
  v40[1] = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v38;
  v17 = v36;
  sub_24140EA3C();
  (*(v37 + 8))(v9, v17);
  v18 = swift_allocObject();
  v19 = v2[3];
  *(v18 + 3) = v2[2];
  *(v18 + 4) = v19;
  v20 = v2[5];
  *(v18 + 5) = v2[4];
  *(v18 + 6) = v20;
  v21 = v2[1];
  *(v18 + 1) = *v2;
  *(v18 + 2) = v21;
  v22 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429F8, &qword_241413478) + 36));
  v23 = v16;
  *v22 = sub_2413FE320;
  v22[1] = v18;
  v22[2] = 0;
  v22[3] = 0;
  v24 = objc_opt_self();
  sub_2413FE144(v2, v40);
  v25 = [v24 defaultCenter];
  v26 = *MEMORY[0x277CEF110];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A00, &qword_241413480);
  v28 = v26;
  sub_24140EDAC();

  v29 = swift_allocObject();
  v30 = v2[3];
  *(v29 + 3) = v2[2];
  *(v29 + 4) = v30;
  v31 = v2[5];
  *(v29 + 5) = v2[4];
  *(v29 + 6) = v31;
  v32 = v2[1];
  *(v29 + 1) = *v2;
  *(v29 + 2) = v32;
  v33 = (v23 + *(v27 + 56));
  *v33 = sub_2413FE3B0;
  v33[1] = v29;
  return sub_2413FE144(v2, v40);
}

uint64_t sub_2413F9E94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A38, &qword_2414134B8);
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v62 = v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A40, &qword_2414134C0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v64 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = v60 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A48, &qword_2414134C8);
  v73 = *(v66 - 8);
  v9 = MEMORY[0x28223BE20](v66);
  v77 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A50, &qword_2414134D0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v76 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A58, &qword_2414134D8);
  v71 = *(v18 - 8);
  v72 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v70 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v67 = v60 - v21;
  sub_2413FA88C();
  v74 = a1;
  v82 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  sub_24140EB0C();
  v22 = MEMORY[0x277D839B0];
  v23 = MEMORY[0x277D839C8];
  v68 = v17;
  v69 = v12;
  if (v78)
  {
    (*(v73 + 56))(v17, 1, 1, v66);
  }

  else
  {
    sub_24140E95C();
    v61 = v3;
    sub_2413FE2C4();
    sub_24140EDBC();
    v24 = sub_24140EA1C();
    v60[1] = v60;
    *&v82 = v24;
    *(&v82 + 1) = v25;
    v83 = v26 & 1;
    v84 = v27;
    MEMORY[0x28223BE20](v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A60, &qword_2414134E0);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542A68, &qword_2414134E8);
    v29 = sub_2413F3A84(&qword_27E542A70, &qword_27E542A68, &qword_2414134E8, MEMORY[0x277CDF068]);
    v78 = v28;
    v79 = v22;
    v80 = v29;
    v81 = v23;
    swift_getOpaqueTypeConformance2();
    sub_24140EB6C();
    v30 = v73;
    v3 = v61;
    v31 = v66;
    (*(v73 + 32))(v17, v12, v66);
    (*(v30 + 56))(v17, 0, 1, v31);
  }

  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  *&v82 = sub_24140EA1C();
  *(&v82 + 1) = v32;
  v83 = v33 & 1;
  v84 = v34;
  MEMORY[0x28223BE20](v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A60, &qword_2414134E0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542A68, &qword_2414134E8);
  v36 = sub_2413F3A84(&qword_27E542A70, &qword_27E542A68, &qword_2414134E8, MEMORY[0x277CDF068]);
  v78 = v35;
  v79 = v22;
  v80 = v36;
  v81 = v23;
  v37 = 1;
  swift_getOpaqueTypeConformance2();
  sub_24140EB6C();
  v38 = sub_24140EC0C();
  v39 = sub_24140EC0C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v38, v39, 0);

  if (AppBooleanValue)
  {
    v41 = v62;
    sub_2413FAB74();
    v42 = v63;
    (*(v63 + 32))(v75, v41, v3);
    v37 = 0;
  }

  else
  {
    v42 = v63;
  }

  v43 = v75;
  (*(v42 + 56))(v75, v37, 1, v3);
  v44 = v70;
  v45 = *(v71 + 16);
  v46 = v72;
  v45(v70, v67, v72);
  sub_2413FE544(v68, v76, &qword_27E542A50, &qword_2414134D0);
  v47 = v73;
  v48 = v43;
  v49 = *(v73 + 16);
  v50 = v66;
  v49(v69, v77, v66);
  v51 = v48;
  v52 = v64;
  sub_2413FE544(v51, v64, &qword_27E542A40, &qword_2414134C0);
  v53 = v65;
  v45(v65, v44, v46);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A78, &qword_2414134F0);
  sub_2413FE544(v76, &v53[v54[12]], &qword_27E542A50, &qword_2414134D0);
  v55 = v69;
  v49(&v53[v54[16]], v69, v50);
  sub_2413FE544(v52, &v53[v54[20]], &qword_27E542A40, &qword_2414134C0);
  sub_2413E8560(v75, &qword_27E542A40, &qword_2414134C0);
  v56 = *(v47 + 8);
  v56(v77, v50);
  sub_2413E8560(v68, &qword_27E542A50, &qword_2414134D0);
  v57 = v72;
  v58 = *(v71 + 8);
  v58(v67, v72);
  sub_2413E8560(v52, &qword_27E542A40, &qword_2414134C0);
  v56(v55, v50);
  sub_2413E8560(v76, &qword_27E542A50, &qword_2414134D0);
  return (v58)(v70, v57);
}

uint64_t sub_2413FA88C()
{
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  sub_24140EA1C();
  sub_24140E95C();
  sub_24140EDBC();
  sub_24140EA1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AF8, &qword_241413548);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542B00, &qword_241413550);
  type metadata accessor for AFUseDeviceSpeakerForTTS();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542B08, &qword_241413558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542B10, &qword_241413560);
  sub_24140E94C();
  sub_2413F3A84(&qword_27E542B18, &qword_27E542B10, &qword_241413560, MEMORY[0x277CDF038]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2413FE664(&qword_27E542710, &unk_2414128F4);
  swift_getOpaqueTypeConformance2();
  return sub_24140EB5C();
}

uint64_t sub_2413FAB74()
{
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  v22 = sub_24140EA1C();
  v23 = v0;
  v24 = v1 & 1;
  v25 = v2;
  v3 = sub_24140E96C();
  v21 = 1;
  sub_2413FD83C(&v13);
  v28 = *&v14[16];
  v29 = *&v14[32];
  v26 = v13;
  v27 = *v14;
  v31[2] = *&v14[16];
  v31[3] = *&v14[32];
  v31[4] = *&v14[48];
  v31[1] = *v14;
  v30 = *&v14[48];
  v31[0] = v13;
  sub_2413FE41C(&v26, &v16);
  sub_2413E8560(v31, &qword_27E542A80, &qword_2414134F8);
  *&v20[7] = v26;
  *&v20[71] = v30;
  *&v20[55] = v29;
  *&v20[39] = v28;
  *&v20[23] = v27;
  *&v14[33] = *&v20[32];
  *&v14[49] = *&v20[48];
  *v15 = *&v20[64];
  *&v14[1] = *v20;
  v13 = v3;
  v14[0] = v21;
  *&v15[15] = *(&v30 + 1);
  *&v14[17] = *&v20[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A88, &qword_241413500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A90, &qword_241413508);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542A98, &qword_241413510);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542AA0, &qword_241413518);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E542AA8, &qword_241413520);
  v7 = sub_24140E94C();
  v8 = sub_2413F3A84(&qword_27E542AB0, &qword_27E542AA8, &qword_241413520, MEMORY[0x277CDF038]);
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = MEMORY[0x277CDDDA0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v5;
  v17 = OpaqueTypeConformance2;
  v10 = swift_getOpaqueTypeConformance2();
  v11 = sub_2413FE494();
  v16 = v4;
  v17 = &type metadata for SiriResponses.CarAudioRoute;
  v18 = v10;
  v19 = v11;
  swift_getOpaqueTypeConformance2();
  sub_2413F3A84(&qword_27E542AC0, &qword_27E542A90, &qword_241413508, MEMORY[0x277CE1198]);
  return sub_24140EB5C();
}

uint64_t sub_2413FAED0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A20, &unk_2414134A0);
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &v33 - v2;
  v34 = sub_24140E1DC();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24140E2FC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24140EBFC();
  MEMORY[0x28223BE20](v7 - 8);
  v35 = sub_24140E1EC();
  v8 = *(v35 - 8);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542938, &qword_2414130A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_24140E24C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v39 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24140E23C();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_2413E8560(v15, &qword_27E542938, &qword_2414130A0);
  }

  (*(v17 + 32))(v39, v15, v16);
  sub_24140EBEC();
  sub_24140E2AC();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v34);
  sub_24140E1FC();
  v34 = v16;
  if (qword_28120FD68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_24140E1CC();
  v20 = v0[3];
  v43 = v0[2];
  v44 = v20;
  v21 = v0[5];
  v45 = v0[4];
  v46 = v21;
  v22 = v0[1];
  v41 = *v0;
  v42 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A28, &qword_2414134B0);
  v23 = *(v8 + 72);
  v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_241413020;
  v26 = v25 + v24;
  v27 = *(v8 + 16);
  v28 = v35;
  v27(v26, v11, v35);
  v29 = v40;
  v27(v26 + v23, v40, v28);
  sub_2413FE3B8();
  v30 = v36;
  v31 = v39;
  sub_24140EA5C();

  (*(v37 + 8))(v30, v38);
  v32 = *(v8 + 8);
  v32(v11, v28);
  v32(v29, v28);
  return (*(v17 + 8))(v31, v34);
}

uint64_t sub_2413FB530()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedPreferences];
  [v1 synchronize];

  v2 = [v0 sharedPreferences];
  [v2 useDeviceSpeakerForTTS];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A10, &qword_241413490);
  sub_24140EB1C();
  v3 = [v0 sharedPreferences];
  v4 = [v3 bluetoothPreferredCarAudioRoute];

  if (v4)
  {
    sub_24140EC1C();
  }

  sub_24140EEEC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A18, &qword_241413498);
  sub_24140EB1C();
  v5 = [v0 sharedPreferences];
  [v5 siriResponseShouldAlwaysPrint];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  sub_24140EB1C();
  v6 = [v0 sharedPreferences];
  [v6 alwaysShowRecognizedSpeech];

  sub_24140EB1C();
  sub_24140EB1C();
  [objc_opt_self() saeAvailable];
  return sub_24140EB1C();
}

uint64_t sub_2413FB7B4(uint64_t a1, uint64_t a2)
{
  [objc_opt_self() saeAvailable];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  return sub_24140EB1C();
}

uint64_t sub_2413FB824@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_24140E94C();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B10, &qword_241413560);
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B08, &qword_241413558);
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B00, &qword_241413550);
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  MEMORY[0x28223BE20](v13);
  v31 = v26 - v15;
  v29 = sub_24140E95C();
  v28 = v16;
  v26[3] = v17;
  v27 = v18;
  v43 = *a1;
  v44 = v43;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A10, &qword_241413490);
  sub_24140EB2C();
  v39 = a1;
  type metadata accessor for AFUseDeviceSpeakerForTTS();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B20, &qword_241413568);
  sub_2413FE664(&qword_27E542B28, &unk_2414128B4);
  sub_2413F3A84(&qword_27E542B30, &qword_27E542B20, &qword_241413568, MEMORY[0x277CE14C0]);
  sub_24140EB3C();
  sub_24140E93C();
  v19 = sub_2413F3A84(&qword_27E542B18, &qword_27E542B10, &qword_241413560, MEMORY[0x277CDF038]);
  v20 = MEMORY[0x277CDDDA0];
  v21 = v34;
  sub_24140EA8C();
  (*(v35 + 8))(v6, v21);
  (*(v32 + 8))(v9, v7);
  *&v40 = v7;
  *(&v40 + 1) = v21;
  v41 = v19;
  v42 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v31;
  sub_24140EA9C();
  (*(v33 + 8))(v12, v10);
  v40 = v44;
  sub_24140EB0C();
  *&v40 = v10;
  *(&v40 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2413FE664(&qword_27E542710, &unk_2414128F4);
  v24 = v36;
  sub_24140EACC();
  return (*(v37 + 8))(v23, v24);
}

uint64_t sub_2413FBD70@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B38, &qword_241413570);
  v36 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v33 = &v33 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v33 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  *v15 = sub_24140EA1C();
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  *(v15 + 3) = v18;
  *(v15 + 4) = 3;
  v15[40] = 1;
  sub_24140E95C();
  sub_24140EDBC();
  *v13 = sub_24140EA1C();
  *(v13 + 1) = v19;
  v13[16] = v20 & 1;
  *(v13 + 3) = v21;
  *(v13 + 4) = 1;
  v13[40] = 1;
  sub_24140E95C();
  sub_24140EDBC();
  *v10 = sub_24140EA1C();
  *(v10 + 1) = v22;
  v10[16] = v23 & 1;
  *(v10 + 3) = v24;
  *(v10 + 4) = 2;
  v10[40] = 1;
  v25 = v37;
  v26 = *(v36 + 16);
  v26(v37, v15, v1);
  v27 = v33;
  v26(v33, v13, v1);
  v28 = v34;
  v26(v34, v10, v1);
  v29 = v35;
  v26(v35, v25, v1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B40, &qword_241413578);
  v26(&v29[*(v30 + 48)], v27, v1);
  v26(&v29[*(v30 + 64)], v28, v1);
  v31 = *(v36 + 8);
  v31(v10, v1);
  v31(v13, v1);
  v31(v15, v1);
  v31(v28, v1);
  v31(v27, v1);
  return (v31)(v37, v1);
}

void sub_2413FC1FC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [objc_opt_self() sharedPreferences];
  [v3 setUseDeviceSpeakerForTTS_];
}

uint64_t sub_2413FC26C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A68, &qword_2414134E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-v4];
  v10 = *(a1 + 32);
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  sub_24140EB2C();
  v8 = a1;
  sub_24140EB4C();
  v9 = v11;
  sub_24140EB0C();
  LOBYTE(v9) = v10;
  sub_2413F3A84(&qword_27E542A70, &qword_27E542A68, &qword_2414134E8, MEMORY[0x277CDF068]);
  sub_24140EACC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2413FC450@<X0>(uint64_t a1@<X8>)
{
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  result = sub_24140EA1C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2413FC534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A68, &qword_2414134E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-v4];
  v10 = *(a1 + 48);
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  sub_24140EB2C();
  v8 = a1;
  sub_24140EB4C();
  v9 = v11;
  sub_24140EB0C();
  LOBYTE(v9) = v10;
  sub_2413F3A84(&qword_27E542A70, &qword_27E542A68, &qword_2414134E8, MEMORY[0x277CDF068]);
  sub_24140EACC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2413FC718@<X0>(uint64_t a1@<X8>)
{
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  result = sub_24140EA1C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_2413FC7FC(uint64_t a1, unsigned __int8 *a2, SEL *a3)
{
  v4 = *a2;
  v5 = [objc_opt_self() sharedPreferences];
  [v5 *a3];
}

uint64_t sub_2413FC86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_24140E94C();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AA8, &qword_241413520);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AA0, &qword_241413518);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A98, &qword_241413510);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v27 - v16;
  v27[2] = sub_24140E95C();
  v27[1] = v18;
  v27[0] = v19;
  v40 = *(a1 + 16);
  v41 = v40;
  v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A18, &qword_241413498);
  sub_24140EB2C();
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AC8, &qword_241413528);
  sub_2413FE4F0();
  sub_2413F3A84(&qword_27E542AD8, &qword_27E542AC8, &qword_241413528, MEMORY[0x277CE14C0]);
  sub_24140EB3C();
  sub_24140E93C();
  v20 = sub_2413F3A84(&qword_27E542AB0, &qword_27E542AA8, &qword_241413520, MEMORY[0x277CDF038]);
  v21 = MEMORY[0x277CDDDA0];
  v22 = v31;
  sub_24140EA8C();
  (*(v32 + 8))(v6, v22);
  (*(v28 + 8))(v9, v7);
  *&v37 = v7;
  *(&v37 + 1) = v22;
  v38 = v20;
  v39 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v29;
  sub_24140EA9C();
  (*(v30 + 8))(v13, v24);
  v37 = v41;
  sub_24140EB0C();
  *&v37 = v24;
  *(&v37 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_2413FE494();
  v25 = v33;
  sub_24140EACC();
  return (*(v34 + 8))(v17, v25);
}

uint64_t sub_2413FCD64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a1;
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AE0, &qword_241413530);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AE8, &qword_241413538);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v37 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  sub_24140E95C();
  v43 = sub_2413FE2C4();
  sub_24140EDBC();
  *v16 = sub_24140EA1C();
  *(v16 + 1) = v17;
  v16[16] = v18 & 1;
  *(v16 + 3) = v19;
  v45 = v16;
  *(v16 + 16) = 258;
  v47 = *(v38 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A08, &qword_241413488);
  sub_24140EB0C();
  v37 = "@32@0:8@16@24";
  if (v46 == 1)
  {
    sub_24140E95C();
    sub_24140EDBC();
    *v14 = sub_24140EA1C();
    *(v14 + 1) = v20;
    v14[16] = v21 & 1;
    *(v14 + 3) = v22;
    *(v14 + 16) = 257;
    v23 = v44;
    (*(v7 + 32))(v44, v14, v6);
    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v44;
  }

  v25 = v6;
  (*(v7 + 56))(v23, v24, 1, v6);
  sub_24140E95C();
  sub_24140EDBC();
  *v14 = sub_24140EA1C();
  *(v14 + 1) = v26;
  v14[16] = v27 & 1;
  *(v14 + 3) = v28;
  *(v14 + 16) = 256;
  v29 = *(v7 + 16);
  v30 = v40;
  v29(v40, v45, v6);
  v31 = v42;
  sub_2413FE544(v23, v42, &qword_27E542AE0, &qword_241413530);
  v32 = v39;
  v29(v39, v14, v25);
  v33 = v41;
  v29(v41, v30, v25);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542AF0, &qword_241413540);
  sub_2413FE544(v31, &v33[*(v34 + 48)], &qword_27E542AE0, &qword_241413530);
  v29(&v33[*(v34 + 64)], v32, v25);
  v35 = *(v7 + 8);
  v35(v14, v25);
  sub_2413E8560(v44, &qword_27E542AE0, &qword_241413530);
  v35(v45, v25);
  v35(v32, v25);
  sub_2413E8560(v31, &qword_27E542AE0, &qword_241413530);
  return (v35)(v30, v25);
}

void sub_2413FD2D8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = [objc_opt_self() sharedPreferences];
  v3 = sub_24140EC0C();

  [v2 setBluetoothPreferredCarAudioRoute_];
}

uint64_t sub_2413FD3B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7053656369766544;
  v4 = 0xED000072656B6165;
  if (v2 != 1)
  {
    v3 = 1346646593;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 5260872;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x7053656369766544;
  v8 = 0xED000072656B6165;
  if (*a2 != 1)
  {
    v7 = 1346646593;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 5260872;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24140EF1C();
  }

  return v11 & 1;
}

uint64_t sub_2413FD4B8()
{
  sub_24140EF8C();
  sub_24140EC5C();

  return sub_24140EFAC();
}

uint64_t sub_2413FD558(uint64_t a1)
{
  sub_24140EC5C();
}

uint64_t sub_2413FD5E4(uint64_t a1)
{
  sub_24140EF8C();
  sub_24140EC5C();

  return sub_24140EFAC();
}

unint64_t sub_2413FD680@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2413FDFC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2413FD6B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xED000072656B6165;
  v5 = 0x7053656369766544;
  if (v2 != 1)
  {
    v5 = 1346646593;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5260872;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2413FD70C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A18, &qword_241413498);
  sub_24140EB0C();
  sub_24140E95C();
  sub_2413FE2C4();
  sub_24140EDBC();
  return sub_24140EA1C();
}

uint64_t sub_2413FD83C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2413FD70C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (AFIsInternalInstall())
  {
    sub_24140E95C();
    sub_2413FE2C4();
    sub_24140EDBC();
    v9 = sub_24140EA1C();
    v11 = v10;
    v13 = v12;
    v15 = v14 & 1;
    sub_2413E6D94(v9, v10, v14 & 1);
    sub_24140E7AC();
    sub_2413FE310(v9, v11, v15);

    sub_2413E6D94(v9, v11, v15);
    sub_24140E7AC();
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v9 = 0;
    v11 = 0;
    v15 = 0;
    v13 = 0;
  }

  sub_2413E6D94(v2, v4, v6 & 1);
  sub_24140E7AC();
  sub_2413FE5AC(0, v16, v9, v11, v15, v13);
  sub_2413FE5F8(0, v16, v9, v11, v15, v13);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = v16;
  *(a1 + 48) = v9;
  *(a1 + 56) = v11;
  *(a1 + 64) = v15;
  *(a1 + 72) = v13;
  sub_2413FE5F8(0, v16, v9, v11, v15, v13);
  sub_2413FE310(v2, v4, v6 & 1);
}

id sub_2413FDABC()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SiriResponsesController();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  sub_2413FE00C(v15);
  v13[8] = v15[2];
  v13[9] = v15[3];
  v13[10] = v15[4];
  v13[11] = v15[5];
  v13[6] = v15[0];
  v13[7] = v15[1];
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429C0, &unk_241413380));
  sub_2413FE144(v15, v13);
  v3 = sub_24140E97C();
  v4 = [v3 view];
  if (!v4)
  {
    v5 = v3;
    goto LABEL_6;
  }

  v5 = v4;
  result = [v1 view];
  if (result)
  {
    v7 = result;
    [result addSubview_];

    result = [v1 view];
    if (result)
    {
      v8 = result;
      [result bounds];
      v10 = v9;
      v12 = v11;

      [v5 setFrame_];
      [v5 setAutoresizingMask_];
      [v1 addChildViewController_];
      [v3 didMoveToParentViewController_];

LABEL_6:
      return sub_2413FE17C(v15);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id SiriResponsesController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24140EC0C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SiriResponsesController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_24140EC0C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SiriResponsesController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id SiriResponsesController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriResponsesController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriResponsesController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SiriResponsesController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriResponsesController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2413FDFC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24140EEEC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_2413FE00C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AFUseDeviceSpeakerForTTS();
  sub_24140EAFC();
  sub_24140EAFC();
  sub_24140EAFC();
  sub_24140EAFC();
  sub_24140EAFC();
  result = sub_24140EAFC();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = v3;
  *(a1 + 88) = v4;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2413FE1C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2413FE224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2413FE2C4()
{
  result = qword_27E5429E8;
  if (!qword_27E5429E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E5429E8);
  }

  return result;
}

uint64_t sub_2413FE310(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

unint64_t sub_2413FE3B8()
{
  result = qword_27E542A30;
  if (!qword_27E542A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542A30);
  }

  return result;
}

uint64_t sub_2413FE41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542A80, &qword_2414134F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2413FE494()
{
  result = qword_27E542AB8;
  if (!qword_27E542AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542AB8);
  }

  return result;
}

unint64_t sub_2413FE4F0()
{
  result = qword_27E542AD0;
  if (!qword_27E542AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542AD0);
  }

  return result;
}

uint64_t sub_2413FE544(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2413FE5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_2413E6D94(a3, a4, a5 & 1);

    sub_24140E7AC();
  }
}

void sub_2413FE5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_2413FE310(a3, a4, a5 & 1);
  }
}

uint64_t sub_2413FE664(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AFUseDeviceSpeakerForTTS();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriResponses.CarAudioRoute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriResponses.CarAudioRoute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2413FE81C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24140E4BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218], MEMORY[0x277D0E220]), v7 = sub_24140EBCC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_2414087E8(&qword_28120FCF8, MEMORY[0x277D0E218], MEMORY[0x277D0E228]);
      v15 = sub_24140EBDC();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_2413FEA34(uint64_t a1, uint64_t a2)
{
  v3 = sub_24140E48C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_2414087E8(&qword_27E542BA0, MEMORY[0x277D0E038], MEMORY[0x277D0E040]), v7 = sub_24140EBCC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_2414087E8(&qword_27E542BA8, MEMORY[0x277D0E038], MEMORY[0x277D0E048]);
      v15 = sub_24140EBDC();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_2413FED4C(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2413FEDAC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___GMSpecifierController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2413FEE44;
}

void sub_2413FEE44(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id GMSpecifierController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMSpecifierController.init()()
{
  v1 = v0;
  v2 = sub_24140E50C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5429A0, &unk_2414130F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___GMSpecifierController_availabilityNotifications] = 0;
  v9 = sub_24140E5DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = type metadata accessor for GMAvailabilityProvider(0);
  v11 = objc_allocWithZone(v10);
  v12 = GMAvailabilityProvider.init(provider:)(v8);
  v13 = &v1[OBJC_IVAR___GMSpecifierController_availabilityProvider];
  *(v13 + 3) = v10;
  *(v13 + 4) = &protocol witness table for GMAvailabilityProvider;
  *v13 = v12;
  sub_24140869C(v13, v27);
  v14 = v28;
  v15 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v15 + 24))(v14, v15);
  (*(v3 + 32))(&v1[OBJC_IVAR___GMSpecifierController_availability], v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v27);
  v16 = type metadata accessor for GMOptInStatusProvider();
  v17 = [objc_allocWithZone(v16) init];
  v18 = &v1[OBJC_IVAR___GMSpecifierController_optInStatusProvider];
  *(v18 + 3) = v16;
  *(v18 + 4) = &protocol witness table for GMOptInStatusProvider;
  *v18 = v17;
  v19 = type metadata accessor for GMEnrollmentProvider();
  v20 = [objc_allocWithZone(v19) init];
  v21 = &v1[OBJC_IVAR___GMSpecifierController_enrollmentProvider];
  *(v21 + 3) = v19;
  *(v21 + 4) = &protocol witness table for GMEnrollmentProvider;
  *v21 = v20;
  *&v1[OBJC_IVAR___GMSpecifierController_analytics] = [objc_allocWithZone(type metadata accessor for GMAnalyticsProvider()) init];
  v22 = type metadata accessor for GMSpecifierController(0);
  v26.receiver = v1;
  v26.super_class = v22;
  v23 = objc_msgSendSuper2(&v26, sel_init);
  sub_241403C68();
  sub_2414049B8();

  return v23;
}

uint64_t type metadata accessor for GMSpecifierController(uint64_t a1)
{
  result = qword_28120FCC0;
  if (!qword_28120FCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *GMSpecifierController.__allocating_init(availabilityProvider:optInStatus:enrollmentProvider:analytics:)(void *a1, void *a2, void *a3, void *a4)
{
  v19 = a2;
  v20 = a3;
  v7 = sub_24140E50C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR___GMSpecifierController_availabilityNotifications] = 0;
  sub_24140869C(a1, &v11[OBJC_IVAR___GMSpecifierController_availabilityProvider]);
  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v12 + 24))(v13, v12);
  (*(v8 + 32))(&v11[OBJC_IVAR___GMSpecifierController_availability], v10, v7);
  v14 = v19;
  sub_24140869C(v19, &v11[OBJC_IVAR___GMSpecifierController_optInStatusProvider]);
  v15 = v20;
  sub_24140869C(v20, &v11[OBJC_IVAR___GMSpecifierController_enrollmentProvider]);
  *&v11[OBJC_IVAR___GMSpecifierController_analytics] = a4;
  v21.receiver = v11;
  v21.super_class = v4;
  v16 = a4;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  sub_241403C68();
  sub_2414049B8();

  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

void *GMSpecifierController.init(availabilityProvider:optInStatus:enrollmentProvider:analytics:)(void *a1, void *a2, void *a3, void *a4)
{
  v20 = a3;
  v8 = sub_24140E50C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___GMSpecifierController_availabilityNotifications] = 0;
  sub_24140869C(a1, &v4[OBJC_IVAR___GMSpecifierController_availabilityProvider]);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 24))(v12, v13);
  (*(v9 + 32))(&v4[OBJC_IVAR___GMSpecifierController_availability], v11, v8);
  sub_24140869C(a2, &v4[OBJC_IVAR___GMSpecifierController_optInStatusProvider]);
  v14 = v20;
  sub_24140869C(v20, &v4[OBJC_IVAR___GMSpecifierController_enrollmentProvider]);
  *&v4[OBJC_IVAR___GMSpecifierController_analytics] = a4;
  v15 = type metadata accessor for GMSpecifierController(0);
  v21.receiver = v4;
  v21.super_class = v15;
  v16 = a4;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  sub_241403C68();
  sub_2414049B8();

  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

uint64_t sub_2413FF634()
{
  v1[5] = v0;
  v2 = sub_24140E4DC();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_24140E4AC();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_24140E50C();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2413FF7B8, 0, 0);
}

uint64_t sub_2413FF7B8()
{
  v1 = (*(v0 + 40) + OBJC_IVAR___GMSpecifierController_enrollmentProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_2413FF8E8;

  return v6(v2, v3);
}

uint64_t sub_2413FF8E8(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](sub_2413FF9E8, 0, 0);
}

uint64_t sub_2413FF9E8()
{
  v1 = (v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v29 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 40);
  v6 = *(v5 + OBJC_IVAR___GMSpecifierController_availabilityProvider + 24);
  v7 = *(v5 + OBJC_IVAR___GMSpecifierController_availabilityProvider + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR___GMSpecifierController_availabilityProvider), v6);
  (*(v7 + 24))(v6, v7);
  v8 = OBJC_IVAR___GMSpecifierController_availability;
  swift_beginAccess();
  (*(v3 + 40))(v5 + v8, v2, v4);
  swift_endAccess();
  (*(v3 + 16))(v29, v5 + v8, v4);
  v9 = (*(v3 + 88))(v29, v4);
  if (v9 == *MEMORY[0x277D0DFA8])
  {
    v1 = (v0 + 88);
    v10 = *(v0 + 88);
    v11 = *(v0 + 136);
    v12 = *(v0 + 112);
    v14 = (v0 + 80);
    v13 = *(v0 + 80);
    v16 = (v0 + 72);
    v15 = *(v0 + 72);
    (*(*(v0 + 104) + 96))(v12, *(v0 + 96));
    (*(v13 + 32))(v10, v12, v15);
    v17 = v11;
    v18 = sub_24140674C(v10, v11);
  }

  else
  {
    v19 = *(v0 + 136);
    if (v9 == *MEMORY[0x277D0DFB0])
    {
      v1 = (v0 + 64);
      v20 = *(v0 + 64);
      v21 = *(v0 + 112);
      v14 = (v0 + 56);
      v22 = *(v0 + 56);
      v16 = (v0 + 48);
      v23 = *(v0 + 48);
      (*(*(v0 + 104) + 96))(v21, *(v0 + 96));
      (*(v22 + 32))(v20, v21, v23);
      v18 = sub_241406AA0(v20, v19);
    }

    else
    {
      v18 = sub_2413F97E4();
      v16 = (v0 + 96);
      v14 = (v0 + 104);
    }
  }

  v24 = *v1;
  v25 = *v16;
  v26 = *v14;

  (*(v26 + 8))(v24, v25);

  v27 = *(v0 + 8);

  return v27(v18);
}

uint64_t sub_2413FFE2C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2414088EC;

  return sub_2413FF634();
}

uint64_t sub_2413FFED4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_2413FFEF8, 0, 0);
}

uint64_t sub_2413FFEF8()
{
  if (*(v0 + 32) == 1)
  {
    sub_241402D00();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2413FFF9C;

  return sub_241400488();
}

uint64_t sub_2413FFF9C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24140021C(char a1, void *aBlock, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 40) = a1;
  *(v3 + 24) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_24140029C, 0, 0);
}

uint64_t sub_24140029C()
{
  if (*(v0 + 40) == 1)
  {
    sub_241402D00();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_241400340;

  return sub_241400488();
}

uint64_t sub_241400340(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_241400488()
{
  v1[5] = v0;
  v2 = sub_24140E4AC();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = sub_24140E4DC();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = sub_24140E50C();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241400618, 0, 0);
}

uint64_t sub_241400618()
{
  v70 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[5];
  v5 = OBJC_IVAR___GMSpecifierController_availability;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = (*(v2 + 88))(v1, v3);
  if (v6 == *MEMORY[0x277D0DFA8])
  {
    v7 = v0[16];
    v8 = v0[9];
    v9 = v0[6];
    v10 = v0[7];
    (*(v0[15] + 96))(v7, v0[14]);
    (*(v10 + 32))(v8, v7, v9);
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[6];
    v14 = v0[7];
    v15 = sub_24140E72C();
    __swift_project_value_buffer(v15, qword_28120FD70);
    (*(v14 + 16))(v11, v12, v13);
    v16 = sub_24140E70C();
    v17 = sub_24140ED6C();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v69 = v67;
      *v22 = 136315394;
      *(v22 + 4) = sub_2413F10BC(0x6174536863746566, 0xED00002928737574, &v69);
      *(v22 + 12) = 2080;
      sub_2414087E8(&qword_27E542B80, MEMORY[0x277D0E058], MEMORY[0x277D0E060]);
      v23 = sub_24140EEFC();
      v25 = v24;
      v28 = *(v20 + 8);
      v27 = v20 + 8;
      v26 = v28;
      v28(v19, v21);
      v29 = sub_2413F10BC(v23, v25, &v69);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_2413B9000, v16, v17, "%s Availability Provider says GM is restricted: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE6B00](v67, -1, -1);
      MEMORY[0x245CE6B00](v22, -1, -1);
    }

    else
    {

      v53 = *(v20 + 8);
      v27 = v20 + 8;
      v26 = v53;
      v53(v19, v21);
    }

    v0[21] = v27;
    v0[22] = v26;
    v54 = swift_task_alloc();
    v0[23] = v54;
    *v54 = v0;
    v54[1] = sub_241400FDC;
    v55 = v0[9];

    return sub_241407788(v55);
  }

  else if (v6 == *MEMORY[0x277D0DFB0])
  {
    v30 = v0[16];
    v31 = v0[13];
    v32 = v0[10];
    v33 = v0[11];
    (*(v0[15] + 96))(v30, v0[14]);
    (*(v33 + 32))(v31, v30, v32);
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v34 = v0[12];
    v35 = v0[13];
    v36 = v0[10];
    v37 = v0[11];
    v38 = sub_24140E72C();
    __swift_project_value_buffer(v38, qword_28120FD70);
    (*(v37 + 16))(v34, v35, v36);
    v39 = sub_24140E70C();
    v40 = sub_24140ED6C();
    v41 = os_log_type_enabled(v39, v40);
    v43 = v0[11];
    v42 = v0[12];
    v44 = v0[10];
    if (v41)
    {
      v45 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = v68;
      *v45 = 136315394;
      *(v45 + 4) = sub_2413F10BC(0x6174536863746566, 0xED00002928737574, &v69);
      *(v45 + 12) = 2080;
      sub_2414087E8(&qword_28120FCF0, MEMORY[0x277D0E238], MEMORY[0x277D0E240]);
      v46 = sub_24140EEFC();
      v48 = v47;
      v51 = *(v43 + 8);
      v50 = v43 + 8;
      v49 = v51;
      v51(v42, v44);
      v52 = sub_2413F10BC(v46, v48, &v69);

      *(v45 + 14) = v52;
      _os_log_impl(&dword_2413B9000, v39, v40, "%s Availability Provider says GM is unavailable: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE6B00](v68, -1, -1);
      MEMORY[0x245CE6B00](v45, -1, -1);
    }

    else
    {

      v63 = *(v43 + 8);
      v50 = v43 + 8;
      v49 = v63;
      v63(v42, v44);
    }

    v0[17] = v50;
    v0[18] = v49;
    v64 = swift_task_alloc();
    v0[19] = v64;
    *v64 = v0;
    v64[1] = sub_241400E24;
    v65 = v0[13];

    return sub_241402300(v65);
  }

  else if (v6 == *MEMORY[0x277D0E278])
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v57 = sub_24140E72C();
    __swift_project_value_buffer(v57, qword_28120FD70);
    v58 = sub_24140E70C();
    v59 = sub_24140ED6C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v69 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_2413F10BC(0x6174536863746566, 0xED00002928737574, &v69);
      _os_log_impl(&dword_2413B9000, v58, v59, "%s Availability Provider says GM is available.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x245CE6B00](v61, -1, -1);
      MEMORY[0x245CE6B00](v60, -1, -1);
    }

    v62 = v0[1];

    return v62(5);
  }

  else
  {
    v66 = v0[14];

    return MEMORY[0x2821FDEB8](v66, v66);
  }
}

uint64_t sub_241400E24(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_241400F24, 0, 0);
}

uint64_t sub_241400F24()
{
  (*(v0 + 144))(*(v0 + 104), *(v0 + 80));
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_241400FDC(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_2414010DC, 0, 0);
}

uint64_t sub_2414010DC()
{
  (*(v0 + 176))(*(v0 + 72), *(v0 + 48));
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_241401308(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2414088EC;

  return sub_241400488();
}

uint64_t sub_2414013B0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24140E4AC();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_24140E4DC();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_24140E50C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241401540, 0, 0);
}

uint64_t sub_241401540()
{
  v36 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (!Strong)
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v14 = sub_24140E72C();
    __swift_project_value_buffer(v14, qword_28120FD70);
    v15 = sub_24140E70C();
    v16 = sub_24140ED6C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2413F10BC(0xD000000000000015, 0x800000024141A750, &v35);
      _os_log_impl(&dword_2413B9000, v15, v16, "%s Delegate is not set. Bailing.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x245CE6B00](v18, -1, -1);
      MEMORY[0x245CE6B00](v17, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 40);
  sub_241402D00();
  (*(v3 + 16))(v2, v5, v4);
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == *MEMORY[0x277D0DFA8])
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    (*(*(v0 + 128) + 96))(v7, *(v0 + 120));
    (*(v10 + 32))(v8, v7, v9);
    v11 = swift_task_alloc();
    *(v0 + 168) = v11;
    *v11 = v0;
    v11[1] = sub_241401ED8;
    v12 = *(v0 + 80);

    return sub_241407788(v12);
  }

  if (v6 == *MEMORY[0x277D0DFB0])
  {
    v20 = *(v0 + 136);
    v21 = *(v0 + 112);
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);
    (*(*(v0 + 128) + 96))(v20, *(v0 + 120));
    (*(v23 + 32))(v21, v20, v22);
    v24 = swift_task_alloc();
    *(v0 + 152) = v24;
    *v24 = v0;
    v24[1] = sub_241401AB0;
    v25 = *(v0 + 112);

    return sub_241402300(v25);
  }

  if (v6 == *MEMORY[0x277D0E278])
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v26 = sub_24140E72C();
    __swift_project_value_buffer(v26, qword_28120FD70);
    v27 = sub_24140E70C();
    v28 = sub_24140ED6C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_2413F10BC(0xD000000000000015, 0x800000024141A750, &v35);
      *(v29 + 12) = 2080;
      v31 = GMEligibilityContext.description.getter(5);
      v33 = sub_2413F10BC(v31, v32, &v35);

      *(v29 + 14) = v33;
      _os_log_impl(&dword_2413B9000, v27, v28, "%s Availability Provider says GM is available. Context: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE6B00](v30, -1, -1);
      MEMORY[0x245CE6B00](v29, -1, -1);
    }

    [*(v0 + 144) updateWithContext_];
    swift_unknownObjectRelease();
LABEL_11:

    v19 = *(v0 + 8);

    return v19();
  }

  v34 = *(v0 + 120);

  return MEMORY[0x2821FDEB8](v34, v34);
}

uint64_t sub_241401AB0(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_241401BB0, 0, 0);
}