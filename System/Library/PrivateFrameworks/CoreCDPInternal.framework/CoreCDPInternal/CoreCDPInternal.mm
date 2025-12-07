uint64_t UserManagementLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = UserManagementLibraryCore_frameworkLibrary;
  v6 = UserManagementLibraryCore_frameworkLibrary;
  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278E25C20;
    v8 = *off_278E25C30;
    v9 = 0;
    v4[3] = _sl_dlopen();
    UserManagementLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_24510D28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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
    v3[3] = &unk_278E259A8;
    v3[4] = &v4;
    __getUMUserManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_24510D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_8_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_24510D988()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24510D9D0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24510DA1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24510DA68()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24510DADC()
{
  v1 = sub_2451937C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24510DBA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_245110800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_245111368(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_2451133D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245113F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24511494C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2451201C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245121E60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_245125088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245127518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245129F54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24512A5C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t CDPRecoveryStatusFromOTRecoveryStatus(uint64_t result)
{
  v1 = result;
  if (result < 3)
  {
    return result;
  }

  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    CDPRecoveryStatusFromOTRecoveryStatus_cold_1(v1, v2);
  }

  return 0;
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_24513A068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24513A374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245144424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245145124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245146544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_245146A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245147788(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t LocalAuthenticationLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = LocalAuthenticationLibraryCore_frameworkLibrary;
  v6 = LocalAuthenticationLibraryCore_frameworkLibrary;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278E25950;
    v8 = *off_278E25960;
    v9 = 0;
    v4[3] = _sl_dlopen();
    LocalAuthenticationLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_24514AD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  LocalAuthenticationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t LocalAuthenticationLibrary()
{
  v3 = 0;
  v0 = LocalAuthenticationLibraryCore(&v3);
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

id getLAContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAContextClass_softClass;
  v7 = getLAContextClass_softClass;
  if (!getLAContextClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getLAContextClass_block_invoke;
    v3[3] = &unk_278E259A8;
    v3[4] = &v4;
    __getLAContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_24514AF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLAContextClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationLibrary();
  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLAContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getLAContextClass_block_invoke_cold_1();
    return getLAEnvironmentClass();
  }

  return result;
}

id getLAEnvironmentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAEnvironmentClass_softClass;
  v7 = getLAEnvironmentClass_softClass;
  if (!getLAEnvironmentClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getLAEnvironmentClass_block_invoke;
    v3[3] = &unk_278E259A8;
    v3[4] = &v4;
    __getLAEnvironmentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_24514B03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLAEnvironmentClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationLibrary();
  result = objc_getClass("LAEnvironment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLAEnvironmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getLAEnvironmentClass_block_invoke_cold_1();
    return +[(CDPDFollowUpFactory *)v3];
  }

  return result;
}

void sub_24514F924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SetupAssistantLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278E25BB8;
    v7 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SetupAssistantLibraryCore_frameworkLibrary;
    if (SetupAssistantLibraryCore_frameworkLibrary)
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

  v2 = SetupAssistantLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "BYSetupAssistantFinishedDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __UserManagementLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  UserManagementLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UserManagementLibrary()
{
  v3 = 0;
  v0 = UserManagementLibraryCore(&v3);
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

CDPDClientHandler *__getUMUserManagerClass_block_invoke(uint64_t a1)
{
  UserManagementLibrary();
  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUMUserManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUMUserManagerClass_block_invoke_cold_1();
    return [(CDPDClientHandler *)v3 initWithConnection:v4 entitlements:v5 clientType:v6, v7];
  }

  return result;
}

void sub_245155824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_24515C100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24515EE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_245160944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_245167070(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_24516BB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24516C02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKBDeviceLockAssertionSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278E26298;
    v7 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MobileKeyBagLibraryCore_frameworkLibrary;
    if (MobileKeyBagLibraryCore_frameworkLibrary)
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

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MKBDeviceLockAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceLockAssertionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_24516EB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24516F490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v16 - 80));
  _Unwind_Resume(a1);
}

id sub_245174930()
{
  result = [v0 escrowInformationMetadata];
  if (result)
  {
    v2 = result;
    if ([result hasBuild] && (v3 = objc_msgSend(v2, sel_build)) != 0)
    {
      v4 = v3;
      v5 = sub_245193884();

      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_2451749D0()
{
  v1 = [v0 escrowInformationMetadata];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 clientMetadata];

    if (!v3)
    {
      __break(1u);
      goto LABEL_10;
    }

    v4 = [v3 hasDeviceMid];

    if (v4)
    {
      v5 = [v0 escrowInformationMetadata];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 clientMetadata];

        if (v7)
        {
          v8 = [v7 deviceMid];

          if (v8)
          {
            sub_245193884();
          }

          return;
        }

LABEL_10:
        __break(1u);
      }
    }
  }
}

id sub_245174AE4()
{
  v1 = [v0 escrowInformationMetadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 passcodeGeneration];
  if (v3)
  {
    v4 = v3;
    if ([v3 hasValue])
    {
      v5 = [v4 value];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = v2;
  }

  return v5;
}

id sub_245174C04(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = *v4;
  if (![v6 *a3])
  {
    return 0;
  }

  result = [v6 *a4];
  if (result)
  {
    v8 = result;
    v9 = sub_245193884();

    return v9;
  }

  return result;
}

id sub_245174CCC()
{
  v1 = *v0;
  result = [*v0 hasRecordStatus];
  if (result)
  {
    return ([v1 recordStatus] == 0);
  }

  return result;
}

id sub_245174D18()
{
  v1 = *v0;
  result = [*v0 hasRecordViability];
  if (result)
  {
    return ([v1 recordViability] < 2);
  }

  return result;
}

uint64_t sub_245174D64(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40[-v10];
  v13 = (*(v12 + 8))(v9);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    if (sub_2451938E4())
    {

      return 1;
    }

    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v28 = sub_245193824();
    __swift_project_value_buffer(v28, qword_28134D368);
    (*(v5 + 16))(v11, v2, a1);

    v29 = sub_245193804();
    v30 = sub_245193994();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v31 = 141559043;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      v32 = *(a2 + 16);
      v41 = v30;
      v33 = v32(a1, a2);
      if (v34)
      {
        v35 = v33;
      }

      else
      {
        v35 = 0x3E6C696E3CLL;
      }

      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = 0xE500000000000000;
      }

      (*(v5 + 8))(v11, a1);
      v37 = sub_2451830CC(v35, v36, &v43);

      *(v31 + 14) = v37;
      *(v31 + 22) = 2160;
      *(v31 + 24) = 1752392040;
      *(v31 + 32) = 2081;
      v38 = sub_2451830CC(v15, v16, &v43);

      *(v31 + 34) = v38;
      *(v31 + 42) = 2080;
      *(v31 + 44) = sub_2451830CC(0xD000000000000015, 0x80000002451B8CF0, &v43);
      _os_log_impl(&dword_24510B000, v29, v41, "Unexpected record label for record %{private,mask.hash}s (Got: %{private,mask.hash}s, Expected: %s*", v31, 0x34u);
      v39 = v42;
      swift_arrayDestroy();
      MEMORY[0x245D649E0](v39, -1, -1);
      MEMORY[0x245D649E0](v31, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, a1);
    }
  }

  else
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v18 = sub_245193824();
    __swift_project_value_buffer(v18, qword_28134D368);
    (*(v5 + 16))(v8, v2, a1);
    v19 = sub_245193804();
    v20 = sub_2451939A4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = v22;
      *v21 = 141558275;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      v23 = (*(a2 + 16))(a1, a2);
      if (v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0x3E6C696E3CLL;
      }

      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0xE500000000000000;
      }

      (*(v5 + 8))(v8, a1);
      v27 = sub_2451830CC(v25, v26, &v43);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_24510B000, v19, v20, "No label found on record %{private,mask.hash}s", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x245D649E0](v22, -1, -1);
      MEMORY[0x245D649E0](v21, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, a1);
    }
  }

  return 0;
}

