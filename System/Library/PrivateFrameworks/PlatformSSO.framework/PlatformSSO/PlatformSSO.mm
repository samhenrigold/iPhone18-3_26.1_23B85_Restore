uint64_t sub_25E832F00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E832F40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id PO_LOG_PORegistrationManager(uint64_t a1)
{
  if (PO_LOG_PORegistrationManager_once != -1)
  {
    PO_LOG_PORegistrationManager_cold_1();
  }

  v2 = PO_LOG_PORegistrationManager_log;

  return v2;
}

void sub_25E839FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id PO_LOG_POUISettingsManager(uint64_t a1)
{
  if (PO_LOG_POUISettingsManager_once != -1)
  {
    PO_LOG_POUISettingsManager_cold_1();
  }

  v2 = PO_LOG_POUISettingsManager_log;

  return v2;
}

void sub_25E83C980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E83CB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E83CCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E83CDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PO_LOG_POConfigurationUtil(uint64_t a1)
{
  if (PO_LOG_POConfigurationUtil_once != -1)
  {
    PO_LOG_POConfigurationUtil_cold_1();
  }

  v2 = PO_LOG_POConfigurationUtil_log;

  return v2;
}

id PO_LOG_POServiceConnection(uint64_t a1)
{
  if (PO_LOG_POServiceConnection_once != -1)
  {
    PO_LOG_POServiceConnection_cold_1();
  }

  v2 = PO_LOG_POServiceConnection_log;

  return v2;
}

