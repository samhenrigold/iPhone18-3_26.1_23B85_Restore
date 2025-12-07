void sub_25E8B2B18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_25E91471C(a1, a2);
  }
}

id PO_LOG_POPrebootDeviceConfiguration(uint64_t a1)
{
  if (PO_LOG_POPrebootDeviceConfiguration_once != -1)
  {
    PO_LOG_POPrebootDeviceConfiguration_cold_1();
  }

  v2 = PO_LOG_POPrebootDeviceConfiguration_log;

  return v2;
}

id PO_LOG_POJWT(uint64_t a1)
{
  if (PO_LOG_POJWT_once != -1)
  {
    PO_LOG_POJWT_cold_1();
  }

  v2 = PO_LOG_POJWT_log;

  return v2;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id PO_LOG_POKeyWrap(uint64_t a1)
{
  if (PO_LOG_POKeyWrap_once != -1)
  {
    PO_LOG_POKeyWrap_cold_1();
  }

  v2 = PO_LOG_POKeyWrap_log;

  return v2;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id PO_LOG_POUserConfiguration(uint64_t a1)
{
  if (PO_LOG_POUserConfiguration_once != -1)
  {
    PO_LOG_POUserConfiguration_cold_1();
  }

  v2 = PO_LOG_POUserConfiguration_log;

  return v2;
}

id PO_LOG_PODeviceConfiguration(uint64_t a1)
{
  if (PO_LOG_PODeviceConfiguration_once != -1)
  {
    PO_LOG_PODeviceConfiguration_cold_1();
  }

  v2 = PO_LOG_PODeviceConfiguration_log;

  return v2;
}

uint64_t OUTLINED_FUNCTION_5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 40) = a2;

  return [a1 sharedDeviceKeys];
}

id PO_LOG_POKeychainHelper(uint64_t a1)
{
  if (PO_LOG_POKeychainHelper_once != -1)
  {
    PO_LOG_POKeychainHelper_cold_1();
  }

  v2 = PO_LOG_POKeychainHelper_log;

  return v2;
}

id PO_LOG_PODaemonCoreProcess(uint64_t a1)
{
  if (PO_LOG_PODaemonCoreProcess_once != -1)
  {
    PO_LOG_PODaemonCoreProcess_cold_1();
  }

  v2 = PO_LOG_PODaemonCoreProcess_log;

  return v2;
}

Class __getPODirectoryServicesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PlatformSSOLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PlatformSSOLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A3DE48;
    v6 = 0;
    PlatformSSOLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PlatformSSOLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PODirectoryServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPODirectoryServicesClass_block_invoke_cold_1();
  }

  getPODirectoryServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PlatformSSOLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PlatformSSOLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

id PO_LOG_POKeyBag(uint64_t a1)
{
  if (PO_LOG_POKeyBag_once != -1)
  {
    PO_LOG_POKeyBag_cold_1();
  }

  v2 = PO_LOG_POKeyBag_log;

  return v2;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

id PO_LOG_POSecKeyHelper(uint64_t a1)
{
  if (PO_LOG_POSecKeyHelper_once != -1)
  {
    PO_LOG_POSecKeyHelper_cold_1();
  }

  v2 = PO_LOG_POSecKeyHelper_log;

  return v2;
}

void OUTLINED_FUNCTION_4_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id PO_LOG_PODiagnostics(uint64_t a1)
{
  if (PO_LOG_PODiagnostics_once != -1)
  {
    PO_LOG_PODiagnostics_cold_1();
  }

  v2 = PO_LOG_PODiagnostics_log;

  return v2;
}

id PO_LOG_POAuthenticationProcess(uint64_t a1)
{
  if (PO_LOG_POAuthenticationProcess_once != -1)
  {
    PO_LOG_POAuthenticationProcess_cold_1();
  }

  v2 = PO_LOG_POAuthenticationProcess_log;

  return v2;
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14(void *a1, const char *a2)
{

  return [a1 initWithData:v2 encoding:4];
}

id PO_LOG_POUserLoginConfiguration(uint64_t a1)
{
  if (PO_LOG_POUserLoginConfiguration_once != -1)
  {
    PO_LOG_POUserLoginConfiguration_cold_1();
  }

  v2 = PO_LOG_POUserLoginConfiguration_log;

  return v2;
}

id PO_LOG_POXMLHelper(uint64_t a1)
{
  if (PO_LOG_POXMLHelper_once != -1)
  {
    PO_LOG_POXMLHelper_cold_1();
  }

  v2 = PO_LOG_POXMLHelper_log;

  return v2;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id PO_LOG_POJWTSigning(uint64_t a1)
{
  if (PO_LOG_POJWTSigning_once != -1)
  {
    PO_LOG_POJWTSigning_cold_1();
  }

  v2 = PO_LOG_POJWTSigning_log;

  return v2;
}

id PO_LOG_POAuthenticationContext(uint64_t a1)
{
  if (PO_LOG_POAuthenticationContext_once != -1)
  {
    PO_LOG_POAuthenticationContext_cold_1();
  }

  v2 = PO_LOG_POAuthenticationContext_log;

  return v2;
}

void sub_25E8EC9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PO_LOG_POCredentialUtil(uint64_t a1)
{
  if (PO_LOG_POCredentialUtil_once != -1)
  {
    PO_LOG_POCredentialUtil_cold_1();
  }

  v2 = PO_LOG_POCredentialUtil_log;

  return v2;
}

id PO_LOG_POJWTHeader(uint64_t a1)
{
  if (PO_LOG_POJWTHeader_once != -1)
  {
    PO_LOG_POJWTHeader_cold_1();
  }

  v2 = PO_LOG_POJWTHeader_log;

  return v2;
}

id getSOUtilsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOUtilsClass_softClass;
  v7 = getSOUtilsClass_softClass;
  if (!getSOUtilsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOUtilsClass_block_invoke;
    v3[3] = &unk_279A3DE28;
    v3[4] = &v4;
    __getSOUtilsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E8F28F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PO_LOG_POPreferences(uint64_t a1)
{
  if (PO_LOG_POPreferences_once != -1)
  {
    PO_LOG_POPreferences_cold_1();
  }

  v2 = PO_LOG_POPreferences_log;

  return v2;
}

uint64_t AppSSOCoreLibraryCore(uint64_t a1)
{
  if (!AppSSOCoreLibraryCore_frameworkLibrary)
  {
    AppSSOCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AppSSOCoreLibraryCore_frameworkLibrary;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSOUtilsClass_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = AppSSOCoreLibraryCore(&v5);
  v3 = v5;
  if (v2)
  {
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v5);
  }

  free(v3);
LABEL_3:
  result = objc_getClass("SOUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSOUtilsClass_block_invoke_cold_1();
    return __PO_LOG_POPreferences_block_invoke();
  }

  return result;
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id PO_LOG_POAgentCoreProcess(uint64_t a1)
{
  if (PO_LOG_POAgentCoreProcess_once != -1)
  {
    PO_LOG_POAgentCoreProcess_cold_1();
  }

  v2 = PO_LOG_POAgentCoreProcess_log;

  return v2;
}

id PO_LOG_PODaemonCoreConnection(uint64_t a1)
{
  if (PO_LOG_PODaemonCoreConnection_once != -1)
  {
    PO_LOG_PODaemonCoreConnection_cold_1();
  }

  v2 = PO_LOG_PODaemonCoreConnection_log;

  return v2;
}

void sub_25E8FA004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_25E8FA638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
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

void sub_25E8FB470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E8FB784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25E8FBA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25E8FBD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FC1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FC6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FC9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FCDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FD09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
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

void sub_25E8FD378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FD640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
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

id PO_LOG_POAuthPluginCoreProcess(uint64_t a1)
{
  if (PO_LOG_POAuthPluginCoreProcess_once != -1)
  {
    PO_LOG_POAuthPluginCoreProcess_cold_1();
  }

  v2 = PO_LOG_POAuthPluginCoreProcess_log;

  return v2;
}

void sub_25E8FDCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PO_LOG_POJWTEncryption(uint64_t a1)
{
  if (PO_LOG_POJWTEncryption_once != -1)
  {
    PO_LOG_POJWTEncryption_cold_1();
  }

  v2 = PO_LOG_POJWTEncryption_log;

  return v2;
}

id PO_LOG_POLoginConfiguration(uint64_t a1)
{
  if (PO_LOG_POLoginConfiguration_once != -1)
  {
    PO_LOG_POLoginConfiguration_cold_1();
  }

  v2 = PO_LOG_POLoginConfiguration_log;

  return v2;
}

void sub_25E902960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E90793C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PO_LOG_POWSTrustProcess(uint64_t a1)
{
  if (PO_LOG_POWSTrustProcess_once != -1)
  {
    PO_LOG_POWSTrustProcess_cold_1();
  }

  v2 = PO_LOG_POWSTrustProcess_log;

  return v2;
}

id PO_LOG_POUserLoginState(uint64_t a1)
{
  if (PO_LOG_POUserLoginState_once != -1)
  {
    PO_LOG_POUserLoginState_cold_1();
  }

  v2 = PO_LOG_POUserLoginState_log;

  return v2;
}

id PO_LOG_POServiceCoreConnection(uint64_t a1)
{
  if (PO_LOG_POServiceCoreConnection_once != -1)
  {
    PO_LOG_POServiceCoreConnection_cold_1();
  }

  v2 = PO_LOG_POServiceCoreConnection_log;

  return v2;
}

void sub_25E90CC04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id PO_LOG_POTokenHelper(uint64_t a1)
{
  if (PO_LOG_POTokenHelper_once != -1)
  {
    PO_LOG_POTokenHelper_cold_1();
  }

  v2 = PO_LOG_POTokenHelper_log;

  return v2;
}

id PO_LOG_POConfigurationVersion(uint64_t a1)
{
  if (PO_LOG_POConfigurationVersion_once != -1)
  {
    PO_LOG_POConfigurationVersion_cold_1();
  }

  v2 = PO_LOG_POConfigurationVersion_log;

  return v2;
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

id PO_LOG_POCoreConfigurationUtil(uint64_t a1)
{
  if (PO_LOG_POCoreConfigurationUtil_once != -1)
  {
    PO_LOG_POCoreConfigurationUtil_cold_1();
  }

  v2 = PO_LOG_POCoreConfigurationUtil_log;

  return v2;
}

id PO_LOG_POUserUnlockKey(uint64_t a1)
{
  if (PO_LOG_POUserUnlockKey_once != -1)
  {
    PO_LOG_POUserUnlockKey_cold_1();
  }

  v2 = PO_LOG_POUserUnlockKey_log;

  return v2;
}

uint64_t sub_25E913A28()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0CB48);
  __swift_project_value_buffer(v0, qword_27FD0CB48);
  return sub_25E9414C8();
}

id POCryptoKitHPKE_P384_SHA384_AES_GCM_256.__allocating_init()()
{
  v1 = sub_25E941668();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(v0);
  *&v4[OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P384_SHA384_AES_GCM_256_encryptionAlgorithm] = 0x2870A91C8;
  v5 = &unk_2870A91C8;
  sub_25E941638();
  return POCryptoKitHPKE.init(cipherSuite:)(v3);
}

id POCryptoKitHPKE_P384_SHA384_AES_GCM_256.init()()
{
  v1 = sub_25E941668();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P384_SHA384_AES_GCM_256_encryptionAlgorithm) = 0x2870A91C8;
  v4 = &unk_2870A91C8;
  sub_25E941638();
  return POCryptoKitHPKE.init(cipherSuite:)(v3);
}

Swift::Void __swiftcall POCryptoKitHPKE_P384_SHA384_AES_GCM_256.addValues(to:)(POMutableJWTHeader to)
{
  isa = to.super.super.isa;
  v2 = sub_25E941838();
  [(objc_class *)isa setEnc:v2];

  [(objc_class *)isa setAlg:@"HPKE-P384-SHA384-A256GCM"];
}

Swift::String __swiftcall POCryptoKitHPKE_P384_SHA384_AES_GCM_256.algValue()()
{
  v0 = sub_25E941848();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t POCryptoKitHPKE_P384_SHA384_AES_GCM_256.decodeAndDecryptJWT(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v82 = a7;
  v80 = a4;
  v81 = a1;
  v78 = a3;
  v85 = a2;
  v79 = sub_25E941818();
  v72 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v83 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E941898();
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x28223BE20](v13);
  v75 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25E941608();
  v73 = *(v15 - 8);
  v74 = v15;
  MEMORY[0x28223BE20](v15);
  v86 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC0, &qword_25E948E70);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v71 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v71 - v26;
  v28 = sub_25E941568();
  v29 = *(*(v28 - 8) + 56);
  v91 = v27;
  v29(v27, 1, 1, v28);
  if (a6 >> 60 == 15 || (v89 = a5, v90 = a6, sub_25E9146C8(a5, a6), sub_25E941558(), v30 = v91, sub_25E915118(v91, &qword_27FD0BCC8, &qword_25E948E78), v29(v25, 0, 1, v28), sub_25E915178(v25, v30, &qword_27FD0BCC8, &qword_25E948E78), a8 >> 60 != 15))
  {
    v84 = a8;
    v33 = sub_25E9417F8();
    v34 = *(*(v33 - 8) + 56);
    v35 = v87;
    v34(v87, 1, 1, v33);
    if (a9)
    {
      v36 = a9;
      v37 = SecKeyCopyExternalRepresentation(v36, 0);
      if (v37)
      {
        v38 = v37;
        v39 = sub_25E941478();
        v41 = v40;

        v89 = v39;
        v90 = v41;
        sub_25E9146C8(v39, v41);
        v42 = v88;
        sub_25E9417E8();
        v88 = v42;
        if (v42)
        {

          sub_25E91471C(v39, v41);
          sub_25E915118(v87, &qword_27FD0BCC0, &qword_25E948E70);
          return sub_25E915118(v91, &qword_27FD0BCC8, &qword_25E948E78);
        }

        v44 = v87;
        sub_25E915118(v87, &qword_27FD0BCC0, &qword_25E948E70);

        v45 = v41;
        v35 = v44;
        sub_25E91471C(v39, v45);
        v34(v20, 0, 1, v33);
        sub_25E915178(v20, v44, &qword_27FD0BCC0, &qword_25E948E70);
      }

      else
      {
      }
    }

    v46 = objc_opt_self();
    v47 = v85;
    v48 = [v46 isSEPKey_];
    v49 = v88;
    v50 = v91;
    v51 = v84;
    v52 = v86;
    if (v48)
    {
      v53 = v47;
      sub_25E9415F8();
      if (!v49)
      {
        if (v80)
        {
          v54 = v75;
          sub_25E941878();
          v55 = sub_25E941858();
          v57 = v56;
          (*(v76 + 8))(v54, v77);
        }

        else
        {
          v55 = 0;
          v57 = 0xF000000000000000;
        }

        v70 = v74;
        POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v81, v52, v55, v57, v50, v82, v51, v35, v74, MEMORY[0x277CC53B8]);
        sub_25E8B2B18(v55, v57);
        (*(v73 + 8))(v52, v70);
      }
    }

    else
    {
      v58 = SecKeyCopyExternalRepresentation(v47, 0);
      if (v58)
      {
        v59 = v58;
        v60 = sub_25E941478();
        v62 = v61;

        v89 = v60;
        v90 = v62;
        sub_25E9146C8(v60, v62);
        v63 = v83;
        sub_25E941808();
        if (v49)
        {
          sub_25E91471C(v60, v62);
        }

        else
        {
          v65 = v80;
          if (v80)
          {
            v66 = v75;
            sub_25E941878();
            v65 = sub_25E941858();
            v67 = v66;
            v69 = v68;
            (*(v76 + 8))(v67, v77);
          }

          else
          {
            v69 = 0xF000000000000000;
          }

          POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v81, v63, v65, v69, v50, v82, v51, v35, v79, MEMORY[0x277CC5508]);
          sub_25E8B2B18(v65, v69);
          sub_25E91471C(v60, v62);
          (*(v72 + 8))(v63, v79);
        }
      }

      else
      {
        if (qword_27FD0CB40 != -1)
        {
          swift_once();
        }

        v64 = sub_25E9414D8();
        __swift_project_value_buffer(v64, qword_27FD0CB48);
        Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000027, 0x800000025E951F20);
        swift_willThrow();
      }
    }

    sub_25E915118(v35, &qword_27FD0BCC0, &qword_25E948E70);
    v32 = v50;
  }

  else
  {
    if (qword_27FD0CB40 != -1)
    {
      swift_once();
    }

    v31 = sub_25E9414D8();
    __swift_project_value_buffer(v31, qword_27FD0CB48);
    Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000024, 0x800000025E951F50);
    swift_willThrow();
    v32 = v91;
  }

  return sub_25E915118(v32, &qword_27FD0BCC8, &qword_25E948E78);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_25E9146C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_25E91471C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void *POCryptoKitHPKE_P384_SHA384_AES_GCM_256.encodeAndEncryptJWT(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(void *a1, __SecKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, unint64_t a8, void *a9, char *a10, __SecKey *a11)
{
  v12 = v11;
  v71 = a7;
  v70 = a4;
  v68 = a3;
  v75 = a2;
  v77 = a1;
  v69 = sub_25E941898();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E9417F8();
  v72 = *(v17 - 8);
  v73 = v17;
  MEMORY[0x28223BE20](v17);
  v76 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BCD0, &qword_25E948E80);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v74 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v80 = &v63 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v63 - v27;
  v29 = sub_25E941568();
  v30 = *(*(v29 - 8) + 56);
  v30(v28, 1, 1, v29);
  if (a6 >> 60 != 15)
  {
    v78 = a5;
    v79 = a6;
    sub_25E9146C8(a5, a6);
    sub_25E941558();
    sub_25E915118(v28, &qword_27FD0BCC8, &qword_25E948E78);
    v30(v26, 0, 1, v29);
    v12 = v11;
    sub_25E915178(v26, v28, &qword_27FD0BCC8, &qword_25E948E78);
    if (a8 >> 60 == 15)
    {
      if (qword_27FD0CB40 != -1)
      {
        swift_once();
      }

      v31 = sub_25E9414D8();
      v32 = __swift_project_value_buffer(v31, qword_27FD0CB48);
      Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000024, 0x800000025E951F50);
      swift_willThrow();
      goto LABEL_20;
    }
  }

  v33 = sub_25E941818();
  v34 = *(*(v33 - 8) + 56);
  v35 = v80;
  v34(v80, 1, 1, v33);
  if (a9)
  {
    v65 = v28;
    v36 = v12;
    v37 = a9;
    v38 = SecKeyCopyExternalRepresentation(v37, 0);
    if (v38)
    {
      v39 = v38;
      v64 = v33;
      v32 = sub_25E941478();
      v41 = v40;

      v78 = v32;
      v79 = v41;
      sub_25E9146C8(v32, v41);
      v42 = v74;
      sub_25E941808();
      if (v36)
      {

        sub_25E91471C(v32, v41);
        sub_25E915118(v80, &unk_27FD0BCD0, &qword_25E948E80);
        v43 = v65;
LABEL_21:
        sub_25E915118(v43, &qword_27FD0BCC8, &qword_25E948E78);
        return v32;
      }

      v44 = v80;
      sub_25E915118(v80, &unk_27FD0BCD0, &qword_25E948E80);

      v45 = v41;
      v35 = v44;
      sub_25E91471C(v32, v45);
      v46 = v64;
      v34(v42, 0, 1, v64);
      v47 = v42;
      v33 = v46;
      v48 = v44;
      v12 = 0;
      sub_25E915178(v47, v48, &unk_27FD0BCD0, &qword_25E948E80);
    }

    else
    {
    }

    v28 = v65;
  }

  v49 = [v77 header];
  v50 = sub_25E941838();
  [v49 setEnc_];

  [v49 setAlg_];
  v51 = SecKeyCopyExternalRepresentation(v75, 0);
  if (!v51)
  {
    if (qword_27FD0CB40 != -1)
    {
      swift_once();
    }

    v56 = sub_25E9414D8();
    v32 = __swift_project_value_buffer(v56, qword_27FD0CB48);
    Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000027, 0x800000025E951F20);
    swift_willThrow();
    goto LABEL_19;
  }

  v52 = a8;
  v32 = v51;
  v53 = sub_25E941478();
  v55 = v54;

  v78 = v53;
  v79 = v55;
  sub_25E9146C8(v53, v55);
  sub_25E9417E8();
  if (v12)
  {
    sub_25E91471C(v53, v55);
LABEL_19:
    sub_25E915118(v35, &unk_27FD0BCD0, &qword_25E948E80);
LABEL_20:
    v43 = v28;
    goto LABEL_21;
  }

  v59 = a10;
  v58 = a11;
  v60 = v70;
  if (v70)
  {
    v61 = v66;
    v74 = a10;
    v75 = a11;
    sub_25E941878();
    v60 = sub_25E941858();
    v80 = v62;
    (*(v67 + 8))(v61, v69);
    v59 = v74;
    v58 = v75;
  }

  else
  {
    v80 = 0xF000000000000000;
  }

  v32 = POCryptoKitHPKE.encodeAndEncryptJWT<A>(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(v77, v76, v60, v80, v28, v71, v52, v35, v59, v58, v33, MEMORY[0x277CC5508]);
  sub_25E8B2B18(v60, v80);
  sub_25E91471C(v53, v55);
  (*(v72 + 8))(v76, v73);
  sub_25E915118(v35, &unk_27FD0BCD0, &qword_25E948E80);
  sub_25E915118(v28, &qword_27FD0BCC8, &qword_25E948E78);
  return v32;
}