uint64_t sub_245175280(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v15 = (*(v13 + 32))(v14, v13);
  if (!v16)
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v27 = sub_245193824();
    __swift_project_value_buffer(v27, qword_28134D368);
    (*(v7 + 16))(v10, v3, a2);
    v28 = sub_245193804();
    v29 = sub_2451939A4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v32 = (*(a3 + 16))(a2, a3);
      if (v33)
      {
        v34 = v32;
      }

      else
      {
        v34 = 0x3E6C696E3CLL;
      }

      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = 0xE500000000000000;
      }

      (*(v7 + 8))(v10, a2);
      v36 = sub_2451830CC(v34, v35, &v58);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_24510B000, v28, v29, "No serial found on record %{private,mask.hash}s", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x245D649E0](v31, -1, -1);
      MEMORY[0x245D649E0](v30, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, a2);
    }

    return 0;
  }

  v17 = v16;
  v57 = v15;
  v18 = &selRef_findMyiPhoneUUID;
  v19 = [a1 serialNumber];
  if (v19)
  {
    v20 = v7;
    v21 = v19;
    v22 = sub_245193884();
    v24 = v23;

    if (v57 == v22 && v17 == v24)
    {

LABEL_31:

      return 1;
    }

    v26 = sub_245193AA4();

    v7 = v20;
    v18 = &selRef_findMyiPhoneUUID;
    if (v26)
    {
      goto LABEL_31;
    }
  }

  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v37 = sub_245193824();
  __swift_project_value_buffer(v37, qword_28134D368);
  (*(v7 + 16))(v12, v3, a2);
  v38 = a1;

  v39 = sub_245193804();
  v40 = sub_245193994();
  if (!os_log_type_enabled(v39, v40))
  {

    swift_bridgeObjectRelease_n();
    (*(v7 + 8))(v12, a2);
    return 0;
  }

  v56 = v40;
  v41 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v58 = v55;
  *v41 = 141559299;
  *(v41 + 4) = 1752392040;
  *(v41 + 12) = 2081;
  v42 = (*(a3 + 16))(a2, a3);
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0x3E6C696E3CLL;
  }

  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0xE500000000000000;
  }

  (*(v7 + 8))(v12, a2);
  v46 = sub_2451830CC(v44, v45, &v58);

  *(v41 + 14) = v46;
  *(v41 + 22) = 2160;
  *(v41 + 24) = 1752392040;
  *(v41 + 32) = 2081;
  v47 = [v38 v18[495]];

  if (v47)
  {
    v49 = sub_245193884();
    v51 = v50;

    v52 = sub_2451830CC(v49, v51, &v58);

    *(v41 + 34) = v52;
    *(v41 + 42) = 2160;
    *(v41 + 44) = 1752392040;
    *(v41 + 52) = 2081;
    v53 = sub_2451830CC(v57, v17, &v58);

    *(v41 + 54) = v53;
    _os_log_impl(&dword_24510B000, v39, v56, "Serial number did not match for record %{private,mask.hash}s (Got: %{private,mask.hash}s, Expected: %{private,mask.hash}s", v41, 0x3Eu);
    v54 = v55;
    swift_arrayDestroy();
    MEMORY[0x245D649E0](v54, -1, -1);
    MEMORY[0x245D649E0](v41, -1, -1);

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_24517585C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - v11;
  v13 = [v10 localSecretGeneration];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 unsignedLongLongValue];

    v16 = (*(a3 + 48))(a2, a3);
    if (v17)
    {
      if (qword_28134D120 != -1)
      {
        swift_once();
      }

      v18 = sub_245193824();
      __swift_project_value_buffer(v18, qword_28134D368);
      (*(v6 + 16))(v9, v3, a2);
      v19 = sub_245193804();
      v20 = sub_245193994();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44 = v22;
        *v21 = 141558275;
        *(v21 + 4) = 1752392040;
        *(v21 + 12) = 2081;
        v23 = (*(a3 + 16))(a2, a3);
        if (v24)
        {
          v25 = v23;
        }

        else
        {
          v25 = 0x3E6C696E3CLL;
        }

        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = 0xE500000000000000;
        }

        (*(v6 + 8))(v9, a2);
        v27 = sub_2451830CC(v25, v26, &v44);

        *(v21 + 14) = v27;
        _os_log_impl(&dword_24510B000, v19, v20, "No secret generation found on record with id %{private,mask.hash}s", v21, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x245D649E0](v22, -1, -1);
        MEMORY[0x245D649E0](v21, -1, -1);

        return 2;
      }

      else
      {

        (*(v6 + 8))(v9, a2);
        return 2;
      }
    }

    else if (v15 == v16)
    {
      return 5;
    }

    else
    {
      v43 = v16;
      if (qword_28134D120 != -1)
      {
        swift_once();
      }

      v33 = sub_245193824();
      __swift_project_value_buffer(v33, qword_28134D368);
      (*(v6 + 16))(v12, v3, a2);
      v34 = sub_245193804();
      v35 = sub_245193994();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v44 = v37;
        *v36 = 141558787;
        *(v36 + 4) = 1752392040;
        *(v36 + 12) = 2081;
        v38 = (*(a3 + 16))(a2, a3);
        if (v39)
        {
          v40 = v38;
        }

        else
        {
          v40 = 0x3E6C696E3CLL;
        }

        if (v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0xE500000000000000;
        }

        (*(v6 + 8))(v12, a2);
        v42 = sub_2451830CC(v40, v41, &v44);

        *(v36 + 14) = v42;
        *(v36 + 22) = 2048;
        *(v36 + 24) = v43;
        *(v36 + 32) = 2048;
        *(v36 + 34) = v15;
        _os_log_impl(&dword_24510B000, v34, v35, "Secret generation mismatch for record with id %{private,mask.hash}s (Got: %llu Expected: %llu)", v36, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x245D649E0](v37, -1, -1);
        MEMORY[0x245D649E0](v36, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v12, a2);
      }

      return 3;
    }
  }

  else
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v29 = sub_245193824();
    __swift_project_value_buffer(v29, qword_28134D368);
    v30 = sub_245193804();
    v31 = sub_245193994();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_24510B000, v30, v31, "No passcode generation data found on device", v32, 2u);
      MEMORY[0x245D649E0](v32, -1, -1);
    }

    return 1;
  }
}