void sub_25E83F5E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id PO_LOG_POUserGroupManager(uint64_t a1)
{
  if (PO_LOG_POUserGroupManager_once != -1)
  {
    PO_LOG_POUserGroupManager_cold_1();
  }

  v2 = PO_LOG_POUserGroupManager_log;

  return v2;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

id PO_LOG_POKerberosHelper(uint64_t a1)
{
  if (PO_LOG_POKerberosHelper_once != -1)
  {
    PO_LOG_POKerberosHelper_cold_1();
  }

  v2 = PO_LOG_POKerberosHelper_log;

  return v2;
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id PO_LOG_POAuthPluginProcess(uint64_t a1)
{
  if (PO_LOG_POAuthPluginProcess_once != -1)
  {
    PO_LOG_POAuthPluginProcess_cold_1();
  }

  v2 = PO_LOG_POAuthPluginProcess_log;

  return v2;
}

id PO_LOG_POLoginManager(uint64_t a1)
{
  if (PO_LOG_POLoginManager_once != -1)
  {
    PO_LOG_POLoginManager_cold_1();
  }

  v2 = PO_LOG_POLoginManager_log;

  return v2;
}

void sub_25E8451A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8452A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E84542C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E8455C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E845840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25E845A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25E845CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25E845F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id getASAuthorizationErrorDomain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getASAuthorizationErrorDomainSymbolLoc_ptr;
  v9 = getASAuthorizationErrorDomainSymbolLoc_ptr;
  if (!getASAuthorizationErrorDomainSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getASAuthorizationErrorDomainSymbolLoc_block_invoke;
    v5[3] = &unk_279A3A600;
    v5[4] = &v6;
    __getASAuthorizationErrorDomainSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    getASAuthorizationErrorDomain_cold_1();
    v4 = v3;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  v1 = *v0;

  return v1;
}

void sub_25E846418(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25E847078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25E847348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25E8474DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8477CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25E847BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25E848C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

void *__getASAuthorizationErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AuthenticationServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AuthenticationServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279A3A620;
    v7 = 0;
    AuthenticationServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AuthenticationServicesLibraryCore_frameworkLibrary;
    if (AuthenticationServicesLibraryCore_frameworkLibrary)
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

  v2 = AuthenticationServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "ASAuthorizationErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASAuthorizationErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthenticationServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AuthenticationServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id PO_LOG_POServiceLoginManagerConnection(uint64_t a1)
{
  if (PO_LOG_POServiceLoginManagerConnection_once != -1)
  {
    PO_LOG_POServiceLoginManagerConnection_cold_1();
  }

  v2 = PO_LOG_POServiceLoginManagerConnection_log;

  return v2;
}

void sub_25E84BD94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id PO_LOG_POAgentProcess(uint64_t a1)
{
  if (PO_LOG_POAgentProcess_once != -1)
  {
    PO_LOG_POAgentProcess_cold_1();
  }

  v2 = PO_LOG_POAgentProcess_log;

  return v2;
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_5_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id PO_LOG_POConfigurationManager(uint64_t a1)
{
  if (PO_LOG_POConfigurationManager_once != -1)
  {
    PO_LOG_POConfigurationManager_cold_1();
  }

  v2 = PO_LOG_POConfigurationManager_log;

  return v2;
}

void sub_25E850F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E851228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25E8514B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8516DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E851964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E851B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25E851E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E852110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8523D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8527D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E852A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E852C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E852D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_25E852E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8545C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25E8547C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id PO_LOG_POAgentAuthenticationProcess(uint64_t a1)
{
  if (PO_LOG_POAgentAuthenticationProcess_once != -1)
  {
    PO_LOG_POAgentAuthenticationProcess_cold_1();
  }

  v2 = PO_LOG_POAgentAuthenticationProcess_log;

  return v2;
}

void sub_25E855B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E856400(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25E85656C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25E85707C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E85CD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *OUTLINED_FUNCTION_11(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

id PO_LOG_PODaemonConnection(uint64_t a1)
{
  if (PO_LOG_PODaemonConnection_once != -1)
  {
    PO_LOG_PODaemonConnection_cold_1();
  }

  v2 = PO_LOG_PODaemonConnection_log;

  return v2;
}

void sub_25E86AA58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_25E86ADF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PO_LOG_POAgentListener(uint64_t a1)
{
  if (PO_LOG_POAgentListener_once != -1)
  {
    PO_LOG_POAgentListener_cold_1();
  }

  v2 = PO_LOG_POAgentListener_log;

  return v2;
}

void sub_25E86B0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E86B398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id PO_LOG_POProfile(uint64_t a1)
{
  if (PO_LOG_POProfile_once != -1)
  {
    PO_LOG_POProfile_cold_1();
  }

  v2 = PO_LOG_POProfile_log;

  return v2;
}

id PO_LOG_POUIServiceConnection(uint64_t a1)
{
  if (PO_LOG_POUIServiceConnection_once != -1)
  {
    PO_LOG_POUIServiceConnection_cold_1();
  }

  v2 = PO_LOG_POUIServiceConnection_log;

  return v2;
}

void sub_25E86D738(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id PO_LOG_PODaemonProcess(uint64_t a1)
{
  if (PO_LOG_PODaemonProcess_once != -1)
  {
    PO_LOG_PODaemonProcess_cold_1();
  }

  v2 = PO_LOG_PODaemonProcess_log;

  return v2;
}

id getSOConfigurationHostClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOConfigurationHostClass_softClass;
  v7 = getSOConfigurationHostClass_softClass;
  if (!getSOConfigurationHostClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOConfigurationHostClass_block_invoke;
    v3[3] = &unk_279A3A600;
    v3[4] = &v4;
    __getSOConfigurationHostClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E86DE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSOConfigurationManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOConfigurationManagerClass_softClass;
  v7 = getSOConfigurationManagerClass_softClass;
  if (!getSOConfigurationManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOConfigurationManagerClass_block_invoke;
    v3[3] = &unk_279A3A600;
    v3[4] = &v4;
    __getSOConfigurationManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E870EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSOConfigurationHostClass_block_invoke(uint64_t a1)
{
  AppSSOLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOConfigurationHost");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOConfigurationHostClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSOConfigurationHostClass_block_invoke_cold_1();
    AppSSOLibrary();
  }
}

void AppSSOLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!AppSSOLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __AppSSOLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279A3AB40;
    v3 = 0;
    AppSSOLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppSSOLibraryCore_frameworkLibrary)
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

uint64_t __AppSSOLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppSSOLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSOConfigurationManagerClass_block_invoke(uint64_t a1)
{
  AppSSOLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOConfigurationManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOConfigurationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSOConfigurationManagerClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_5_2();
  }
}

id PO_LOG_POAgentProcess_0(uint64_t a1)
{
  if (PO_LOG_POAgentProcess_once_0 != -1)
  {
    PO_LOG_POAgentProcess_cold_1_0();
  }

  v2 = PO_LOG_POAgentProcess_log_0;

  return v2;
}

void OUTLINED_FUNCTION_5_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

id PO_LOG_POExtension(uint64_t a1)
{
  if (PO_LOG_POExtension_once != -1)
  {
    PO_LOG_POExtension_cold_1();
  }

  v2 = PO_LOG_POExtension_log;

  return v2;
}

void sub_25E874408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E87461C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25E87485C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25E874AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25E874D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25E87504C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id PO_LOG_POExtensionAgentProcess(uint64_t a1)
{
  if (PO_LOG_POExtensionAgentProcess_once != -1)
  {
    PO_LOG_POExtensionAgentProcess_cold_1();
  }

  v2 = PO_LOG_POExtensionAgentProcess_log;

  return v2;
}

id getASAuthorizationErrorDomain_0()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getASAuthorizationErrorDomainSymbolLoc_ptr_0;
  v9 = getASAuthorizationErrorDomainSymbolLoc_ptr_0;
  if (!getASAuthorizationErrorDomainSymbolLoc_ptr_0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getASAuthorizationErrorDomainSymbolLoc_block_invoke_0;
    v5[3] = &unk_279A3A600;
    v5[4] = &v6;
    __getASAuthorizationErrorDomainSymbolLoc_block_invoke_0(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    getASAuthorizationErrorDomain_cold_1();
    v4 = v3;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  v1 = *v0;

  return v1;
}

void *__getASAuthorizationErrorDomainSymbolLoc_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AuthenticationServicesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AuthenticationServicesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279A3ADD8;
    v7 = 0;
    AuthenticationServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = AuthenticationServicesLibraryCore_frameworkLibrary_0;
    if (AuthenticationServicesLibraryCore_frameworkLibrary_0)
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

  v2 = AuthenticationServicesLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "ASAuthorizationErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASAuthorizationErrorDomainSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthenticationServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  AuthenticationServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id Logger.PSSO_ERROR(code:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25E88C54C();
  v5 = [objc_opt_self() errorWithCode:a1 description:v4];

  v6 = sub_25E88C5CC();
  v7 = sub_25E88C4BC();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_25E831000, v7, v6, "%{public}@", v8, 0xCu);
    sub_25E87E0A4(v9);
    MEMORY[0x25F8C24B0](v9, -1, -1);
    MEMORY[0x25F8C24B0](v8, -1, -1);
  }

  return v5;
}

id Logger.PSSO_ERROR_VALUE(code:description:value:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25E88C54C();
  v7 = [objc_opt_self() errorWithCode:a1 description:v6];

  v8 = sub_25E88C5CC();
  v9 = sub_25E88C4BC();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v7;
    *(v10 + 12) = 2114;
    *(v10 + 14) = a4;
    *v11 = v7;
    v11[1] = a4;
    v12 = v7;
    v13 = a4;
    _os_log_impl(&dword_25E831000, v9, v8, "%{public}@, %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0ADA0, &qword_25E890720);
    swift_arrayDestroy();
    MEMORY[0x25F8C24B0](v11, -1, -1);
    MEMORY[0x25F8C24B0](v10, -1, -1);
  }

  return v7;
}

id Logger.PSSO_SUBERROR(code:subError:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25E88C49C();
  v6 = sub_25E88C54C();
  v7 = [objc_opt_self() errorWithCode:a1 underlyingError:v5 description:v6];

  v8 = sub_25E88C5CC();
  v9 = sub_25E88C4BC();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_25E831000, v9, v8, "%{public}@", v10, 0xCu);
    sub_25E87E0A4(v11);
    MEMORY[0x25F8C24B0](v11, -1, -1);
    MEMORY[0x25F8C24B0](v10, -1, -1);
  }

  return v7;
}

id Logger.PSSO_SUBERROR_VALUE(code:subError:description:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_25E88C49C();
  v8 = sub_25E88C54C();
  v9 = [objc_opt_self() errorWithCode:a1 underlyingError:v7 description:v8];

  v10 = sub_25E88C5CC();
  v11 = sub_25E88C4BC();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543618;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2114;
    *(v12 + 14) = a5;
    *v13 = v9;
    v13[1] = a5;
    v14 = v9;
    v15 = a5;
    _os_log_impl(&dword_25E831000, v11, v10, "%{public}@, %{public}@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0ADA0, &qword_25E890720);
    swift_arrayDestroy();
    MEMORY[0x25F8C24B0](v13, -1, -1);
    MEMORY[0x25F8C24B0](v12, -1, -1);
  }

  return v9;
}

uint64_t sub_25E87E0A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0ADA0, &qword_25E890720);
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

uint64_t sub_25E87E154()
{
  v0 = sub_25E88C4DC();
  __swift_allocate_value_buffer(v0, qword_27FD0B0B8);
  __swift_project_value_buffer(v0, qword_27FD0B0B8);
  return sub_25E88C4CC();
}

uint64_t sub_25E87E224()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_25E87E338;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADF0, &qword_25E890788);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25E87E4AC;
  v0[13] = &block_descriptor_109;
  v0[14] = v2;
  [v1 _startDeviceRegistrationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25E87E338()
{

  return MEMORY[0x2822009F8](sub_25E885738, 0, 0);
}

uint64_t sub_25E87E418()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25E885730;

  return sub_25E87E204(v3, v4, v5, v2);
}