uint64_t sub_25E915118(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25E915178(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id POCryptoKitHPKE_P384_SHA384_AES_GCM_256.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for POCryptoKitHPKE_P384_SHA384_AES_GCM_256(uint64_t a1)
{
  result = qword_27FD0CB60;
  if (!qword_27FD0CB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for POEncryptionAlgorithm()
{
  if (!qword_27FD0BD40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FD0BD40);
    }
  }
}

id sub_25E9155A0(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t sub_25E9155EC(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

id sub_25E915624@<X0>(id result@<X0>, id *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25E915640@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_25E91564C(uint64_t a1)
{
  v2 = sub_25E91571C(&qword_27FD0BD58, &unk_25E948F8C);

  return MEMORY[0x2821FD8B0](a1, v2);
}

uint64_t sub_25E91571C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POEncryptionAlgorithm();
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

uint64_t sub_25E9157D4()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0CD78);
  __swift_project_value_buffer(v0, qword_27FD0CD78);
  return sub_25E9414C8();
}

uint64_t *sub_25E915868()
{
  if (qword_27FD0CD90 != -1)
  {
    swift_once();
  }

  return &qword_27FD0D500;
}

id sub_25E9158B8()
{
  if (qword_27FD0CD90 != -1)
  {
    swift_once();
  }

  v0 = qword_27FD0D500;

  return v0;
}

uint64_t sub_25E915970()
{
  v0 = sub_25E941668();
  __swift_allocate_value_buffer(v0, qword_27FD0D508);
  __swift_project_value_buffer(v0, qword_27FD0D508);
  return sub_25E941628();
}

uint64_t sub_25E9159BC()
{
  if (qword_27FD0CD98 != -1)
  {
    swift_once();
  }

  v0 = sub_25E941668();

  return __swift_project_value_buffer(v0, qword_27FD0D508);
}

uint64_t sub_25E915A20@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD0CD98 != -1)
  {
    swift_once();
  }

  v2 = sub_25E941668();
  v3 = __swift_project_value_buffer(v2, qword_27FD0D508);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t POPrebootDataKey.encryptedKeyData.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_encryptedKeyData);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25E915C34(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_encryptedKeyData);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_25E915C94@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E915CF0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_encryptedKeyData);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t POPrebootDataKey.keyData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_keyData;
  swift_beginAccess();
  v2 = *v1;
  sub_25E915E64(*v1, *(v1 + 8));
  return v2;
}

void sub_25E915E64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_25E9146C8(a1, a2);
  }
}

void sub_25E915F0C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_keyData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_25E8B2B18(v6, v7);
}

uint64_t sub_25E915F6C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_25E915FC8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_keyData);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_25E915E64(v2, v3);
  sub_25E8B2B18(v5, v6);
}

uint64_t static POPrebootDataKey.verifiedKey(prebootData:)()
{
  if (qword_27FD0CD70 != -1)
  {
    swift_once();
  }

  v0 = sub_25E9414D8();
  __swift_project_value_buffer(v0, qword_27FD0CD78);
  Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000014, 0x800000025E9521B0);
  return swift_willThrow();
}

id sub_25E916318(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t, id))
{
  v8 = a3;
  v9 = a4;
  v10 = sub_25E941478();
  v12 = v11;

  v13 = a6(v10, v12, v9);
  v15 = v14;

  sub_25E91471C(v10, v12);
  v16 = sub_25E941458();
  sub_25E91471C(v13, v15);

  return v16;
}

id POPrebootDataKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for POPrebootDataKey();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25E9164B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25E941978();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25E916874(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25E916874((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25E941958();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25E9418D8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25E9418D8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25E941978();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25E916874(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25E941978();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25E916874(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25E916874((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25E9418D8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_25E916874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BDD8, &qword_25E949048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25E916980()
{
  v0 = objc_opt_self();
  if (qword_27FD0CD90 != -1)
  {
    swift_once();
  }

  v1 = [v0 createEncryptionKeyForAlgorithm_];
  v2 = v0;
  if (v1)
  {
    v3 = [v0 dataForEphemeralKey_];
    if (v3)
    {
      v4 = v3;
      v5 = sub_25E941478();
      v7 = v6;

      if (qword_27FD0CD70 != -1)
      {
        swift_once();
      }

      v8 = sub_25E9414D8();
      __swift_project_value_buffer(v8, qword_27FD0CD78);
      Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000014, 0x800000025E9521B0);
      swift_willThrow();
      sub_25E91471C(v5, v7);
    }

    else
    {
      if (qword_27FD0CD70 != -1)
      {
        swift_once();
      }

      v10 = sub_25E9414D8();
      __swift_project_value_buffer(v10, qword_27FD0CD78);
      Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000024, 0x800000025E952390);
      swift_willThrow();
    }
  }

  else
  {
    if (qword_27FD0CD70 != -1)
    {
      swift_once();
    }

    v9 = sub_25E9414D8();
    __swift_project_value_buffer(v9, qword_27FD0CD78);
    Logger.PSSO_ERROR(code:description:)(-1001, 0xD00000000000001FLL, 0x800000025E952370);
    swift_willThrow();
  }
}

uint64_t sub_25E916BB8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v41._countAndFlagsBits = a1;
  v41._object = a2;
  v6 = sub_25E941898();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E941668();
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25E9417A8();
  MEMORY[0x28223BE20](v12);
  v13 = sub_25E941718();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v48 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25E9417D8();
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() dataForEphemeralKey_];
  if (!v18)
  {
    if (qword_27FD0CD70 != -1)
    {
      swift_once();
    }

    v24 = sub_25E9414D8();
    v4 = __swift_project_value_buffer(v24, qword_27FD0CD78);
    Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000019, 0x800000025E952350);
    swift_willThrow();
    return v4;
  }

  v38 = v7;
  v39 = v6;
  v19 = v18;
  v20 = sub_25E941478();
  v22 = v21;

  v47._countAndFlagsBits = v20;
  v47._object = v22;
  sub_25E9146C8(v20, v22);
  sub_25E9417C8();
  if (v3)
  {
    sub_25E91471C(v20, v22);
    return v4;
  }

  sub_25E9417B8();
  if (qword_27FD0CD98 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v9, qword_27FD0D508);
  (*(v44 + 16))(v11, v23, v9);
  sub_25E9416D8();
  v47 = v41;
  sub_25E917954();
  v26 = sub_25E941708();
  v44 = v27;
  v28 = v26;
  v29 = sub_25E9416E8();
  v31 = v30;
  v32 = Data.base64URLEncodedString()();
  sub_25E91471C(v29, v31);
  v47 = v32;
  MEMORY[0x25F8C2AD0](46, 0xE100000000000000);
  v41._object = v28;
  v33 = v44;
  countAndFlagsBits = Data.base64URLEncodedString()()._countAndFlagsBits;
  MEMORY[0x25F8C2AD0](countAndFlagsBits);

  v35 = v40;
  sub_25E941878();
  v4 = sub_25E941858();
  v37 = v36;
  result = (*(v38 + 8))(v35, v39);
  if (v37 >> 60 != 15)
  {
    sub_25E91471C(v41._object, v33);

    sub_25E91471C(v20, v22);
    (*(v42 + 8))(v48, v43);
    (*(v45 + 8))(v17, v46);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_25E917174(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v71 = a3;
  v5 = sub_25E941668();
  v66 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E941788();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E9417D8();
  v12 = *(v11 - 8);
  v67 = v11;
  v68 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  v18 = sub_25E941898();
  MEMORY[0x28223BE20](v18 - 8);
  sub_25E941878();
  v19 = sub_25E941868();
  if (!v20)
  {
    if (qword_27FD0CD70 != -1)
    {
      swift_once();
    }

    v36 = sub_25E9414D8();
    __swift_project_value_buffer(v36, qword_27FD0CD78);
    v35 = 0xD000000000000020;
    v34 = 0x800000025E952300;
    goto LABEL_11;
  }

  a1 = &v59;
  v69 = 46;
  v70 = 0xE100000000000000;
  MEMORY[0x28223BE20](v19);
  *(&v59 - 2) = &v69;
  v23 = sub_25E9164B4(2, 1, sub_25E9178FC, (&v59 - 4), v21, v22, &v59);
  if (v23[2] != 2 || (v63 = v3, v24 = v23[4], v25 = v23[5], v27 = v23[6], v26 = v23[7], a1 = v23, , v28 = MEMORY[0x25F8C2A80](v24, v25, v27, v26), v30 = v29, , v31 = Data.init(base64URLEncoded:)(v28, v30), v32 >> 60 == 15))
  {

LABEL_5:
    if (qword_27FD0CD70 != -1)
    {
      swift_once();
    }

    v33 = sub_25E9414D8();
    __swift_project_value_buffer(v33, qword_27FD0CD78);
    v34 = 0x800000025E952330;
    v35 = 0xD000000000000014;
LABEL_11:
    Logger.PSSO_ERROR(code:description:)(-1001, v35, v34);
    swift_willThrow();
    return a1;
  }

  v61 = v31;
  v62 = v32;
  if (a1[2] < 2)
  {
    __break(1u);
    goto LABEL_26;
  }

  v38 = a1;
  v39 = a1[8];
  v40 = v38[9];
  v41 = v38[10];
  v42 = v38[11];

  a1 = MEMORY[0x25F8C2A80](v39, v40, v41, v42);
  v44 = v43;

  v45 = Data.init(base64URLEncoded:)(a1, v44);
  if (v46 >> 60 == 15)
  {
    sub_25E8B2B18(v61, v62);
    goto LABEL_5;
  }

  v59 = v45;
  v60 = v46;
  v47 = [objc_opt_self() dataForEphemeralKey_];
  if (!v47)
  {
    if (qword_27FD0CD70 == -1)
    {
LABEL_20:
      v52 = sub_25E9414D8();
      __swift_project_value_buffer(v52, qword_27FD0CD78);
      Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000019, 0x800000025E952350);
      swift_willThrow();
      sub_25E8B2B18(v59, v60);
      v55 = v61;
      v56 = v62;
      goto LABEL_24;
    }

LABEL_26:
    swift_once();
    goto LABEL_20;
  }

  a1 = v47;
  v48 = sub_25E941478();
  v50 = v49;

  v69 = v48;
  v70 = v50;
  sub_25E9146C8(v48, v50);
  v51 = v63;
  sub_25E9417C8();
  if (v51)
  {
    sub_25E8B2B18(v61, v62);
    sub_25E91471C(v48, v50);
    v55 = v59;
    v56 = v60;
LABEL_24:
    sub_25E8B2B18(v55, v56);
    return a1;
  }

  v63 = v48;
  v71 = v50;
  v53 = v67;
  (*(v68 + 16))(v15, v17, v67);
  if (qword_27FD0CD98 != -1)
  {
    swift_once();
  }

  v54 = __swift_project_value_buffer(v5, qword_27FD0D508);
  (*(v66 + 16))(v7, v54, v5);
  sub_25E9146C8(v61, v62);
  sub_25E941758();
  v69 = v59;
  v70 = v60;
  sub_25E917954();
  v57 = sub_25E941778();
  v58 = v71;
  a1 = v57;
  sub_25E8B2B18(v61, v62);
  sub_25E91471C(v63, v58);
  (*(v64 + 8))(v10, v65);
  (*(v68 + 8))(v17, v53);
  sub_25E8B2B18(v59, v60);
  return a1;
}

uint64_t sub_25E9178FC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25E941A18() & 1;
  }
}

unint64_t sub_25E917954()
{
  result = qword_27FD0BDD0;
  if (!qword_27FD0BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0BDD0);
  }

  return result;
}

uint64_t sub_25E9179C0()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0CDA8);
  __swift_project_value_buffer(v0, qword_27FD0CDA8);
  return sub_25E9414C8();
}