id sub_245175DE4(void *a1, void *a2)
{
  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v4 = sub_245193824();
  __swift_project_value_buffer(v4, qword_28134D368);
  sub_2451774B8(a1, v48);
  v5 = sub_245193804();
  v6 = sub_245193994();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = v49;
    v10 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v11 = (*(v10 + 16))(v9, v10);
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    v15 = sub_2451830CC(v13, v14, &v47);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_24510B000, v5, v6, "Evaluating record %{private,mask.hash}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245D649E0](v8, -1, -1);
    MEMORY[0x245D649E0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if ((*(v17 + 56))(v16, v17))
  {
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    v46 = sub_245174D64(v18, v19);
  }

  else
  {
    v46 = 0;
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_245175280(a2, v20, v21);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(v24 + 40))(v23, v24);
  v26 = v25;
  if (v25)
  {
  }

  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  if ((*(v28 + 56))(v27, v28) & 1) != 0 && (v29 = a1[3], v30 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v29), ((*(v30 + 64))(v29, v30)))
  {
    v31 = 1;
    if ((v22 & 1) == 0)
    {
LABEL_20:
      v32 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v31 = 3;
    if ((v22 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v32 = sub_24517585C(a2, v33, v34);
LABEL_23:
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  (*(v36 + 16))(v35, v36);
  v37 = a2;
  if (v38)
  {
    v39 = sub_245193874();
  }

  else
  {
    v39 = 0;
  }

  v41 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  (*(v40 + 24))(v41, v40);
  if (v42)
  {
    v43 = sub_245193874();
  }

  else
  {
    v43 = 0;
  }

  v44 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecordPresence:1 isValid:v46 & 1 recordId:v39 buildVersion:v43 isForCurrentDevice:v22 & 1 hasMachineId:v26 != 0 recordViability:v31 localSecretViability:v32 tlkRecoveryViability:3 sosViability:3 pcsRecoveryViability:3];

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v44;
}

void sub_24517623C(unint64_t a1, _DWORD *a2)
{
  if (qword_28134D120 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v4 = sub_245193824();
    __swift_project_value_buffer(v4, qword_28134D368);
    v5 = a2;
    v6 = sub_245193804();
    v7 = sub_2451939C4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v76 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      v10 = [v5 serialNumber];
      v69 = v5;

      if (!v10)
      {
        __break(1u);
LABEL_78:

        __break(1u);
LABEL_79:

        __break(1u);
LABEL_80:

        __break(1u);
        return;
      }

      v11 = sub_245193884();
      v13 = v12;

      a2 = sub_2451830CC(v11, v13, &v76);

      *(v8 + 14) = a2;
      _os_log_impl(&dword_24510B000, v6, v7, "Beginning account escrow record evaluation to find viable escrow records matching this device's serial number: %{private,mask.hash}s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x245D649E0](v9, -1, -1);
      MEMORY[0x245D649E0](v8, -1, -1);

      v5 = v69;
    }

    else
    {
    }

    v14 = sub_245193804();
    v15 = sub_245193994();
    if (os_log_type_enabled(v14, v15))
    {
      a2 = swift_slowAlloc();
      *a2 = 134217984;
      *(a2 + 1) = *(a1 + 16);

      _os_log_impl(&dword_24510B000, v14, v15, "Starting with %ld records", a2, 0xCu);
      MEMORY[0x245D649E0](a2, -1, -1);
    }

    else
    {
    }

    v70 = v5;

    v16 = sub_245193804();
    v17 = sub_245193994();
    if (!os_log_type_enabled(v16, v17))
    {

      goto LABEL_22;
    }

    v64 = v17;
    v63 = swift_slowAlloc();
    *v63 = 134217984;
    v18 = *(a1 + 16);
    v19 = a1 + 32;
    if (v18)
    {
      sub_245177534(0, &qword_27EE0C1F8, 0x277CFD4D0);
      v20 = 0;
      v21 = a1 + 32;
      while (1)
      {
        sub_2451774B8(v21, &v76);
        a2 = sub_245175DE4(&v76, v70);
        v22 = [a2 isForCurrentDevice];

        if (v22)
        {
          break;
        }

        ++v20;
        v21 += 40;
        if (v18 == v20)
        {
          goto LABEL_17;
        }
      }

      v18 = v20;
    }

LABEL_17:
    log = v16;
    v66 = a1;
    a1 = *(a1 + 16);
    if (a1 < v18)
    {
      v67 = v18;
      v68 = -1;
      v18 = a1;
      goto LABEL_58;
    }

    if (v18 == a1)
    {
      break;
    }

    v67 = a1;
    v68 = 1;
LABEL_58:
    v23 = 0;
    while (1)
    {
      v60 = __OFADD__(v23, v68);
      v23 += v68;
      if (v60)
      {
        break;
      }

      if (v18 == a1)
      {
        goto LABEL_73;
      }

      do
      {
        v61 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        if (v61 == a1)
        {
          v18 = a1;
          goto LABEL_60;
        }

        if (v61 >= a1)
        {
          goto LABEL_69;
        }

        sub_245177534(0, &qword_27EE0C1F8, 0x277CFD4D0);
        sub_2451774B8(v19 + 40 * v61, &v76);
        v62 = sub_245175DE4(&v76, v70);
        a2 = [v62 isForCurrentDevice];

        ++v18;
      }

      while (!a2);
      v18 = v61;
LABEL_60:
      if (v18 == v67)
      {
        goto LABEL_21;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v23 = 0;
LABEL_21:
  *(v63 + 4) = v23;
  a1 = v66;

  _os_log_impl(&dword_24510B000, log, v64, "Found %ld records for current device", v63, 0xCu);
  MEMORY[0x245D649E0](v63, -1, -1);

LABEL_22:
  v24 = 0;
  v25 = *(a1 + 16);
  a2 = (a1 + 32);
  while (1)
  {
    if (v24 == v25)
    {
      v78 = 0;
      v24 = v25;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      if (v24 >= *(a1 + 16))
      {
        goto LABEL_71;
      }

      sub_2451774B8(&a2[10 * v24++], &v76);
    }

    v73 = v76;
    v74 = v77;
    v75 = v78;
    if (!*(&v77 + 1))
    {
      v41 = 0;
      v42 = *(a1 + 16);
      while (1)
      {
        if (v41 == v42)
        {
          v78 = 0;
          v41 = v42;
          v76 = 0u;
          v77 = 0u;
        }

        else
        {
          if ((v41 & 0x8000000000000000) != 0)
          {
            goto LABEL_74;
          }

          if (v41 >= *(a1 + 16))
          {
            goto LABEL_75;
          }

          sub_2451774B8(&a2[10 * v41++], &v76);
        }

        v73 = v76;
        v74 = v77;
        v75 = v78;
        if (!*(&v77 + 1))
        {
          break;
        }

        sub_24517751C(&v73, v72);
        sub_245177534(0, &qword_27EE0C1F8, 0x277CFD4D0);
        sub_2451774B8(v72, v71);
        v43 = v70;
        v28 = sub_245175DE4(v71, v43);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        if ([v28 isForCurrentDevice] & 1) != 0 && (objc_msgSend(v28, sel_recordIsValid))
        {
          v9 = v43;
          v29 = sub_245193804();
          v44 = sub_2451939C4();
          if (!os_log_type_enabled(v29, v44))
          {
            goto LABEL_52;
          }

          v31 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *&v76 = v45;
          *v31 = 141558275;
          *(v31 + 4) = 1752392040;
          *(v31 + 12) = 2081;
          v46 = [v9 serialNumber];

          if (v46)
          {
            v47 = sub_245193884();
            v49 = v48;

            v50 = sub_2451830CC(v47, v49, &v76);

            *(v31 + 14) = v50;
            _os_log_impl(&dword_24510B000, v29, v44, "Records found but none were viable for device with serial number %{private,mask.hash}s", v31, 0x16u);
            __swift_destroy_boxed_opaque_existential_0Tm(v45);
            v40 = v45;
            goto LABEL_48;
          }

          goto LABEL_80;
        }
      }

      v7 = v70;
      v51 = sub_245193804();
      v52 = sub_2451939A4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *&v76 = v9;
        *v53 = 141558275;
        *(v53 + 4) = 1752392040;
        *(v53 + 12) = 2081;
        v54 = [v7 serialNumber];

        if (!v54)
        {
          goto LABEL_78;
        }

        v55 = sub_245193884();
        v57 = v56;

        v58 = sub_2451830CC(v55, v57, &v76);

        *(v53 + 14) = v58;
        _os_log_impl(&dword_24510B000, v51, v52, "No records found for device with serial number %{private,mask.hash}s", v53, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        MEMORY[0x245D649E0](v9, -1, -1);
        MEMORY[0x245D649E0](v53, -1, -1);
      }

      else
      {
      }

      v59 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v28 = [objc_allocWithZone(MEMORY[0x277CFD4D0]) initWithDefaultValues];
      [v59 initWithDeviceStatus_];
      goto LABEL_56;
    }

    sub_24517751C(&v73, v72);
    sub_245177534(0, &qword_27EE0C1F8, 0x277CFD4D0);
    sub_2451774B8(v72, v71);
    v26 = v70;
    v27 = sub_245175DE4(v71, v26);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    if (([v27 isForCurrentDevice] & 1) != 0 && objc_msgSend(v27, sel_localViability) == 1)
    {
      break;
    }
  }

  v9 = v26;
  v28 = v27;
  v29 = sub_245193804();
  v30 = sub_2451939C4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v76 = v33;
    *v31 = 138412803;
    *(v31 + 4) = v28;
    *v32 = v28;
    *(v31 + 12) = 2160;
    *(v31 + 14) = 1752392040;
    *(v31 + 22) = 2081;
    v34 = v28;
    v35 = [v9 serialNumber];

    if (!v35)
    {
      goto LABEL_79;
    }

    v36 = sub_245193884();
    v38 = v37;

    v39 = sub_2451830CC(v36, v38, &v76);

    *(v31 + 24) = v39;
    _os_log_impl(&dword_24510B000, v29, v30, "Found viable record: %@ for device with serial number %{private,mask.hash}s", v31, 0x20u);
    sub_2451775C8(v32);
    MEMORY[0x245D649E0](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    v40 = v33;
LABEL_48:
    MEMORY[0x245D649E0](v40, -1, -1);
    MEMORY[0x245D649E0](v31, -1, -1);
  }

  else
  {
LABEL_52:
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDeviceStatus_];
LABEL_56:
}

void *sub_245176D28(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_245193A64();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_2451772E0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x245D63BE0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_2451772E0((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_245177534(0, &qword_27EE0C1F0, 0x277D36D98);
        v16 = &off_285809C80;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_24517751C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_2451772E0((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_245177534(0, &qword_27EE0C1F0, 0x277D36D98);
        v16 = &off_285809C80;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_24517751C(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_245176F08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_245177534(0, &qword_27EE0C1F0, 0x277D36D98);
  v5 = sub_245193914();
  swift_getObjectType();
  v6 = a4;
  v7 = sub_245176D28(v5);

  sub_24517623C(v7, v6);
  v9 = v8;
  swift_deallocPartialClassInstance();
  return v9;
}

BOOL sub_245177048(void *a1, uint64_t *a2)
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

void *sub_245177078@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2451770A4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24517717C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24517718C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_245177448(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_245177234(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CDPRemoteApprovalEscapeOfferMask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2451772E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245177300(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_245177300(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C208, &qword_245199E58);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C210, &qword_245199E60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_245177448(uint64_t a1)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2451774B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24517751C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_245177534(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t sub_2451775C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C200, &qword_245199E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_2451776E8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t CDPRemoteApprovalEscapeOfferMask.description.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_245177CC0(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_245177CC0((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 1701736302;
  *(v5 + 5) = 0xE400000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_245177CC0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_245177CC0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    strcpy(v8 + 32, "otherDevices");
    v8[45] = 0;
    *(v8 + 23) = -5120;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_245177CC0(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_245177CC0((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, "remoteApproval");
    v11[47] = -18;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_245177CC0(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_245177CC0((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  strcpy(v14 + 32, "accountReset");
  v14[45] = 0;
  *(v14 + 23) = -5120;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_245177CC0(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_245177CC0((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 1885956979;
  *(v17 + 5) = 0xE400000000000000;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_34:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_245177CC0(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_245177CC0((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x797265766F636572;
  *(v20 + 5) = 0xEB0000000079654BLL;
  if ((a1 & 0x40) == 0)
  {
LABEL_17:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_39:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_245177CC0(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_245177CC0((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD000000000000011;
  *(v23 + 5) = 0x80000002451B8D10;
  if (a1 < 0)
  {
LABEL_44:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_245177CC0(0, *(v2 + 2) + 1, 1, v2);
    }

    v25 = *(v2 + 2);
    v24 = *(v2 + 3);
    if (v25 >= v24 >> 1)
    {
      v2 = sub_245177CC0((v24 > 1), v25 + 1, 1, v2);
    }

    *(v2 + 2) = v25 + 1;
    v26 = &v2[16 * v25];
    strcpy(v26 + 32, "piggybacking");
    v26[45] = 0;
    *(v26 + 23) = -5120;
  }

LABEL_49:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C290, qword_245199E88);
  sub_245177C14();
  v27 = sub_245193854();

  return v27;
}

__C::CDPRemoteApprovalEscapeOfferMask __swiftcall CDPRemoteApprovalEscapeOfferMask.removing(_:)(__C::CDPRemoteApprovalEscapeOfferMask a1)
{
  v2 = -1;
  if ((v1 & a1.rawValue) != 0)
  {
    v2 = ~a1.rawValue;
  }

  return (v2 & v1);
}

unint64_t sub_245177C14()
{
  result = qword_27EE0C298;
  if (!qword_27EE0C298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE0C290, qword_245199E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE0C298);
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

char *sub_245177CC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2A0, &qword_245199ED8);
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

char *sub_245177DCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C450, &qword_245199ED0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_245177ED0()
{
  v0 = sub_245193824();
  __swift_allocate_value_buffer(v0, qword_28134D368);
  __swift_project_value_buffer(v0, qword_28134D368);
  return sub_245193814();
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

uint64_t sub_245178074()
{
  v1 = [*(v0[26] + OBJC_IVAR___CDPDRPDExecutor_ledger) manateeRPDBlockingError];
  if (!v1)
  {
LABEL_4:
    v3 = *(v0[26] + OBJC_IVAR___CDPDRPDExecutor_sbDeleter);
    v0[2] = v0;
    v0[7] = v0 + 31;
    v0[3] = sub_2451782EC;
    v4 = swift_continuation_init();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D8, &qword_245199F08);
    v0[27] = v5;
    v0[25] = v5;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_245178C30;
    v0[21] = &block_descriptor;
    v0[22] = v4;
    [v3 deleteAllBackupRecordsWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  v2 = v1;
  if ([*(v0[26] + OBJC_IVAR___CDPDRPDExecutor_cdpContext) _forceManateeReset])
  {

    goto LABEL_4;
  }

  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v6 = sub_245193824();
  __swift_project_value_buffer(v6, qword_28134D368);
  v7 = sub_245193804();
  v8 = sub_245193984();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24510B000, v7, v8, "CDPDRPDExecutor: Manatee RPD is not permitted...", v9, 2u);
    MEMORY[0x245D649E0](v9, -1, -1);
  }

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

uint64_t sub_2451782EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_245178820;
  }

  else
  {
    v2 = sub_2451783FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2451783FC()
{
  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v1 = sub_245193824();
  __swift_project_value_buffer(v1, qword_28134D368);
  v2 = sub_245193804();
  v3 = sub_245193994();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24510B000, v2, v3, "CDPRPDExecutor: Secure backup deleted. Proceeding with resetting the circle", v4, 2u);
    MEMORY[0x245D649E0](v4, -1, -1);
  }

  v5 = v0[27];
  v6 = *(v0[26] + OBJC_IVAR___CDPDRPDExecutor_circleControl);
  v7 = sub_245193874();
  v0[29] = v7;
  v0[10] = v0;
  v0[15] = v0 + 31;
  v0[11] = sub_2451785F0;
  v8 = swift_continuation_init();
  v0[25] = v5;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_245178C30;
  v0[21] = &block_descriptor_16;
  v0[22] = v8;
  [v6 resetCircleIncludingCloudKitData:1 cloudKitResetReasonDescription:v7 withCompletion:v0 + 18];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2451785F0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_245178A9C;
  }

  else
  {
    v2 = sub_245178700;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245178700()
{
  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v1 = sub_245193824();
  __swift_project_value_buffer(v1, qword_28134D368);
  v2 = sub_245193804();
  v3 = sub_245193994();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24510B000, v2, v3, "CDPDRPDExecutor: Circle reset completed.", v4, 2u);
    MEMORY[0x245D649E0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_245178820()
{
  swift_willThrow();
  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_245193824();
  __swift_project_value_buffer(v2, qword_28134D368);
  v3 = v1;
  v4 = sub_245193804();
  v5 = sub_2451939A4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24510B000, v4, v5, "CDPDRPDExecutor: Failed to delete secure backup with error: %@", v8, 0xCu);
    sub_2451775C8(v9);
    MEMORY[0x245D649E0](v9, -1, -1);
    MEMORY[0x245D649E0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[27];
  v13 = *(v0[26] + OBJC_IVAR___CDPDRPDExecutor_circleControl);
  v14 = sub_245193874();
  v0[29] = v14;
  v0[10] = v0;
  v0[15] = v0 + 31;
  v0[11] = sub_2451785F0;
  v15 = swift_continuation_init();
  v0[25] = v12;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_245178C30;
  v0[21] = &block_descriptor_16;
  v0[22] = v15;
  [v13 resetCircleIncludingCloudKitData:1 cloudKitResetReasonDescription:v14 withCompletion:v0 + 18];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_245178A9C()
{
  v1 = v0[29];
  swift_willThrow();

  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v2 = v0[30];
  v3 = sub_245193824();
  __swift_project_value_buffer(v3, qword_28134D368);
  v4 = v2;
  v5 = sub_245193804();
  v6 = sub_2451939A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[30];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24510B000, v5, v6, "CDPDRPDExecutor: Failed to reset circle with error: %@", v8, 0xCu);
    sub_2451775C8(v9);
    MEMORY[0x245D649E0](v9, -1, -1);
    MEMORY[0x245D649E0](v8, -1, -1);
  }

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_245178C30(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C360, &unk_245199F10);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_245178CFC()
{
  v1 = *(v0 + OBJC_IVAR___CDPDRPDExecutor_cdpContext);
  if ([v1 _forceManateeReset])
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v2 = sub_245193824();
    __swift_project_value_buffer(v2, qword_28134D368);
    v3 = sub_245193804();
    v4 = sub_245193984();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24510B000, v3, v4, "CDPDRPDExecutor: _forceManateeReset was set. Allowing Manatee RPD...", v5, 2u);
      MEMORY[0x245D649E0](v5, -1, -1);
    }

    return 1;
  }

  else
  {
    result = [v1 isiCDPEligible];
    if (result)
    {
      return [*(v0 + OBJC_IVAR___CDPDRPDExecutor_circleControl) circleStatus] != 1;
    }
  }

  return result;
}

uint64_t sub_245178E50()
{
  if (sub_245178CFC())
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v1 = sub_245193824();
    __swift_project_value_buffer(v1, qword_28134D368);
    v2 = sub_245193804();
    v3 = sub_245193994();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24510B000, v2, v3, "CDPDRPDExecutor: Eligible for Manatee RPD.... Resetting Manatee only...", v4, 2u);
      MEMORY[0x245D649E0](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    *v5 = v0;
    v5[1] = sub_2451790B4;

    return sub_245178054();
  }

  else
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v7 = sub_245193824();
    __swift_project_value_buffer(v7, qword_28134D368);
    v8 = sub_245193804();
    v9 = sub_245193994();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24510B000, v8, v9, "CDPDRPDExecutor: RPD is not allowed.", v10, 2u);
      MEMORY[0x245D649E0](v10, -1, -1);
    }

    [objc_opt_self() cdp:-5302 errorWithCode:?];
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2451790B4()
{
  v5 = *v1;

  v3 = *(v5 + 8);
  if (!v0)
  {
    v2 = 0;
  }

  return v3(v2);
}

uint64_t sub_245179324(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2451793CC;

  return sub_245178E30();
}

uint64_t sub_2451793CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v1)
  {
    if (v5)
    {
      v8 = *(v4 + 24);
      v9 = sub_245193764();

      (v8)[2](v8, 0, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v10 = *(v4 + 24);
    v10[2](v10, a1, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

void __swiftcall CDPDRPDExecutor.init()(CDPDRPDExecutor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for CDPDRPDExecutor()
{
  result = qword_27EE0C2C8;
  if (!qword_27EE0C2C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE0C2C8);
  }

  return result;
}

uint64_t sub_2451796CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_245179AB4;

  return sub_245179324(v2, v3);
}

uint64_t sub_245179778()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_245179AB4;

  return sub_24517BAB0(v2, v3, v4);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_245179878(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_245179944;

  return sub_24517BB98(a1, v4, v5, v6);
}

uint64_t sub_245179944()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_245179A48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CDPExponentialRetryScheduler.retryFetchEscrowRecord(_:cdpContext:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24517D5E0;

  return sub_24517C12C(a1, a2);
}

uint64_t sub_245179B6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return MEMORY[0x2822009F8](sub_245179BFC, 0, 0);
}

uint64_t sub_245179BFC()
{
  v1 = v0[4];
  v2 = objc_opt_self();
  v0[2] = 0;
  v3 = [v2 fetchEscrowRecords:v1 error:v0 + 2];
  v4 = v0[2];
  if (v3)
  {
    v5 = v0[3];
    sub_24517D0C4();
    v6 = sub_245193914();
    v7 = v4;

    *v5 = v6;
  }

  else
  {
    v9 = v4;
    sub_245193774();

    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

id sub_245179D44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_245193A94();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_245193764();

  v11 = [v10 isRecoverableError];
  return v11;
}

void sub_245179EA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24517A0AC(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_24517A198;

  return sub_24517C12C(v8, v9);
}

uint64_t sub_24517A198(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    v9 = sub_245193764();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_24517D0C4();
    v12 = sub_245193904();

    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v4 + 40);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t CDPExponentialRetryScheduler.retryFetchAllEscrowRecord(_:cdpContext:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24517D5E0;

  return sub_24517C3D0(a1, a2);
}

uint64_t sub_24517A410(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return MEMORY[0x2822009F8](sub_24517A4A0, 0, 0);
}

uint64_t sub_24517A4A0()
{
  v1 = v0[4];
  v2 = objc_opt_self();
  v0[2] = 0;
  v3 = [v2 fetchAllEscrowRecords:v1 error:v0 + 2];
  v4 = v0[2];
  if (v3)
  {
    v5 = v0[3];
    sub_24517D0C4();
    v6 = sub_245193914();
    v7 = v4;

    *v5 = v6;
  }

  else
  {
    v9 = v4;
    sub_245193774();

    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_24517A778(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_24517D5CC;

  return sub_24517C3D0(v8, v9);
}

uint64_t CDPExponentialRetryScheduler.retryFetchAccountInfo(_:cdpContext:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24517D5E0;

  return sub_24517C550(a1, a2);
}

uint64_t sub_24517A918(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24517A938, 0, 0);
}

uint64_t sub_24517A938()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) getAccountInfoWithError_];
  v3 = sub_245193844();

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24517A9E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  swift_getErrorValue();
  *(v7 + 16) = sub_245179D44(v11[7], v11[8]) & 1;
  v11[4] = a3;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_245179EA4;
  v11[3] = a4;
  v8 = _Block_copy(v11);

  [a2 reauthenticateUserWithCompletion_];
  _Block_release(v8);
  swift_beginAccess();
  v9 = *(v7 + 16);

  return v9;
}

uint64_t sub_24517AC9C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_24517AD88;

  return sub_24517C550(v8, v9);
}

uint64_t sub_24517AD88(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    v9 = sub_245193764();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = sub_245193834();

    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v4 + 40);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t CDPExponentialRetryScheduler.retrySilentAuth(authContext:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24517B004;

  return sub_24517C8D0(a1);
}

uint64_t sub_24517B004(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_24517B104(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_24517B124, 0, 0);
}

uint64_t sub_24517B124()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_24517B270;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C358, &unk_24519A070);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24517B45C;
    v0[13] = &block_descriptor_0;
    v0[14] = v4;
    [v2 authenticateWithContext:v3 completion:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_24517B270()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_24517B3EC;
  }

  else
  {
    v2 = sub_24517B380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24517B380()
{
  v1 = *(v0 + 168);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24517B3EC()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24517B45C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C360, &unk_245199F10);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C340, &qword_245199FF0);
      v9 = sub_245193844();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24517B72C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_24517B800;

  return sub_24517C8D0(v6);
}

uint64_t sub_24517B800(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    a1 = sub_245193764();

    v9 = a1;
LABEL_3:
    v10 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v9 = 0;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C340, &qword_245199FF0);
  v11 = sub_245193834();

  v10 = v11;
  v9 = 0;
  a1 = v11;
LABEL_6:
  v12 = *(v5 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v8 + 8);

  return v13();
}

id CDPExponentialRetryScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDPExponentialRetryScheduler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDPExponentialRetryScheduler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CDPExponentialRetryScheduler.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CDPExponentialRetryScheduler();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24517BAB0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_245179AB4;

  return v6();
}

uint64_t sub_24517BB98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_245179944;

  return v7();
}

uint64_t sub_24517BC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_24517CDB4(a3, v23 - v10);
  v12 = sub_245193974();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24517CE24(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_245193964();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_245193954();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_245193894() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_24517CE24(a3);

    return v21;
  }

LABEL_8:
  sub_24517CE24(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_24517BF3C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24517C034;

  return v6(a1);
}

uint64_t sub_24517C034()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24517C12C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_24517C14C, 0, 0);
}

uint64_t sub_24517C14C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_2451937F4();
  v4 = sub_2451937E4();
  v0[6] = v4;
  v0[3] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v2;
  v7 = v2;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C370, &qword_24519A0A8);
  *v8 = v0;
  v8[1] = sub_24517C2AC;
  v10 = MEMORY[0x277CE4680];

  return MEMORY[0x282137360](v0 + 2, &unk_24519A0B8, v5, sub_24517D584, v6, v3, v9, v10);
}

uint64_t sub_24517C2AC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24517D5DC;
  }

  else
  {

    v2 = sub_24517D5C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24517C3D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_24517C3F0, 0, 0);
}

uint64_t sub_24517C3F0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_2451937F4();
  v4 = sub_2451937E4();
  v0[6] = v4;
  v0[3] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v2;
  v7 = v2;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C370, &qword_24519A0A8);
  *v8 = v0;
  v8[1] = sub_24517C2AC;
  v10 = MEMORY[0x277CE4680];

  return MEMORY[0x282137360](v0 + 2, &unk_24519A0A0, v5, sub_24517D490, v6, v3, v9, v10);
}

uint64_t sub_24517C550(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_24517C570, 0, 0);
}

uint64_t sub_24517C570()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_2451937F4();
  v4 = sub_2451937E4();
  v0[6] = v4;
  v0[3] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v2;
  v7 = v2;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C368, &qword_24519A090);
  *v8 = v0;
  v8[1] = sub_24517C6D0;
  v10 = MEMORY[0x277CE4680];

  return MEMORY[0x282137360](v0 + 2, &unk_24519A088, v5, sub_24517D378, v6, v3, v9, v10);
}

uint64_t sub_24517C6D0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24517C85C;
  }

  else
  {

    v2 = sub_24517C7F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24517C7F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24517C85C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24517C8F0()
{
  v1 = v0[4];
  v2 = sub_2451937F4();
  v3 = sub_2451937E4();
  v0[5] = v3;
  v0[3] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C350, &qword_24519A068);
  *v5 = v0;
  v5[1] = sub_24517CA20;
  v7 = MEMORY[0x277CE4680];

  return MEMORY[0x282137360](v0 + 2, &unk_24519A060, v4, sub_24517B564, 0, v2, v6, v7);
}

uint64_t sub_24517CA20()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24517CBA4;
  }

  else
  {

    v2 = sub_24517CB3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24517CB3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24517CBA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24517CC34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_245179944;

  return sub_24517B72C(v2, v3, v4);
}

uint64_t sub_24517CCE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_245179AB4;

  return sub_24517BB98(a1, v4, v5, v6);
}

uint64_t sub_24517CDB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24517CE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24517CE8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245179AB4;

  return sub_24517BF3C(a1, v4);
}

uint64_t sub_24517CF44()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_245179AB4;

  return sub_24517AC9C(v2, v3, v5, v4);
}

uint64_t sub_24517D004()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_245179AB4;

  return sub_24517A778(v2, v3, v5, v4);
}

unint64_t sub_24517D0C4()
{
  result = qword_27EE0C1F0;
  if (!qword_27EE0C1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE0C1F0);
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24517D160()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_245179AB4;

  return sub_24517A0AC(v2, v3, v5, v4);
}

uint64_t sub_24517D220(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245179944;

  return sub_24517B104(a1, v4);
}

uint64_t sub_24517D2D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245179AB4;

  return sub_24517A918(a1, v4);
}

uint64_t sub_24517D3B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = swift_beginAccess();
    *(v2 + 16) = 0;
  }

  return result;
}