uint64_t sub_25E87E4AC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_25E87E4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_25E884FF8(a3, v24 - v9);
  v11 = sub_25E88C59C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25E885068(v10);
  }

  else
  {
    sub_25E88C58C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25E88C57C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25E88C56C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_25E885068(a3);

      return v22;
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

  sub_25E885068(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25E87E7C0()
{
  v1[127] = v0;
  v1[128] = swift_getObjectType();
  v2 = sub_25E88C4EC();
  v1[129] = v2;
  v1[130] = *(v2 - 8);
  v1[131] = swift_task_alloc();
  v3 = sub_25E88C51C();
  v1[132] = v3;
  v1[133] = *(v3 - 8);
  v1[134] = swift_task_alloc();
  v4 = sub_25E88C4FC();
  v1[135] = v4;
  v1[136] = *(v4 - 8);
  v1[137] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25E87E970, 0, 0);
}

uint64_t sub_25E87E970()
{
  if (qword_27FD0B0B0 != -1)
  {
    swift_once();
  }

  v1 = sub_25E88C4DC();
  *(v0 + 1104) = __swift_project_value_buffer(v1, qword_27FD0B0B8);
  v2 = sub_25E88C4BC();
  v3 = sub_25E88C5BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25E831000, v2, v3, "Starting Device Registration", v4, 2u);
    MEMORY[0x25F8C24B0](v4, -1, -1);
  }

  v5 = *(v0 + 1016);

  v6 = [v5 registrationContext];
  *(v0 + 1112) = v6;
  if (!v6)
  {
    goto LABEL_50;
  }

  v7 = v6;
  [v6 setState_];
  v8 = sub_25E88C4BC();
  v9 = sub_25E88C5AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_25E831000, v8, v9, "Loading SSO extension", v10, 2u);
    MEMORY[0x25F8C24B0](v10, -1, -1);
  }

  v11 = *(v0 + 1016);

  [v11 reloadSSOExtensionIfNeeded];
  v12 = [v7 ssoExtension];
  *(v0 + 1120) = v12;
  if (!v12)
  {
    v49 = v0 + 16;
    v50 = *(v0 + 1016);
    v51 = Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000015, 0x800000025E898680);
    v52 = sub_25E88C49C();
    *(v0 + 1176) = v52;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 960;
    *(v0 + 24) = sub_25E8809C0;
    v53 = swift_continuation_init();
    *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB8, &qword_25E890768);
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_25E885740;
    *(v0 + 488) = &block_descriptor;
    *(v0 + 496) = v53;
    [v50 showAlertWithError:v52 completion:v0 + 464];
    goto LABEL_45;
  }

  v13 = v12;
  v14 = sub_25E88C4BC();
  v15 = sub_25E88C5AC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_25E831000, v14, v15, "Reset the JWKS cache", v16, 2u);
    MEMORY[0x25F8C24B0](v16, -1, -1);
  }

  v17 = *(v0 + 1016);

  v18 = [v17 jwksStorageProvider];
  v19 = [v7 extensionIdentifier];
  if (!v19)
  {
    sub_25E88C55C();
    v19 = sub_25E88C54C();
  }

  [v18 setJwksCache:0 forExtensionIdentifier:v19];

  swift_unknownObjectRelease();
  v20 = sub_25E88C4BC();
  v21 = sub_25E88C5AC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_25E831000, v20, v21, "Setup registration options", v22, 2u);
    MEMORY[0x25F8C24B0](v22, -1, -1);
  }

  v23 = *(v0 + 1016);

  [v23 setupDeviceRegistrationOptions];
  v24 = [v7 userNotified];
  if (([v7 userNotified] & 1) != 0 || (v25 = objc_msgSend(v7, sel_registrationToken)) == 0)
  {
    if (v24)
    {
      [v7 setOptions_];
      v26 = 1;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v26 = 0;
LABEL_21:
  *(v0 + 1201) = v26;
  if ([v7 authMethod] == 3 && (objc_msgSend(v7, sel_isRunningInBuddy) & 1) == 0)
  {
    v27 = sub_25E88C4BC();
    v28 = sub_25E88C5AC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_25E831000, v27, v28, "Checking for existing SmartCard binding", v29, 2u);
      MEMORY[0x25F8C24B0](v29, -1, -1);
    }

    v30 = *(v0 + 1016);

    [v30 findExistingSmartCardBinding];
  }

  if (!v26 || ([v7 isRunningInBuddy] & 1) != 0)
  {
    goto LABEL_31;
  }

  v31 = sub_25E88C4BC();
  v32 = sub_25E88C5AC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_25E831000, v31, v32, "Requesting authorization for registration", v33, 2u);
    MEMORY[0x25F8C24B0](v33, -1, -1);
  }

  v34 = *(v0 + 1016);

  if ([v34 handleUserAuthorizationForRegistration])
  {
LABEL_31:
    if (([v7 userNotified] & 1) == 0)
    {
      [v7 isBuddyFlow];
    }

    v35 = sub_25E88C4BC();
    v36 = sub_25E88C5AC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_25E831000, v35, v36, "Create or update device configuration", v37, 2u);
      MEMORY[0x25F8C24B0](v37, -1, -1);
    }

    v38 = *(v0 + 1016);

    *(v0 + 968) = 0;
    v39 = [v38 createOrRepairDeviceConfigurationWithError_];
    v40 = *(v0 + 968);
    if (v39)
    {
      v41 = v40;
      if ([v7 isRunningInBuddy] && objc_msgSend(v7, sel_authMethod) == 2 && getuid() == 248)
      {
        [*(v0 + 1016) createUserConfigurationForBuddyUser];
      }

      v42 = sub_25E88C4BC();
      v43 = sub_25E88C5AC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_25E831000, v42, v43, "Update login rules and defaults", v44, 2u);
        MEMORY[0x25F8C24B0](v44, -1, -1);
      }

      v45 = *(v0 + 1016);

      v46 = [v45 configurationManager];
      *(v0 + 1128) = v46;
      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 1200;
      *(v0 + 152) = sub_25E87F414;
      v47 = swift_continuation_init();
      *(v0 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADC0, &qword_25E890770);
      *(v0 + 624) = v47;
      *(v0 + 592) = MEMORY[0x277D85DD0];
      *(v0 + 600) = 1107296256;
      *(v0 + 608) = sub_25E88106C;
      *(v0 + 616) = &block_descriptor_7;
      [v46 enablePlatformSSORulesAndDefaultsIfNeeded_];
      v48 = v0 + 144;
      goto LABEL_46;
    }

    v49 = v0 + 80;
    v54 = *(v0 + 1016);
    v55 = v40;
    *(v0 + 1184) = sub_25E88C4AC();

    swift_willThrow();
    v56 = Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000025, 0x800000025E8986A0);
    v57 = sub_25E88C49C();
    *(v0 + 1192) = v57;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 976;
    *(v0 + 88) = sub_25E880B9C;
    v58 = swift_continuation_init();
    *(v0 + 584) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB8, &qword_25E890768);
    *(v0 + 560) = v58;
    *(v0 + 528) = MEMORY[0x277D85DD0];
    *(v0 + 536) = 1107296256;
    *(v0 + 544) = sub_25E885740;
    *(v0 + 552) = &block_descriptor_4;
    [v54 showAlertWithError:v57 completion:v0 + 528];