uint64_t sub_25E917A44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite;
  v4 = sub_25E941668();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id POCryptoKitHPKE.__allocating_init(cipherSuite:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite;
  v5 = sub_25E941668();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id POCryptoKitHPKE.init(cipherSuite:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite;
  v4 = sub_25E941668();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for POCryptoKitHPKE(0);
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for POCryptoKitHPKE(uint64_t a1)
{
  result = qword_27FD0CDC0;
  if (!qword_27FD0CDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *POCryptoKitHPKE.encodeAndEncryptJWT<A>(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(void *a1, uint64_t a2, char *a3, unint64_t a4, uint64_t a5, char *a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12)
{
  v233 = a8;
  v217 = a7;
  v209 = a6;
  v232 = a5;
  v228 = a4;
  v227 = a3;
  v225 = a2;
  v13 = sub_25E941898();
  v203 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25E941718();
  v234 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_25E941668();
  v222 = *(v223 - 8);
  v19 = MEMORY[0x28223BE20](v223);
  v220 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v207 = &v180 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v201 = &v180 - v24;
  MEMORY[0x28223BE20](v23);
  v197 = &v180 - v25;
  v229 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v221 = *(AssociatedTypeWitness - 8);
  v26 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v219 = &v180 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v206 = &v180 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v200 = &v180 - v31;
  MEMORY[0x28223BE20](v30);
  v196 = &v180 - v32;
  v216 = sub_25E941998();
  v215 = *(v216 - 8);
  v33 = MEMORY[0x28223BE20](v216);
  v212 = &v180 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v194 = &v180 - v36;
  v239 = a11;
  v37 = *(a11 - 8);
  v38 = MEMORY[0x28223BE20](v35);
  v205 = &v180 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v231 = &v180 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v193 = &v180 - v43;
  MEMORY[0x28223BE20](v42);
  v195 = &v180 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  MEMORY[0x28223BE20](v45 - 8);
  v214 = &v180 - v46;
  v47 = sub_25E941568();
  v48 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47);
  v199 = &v180 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v192 = &v180 - v52;
  MEMORY[0x28223BE20](v51);
  v213 = &v180 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BDE0, &qword_25E949070);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v208 = &v180 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v218 = &v180 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v204 = &v180 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v198 = &v180 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v191 = &v180 - v64;
  MEMORY[0x28223BE20](v63);
  v66 = &v180 - v65;
  v67 = [a1 body];
  if (!v67)
  {
    if (qword_27FD0CDA0 != -1)
    {
      swift_once();
    }

    v76 = sub_25E9414D8();
    __swift_project_value_buffer(v76, qword_27FD0CDA8);
    Logger.PSSO_ERROR(code:description:)(-1005, 0xD00000000000001BLL, 0x800000025E952410);
    swift_willThrow();
    return v18;
  }

  v182 = v15;
  v183 = v13;
  v190 = a1;
  v188 = v18;
  v68 = [v67 dataRepresentation];
  swift_unknownObjectRelease();
  v210 = sub_25E941478();
  v211 = v69;

  v184 = v48;
  v70 = *(v48 + 48);
  LODWORD(v68) = v70(v232, 1, v47);
  v187 = v37;
  v189 = *(v37 + 48);
  v71 = v189(v233, 1, v239);
  v72 = *(v234 + 56);
  v202 = v16;
  v186 = v234 + 56;
  v185 = v72;
  v72(v66, 1, 1, v16);
  v73 = v66;
  v74 = v231;
  if (v68 == 1)
  {
    goto LABEL_10;
  }

  v75 = v214;
  sub_25E91B5E8(v232, v214, &qword_27FD0BCC8, &qword_25E948E78);
  if (v70(v75, 1, v47) != 1)
  {
    v77 = v184;
    v78 = v213;
    (*(v184 + 32))(v213, v75, v47);
    if (v217 >> 60 == 15)
    {
      (*(v77 + 8))(v78, v47);
      goto LABEL_10;
    }

    v93 = v239;
    v94 = v187;
    v181 = v47;
    if (v71 == 1)
    {
      sub_25E9146C8(v209, v217);
    }

    else
    {
      v95 = v215;
      v96 = v194;
      v97 = v216;
      (*(v215 + 16))(v194, v233, v216);
      if (v189(v96, 1, v93) != 1)
      {
        v104 = v195;
        (*(v94 + 32))(v195, v96, v93);
        (*(v221 + 16))(v196, v225, AssociatedTypeWitness);
        (*(v222 + 16))(v197, v226 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v223);
        v105 = v228;
        v106 = v94;
        v107 = v227;
        if (v228 >> 60 == 15)
        {
          v108 = 0;
        }

        else
        {
          v108 = v227;
        }

        v233 = v108;
        v109 = 0xC000000000000000;
        if (v228 >> 60 != 15)
        {
          v109 = v228;
        }

        v232 = v109;
        (*(v106 + 16))(v193, v104, v93);
        v110 = v78;
        v111 = v184;
        (*(v184 + 16))(v192, v110, v47);
        v18 = v209;
        sub_25E915E64(v209, v217);
        sub_25E915E64(v107, v105);
        v85 = v191;
        v112 = v230;
        sub_25E9416B8();
        v86 = v202;
        if (!v112)
        {
          (*(v187 + 8))(v195, v239);
          (*(v111 + 8))(v213, v181);
          goto LABEL_48;
        }

        sub_25E91471C(v210, v211);
        (*(v187 + 8))(v195, v239);
        (*(v111 + 8))(v213, v181);
        goto LABEL_46;
      }

      sub_25E9146C8(v209, v217);
      (*(v95 + 8))(v96, v97);
    }

    v86 = v202;
    v18 = v200;
    (*(v221 + 16))(v200, v225, AssociatedTypeWitness);
    (*(v222 + 16))(v201, v226 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v223);
    v98 = v228;
    v99 = v227;
    if (v228 >> 60 == 15)
    {
      v100 = 0;
    }

    else
    {
      v100 = v227;
    }

    v233 = v100;
    v101 = 0xC000000000000000;
    if (v228 >> 60 != 15)
    {
      v101 = v228;
    }

    v232 = v101;
    v102 = v184;
    (*(v184 + 16))(v199, v213, v181);
    sub_25E915E64(v99, v98);
    swift_getAssociatedConformanceWitness();
    v85 = v198;
    v103 = v230;
    sub_25E9416A8();
    if (!v103)
    {
      (*(v102 + 8))(v213, v181);
      goto LABEL_48;
    }

    sub_25E91471C(v210, v211);
    (*(v102 + 8))(v213, v181);
LABEL_46:
    v113 = v73;
LABEL_62:
    sub_25E915118(v113, &qword_27FD0BDE0, &qword_25E949070);
    return v18;
  }

  sub_25E915118(v75, &qword_27FD0BCC8, &qword_25E948E78);
LABEL_10:
  v79 = v71 == 1;
  v80 = v239;
  v81 = v230;
  if (v79)
  {
LABEL_13:
    (*(v221 + 16))(v219, v225, AssociatedTypeWitness);
    (*(v222 + 16))(v220, v226 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v223);
    if (v228 >> 60 == 15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v227;
    }

    sub_25E915E64(v227, v228);
    swift_getAssociatedConformanceWitness();
    v85 = v218;
    sub_25E9416D8();
    sub_25E915118(v73, &qword_27FD0BDE0, &qword_25E949070);
    if (v81)
    {
      sub_25E91471C(v210, v211);
      return v18;
    }

    v86 = v202;
    goto LABEL_49;
  }

  v82 = v215;
  v83 = v212;
  v84 = v216;
  (*(v215 + 16))(v212, v233, v216);
  if (v189(v83, 1, v80) == 1)
  {
    (*(v82 + 8))(v83, v84);
    goto LABEL_13;
  }

  v233 = v73;
  v87 = v187;
  (*(v187 + 32))(v74, v83, v80);
  (*(v221 + 16))(v206, v225, AssociatedTypeWitness);
  (*(v222 + 16))(v207, v226 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v223);
  v88 = v228;
  v89 = v227;
  if (v228 >> 60 == 15)
  {
    v90 = 0;
  }

  else
  {
    v90 = v227;
  }

  v232 = v90;
  v91 = 0xC000000000000000;
  if (v228 >> 60 != 15)
  {
    v91 = v228;
  }

  v226 = v91;
  v18 = v205;
  (*(v87 + 16))(v205, v74, v80);
  sub_25E915E64(v89, v88);
  v85 = v204;
  v92 = v81;
  sub_25E9416C8();
  v86 = v202;
  if (v92)
  {
    sub_25E91471C(v210, v211);
    (*(v87 + 8))(v231, v80);
LABEL_61:
    v113 = v233;
    goto LABEL_62;
  }

  (*(v87 + 8))(v231, v80);
  v73 = v233;
LABEL_48:
  sub_25E915118(v73, &qword_27FD0BDE0, &qword_25E949070);
LABEL_49:
  v185(v85, 0, 1, v86);
  sub_25E915178(v85, v73, &qword_27FD0BDE0, &qword_25E949070);
  v233 = v73;
  v114 = v208;
  sub_25E91B5E8(v73, v208, &qword_27FD0BDE0, &qword_25E949070);
  v115 = v234;
  if ((*(v234 + 48))(v114, 1, v86) == 1)
  {
    sub_25E915118(v114, &qword_27FD0BDE0, &qword_25E949070);
    v18 = v211;
    v116 = v210;
    if (qword_27FD0CDA0 != -1)
    {
      swift_once();
    }

    v117 = sub_25E9414D8();
    __swift_project_value_buffer(v117, qword_27FD0CDA8);
    Logger.PSSO_ERROR(code:description:)(-1001, 0xD00000000000001ALL, 0x800000025E9523C0);
    swift_willThrow();
    sub_25E91471C(v116, v18);
    goto LABEL_61;
  }

  (*(v115 + 32))(v188, v114, v86);
  v232 = sub_25E9416E8();
  v239 = v118;
  v119 = v217;
  v120 = MEMORY[0x277D837D0];
  if (v217 >> 60 != 15)
  {
    v121 = v209;
    sub_25E9146C8(v209, v217);
    v122 = [v190 header];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BDE8, &qword_25E949078);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25E949060;
    *(inited + 32) = 0x64695F6B7370;
    *(inited + 40) = 0xE600000000000000;
    v124 = sub_25E941468();
    *(inited + 72) = v120;
    *(inited + 48) = v124;
    *(inited + 56) = v125;
    sub_25E91B420(inited);
    swift_setDeallocating();
    sub_25E915118(inited + 32, &qword_27FD0BDF0, &qword_25E949080);
    v126 = sub_25E941828();

    [v122 addCustomClaims_];

    sub_25E8B2B18(v121, v119);
  }

  if (a10 >> 60 != 15)
  {
    sub_25E9146C8(a9, a10);
    v127 = [v190 header];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BDE8, &qword_25E949078);
    v128 = swift_initStackObject();
    *(v128 + 16) = xmmword_25E949060;
    *(v128 + 32) = 0x64696B5F68747561;
    *(v128 + 40) = 0xE800000000000000;
    v129 = sub_25E941468();
    *(v128 + 72) = v120;
    *(v128 + 48) = v129;
    *(v128 + 56) = v130;
    sub_25E91B420(v128);
    swift_setDeallocating();
    sub_25E915118(v128 + 32, &qword_27FD0BDF0, &qword_25E949080);
    v131 = sub_25E941828();

    [v127 addCustomClaims_];

    sub_25E8B2B18(a9, a10);
  }

  v132 = v190;
  v133 = [v190 header];
  v134 = [v133 dataRepresentation];

  v135 = sub_25E941478();
  v18 = v136;

  Data.base64URLEncodedString()();
  v137 = v182;
  sub_25E941888();
  v138 = sub_25E941858();
  v140 = v139;

  (*(v203 + 8))(v137, v183);
  if (v140 >> 60 == 15)
  {
    if (qword_27FD0CDA0 != -1)
    {
      swift_once();
    }

    v141 = sub_25E9414D8();
    __swift_project_value_buffer(v141, qword_27FD0CDA8);
    Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000020, 0x800000025E9523E0);
    swift_willThrow();
    sub_25E91471C(v135, v18);
    sub_25E91471C(v232, v239);
    sub_25E91471C(v210, v211);
    (*(v234 + 8))(v188, v202);
    goto LABEL_61;
  }

  v237 = v210;
  v238 = v211;
  v235 = v138;
  v236 = v140;
  sub_25E917954();
  v143 = sub_25E9416F8();
  v230 = v138;
  v144 = v143;
  v145 = v18;
  v147 = v146;
  v228 = v145;
  Data.base64URLEncodedString()();
  v148 = sub_25E941838();

  [v132 setRawHeader_];

  Data.base64URLEncodedString()();
  v149 = sub_25E941838();

  [v132 setRawEncryptedKey_];

  v150 = 0xE000000000000000;
  v151 = sub_25E941838();
  [v132 setRawIV_];

  v231 = v144;
  v229 = v147;
  Data.base64URLEncodedString()();
  v152 = sub_25E941838();

  [v132 setRawCipherText_];

  v153 = sub_25E941838();
  [v132 setRawAuthenticationTag_];

  v237 = 0;
  v238 = 0xE000000000000000;
  v154 = [v132 rawHeader];
  if (v154)
  {
    v155 = v154;
    v156 = sub_25E941848();
    v150 = v157;
  }

  else
  {
    v156 = 0;
  }

  MEMORY[0x25F8C2AD0](v156, v150);

  MEMORY[0x25F8C2AD0](46, 0xE100000000000000);
  v158 = [v190 rawEncryptedKey];
  v159 = v230;
  v160 = v228;
  if (v158)
  {
    v161 = v158;
    v162 = sub_25E941848();
    v164 = v163;
  }

  else
  {
    v162 = 0;
    v164 = 0xE000000000000000;
  }

  MEMORY[0x25F8C2AD0](v162, v164);

  MEMORY[0x25F8C2AD0](46, 0xE100000000000000);
  v165 = [v190 rawIV];
  if (v165)
  {
    v166 = v165;
    v167 = sub_25E941848();
    v169 = v168;
  }

  else
  {
    v167 = 0;
    v169 = 0xE000000000000000;
  }

  MEMORY[0x25F8C2AD0](v167, v169);

  MEMORY[0x25F8C2AD0](46, 0xE100000000000000);
  v170 = [v190 rawCipherText];
  if (v170)
  {
    v171 = v170;
    v172 = sub_25E941848();
    v174 = v173;
  }

  else
  {
    v172 = 0;
    v174 = 0xE000000000000000;
  }

  MEMORY[0x25F8C2AD0](v172, v174);

  MEMORY[0x25F8C2AD0](46, 0xE100000000000000);
  v175 = [v190 rawAuthenticationTag];
  if (v175)
  {
    v176 = v175;
    v177 = sub_25E941848();
    v179 = v178;
  }

  else
  {
    v177 = 0;
    v179 = 0xE000000000000000;
  }

  MEMORY[0x25F8C2AD0](v177, v179);

  sub_25E91471C(v231, v229);
  sub_25E8B2B18(v159, v140);
  sub_25E91471C(v135, v160);
  sub_25E91471C(v232, v239);
  sub_25E91471C(v210, v211);
  v18 = v237;
  (*(v234 + 8))(v188, v202);
  sub_25E915118(v233, &qword_27FD0BDE0, &qword_25E949070);
  return v18;
}

void POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, char *a8, uint64_t a9, uint64_t a10)
{
  v217 = a8;
  v193 = a7;
  v187 = a6;
  v200 = a5;
  v206 = a3;
  v207 = a4;
  v202 = a2;
  v11 = sub_25E941788();
  v215 = *(v11 - 8);
  v216 = v11;
  MEMORY[0x28223BE20](v11);
  v186 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E941668();
  v203 = *(v13 - 8);
  v204 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v199 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v191 = &v165 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v185 = &v165 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v178 = &v165 - v21;
  v201 = *(a9 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v198 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v190 = &v165 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v184 = &v165 - v27;
  MEMORY[0x28223BE20](v26);
  v180 = &v165 - v28;
  v208 = a10;
  v210 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v196 = sub_25E941998();
  v195 = *(v196 - 8);
  v30 = MEMORY[0x28223BE20](v196);
  v194 = &v165 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v181 = &v165 - v33;
  v218 = AssociatedTypeWitness;
  v212 = *(AssociatedTypeWitness - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v189 = &v165 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v214 = &v165 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v177 = &v165 - v39;
  MEMORY[0x28223BE20](v38);
  v182 = &v165 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v165 - v42;
  v211 = sub_25E941568();
  v213 = *(v211 - 8);
  v44 = MEMORY[0x28223BE20](v211);
  v183 = &v165 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v176 = &v165 - v47;
  MEMORY[0x28223BE20](v46);
  v197 = &v165 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BDF8, qword_25E949088);
  v50 = MEMORY[0x28223BE20](v49 - 8);
  v192 = &v165 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v165 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v188 = &v165 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v59 = &v165 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v179 = &v165 - v61;
  MEMORY[0x28223BE20](v60);
  v219 = &v165 - v62;
  v63 = sub_25E941898();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = &v165 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = [a1 rawHeader];
  if (v67)
  {
    v68 = v67;
    sub_25E941848();
    v224 = a1;

    sub_25E941888();
    v69 = sub_25E941858();
    v71 = v70;
    v72 = v224;

    (*(v64 + 8))(v66, v63);
    if (v71 >> 60 != 15)
    {
      v74 = [v72 rawCipherText];
      if (!v74 || (v75 = v74, v76 = sub_25E941848(), v77 = v69, v79 = v78, v75, v80 = v79, v69 = v77, v81 = Data.init(base64URLEncoded:)(v76, v80), v82 >> 60 == 15))
      {
        if (qword_27FD0CDA0 != -1)
        {
          swift_once();
        }

        v83 = sub_25E9414D8();
        __swift_project_value_buffer(v83, qword_27FD0CDA8);
        Logger.PSSO_ERROR(code:description:)(-1005, 0xD00000000000002ALL, 0x800000025E952460);
        swift_willThrow();
        goto LABEL_23;
      }

      v174 = v81;
      v175 = v82;
      v84 = [v72 rawEncryptedKey];
      if (!v84 || (v85 = v84, v86 = sub_25E941848(), v88 = v87, v85, v89 = v88, v69 = v77, v90 = Data.init(base64URLEncoded:)(v86, v89), v91 >> 60 == 15))
      {
        if (qword_27FD0CDA0 != -1)
        {
          swift_once();
        }

        v92 = sub_25E9414D8();
        __swift_project_value_buffer(v92, qword_27FD0CDA8);
        Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000030, 0x800000025E952490);
        swift_willThrow();
        goto LABEL_22;
      }

      v93 = v91;
      v173 = v90;
      v94 = [v72 rawIV];
      if (!v94 || (v95 = v94, sub_25E941848(), v172 = v93, v95, v93 = v172, v96 = sub_25E9418C8(), v69 = v77, , v96))
      {
        if (qword_27FD0CDA0 != -1)
        {
          swift_once();
        }

        v97 = sub_25E9414D8();
        __swift_project_value_buffer(v97, qword_27FD0CDA8);
        v98 = " decrypting JWT.";
        v99 = 0xD000000000000022;
LABEL_21:
        Logger.PSSO_ERROR(code:description:)(-1005, v99, v98 | 0x8000000000000000);
        swift_willThrow();
        sub_25E8B2B18(v173, v93);
LABEL_22:
        sub_25E8B2B18(v174, v175);
LABEL_23:
        v100 = v69;
        v101 = v71;
LABEL_24:
        sub_25E8B2B18(v100, v101);
        return;
      }

      v102 = [v72 rawAuthenticationTag];
      if (!v102 || (v103 = v102, sub_25E941848(), v103, v93 = v172, v104 = sub_25E9418C8(), v69 = v77, , v104))
      {
        if (qword_27FD0CDA0 != -1)
        {
          swift_once();
        }

        v105 = sub_25E9414D8();
        __swift_project_value_buffer(v105, qword_27FD0CDA8);
        v98 = "en decrypting JWT.";
        v99 = 0xD000000000000032;
        goto LABEL_21;
      }

      v171 = v71;
      v106 = v200;
      v107 = v211;
      v168 = *(v213 + 48);
      v108 = v168(v200, 1, v211);
      v109 = *(v212 + 48);
      v170 = v212 + 48;
      v169 = v109;
      v110 = v109(v217, 1, v218);
      v111 = *(v215 + 56);
      v167 = v215 + 56;
      v166 = v111;
      v111(v219, 1, 1, v216);
      v112 = v108 == 1;
      v113 = v214;
      if (!v112)
      {
        sub_25E91B5E8(v106, v43, &qword_27FD0BCC8, &qword_25E948E78);
        if (v168(v43, 1, v107) == 1)
        {
          sub_25E915118(v43, &qword_27FD0BCC8, &qword_25E948E78);
        }

        else
        {
          v114 = v213;
          v115 = v197;
          (*(v213 + 32))(v197, v43, v107);
          if (v193 >> 60 != 15)
          {
            if (v110 == 1)
            {
              sub_25E9146C8(v187, v193);
              v217 = v77;
            }

            else
            {
              v132 = v195;
              v133 = v181;
              v134 = v196;
              (*(v195 + 16))(v181, v217, v196);
              v135 = v218;
              if (v169(v133, 1, v218) != 1)
              {
                v158 = v212;
                v159 = v182;
                (*(v212 + 32))(v182, v133, v135);
                (*(v201 + 16))(v180, v202, v210);
                (*(v203 + 16))(v178, v205 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v204);
                v161 = v206;
                v160 = v207;
                if (v207 >> 60 == 15)
                {
                  v162 = 0;
                }

                else
                {
                  v162 = v206;
                }

                v217 = v162;
                v163 = 0xC000000000000000;
                if (v207 >> 60 != 15)
                {
                  v163 = v207;
                }

                v214 = v163;
                (*(v158 + 16))(v177, v159, v135);
                (*(v213 + 16))(v176, v197, v211);
                sub_25E915E64(v187, v193);
                sub_25E915E64(v161, v160);
                sub_25E915E64(v173, v172);
                v164 = v209;
                sub_25E941738();
                if (!v164)
                {
                  (*(v212 + 8))(v182, v218);
                  (*(v213 + 8))(v197, v211);
                  v142 = v171;
                  v217 = v77;
                  v59 = v179;
LABEL_58:
                  v143 = v219;
                  sub_25E915118(v219, &qword_27FD0BDF8, qword_25E949088);
                  v144 = v216;
                  v166(v59, 0, 1, v216);
                  sub_25E915178(v59, v143, &qword_27FD0BDF8, qword_25E949088);
                  v145 = v143;
                  v146 = v192;
                  sub_25E91B5E8(v145, v192, &qword_27FD0BDF8, qword_25E949088);
                  v147 = v215;
                  if ((*(v215 + 48))(v146, 1, v144) == 1)
                  {
                    sub_25E915118(v146, &qword_27FD0BDF8, qword_25E949088);
                    v148 = v217;
                    if (qword_27FD0CDA0 != -1)
                    {
                      swift_once();
                    }

                    v149 = sub_25E9414D8();
                    __swift_project_value_buffer(v149, qword_27FD0CDA8);
                    Logger.PSSO_ERROR(code:description:)(-1001, 0xD00000000000001ALL, 0x800000025E952540);
                    swift_willThrow();
                    sub_25E8B2B18(v174, v175);
                    sub_25E8B2B18(v148, v142);
                    sub_25E8B2B18(v173, v172);
                  }

                  else
                  {
                    v150 = v186;
                    (*(v147 + 32))(v186, v146, v144);
                    v222 = v174;
                    v223 = v175;
                    v151 = v217;
                    v220 = v217;
                    v221 = v142;
                    sub_25E917954();
                    v152 = sub_25E941768();
                    v153 = v147;
                    v155 = v154;
                    Data.base64URLEncodedString()();
                    v156 = sub_25E941838();

                    v157 = v224;
                    [v224 setRawBody_];

                    [v157 updateDecodedBody];
                    sub_25E91471C(v152, v155);
                    sub_25E8B2B18(v174, v175);
                    sub_25E8B2B18(v151, v142);
                    sub_25E8B2B18(v173, v172);
                    (*(v153 + 8))(v150, v216);
                  }

                  goto LABEL_63;
                }

                sub_25E8B2B18(v174, v175);
                sub_25E8B2B18(v77, v171);
                sub_25E8B2B18(v173, v172);
                (*(v212 + 8))(v182, v218);
                (*(v213 + 8))(v197, v211);
LABEL_63:
                sub_25E915118(v219, &qword_27FD0BDF8, qword_25E949088);
                return;
              }

              sub_25E9146C8(v187, v193);
              (*(v132 + 8))(v133, v134);
              v217 = v77;
              v114 = v213;
            }

            (*(v201 + 16))(v184, v202, v210);
            (*(v203 + 16))(v185, v205 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v204);
            v137 = v206;
            v136 = v207;
            if (v207 >> 60 == 15)
            {
              v138 = 0;
            }

            else
            {
              v138 = v206;
            }

            v218 = v138;
            (*(v114 + 16))(v183, v197, v211);
            sub_25E915E64(v137, v136);
            v139 = v173;
            v140 = v172;
            sub_25E915E64(v173, v172);
            v141 = v209;
            sub_25E941728();
            if (v141)
            {
              sub_25E8B2B18(v174, v175);
              sub_25E8B2B18(v217, v171);
              sub_25E8B2B18(v139, v140);
              (*(v114 + 8))(v197, v211);
              goto LABEL_63;
            }

            (*(v114 + 8))(v197, v211);
LABEL_57:
            v142 = v171;
            goto LABEL_58;
          }

          (*(v114 + 8))(v115, v107);
          v113 = v214;
        }
      }

      v116 = v77;
      if (v110 == 1)
      {
LABEL_38:
        (*(v201 + 16))(v198, v202, v210);
        (*(v203 + 16))(v199, v205 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v204);
        sub_25E915E64(v206, v207);
        v121 = v173;
        v122 = v172;
        sub_25E915E64(v173, v172);
        v123 = v209;
        sub_25E941758();
        if (v123)
        {
          sub_25E915118(v219, &qword_27FD0BDF8, qword_25E949088);
          sub_25E8B2B18(v121, v122);
          sub_25E8B2B18(v174, v175);
          v100 = v116;
          v101 = v171;
          goto LABEL_24;
        }

        v217 = v116;
        v59 = v54;
        goto LABEL_57;
      }

      v117 = v195;
      v118 = v194;
      v119 = v196;
      (*(v195 + 16))(v194, v217, v196);
      v120 = v218;
      if (v169(v118, 1, v218) == 1)
      {
        (*(v117 + 8))(v118, v119);
        goto LABEL_38;
      }

      v217 = v116;
      v124 = v212;
      (*(v212 + 32))(v113, v118, v120);
      (*(v201 + 16))(v190, v202, v210);
      (*(v203 + 16))(v191, v205 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v204);
      v126 = v206;
      v125 = v207;
      if (v207 >> 60 == 15)
      {
        v127 = 0;
      }

      else
      {
        v127 = v206;
      }

      v213 = v127;
      (*(v124 + 16))(v189, v113, v120);
      sub_25E915E64(v126, v125);
      v128 = v173;
      v129 = v172;
      sub_25E915E64(v173, v172);
      v130 = v188;
      v131 = v209;
      sub_25E941748();
      if (v131)
      {
        sub_25E8B2B18(v174, v175);
        sub_25E8B2B18(v217, v171);
        sub_25E8B2B18(v128, v129);
        (*(v124 + 8))(v214, v120);
        goto LABEL_63;
      }

      (*(v124 + 8))(v214, v120);
      v59 = v130;
      goto LABEL_57;
    }
  }

  if (qword_27FD0CDA0 != -1)
  {
    swift_once();
  }

  v73 = sub_25E9414D8();
  __swift_project_value_buffer(v73, qword_27FD0CDA8);
  Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000026, 0x800000025E952430);
  swift_willThrow();
}