uint64_t sub_24517D3F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245179AB4;

  return sub_24517A410(a1, v4);
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24517D4E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245179AB4;

  return sub_245179B6C(a1, v4);
}

unint64_t CDPEscapeOffersLedger.description.getter()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR___CDPEscapeOffersLedger_recoveryFlowContext] context];
  if (v2)
  {
    v3 = v2;
    [v2 type];
    type metadata accessor for CDPContextType(0);
    sub_245193A54();

    v5 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0x80000002451B8F90;
    v5 = 0xD000000000000011;
  }

  sub_245193A24();
  MEMORY[0x245D63A60](0xD000000000000017, 0x80000002451B8FB0);
  v6 = CDPRemoteApprovalEscapeOfferMask.description.getter([v1 escapeOffersPresented]);
  MEMORY[0x245D63A60](v6);

  MEMORY[0x245D63A60](0xD000000000000017, 0x80000002451B8FD0);
  v7 = CDPRemoteApprovalEscapeOfferMask.description.getter(*&v1[OBJC_IVAR___CDPEscapeOffersLedger_expectedEscapeOffers]);
  MEMORY[0x245D63A60](v7);

  MEMORY[0x245D63A60](0xD000000000000012, 0x80000002451B8FF0);
  if (v1[OBJC_IVAR___CDPEscapeOffersLedger_isWalrusEnabled])
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___CDPEscapeOffersLedger_isWalrusEnabled])
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x245D63A60](v8, v9);

  MEMORY[0x245D63A60](0xD000000000000014, 0x80000002451B9010);
  if (v1[OBJC_IVAR___CDPEscapeOffersLedger_deviceHasPasscode])
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___CDPEscapeOffersLedger_deviceHasPasscode])
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x245D63A60](v10, v11);

  MEMORY[0x245D63A60](0x696170655273690ALL, 0xEF203A776F6C4672);
  v12 = sub_24517D978();
  v13 = (v12 & 1) == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x245D63A60](v14, v15);

  MEMORY[0x245D63A60](0x7865746E6F632820, 0xEF203A6570795474);
  MEMORY[0x245D63A60](v5, v4);

  MEMORY[0x245D63A60](0x6563697665640A29, 0xEE00203A4D567349);
  if (v1[OBJC_IVAR___CDPEscapeOffersLedger_deviceIsVM])
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___CDPEscapeOffersLedger_deviceIsVM])
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x245D63A60](v16, v17);

  return 0;
}