LABEL_45:
    v48 = v49;
LABEL_46:

    return MEMORY[0x282200938](v48);
  }

  v59 = *(v0 + 1016);
  [v59 failDeviceRegistrationBeforeAuthorization];

  [v59 notifyDeviceRegistrationDidChange];
LABEL_50:

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_25E87F414()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1136) = v1;
  if (v1)
  {
    v2 = sub_25E880DAC;
  }

  else
  {
    v2 = sub_25E87F550;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25E87F550()
{
  v1 = sub_25E88C4BC();
  v2 = sub_25E88C5AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25E831000, v1, v2, "Request device registration", v3, 2u);
    MEMORY[0x25F8C24B0](v3, -1, -1);
  }

  v4 = *(v0 + 1112);

  v5 = [v4 options];
  v6 = [v4 profile];
  v7 = [v6 extensionData];

  if (v7)
  {
    sub_25E88C53C();

    v7 = sub_25E88C52C();
  }

  *(v0 + 1144) = v7;
  v8 = *(v0 + 1120);
  *(v0 + 208) = v0;
  *(v0 + 248) = v0 + 984;
  *(v0 + 216) = sub_25E87F7D4;
  v9 = swift_continuation_init();
  *(v0 + 712) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADC8, &qword_25E890778);
  *(v0 + 688) = v9;
  *(v0 + 656) = MEMORY[0x277D85DD0];
  *(v0 + 664) = 1107296256;
  *(v0 + 672) = sub_25E885740;
  *(v0 + 680) = &block_descriptor_10;
  [v8 beginDeviceRegistrationUsingOptions:v5 extensionData:v7 completion:v0 + 656];

  return MEMORY[0x282200938](v0 + 208);
}

uint64_t sub_25E87F7D4()
{

  return MEMORY[0x2822009F8](sub_25E87F8E0, 0, 0);
}

uint64_t sub_25E87F8E0()
{
  v1 = *(v0 + 984);

  v2 = objc_opt_self();
  v3 = sub_25E88C54C();
  [v2 analyticsForRegistrationType:v3 options:0 result:v1];

  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        v20 = *(v0 + 1201);
        v21 = *(v0 + 1112);
        v22 = *(v0 + 1016);
        [v21 setState_];
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v24 = [objc_opt_self() bundleForClass_];
        sub_25E88C48C();

        v25 = sub_25E88C54C();

        [v22 finishRegistrationWithStatus:0 message:{v25, 0xE000000000000000}];

        if (([v21 isBuddyFlow] & 1) == 0 && v20)
        {
          [*(v0 + 1016) promptUserForRegistration];
        }
      }

      else if (v1 != 10)
      {
        return sub_25E88C62C();
      }

      v5 = *(v0 + 1112);
      v6 = *(v0 + 1016);

      goto LABEL_25;
    }

    v7 = [*(v0 + 1112) isBuddyFlow];
    v8 = *(v0 + 1120);
    v9 = *(v0 + 1112);
    if (v7)
    {
      v10 = *(v0 + 1096);
      v54 = *(v0 + 1120);
      v11 = *(v0 + 1088);
      v12 = *(v0 + 1080);
      v53 = *(v0 + 1072);
      v56 = *(v0 + 1064);
      v57 = *(v0 + 1056);
      v13 = *(v0 + 1048);
      v55 = *(v0 + 1040);
      v14 = *(v0 + 1032);
      v15 = *(v0 + 1016);
      [v9 setUserNotified_];
      [v15 registrationNeedsToShowUI];
      sub_25E884594(0, &qword_27FD0ADD0, 0x277D85C78);
      (*(v11 + 104))(v10, *MEMORY[0x277D851C0], v12);
      v16 = sub_25E88C5EC();
      (*(v11 + 8))(v10, v12);
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      *(v0 + 944) = sub_25E8843B8;
      *(v0 + 952) = v17;
      *(v0 + 912) = MEMORY[0x277D85DD0];
      *(v0 + 920) = 1107296256;
      *(v0 + 928) = sub_25E881194;
      *(v0 + 936) = &block_descriptor_16;
      v18 = _Block_copy((v0 + 912));
      v19 = v15;
      sub_25E88C50C();
      *(v0 + 992) = MEMORY[0x277D84F90];
      sub_25E8843E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADE0, &qword_25E890780);
      sub_25E884438();
      sub_25E88C61C();
      MEMORY[0x25F8C1820](0, v53, v13, v18);

      _Block_release(v18);
      (*(v55 + 8))(v13, v14);
      (*(v56 + 8))(v53, v57);

LABEL_24:
      v5 = *(v0 + 1112);
      v6 = *(v0 + 1016);
LABEL_25:
      [v6 notifyDeviceRegistrationDidChange];

      v34 = *(v0 + 8);

      return v34();
    }

    v33 = *(v0 + 1016);
    [v9 setState_];
    [v33 promptUserForRegistration];
LABEL_23:

    goto LABEL_24;
  }

  if (v1)
  {
    if (v1 != 1)
    {
      return sub_25E88C62C();
    }

    v4 = *(v0 + 1120);
    v5 = *(v0 + 1112);
    v6 = *(v0 + 1016);
    [v6 failDeviceRegistrationPostRegistrationWithUserInteractionAllowed_];

    goto LABEL_25;
  }

  v26 = [*(v0 + 1016) configurationManager];
  v8 = [v26 currentDeviceConfiguration];
  *(v0 + 1152) = v8;

  if (!v8)
  {
    v35 = v0 + 720;
    v36 = v0 + 272;
    v37 = *(v0 + 1016);
    v38 = Logger.PSSO_ERROR(code:description:)(-1001, 0xD00000000000001CLL, 0x800000025E8987B0);
    v39 = sub_25E88C49C();
    *(v0 + 1168) = v39;

    *(v0 + 272) = v0;
    *(v0 + 312) = v0 + 1000;
    *(v0 + 280) = sub_25E8807C4;
    v40 = swift_continuation_init();
    *(v0 + 776) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB8, &qword_25E890768);
    *(v0 + 752) = v40;
    *(v0 + 720) = MEMORY[0x277D85DD0];
    *(v0 + 728) = 1107296256;
    *(v0 + 736) = sub_25E885740;
    *(v0 + 744) = &block_descriptor_19;