id POCryptoKitHPKE.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id POCryptoKitHPKE.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for POCryptoKitHPKE(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25E91B2F0(uint64_t a1, uint64_t a2)
{
  sub_25E941A28();
  sub_25E9418B8();
  v4 = sub_25E941A38();

  return sub_25E91B368(a1, a2, v4);
}

unint64_t sub_25E91B368(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25E941A18())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E91B420(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE00, &unk_25E9490B0);
    v3 = sub_25E9419F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_25E91B5E8(v4, &v13, &qword_27FD0BDF0, &qword_25E949080);
      v5 = v13;
      v6 = v14;
      result = sub_25E91B2F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25E91B650(&v15, (v3[7] + 32 * result));
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

uint64_t sub_25E91B558(uint64_t a1)
{
  result = sub_25E941668();
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

uint64_t sub_25E91B5E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_25E91B650(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25E91B660()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0CDD8);
  __swift_project_value_buffer(v0, qword_27FD0CDD8);
  return sub_25E9414C8();
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_128.__allocating_init()()
{
  v1 = v0;
  v19 = sub_25E941698();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25E941678();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E941688();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25E941668();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v1);
  *&v15[OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_128_encryptionAlgorithm] = 0x2870A91F8;
  (*(v9 + 104))(v11, *MEMORY[0x277CC5450], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CC5438], v18);
  (*(v2 + 104))(v4, *MEMORY[0x277CC5460], v19);
  v16 = &unk_2870A91F8;
  sub_25E941658();
  return POCryptoKitHPKE.init(cipherSuite:)(v14);
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_128.init()()
{
  v17 = sub_25E941698();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25E941678();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25E941688();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E941668();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_128_encryptionAlgorithm) = 0x2870A91F8;
  (*(v8 + 104))(v10, *MEMORY[0x277CC5450], v7);
  (*(v4 + 104))(v6, *MEMORY[0x277CC5438], v16);
  (*(v1 + 104))(v3, *MEMORY[0x277CC5460], v17);
  v14 = &unk_2870A91F8;
  sub_25E941658();
  return POCryptoKitHPKE.init(cipherSuite:)(v13);
}

Swift::Void __swiftcall POCryptoKitHPKE_P256_SHA256_AES_GCM_128.addValues(to:)(POMutableJWTHeader to)
{
  isa = to.super.super.isa;
  v2 = sub_25E941838();
  [(objc_class *)isa setEnc:v2];

  v3 = sub_25E941838();
  [(objc_class *)isa setAlg:v3];
}

Swift::String __swiftcall POCryptoKitHPKE_P256_SHA256_AES_GCM_128.algValue()()
{
  v0 = 0x800000025E9525D0;
  v1 = 0xD000000000000018;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t POCryptoKitHPKE_P256_SHA256_AES_GCM_128.decodeAndDecryptJWT(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v82 = a7;
  v80 = a4;
  v81 = a1;
  v78 = a3;
  v85 = a2;
  v79 = sub_25E9417D8();
  v72 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v83 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E941898();
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x28223BE20](v13);
  v75 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25E9415E8();
  v73 = *(v15 - 8);
  v74 = v15;
  MEMORY[0x28223BE20](v15);
  v86 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE10, &unk_25E9490C0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v71 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v71 - v26;
  v28 = sub_25E941568();
  v29 = *(*(v28 - 8) + 56);
  v91 = v27;
  v29(v27, 1, 1, v28);
  if (a6 >> 60 == 15 || (v89 = a5, v90 = a6, sub_25E9146C8(a5, a6), sub_25E941558(), v30 = v91, sub_25E915118(v91, &qword_27FD0BCC8, &qword_25E948E78), v29(v25, 0, 1, v28), sub_25E915178(v25, v30, &qword_27FD0BCC8, &qword_25E948E78), a8 >> 60 != 15))
  {
    v84 = a8;
    v33 = sub_25E9417A8();
    v34 = *(*(v33 - 8) + 56);
    v35 = v87;
    v34(v87, 1, 1, v33);
    if (a9)
    {
      v36 = a9;
      v37 = SecKeyCopyExternalRepresentation(v36, 0);
      if (v37)
      {
        v38 = v37;
        v39 = sub_25E941478();
        v41 = v40;

        v89 = v39;
        v90 = v41;
        sub_25E9146C8(v39, v41);
        v42 = v88;
        sub_25E941798();
        v88 = v42;
        if (v42)
        {

          sub_25E91471C(v39, v41);
          sub_25E915118(v87, &unk_27FD0BE10, &unk_25E9490C0);
          return sub_25E915118(v91, &qword_27FD0BCC8, &qword_25E948E78);
        }

        v44 = v87;
        sub_25E915118(v87, &unk_27FD0BE10, &unk_25E9490C0);

        v45 = v41;
        v35 = v44;
        sub_25E91471C(v39, v45);
        v34(v20, 0, 1, v33);
        sub_25E915178(v20, v44, &unk_27FD0BE10, &unk_25E9490C0);
      }

      else
      {
      }
    }

    v46 = objc_opt_self();
    v47 = v85;
    v48 = [v46 isSEPKey_];
    v49 = v88;
    v50 = v91;
    v51 = v84;
    v52 = v86;
    if (v48)
    {
      v53 = v47;
      sub_25E9415D8();
      if (!v49)
      {
        if (v80)
        {
          v54 = v75;
          sub_25E941878();
          v55 = sub_25E941858();
          v57 = v56;
          (*(v76 + 8))(v54, v77);
        }

        else
        {
          v55 = 0;
          v57 = 0xF000000000000000;
        }

        v70 = v74;
        POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v81, v52, v55, v57, v50, v82, v51, v35, v74, MEMORY[0x277CC5380]);
        sub_25E8B2B18(v55, v57);
        (*(v73 + 8))(v52, v70);
      }
    }

    else
    {
      v58 = SecKeyCopyExternalRepresentation(v47, 0);
      if (v58)
      {
        v59 = v58;
        v60 = sub_25E941478();
        v62 = v61;

        v89 = v60;
        v90 = v62;
        sub_25E9146C8(v60, v62);
        v63 = v83;
        sub_25E9417C8();
        if (v49)
        {
          sub_25E91471C(v60, v62);
        }

        else
        {
          v65 = v80;
          if (v80)
          {
            v66 = v75;
            sub_25E941878();
            v65 = sub_25E941858();
            v67 = v66;
            v69 = v68;
            (*(v76 + 8))(v67, v77);
          }

          else
          {
            v69 = 0xF000000000000000;
          }

          POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v81, v63, v65, v69, v50, v82, v51, v35, v79, MEMORY[0x277CC54A8]);
          sub_25E8B2B18(v65, v69);
          sub_25E91471C(v60, v62);
          (*(v72 + 8))(v63, v79);
        }
      }

      else
      {
        if (qword_27FD0CDD0 != -1)
        {
          swift_once();
        }

        v64 = sub_25E9414D8();
        __swift_project_value_buffer(v64, qword_27FD0CDD8);
        Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000027, 0x800000025E951F20);
        swift_willThrow();
      }
    }

    sub_25E915118(v35, &unk_27FD0BE10, &unk_25E9490C0);
    v32 = v50;
  }

  else
  {
    if (qword_27FD0CDD0 != -1)
    {
      swift_once();
    }

    v31 = sub_25E9414D8();
    __swift_project_value_buffer(v31, qword_27FD0CDD8);
    Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000024, 0x800000025E951F50);
    swift_willThrow();
    v32 = v91;
  }

  return sub_25E915118(v32, &qword_27FD0BCC8, &qword_25E948E78);
}

void *POCryptoKitHPKE_P256_SHA256_AES_GCM_128.encodeAndEncryptJWT(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(void *a1, __SecKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, unint64_t a8, void *a9, uint64_t a10, __SecKey *a11)
{
  v12 = v11;
  v75 = a7;
  v74 = a4;
  v72 = a3;
  v80 = a2;
  v82 = a1;
  v73 = sub_25E941898();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E9417A8();
  v76 = *(v17 - 8);
  v77 = v17;
  MEMORY[0x28223BE20](v17);
  v81 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE20, &qword_25E9490D0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v78 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v83 = &v68 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v68 - v27;
  v29 = sub_25E941568();
  v30 = *(*(v29 - 8) + 56);
  v86 = v28;
  v30(v28, 1, 1, v29);
  if (a6 >> 60 != 15)
  {
    v84 = a5;
    v85 = a6;
    sub_25E9146C8(a5, a6);
    sub_25E941558();
    v31 = v86;
    sub_25E915118(v86, &qword_27FD0BCC8, &qword_25E948E78);
    v30(v26, 0, 1, v29);
    v12 = v11;
    sub_25E915178(v26, v31, &qword_27FD0BCC8, &qword_25E948E78);
    if (a8 >> 60 == 15)
    {
      if (qword_27FD0CDD0 != -1)
      {
        swift_once();
      }

      v32 = sub_25E9414D8();
      v33 = __swift_project_value_buffer(v32, qword_27FD0CDD8);
      Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000024, 0x800000025E951F50);
      swift_willThrow();
      goto LABEL_10;
    }
  }

  v79 = a8;
  v34 = sub_25E9417D8();
  v35 = *(*(v34 - 8) + 56);
  v36 = v83;
  v35(v83, 1, 1, v34);
  if (a9)
  {
    v37 = v12;
    v38 = a9;
    v39 = SecKeyCopyExternalRepresentation(v38, 0);
    if (v39)
    {
      v40 = v39;
      v33 = sub_25E941478();
      v42 = v41;

      v84 = v33;
      v85 = v42;
      sub_25E9146C8(v33, v42);
      v43 = v78;
      sub_25E9417C8();
      if (v37)
      {

        sub_25E91471C(v33, v42);
        sub_25E915118(v83, &qword_27FD0BE20, &qword_25E9490D0);
LABEL_10:
        v44 = v86;
LABEL_21:
        sub_25E915118(v44, &qword_27FD0BCC8, &qword_25E948E78);
        return v33;
      }

      v45 = v34;
      v46 = v83;
      sub_25E915118(v83, &qword_27FD0BE20, &qword_25E9490D0);

      v47 = v42;
      v36 = v46;
      sub_25E91471C(v33, v47);
      v69 = v45;
      v35(v43, 0, 1, v45);
      v12 = 0;
      sub_25E915178(v43, v46, &qword_27FD0BE20, &qword_25E9490D0);
    }

    else
    {
      v69 = v34;
    }
  }

  else
  {
    v69 = v34;
  }

  v48 = [v82 header];
  v49 = sub_25E941838();
  [v48 setEnc_];

  v50 = sub_25E941838();
  [v48 setAlg_];

  v51 = SecKeyCopyExternalRepresentation(v80, 0);
  v52 = v86;
  v53 = v79;
  v54 = v81;
  if (!v51)
  {
    if (qword_27FD0CDD0 != -1)
    {
      swift_once();
    }

    v58 = sub_25E9414D8();
    v33 = __swift_project_value_buffer(v58, qword_27FD0CDD8);
    Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000027, 0x800000025E951F20);
    swift_willThrow();
    goto LABEL_20;
  }

  v33 = v51;
  v55 = sub_25E941478();
  v57 = v56;

  v84 = v55;
  v85 = v57;
  sub_25E9146C8(v55, v57);
  sub_25E941798();
  if (v12)
  {
    sub_25E91471C(v55, v57);
LABEL_20:
    sub_25E915118(v36, &qword_27FD0BE20, &qword_25E9490D0);
    v44 = v52;
    goto LABEL_21;
  }

  v61 = a10;
  v60 = a11;
  v62 = v74;
  if (v74)
  {
    v63 = v70;
    v80 = a11;
    sub_25E941878();
    v62 = sub_25E941858();
    v83 = v64;
    (*(v71 + 8))(v63, v73);
    v61 = a10;
    v60 = v80;
  }

  else
  {
    v83 = 0xF000000000000000;
  }

  v65 = v62;
  v66 = v62;
  v67 = v86;
  v33 = POCryptoKitHPKE.encodeAndEncryptJWT<A>(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(v82, v54, v66, v83, v86, v75, v53, v36, v61, v60, v69, MEMORY[0x277CC54A8]);
  sub_25E8B2B18(v65, v83);
  sub_25E91471C(v55, v57);
  (*(v76 + 8))(v54, v77);
  sub_25E915118(v36, &qword_27FD0BE20, &qword_25E9490D0);
  sub_25E915118(v67, &qword_27FD0BCC8, &qword_25E948E78);
  return v33;
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_128.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for POCryptoKitHPKE_P256_SHA256_AES_GCM_128(uint64_t a1)
{
  result = qword_27FD0CDF0;
  if (!qword_27FD0CDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E91D688()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0D008);
  __swift_project_value_buffer(v0, qword_27FD0D008);
  return sub_25E9414C8();
}

uint64_t *sub_25E91D71C()
{
  if (qword_27FD0D020 != -1)
  {
    swift_once();
  }

  return &qword_27FD0D530;
}

id sub_25E91D76C()
{
  if (qword_27FD0D020 != -1)
  {
    swift_once();
  }

  v0 = qword_27FD0D530;

  return v0;
}

uint64_t sub_25E91D824()
{
  v0 = sub_25E941668();
  __swift_allocate_value_buffer(v0, qword_27FD0D538);
  __swift_project_value_buffer(v0, qword_27FD0D538);
  return sub_25E941628();
}

uint64_t sub_25E91D870()
{
  if (qword_27FD0D028 != -1)
  {
    swift_once();
  }

  v0 = sub_25E941668();

  return __swift_project_value_buffer(v0, qword_27FD0D538);
}

uint64_t sub_25E91D8D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD0D028 != -1)
  {
    swift_once();
  }

  v2 = sub_25E941668();
  v3 = __swift_project_value_buffer(v2, qword_27FD0D538);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t POUserUnlockKeySwift.encryptedKeyData.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_encryptedKeyData);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25E91DAE8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_encryptedKeyData);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_25E91DB48@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E91DBA4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_encryptedKeyData);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t POUserUnlockKeySwift.keyData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_keyData;
  swift_beginAccess();
  v2 = *v1;
  sub_25E915E64(*v1, *(v1 + 8));
  return v2;
}

void sub_25E91DDAC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_keyData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_25E8B2B18(v6, v7);
}

uint64_t sub_25E91DE0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_25E91DE68(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_keyData);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_25E915E64(v2, v3);
  sub_25E8B2B18(v5, v6);
}

id POUserUnlockKeySwift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for POUserUnlockKeySwift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_25E91E188(uint64_t a1, unint64_t a2, void *a3)
{
  v53 = a3;
  v5 = sub_25E941668();
  v50 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E941788();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E9415E8();
  v52 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;

  v17 = Data.init(base64URLEncoded:)(a1, a2);
  if (v18 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v19 = v17;
  v20 = v18;
  v48 = v11;
  v49 = v16;
  v47 = v9;
  v21 = objc_allocWithZone(POWrappedTokenJWTBody);
  sub_25E9146C8(v19, v20);
  v22 = sub_25E941458();
  v23 = [v21 initWithJWTData_];

  sub_25E8B2B18(v19, v20);
  if (!v23)
  {
LABEL_7:
    sub_25E8B2B18(v19, v20);
LABEL_8:
    if (qword_27FD0D000 != -1)
    {
      swift_once();
    }

    v32 = sub_25E9414D8();
    __swift_project_value_buffer(v32, qword_27FD0D008);
    Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000015, 0x800000025E952710);
    swift_willThrow();
    return v14;
  }

  v46 = v8;
  v24 = [v23 encapsulatedKey];
  sub_25E941848();

  v25 = sub_25E941418();
  v27 = v26;

  if (v27 >> 60 == 15)
  {
LABEL_6:

    goto LABEL_7;
  }

  v44 = v25;
  v45 = v27;
  v43 = v23;
  v28 = [v23 cipherText];
  sub_25E941848();

  v29 = sub_25E941418();
  v31 = v30;

  if (v31 >> 60 == 15)
  {
    sub_25E8B2B18(v44, v45);
    v23 = v43;
    goto LABEL_6;
  }

  v42 = v29;
  v34 = v53;
  v35 = v49;
  v36 = v56;
  sub_25E9415C8();
  if (v36)
  {
    sub_25E8B2B18(v42, v31);
    sub_25E8B2B18(v44, v45);

    sub_25E8B2B18(v19, v20);
  }

  else
  {
    v56 = v31;
    v37 = v48;
    (*(v52 + 16))(v14, v35, v48);
    if (qword_27FD0D028 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v5, qword_27FD0D538);
    (*(v50 + 16))(v7, v38, v5);
    sub_25E9146C8(v44, v45);
    v39 = v51;
    sub_25E941758();
    v40 = v42;
    v41 = v56;
    v54 = v42;
    v55 = v56;
    sub_25E917954();
    v14 = sub_25E941778();

    sub_25E8B2B18(v44, v45);
    sub_25E8B2B18(v19, v20);
    (*(v47 + 8))(v39, v46);
    (*(v52 + 8))(v49, v37);
    sub_25E8B2B18(v40, v41);
  }

  return v14;
}

char *sub_25E91E7B0(__SecKey *a1)
{
  v2 = sub_25E941668();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E941718();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E9417A8();
  v65 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  v14 = objc_opt_self();
  if (qword_27FD0D020 != -1)
  {
    swift_once();
  }

  v15 = [v14 createSEPEncryptionKeyForAlgorithm:qword_27FD0D530 shared:1 preboot:0];
  v16 = v14;
  if (v15)
  {
    v17 = [v14 dataForKey_];
    if (!v17)
    {
      if (qword_27FD0D000 != -1)
      {
        swift_once();
      }

      v28 = sub_25E9414D8();
      __swift_project_value_buffer(v28, qword_27FD0D008);
      Logger.PSSO_ERROR(code:description:)(-1001, 0xD000000000000024, 0x800000025E952390);
      swift_willThrow();
      goto LABEL_18;
    }

    v18 = v17;
    v60 = sub_25E941478();
    v61 = v19;

    v20 = SecKeyCopyExternalRepresentation(a1, 0);
    if (!v20)
    {
      if (qword_27FD0D000 != -1)
      {
        swift_once();
      }

      v29 = sub_25E9414D8();
      __swift_project_value_buffer(v29, qword_27FD0D008);
      Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000027, 0x800000025E951F20);
      swift_willThrow();
      goto LABEL_17;
    }

    v59 = v3;
    v21 = v20;
    v22 = v13;
    v23 = sub_25E941478();
    v25 = v24;

    v66 = v23;
    v67 = v25;
    sub_25E9146C8(v23, v25);
    v26 = v68;
    sub_25E941798();
    if (v26)
    {
      sub_25E91471C(v23, v25);
LABEL_17:
      sub_25E91471C(v60, v61);
LABEL_18:

      return v5;
    }

    v58 = v23;
    v68 = v25;
    (*(v65 + 16))(v11, v22, v8);
    if (qword_27FD0D028 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v2, qword_27FD0D538);
    (*(v59 + 16))(v5, v31, v2);
    sub_25E9416D8();
    v32 = v60;
    v66 = v60;
    v67 = v61;
    sub_25E917954();
    v59 = sub_25E941708();
    v57 = v33;
    v34 = [objc_allocWithZone(POMutableWrappedTokenJWTBody) init];
    v56 = v8;
    v35 = v34;
    v36 = sub_25E9416E8();
    v38 = v37;
    sub_25E941468();
    v39 = v32;
    sub_25E91471C(v36, v38);
    v40 = sub_25E941838();

    [v35 setEncapsulatedKey_];

    sub_25E941468();
    v41 = sub_25E941838();

    [v35 setCipherText_];

    v5 = [objc_allocWithZone(type metadata accessor for POUserUnlockKeySwift()) init];
    v42 = &v5[OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_keyData];
    swift_beginAccess();
    v43 = *v42;
    v44 = v42[1];
    v45 = v39;
    *v42 = v39;
    v46 = v61;
    v42[1] = v61;
    sub_25E9146C8(v45, v46);
    sub_25E8B2B18(v43, v44);
    v47 = [v35 dataRepresentation];
    v48 = sub_25E941478();
    v50 = v49;

    v51 = Data.base64URLEncodedString()();
    object = v51._object;
    sub_25E91471C(v48, v50);

    sub_25E91471C(v59, v57);
    sub_25E91471C(v60, v46);
    sub_25E91471C(v58, v68);
    (*(v62 + 8))(v64, v63);
    (*(v65 + 8))(v22, v56);
    v52 = &v5[OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_encryptedKeyData];
    swift_beginAccess();
    v53 = object;
    *v52 = v51._countAndFlagsBits;
    v52[1] = v53;
  }

  else
  {
    if (qword_27FD0D000 != -1)
    {
      swift_once();
    }

    v27 = sub_25E9414D8();
    __swift_project_value_buffer(v27, qword_27FD0D008);
    Logger.PSSO_ERROR(code:description:)(-1001, 0xD00000000000001FLL, 0x800000025E952370);
    swift_willThrow();
  }

  return v5;
}