id sub_24517D978()
{
  v1 = [*(v0 + OBJC_IVAR___CDPEscapeOffersLedger_recoveryFlowContext) context];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() isSubsetOfContextTypeRepair_];
  }

  else
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v4 = sub_245193824();
    __swift_project_value_buffer(v4, qword_28134D368);
    v2 = sub_245193804();
    v5 = sub_2451939A4();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24510B000, v2, v5, "Ledger: isRepairFlow - context is nil", v6, 2u);
      MEMORY[0x245D649E0](v6, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

unint64_t sub_24517DABC(char a1, uint64_t a2)
{
  result = 0;
  if (a2 <= -6101)
  {
    switch(a2)
    {
      case -6103:
        sub_245193A24();

        v4 = 0xD000000000000012;
        break;
      case -6102:
        sub_245193A24();

        v4 = 0xD000000000000010;
        break;
      case -6101:
        sub_245193A24();

        v4 = 0xD000000000000011;
        break;
      default:
        return result;
    }

    goto LABEL_15;
  }

  switch(a2)
  {
    case -5110:
      sub_245193A24();

      v5 = 9;
      break;
    case -5500:
      sub_245193A24();

      v4 = 0xD000000000000016;
      goto LABEL_15;
    case -6100:
      sub_245193A24();

      v5 = 11;
      break;
    default:
      return result;
  }

  v4 = v5 | 0xD000000000000010;
LABEL_15:
  v8 = v4;
  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x245D63A60](v6, v7);

  return v8;
}

id sub_24517DCF0()
{
  v1 = [*(v0 + OBJC_IVAR___CDPEscapeOffersLedger_recoveryFlowContext) context];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 _forceReset];
  }

  else
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v4 = sub_245193824();
    __swift_project_value_buffer(v4, qword_28134D368);
    v2 = sub_245193804();
    v5 = sub_2451939A4();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24510B000, v2, v5, "Ledger: isForcedReset force set to false since context is nil", v6, 2u);
      MEMORY[0x245D649E0](v6, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

id sub_24517DE0C()
{
  v1 = [*&v0[OBJC_IVAR___CDPEscapeOffersLedger_recoveryFlowContext] context];
  if (v1)
  {
    v2 = v1;
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v3 = sub_245193824();
    __swift_project_value_buffer(v3, qword_28134D368);
    v4 = v0;
    v5 = sub_245193804();
    v6 = sub_245193984();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *&v4[OBJC_IVAR___CDPEscapeOffersLedger_probationDuration];
      _os_log_impl(&dword_24510B000, v5, v6, "Ledger: probationDuration: %f", v7, 0xCu);
      MEMORY[0x245D649E0](v7, -1, -1);
    }

    v8 = [*&v4[OBJC_IVAR___CDPEscapeOffersLedger_probationChecker] rpdProbationIsInEffectForDuration:v2 context:*&v4[OBJC_IVAR___CDPEscapeOffersLedger_probationDuration]];
    v9 = sub_245193804();
    v10 = sub_245193984();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v8;
      _os_log_impl(&dword_24510B000, v9, v10, "Ledger: probationEnded: %{BOOL}d", v11, 8u);
      MEMORY[0x245D649E0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v12 = sub_245193824();
    __swift_project_value_buffer(v12, qword_28134D368);
    v2 = sub_245193804();
    v13 = sub_2451939A4();
    if (os_log_type_enabled(v2, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24510B000, v2, v13, "Ledger: probationEnded - context is nil", v14, 2u);
      MEMORY[0x245D649E0](v14, -1, -1);
    }

    v8 = 0;
  }

  return v8;
}

char *sub_24517E09C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C450, &qword_245199ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24519A0D0;
  *(inited + 32) = (v0[OBJC_IVAR___CDPEscapeOffersLedger_deviceIsVM] & 1) == 0;
  *(inited + 40) = -6103;
  *(inited + 48) = sub_24517D978() & 1;
  *(inited + 56) = -6102;
  *(inited + 64) = sub_24517DE0C() & 1;
  *(inited + 72) = -6101;
  v2 = v0[OBJC_IVAR___CDPEscapeOffersLedger_deviceHasPasscode];
  v3 = sub_245177DCC(1, 4, 1, inited);
  *(v3 + 2) = 4;
  v3[80] = v2;
  *(v3 + 11) = -5500;
  v4 = *&v0[OBJC_IVAR___CDPEscapeOffersLedger_expectedEscapeOffers];
  v5 = [v0 escapeOffersPresented];
  v6 = *(v3 + 2);
  if (!v6)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (v6 >= *(v3 + 3) >> 1)
  {
LABEL_5:
    v8 = v5;
    v3 = sub_245177DCC(1, v6 + 1, 1, v3);
    v5 = v8;
  }

  sub_24517F834(1uLL, 1, 1, v4 == v5, -6100);
  return v3;
}

char *sub_24517E224()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C450, &qword_245199ED0);
  v2 = swift_allocObject();
  v3 = v0[OBJC_IVAR___CDPEscapeOffersLedger_deviceIsVM];
  *(v2 + 16) = xmmword_24519A0D0;
  *(v2 + 32) = (v3 & 1) == 0;
  *(v2 + 40) = -6103;
  *(v2 + 48) = sub_24517D978() & 1;
  *(v2 + 56) = -6102;
  *(v2 + 64) = sub_24517DE0C() & 1;
  *(v2 + 72) = -6101;
  v4 = v0[OBJC_IVAR___CDPEscapeOffersLedger_isICDPEnabled];
  v5 = sub_245177DCC(1, 4, 1, v2);
  v15 = v5;
  v6 = &v15;
  sub_24517F834(1uLL, 1, 1, v4, -5302);
  v7 = [v1 escapeOffersPresented];
  v8 = *(v5 + 2);
  if (v8 < 2)
  {
    __break(1u);
  }

  else
  {
    v6 = *&v1[OBJC_IVAR___CDPEscapeOffersLedger_expectedEscapeOffers];
    v15 = v5;
    if (v8 < *(v5 + 3) >> 1)
    {
      goto LABEL_3;
    }
  }

  v14 = v7;
  v5 = sub_245177DCC(1, v8 + 1, 1, v5);
  v7 = v14;
  v15 = v5;
LABEL_3:
  sub_24517F834(2uLL, 2, 1, v7 == v6, -6100);
  v9 = v1[OBJC_IVAR___CDPEscapeOffersLedger_deviceHasPasscode];
  v11 = *(v5 + 2);
  v10 = *(v5 + 3);
  if (v11 >= v10 >> 1)
  {
    v5 = sub_245177DCC((v10 > 1), v11 + 1, 1, v5);
  }

  *(v5 + 2) = v11 + 1;
  v12 = &v5[16 * v11];
  v12[32] = v9;
  *(v12 + 5) = -5500;
  return v5;
}

uint64_t sub_24517E41C()
{
  v1 = [v0 rpdBlockingError];
  if (v1)
  {
    v2 = v1;
    v3 = sub_245193764();
    v4 = [v3 cdp:-5500 isCDPErrorWithCode:?];
  }

  else
  {
    v4 = 1;
  }

  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v5 = sub_245193824();
  __swift_project_value_buffer(v5, qword_28134D368);
  v6 = sub_245193804();
  v7 = sub_245193984();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_24510B000, v6, v7, "Ledger: canOfferRPD: %{BOOL}d", v8, 8u);
    MEMORY[0x245D649E0](v8, -1, -1);
  }

  return v4;
}