LABEL_30:
    [v37 showAlertWithError:v39 completion:v35];
    v43 = v36;
    goto LABEL_31;
  }

  v27 = sub_25E88C4BC();
  v28 = sub_25E88C5AC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_25E831000, v27, v28, "Device registration complete", v29, 2u);
    MEMORY[0x25F8C24B0](v29, -1, -1);
  }

  v30 = *(v0 + 1016);

  [v8 setRegistrationCompleted_];
  v31 = [v30 configurationManager];
  LODWORD(v30) = [v31 saveDeviceConfigurationSyncAllConfigToPreboot_];

  if (!v30)
  {
    v35 = v0 + 784;
    v36 = v0 + 336;
    v37 = *(v0 + 1016);
    v41 = Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000023, 0x800000025E8987D0);
    v39 = sub_25E88C49C();
    *(v0 + 1160) = v39;

    *(v0 + 336) = v0;
    *(v0 + 376) = v0 + 1008;
    *(v0 + 344) = sub_25E8805B8;
    v42 = swift_continuation_init();
    *(v0 + 840) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB8, &qword_25E890768);
    *(v0 + 816) = v42;
    *(v0 + 784) = MEMORY[0x277D85DD0];
    *(v0 + 792) = 1107296256;
    *(v0 + 800) = sub_25E885740;
    *(v0 + 808) = &block_descriptor_22;
    goto LABEL_30;
  }

  if ([*(v0 + 1112) isBuddyFlow] || (objc_msgSend(*(v0 + 1112), sel_userIsPlatformSSOUser) & 1) == 0)
  {
    v50 = *(v0 + 1120);
    v5 = *(v0 + 1112);
    v6 = *(v0 + 1016);
    v51 = [v5 ssoExtension];
    [v51 close];

    [v6 finishRegistrationWithStatus:1 message:0];
    goto LABEL_25;
  }

  v44 = *(v0 + 1112);
  [v44 setState_];
  if (![v44 userNotified])
  {
    v52 = *(v0 + 1120);
    [*(v0 + 1016) promptUserForRegistration];

    goto LABEL_23;
  }

  v45 = sub_25E88C4BC();
  v46 = sub_25E88C5AC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_25E831000, v45, v46, "Starting user registration after user notification", v47, 2u);
    MEMORY[0x25F8C24B0](v47, -1, -1);
  }

  v48 = *(v0 + 1016);

  [v48 notifyDeviceRegistrationDidChange];
  *(v0 + 400) = v0;
  *(v0 + 408) = sub_25E8803D8;
  v49 = swift_continuation_init();
  *(v0 + 904) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADF0, &qword_25E890788);
  *(v0 + 880) = v49;
  *(v0 + 848) = MEMORY[0x277D85DD0];
  *(v0 + 856) = 1107296256;
  *(v0 + 864) = sub_25E87E4AC;
  *(v0 + 872) = &block_descriptor_25;
  [v48 _startUserRegistrationWithCompletionHandler_];
  v43 = v0 + 400;
LABEL_31:

  return MEMORY[0x282200938](v43);
}

uint64_t sub_25E8803D8()
{

  return MEMORY[0x2822009F8](sub_25E8804E4, 0, 0);
}

uint64_t sub_25E8804E4()
{
  v1 = *(v0 + 1152);

  v2 = *(v0 + 1112);
  [*(v0 + 1016) notifyDeviceRegistrationDidChange];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25E8805B8()
{

  return MEMORY[0x2822009F8](sub_25E8806C4, 0, 0);
}

uint64_t sub_25E8806C4()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1016);

  [v4 finishRegistrationWithStatus:0 message:0];
  [v4 notifyDeviceRegistrationDidChange];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25E8807C4()
{

  return MEMORY[0x2822009F8](sub_25E8808D0, 0, 0);
}

uint64_t sub_25E8808D0()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1016);

  [v3 finishRegistrationWithStatus:0 message:0];
  [v3 notifyDeviceRegistrationDidChange];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25E8809C0()
{

  return MEMORY[0x2822009F8](sub_25E880ACC, 0, 0);
}

uint64_t sub_25E880ACC()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1016);

  [v2 notifyDeviceRegistrationDidChange];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25E880B9C()
{

  return MEMORY[0x2822009F8](sub_25E880CA8, 0, 0);
}

uint64_t sub_25E880CA8()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1016);

  [v4 finishRegistrationWithStatus:0 message:0];
  [v4 notifyDeviceRegistrationDidChange];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25E880DAC()
{
  v1 = v0[142];
  v2 = v0[141];
  swift_willThrow();

  v3 = sub_25E88C4BC();
  v4 = sub_25E88C5AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25E831000, v3, v4, "Request device registration", v5, 2u);
    MEMORY[0x25F8C24B0](v5, -1, -1);
  }

  v6 = v0[139];

  v7 = [v6 options];
  v8 = [v6 profile];
  v9 = [v8 extensionData];

  if (v9)
  {
    sub_25E88C53C();

    v9 = sub_25E88C52C();
  }

  v0[143] = v9;
  v10 = v0[140];
  v0[26] = v0;
  v0[31] = v0 + 123;
  v0[27] = sub_25E87F7D4;
  v11 = swift_continuation_init();
  v0[89] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADC8, &qword_25E890778);
  v0[86] = v11;
  v0[82] = MEMORY[0x277D85DD0];
  v0[83] = 1107296256;
  v0[84] = sub_25E885740;
  v0[85] = &block_descriptor_10;
  [v10 beginDeviceRegistrationUsingOptions:v7 extensionData:v9 completion:v0 + 82];

  return MEMORY[0x282200938](v0 + 26);
}

uint64_t sub_25E88106C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADF8, &qword_25E8907A8);
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

uint64_t sub_25E881138(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_25E881194(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25E88134C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_25E88573C;

  return sub_25E87E7C0();
}

void sub_25E8813F4(char a1)
{
  swift_getObjectType();
  v3 = [v1 registrationContext];
  if (v3)
  {
    v12 = v3;
    if ([v3 isBuddyFlow])
    {
      [v12 setState_];
      [v1 setRegistrationFailed_];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v5 = [objc_opt_self() bundleForClass_];
      sub_25E88C48C();

      v6 = sub_25E88C54C();

      [v1 finishRegistrationWithStatus:0 message:{v6, 0xE000000000000000}];

      v7 = v6;
    }

    else
    {
      [v12 setRetry_];
      if (a1)
      {
        v8 = 3;
      }

      else
      {
        v8 = 5;
      }

      [v12 setState_];
      v9 = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass_];
      sub_25E88C48C();

      v11 = sub_25E88C54C();

      [v1 finishRegistrationWithStatus:0 message:{v11, 0xE000000000000000}];

      [v1 setRegistrationFailed_];
      if ([v12 isBuddyFlow] & 1) == 0 && (a1)
      {
        [v1 promptUserForRegistration];
      }

      v7 = v12;
    }
  }
}