id Logger.PSSO_ERROR(code:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25E941838();
  v5 = [objc_opt_self() errorWithCode:a1 description:v4];

  v6 = sub_25E941988();
  v7 = sub_25E9414B8();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_25E8B1000, v7, v6, "%{public}@", v8, 0xCu);
    sub_25E91F4C8(v9);
    MEMORY[0x25F8C3E40](v9, -1, -1);
    MEMORY[0x25F8C3E40](v8, -1, -1);
  }

  return v5;
}

id Logger.PSSO_ERROR_VALUE(code:description:value:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25E941838();
  v7 = [objc_opt_self() errorWithCode:a1 description:v6];

  v8 = sub_25E941988();
  v9 = sub_25E9414B8();
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
    _os_log_impl(&dword_25E8B1000, v9, v8, "%{public}@, %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE38, &qword_25E9491A8);
    swift_arrayDestroy();
    MEMORY[0x25F8C3E40](v11, -1, -1);
    MEMORY[0x25F8C3E40](v10, -1, -1);
  }

  return v7;
}

id Logger.PSSO_SUBERROR(code:subError:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25E9413F8();
  v6 = sub_25E941838();
  v7 = [objc_opt_self() errorWithCode:a1 underlyingError:v5 description:v6];

  v8 = sub_25E941988();
  v9 = sub_25E9414B8();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_25E8B1000, v9, v8, "%{public}@", v10, 0xCu);
    sub_25E91F4C8(v11);
    MEMORY[0x25F8C3E40](v11, -1, -1);
    MEMORY[0x25F8C3E40](v10, -1, -1);
  }

  return v7;
}

id Logger.PSSO_SUBERROR_VALUE(code:subError:description:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_25E9413F8();
  v8 = sub_25E941838();
  v9 = [objc_opt_self() errorWithCode:a1 underlyingError:v7 description:v8];

  v10 = sub_25E941988();
  v11 = sub_25E9414B8();
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
    _os_log_impl(&dword_25E8B1000, v11, v10, "%{public}@, %{public}@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE38, &qword_25E9491A8);
    swift_arrayDestroy();
    MEMORY[0x25F8C3E40](v13, -1, -1);
    MEMORY[0x25F8C3E40](v12, -1, -1);
  }

  return v9;
}

uint64_t sub_25E91F4C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE38, &qword_25E9491A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall Data.base64URLEncodedString()()
{
  v0 = sub_25E941368();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25E941468();
  v22 = v4;
  v19 = 43;
  v20 = 0xE100000000000000;
  v17 = 45;
  v18 = 0xE100000000000000;
  sub_25E91F76C();
  v5 = sub_25E9419B8();
  v7 = v6;

  v21 = v5;
  v22 = v7;
  v19 = 47;
  v20 = 0xE100000000000000;
  v17 = 95;
  v18 = 0xE100000000000000;
  v8 = sub_25E9419B8();
  v10 = v9;

  v21 = v8;
  v22 = v10;
  v19 = &unk_28708D980;
  sub_25E91F7C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE50, qword_25E9491B0);
  sub_25E91F818();
  sub_25E9419C8();
  v11 = sub_25E9419A8();
  v13 = v12;
  (*(v1 + 8))(v3, v0);

  v14 = v11;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

unint64_t sub_25E91F76C()
{
  result = qword_27FD0BE40;
  if (!qword_27FD0BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0BE40);
  }

  return result;
}

unint64_t sub_25E91F7C0()
{
  result = qword_27FD0BE48;
  if (!qword_27FD0BE48)
  {
    sub_25E941368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0BE48);
  }

  return result;
}

unint64_t sub_25E91F818()
{
  result = qword_27FD0BE58;
  if (!qword_27FD0BE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0BE50, qword_25E9491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0BE58);
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

uint64_t Data.init(base64URLEncoded:)(uint64_t a1, unint64_t a2)
{
  sub_25E9418C8();
  sub_25E91F76C();
  sub_25E9419B8();

  sub_25E9419B8();

  sub_25E941968();
  sub_25E9418E8();

  v2 = sub_25E941418();
  v4 = v3;
  sub_25E915E64(v2, v3);

  if (v4 >> 60 != 15)
  {
    sub_25E8B2B18(v2, v4);
  }

  return v2;
}

id POCryptoKitAlgorithmCurve25519.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id POCryptoKitAlgorithmCurve25519.init()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_25E941838();
  v3 = sub_25E941838();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithSecKeyAlgorithm_algorithmName_alg_, 0, v2, v3);

  return v4;
}

uint64_t POCryptoKitAlgorithmCurve25519.sign(_:using:error:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_25E9415B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  sub_25E941598();
  if (!v3)
  {
    v13[0] = a1;
    v13[1] = a2;
    sub_25E917954();
    a2 = sub_25E9415A8();
    (*(v8 + 8))(v10, v7);
  }

  return a2;
}

id POCryptoKitAlgorithmCurve25519.__allocating_init(secKeyAlgorithm:algorithmName:alg:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_allocWithZone(v5);
  v8 = sub_25E941838();

  v9 = sub_25E941838();

  v10 = [v7 initWithSecKeyAlgorithm:a1 algorithmName:v8 alg:v9];

  return v10;
}

id POCryptoKitAlgorithmCurve25519.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C15verifySignature_2on5usingSb10Foundation4DataV_AISo9SecKeyRefatF_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __SecKey *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE60, &qword_25E9491F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  v13 = sub_25E941548();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = SecKeyCopyExternalRepresentation(a5, 0);
  if (v17)
  {
    v24[0] = a4;
    v18 = v17;
    v19 = sub_25E941478();
    v21 = v20;

    v25 = v19;
    v26 = v21;
    sub_25E9146C8(v19, v21);
    sub_25E941538();
    (*(v14 + 56))(v12, 0, 1, v13);
    (*(v14 + 32))(v16, v12, v13);
    v25 = a1;
    v26 = a2;
    v24[1] = a3;
    v24[2] = v24[0];
    sub_25E917954();
    v22 = sub_25E941528();
    sub_25E91471C(v19, v21);
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C15verifySignature_2on22usingCertificateStringSb10Foundation4DataV_AISStF_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_allocWithZone(MEMORY[0x277CBEA90]);
  v11 = sub_25E941838();
  v12 = [v10 initWithBase64EncodedString:v11 options:0];

  if (v12)
  {
    v13 = SecCertificateCreateWithData(0, v12);
    if (v13)
    {
      v14 = v13;
      v15 = SecCertificateCopyKey(v13);
      if (v15)
      {
        v16 = v15;
        v17 = _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C15verifySignature_2on5usingSb10Foundation4DataV_AISo9SecKeyRefatF_0(a1, a2, a3, a4, v15);

        v12 = v14;
        v14 = v16;
      }

      else
      {
        v17 = 0;
      }

      v12 = v14;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C9verifyKeyySbSo03SecH3RefaF_0(void *a1)
{
  v2 = sub_25E9415B8();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E941898();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E9414A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E941498();
  sub_25E941488();
  (*(v10 + 8))(v12, v9);
  sub_25E941878();
  v13 = sub_25E941858();
  v15 = v14;

  result = (*(v6 + 8))(v8, v5);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    if ([objc_opt_self() isSEPKey_])
    {
      v17 = a1;
      sub_25E941598();
      v23 = v13;
      v24 = v15;
      sub_25E917954();
      v18 = sub_25E9415A8();
      sub_25E91471C(v18, v19);
      (*(v21 + 8))(v4, v22);
    }

    sub_25E8B2B18(v13, v15);
    return 1;
  }

  return result;
}

uint64_t sub_25E9208F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE60, &qword_25E9491F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E92095C()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0D038);
  __swift_project_value_buffer(v0, qword_27FD0D038);
  return sub_25E9414C8();
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_256.__allocating_init()()
{
  v1 = sub_25E941668();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(v0);
  *&v4[OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_256_encryptionAlgorithm] = 0x2870A91B0;
  v5 = &unk_2870A91B0;
  sub_25E941628();
  return POCryptoKitHPKE.init(cipherSuite:)(v3);
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_256.init()()
{
  v1 = sub_25E941668();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_256_encryptionAlgorithm) = 0x2870A91B0;
  v4 = &unk_2870A91B0;
  sub_25E941628();
  return POCryptoKitHPKE.init(cipherSuite:)(v3);
}

Swift::Void __swiftcall POCryptoKitHPKE_P256_SHA256_AES_GCM_256.addValues(to:)(POMutableJWTHeader to)
{
  isa = to.super.super.isa;
  v2 = sub_25E941838();
  [(objc_class *)isa setEnc:v2];

  [(objc_class *)isa setAlg:@"HPKE-P256-SHA256-A256GCM"];
}

Swift::String __swiftcall POCryptoKitHPKE_P256_SHA256_AES_GCM_256.algValue()()
{
  v0 = sub_25E941848();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t POCryptoKitHPKE_P256_SHA256_AES_GCM_256.decodeAndDecryptJWT(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v82 = a7;
  v80 = a4;
  v81 = a1;
  v78 = a3;
  v85 = a2;
  v79 = sub_25E9417D8();
  v72 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v83 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E941898();
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x28223BE20](v13);
  v75 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25E9415E8();
  v73 = *(v15 - 8);
  v74 = v15;
  MEMORY[0x28223BE20](v15);
  v86 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE10, &unk_25E9490C0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v71 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v71 - v26;
  v28 = sub_25E941568();
  v29 = *(*(v28 - 8) + 56);
  v91 = v27;
  v29(v27, 1, 1, v28);
  if (a6 >> 60 == 15 || (v89 = a5, v90 = a6, sub_25E9146C8(a5, a6), sub_25E941558(), v30 = v91, sub_25E915118(v91, &qword_27FD0BCC8, &qword_25E948E78), v29(v25, 0, 1, v28), sub_25E915178(v25, v30, &qword_27FD0BCC8, &qword_25E948E78), a8 >> 60 != 15))
  {
    v84 = a8;
    v33 = sub_25E9417A8();
    v34 = *(*(v33 - 8) + 56);
    v35 = v87;
    v34(v87, 1, 1, v33);
    if (a9)
    {
      v36 = a9;
      v37 = SecKeyCopyExternalRepresentation(v36, 0);
      if (v37)
      {
        v38 = v37;
        v39 = sub_25E941478();
        v41 = v40;

        v89 = v39;
        v90 = v41;
        sub_25E9146C8(v39, v41);
        v42 = v88;
        sub_25E941798();
        v88 = v42;
        if (v42)
        {

          sub_25E91471C(v39, v41);
          sub_25E915118(v87, &unk_27FD0BE10, &unk_25E9490C0);
          return sub_25E915118(v91, &qword_27FD0BCC8, &qword_25E948E78);
        }

        v44 = v87;
        sub_25E915118(v87, &unk_27FD0BE10, &unk_25E9490C0);

        v45 = v41;
        v35 = v44;
        sub_25E91471C(v39, v45);
        v34(v20, 0, 1, v33);
        sub_25E915178(v20, v44, &unk_27FD0BE10, &unk_25E9490C0);
      }

      else
      {
      }
    }

    v46 = objc_opt_self();
    v47 = v85;
    v48 = [v46 isSEPKey_];
    v49 = v88;
    v50 = v91;
    v51 = v84;
    v52 = v86;
    if (v48)
    {
      v53 = v47;
      sub_25E9415D8();
      if (!v49)
      {
        if (v80)
        {
          v54 = v75;
          sub_25E941878();
          v55 = sub_25E941858();
          v57 = v56;
          (*(v76 + 8))(v54, v77);
        }

        else
        {
          v55 = 0;
          v57 = 0xF000000000000000;
        }

        v70 = v74;
        POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v81, v52, v55, v57, v50, v82, v51, v35, v74, MEMORY[0x277CC5380]);
        sub_25E8B2B18(v55, v57);
        (*(v73 + 8))(v52, v70);
      }
    }

    else
    {
      v58 = SecKeyCopyExternalRepresentation(v47, 0);
      if (v58)
      {
        v59 = v58;
        v60 = sub_25E941478();
        v62 = v61;

        v89 = v60;
        v90 = v62;
        sub_25E9146C8(v60, v62);
        v63 = v83;
        sub_25E9417C8();
        if (v49)
        {
          sub_25E91471C(v60, v62);
        }

        else
        {
          v65 = v80;
          if (v80)
          {
            v66 = v75;
            sub_25E941878();
            v65 = sub_25E941858();
            v67 = v66;
            v69 = v68;
            (*(v76 + 8))(v67, v77);
          }

          else
          {
            v69 = 0xF000000000000000;
          }

          POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v81, v63, v65, v69, v50, v82, v51, v35, v79, MEMORY[0x277CC54A8]);
          sub_25E8B2B18(v65, v69);
          sub_25E91471C(v60, v62);
          (*(v72 + 8))(v63, v79);
        }
      }

      else
      {
        if (qword_27FD0D030 != -1)
        {
          swift_once();
        }

        v64 = sub_25E9414D8();
        __swift_project_value_buffer(v64, qword_27FD0D038);
        Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000027, 0x800000025E951F20);
        swift_willThrow();
      }
    }

    sub_25E915118(v35, &unk_27FD0BE10, &unk_25E9490C0);
    v32 = v50;
  }

  else
  {
    if (qword_27FD0D030 != -1)
    {
      swift_once();
    }

    v31 = sub_25E9414D8();
    __swift_project_value_buffer(v31, qword_27FD0D038);
    Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000024, 0x800000025E951F50);
    swift_willThrow();
    v32 = v91;
  }

  return sub_25E915118(v32, &qword_27FD0BCC8, &qword_25E948E78);
}

void *POCryptoKitHPKE_P256_SHA256_AES_GCM_256.encodeAndEncryptJWT(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(void *a1, __SecKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, unint64_t a8, void *a9, char *a10, __SecKey *a11)
{
  v12 = v11;
  v71 = a7;
  v70 = a4;
  v68 = a3;
  v75 = a2;
  v77 = a1;
  v69 = sub_25E941898();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E9417A8();
  v72 = *(v17 - 8);
  v73 = v17;
  MEMORY[0x28223BE20](v17);
  v76 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE20, &qword_25E9490D0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v74 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v80 = &v63 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v63 - v27;
  v29 = sub_25E941568();
  v30 = *(*(v29 - 8) + 56);
  v30(v28, 1, 1, v29);
  if (a6 >> 60 != 15)
  {
    v78 = a5;
    v79 = a6;
    sub_25E9146C8(a5, a6);
    sub_25E941558();
    sub_25E915118(v28, &qword_27FD0BCC8, &qword_25E948E78);
    v30(v26, 0, 1, v29);
    v12 = v11;
    sub_25E915178(v26, v28, &qword_27FD0BCC8, &qword_25E948E78);
    if (a8 >> 60 == 15)
    {
      if (qword_27FD0D030 != -1)
      {
        swift_once();
      }

      v31 = sub_25E9414D8();
      v32 = __swift_project_value_buffer(v31, qword_27FD0D038);
      Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000024, 0x800000025E951F50);
      swift_willThrow();
      goto LABEL_20;
    }
  }

  v33 = sub_25E9417D8();
  v34 = *(*(v33 - 8) + 56);
  v35 = v80;
  v34(v80, 1, 1, v33);
  if (a9)
  {
    v65 = v28;
    v36 = v12;
    v37 = a9;
    v38 = SecKeyCopyExternalRepresentation(v37, 0);
    if (v38)
    {
      v39 = v38;
      v64 = v33;
      v32 = sub_25E941478();
      v41 = v40;

      v78 = v32;
      v79 = v41;
      sub_25E9146C8(v32, v41);
      v42 = v74;
      sub_25E9417C8();
      if (v36)
      {

        sub_25E91471C(v32, v41);
        sub_25E915118(v80, &qword_27FD0BE20, &qword_25E9490D0);
        v43 = v65;
LABEL_21:
        sub_25E915118(v43, &qword_27FD0BCC8, &qword_25E948E78);
        return v32;
      }

      v44 = v80;
      sub_25E915118(v80, &qword_27FD0BE20, &qword_25E9490D0);

      v45 = v41;
      v35 = v44;
      sub_25E91471C(v32, v45);
      v46 = v64;
      v34(v42, 0, 1, v64);
      v47 = v42;
      v33 = v46;
      v48 = v44;
      v12 = 0;
      sub_25E915178(v47, v48, &qword_27FD0BE20, &qword_25E9490D0);
    }

    else
    {
    }

    v28 = v65;
  }

  v49 = [v77 header];
  v50 = sub_25E941838();
  [v49 setEnc_];

  [v49 setAlg_];
  v51 = SecKeyCopyExternalRepresentation(v75, 0);
  if (!v51)
  {
    if (qword_27FD0D030 != -1)
    {
      swift_once();
    }

    v56 = sub_25E9414D8();
    v32 = __swift_project_value_buffer(v56, qword_27FD0D038);
    Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000027, 0x800000025E951F20);
    swift_willThrow();
    goto LABEL_19;
  }

  v52 = a8;
  v32 = v51;
  v53 = sub_25E941478();
  v55 = v54;

  v78 = v53;
  v79 = v55;
  sub_25E9146C8(v53, v55);
  sub_25E941798();
  if (v12)
  {
    sub_25E91471C(v53, v55);
LABEL_19:
    sub_25E915118(v35, &qword_27FD0BE20, &qword_25E9490D0);
LABEL_20:
    v43 = v28;
    goto LABEL_21;
  }

  v59 = a10;
  v58 = a11;
  v60 = v70;
  if (v70)
  {
    v61 = v66;
    v74 = a10;
    v75 = a11;
    sub_25E941878();
    v60 = sub_25E941858();
    v80 = v62;
    (*(v67 + 8))(v61, v69);
    v59 = v74;
    v58 = v75;
  }

  else
  {
    v80 = 0xF000000000000000;
  }

  v32 = POCryptoKitHPKE.encodeAndEncryptJWT<A>(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(v77, v76, v60, v80, v28, v71, v52, v35, v59, v58, v33, MEMORY[0x277CC54A8]);
  sub_25E8B2B18(v60, v80);
  sub_25E91471C(v53, v55);
  (*(v72 + 8))(v76, v73);
  sub_25E915118(v35, &qword_27FD0BE20, &qword_25E9490D0);
  sub_25E915118(v28, &qword_27FD0BCC8, &qword_25E948E78);
  return v32;
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_256.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for POCryptoKitHPKE_P256_SHA256_AES_GCM_256(uint64_t a1)
{
  result = qword_27FD0D050;
  if (!qword_27FD0D050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E92229C()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0D268);
  __swift_project_value_buffer(v0, qword_27FD0D268);
  return sub_25E9414C8();
}

id POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.__allocating_init()()
{
  v1 = sub_25E941668();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_allocWithZone(v0);
  *&v4[OBJC_IVAR____TtC15PlatformSSOCore44POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly_encryptionAlgorithm] = 0x2870A91E0;
  v5 = &unk_2870A91E0;
  sub_25E941648();
  return POCryptoKitHPKE.init(cipherSuite:)(v3);
}

id POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.init()()
{
  v1 = sub_25E941668();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC15PlatformSSOCore44POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly_encryptionAlgorithm) = 0x2870A91E0;
  v4 = &unk_2870A91E0;
  sub_25E941648();
  return POCryptoKitHPKE.init(cipherSuite:)(v3);
}