id sub_24517E568()
{
  v1 = [*&v0[OBJC_IVAR___CDPEscapeOffersLedger_recoveryFlowContext] context];
  if (v1)
  {

    if (sub_24517DCF0())
    {
      if (qword_28134D120 != -1)
      {
        swift_once();
      }

      v2 = sub_245193824();
      __swift_project_value_buffer(v2, qword_28134D368);
      v3 = sub_245193804();
      v4 = sub_245193994();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_24510B000, v3, v4, "Ledger: CLI asked for a force reset. Overriding all other checks.", v5, 2u);
        MEMORY[0x245D649E0](v5, -1, -1);
      }

      return 0;
    }

    else
    {
      if (qword_28134D120 != -1)
      {
        swift_once();
      }

      v17 = sub_245193824();
      __swift_project_value_buffer(v17, qword_28134D368);
      v18 = v0;
      v19 = sub_245193804();
      v20 = sub_245193984();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v43[0] = v22;
        *v21 = 136315138;
        sub_24517E09C();
        v23 = MEMORY[0x245D63AD0]();
        v25 = v24;

        v26 = sub_2451830CC(v23, v25, v43);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_24510B000, v19, v20, "Ledger: rpdBlockingError - Finding first unsatisfied requirement in conditions: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x245D649E0](v22, -1, -1);
        MEMORY[0x245D649E0](v21, -1, -1);
      }

      v27 = sub_24517E09C();
      v28 = v27 + 32;
      v29 = *(v27 + 2) + 1;
      while (--v29)
      {
        v30 = v28 + 16;
        v31 = *v28;
        v28 += 16;
        if ((v31 & 1) == 0)
        {
          v32 = *(v30 - 1);

          LOBYTE(v43[0]) = 0;
          v43[1] = v32;
          sub_24517F010(v43, v18, &v42);
          v6 = v42;
          goto LABEL_22;
        }
      }

      v6 = 0;
LABEL_22:
      v33 = v6;
      v34 = sub_245193804();
      v35 = sub_245193984();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42 = v6;
        v43[0] = v37;
        *v36 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C460, &qword_24519A108);
        v38 = sub_2451939D4();
        v40 = sub_2451830CC(v38, v39, v43);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_24510B000, v34, v35, "Ledger: rpdBlockingError - error: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x245D649E0](v37, -1, -1);
        MEMORY[0x245D649E0](v36, -1, -1);
      }
    }
  }

  else
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v7 = sub_245193824();
    __swift_project_value_buffer(v7, qword_28134D368);
    v8 = sub_245193804();
    v9 = sub_2451939A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24510B000, v8, v9, "Ledger: manateeRPDBlockingError - context is nil", v10, 2u);
      MEMORY[0x245D649E0](v10, -1, -1);
    }

    v11 = *MEMORY[0x277CFD418];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C440, &qword_24519A0F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24519A0E0;
    *(inited + 32) = sub_245193884();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v13;
    *(inited + 48) = 0xD00000000000001CLL;
    *(inited + 56) = 0x80000002451B9250;
    v14 = v11;
    sub_24517FA38(inited);
    swift_setDeallocating();
    sub_24517FB48(inited + 32, &qword_27EE0C448, &qword_24519A0F8);
    v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v16 = sub_245193834();

    v6 = [v15 initWithDomain:v14 code:-5003 userInfo:v16];
  }

  return v6;
}

id sub_24517EAF8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    v6 = sub_245193764();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_24517EB64()
{
  v1 = [*&v0[OBJC_IVAR___CDPEscapeOffersLedger_recoveryFlowContext] context];
  if (v1)
  {
    v2 = v1;
    if ([v1 _forceManateeReset])
    {
      if (qword_28134D120 != -1)
      {
        swift_once();
      }

      v3 = sub_245193824();
      __swift_project_value_buffer(v3, qword_28134D368);
      v4 = sub_245193804();
      v5 = sub_245193994();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_24510B000, v4, v5, "Ledger: CLI asked for a force Manatee reset. Overriding all other checks.", v6, 2u);
        MEMORY[0x245D649E0](v6, -1, -1);
      }
    }

    else
    {
      if (qword_28134D120 != -1)
      {
        swift_once();
      }

      v19 = sub_245193824();
      __swift_project_value_buffer(v19, qword_28134D368);
      v20 = v0;
      v21 = sub_245193804();
      v22 = sub_245193984();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v36[0] = v24;
        *v23 = 136315138;
        sub_24517E224();
        v25 = MEMORY[0x245D63AD0]();
        v27 = v26;

        v28 = sub_2451830CC(v25, v27, v36);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_24510B000, v21, v22, "Ledger: manateeRPDBlockingError - Finding first unsatisfied requirement in conditions: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x245D649E0](v24, -1, -1);
        MEMORY[0x245D649E0](v23, -1, -1);
      }

      v29 = sub_24517E224();
      v30 = v29 + 32;
      v31 = *(v29 + 2) + 1;
      while (--v31)
      {
        v32 = v30 + 16;
        v33 = *v30;
        v30 += 16;
        if ((v33 & 1) == 0)
        {
          v34 = *(v32 - 1);

          LOBYTE(v36[0]) = 0;
          v36[1] = v34;
          sub_24517F010(v36, v20, &v35);

          return v35;
        }
      }
    }

    return 0;
  }

  else
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v7 = sub_245193824();
    __swift_project_value_buffer(v7, qword_28134D368);
    v8 = sub_245193804();
    v9 = sub_2451939A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24510B000, v8, v9, "Ledger: manateeRPDBlockingError - context is nil", v10, 2u);
      MEMORY[0x245D649E0](v10, -1, -1);
    }

    v11 = *MEMORY[0x277CFD418];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C440, &qword_24519A0F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24519A0E0;
    *(inited + 32) = sub_245193884();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v13;
    *(inited + 48) = 0xD00000000000001CLL;
    *(inited + 56) = 0x80000002451B9250;
    v14 = v11;
    sub_24517FA38(inited);
    swift_setDeallocating();
    sub_24517FB48(inited + 32, &qword_27EE0C448, &qword_24519A0F8);
    v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v16 = sub_245193834();

    v17 = [v15 initWithDomain:v14 code:-5003 userInfo:v16];

    return v17;
  }
}

void sub_24517F010(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *MEMORY[0x277CFD418];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C440, &qword_24519A0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24519A0E0;
  *(inited + 32) = sub_245193884();
  *(inited + 40) = v8;
  v9 = v6;
  sub_245193A24();

  strcpy(v19, "Ledger State: ");
  HIBYTE(v19[1]) = -18;
  v10 = [a2 description];
  v11 = sub_245193884();
  v13 = v12;

  MEMORY[0x245D63A60](v11, v13);

  v14 = v19[0];
  v15 = v19[1];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  sub_24517FA38(inited);
  swift_setDeallocating();
  sub_24517FB48(inited + 32, &qword_27EE0C448, &qword_24519A0F8);
  v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v17 = sub_245193834();

  v18 = [v16 initWithDomain:v9 code:v5 userInfo:v17];

  *a3 = v18;
}

id sub_24517F1F0(uint64_t a1, id a2, char a3, uint64_t a4, char a5, char a6)
{
  *&v6[OBJC_IVAR___CDPEscapeOffersLedger__escapeOffersPresented] = 1;
  *&v6[OBJC_IVAR___CDPEscapeOffersLedger_expectedEscapeOffers] = a1 & 0xFFFFFFFFFFFFFFE2;
  v12 = [a2 isWalrusEnabled];
  v6[OBJC_IVAR___CDPEscapeOffersLedger_isWalrusEnabled] = v12;
  v6[OBJC_IVAR___CDPEscapeOffersLedger_deviceHasPasscode] = a3;
  [a2 rpdProbationDuration];
  *&v6[OBJC_IVAR___CDPEscapeOffersLedger_probationDuration] = v13;
  *&v6[OBJC_IVAR___CDPEscapeOffersLedger_probationChecker] = a4;
  *&v6[OBJC_IVAR___CDPEscapeOffersLedger_recoveryFlowContext] = a2;
  v6[OBJC_IVAR___CDPEscapeOffersLedger_deviceIsVM] = a5;
  v6[OBJC_IVAR___CDPEscapeOffersLedger_isICDPEnabled] = a6;
  v25.receiver = v6;
  v25.super_class = CDPEscapeOffersLedger;
  swift_unknownObjectRetain();
  v14 = a2;
  v15 = objc_msgSendSuper2(&v25, sel_init);
  v16 = qword_28134D120;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_245193824();
  __swift_project_value_buffer(v18, qword_28134D368);
  v19 = sub_245193804();
  v20 = sub_245193994();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v17;
    *v22 = v17;
    v23 = v17;
    _os_log_impl(&dword_24510B000, v19, v20, "Ledger: Initialized: %@", v21, 0xCu);
    sub_24517FB48(v22, &qword_27EE0C200, &qword_245199E50);
    MEMORY[0x245D649E0](v22, -1, -1);
    MEMORY[0x245D649E0](v21, -1, -1);
  }

  swift_unknownObjectRelease();

  return v17;
}

void sub_24517F4A8(uint64_t a1)
{
  v2 = v1;
  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v4 = sub_245193824();
  __swift_project_value_buffer(v4, qword_28134D368);
  v5 = sub_245193804();
  v6 = sub_245193994();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = CDPRemoteApprovalEscapeOfferMask.description.getter(a1);
    v11 = sub_2451830CC(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24510B000, v5, v6, "Ledger: User was offered %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245D649E0](v8, -1, -1);
    MEMORY[0x245D649E0](v7, -1, -1);
  }

  *(v2 + OBJC_IVAR___CDPEscapeOffersLedger__escapeOffersPresented) |= a1 & 0xFFFFFFFFFFFFFFE2;
}

void __swiftcall CDPEscapeOffersLedger.init()(CDPEscapeOffersLedger *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for CDPEscapeOffersLedger()
{
  result = qword_27EE0C430;
  if (!qword_27EE0C430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE0C430);
  }

  return result;
}

void sub_24517F7C0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_24517F834(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = v8 + 32 + 16 * result;
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = v9 + 16 * a3;
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a4 = v17;
        a3 = v15;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4 & 1;
    *(v9 + 8) = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_24517F908(uint64_t a1, uint64_t a2)
{
  sub_245193AB4();
  sub_2451938A4();
  v4 = sub_245193AC4();

  return sub_24517F980(a1, a2, v4);
}

unint64_t sub_24517F980(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_245193AA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24517FA38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C458, &qword_24519A100);
    v3 = sub_245193A74();
    v4 = a1 + 32;

    while (1)
    {
      sub_24517FBA8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24517F908(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24517FC18(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_24517FB48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24517FBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C448, &qword_24519A0F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_24517FC18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s9ConditionVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s9ConditionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id sub_245180064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  *&v4[OBJC_IVAR___CDPDFirstUnlockObserver_listeners] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR___CDPDFirstUnlockObserver_userDefaults] = a1;
  *&v4[OBJC_IVAR___CDPDFirstUnlockObserver_urlBag] = a2;
  *&v4[OBJC_IVAR___CDPDFirstUnlockObserver_localDevice] = a3;
  sub_245183998(a4, &v15 - v10, &qword_27EE0C508, &qword_24519A198);
  type metadata accessor for UUIDWrapper(0);
  v12 = swift_allocObject();
  sub_245183A00(v11, v12 + OBJC_IVAR____TtC15CoreCDPInternalP33_CCDB1C447E12AE43C6597553DD12C27C11UUIDWrapper_value);
  *&v4[OBJC_IVAR___CDPDFirstUnlockObserver_bootSessionIDWrapper] = v12;
  v15.receiver = v4;
  v15.super_class = CDPDFirstUnlockObserver;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_24517FB48(a4, &qword_27EE0C508, &qword_24519A198);
  return v13;
}

void sub_2451802F8(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 listeners];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C590, &qword_24519A1B8);
  v4 = sub_245193914();

  v5 = swift_unknownObjectRetain();
  MEMORY[0x245D63AA0](v5);
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_245193934();
  }

  sub_245193944();
  v6 = sub_245193904();

  [v2 setListeners_];
}