uint64_t sub_25E88170C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748);
  MEMORY[0x28223BE20]();
  v5 = &v10 - v4;
  v6 = sub_25E88C59C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v8 = v2;
  sub_25E87E4E0(0, 0, v5, a2, v7);
}

uint64_t sub_25E881824()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_25E881938;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADF0, &qword_25E890788);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25E87E4AC;
  v0[13] = &block_descriptor_96;
  v0[14] = v2;
  [v1 _startUserRegistrationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25E881938()
{

  return MEMORY[0x2822009F8](sub_25E881A18, 0, 0);
}

uint64_t sub_25E881A4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748);
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = sub_25E88C59C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v10 = a1;
  sub_25E87E4E0(0, 0, v7, a4, v9);
}

uint64_t sub_25E881B48()
{
  *(v1 + 312) = v0;
  *(v1 + 320) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_25E881BE4, 0, 0);
}

uint64_t sub_25E881BE4()
{
  v1 = [*(v0 + 312) registrationContext];
  *(v0 + 328) = v1;
  if (!v1)
  {
    goto LABEL_46;
  }

  v2 = v1;
  [v1 setState_];
  if (qword_27FD0B0B0 != -1)
  {
    swift_once();
  }

  v3 = sub_25E88C4DC();
  *(v0 + 336) = __swift_project_value_buffer(v3, qword_27FD0B0B8);
  v4 = sub_25E88C4BC();
  v5 = sub_25E88C5AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25E831000, v4, v5, "Loading SSO Extension", v6, 2u);
    MEMORY[0x25F8C24B0](v6, -1, -1);
  }

  v7 = *(v0 + 312);

  [v7 reloadSSOExtensionIfNeeded];
  v8 = [v2 ssoExtension];
  *(v0 + 344) = v8;
  if (!v8)
  {
    v58 = *(v0 + 312);
    v59 = Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000015, 0x800000025E898680);
    v60 = sub_25E88C49C();
    *(v0 + 376) = v60;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_25E882F24;
    v61 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB8, &qword_25E890768);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_25E885740;
    *(v0 + 168) = &block_descriptor_32;
    *(v0 + 176) = v61;
    [v58 showAlertWithError:v60 completion:v0 + 144];
    v57 = v0 + 16;
LABEL_38:

    return MEMORY[0x282200938](v57);
  }

  v9 = v8;
  v10 = sub_25E88C4BC();
  v11 = sub_25E88C5AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25E831000, v10, v11, "Set user registration options", v12, 2u);
    MEMORY[0x25F8C24B0](v12, -1, -1);
  }

  v13 = *(v0 + 312);

  [v13 setupUserRegistrationOptions];
  if ([v2 authMethod] == 3)
  {
    v14 = sub_25E88C4BC();
    v15 = sub_25E88C5AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_25E831000, v14, v15, "Checking for existing SmartCard binding", v16, 2u);
      MEMORY[0x25F8C24B0](v16, -1, -1);
    }

    v17 = *(v0 + 312);

    [v17 findExistingSmartCardBinding];
  }

  if (([v2 isBuddyFlow] & 1) == 0)
  {
    v18 = sub_25E88C4BC();
    v19 = sub_25E88C5AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25E831000, v18, v19, "The current user needs authorization", v20, 2u);
      MEMORY[0x25F8C24B0](v20, -1, -1);
    }

    v21 = *(v0 + 312);

    [v21 handleAuthorizationForNewUsers];
  }

  v22 = sub_25E88C4BC();
  v23 = sub_25E88C5AC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_25E831000, v22, v23, "Request authorization for registration", v24, 2u);
    MEMORY[0x25F8C24B0](v24, -1, -1);
  }

  v25 = *(v0 + 312);

  if ([v25 handleUserAuthorizationForRegistration])
  {
    if (([v2 userNotified] & 1) == 0)
    {
      [v2 isBuddyFlow];
    }

    v26 = sub_25E88C4BC();
    v27 = sub_25E88C5AC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_25E831000, v26, v27, "Remove previous password binding", v28, 2u);
      MEMORY[0x25F8C24B0](v28, -1, -1);
    }

    v29 = *(v0 + 312);

    [v29 removeBindingForNonPasswordAuth];
    v30 = sub_25E88C4BC();
    v31 = sub_25E88C5AC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25E831000, v30, v31, "Create or update the user configuration", v32, 2u);
      MEMORY[0x25F8C24B0](v32, -1, -1);
    }

    v33 = *(v0 + 312);

    *(v0 + 280) = 0;
    v34 = [v33 createOrRepairUserConfigurationWithError_];
    v35 = *(v0 + 280);
    if (!v34)
    {
      v66 = v35;
      v67 = sub_25E88C4AC();

      swift_willThrow();
      *(v0 + 288) = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADF8, &qword_25E8907A8);
      sub_25E884594(0, &qword_27FD0AE00, 0x277CCA9B8);
      result = swift_dynamicCast();
      if (!result)
      {
        return result;
      }

      v68 = *(v0 + 296);
      if ([v68 code] == -1006)
      {
        v43 = *(v0 + 312);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v70 = [objc_opt_self() bundleForClass_];
        sub_25E88C48C();

        v71 = sub_25E88C54C();

        [v43 finishRegistrationWithStatus:0 message:{v71, 0xE000000000000000}];
      }

      else
      {
        v43 = *(v0 + 312);
        [v43 finishRegistrationWithRetry];
      }

      goto LABEL_45;
    }

    v36 = *(v0 + 312);
    v37 = v35;
    [v36 notifyUserRegistrationDidChange];
    v38 = sub_25E88C4BC();
    v39 = sub_25E88C5AC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_25E831000, v38, v39, "Checking for user SmartCard", v40, 2u);
      MEMORY[0x25F8C24B0](v40, -1, -1);
    }

    v41 = *(v0 + 312);

    v42 = [v41 requestAndBindSmartCardForUser];
    v43 = *(v0 + 312);
    if (v42)
    {
      v44 = [*(v0 + 312) configurationManager];
      v45 = [v44 currentUserConfiguration];

      v46 = [v45 pendingSigningAlgorithm];
      if (v46)
      {

        [v2 setOptions_];
      }

      v47 = v0 + 304;
      v48 = sub_25E88C4BC();
      v49 = sub_25E88C5AC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_25E831000, v48, v49, "Requesting user registration", v50, 2u);
        MEMORY[0x25F8C24B0](v50, -1, -1);
      }

      v51 = [v2 loginUserName];
      *(v0 + 352) = v51;
      v52 = [v2 authMethod];
      v53 = [v2 options];
      v54 = [v2 profile];
      v55 = [v54 extensionData];

      if (v55)
      {
        sub_25E88C53C();

        v55 = sub_25E88C52C();
        v47 = v0 + 304;
      }

      *(v0 + 360) = v55;
      *(v0 + 80) = v0;
      *(v0 + 120) = v47;
      *(v0 + 88) = sub_25E882810;
      v56 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADC8, &qword_25E890778);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_25E885740;
      *(v0 + 232) = &block_descriptor_35;
      *(v0 + 240) = v56;
      [v9 beginUserRegistrationUsingUserName:v51 authenticationMethod:v52 options:v53 extensionData:v55 completion:v0 + 208];
      v57 = v0 + 80;
      goto LABEL_38;
    }
  }

  else
  {
    v62 = sub_25E88C4BC();
    v63 = sub_25E88C5AC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_25E831000, v62, v63, "Authorization request failed", v64, 2u);
      MEMORY[0x25F8C24B0](v64, -1, -1);
    }

    v43 = *(v0 + 312);

    [v43 failUserRegistrationBeforeAuthorization];
  }