Swift::Void __swiftcall POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.addValues(to:)(POMutableJWTHeader to)
{
  isa = to.super.super.isa;
  v2 = sub_25E941838();
  [(objc_class *)isa setEnc:v2];

  [(objc_class *)isa setAlg:@"HPKE-X25519-SHA256-ChaCha20Poly1305"];
}

Swift::String __swiftcall POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.algValue()()
{
  v0 = sub_25E941848();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.decodeAndDecryptJWT(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v82 = a7;
  v80 = a4;
  v81 = a1;
  v78 = a3;
  v85 = a2;
  v79 = sub_25E941518();
  v72 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v83 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E941898();
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x28223BE20](v13);
  v75 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25E941588();
  v73 = *(v15 - 8);
  v74 = v15;
  MEMORY[0x28223BE20](v15);
  v86 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE70, &unk_25E9492B0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v71 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v71 - v26;
  v28 = sub_25E941568();
  v29 = *(*(v28 - 8) + 56);
  v91 = v27;
  v29(v27, 1, 1, v28);
  if (a6 >> 60 == 15 || (v89 = a5, v90 = a6, sub_25E9146C8(a5, a6), sub_25E941558(), v30 = v91, sub_25E915118(v91, &qword_27FD0BCC8, &qword_25E948E78), v29(v25, 0, 1, v28), sub_25E915178(v25, v30, &qword_27FD0BCC8, &qword_25E948E78), a8 >> 60 != 15))
  {
    v84 = a8;
    v33 = sub_25E9414F8();
    v34 = *(*(v33 - 8) + 56);
    v35 = v87;
    v34(v87, 1, 1, v33);
    if (a9)
    {
      v36 = a9;
      v37 = SecKeyCopyExternalRepresentation(v36, 0);
      if (v37)
      {
        v38 = v37;
        v39 = sub_25E941478();
        v41 = v40;

        v89 = v39;
        v90 = v41;
        sub_25E9146C8(v39, v41);
        v42 = v88;
        sub_25E9414E8();
        v88 = v42;
        if (v42)
        {

          sub_25E91471C(v39, v41);
          sub_25E915118(v87, &unk_27FD0BE70, &unk_25E9492B0);
          return sub_25E915118(v91, &qword_27FD0BCC8, &qword_25E948E78);
        }

        v44 = v87;
        sub_25E915118(v87, &unk_27FD0BE70, &unk_25E9492B0);

        v45 = v41;
        v35 = v44;
        sub_25E91471C(v39, v45);
        v34(v20, 0, 1, v33);
        sub_25E915178(v20, v44, &unk_27FD0BE70, &unk_25E9492B0);
      }

      else
      {
      }
    }

    v46 = objc_opt_self();
    v47 = v85;
    v48 = [v46 isSEPKey_];
    v49 = v88;
    v50 = v91;
    v51 = v84;
    v52 = v86;
    if (v48)
    {
      v53 = v47;
      sub_25E941578();
      if (!v49)
      {
        if (v80)
        {
          v54 = v75;
          sub_25E941878();
          v55 = sub_25E941858();
          v57 = v56;
          (*(v76 + 8))(v54, v77);
        }

        else
        {
          v55 = 0;
          v57 = 0xF000000000000000;
        }

        v70 = v74;
        POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v81, v52, v55, v57, v50, v82, v51, v35, v74, MEMORY[0x277CC5358]);
        sub_25E8B2B18(v55, v57);
        (*(v73 + 8))(v52, v70);
      }
    }

    else
    {
      v58 = SecKeyCopyExternalRepresentation(v47, 0);
      if (v58)
      {
        v59 = v58;
        v60 = sub_25E941478();
        v62 = v61;

        v89 = v60;
        v90 = v62;
        sub_25E9146C8(v60, v62);
        v63 = v83;
        sub_25E941508();
        if (v49)
        {
          sub_25E91471C(v60, v62);
        }

        else
        {
          v65 = v80;
          if (v80)
          {
            v66 = v75;
            sub_25E941878();
            v65 = sub_25E941858();
            v67 = v66;
            v69 = v68;
            (*(v76 + 8))(v67, v77);
          }

          else
          {
            v69 = 0xF000000000000000;
          }

          POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v81, v63, v65, v69, v50, v82, v51, v35, v79, MEMORY[0x277CC5230]);
          sub_25E8B2B18(v65, v69);
          sub_25E91471C(v60, v62);
          (*(v72 + 8))(v63, v79);
        }
      }

      else
      {
        if (qword_27FD0D260 != -1)
        {
          swift_once();
        }

        v64 = sub_25E9414D8();
        __swift_project_value_buffer(v64, qword_27FD0D268);
        Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000027, 0x800000025E951F20);
        swift_willThrow();
      }
    }

    sub_25E915118(v35, &unk_27FD0BE70, &unk_25E9492B0);
    v32 = v50;
  }

  else
  {
    if (qword_27FD0D260 != -1)
    {
      swift_once();
    }

    v31 = sub_25E9414D8();
    __swift_project_value_buffer(v31, qword_27FD0D268);
    Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000024, 0x800000025E951F50);
    swift_willThrow();
    v32 = v91;
  }

  return sub_25E915118(v32, &qword_27FD0BCC8, &qword_25E948E78);
}

void *POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.encodeAndEncryptJWT(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(void *a1, __SecKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, unint64_t a8, void *a9, char *a10, __SecKey *a11)
{
  v12 = v11;
  v71 = a7;
  v70 = a4;
  v68 = a3;
  v75 = a2;
  v77 = a1;
  v69 = sub_25E941898();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E9414F8();
  v72 = *(v17 - 8);
  v73 = v17;
  MEMORY[0x28223BE20](v17);
  v76 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE80, &qword_25E9492C0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v74 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v80 = &v63 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v63 - v27;
  v29 = sub_25E941568();
  v30 = *(*(v29 - 8) + 56);
  v30(v28, 1, 1, v29);
  if (a6 >> 60 != 15)
  {
    v78 = a5;
    v79 = a6;
    sub_25E9146C8(a5, a6);
    sub_25E941558();
    sub_25E915118(v28, &qword_27FD0BCC8, &qword_25E948E78);
    v30(v26, 0, 1, v29);
    v12 = v11;
    sub_25E915178(v26, v28, &qword_27FD0BCC8, &qword_25E948E78);
    if (a8 >> 60 == 15)
    {
      if (qword_27FD0D260 != -1)
      {
        swift_once();
      }

      v31 = sub_25E9414D8();
      v32 = __swift_project_value_buffer(v31, qword_27FD0D268);
      Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000024, 0x800000025E951F50);
      swift_willThrow();
      goto LABEL_20;
    }
  }

  v33 = sub_25E941518();
  v34 = *(*(v33 - 8) + 56);
  v35 = v80;
  v34(v80, 1, 1, v33);
  if (a9)
  {
    v65 = v28;
    v36 = v12;
    v37 = a9;
    v38 = SecKeyCopyExternalRepresentation(v37, 0);
    if (v38)
    {
      v39 = v38;
      v64 = v33;
      v32 = sub_25E941478();
      v41 = v40;

      v78 = v32;
      v79 = v41;
      sub_25E9146C8(v32, v41);
      v42 = v74;
      sub_25E941508();
      if (v36)
      {

        sub_25E91471C(v32, v41);
        sub_25E915118(v80, &unk_27FD0BE80, &qword_25E9492C0);
        v43 = v65;
LABEL_21:
        sub_25E915118(v43, &qword_27FD0BCC8, &qword_25E948E78);
        return v32;
      }

      v44 = v80;
      sub_25E915118(v80, &unk_27FD0BE80, &qword_25E9492C0);

      v45 = v41;
      v35 = v44;
      sub_25E91471C(v32, v45);
      v46 = v64;
      v34(v42, 0, 1, v64);
      v47 = v42;
      v33 = v46;
      v48 = v44;
      v12 = 0;
      sub_25E915178(v47, v48, &unk_27FD0BE80, &qword_25E9492C0);
    }

    else
    {
    }

    v28 = v65;
  }

  v49 = [v77 header];
  v50 = sub_25E941838();
  [v49 setEnc_];

  [v49 setAlg_];
  v51 = SecKeyCopyExternalRepresentation(v75, 0);
  if (!v51)
  {
    if (qword_27FD0D260 != -1)
    {
      swift_once();
    }

    v56 = sub_25E9414D8();
    v32 = __swift_project_value_buffer(v56, qword_27FD0D268);
    Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000027, 0x800000025E951F20);
    swift_willThrow();
    goto LABEL_19;
  }

  v52 = a8;
  v32 = v51;
  v53 = sub_25E941478();
  v55 = v54;

  v78 = v53;
  v79 = v55;
  sub_25E9146C8(v53, v55);
  sub_25E9414E8();
  if (v12)
  {
    sub_25E91471C(v53, v55);
LABEL_19:
    sub_25E915118(v35, &unk_27FD0BE80, &qword_25E9492C0);
LABEL_20:
    v43 = v28;
    goto LABEL_21;
  }

  v59 = a10;
  v58 = a11;
  v60 = v70;
  if (v70)
  {
    v61 = v66;
    v74 = a10;
    v75 = a11;
    sub_25E941878();
    v60 = sub_25E941858();
    v80 = v62;
    (*(v67 + 8))(v61, v69);
    v59 = v74;
    v58 = v75;
  }

  else
  {
    v80 = 0xF000000000000000;
  }

  v32 = POCryptoKitHPKE.encodeAndEncryptJWT<A>(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(v77, v76, v60, v80, v28, v71, v52, v35, v59, v58, v33, MEMORY[0x277CC5230]);
  sub_25E8B2B18(v60, v80);
  sub_25E91471C(v53, v55);
  (*(v72 + 8))(v76, v73);
  sub_25E915118(v35, &unk_27FD0BE80, &qword_25E9492C0);
  sub_25E915118(v28, &qword_27FD0BCC8, &qword_25E948E78);
  return v32;
}

uint64_t sub_25E923B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v53 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E941788();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E941718();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v66 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E941668();
  v69 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v52 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v64 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v55 = a1;
  sub_25E941618();
  sub_25E941648();
  v62 = sub_25E924248(0x74616420656D6F53, 0xE900000000000061);
  v63 = v24;
  (*(v18 + 16))(v21, v23, AssociatedTypeWitness);
  v25 = *(v69 + 16);
  v61 = v10;
  v25(v59, v16, v10);
  swift_getAssociatedConformanceWitness();
  v26 = v60;
  sub_25E9416D8();
  if (v26)
  {
    sub_25E91471C(v62, v63);
    (*(v69 + 8))(v16, v61);
    (*(v18 + 8))(v23, AssociatedTypeWitness);
  }

  else
  {
    v47 = v25;
    v48 = v18;
    v49 = v23;
    v59 = AssociatedTypeWitness;
    v60 = v16;
    v27 = sub_25E9416E8();
    v29 = v28;
    v67 = v62;
    v68 = v63;
    v30 = sub_25E917954();
    v31 = sub_25E941708();
    v44 = v30;
    v46 = v31;
    v45 = v33;
    v34 = v29;
    v35 = v27;
    (*(v53 + 16))(v54, v55, v64);
    v47(v52, v60, v61);
    sub_25E9146C8(v27, v29);
    sub_25E941758();
    v36 = v45;
    v67 = v46;
    v68 = v45;
    v37 = sub_25E941778();
    v38 = v69;
    v39 = v48;
    v41 = v57;
    v40 = v58;
    v42 = v66;
    sub_25E91471C(v37, v43);
    sub_25E91471C(v62, v63);
    sub_25E91471C(v35, v34);
    (*(v50 + 8))(v56, v51);
    (*(v41 + 8))(v42, v40);
    (*(v38 + 8))(v60, v61);
    (*(v39 + 8))(v49, v59);
    sub_25E91471C(v46, v36);
  }

  return 1;
}