void sub_245180484(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v57[-v4];
  v6 = sub_2451937C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v57[-v11];
  if (a1)
  {
    v13 = [v1 bootSessionID];
    if (v13)
    {
      v14 = v13;
      sub_2451937B4();

      v16 = sub_2451938C4();
      v17 = v15;
      if (v16 == 0xD000000000000025 && 0x80000002451B95E0 == v15 || (sub_245193AA4() & 1) != 0)
      {
        v18 = v1;

        if (qword_28134D120 != -1)
        {
          swift_once();
        }

        v19 = sub_245193824();
        __swift_project_value_buffer(v19, qword_28134D368);
        v20 = sub_245193804();
        v21 = sub_245193994();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_24510B000, v20, v21, "Found MobileKeyBag's first unlock notification.", v22, 2u);
          MEMORY[0x245D649E0](v22, -1, -1);
        }

        v23 = sub_2451937A4();
        [v18 recognizeFirstUnlockWith_];
      }

      else
      {
        if (v16 == 0xD000000000000024 && 0x80000002451B9610 == v17 || (sub_245193AA4() & 1) != 0)
        {

          v39 = sub_245193974();
          (*(*(v39 - 8) + 56))(v5, 1, 1, v39);
          (*(v7 + 16))(v10, v12, v6);
          v40 = (*(v7 + 80) + 40) & ~*(v7 + 80);
          v41 = swift_allocObject();
          *(v41 + 2) = 0;
          *(v41 + 3) = 0;
          *(v41 + 4) = v1;
          (*(v7 + 32))(&v41[v40], v10, v6);
          v42 = v1;
          sub_24518113C(0, 0, v5, &unk_24519A1C8, v41);

          goto LABEL_12;
        }

        if (qword_28134D120 != -1)
        {
          swift_once();
        }

        v43 = sub_245193824();
        __swift_project_value_buffer(v43, qword_28134D368);
        v44 = v1;

        v45 = sub_245193804();
        v46 = sub_245193984();

        if (!os_log_type_enabled(v45, v46))
        {

          goto LABEL_12;
        }

        v47 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = v60;
        *v47 = 136446466;
        v48 = v44;
        v59 = v45;
        v49 = v48;
        v50 = [v48 description];
        v51 = sub_245193884();
        v58 = v46;
        v53 = v52;

        v54 = sub_2451830CC(v51, v53, &v61);

        *(v47 + 4) = v54;
        *(v47 + 12) = 2082;
        v55 = sub_2451830CC(v16, v17, &v61);

        *(v47 + 14) = v55;
        v23 = v59;
        _os_log_impl(&dword_24510B000, v59, v58, "%{public}s ignoring notification event '%{public}s'", v47, 0x16u);
        v56 = v60;
        swift_arrayDestroy();
        MEMORY[0x245D649E0](v56, -1, -1);
        MEMORY[0x245D649E0](v47, -1, -1);
      }

LABEL_12:
      (*(v7 + 8))(v12, v6);
      return;
    }

    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v35 = sub_245193824();
    __swift_project_value_buffer(v35, qword_28134D368);
    v60 = sub_245193804();
    v36 = sub_2451939A4();
    if (os_log_type_enabled(v60, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_24510B000, v60, v36, "Could not get boot session UUID. Not notifying listeners of first unlock.", v37, 2u);
      MEMORY[0x245D649E0](v37, -1, -1);
    }
  }

  else
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v24 = sub_245193824();
    __swift_project_value_buffer(v24, qword_28134D368);
    v25 = v1;
    v60 = sub_245193804();
    v26 = sub_2451939B4();

    if (os_log_type_enabled(v60, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v61 = v28;
      *v27 = 136446210;
      v29 = v25;
      v30 = [v29 description];
      v31 = sub_245193884();
      v33 = v32;

      v34 = sub_2451830CC(v31, v33, &v61);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_24510B000, v60, v26, "%{public}s received a nil eventName", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x245D649E0](v28, -1, -1);
      MEMORY[0x245D649E0](v27, -1, -1);

      return;
    }
  }

  v38 = v60;
}

uint64_t sub_245180C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_245180C60, 0, 0);
}