LABEL_45:
  [v43 notifyUserRegistrationDidChange];

LABEL_46:
  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_25E882810()
{

  return MEMORY[0x2822009F8](sub_25E88291C, 0, 0);
}

uint64_t sub_25E88291C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 304);

  v4 = objc_opt_self();
  v5 = sub_25E88C54C();
  [v4 analyticsForRegistrationType:v5 options:0 result:v3];

  [v2 close];
  if (v3 > 1)
  {
    switch(v3)
    {
      case 2:
        v9 = sub_25E88C4BC();
        v10 = sub_25E88C5AC();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_25E831000, v9, v10, "User interface requested", v11, 2u);
          MEMORY[0x25F8C24B0](v11, -1, -1);
        }

        v12 = *(v0 + 328);

        v13 = [v12 isBuddyFlow];
        v14 = *(v0 + 328);
        if (v13)
        {
          [v14 setUserNotified_];
          v15 = &selRef_registrationNeedsToShowUI;
        }

        else
        {
          [v14 setState_];
          v15 = &selRef_promptUserForRegistration;
        }

        v6 = *(v0 + 344);
        v7 = *(v0 + 328);
        v8 = *(v0 + 312);
        [v8 *v15];
        goto LABEL_25;
      case 3:
        if (([*(v0 + 328) isRetry] & 1) == 0)
        {
          v16 = *(v0 + 328);
          v17 = [*(v0 + 312) configurationManager];
          v18 = [v16 userName];
          if (v18)
          {
            v19 = v18;
            sub_25E88C55C();
          }

          v22 = sub_25E88C54C();

          v23 = [v17 removeUserConfigurationForUserName_];

          if ((v23 & 1) == 0)
          {
          }
        }

        v6 = *(v0 + 344);
        v7 = *(v0 + 328);
        v8 = *(v0 + 312);
        [v8 finishRegistrationWithStatus:0 message:0];
        goto LABEL_25;
      case 10:
        v6 = *(v0 + 344);
        v7 = *(v0 + 328);
        v8 = *(v0 + 312);
LABEL_25:

        [v8 notifyUserRegistrationDidChange];
        v24 = *(v0 + 8);

        return v24();
    }

    return sub_25E88C62C();
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v6 = *(v0 + 344);
      v7 = *(v0 + 328);
      v8 = *(v0 + 312);
      [v8 finishRegistrationWithRetry];
      goto LABEL_25;
    }

    return sub_25E88C62C();
  }

  v20 = swift_task_alloc();
  *(v0 + 368) = v20;
  *v20 = v0;
  v20[1] = sub_25E882D4C;

  return sub_25E8830F8();
}

uint64_t sub_25E882D4C()
{

  return MEMORY[0x2822009F8](sub_25E882E74, 0, 0);
}

uint64_t sub_25E882E74()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);

  [v2 notifyUserRegistrationDidChange];
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25E882F24()
{

  return MEMORY[0x2822009F8](sub_25E883030, 0, 0);
}

uint64_t sub_25E883030()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);

  [v2 finishRegistrationWithStatus:0 message:0];
  [v2 notifyUserRegistrationDidChange];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25E883118()
{
  if (qword_27FD0B0B0 != -1)
  {
    swift_once();
  }

  v1 = sub_25E88C4DC();
  *(v0 + 224) = __swift_project_value_buffer(v1, qword_27FD0B0B8);
  v2 = sub_25E88C4BC();
  v3 = sub_25E88C5AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25E831000, v2, v3, "User registration was successful", v4, 2u);
    MEMORY[0x25F8C24B0](v4, -1, -1);
  }

  v5 = *(v0 + 216);

  v6 = [v5 registrationContext];
  *(v0 + 232) = v6;
  if (!v6)
  {
    goto LABEL_39;
  }

  v7 = v6;
  v8 = [v6 ssoExtension];
  *(v0 + 240) = v8;
  if (v8)
  {
    v9 = v8;
    v10 = sub_25E88C4BC();
    v11 = sub_25E88C5AC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_25E831000, v10, v11, "Cleanup user configuration", v12, 2u);
      MEMORY[0x25F8C24B0](v12, -1, -1);
    }

    v13 = *(v0 + 216);

    [v13 cleanupUserConfigAfterMigrationToShared];
    if ([v7 authMethod] == 1)
    {
      [*(v0 + 216) storeCredentialAndUpdatePasswordHint];
    }

    v14 = [v9 sdkVersionString];
    [v14 decimalValue];

    v15 = MEMORY[0x25F8C1840](14.0);
    if (MEMORY[0x25F8C1850](v50, v51, v52, v15, v16, v17))
    {
      v18 = sub_25E88C4BC();
      v19 = sub_25E88C5AC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_25E831000, v18, v19, "SDK version is before 14.0", v20, 2u);
        MEMORY[0x25F8C24B0](v20, -1, -1);
      }

      v21 = *(v0 + 216);

      [v21 completeLegacyUserRegistration];
      goto LABEL_38;
    }

    v27 = [*(v0 + 216) process];
    *(v0 + 248) = v27;
    if (!v27)
    {
      return sub_25E88C62C();
    }

    v28 = v27;
    if ([v7 isNewPasswordUser] && objc_msgSend(v7, sel_newUserBindingComplete))
    {
      v29 = sub_25E88C4BC();
      v30 = sub_25E88C5AC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_25E831000, v29, v30, "New user binding was successful, finishing registration", v31, 2u);
        MEMORY[0x25F8C24B0](v31, -1, -1);
      }

      goto LABEL_34;
    }

    if ([v7 authMethod] != 1)
    {
      if (([v7 isNewPasswordUser] & 1) == 0 && !objc_msgSend(v7, sel_isNewSmartCardUser))
      {
        v43 = sub_25E88C4BC();
        v44 = sub_25E88C5AC();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_25E831000, v43, v44, "Requesting user authentication", v45, 2u);
          MEMORY[0x25F8C24B0](v45, -1, -1);
        }

        v46 = *(v0 + 216);

        v47 = [v46 configurationManager];
        v48 = [v47 currentUserConfiguration];

        if (v48)
        {
          [v48 setState_];
        }

        [*(v0 + 216) finishRegistrationWithStatus:1 message:0];
        [v28 performLoginForCurrentUserWithPasswordContext_];
        goto LABEL_37;
      }

      v29 = sub_25E88C4BC();
      v37 = sub_25E88C5AC();
      if (os_log_type_enabled(v29, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_25E831000, v29, v37, "Completing new user registration", v38, 2u);
        MEMORY[0x25F8C24B0](v38, -1, -1);
      }