uint64_t sub_25E924248(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE90, &qword_25E949398);
  if (swift_dynamicCast())
  {
    sub_25E925C78(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_25E9413E8();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25E915118(__src, &qword_27FD0BE98, &qword_25E9493A0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25E9419E8();
  }

  sub_25E924850(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_25E924FF4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_25E924918(sub_25E925C10, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25E941438();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_25E924E70(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25E941908();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25E941938();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25E9419E8();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_25E924E70(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25E941918();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_25E941448();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_25E941448();
    sub_25E8B2B18(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_25E8B2B18(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25E9146C8(*&__src[0], *(&__src[0] + 1));

  sub_25E91471C(v32, *(&v32 + 1));
  return v32;
}

id POCurve25519Verify.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id POCurve25519Verify.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_25E924818()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_25E924850@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_25E924F3C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_25E9413D8();
      swift_allocObject();
      v8 = sub_25E941388();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_25E941428();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_25E924918(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_25E91471C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25E91471C(v7, v6);
    *v4 = xmmword_25E9492A0;
    sub_25E91471C(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25E941398() && __OFSUB__(v7, sub_25E9413C8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_25E9413D8();
      swift_allocObject();
      v14 = sub_25E941378();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_25E924DBC(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_25E91471C(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_25E9492A0;
    sub_25E91471C(0, 0xC000000000000000);
    sub_25E941408();
    result = sub_25E924DBC(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_25E924CBC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25E924F3C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25E925094(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25E925110(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25E924D50(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25E924DBC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25E941398();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25E9413C8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25E9413B8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_25E924E70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25E941948();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8C2B00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25E924EEC@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_25E9419D8();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25E924F3C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_25E924FF4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_25E9413D8();
      swift_allocObject();
      sub_25E9413A8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25E941428();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_25E925094(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25E9413D8();
  swift_allocObject();
  result = sub_25E941388();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25E941428();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25E925110(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25E9413D8();
  swift_allocObject();
  result = sub_25E941388();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25E925194(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, unint64_t a4)
{
  v57 = a4;
  v64 = a3;
  v63 = a2(0);
  v53 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v54 = &v44 - v5;
  v6 = sub_25E941788();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E941718();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v67 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E941668();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v52 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = sub_25E9414F8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v44 - v24;
  v55 = a1;
  sub_25E941618();
  sub_25E941648();
  v64 = sub_25E924248(0x74616420656D6F53, 0xE900000000000061);
  v62 = v26;
  (*(v20 + 16))(v23, v25, v19);
  v60 = v11;
  v27 = *(v11 + 16);
  v27(v16, v18, v10);
  v28 = v61;
  sub_25E9416D8();
  if (v28)
  {
    sub_25E91471C(v64, v62);
    (*(v60 + 8))(v18, v10);
    (*(v20 + 8))(v25, v19);
  }

  else
  {
    v47 = v27;
    v48 = v25;
    v49 = v19;
    v61 = v10;
    v29 = sub_25E9416E8();
    v31 = v30;
    v65 = v64;
    v66 = v62;
    v32 = sub_25E917954();
    v33 = sub_25E941708();
    v44 = v32;
    v45 = v33;
    v46 = v35;
    (*(v53 + 16))(v54, v55, v63);
    v47(v52, v18, v61);
    sub_25E9146C8(v29, v31);
    v36 = v56;
    sub_25E941758();
    v57 = v31;
    v63 = v18;
    v37 = v45;
    v65 = v45;
    v66 = v46;
    v38 = sub_25E941778();
    v39 = v59;
    v40 = v60;
    v41 = v58;
    v42 = v62;
    sub_25E91471C(v38, v43);
    sub_25E91471C(v64, v42);
    sub_25E91471C(v29, v57);
    (*(v50 + 8))(v36, v51);
    (*(v41 + 8))(v67, v39);
    (*(v40 + 8))(v63, v61);
    (*(v20 + 8))(v48, v49);
    sub_25E91471C(v37, v46);
  }

  return 1;
}

uint64_t _s15PlatformSSOCore18POCurve25519VerifyC9verifyKeyySbSo03SecF3RefaF_0(void *a1)
{
  v2 = sub_25E941518();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E941588();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isSEPKey_])
  {
    v10 = a1;
    sub_25E941578();
    v19 = sub_25E925194(v9, MEMORY[0x277CC5360], MEMORY[0x277CC5350], MEMORY[0x277CC5358]);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v11 = SecKeyCopyExternalRepresentation(a1, 0);
    if (v11)
    {
      v12 = v11;
      v13 = sub_25E941478();
      v15 = v14;

      v20[1] = v13;
      v20[2] = v15;
      sub_25E9146C8(v13, v15);
      sub_25E941508();
      v19 = sub_25E925194(v5, MEMORY[0x277CC5240], MEMORY[0x277CC5228], MEMORY[0x277CC5230]);
      (*(v3 + 8))(v5, v2);
      sub_25E91471C(v13, v15);
    }

    else
    {
      if (qword_27FD0D260 != -1)
      {
        swift_once();
      }

      v16 = sub_25E9414D8();
      __swift_project_value_buffer(v16, qword_27FD0D268);
      v17 = Logger.PSSO_ERROR(code:description:)(-1005, 0xD000000000000027, 0x800000025E951F20);
      swift_willThrow();

      v19 = 0;
    }
  }

  return v19 & 1;
}

uint64_t type metadata accessor for POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly(uint64_t a1)
{
  result = qword_27FD0D280;
  if (!qword_27FD0D280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_25E925C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25E924D50(sub_25E925D20, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_25E925C78(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t lib_platform_rng()
{
  v0 = ccrng();
  REQUIRE_func(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  REQUIRE_func(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t lib_platform_read_random(uint64_t a1, unsigned int a2)
{
  v4 = platform_rng();
  v5 = (*v4)(v4, a2, a1) == 0;

  return REQUIRE_func(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

uint64_t rfc3394_wrap(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v43 = a1;
  v44 = a3;
  v47 = *MEMORY[0x277D85DE8];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  MEMORY[0x28223BE20](v14);
  v45 = &v36 - v15;
  bzero(&v36 - v15, v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  bzero(&v36 - v17, v17);
  v19 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v38 = &v36;
  v39 = a8;
  v40 = a6;
  v37 = a7;
  if (!a4)
  {
    v20 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v20 || !a8 || *a8 < a6 + 8)
    {
      rfc3394_wrap_cold_1(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v39 >= v40 + 8)
  {
LABEL_15:
    v21 = v40 >> 3;
    if (v40 >> 3 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = 8;
    v24 = v22;
    do
    {
      v25 = *a5++;
      *(__s + v23) = v25;
      v23 += 16;
      --v24;
    }

    while (v24);
    v26 = 0;
    *&__s[0] = v44;
    v27 = 1;
    v41 = v21;
    v42 = v22;
    do
    {
      v43 = v27;
      v44 = v26;
      v28 = __s;
      v29 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &firebloom_null_iv, v28, v28, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          cccbc_clear_iv();
          firebloom_cbc_update_f(v14, v45, v18, 0x10uLL);
        }

        v30 = *v28;
        v28 += 2;
        *&__s[v29 % v21] = v30 ^ bswap64(v27++);
        ++v29;
        --v22;
      }

      while (v22);
      v26 = v44 + 1;
      v22 = v42;
      v27 = v43 + v41;
    }

    while (v44 != 5);
    v31 = v37;
    *v37 = *&__s[0];
    v32 = v31 + 1;
    v33 = __s + 1;
    do
    {
      v34 = *v33;
      v33 += 2;
      *v32++ = v34;
      --v22;
    }

    while (v22);
    v19 = 0;
    *v39 = (v40 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v19;
    }

LABEL_32:
    cc_clear();
    return v19;
  }

LABEL_6:
  rfc3394_wrap_cold_1(__s);
  return 0xFFFFFFFFLL;
}

uint64_t rfc3394_wrap_legacy(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = rfc3394_wrap(a1, a2, a3, a4, a5, a6, a7, &v11);
  REQUIRE_func(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t rfc3394_unwrap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v40 = a3;
  v46 = a1;
  v49 = *MEMORY[0x277D85DE8];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  MEMORY[0x28223BE20](v14);
  v47 = &v38 - v15;
  bzero(&v38 - v15, v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  bzero(&v38 - v17, v17);
  v19 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v45 = a6;
  v20 = a6 >> 3;
  if (v20 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v41 = &v38;
  v42 = a8;
  v39 = a7;
  if (!a4)
  {
    v21 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v21 || !a8 || *a8 < v45 - 8)
    {
      rfc3394_wrap_cold_1(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v42 >= v45 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v22 = v20 - 1;
    if (v20 != 1)
    {
      v23 = __s + 1;
      v24 = a5 + 1;
      v25 = v20 - 1;
      do
      {
        v26 = *v24++;
        *v23 = v26;
        v23 += 2;
        --v25;
      }

      while (v25);
    }

    v27 = 6 * v20 - 6;
    v44 = 1 - v20;
    v28 = 5;
    v43 = &__s[v20 - 2];
    do
    {
      LODWORD(v46) = v28;
      if (v45 >= 0x10)
      {
        v29 = v43;
        v30 = v20 - 1;
        v31 = v27;
        do
        {
          *v29 = *&__s[v30 % v22] ^ bswap64(v31);
          if (a4)
          {
            if ((a4(0, &firebloom_null_iv, v29, v29, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            cccbc_clear_iv();
            firebloom_cbc_update_f(v14, v47, v18, 0x10uLL);
          }

          --v31;
          v29 -= 2;
          v32 = __OFSUB__(v30--, 1);
        }

        while (!((v30 < 0) ^ v32 | (v30 == 0)));
      }

      v28 = v46 - 1;
      v27 += v44;
    }

    while (v46);
    if (*&__s[0] == v40)
    {
      v33 = v39;
      if (v20 != 1)
      {
        v34 = __s + 1;
        v35 = v20 - 1;
        do
        {
          v36 = *v34;
          v34 += 2;
          *v33++ = v36;
          --v35;
        }

        while (v35);
      }

      v19 = 0;
      *v42 = 8 * v22;
    }

    else
    {
      v19 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v19;
    }

LABEL_34:
    cc_clear();
    return v19;
  }

LABEL_6:
  rfc3394_wrap_cold_1(__s);
  return 0xFFFFFFFFLL;
}

uint64_t rfc3394_unwrap_legacy(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = rfc3394_unwrap(a1, a2, a3, a4, a5, a6, a7, &v11);
  REQUIRE_func(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL rfc3394_unwrapped_size_legacy(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL rfc3394_unwrapped_size(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_8(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153_0);
  return get_aks_client_connection_connection;
}

uint64_t aks_delete_xart_leak(unsigned int a1, const void *a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x6Cu, input, 1u, a2, 0x10uLL, 0, 0, 0, 0);
  }

  aks_delete_xart_leak_cold_1();
  return 3758097084;
}

char *_iterate_path(char *result, uint64_t a2, uint64_t a3)
{
  v5[2] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v5[0] = result;
    v5[1] = 0;
    result = fts_open(v5, 84, 0);
    if (result)
    {
      return _iterate_path_cold_1(result, a2, a3);
    }
  }

  return result;
}

char *aks_dump_path(char *result, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    bzero(v8, 0x400uLL);
    result = realpath_DARWIN_EXTSN(v3, v8);
    if (result)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 0x40000000;
      v6[2] = __aks_dump_path_block_invoke;
      v6[3] = &__block_descriptor_tmp;
      v7 = a2;
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 0x40000000;
      v4[2] = __aks_dump_path_block_invoke_2;
      v4[3] = &__block_descriptor_tmp_128;
      v5 = a2;
      return _iterate_path(v8, v6, v4);
    }
  }

  return result;
}

uint64_t __aks_dump_path_block_invoke(uint64_t a1, uint64_t a2)
{
  path_class = _get_path_class(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || path_class == v5)
  {
    printf(" dir: %s %i\n", *(a2 + 48), path_class);
  }

  return 1;
}

uint64_t aks_fs_supports_enhanced_apfs()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", *MEMORY[0x277CBECE8], 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((_aks_check_apfs_shared_datavolume_bootarg_init & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      _aks_check_apfs_shared_datavolume_bootarg_value = 1;
    }

    _aks_check_apfs_shared_datavolume_bootarg_init = 1;
  }

  v4 = _aks_check_apfs_shared_datavolume_bootarg_value;
  fprintf(*MEMORY[0x277D85E08], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", "aks", "", -1, "", "", "", "", "aks_fs_supports_enhanced_apfs", ":", 438, "", v3, _aks_check_apfs_shared_datavolume_bootarg_value, "");
  return v3 | v4;
}

void aks_fs_status_with_map(const char *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  memset(&v7, 0, sizeof(v7));
  if (a3)
  {
    v6 = a2 + 16;
    do
    {
      snprintf(__str, 0x400uLL, "%s%s", a1, *(v6 - 16));
      if (stat(__str, &v7))
      {
        printf("stat failed: %s\n");
      }

      else
      {
        _get_path_class(__str);
        printf("%s: mode=%o, u/g=%i:%i class=%i%s\n");
      }

      v6 += 48;
      --a3;
    }

    while (a3);
  }
}

uint64_t aks_show_allowlist()
{
  puts("shared allow list:");
  v0 = &byte_279A3E950;
  v1 = 36;
  do
  {
    if (*v0)
    {
      printf("%s%s\n", "<var>", *(v0 - 2));
    }

    v0 += 48;
    --v1;
  }

  while (v1);
  result = puts("user allow list:");
  v3 = &byte_279A3F010;
  v4 = 72;
  do
  {
    if (*v3)
    {
      result = printf("%s%s\n", "<user>", *(v3 - 2));
    }

    v3 += 48;
    --v4;
  }

  while (v4);
  return result;
}

void aks_gather_stats(const char *a1, char a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    bzero(&v13, 0x878uLL);
    bzero(v12, 0x400uLL);
    if (realpath_DARWIN_EXTSN(a1, v12))
    {
      v4 = malloc(0x818uLL);
      memset_s(v4, 0x818uLL, 0, 0x818uLL);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 0x40000000;
      v11[2] = __aks_gather_stats_block_invoke_2;
      v11[3] = &__block_descriptor_tmp_141;
      v11[4] = v4;
      _iterate_path(v12, &__block_literal_global_22, v11);
      if (!statfs(v12, &v13))
      {
        if (a2)
        {
          printf("Free Blocks:%lld blocks of size:%d\n");
        }

        else
        {
          printf("%lld,%d\n");
        }
      }

      v5 = v4 + 340;
      for (i = 1; i != 5; ++i)
      {
        if (a2)
        {
          v9 = &v4[296 * i];
          printf("%s:\n\tNum files:\t%u,\n\tNum hardlinks:\t%u,\n\tNum compressed:\t%u,\n\tTotal Size:\t%lld,\n\tMin File Size:\t%lld,\n\tMax File Size:\t%lld,\n", class_names[i], *v9, *(v9 + 2), *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
          printf("\tSize Distribution:");
          printf("%i", *(v9 + 10));
          for (j = 0; j != 252; j += 4)
          {
            putchar(44);
            printf("%i", *&v5[j]);
          }
        }

        else
        {
          v7 = &v4[296 * i];
          printf("%i,%u,%u,%u,%lld,%lld,%lld,", i, *v7, *(v7 + 2), *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
          printf("%i", *(v7 + 10));
          for (k = 0; k != 252; k += 4)
          {
            putchar(44);
            printf("%i", *&v5[k]);
          }
        }

        putchar(10);
        v5 += 296;
      }

      free(v4);
    }
  }
}

uint64_t aks_kext_set_options(unsigned int a1, uint64_t a2)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = 1;
  input[1] = a1;
  input[2] = a2;
  output = 0;
  outputCnt = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
  }

  aks_kext_set_options_cold_1();
  return 3758097084;
}

uint64_t aks_internal_state()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x10u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_internal_state_cold_1();
  return 3758097084;
}

uint64_t aks_run_internal_test(unsigned int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    return IOConnectCallMethod(aks_client_connection, 0x86u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_run_internal_test_cold_1();
    return 3758097084;
  }
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t get_akstest_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_156);
  return get_akstest_client_connection_connection;
}

void __get_akstest_client_connection_block_invoke()
{
  if (!get_akstest_client_connection_connection)
  {
    get_akstest_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStoreTest", "AppleKeyStoreTest");
  }
}

uint64_t akstest_new_ek(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, size_t *a8)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a3;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 2, a4, a5, a6, a7, a8, a2);
  v11 = IOConnectCallMethod(a1, 0x14u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, a7, a8);
  free(*&inputStructCnt[1]);
  return v11;
}

uint64_t akstest_check_class(mach_port_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a3;
  return IOConnectCallMethod(a1, 0x11u, input, 1u, inputStruct, 0x10uLL, 0, 0, 0, 0);
}

uint64_t akstest_last_user(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, a3);
  v9 = IOConnectCallMethod(a1, 0x12u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  return v9;
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

uint64_t OUTLINED_FUNCTION_1_4(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_3_1(void *a1)
{

  return memset_s(a1, 0x1000uLL, 0, 0x1000uLL);
}

uint64_t OUTLINED_FUNCTION_7_1(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t sizeof_backup_bag(void *a1)
{
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t OUTLINED_FUNCTION_0_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return memset_s(va, 0x20uLL, 0, 0x20uLL);
}

uint64_t aks_stash_verify(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  if (!a2)
  {
    return _aks_stash_load(a1, 1, &v4);
  }

  *a2 = 0;
  result = _aks_stash_load(a1, 1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t aks_stash_destroy()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x25u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_stash_destroy_cold_1();
  return 3758097084;
}

uint64_t aks_stash_commit(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    return IOConnectCallMethod(aks_client_connection, 0x24u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_commit_cold_1();
    return 3758097084;
  }
}

uint64_t aks_stash_enable(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    return IOConnectCallMethod(aks_client_connection, 0x33u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_enable_cold_1();
    return 3758097084;
  }
}

uint64_t aks_stash_persist(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    return IOConnectCallMethod(aks_client_connection, 0x35u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_persist_cold_1();
    return 3758097084;
  }
}

uint64_t aks_invalidate_sync_bags()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x42u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_invalidate_sync_bags_cold_1();
  return 3758097084;
}

uint64_t aks_unload_bag(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    return IOConnectCallMethod(aks_client_connection, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unload_bag_cold_1();
    return 3758097084;
  }
}

uint64_t aks_unload_session_bags(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    return IOConnectCallMethod(aks_client_connection, 0x37u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unload_session_bags_cold_1();
    return 3758097084;
  }
}

uint64_t aks_change_secret_with_kek(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, unsigned __int8 a10, unsigned int a11, int a12, _DWORD *a13, void **a14)
{
  input[12] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a11;
    input[2] = a10;
    input[3] = a2;
    input[4] = a3;
    input[5] = a4;
    input[6] = a5;
    input[7] = a6;
    input[8] = a7;
    input[9] = a8;
    input[10] = a9;
    input[11] = a12 & 0xFFFFFFF7 | (8 * (a14 != 0));
    output = 0;
    outputCnt = 1;
    if (a14)
    {
      outputStruct = *a14;
    }

    else
    {
      outputStruct = 0;
    }

    if (a14)
    {
      v24 = (a14 + 1);
    }

    else
    {
      v24 = 0;
    }

    result = IOConnectCallMethod(aks_client_connection, 0xFu, input, 0xCu, 0, 0, &output, &outputCnt, outputStruct, v24);
    if (a13)
    {
      if (!result)
      {
        *a13 = output;
      }
    }
  }

  else
  {
    aks_change_secret_with_kek_cold_1();
    return 3758097084;
  }

  return result;
}

uint64_t aks_lock_bag(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    return IOConnectCallMethod(aks_client_connection, 0xDu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_bag_cold_1();
    return 3758097084;
  }
}

uint64_t _aks_unlock_bag(int a1, uint64_t a2, int a3, unsigned int a4)
{
  input[4] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    return IOConnectCallMethod(aks_client_connection, 0xCu, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_unlock_bag_cold_1();
    return 3758097084;
  }
}

uint64_t _aks_set_system_with_passcode(int a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  input[5] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    input[4] = a5;
    return IOConnectCallMethod(aks_client_connection, 5u, input, 5u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_set_system_with_passcode_cold_1();
    return 3758097084;
  }
}

uint64_t aks_backup_unwrap_key(_OWORD *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(&v12[16], 0, 112);
  *v12 = 0u;
  v6 = a1[1];
  *&v12[4] = *a1;
  *&v12[20] = v6;
  v7 = a1[3];
  *&v12[36] = a1[2];
  v13 = 0;
  *&v12[52] = v7;
  v10 = *a5;
  __s = 1;
  v8 = unwrap_data(&__s, 0, 0, a2, a3, a4, &v10);
  *a5 = v10;
  memset_s(&__s, 0x88uLL, 0, 0x88uLL);
  return err_sks_to_aks(v8);
}

void _set_cf_key(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (CFNumberGetTypeID() == a3)
    {
      valuePtr = der_get_number();
      v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
      if (!v8)
      {
        return;
      }

      v9 = v8;
      CFDictionaryAddValue(a1, a2, v8);
      goto LABEL_5;
    }

    if (CFBooleanGetTypeID() == a3)
    {
      v10 = der_get_BOOL();
      v11 = MEMORY[0x277CBED28];
      if (!v10)
      {
        v11 = MEMORY[0x277CBED10];
      }

      v12 = *v11;

      CFDictionaryAddValue(a1, a2, v12);
    }

    else if (CFDataGetTypeID() == a3)
    {
      valuePtr = 0;
      v13 = ccder_decode_tl();
      if (v13)
      {
        v9 = CFDataCreate(*MEMORY[0x277CBECE8], v13, valuePtr);
        CFDictionaryAddValue(a1, a2, v9);
        if (v9)
        {
LABEL_5:
          CFRelease(v9);
        }
      }
    }
  }
}

uint64_t aks_assert_hold(int a1, unsigned int a2, uint64_t a3)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a3;
  input[2] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x1Au, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  aks_assert_hold_cold_1();
  return 3758097084;
}

uint64_t aks_assert_drop(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x1Bu, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  aks_assert_drop_cold_1();
  return 3758097084;
}

uint64_t aks_assert_promote(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a2;
    input[1] = a1;
    return IOConnectCallMethod(aks_client_connection, 0x64u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_promote_cold_1();
    return 3758097084;
  }
}

uint64_t aks_oneness_heartbeat(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x91u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_oneness_heartbeat_cold_1();
  return 3758097084;
}

uint64_t aks_assert_consume(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x65u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_assert_consume_cold_1();
  return 3758097084;
}

uint64_t _aks_recover_with_escrow_bag(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  input[4] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v21 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v17 = aks_client_connection;
    aks_pack_data(&v22, &v21, 3, v12, v13, v14, v15, v16, a2);
    input[0] = a1;
    input[1] = v22;
    input[2] = v21;
    input[3] = a8;
    v18 = IOConnectCallMethod(v17, 0x12u, input, 4u, 0, 0, 0, 0, 0, 0);
    v19 = v22;
  }

  else
  {
    _aks_recover_with_escrow_bag_cold_1();
    v19 = 0;
    v18 = 3758097084;
  }

  free(v19);
  return v18;
}

uint64_t aks_generation(int a1, unsigned int a2, _DWORD *a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    output = 0;
    outputCnt = 1;
    result = IOConnectCallMethod(aks_client_connection, 0x28u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
    if (a3)
    {
      if (!result)
      {
        *a3 = output;
      }
    }
  }

  else
  {
    aks_generation_cold_1();
    return 3758097084;
  }

  return result;
}

uint64_t aks_verify_password_with_opts(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a1)
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 1;
  }

  else
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 0;
  }

  return _aks_verify_password(v41, v42, v43, v44, v45, v46, v47, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t aks_register_for_notifications()
{
  if (get_aks_client_connection())
  {

    JUMPOUT(0x25F8C2E10);
  }

  aks_register_for_notifications_cold_1();
  return 3758097084;
}

uint64_t aks_clear_backup_bag(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    return IOConnectCallMethod(aks_client_connection, 0x16u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_clear_backup_bag_cold_1();
    return 3758097084;
  }
}

uint64_t aks_remote_reset_all_peers(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0xA2u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_remote_reset_all_peers_cold_1();
  return 3758097084;
}

uint64_t aks_remote_peer_drop(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x3Au, input, 1u, a2, a3, 0, 0, 0, 0);
  }

  aks_remote_peer_drop_cold_1();
  return 3758097084;
}

uint64_t aks_lock_device(int a1, int a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 8;
    }

    return IOConnectCallMethod(aks_client_connection, v4, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_device_cold_1();
    return 3758097084;
  }
}

uint64_t aks_lock_cx(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x8Du, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_lock_cx_cold_1();
  return 3758097084;
}

uint64_t aks_unlock_device(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  aks_unlock_device_cold_1();
  return 3758097084;
}

uint64_t aks_unlock_device_with_acm(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  aks_unlock_device_with_acm_cold_1();
  return 3758097084;
}

uint64_t aks_unlock_device_with_opts(int a1, int a2, uint64_t a3, int a4)
{
  if (a1)
  {
    return aks_unlock_device_with_acm(a2, a3, a4);
  }

  else
  {
    return aks_unlock_device(a2, a3, a4);
  }
}

uint64_t aks_obliterate_class_d()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x13u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_obliterate_class_d_cold_1();
  return 3758097084;
}

uint64_t aks_migrate_s_key(int a1, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, int a6)
{
  input[4] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    return IOConnectCallMethod(aks_client_connection, 0x3Fu, input, 4u, a5, a6, 0, 0, 0, 0);
  }

  else
  {
    aks_migrate_s_key_cold_1();
    return 3758097084;
  }
}

uint64_t aks_smartcard_unregister(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x3Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_smartcard_unregister_cold_1();
  return 3758097084;
}

uint64_t aks_se_fail(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x47u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_se_fail_cold_1();
  return 3758097084;
}

uint64_t aks_se_set_healthy(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x49u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_se_set_healthy_cold_1();
  return 3758097084;
}

uint64_t __aks_se_set_secret(int a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, a4, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  __aks_se_set_secret_cold_1();
  return 3758097084;
}

uint64_t aks_se_recover(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  aks_se_recover_cold_1();
  return 3758097084;
}

uint64_t aks_se_recover_with_acm(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  aks_se_recover_with_acm_cold_1();
  return 3758097084;
}

uint64_t aks_se_recover_with_opts(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return aks_se_recover_with_acm(a2, a3, a4);
  }

  else
  {
    return aks_se_recover(a2, a3, a4);
  }
}

uint64_t _aks_change_secret_epilogue(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x69u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  _aks_change_secret_epilogue_cold_1();
  return 3758097084;
}

uint64_t aks_se_set_nonce(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    return IOConnectCallMethod(aks_client_connection, 0x58u, input, 1u, a2, v6, 0, 0, 0, 0);
  }

  else
  {
    aks_se_set_nonce_cold_1();
    return 3758097084;
  }
}

uint64_t aks_se_delete_reset_token(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Bu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_se_delete_reset_token_cold_1();
  return 3758097084;
}

uint64_t aks_se_support_in_rm(unsigned int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Eu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_se_support_in_rm_cold_1();
  return 3758097084;
}

uint64_t aks_se_support_in_rm_is_set(BOOL *a1)
{
  output[1] = *MEMORY[0x277D85DE8];
  output[0] = 0;
  outputCnt = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Bu, 0, 0, 0, 0, output, &outputCnt, 0, 0);
    if (a1)
    {
      if (!result)
      {
        *a1 = output[0] != 0;
      }
    }
  }

  else
  {
    aks_se_support_in_rm_is_set_cold_1();
    return 3758097084;
  }

  return result;
}

uint64_t aks_se_stage_stash()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Fu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_se_stage_stash_cold_1();
  return 3758097084;
}

uint64_t aks_enable_cache_flow(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0xA0u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_enable_cache_flow_cold_1();
  return 3758097084;
}

uint64_t aks_fv_stash_kek_with_secret(int a1, uint64_t a2, uint64_t a3)
{
  v3 = 8;
  if (a1)
  {
    v3 = 12;
  }

  v7 = v3;
  aks_fv_set_protection();
  v5 = v4;
  syslog(6, "aks_fv_prot_cmd_stash_kek(%llu) = %d", v7, v4);
  return v5;
}

uint64_t aks_fv_commit_stashed_kek()
{
  aks_fv_set_protection();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_commit = %d", v0);
  return v1;
}

uint64_t aks_fv_destroy_stashed_kek()
{
  aks_fv_set_protection();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_destroy = %d", v0);
  return v1;
}

uint64_t aks_drop_auxiliary_auth_by_uid(unsigned int a1)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = 0;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  aks_drop_auxiliary_auth_by_uid_cold_1();
  return 3758097084;
}

uint64_t aks_drop_auxiliary_auth_by_handle(int a1)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = 1;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  aks_drop_auxiliary_auth_by_handle_cold_1();
  return 3758097084;
}

uint64_t aks_lower_iteration_count()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_lower_iteration_count_cold_1();
  return 3758097084;
}

uint64_t aks_reset_iteration_count()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_reset_iteration_count_cold_1();
  return 3758097084;
}

uint64_t aks_se_secret_drop(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x6Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_se_secret_drop_cold_1();
  return 3758097084;
}

uint64_t aks_se_memento_secret_drop(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x9Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_se_memento_secret_drop_cold_1();
  return 3758097084;
}

uint64_t aks_prewarm_sps()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x73u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_prewarm_sps_cold_1();
  return 3758097084;
}

uint64_t aks_measure_and_seal_cryptex_manifest(const void *a1, size_t a2)
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x90u, 0, 0, a1, a2, 0, 0, 0, 0);
  }

  aks_measure_and_seal_cryptex_manifest_cold_1();
  return 3758097084;
}

uint64_t aks_seal_cryptex_manifest_lock()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x95u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_seal_cryptex_manifest_lock_cold_1();
  return 3758097084;
}

uint64_t aks_lkgp_recover(int a1, uint64_t a2, uint64_t a3)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x85u, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  aks_lkgp_recover_cold_1();
  return 3758097084;
}

uint64_t aks_memento_efface_blob(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x8Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_memento_efface_blob_cold_1();
  return 3758097084;
}

uint64_t aks_set_jcop_supports_updated_kud_policy()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x89u, &input, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_set_jcop_supports_updated_kud_policy_cold_1();
  return 3758097084;
}

uint64_t aks_set_cx_window(uint64_t a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x97u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  aks_set_cx_window_cold_1();
  return 3758097084;
}

uint64_t OUTLINED_FUNCTION_3_2(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

void OUTLINED_FUNCTION_8_1()
{
  *(v1 - 56) = 0;
  *(v1 - 48) = v0;
  *(v1 - 60) = 1;
}

uint64_t OUTLINED_FUNCTION_16_0(mach_port_t a1, uint32_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, 0, 0, a5, a6, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_18_0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_19(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_23(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

void OUTLINED_FUNCTION_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  bzero(va, 0x8000uLL);
}

uint64_t OUTLINED_FUNCTION_35(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_37(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void OUTLINED_FUNCTION_39(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 - 104);
  *(v16 - 96) = a1;
  *(v16 - 88) = v17;
  *(v16 - 80) = a16;
}

uint64_t OUTLINED_FUNCTION_52(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset_s(&a9, 0x58uLL, 0, 0x58uLL);
}

void *OUTLINED_FUNCTION_71(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t __n, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  return memcpy(a1, va, __n);
}

void OUTLINED_FUNCTION_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  bzero(va, 0x1000uLL);
}

const char *set_akslog_context(const char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    return vsnprintf(&_akslog_context, 0x20uLL, __format, va);
  }

  _akslog_context = 0;
  return __format;
}

uint64_t compress_uuid(uint64_t a1)
{
  ccsha256_di();
  ccdigest();
  return 0;
}

unint64_t time_seconds_to_abs_interval(unsigned int a1)
{
  info = 0;
  mach_timebase_info(&info);
  return 1000000000 * info.denom * a1 / info.numer;
}

unint64_t time_absolute_to_nanoseconds(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

uint64_t get_usec_time()
{
  info = 0;
  mach_timebase_info(&info);
  return mach_continuous_time() * info.numer / info.denom / 0x3E8;
}

__darwin_time_t get_clock_time()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec;
}

void *circular_queue_init(unsigned int a1, unsigned int a2)
{
  v2 = a1 + 1;
  if (v2 == v2 << 31 >> 31)
  {
    v4 = calloc(0x20uLL, 1uLL);
    v5 = v4;
    if (v4)
    {
      v4[1] = 0;
      *v4 = a2;
      *(v4 + 1) = v2;
      v6 = calloc(v2 * a2, 1uLL);
      v5[2] = v2 * a2;
      v5[3] = v6;
    }
  }

  else
  {
    circular_queue_init_cold_1();
    return 0;
  }

  return v5;
}

uint64_t circular_queue_size(_DWORD *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = v2 - v3;
  if (v2 < v3)
  {
    return (result + a1[1]);
  }

  return result;
}

uint64_t circular_queue_enqueue(unsigned int *a1, const void *a2)
{
  v3 = a1[3];
  v4 = (v3 + 1) % a1[1];
  memcpy((*(a1 + 3) + *a1 * v3), a2, *a1);
  a1[3] = v4;
  if (v4 == a1[2])
  {
    a1[2] = (v4 + 1) % a1[1];
  }

  return 0;
}

uint64_t circular_queue_dequeue(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (__dst)
  {
    memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
    v2 = a1[2];
  }

  memset_s((*(a1 + 3) + *a1 * v2), *a1, 0, *a1);
  result = 0;
  a1[2] = (a1[2] + 1) % a1[1];
  return result;
}

uint64_t circular_queue_peek(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
  return 0;
}

uint64_t circular_queue_dequeue_all(int *a1, void *a2, unsigned int *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 += a1[1];
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *a1 * v8;
  v10 = calloc(v9, 1uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = a1[2];
  v13 = a1[3];
  if (v13 <= v12)
  {
    if (v12 <= v13)
    {
      goto LABEL_13;
    }

    v17 = a1[1] - v12;
    memcpy(v10, (*(a1 + 3) + *a1 * v12), *a1 * v17);
    if (v8 <= v17)
    {
      goto LABEL_13;
    }

    v15 = *(a1 + 3);
    v14 = *a1 * (v8 - v17);
    v10 = &v11[*a1 * v17];
  }

  else
  {
    v14 = *a1 * v8;
    v15 = (*(a1 + 3) + *a1 * v12);
  }

  memcpy(v10, v15, v14);
LABEL_13:
  v18 = a1[1];
  v19 = *a1;
  a1[2] = (a1[2] + v8) % v18;
  memset_s(*(a1 + 3), v19 * v18, 0, v19 * v18);
  result = 0;
  *a2 = v11;
  *a3 = v9;
  return result;
}

uint64_t circular_queue_clear(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = (*a1 * *(a1 + 4));
  return memset_s(*(a1 + 24), v1, 0, v1);
}

void circular_queue_free(void *a1)
{
  *(a1 + 1) = 0;
  v2 = (*a1 * *(a1 + 1));
  memset_s(*(a1 + 3), v2, 0, v2);
  memset_s(*(a1 + 3), *(a1 + 2), 0, *(a1 + 2));
  free(*(a1 + 3));
  memset_s(a1, 0x20uLL, 0, 0x20uLL);

  free(a1);
}

BOOL persona_uuid_is_valid(uint8x16_t *a1)
{
  v1 = vmovl_high_u8(*a1);
  v2 = vmovl_u8(*a1->i8);
  v3 = vmovl_u16(vorr_s8(vorr_s8(*v2.i8, *v1.i8), vorr_s8(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v1, v1, 8uLL))));
  return vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) != 0;
}

BOOL is_non_zero(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

_DWORD *pfk_params_is_valid(_DWORD *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t class_id_get(char a1)
{
  if ((a1 & 0x1Fu) > 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 & 0x1F;
  }
}

uint64_t dump_bytes_internal(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v25 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__str = 0u;
  v17 = 0u;
  v5 = MEMORY[0x277D85E08];
  if (a3 >= 0x41)
  {
    fprintf(*MEMORY[0x277D85E08], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 844, "", "", a1, a3, "", "");
    v4 = "";
  }

  else if (!a3)
  {
    return memset_s(__str, 0x81uLL, 0, 0x81uLL);
  }

  v6 = 0;
  v15 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 854, "", "", v4, "", v6, v8 + v6, "", __str, "", "");
    v6 += v8;
    v3 = v15;
  }

  while (v6 < v15);
  return memset_s(__str, 0x81uLL, 0, 0x81uLL);
}

_BYTE *bytes_to_str_hint(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = bytes_to_str_hint_buf;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  bytes_to_str_hint_buf[2 * v2] = 0;
  return bytes_to_str_hint_buf;
}

char *byte_swap_val(char *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t err_sks_to_aks(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_25E94A3E0[(result + 38)];
  }

  return result;
}

uint64_t REQUIRE_func(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(*MEMORY[0x277D85E08], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", "", -1, "", "", "", "", "REQUIRE_func", ":", 1134, "", a3, a2, "");
    abort();
  }

  return result;
}

uint64_t generate_wrapping_key_curve25519(__int128 *a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  platform_read_random(v15, 0x20u);
  v4 = cccurve25519_make_pub() == 0;
  REQUIRE_func(v4, 58, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
  v9 = 0u;
  v10 = 0u;
  __s = 0x1000000;
  v5 = a2[1];
  v11 = *a2;
  v12 = v5;
  v6 = a1[1];
  v13 = *a1;
  v14 = v6;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  memset_s(v15, 0x20uLL, 0, 0x20uLL);
  return 0;
}

uint64_t generate_unwrap_shared_key_curve25519(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v8 = 0u;
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  v5 = a3[1];
  v12 = *a3;
  __s = 0x1000000;
  v13 = v5;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  return 0;
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x282201770](a1, 32, a3, 0, 0, v4, v3, 32);
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return generate_unwrap_shared_key_curve25519(v4, v5 + 8, (v5 + 40), va);
}

uint64_t dict_find_params_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v14 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = der_equal(*(*(a5 + 24) + v10), *(*(a5 + 24) + v10) + *(*(*(a5 + 24) + v10) + 1) + 2, a1, a1 + a2);
      if (v12)
      {
        break;
      }

      ++v11;
      v10 += 40;
      if (v11 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v15 = (*(a5 + 24) + v10);
    if (v15[1])
    {
      v13 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v15[1] = a3;
      v15[2] = a3 + a4;
      v15[3] = a3;
      v15[4] = a3 + a4;
      v13 = 1;
    }

LABEL_10:
    v14 = v13 | !v12;
  }

  return v14 & 1;
}

BOOL _dict_find_value_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = der_equal(*a5, *a5 + *(*a5 + 1) + 2, a1, a1 + a2);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

uint64_t encode_list_free(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t encode_list_remove_key(void **a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = _encode_list_find_key(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *_encode_list_find_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      v7 = v6 + v2[2];
      if (ccder_blob_decode_sequence_tl() && der_equal(a2, &v4[a2[1]], v6, v7))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t encode_list_get_data(void *a1, unsigned __int8 *a2, int a3, void *a4, void *a5)
{
  key = _encode_list_find_key(a1, a2);
  if (!key)
  {
    return 0;
  }

  v9 = 1;
  if (a4)
  {
    if (a5)
    {
      v10 = key[1] + key[2];
      v15[0] = key[1];
      v15[1] = v10;
      v9 = ccder_blob_decode_sequence_tl();
      if (v9)
      {
        if (der_utils_decode_implicit_raw_octet_string_copy(v15, 12, 0, 0))
        {
          v11 = v15[0];
          if (ccder_blob_decode_tag())
          {
            if (ccder_blob_decode_len())
            {
              v13 = 0;
              v12 = v15[0];
              if (a3)
              {
                v13 = (LODWORD(v15[0]) - v11);
                v12 = v11;
              }

              *a4 = v12;
              *a5 = v13;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t encode_list_get_number(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_number();
  }

  return v5;
}

uint64_t encode_list_get_BOOL(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_BOOL();
  }

  return v5;
}

uint64_t _merge_dict_cb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v10 = *MEMORY[0x277D85DE8];
  if (ccder_blob_decode_tl())
  {
    v8 = 0;
    v9 = 0;
    v7[0] = 12;
    v7[1] = 0;
    __memcpy_chk();
    if (!encode_list_remove_key(a5, v7) && !encode_list_add_der())
    {
      return 1;
    }
  }

  else
  {
    _merge_dict_cb_cold_1();
  }

  _merge_dict_cb_cold_2();
  return 0;
}

uint64_t der_utils_decode_fv_data(__int128 *a1, int a2, void **a3)
{
  v6 = *a3;
  v5 = a3[1];
  v9 = *a1;
  if (a2)
  {
    v12 = *a1;
    v10 = 0;
    v11 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      return result;
    }

    v6 = v10;
    v8 = (v11 - v10);
    v9 = v12;
    goto LABEL_4;
  }

  LODWORD(v12) = v5;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v9, 4, v6, &v12);
  if (result)
  {
    v8 = v12;
LABEL_4:
    *a3 = v6;
    a3[1] = v8;
    *a1 = v9;
    return 1;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_partial(__int128 *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v7 = *a1;
  v5 = ccder_blob_decode_range();
  if (v5)
  {
    *a1 = v7;
  }

  return v5;
}

uint64_t se_derivation_request_serialization_len(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  ccder_sizeof();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t OUTLINED_FUNCTION_3_4(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return ccder_blob_encode_body();
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t OUTLINED_FUNCTION_13_1(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return ccder_blob_encode_tl();
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v4 = 0;
  v6 = 0;

  return encode_list_dict(va2, va, va1);
}

uint64_t OUTLINED_FUNCTION_20_0(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return ccder_sizeof();
}

void *OUTLINED_FUNCTION_26()
{

  return calloc(0x18uLL, 1uLL);
}

void *OUTLINED_FUNCTION_27(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t OUTLINED_FUNCTION_33_0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a12, uint64_t a10, uint64_t a11)
{

  return ccder_blob_decode_range();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return der_dict_iterate();
}

uint64_t platform_get_measurement(uint64_t a1, int a2, void *a3, size_t *a4)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 36, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  if (!lib_platform_callbacks)
  {
    return 4294967284;
  }

  if (a1 >= 7)
  {
    abort();
  }

  v8 = &pm_id_table + 72 * a1;
  if ((v8[4] & 1) == 0)
  {
    result = (lib_platform_callbacks)(a1, v8 + 5, v8 + 64);
    if (result)
    {
      return result;
    }

    v8[4] = 1;
  }

  if (*a4 < *(v8 + 8))
  {
    return 4294967285;
  }

  memcpy(a3, v8 + 5, *a4);
  v10 = *(v8 + 8);
  *a4 = v10;
  if (a2)
  {
    byte_swap_val(a3, v10);
  }

  return 0;
}

uint64_t platform_rng()
{
  REQUIRE_func(&lib_platform_callbacks != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(off_28708D9B0[0] != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = off_28708D9B0[0];

  return v0();
}

uint64_t platform_read_random(uint64_t a1, unsigned int a2)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(off_28708D9B8 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = off_28708D9B8;

  return v4(a1, a2);
}

uint64_t platform_pka_get_pub_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 78, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9C0 != 0, 79, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v16 = unk_28708D9C0;

  return v16(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t platform_pka_ecdh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 86, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9C8 != 0, 87, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_28708D9C8;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t platform_pka_sign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 94, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9D0 != 0, 95, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_28708D9D0;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t platform_pka_sika_attest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 106, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9D8 != 0, 107, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v17 = unk_28708D9D8;

  return v17(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t platform_pka_shared_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 115, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9E0 != 0, 116, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_28708D9E0;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t platform_ref_key_hw_crypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 123, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9E8 != 0, 124, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v10 = unk_28708D9E8;

  return v10(a1, a2, a3, a4, a5);
}

uint64_t platform_ref_key_hw_crypt_clear_cache()
{
  REQUIRE_func(&lib_platform_callbacks != 0, 131, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9F0 != 0, 132, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = unk_28708D9F0;

  return v0();
}

uint64_t platform_get_device_id(uint64_t a1, uint64_t a2)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 139, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708D9F8 != 0, 140, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = unk_28708D9F8;

  return v4(a1, a2);
}

uint64_t platform_get_aon_security(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 147, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA00 != 0, 148, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA00;

  return v2(a1);
}

uint64_t platform_get_att_sep_chip_rev(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 155, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA08 != 0, 156, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA08;

  return v2(a1);
}

uint64_t platform_get_chip_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 163, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA10 != 0, 164, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA10;

  return v2(a1);
}

uint64_t platform_get_ecid(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA18 != 0, 172, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA18;

  return v2(a1);
}

uint64_t platform_get_board_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 179, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA20 != 0, 180, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA20;

  return v2(a1);
}

uint64_t platform_get_fuse_bits(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 187, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA28 != 0, 188, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA28;

  return v2(a1);
}

uint64_t platform_get_att_board_and_chip_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 195, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_28708DA30 != 0, 196, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_28708DA30;

  return v2(a1);
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

BOOL rfc3394_wrapped_size_legacy(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}

BOOL rfc3394_wrapped_size(unint64_t a1, unint64_t *a2)
{
  v2 = (((a1 >= 0xFFFFFFFFFFFFFFF1) << 63) >> 63) ^ (a1 >= 0xFFFFFFFFFFFFFFF1);
  if (!v2)
  {
    *a2 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  return v2 == 0;
}

void aks_fv_new_vek()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v0 - 96) = *MEMORY[0x277D85DE8];
  bzero(v68, 0x1000uLL);
  v66[0] = v68;
  v66[1] = &v69;
  v66[2] = 4096;
  if (v7 && v5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v16 = aks_client_connection;
      OUTLINED_FUNCTION_8_0(aks_client_connection, v9, v10, v11, v12, v13, v14, v15, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v65, v66[0]);
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(v66))
        {
          if (der_utils_encode_fv_data(v66))
          {
            if (der_utils_encode_fv_params(v66))
            {
              OUTLINED_FUNCTION_2_3();
              if (ccder_blob_encode_tl())
              {
                OUTLINED_FUNCTION_11();
                if (!OUTLINED_FUNCTION_1_4(v16, 0x4Au, v67, 2u, v17, v18, v19, v20, v68, v21))
                {
                  OUTLINED_FUNCTION_2_3();
                  if (ccder_blob_decode_range())
                  {
                    OUTLINED_FUNCTION_15();
                    v25 = der_utils_decode_fv_data(v22, v23, v24);
                    if (v25)
                    {
                      if (v3)
                      {
                        v33 = OUTLINED_FUNCTION_9_0(v25, v26, v27, v28, v29, v30, v31, v32, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v68);
                        der_utils_decode_fv_key(v33, v34, v35);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_9();
      fprintf(v36, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v37, v42, v44, v46, v48, v50, v52, ":", 180, "", "");
    }
  }

  OUTLINED_FUNCTION_3_1(v68);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_4_3();
}