uint64_t sub_245180C60()
{
  if ([*(v0 + 144) currentDeviceUnlockedForTheFirstTime])
  {
    v1 = *(v0 + 144);
    v2 = objc_opt_self();
    v3 = [v1 urlBag];
    *(v0 + 160) = v3;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_245180EB4;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C5A0, &qword_24519A1E8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2451810E0;
    *(v0 + 104) = &block_descriptor_1;
    *(v0 + 112) = v4;
    [v2 isManateeNotificationOnFirstUnlockEnabledUsingURLBag:v3 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v5 = sub_245193824();
    __swift_project_value_buffer(v5, qword_28134D368);
    v6 = sub_245193804();
    v7 = sub_245193984();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24510B000, v6, v7, "Device did not unlock for the first time. Ignoring lock status event", v8, 2u);
      MEMORY[0x245D649E0](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_245180EB4()
{

  return MEMORY[0x2822009F8](sub_245180F94, 0, 0);
}

uint64_t sub_245180F94()
{
  v1 = *(v0 + 168);

  if (v1 == 1)
  {
    v2 = *(v0 + 144);
    v3 = sub_2451937A4();
    [v2 recognizeFirstUnlockWith_];
  }

  else
  {
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v4 = sub_245193824();
    __swift_project_value_buffer(v4, qword_28134D368);
    v3 = sub_245193804();
    v5 = sub_2451939A4();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24510B000, v3, v5, "Kill switch is on. Ignoring computed first unlock through lock state listener", v6, 2u);
      MEMORY[0x245D649E0](v6, -1, -1);
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2451810E0(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_24518113C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_245183998(a3, v25 - v10, &qword_27EE0C2D0, &qword_245199F90);
  v12 = sub_245193974();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24517FB48(v11, &qword_27EE0C2D0, &qword_245199F90);
  }

  else
  {
    sub_245193964();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_245193954();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_245193894() + 32;
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

      sub_24517FB48(a3, &qword_27EE0C2D0, &qword_245199F90);

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

  sub_24517FB48(a3, &qword_27EE0C2D0, &qword_245199F90);
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

void sub_245181490()
{
  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v1 = sub_245193824();
  __swift_project_value_buffer(v1, qword_28134D368);
  v2 = v0;
  v3 = sub_245193804();
  v4 = sub_245193984();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = sub_245193884();
    v11 = v10;

    v12 = sub_2451830CC(v9, v11, &v32);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_24510B000, v3, v4, "%{public}s recognizes first unlock. Notifying listeners and saving boot ID.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245D649E0](v6, -1, -1);
    MEMORY[0x245D649E0](v5, -1, -1);
  }

  v13 = sub_2451937A4();
  [v2 updateSavedBootSessionIDTo_];

  v14 = [v2 listeners];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE0C590, &qword_24519A1B8);
  v15 = sub_245193914();

  v31 = v15;
  if (v15 >> 62)
  {
    v16 = sub_245193A64();
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    return;
  }

  v17 = 0;
  v18 = v15 & 0xC000000000000001;
  v19 = &__block_descriptor_88_e8_32s40s48bs_e5_v8__0ls32l8s40l8s48l8;
  v30 = v16;
  do
  {
    if (v18)
    {
      v20 = MEMORY[0x245D63BE0](v17, v31);
    }

    else
    {
      v20 = *(v31 + 8 * v17 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRetain();
    v21 = sub_245193804();
    v22 = sub_245193994();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136446210;
      v25 = [v20 description];
      v26 = sub_245193884();
      v28 = v27;

      v29 = sub_2451830CC(v26, v28, &v32);
      v16 = v30;

      *(v23 + 4) = v29;
      v19 = &__block_descriptor_88_e8_32s40s48bs_e5_v8__0ls32l8s40l8s48l8;
      _os_log_impl(&dword_24510B000, v21, v22, "Notifying listener %{public}s of first unlock", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x245D649E0](v24, -1, -1);
      MEMORY[0x245D649E0](v23, -1, -1);
    }

    ++v17;
    [v20 v19[338]];
    swift_unknownObjectRelease();
  }

  while (v16 != v17);
LABEL_16:
}

uint64_t sub_2451818B4()
{
  v1 = sub_2451937C4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v112[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v112[-v7];
  MEMORY[0x28223BE20](v6);
  v10 = &v112[-v9];
  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v11 = sub_245193824();
  __swift_project_value_buffer(v11, qword_28134D368);
  v12 = v0;
  v13 = sub_245193804();
  v14 = sub_245193994();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v116 = v1;
    v16 = v15;
    v114 = swift_slowAlloc();
    v115 = v2;
    v118 = v114;
    *v16 = 136446210;
    v17 = v12;
    v117 = v10;
    v18 = v17;
    v19 = [v17 description];
    v113 = v14;
    v20 = v19;
    v21 = v5;
    v22 = v8;
    v23 = sub_245193884();
    v24 = v12;
    v26 = v25;

    v10 = v117;
    v27 = v23;
    v8 = v22;
    v5 = v21;
    v28 = sub_2451830CC(v27, v26, &v118);
    v12 = v24;

    *(v16 + 4) = v28;
    _os_log_impl(&dword_24510B000, v13, v113, "%{public}s - Checking if current device unlocked for the first time...", v16, 0xCu);
    v29 = v114;
    __swift_destroy_boxed_opaque_existential_0Tm(v114);
    v2 = v115;
    MEMORY[0x245D649E0](v29, -1, -1);
    v30 = v16;
    v1 = v116;
    MEMORY[0x245D649E0](v30, -1, -1);
  }

  v31 = [v12 localDevice];
  v32 = [v31 currentLockState];

  if (v32)
  {
    v33 = v12;
    v34 = sub_245193804();
    v35 = sub_245193994();

    if (!os_log_type_enabled(v34, v35))
    {
LABEL_9:

      return 0;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v118 = v37;
    *v36 = 136446466;
    v38 = v33;
    v39 = [v38 description];
    v40 = sub_245193884();
    v42 = v41;

    v43 = sub_2451830CC(v40, v42, &v118);

    *(v36 + 4) = v43;
    *(v36 + 12) = 1026;
    *(v36 + 14) = v32;
    v44 = "%{public}s - device is not unlocked. Found lock state %{public}d.";
    v45 = v35;
    v46 = v34;
    v47 = v36;
    v48 = 18;
LABEL_8:
    _os_log_impl(&dword_24510B000, v46, v45, v44, v47, v48);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x245D649E0](v37, -1, -1);
    MEMORY[0x245D649E0](v36, -1, -1);
    goto LABEL_9;
  }

  v50 = [v12 bootSessionID];
  if (!v50)
  {
    v76 = v12;
    v34 = sub_245193804();
    v77 = sub_2451939A4();

    if (!os_log_type_enabled(v34, v77))
    {
      goto LABEL_9;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v118 = v37;
    *v36 = 136446210;
    v78 = v76;
    v79 = [v78 description];
    v80 = sub_245193884();
    v82 = v81;

    v83 = sub_2451830CC(v80, v82, &v118);

    *(v36 + 4) = v83;
    v44 = "%{public}s - Could not get boot session UUID. Not treating as first unlock.";
    v45 = v77;
    v46 = v34;
    v47 = v36;
    v48 = 12;
    goto LABEL_8;
  }

  v51 = v50;
  sub_2451937B4();

  v52 = [v12 savedBootSessionID];
  if (v52)
  {
    v53 = v52;
    sub_2451937B4();

    sub_2451836D4(&qword_27EE0C520, MEMORY[0x277CC9610]);
    if (sub_245193864())
    {
      (*(v2 + 2))(v5, v10, v1);
      v54 = v12;
      v55 = v2;
      v56 = v54;
      v57 = sub_245193804();
      v58 = sub_245193994();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v115 = v5;
        v60 = v59;
        v116 = swift_slowAlloc();
        v118 = v116;
        *v60 = 136446466;
        v61 = v56;
        v62 = [v61 description];
        v63 = sub_245193884();
        v117 = v10;
        v64 = v63;
        v65 = v8;
        v67 = v66;

        v68 = sub_2451830CC(v64, v67, &v118);

        *(v60 + 4) = v68;
        *(v60 + 12) = 2080;
        sub_2451836D4(&qword_27EE0C528, MEMORY[0x277CC9628]);
        v69 = v115;
        v70 = sub_245193A84();
        v72 = v71;
        v73 = *(v55 + 1);
        v73(v69, v1);
        v74 = sub_2451830CC(v70, v72, &v118);

        *(v60 + 14) = v74;
        _os_log_impl(&dword_24510B000, v57, v58, "%{public}s device is unlocked but boot session ID (%s) did not change.", v60, 0x16u);
        v75 = v116;
        swift_arrayDestroy();
        MEMORY[0x245D649E0](v75, -1, -1);
        MEMORY[0x245D649E0](v60, -1, -1);

        v73(v65, v1);
        v73(v117, v1);
      }

      else
      {

        v110 = *(v55 + 1);
        v110(v5, v1);
        v110(v8, v1);
        v110(v10, v1);
      }

      return 0;
    }

    v96 = v12;
    v97 = sub_245193804();
    v98 = sub_245193994();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v118 = v100;
      *v99 = 136446210;
      v101 = v96;
      v102 = [v101 description];
      v117 = v10;
      v103 = v102;
      v104 = sub_245193884();
      v116 = v8;
      v105 = v104;
      v107 = v106;

      v108 = sub_2451830CC(v105, v107, &v118);

      *(v99 + 4) = v108;
      _os_log_impl(&dword_24510B000, v97, v98, "%{public}s - Current boot session ID is different than the one we saved, meaning we have rebooted. This is first unlock.", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      MEMORY[0x245D649E0](v100, -1, -1);
      MEMORY[0x245D649E0](v99, -1, -1);

      v109 = *(v2 + 1);
      v109(v116, v1);
      v109(v117, v1);
    }

    else
    {

      v111 = *(v2 + 1);
      v111(v8, v1);
      v111(v10, v1);
    }
  }

  else
  {
    v84 = v12;
    v85 = sub_245193804();
    v86 = sub_245193994();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v118 = v88;
      *v87 = 136446210;
      v89 = v84;
      v90 = [v89 description];
      v117 = v10;
      v91 = v90;
      v92 = sub_245193884();
      v94 = v93;

      v95 = sub_2451830CC(v92, v94, &v118);

      *(v87 + 4) = v95;
      _os_log_impl(&dword_24510B000, v85, v86, "%{public}s - device is unlocked but no saved boot session ID was found. Acting as first unlock.", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v88);
      MEMORY[0x245D649E0](v88, -1, -1);
      MEMORY[0x245D649E0](v87, -1, -1);

      (*(v2 + 1))(v117, v1);
    }

    else
    {

      (*(v2 + 1))(v10, v1);
    }
  }

  return 1;
}

uint64_t sub_2451823E8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_2451937C4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = [v2 userDefaults];
  v15 = sub_245193874();
  v16 = [v14 valueForKey_];

  if (v16)
  {
    sub_2451939F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49[0] = v47;
  v49[1] = v48;
  if (!*(&v48 + 1))
  {
    sub_24517FB48(v49, &qword_27EE0C518, &unk_24519A1A8);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v25 = sub_245193824();
    __swift_project_value_buffer(v25, qword_28134D368);
    v20 = sub_245193804();
    v26 = sub_245193994();
    if (!os_log_type_enabled(v20, v26))
    {
      goto LABEL_17;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_24510B000, v20, v26, "No saved boot session ID", v22, 2u);
    goto LABEL_16;
  }

  v18 = v45;
  v17 = v46;
  sub_245193784();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24517FB48(v6, &qword_27EE0C508, &qword_24519A198);
    if (qword_28134D120 != -1)
    {
      swift_once();
    }

    v19 = sub_245193824();
    __swift_project_value_buffer(v19, qword_28134D368);

    v20 = sub_245193804();
    v21 = sub_2451939A4();

    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_17;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v49[0] = v23;
    *v22 = 136446210;
    v24 = sub_2451830CC(v18, v17, v49);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_24510B000, v20, v21, "Could not convert %{public}s to UUID", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x245D649E0](v23, -1, -1);
LABEL_16:
    MEMORY[0x245D649E0](v22, -1, -1);
LABEL_17:

    v27 = 1;
    return (*(v8 + 56))(a1, v27, 1, v7);
  }

  v29 = *(v8 + 32);
  v29(v13, v6, v7);
  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v30 = sub_245193824();
  __swift_project_value_buffer(v30, qword_28134D368);
  (*(v8 + 16))(v11, v13, v7);
  v31 = sub_245193804();
  v32 = sub_245193994();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v43 = v29;
    v34 = v33;
    v42 = swift_slowAlloc();
    *&v49[0] = v42;
    *v34 = 136446210;
    v35 = sub_245193794();
    v44 = a1;
    v37 = v36;
    (*(v8 + 8))(v11, v7);
    v38 = sub_2451830CC(v35, v37, v49);
    a1 = v44;

    *(v34 + 4) = v38;
    _os_log_impl(&dword_24510B000, v31, v32, "Saved boot session ID is %{public}s", v34, 0xCu);
    v39 = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x245D649E0](v39, -1, -1);
    v40 = v34;
    v29 = v43;
    MEMORY[0x245D649E0](v40, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v29(a1, v13, v7);
  v27 = 0;
  return (*(v8 + 56))(a1, v27, 1, v7);
}

void sub_245182A00()
{
  v1 = v0;
  v2 = sub_245193794();
  v4 = v3;
  if (qword_28134D120 != -1)
  {
    swift_once();
  }

  v5 = sub_245193824();
  __swift_project_value_buffer(v5, qword_28134D368);

  v6 = sub_245193804();
  v7 = sub_245193994();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_2451830CC(v2, v4, &v13);
    _os_log_impl(&dword_24510B000, v6, v7, "Updating saved boot session ID to %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245D649E0](v9, -1, -1);
    MEMORY[0x245D649E0](v8, -1, -1);
  }

  v10 = [v1 userDefaults];
  v11 = sub_245193874();

  v12 = sub_245193874();
  [v10 setObject:v11 forKey:v12];
}

uint64_t sub_245182BFC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_2451937C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2451937B4();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id CDPDFirstUnlockObserver.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for CDPDFirstUnlockObserver()
{
  result = qword_27EE0C500;
  if (!qword_27EE0C500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE0C500);
  }

  return result;
}

uint64_t sub_245182E4C()
{
  sub_24517FB48(v0 + OBJC_IVAR____TtC15CoreCDPInternalP33_CCDB1C447E12AE43C6597553DD12C27C11UUIDWrapper_value, &qword_27EE0C508, &qword_24519A198);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for UUIDWrapper(uint64_t a1)
{
  result = qword_28134D1D8;
  if (!qword_28134D1D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_245182F14(uint64_t a1)
{
  sub_245182FA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_245182FA4(uint64_t a1)
{
  if (!qword_28134D1F8)
  {
    sub_2451937C4();
    v1 = sub_2451939E4();
    if (!v2)
    {
      atomic_store(v1, &qword_28134D1F8);
    }
  }
}

uint64_t sub_245182FFC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_245183070(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2451830CC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2451830CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_245183198(v11, 0, 0, 1, a1, a2);
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
    sub_245179A48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_245183198(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2451832A4(a5, a6);
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
    result = sub_245193A44();
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

void *sub_2451832A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_2451832F0(a1, a2);
  sub_245183420(&unk_285809C58);
  return v3;
}

void *sub_2451832F0(uint64_t a1, unint64_t a2)
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

  v6 = sub_24518350C(v5, 0);
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

  result = sub_245193A44();
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
        v10 = sub_2451938D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24518350C(v10, 0);
        result = sub_245193A14();
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

uint64_t sub_245183420(uint64_t result)
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

  result = sub_245183580(result, v11, 1, v3);
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

void *sub_24518350C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C510, &qword_24519A1A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_245183580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C510, &qword_24519A1A0);
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

_BYTE **sub_245183674(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_245183684(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2451836A4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2451836D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2451937C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245183718(uint64_t a1)
{
  v4 = *(sub_2451937C4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_245179944;

  return sub_245180C40(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_245183810(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245179AB4;

  return sub_24517BF3C(a1, v4);
}

uint64_t sub_2451838C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245179944;

  return sub_24517BF3C(a1, v4);
}

uint64_t sub_245183998(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_245183A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_245183A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C508, &qword_24519A198);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v12 = result;
    sub_245183998(a3, v10, &qword_27EE0C508, &qword_24519A198);
    v13 = sub_2451937C4();
    v14 = *(v13 - 8);
    v15 = 0;
    if ((*(v14 + 48))(v10, 1, v13) != 1)
    {
      v15 = sub_2451937A4();
      (*(v14 + 8))(v10, v13);
    }

    v16 = [v4 initWithUserDefaults:a1 urlBag:v12 localDevice:a2 bootSessionID:v15];

    sub_24517FB48(a3, &qword_27EE0C508, &qword_24519A198);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CDPRecoveryStatusFromOTRecoveryStatus_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v4 = 138412290;
  v5 = v3;
}