LABEL_34:
      v39 = *(v0 + 216);

      v40 = [v39 configurationManager];
      v41 = [v40 currentUserConfiguration];

      if (v41)
      {
        [v41 setState_];
      }

      [*(v0 + 216) finishRegistrationWithStatus:1 message:0];
LABEL_37:

LABEL_38:
LABEL_39:
      v42 = *(v0 + 8);

      return v42();
    }

    v32 = sub_25E88C4BC();
    v33 = sub_25E88C5AC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_25E831000, v32, v33, "Requesting user authentication", v34, 2u);
      MEMORY[0x25F8C24B0](v34, -1, -1);
    }

    v35 = *(v0 + 216);

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 208;
    *(v0 + 88) = sub_25E883A04;
    v36 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB8, &qword_25E890768);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_25E885740;
    *(v0 + 168) = &block_descriptor_93;
    *(v0 + 176) = v36;
    [v35 requestUserAuthenticationSyncPassword:1 completion:?];
    v26 = v0 + 80;
  }

  else
  {
    v22 = *(v0 + 216);
    v23 = Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000015, 0x800000025E898680);
    v24 = sub_25E88C49C();
    *(v0 + 256) = v24;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_25E883DF8;
    v25 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB8, &qword_25E890768);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_25E885740;
    *(v0 + 168) = &block_descriptor_90;
    *(v0 + 176) = v25;
    [v22 showAlertWithError:v24 completion:v0 + 144];
    v26 = v0 + 16;
  }

  return MEMORY[0x282200938](v26);
}

uint64_t sub_25E883A04()
{

  return MEMORY[0x2822009F8](sub_25E883AE4, 0, 0);
}

uint64_t sub_25E883AE4(uint64_t a1)
{
  if (*(v1 + 208) == 1)
  {
    v2 = *(v1 + 216);
    v3 = [v2 configurationManager];
    v4 = [v3 currentDeviceConfiguration];

    [v4 supportsTokenUnlock];
    v5 = [v2 configurationManager];
    v6 = [v5 currentUserConfiguration];

    if (v6)
    {
      [v6 setState_];
    }

    [*(v1 + 216) finishRegistrationWithStatus:1 message:0];
    v7 = sub_25E88C4BC();
    v8 = sub_25E88C5AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25E831000, v7, v8, "Competing registration", v9, 2u);
      MEMORY[0x25F8C24B0](v9, -1, -1);
    }

    v10 = *(v1 + 216);

    v11 = [v10 configurationManager];
  }

  else
  {
    v12 = sub_25E88C4BC();
    v13 = sub_25E88C5AC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25E831000, v12, v13, "User authentication failed", v14, 2u);
      MEMORY[0x25F8C24B0](v14, -1, -1);
    }

    v15 = *(v1 + 216);

    [v15 finishRegistrationWithRetry];
    v16 = [v15 configurationManager];
    v17 = [v16 currentUserConfiguration];

    if (v17)
    {
      [v17 setState_];
    }

    v11 = [*(v1 + 216) configurationManager];
  }

  v18 = v11;
  v19 = [v18 saveCurrentUserConfigurationAndSyncToPreboot_];

  v21 = *(v1 + 240);
  v20 = *(v1 + 248);
  v22 = *(v1 + 232);
  if ((v19 & 1) == 0)
  {
    v23 = Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000050, 0x800000025E898910);

    v21 = v22;
    v22 = v20;
    v20 = v23;
  }

  v24 = *(v1 + 8);

  return v24();
}

uint64_t sub_25E883DF8()
{

  return MEMORY[0x2822009F8](sub_25E883ED8, 0, 0);
}

uint64_t sub_25E883ED8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);

  [v2 finishRegistrationWithStatus:0 message:0];
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25E8840D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_25E884178;

  return sub_25E881B48();
}

uint64_t sub_25E884178()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25E884308(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25E8843E0()
{
  result = qword_27FD0ADD8;
  if (!qword_27FD0ADD8)
  {
    sub_25E88C4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0ADD8);
  }

  return result;
}

unint64_t sub_25E884438()
{
  result = qword_27FD0ADE8;
  if (!qword_27FD0ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0ADE0, &qword_25E890780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0ADE8);
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

void *sub_25E8844E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25E884500()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25E885730;

  return sub_25E881804(v3, v4, v5, v2);
}

uint64_t sub_25E884594(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_25E884604(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_25E884650()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25E885730;

  return sub_25E8840D0(v2, v3);
}

uint64_t sub_25E8846FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25E8847F4;

  return v6(a1);
}

uint64_t sub_25E8847F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25E8848EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_25E885730;

  return v6();
}

uint64_t sub_25E8849D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25E885730;

  return sub_25E8848EC(v2, v3, v4);
}

uint64_t sub_25E884A94(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_25E884B7C;

  return v7();
}

uint64_t sub_25E884B7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25E884C70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25E885730;

  return sub_25E884A94(a1, v4, v5, v6);
}

uint64_t sub_25E884D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_25E884FF8(a3, v22 - v9);
  v11 = sub_25E88C59C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25E885068(v10);
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

  sub_25E88C58C();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_25E88C57C();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_25E88C56C() + 32;
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

    sub_25E885068(a3);

    return v20;
  }

LABEL_8:
  sub_25E885068(a3);
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

uint64_t sub_25E884FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E885068(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E8850D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25E885734;

  return v6(a1);
}

uint64_t sub_25E8851C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25E885730;

  return sub_25E8850D0(a1, v4);
}

uint64_t objectdestroy_39Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E8852C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25E885730;

  return sub_25E88134C(v2, v3);
}

uint64_t objectdestroy_43Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25E8853AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25E884B7C;

  return sub_25E884A94(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t sub_25E885560(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25E885730;

  return sub_25E8846FC(a1, v4);
}

uint64_t sub_25E885618(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25E884B7C;

  return sub_25E8846FC(a1, v4);
}

void getASAuthorizationErrorDomain_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  [POLoginManager ssoTokens];
}