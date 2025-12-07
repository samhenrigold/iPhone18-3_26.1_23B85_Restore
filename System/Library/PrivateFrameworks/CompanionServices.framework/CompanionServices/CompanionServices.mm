void sub_243D1E8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getASAuthorizationAppleIDRequestClass_block_invoke(uint64_t a1)
{
  AuthenticationServicesLibrary();
  result = objc_getClass("ASAuthorizationAppleIDRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getASAuthorizationAppleIDRequestClass_block_invoke_cold_1();
  }

  getASAuthorizationAppleIDRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AuthenticationServicesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AuthenticationServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AuthenticationServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278DF1490;
    v5 = 0;
    AuthenticationServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AuthenticationServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AuthenticationServicesLibraryCore_frameworkLibrary)
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

uint64_t __AuthenticationServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AuthenticationServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_243D1F760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getASAuthorizationScopeEmailSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthenticationServicesLibrary();
  result = dlsym(v2, "ASAuthorizationScopeEmail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASAuthorizationScopeEmailSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getASAuthorizationScopeFullNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthenticationServicesLibrary();
  result = dlsym(v2, "ASAuthorizationScopeFullName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASAuthorizationScopeFullNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getASAuthorizationPasswordRequestClass_block_invoke(uint64_t a1)
{
  AuthenticationServicesLibrary();
  result = objc_getClass("ASAuthorizationPasswordRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getASAuthorizationPasswordRequestClass_block_invoke_cold_1();
  }

  getASAuthorizationPasswordRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return objc_opt_class();
}

id ClientSessionLog(uint64_t a1)
{
  if (ClientSessionLog_token != -1)
  {
    ClientSessionLog_cold_1();
  }

  v2 = ClientSessionLog_log;

  return v2;
}

uint64_t __ClientSessionLog_block_invoke()
{
  ClientSessionLog_log = os_log_create("CompanionServices", "ClientSession");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

BOOL OUTLINED_FUNCTION_3(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

__CFString *CPSAuthenticationTypeDescription(uint64_t a1)
{
  if ((a1 - 1) >= 0x13)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", a1];
  }

  else
  {
    v2 = off_278DF1558[a1 - 1];
  }

  return v2;
}

id CPSErrorGetCustomAuthenticationMethod(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 bs_safeStringForKey:@"CPSCustomAuthenticationMethodErrorKey"];

  return v2;
}

uint64_t CPSErrorGetCancellationReason(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 bs_safeNumberForKey:@"CPSCancellationReasonErrorKey"];
  v3 = [v2 integerValue];

  return v3;
}

id CPSErrorUnderlyingMake(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    if (!v7)
    {
      goto LABEL_8;
    }

    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6)
  {
LABEL_6:
    v8 = [MEMORY[0x277CBEB38] dictionary];
LABEL_7:
    [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA068]];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CompanionServices.CPSErrorDomain" code:a1 userInfo:v8];

  return v9;
}

id CPSErrorMultipleUnderlyingMake(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA578]];
    if (!v6)
    {
      goto LABEL_8;
    }

    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6)
  {
LABEL_6:
    v7 = [MEMORY[0x277CBEB38] dictionary];
LABEL_7:
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA068]];
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CompanionServices.CPSErrorDomain" code:a1 userInfo:v7];

  return v8;
}

id cps_daemon_log(uint64_t a1)
{
  if (DaemonLog_token != -1)
  {
    cps_daemon_log_cold_1();
  }

  v2 = DaemonLog_log;

  return v2;
}

id cps_service_log(uint64_t a1)
{
  if (ServiceLog_token != -1)
  {
    cps_service_log_cold_1();
  }

  v2 = ServiceLog_log;

  return v2;
}

id cps_session_log(uint64_t a1)
{
  if (SessionLog_token != -1)
  {
    cps_session_log_cold_1();
  }

  v2 = SessionLog_log;

  return v2;
}

id cps_service_connection_log(uint64_t a1)
{
  if (ServiceConnectionLog_token != -1)
  {
    cps_service_connection_log_cold_1();
  }

  v2 = ServiceConnectionLog_log;

  return v2;
}

id cps_service_listener_log(uint64_t a1)
{
  if (ServiceListenerLog_token != -1)
  {
    cps_service_listener_log_cold_1();
  }

  v2 = ServiceListenerLog_log;

  return v2;
}

id cps_signpost_log(uint64_t a1)
{
  if (SignpostLog_token != -1)
  {
    cps_signpost_log_cold_1();
  }

  v2 = SignpostLog_log;

  return v2;
}

uint64_t __DaemonLog_block_invoke()
{
  DaemonLog_log = os_log_create("CompanionServices", "Daemon");

  return MEMORY[0x2821F96F8]();
}

uint64_t __ServiceLog_block_invoke()
{
  ServiceLog_log = os_log_create("CompanionServices", "Service");

  return MEMORY[0x2821F96F8]();
}

uint64_t __SessionLog_block_invoke()
{
  SessionLog_log = os_log_create("CompanionServices", "Session");

  return MEMORY[0x2821F96F8]();
}

uint64_t __ServiceConnectionLog_block_invoke()
{
  ServiceConnectionLog_log = os_log_create("CompanionServices", "ServiceConnection");

  return MEMORY[0x2821F96F8]();
}

uint64_t __ServiceListenerLog_block_invoke()
{
  ServiceListenerLog_log = os_log_create("CompanionServices", "ServiceListener");

  return MEMORY[0x2821F96F8]();
}

uint64_t __SignpostLog_block_invoke()
{
  SignpostLog_log = os_log_create("CompanionServices", "Signpost");

  return MEMORY[0x2821F96F8]();
}

uint64_t CPSMetricsSessionResultWithCustomMethod(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"other"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"restore_purchase"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"video_subscriber_account"])
  {
    v2 = 9;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __copy_helper_block_e8_32n11_8_8_s0_t8w8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t __MetricsLog_block_invoke()
{
  MetricsLog_log = os_log_create("CompanionServices", "Metrics");

  return MEMORY[0x2821F96F8]();
}

uint64_t AppleMediaServicesLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = AppleMediaServicesLibraryCore_frameworkLibrary;
  v6 = AppleMediaServicesLibraryCore_frameworkLibrary;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278DF1710;
    v8 = *off_278DF1720;
    v9 = 0;
    v4[3] = _sl_dlopen();
    AppleMediaServicesLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_243D2386C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AppleMediaServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppleMediaServicesLibrary()
{
  v3 = 0;
  v0 = AppleMediaServicesLibraryCore(&v3);
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

id getAMSDelegatePurchaseRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMSDelegatePurchaseRequestClass_softClass;
  v7 = getAMSDelegatePurchaseRequestClass_softClass;
  if (!getAMSDelegatePurchaseRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAMSDelegatePurchaseRequestClass_block_invoke;
    v3[3] = &unk_278DF1470;
    v3[4] = &v4;
    __getAMSDelegatePurchaseRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_243D23A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAMSDelegatePurchaseRequestClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSDelegatePurchaseRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSDelegatePurchaseRequestClass_block_invoke_cold_1();
  }

  getAMSDelegatePurchaseRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getAMSDelegatePurchaseResultClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMSDelegatePurchaseResultClass_softClass;
  v7 = getAMSDelegatePurchaseResultClass_softClass;
  if (!getAMSDelegatePurchaseResultClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAMSDelegatePurchaseResultClass_block_invoke;
    v3[3] = &unk_278DF1470;
    v3[4] = &v4;
    __getAMSDelegatePurchaseResultClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_243D23B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAMSDelegatePurchaseResultClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSDelegatePurchaseResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSDelegatePurchaseResultClass_block_invoke_cold_1();
  }

  getAMSDelegatePurchaseResultClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getAMSDelegateAuthenticateRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMSDelegateAuthenticateRequestClass_softClass;
  v7 = getAMSDelegateAuthenticateRequestClass_softClass;
  if (!getAMSDelegateAuthenticateRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAMSDelegateAuthenticateRequestClass_block_invoke;
    v3[3] = &unk_278DF1470;
    v3[4] = &v4;
    __getAMSDelegateAuthenticateRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_243D23CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAMSDelegateAuthenticateRequestClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSDelegateAuthenticateRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSDelegateAuthenticateRequestClass_block_invoke_cold_1();
  }

  getAMSDelegateAuthenticateRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getAMSDelegateAuthenticateResultClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMSDelegateAuthenticateResultClass_softClass;
  v7 = getAMSDelegateAuthenticateResultClass_softClass;
  if (!getAMSDelegateAuthenticateResultClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAMSDelegateAuthenticateResultClass_block_invoke;
    v3[3] = &unk_278DF1470;
    v3[4] = &v4;
    __getAMSDelegateAuthenticateResultClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_243D23DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAMSDelegateAuthenticateResultClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("AMSDelegateAuthenticateResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSDelegateAuthenticateResultClass_block_invoke_cold_1();
  }

  getAMSDelegateAuthenticateResultClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getACAccountStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getACAccountStoreClass_softClass;
  v7 = getACAccountStoreClass_softClass;
  if (!getACAccountStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getACAccountStoreClass_block_invoke;
    v3[3] = &unk_278DF1470;
    v3[4] = &v4;
    __getACAccountStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_243D23F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getACAccountStoreClass_block_invoke(uint64_t a1)
{
  AppleMediaServicesLibrary();
  result = objc_getClass("ACAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACAccountStoreClass_block_invoke_cold_1();
  }

  getACAccountStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getAMSAccountMediaTypeProductionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAMSAccountMediaTypeProductionSymbolLoc_ptr;
  v6 = getAMSAccountMediaTypeProductionSymbolLoc_ptr;
  if (!getAMSAccountMediaTypeProductionSymbolLoc_ptr)
  {
    v1 = AppleMediaServicesLibrary();
    v4[3] = dlsym(v1, "AMSAccountMediaTypeProduction");
    getAMSAccountMediaTypeProductionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_243D24064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAMSAccountMediaTypeProductionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleMediaServicesLibrary();
  result = dlsym(v2, "AMSAccountMediaTypeProduction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAMSAccountMediaTypeProductionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getAMSAccountMediaTypeProduction()
{
  AMSAccountMediaTypeProductionSymbolLoc = getAMSAccountMediaTypeProductionSymbolLoc();
  if (!AMSAccountMediaTypeProductionSymbolLoc)
  {
    ___CPSAKAuthorizationRequestFromASAuthorizationAppleIDRequest_block_invoke_cold_1();
  }

  v1 = *AMSAccountMediaTypeProductionSymbolLoc;

  return v1;
}

uint64_t AuthenticationServicesLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = AuthenticationServicesLibraryCore_frameworkLibrary_0;
  v6 = AuthenticationServicesLibraryCore_frameworkLibrary_0;
  if (!AuthenticationServicesLibraryCore_frameworkLibrary_0)
  {
    v7 = xmmword_278DF1760;
    v8 = *off_278DF1770;
    v9 = 0;
    v4[3] = _sl_dlopen();
    AuthenticationServicesLibraryCore_frameworkLibrary_0 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_243D24214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AuthenticationServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AuthenticationServicesLibraryCore_frameworkLibrary_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AuthenticationServicesLibrary_0()
{
  v3 = 0;
  v0 = AuthenticationServicesLibraryCore(&v3);
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

id getASPasswordCredentialClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getASPasswordCredentialClass_softClass;
  v7 = getASPasswordCredentialClass_softClass;
  if (!getASPasswordCredentialClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getASPasswordCredentialClass_block_invoke;
    v3[3] = &unk_278DF1470;
    v3[4] = &v4;
    __getASPasswordCredentialClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_243D243E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getASPasswordCredentialClass_block_invoke(uint64_t a1)
{
  AuthenticationServicesLibrary_0();
  result = objc_getClass("ASPasswordCredential");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getASPasswordCredentialClass_block_invoke_cold_1();
  }

  getASPasswordCredentialClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PassKitCoreLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = PassKitCoreLibraryCore_frameworkLibrary;
  v6 = PassKitCoreLibraryCore_frameworkLibrary;
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278DF1788;
    v8 = *off_278DF1798;
    v9 = 0;
    v4[3] = _sl_dlopen();
    PassKitCoreLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_243D2456C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PassKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PassKitCoreLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PassKitCoreLibrary()
{
  v3 = 0;
  v0 = PassKitCoreLibraryCore(&v3);
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

id getPKPaymentRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKPaymentRequestClass_softClass;
  v7 = getPKPaymentRequestClass_softClass;
  if (!getPKPaymentRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPKPaymentRequestClass_block_invoke;
    v3[3] = &unk_278DF1470;
    v3[4] = &v4;
    __getPKPaymentRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_243D24740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKPaymentRequestClass_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary();
  result = objc_getClass("PKPaymentRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPKPaymentRequestClass_block_invoke_cold_1();
  }

  getPKPaymentRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = UIKitLibraryCore_frameworkLibrary;
  v6 = UIKitLibraryCore_frameworkLibrary;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278DF17B0;
    v8 = *off_278DF17C0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    UIKitLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_243D248C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  UIKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitLibrary()
{
  v3 = 0;
  v0 = UIKitLibraryCore(&v3);
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

id getUIImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIImageClass_softClass;
  v7 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIImageClass_block_invoke;
    v3[3] = &unk_278DF1470;
    v3[4] = &v4;
    __getUIImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_243D24A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIImageClass_block_invoke_cold_1();
  }

  getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_243D28CDC()
{
  v1 = *v0;
  sub_243D552E8();
  MEMORY[0x245D50230](v1);
  return sub_243D55308();
}

uint64_t sub_243D28D50(uint64_t a1)
{
  v2 = *v1;
  sub_243D552E8();
  MEMORY[0x245D50230](v2);
  return sub_243D55308();
}

uint64_t sub_243D28D94()
{
  if (*v0)
  {
    return 0x797469746E65;
  }

  else
  {
    return 0x746E49736E65706FLL;
  }
}

uint64_t sub_243D28DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E49736E65706FLL && a2 == 0xEB00000000746E65;
  if (v6 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_243D28EC8(uint64_t a1)
{
  v2 = sub_243D297F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D28F04(uint64_t a1)
{
  v2 = sub_243D297F8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_243D28F54()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_243D28FB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_243D2AAB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_243D28FE4(uint64_t a1)
{
  v2 = sub_243D298B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D29020(uint64_t a1)
{
  v2 = sub_243D298B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D29064()
{
  sub_243D552E8();
  MEMORY[0x245D50230](0);
  return sub_243D55308();
}

uint64_t sub_243D290D0(uint64_t a1)
{
  sub_243D552E8();
  MEMORY[0x245D50230](0);
  return sub_243D55308();
}

uint64_t sub_243D2911C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D291A8(uint64_t a1)
{
  v2 = sub_243D29904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D291E4(uint64_t a1)
{
  v2 = sub_243D29904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContinueOnRequestType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEC90, &qword_243D57530);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEC98, &qword_243D57538);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = sub_243D54D58();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContinueOnRequestType(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECA0, &qword_243D57540);
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D297F8();
  sub_243D55338();
  sub_243D2984C(v30, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *(v12 + 2);
    v16 = *(v12 + 4);
    v38 = 1;
    sub_243D298B0();
    sub_243D55218();
    v37 = 0;
    v17 = v29;
    v18 = v31;
    sub_243D55248();
    if (v18)
    {

      (*(v28 + 8))(v33, v17);
    }

    else
    {
      v31 = v16;

      v36 = 1;
      sub_243D55248();

      v35 = 2;
      v23 = v33;
      sub_243D55248();

      (*(v28 + 8))(v23, v17);
    }
  }

  else
  {
    v20 = v24;
    v19 = v25;
    (*(v24 + 32))(v9, v12, v25);
    v34 = 0;
    sub_243D29904();
    sub_243D55218();
    sub_243D2A144(&qword_27EDAECC0, MEMORY[0x277CEB018]);
    v21 = v27;
    sub_243D55268();
    (*(v26 + 8))(v6, v21);
    (*(v20 + 8))(v9, v19);
  }

  return (*(v32 + 8))(v15, v13);
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

uint64_t type metadata accessor for ContinueOnRequestType(uint64_t a1)
{
  result = qword_27EDAECF0;
  if (!qword_27EDAECF0)
  {
    return swift_getSingletonMetadata();
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

unint64_t sub_243D297F8()
{
  result = qword_27EDAECA8;
  if (!qword_27EDAECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAECA8);
  }

  return result;
}

uint64_t sub_243D2984C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueOnRequestType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243D298B0()
{
  result = qword_27EDAECB0;
  if (!qword_27EDAECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAECB0);
  }

  return result;
}

unint64_t sub_243D29904()
{
  result = qword_27EDAECB8;
  if (!qword_27EDAECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAECB8);
  }

  return result;
}

uint64_t ContinueOnRequestType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECC8, &qword_243D57548);
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECD0, &qword_243D57550);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECD8, &qword_243D57558);
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = type metadata accessor for ContinueOnRequestType(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  v18 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_243D297F8();
  v19 = v64;
  sub_243D55328();
  if (!v19)
  {
    v54 = v17;
    v55 = v15;
    v21 = v60;
    v20 = v61;
    v53 = v12;
    v22 = v62;
    v64 = v9;
    v23 = sub_243D55208();
    v24 = v23;
    if (*(v23 + 16) == 1)
    {
      if (*(v23 + 32))
      {
        v70 = 1;
        sub_243D298B0();
        sub_243D55188();
        v25 = v6;
        v69 = 0;
        v26 = sub_243D551C8();
        v27 = v20;
        v38 = v37;
        v60 = v24;
        v39 = v25;
        v58 = v26;
        v68 = 1;
        v40 = sub_243D551C8();
        v41 = v59;
        v44 = v43;
        v55 = v40;
        v67 = 2;
        v45 = sub_243D551C8();
        v52 = v46;
        v57 = 0;
        v47 = v45;
        (*(v41 + 8))(v27, v22);
        (*(v63 + 8))(v8, v39);
        swift_unknownObjectRelease();
        v48 = v53;
        *v53 = v58;
        v48[1] = v38;
        v48[2] = v55;
        v48[3] = v44;
        v49 = v52;
        v48[4] = v47;
        v48[5] = v49;
        swift_storeEnumTagMultiPayload();
        v50 = v48;
      }

      else
      {
        v66 = 0;
        sub_243D29904();
        v31 = v21;
        sub_243D55188();
        v32 = v6;
        sub_243D54D58();
        sub_243D2A144(&qword_27EDAECE8, MEMORY[0x277CEB020]);
        v33 = v55;
        v34 = v58;
        sub_243D551E8();
        v35 = v63;
        (*(v57 + 8))(v31, v34);
        (*(v35 + 8))(v8, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v50 = v33;
      }

      v51 = v56;
      v42 = v54;
      sub_243D2A0E0(v50, v54);
      sub_243D2A0E0(v42, v51);
    }

    else
    {
      v28 = sub_243D55108();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560);
      *v30 = v64;
      sub_243D55198();
      sub_243D550F8();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v63 + 8))(v8, v6);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
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

uint64_t sub_243D2A0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueOnRequestType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D2A144(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_243D54D58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243D2A188()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243D2A1C0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243D2A1F4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243D2A228()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_243D2A260()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

void sub_243D2A310(uint64_t a1)
{
  sub_243D54D58();
  if (v1 <= 0x3F)
  {
    sub_243D2A384();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_243D2A384()
{
  if (!qword_27EDAED00)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27EDAED00);
    }
  }
}

uint64_t getEnumTagSinglePayload for ContinueOnRequestType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContinueOnRequestType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContinueOnRequestType.OpensIntentCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContinueOnRequestType.OpensIntentCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ContinueOnRequestType.EntityCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContinueOnRequestType.EntityCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_243D2A7A0()
{
  result = qword_27EDAED70;
  if (!qword_27EDAED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAED70);
  }

  return result;
}

unint64_t sub_243D2A7F8()
{
  result = qword_27EDAED78;
  if (!qword_27EDAED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAED78);
  }

  return result;
}

unint64_t sub_243D2A850()
{
  result = qword_27EDAED80;
  if (!qword_27EDAED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAED80);
  }

  return result;
}

unint64_t sub_243D2A8A8()
{
  result = qword_27EDAED88;
  if (!qword_27EDAED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAED88);
  }

  return result;
}

unint64_t sub_243D2A900()
{
  result = qword_27EDAED90;
  if (!qword_27EDAED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAED90);
  }

  return result;
}

unint64_t sub_243D2A958()
{
  result = qword_27EDAED98;
  if (!qword_27EDAED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAED98);
  }

  return result;
}

unint64_t sub_243D2A9B0()
{
  result = qword_27EDAEDA0;
  if (!qword_27EDAEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEDA0);
  }

  return result;
}

unint64_t sub_243D2AA08()
{
  result = qword_27EDAEDA8;
  if (!qword_27EDAEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEDA8);
  }

  return result;
}

unint64_t sub_243D2AA60()
{
  result = qword_27EDAEDB0;
  if (!qword_27EDAEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEDB0);
  }

  return result;
}

uint64_t sub_243D2AAB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_243D552A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_243D552A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000243D5E680 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_243D552A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t CPSLocalizationKey.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    sub_243D550E8();

    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x203A746365726964;
  }

  MEMORY[0x245D4FE20](v1, v2);
  return v4;
}

Swift::String __swiftcall CPSLocalizationKey.resolve()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v3 = sub_243D54E98();
    v4 = CUAddSuffixForCurrentDeviceClass();

    if (!v4)
    {
      __break(1u);
      goto LABEL_7;
    }

    v1 = sub_243D54EA8();
    v2 = v7;
  }

  else
  {
  }

  v5 = v1;
  v6 = v2;
LABEL_7:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_243D2AD78()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x746365726964;
  }
}

uint64_t sub_243D2ADB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746365726964 && a2 == 0xE600000000000000;
  if (v6 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000243D5E780 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_243D2AE94(uint64_t a1)
{
  v2 = sub_243D2B2FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2AED0(uint64_t a1)
{
  v2 = sub_243D2B2FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D2AF18(uint64_t a1)
{
  v2 = sub_243D2B3A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2AF54(uint64_t a1)
{
  v2 = sub_243D2B3A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D2AF90(uint64_t a1)
{
  v2 = sub_243D2B350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2AFCC(uint64_t a1)
{
  v2 = sub_243D2B350();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSLocalizationKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEE38, "L|");
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEE40, &qword_243D57980);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEE48, &qword_243D57988);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D2B2FC();
  sub_243D55338();
  if (v13)
  {
    v26 = 1;
    sub_243D2B350();
    v14 = v20;
    sub_243D55218();
    v15 = v22;
    sub_243D55248();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_243D2B3A4();
    sub_243D55218();
    v16 = v19;
    sub_243D55248();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_243D2B2FC()
{
  result = qword_27EDAEE50;
  if (!qword_27EDAEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEE50);
  }

  return result;
}

unint64_t sub_243D2B350()
{
  result = qword_27EDAEE58;
  if (!qword_27EDAEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEE58);
  }

  return result;
}

unint64_t sub_243D2B3A4()
{
  result = qword_27EDAEE60;
  if (!qword_27EDAEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEE60);
  }

  return result;
}

uint64_t CPSLocalizationKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEE68, &qword_243D57990);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEE70, &qword_243D57998);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEE78, &unk_243D579A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_243D2B2FC();
  v13 = v34;
  sub_243D55328();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_243D55208();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_243D2ABDC();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_243D55108();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560);
      *v26 = &type metadata for CPSLocalizationKey;
      sub_243D55198();
      sub_243D550F8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_243D2B350();
        sub_243D55188();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_243D551C8();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_243D2B3A4();
        v28 = v7;
        sub_243D55188();
        v19 = v33;
        v18 = v34;
        v21 = sub_243D551C8();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_243D2B918()
{
  v0 = sub_243D55078();
  MEMORY[0x28223BE20](v0);
  v1 = sub_243D54E78();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_243D55058();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243D54CA8();
  v7 = MEMORY[0x28223BE20](v6);
  __swift_allocate_value_buffer(v7, qword_27EDAEE20);
  __swift_project_value_buffer(v6, qword_27EDAEE20);
  sub_243D54C98();
  swift_getKeyPath();
  sub_243D2C728();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  sub_243D54E68();
  v11 = MEMORY[0x277D84F90];
  sub_243D2C774();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEEE0, &qword_243D57F18);
  sub_243D2C7CC();
  sub_243D550B8();
  v8 = sub_243D55088();
  v11 = v8;
  sub_243D54CE8();
}

uint64_t static CUEnvironmentValues.cpsBaseEnvironment.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EDAEC60 != -1)
  {
    swift_once();
  }

  v2 = sub_243D54CA8();
  v3 = __swift_project_value_buffer(v2, qword_27EDAEE20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t CUEnvironmentValues.cpsEntitlement.getter()
{
  sub_243D2BD08();
  sub_243D54CB8();
  return v1;
}

unint64_t sub_243D2BD08()
{
  result = qword_27EDAEE80;
  if (!qword_27EDAEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEE80);
  }

  return result;
}

uint64_t sub_243D2BD5C(void *a1)
{
  sub_243D2BD08();

  return sub_243D54CC8();
}

void (*CUEnvironmentValues.cpsEntitlement.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_243D2BD08();
  sub_243D54CB8();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_243D2BE90;
}

void sub_243D2BE90(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_243D54CC8();
  }

  else
  {
    sub_243D54CC8();
  }

  free(v2);
}

uint64_t CUEnvironmentValues.cpsXPCServiceName.getter()
{
  sub_243D2BF60();
  sub_243D54CB8();
  return v1;
}

unint64_t sub_243D2BF60()
{
  result = qword_27EDAF950;
  if (!qword_27EDAF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF950);
  }

  return result;
}

uint64_t sub_243D2BFB4(void *a1)
{
  sub_243D2BF60();

  return sub_243D54CC8();
}

void (*CUEnvironmentValues.cpsXPCServiceName.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_243D2BF60();
  sub_243D54CB8();
  *v4 = v4[1];
  return sub_243D2C0E8;
}

void sub_243D2C0E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_243D54CC8();
  }

  else
  {
    sub_243D54CC8();
  }

  free(v2);
}

void *sub_243D2C17C@<X0>(void *a1@<X8>)
{
  sub_243D2BD08();
  result = sub_243D54CB8();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_243D2C1D0@<D0>(_OWORD *a1@<X8>)
{
  sub_243D2BF60();
  sub_243D54CB8();
  result = *&v3;
  *a1 = v3;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_243D2C25C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_243D2C2A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_243D2C358()
{
  result = qword_27EDAEE88;
  if (!qword_27EDAEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEE88);
  }

  return result;
}

unint64_t sub_243D2C3B0()
{
  result = qword_27EDAEE90;
  if (!qword_27EDAEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEE90);
  }

  return result;
}

unint64_t sub_243D2C408()
{
  result = qword_27EDAEE98;
  if (!qword_27EDAEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEE98);
  }

  return result;
}

unint64_t sub_243D2C460()
{
  result = qword_27EDAEEA0;
  if (!qword_27EDAEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEEA0);
  }

  return result;
}

unint64_t sub_243D2C4B8()
{
  result = qword_27EDAEEA8;
  if (!qword_27EDAEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEEA8);
  }

  return result;
}

unint64_t sub_243D2C510()
{
  result = qword_27EDAEEB0;
  if (!qword_27EDAEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEEB0);
  }

  return result;
}

unint64_t sub_243D2C568()
{
  result = qword_27EDAEEB8;
  if (!qword_27EDAEEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEEB8);
  }

  return result;
}

unint64_t sub_243D2C5C0()
{
  result = qword_27EDAEEC0;
  if (!qword_27EDAEEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEEC0);
  }

  return result;
}

unint64_t sub_243D2C618()
{
  result = qword_27EDAEEC8;
  if (!qword_27EDAEEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEEC8);
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

uint64_t sub_243D2C6D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243D54C78();
  *a1 = result;
  return result;
}

unint64_t sub_243D2C728()
{
  result = qword_27EDAEED0;
  if (!qword_27EDAEED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDAEED0);
  }

  return result;
}

unint64_t sub_243D2C774()
{
  result = qword_27EDAEED8;
  if (!qword_27EDAEED8)
  {
    sub_243D55078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEED8);
  }

  return result;
}

unint64_t sub_243D2C7CC()
{
  result = qword_27EDAEEE8;
  if (!qword_27EDAEEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAEEE0, &qword_243D57F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEEE8);
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

CompanionServices::CPSRemoteLLMFeature_optional __swiftcall CPSRemoteLLMFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_243D55178();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CPSRemoteLLMFeature.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E696C7265746E69;
  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_243D2C9C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE004D4C4C64656BLL;
  v3 = 0x6E696C7265746E69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000243D5E5B0;
    }

    else
    {
      v6 = 0x8000000243D5E5D0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E696C7265746E69;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4)
    {
      v6 = 0xEE004D4C4C64656BLL;
    }

    else
    {
      v6 = 0x8000000243D5E580;
    }
  }

  v7 = 0x8000000243D5E5B0;
  if (a2 == 2)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (a2 != 2)
  {
    v7 = 0x8000000243D5E5D0;
  }

  if (!a2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000243D5E580;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_243D552A8();
  }

  return v11 & 1;
}

uint64_t sub_243D2CAF0()
{
  sub_243D552E8();
  sub_243D54ED8();

  return sub_243D55308();
}

uint64_t sub_243D2CBC0(uint64_t a1)
{
  sub_243D54ED8();
}

uint64_t sub_243D2CC7C(uint64_t a1)
{
  sub_243D552E8();
  sub_243D54ED8();

  return sub_243D55308();
}

void sub_243D2CD54(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE004D4C4C64656BLL;
  v4 = 0x6E696C7265746E69;
  v5 = 0x8000000243D5E5B0;
  if (v2 == 2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v2 != 2)
  {
    v5 = 0x8000000243D5E5D0;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x8000000243D5E580;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

BOOL Array<A>.containsAnyLLM.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = v1;
  v4 = (a1 + 32);
  while (v3)
  {
    if (!*v4)
    {
LABEL_5:

      return 1;
    }

    v5 = sub_243D552A8();

    ++v4;
    --v3;
    if (v5)
    {
      return 1;
    }
  }

  do
  {
    v10 = v1-- != 0;
    v7 = v10;
    if (!v10)
    {
      break;
    }

    if (*v2 <= 1u && *v2)
    {
      goto LABEL_5;
    }

    v9 = sub_243D552A8();

    ++v2;
  }

  while ((v9 & 1) == 0);
  return v7;
}

unint64_t sub_243D2D01C()
{
  v1 = 1868983913;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x5565747563657865;
  }

  if (*v0)
  {
    v1 = 0x6D726F66726570;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_243D2D098@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_243D32744(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_243D2D0CC(uint64_t a1)
{
  v2 = sub_243D308C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2D108(uint64_t a1)
{
  v2 = sub_243D308C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D2D144(uint64_t a1)
{
  v2 = sub_243D30918();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2D180(uint64_t a1)
{
  v2 = sub_243D30918();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D2D1BC(uint64_t a1)
{
  v2 = sub_243D309C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2D1F8(uint64_t a1)
{
  v2 = sub_243D309C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D2D234(uint64_t a1)
{
  v2 = sub_243D30B10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2D270(uint64_t a1)
{
  v2 = sub_243D30B10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D2D2AC(uint64_t a1)
{
  v2 = sub_243D30A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2D2E8(uint64_t a1)
{
  v2 = sub_243D30A68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSRemoteLLMRequestMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEEF0, &qword_243D57F40);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEEF8, &qword_243D57F48);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEF00, &qword_243D57F50);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEF08, &qword_243D57F58);
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEF10, &qword_243D57F60);
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = v1[1];
  v41 = *v1;
  v42 = v16;
  v17 = v1[3];
  v31 = v1[2];
  v30 = v17;
  v18 = v1[5];
  v29 = v1[4];
  v28 = v18;
  v27 = v1[6];
  v19 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D308C4();
  sub_243D55338();
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      LOBYTE(v45) = 2;
      sub_243D309C0();
      v21 = v35;
      v20 = v44;
      sub_243D55218();
      sub_243D30A14();
      v22 = v37;
      sub_243D55268();
      v23 = v36;
    }

    else
    {
      LOBYTE(v45) = 3;
      sub_243D30918();
      v21 = v38;
      v20 = v44;
      sub_243D55218();
      v45 = v41;
      v46 = v42;
      v47 = v31;
      v48 = v30;
      v49 = v29;
      v50 = v28;
      v51 = v27;
      sub_243D3096C();
      v22 = v40;
      sub_243D55268();
      v23 = v39;
    }

    (*(v23 + 8))(v21, v22);
  }

  else
  {
    if (v19)
    {
      LOBYTE(v45) = 1;
      sub_243D30A68();
      v24 = v44;
      sub_243D55218();
      v45 = v41;
      v46 = v42;
      sub_243D30ABC();
      v25 = v34;
      sub_243D55268();
      (*(v33 + 8))(v9, v25);
      return (*(v43 + 8))(v15, v24);
    }

    LOBYTE(v45) = 0;
    sub_243D30B10();
    v20 = v44;
    sub_243D55218();
    sub_243D30B64();
    sub_243D55268();
    (*(v32 + 8))(v12, v10);
  }

  return (*(v43 + 8))(v15, v20);
}

uint64_t CPSRemoteLLMRequestMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEF60, &qword_243D57F68);
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v48[-v3];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEF68, &qword_243D57F70);
  v56 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v58 = &v48[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEF70, &qword_243D57F78);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v48[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEF78, &qword_243D57F80);
  v53 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEF80, &unk_243D57F88);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48[-v14];
  v16 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_243D308C4();
  v17 = v62;
  sub_243D55328();
  if (!v17)
  {
    v18 = v11;
    v50 = v9;
    v19 = v8;
    v20 = v58;
    v51 = 0;
    v22 = v59;
    v21 = v60;
    v62 = v13;
    v23 = v61;
    v24 = sub_243D55208();
    v25 = (2 * *(v24 + 16)) | 1;
    v69 = v24;
    v70 = v24 + 32;
    v71 = 0;
    v72 = v25;
    v26 = sub_243D2A188();
    if (v26 == 4 || v71 != v72 >> 1)
    {
      v35 = sub_243D55108();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560);
      *v37 = &type metadata for CPSRemoteLLMRequestMessage;
      sub_243D55198();
      sub_243D550F8();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
      swift_willThrow();
    }

    else
    {
      v49 = v26;
      if (v26 > 1u)
      {
        v39 = v23;
        if (v26 == 2)
        {
          LOBYTE(v63) = 2;
          sub_243D309C0();
          v40 = v20;
          v41 = v51;
          sub_243D55188();
          v42 = v62;
          if (!v41)
          {
            sub_243D30C0C();
            v43 = v52;
            sub_243D551E8();
            (*(v56 + 8))(v40, v43);
            v23 = v39;
            (*(v42 + 8))(v15, v12);
            swift_unknownObjectRelease();
            goto LABEL_19;
          }
        }

        else
        {
          LOBYTE(v63) = 3;
          sub_243D30918();
          v46 = v51;
          sub_243D55188();
          v47 = v62;
          if (!v46)
          {
            sub_243D30BB8();
            sub_243D551E8();
            (*(v57 + 8))(v22, v21);
            (*(v47 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v29 = v63;
            v30 = v64;
            v31 = v65;
            v32 = v66;
            v34 = v67;
            v33 = v68;
            goto LABEL_19;
          }
        }
      }

      else if (v26)
      {
        LOBYTE(v63) = 1;
        sub_243D30A68();
        v44 = v51;
        sub_243D55188();
        if (!v44)
        {
          sub_243D30C60();
          v45 = v54;
          sub_243D551E8();
          (*(v55 + 8))(v19, v45);
          (*(v62 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v29 = v63;
          v30 = v64;
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v63) = 0;
        sub_243D30B10();
        v27 = v51;
        sub_243D55188();
        if (!v27)
        {
          sub_243D30CB4();
          v28 = v50;
          sub_243D551E8();
          (*(v53 + 8))(v18, v28);
          (*(v62 + 8))(v15, v12);
          swift_unknownObjectRelease();
LABEL_19:
          *v23 = v29;
          *(v23 + 8) = v30;
          *(v23 + 16) = v31;
          *(v23 + 24) = v32;
          *(v23 + 32) = v34;
          *(v23 + 48) = v33;
          *(v23 + 56) = v49;
          return __swift_destroy_boxed_opaque_existential_1(v73);
        }
      }
    }

    (*(v62 + 8))(v15, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_243D2E184@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_243D2E1B4(uint64_t a1)
{
  v2 = sub_243D30D08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2E1F0(uint64_t a1)
{
  v2 = sub_243D30D08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D2E330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000243D5E7E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_243D552A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_243D2E3C4(uint64_t a1)
{
  v2 = sub_243D30D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2E400(uint64_t a1)
{
  v2 = sub_243D30D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSRemoteLLMInfoResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEFB8, &qword_243D57FA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D30D5C();

  sub_243D55338();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEFC8, &qword_243D57FA8);
  sub_243D30E04(&qword_27EDAEFD0, sub_243D30DB0, MEMORY[0x277D83948]);
  sub_243D55268();

  return (*(v4 + 8))(v6, v3);
}

uint64_t CPSRemoteLLMInfoResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEFE0, &qword_243D57FB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D30D5C();
  sub_243D55328();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAEFC8, &qword_243D57FA8);
    sub_243D30E04(&qword_27EDAEFE8, sub_243D30E7C, MEMORY[0x277D83978]);
    sub_243D551E8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPSRemoteLLMPerformRequest.prompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_243D2E80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D2E890(uint64_t a1)
{
  v2 = sub_243D30ED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2E8CC(uint64_t a1)
{
  v2 = sub_243D30ED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D2EA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D2EA8C(uint64_t a1)
{
  v2 = sub_243D30F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2EAC8(uint64_t a1)
{
  v2 = sub_243D30F24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D2EBEC(uint64_t a1)
{
  v2 = sub_243D30F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2EC28(uint64_t a1)
{
  v2 = sub_243D30F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D2ECA8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_243D55338();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_243D2EE0C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_243D55338();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_243D2EF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D2EFC4(uint64_t a1)
{
  v2 = sub_243D30FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2F000(uint64_t a1)
{
  v2 = sub_243D30FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D2F080(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  v12 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13();
  sub_243D55338();
  sub_243D55248();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_243D2F20C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_243D55328();
  if (!v6)
  {
    v12 = v19;
    v13 = v20;
    v14 = sub_243D551C8();
    v16 = v15;
    (*(v12 + 8))(v11, v9);
    *v13 = v14;
    v13[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_243D2F3E8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  v14 = *v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_243D55338();
  sub_243D55248();
  return (*(v10 + 8))(v12, v9);
}

uint64_t CPSRemoteLLMExecuteURLRequest.url.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CPSRemoteLLMExecuteURLRequest.method.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CPSRemoteLLMExecuteURLRequest.body.getter()
{
  v1 = *(v0 + 40);
  sub_243D31020(v1, *(v0 + 48));
  return v1;
}

uint64_t CPSRemoteLLMExecuteURLRequest.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF050, &qword_243D57FF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  sub_243D54B48();
  v7 = sub_243D54BA8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_243D31088(v6);
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v9 = sub_243D54B88();
    v10 = v11;
    (*(v8 + 8))(v6, v7);
  }

  v12 = sub_243D54AF8();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 1414745936;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  v16 = sub_243D54B18();
  v17 = sub_243D54B58();
  v19 = v18;
  v20 = sub_243D54B78();
  result = (*(*(v20 - 8) + 8))(a1, v20);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v16;
  a2[5] = v17;
  a2[6] = v19;
  return result;
}

uint64_t CPSRemoteLLMExecuteURLRequest.urlRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF050, &qword_243D57FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_243D54BA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = v1[5];
  v18 = v1[2];
  v19 = v13;
  v14 = v1[6];
  sub_243D54B98();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_243D31088(v5);
    v15 = 1;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v10, v12, v6);
    sub_243D54B38();

    sub_243D54B08();

    sub_243D54B28();
    sub_243D31020(v19, v14);
    sub_243D54B68();
    (*(v7 + 8))(v12, v6);
    v15 = 0;
  }

  v16 = sub_243D54B78();
  return (*(*(v16 - 8) + 56))(a1, v15, 1, v16);
}

uint64_t sub_243D2F9F8()
{
  v1 = 7107189;
  v2 = 0x73726564616568;
  if (*v0 != 2)
  {
    v2 = 2036625250;
  }

  if (*v0)
  {
    v1 = 0x646F6874656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_243D2FA60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_243D328B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_243D2FA88(uint64_t a1)
{
  v2 = sub_243D310F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D2FAC4(uint64_t a1)
{
  v2 = sub_243D310F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSRemoteLLMExecuteURLRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF058, &qword_243D57FF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = v1[2];
  v17 = v1[3];
  v18 = v7;
  v8 = v1[4];
  v15 = v1[5];
  v16 = v8;
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D310F0();
  sub_243D55338();
  LOBYTE(v20) = 0;
  v9 = v19;
  sub_243D55248();
  if (!v9)
  {
    v11 = v15;
    v12 = v16;
    v13 = v14;
    LOBYTE(v20) = 1;
    sub_243D55248();
    v20 = v12;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF068, &qword_243D58000);
    sub_243D31200(&qword_27EDAF070, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_243D55238();
    v20 = v11;
    v21 = v13;
    v22 = 3;
    sub_243D31020(v11, v13);
    sub_243D31144();
    sub_243D55238();
    sub_243D31198(v20, v21);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CPSRemoteLLMExecuteURLRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF080, &qword_243D58008);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D310F0();
  sub_243D55328();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v9 = sub_243D551C8();
  v21 = v10;
  LOBYTE(v22) = 1;
  v11 = sub_243D551C8();
  v20 = v12;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF068, &qword_243D58000);
  v24 = 2;
  sub_243D31200(&qword_27EDAF088, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_243D551B8();
  v18 = v22;
  v24 = 3;
  sub_243D3126C();
  sub_243D551B8();
  (*(v6 + 8))(v8, v5);
  v13 = v22;
  v14 = v23;
  v15 = v21;
  *a2 = v9;
  a2[1] = v15;
  v16 = v20;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = v13;
  a2[6] = v14;

  sub_243D31020(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_243D31198(v13, v14);
}

uint64_t CPSRemoteLLMExecuteURLResponse.data.getter()
{
  v1 = *v0;
  sub_243D31034(*v0, *(v0 + 8));
  return v1;
}

uint64_t CPSRemoteLLMExecuteURLResponse.init(data:statusCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_243D3016C()
{
  if (*v0)
  {
    return 0x6F43737574617473;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_243D301A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_243D30288(uint64_t a1)
{
  v2 = sub_243D312C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D302C4(uint64_t a1)
{
  v2 = sub_243D312C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSRemoteLLMExecuteURLResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF098, &qword_243D58010);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D31034(v7, v8);
  sub_243D312C0();
  sub_243D55338();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  sub_243D31144();
  sub_243D55268();
  sub_243D311AC(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_243D55258();
  }

  return (*(v11 + 8))(v6, v4);
}

uint64_t CPSRemoteLLMExecuteURLResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF0A8, &qword_243D58018);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D312C0();
  sub_243D55328();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  sub_243D3126C();
  sub_243D551E8();
  v10 = v13[0];
  v9 = v13[1];
  LOBYTE(v13[0]) = 1;
  v11 = sub_243D551D8();
  (*(v6 + 8))(v8, v5);
  *a2 = v10;
  a2[1] = v9;
  a2[2] = v11;
  sub_243D31034(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_243D311AC(v10, v9);
}

double sub_243D306B0@<D0>(_OWORD *a1@<X8>)
{
  result = 7.20035365e252;
  *a1 = xmmword_243D57F30;
  return result;
}

uint64_t CUEnvironmentValues.cpsRemoteLLMServerType.getter()
{
  sub_243D31314();
  sub_243D54CB8();
  return v1;
}

uint64_t sub_243D306FC(void *a1, uint64_t a2)
{
  sub_243D31314();

  return sub_243D54CC8();
}

void (*CUEnvironmentValues.cpsRemoteLLMServerType.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_243D31314();
  sub_243D54CB8();
  *v4 = v4[1];
  return sub_243D30830;
}

void sub_243D30830(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_243D54CC8();
  }

  else
  {
    sub_243D54CC8();
  }

  free(v2);
}

unint64_t sub_243D308C4()
{
  result = qword_27EDAEF18;
  if (!qword_27EDAEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF18);
  }

  return result;
}

unint64_t sub_243D30918()
{
  result = qword_27EDAEF20;
  if (!qword_27EDAEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF20);
  }

  return result;
}

unint64_t sub_243D3096C()
{
  result = qword_27EDAEF28;
  if (!qword_27EDAEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF28);
  }

  return result;
}

unint64_t sub_243D309C0()
{
  result = qword_27EDAEF30;
  if (!qword_27EDAEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF30);
  }

  return result;
}

unint64_t sub_243D30A14()
{
  result = qword_27EDAEF38;
  if (!qword_27EDAEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF38);
  }

  return result;
}

unint64_t sub_243D30A68()
{
  result = qword_27EDAEF40;
  if (!qword_27EDAEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF40);
  }

  return result;
}

unint64_t sub_243D30ABC()
{
  result = qword_27EDAEF48;
  if (!qword_27EDAEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF48);
  }

  return result;
}

unint64_t sub_243D30B10()
{
  result = qword_27EDAEF50;
  if (!qword_27EDAEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF50);
  }

  return result;
}

unint64_t sub_243D30B64()
{
  result = qword_27EDAEF58;
  if (!qword_27EDAEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF58);
  }

  return result;
}

unint64_t sub_243D30BB8()
{
  result = qword_27EDAEF88;
  if (!qword_27EDAEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF88);
  }

  return result;
}

unint64_t sub_243D30C0C()
{
  result = qword_27EDAEF90;
  if (!qword_27EDAEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF90);
  }

  return result;
}

unint64_t sub_243D30C60()
{
  result = qword_27EDAEF98;
  if (!qword_27EDAEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEF98);
  }

  return result;
}

unint64_t sub_243D30CB4()
{
  result = qword_27EDAEFA0;
  if (!qword_27EDAEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEFA0);
  }

  return result;
}

unint64_t sub_243D30D08()
{
  result = qword_27EDAEFB0;
  if (!qword_27EDAEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEFB0);
  }

  return result;
}

unint64_t sub_243D30D5C()
{
  result = qword_27EDAEFC0;
  if (!qword_27EDAEFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEFC0);
  }

  return result;
}

unint64_t sub_243D30DB0()
{
  result = qword_27EDAEFD8;
  if (!qword_27EDAEFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEFD8);
  }

  return result;
}

uint64_t sub_243D30E04(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAEFC8, &qword_243D57FA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243D30E7C()
{
  result = qword_27EDAEFF0;
  if (!qword_27EDAEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAEFF0);
  }

  return result;
}

unint64_t sub_243D30ED0()
{
  result = qword_27EDAF000;
  if (!qword_27EDAF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF000);
  }

  return result;
}

unint64_t sub_243D30F24()
{
  result = qword_27EDAF018;
  if (!qword_27EDAF018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF018);
  }

  return result;
}

unint64_t sub_243D30F78()
{
  result = qword_27EDAF030;
  if (!qword_27EDAF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF030);
  }

  return result;
}

unint64_t sub_243D30FCC()
{
  result = qword_27EDAF040;
  if (!qword_27EDAF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF040);
  }

  return result;
}

void sub_243D31020(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_243D31034(result, a2);
  }
}

void sub_243D31034(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_243D31088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF050, &qword_243D57FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243D310F0()
{
  result = qword_27EDAF060;
  if (!qword_27EDAF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF060);
  }

  return result;
}

unint64_t sub_243D31144()
{
  result = qword_27EDAF078;
  if (!qword_27EDAF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF078);
  }

  return result;
}

uint64_t sub_243D31198(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243D311AC(result, a2);
  }

  return result;
}

uint64_t sub_243D311AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_243D31200(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF068, &qword_243D58000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243D3126C()
{
  result = qword_27EDAF090;
  if (!qword_27EDAF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF090);
  }

  return result;
}

unint64_t sub_243D312C0()
{
  result = qword_27EDAF0A0;
  if (!qword_27EDAF0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF0A0);
  }

  return result;
}

unint64_t sub_243D31314()
{
  result = qword_27EDAF0B0;
  if (!qword_27EDAF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF0B0);
  }

  return result;
}

unint64_t sub_243D3136C()
{
  result = qword_27EDAF0B8;
  if (!qword_27EDAF0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF0B8);
  }

  return result;
}

double sub_243D313C0@<D0>(_OWORD *a1@<X8>)
{
  sub_243D31314();
  sub_243D54CB8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_243D314A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 57))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 56);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_243D314F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_243D31578(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_243D315C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243D31650(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D31698(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_243D31700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D31748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_243D317B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_243D3180C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CPSRequesterUseCaseConfiguration.RequesterAlternative.QrCodeURLCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CPSRequesterUseCaseConfiguration.RequesterAlternative.QrCodeURLCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243D31A90()
{
  result = qword_27EDAF0C0;
  if (!qword_27EDAF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF0C0);
  }

  return result;
}

unint64_t sub_243D31AE8()
{
  result = qword_27EDAF0C8;
  if (!qword_27EDAF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF0C8);
  }

  return result;
}

unint64_t sub_243D31B40()
{
  result = qword_27EDAF0D0;
  if (!qword_27EDAF0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF0D0);
  }

  return result;
}

unint64_t sub_243D31B98()
{
  result = qword_27EDAF0D8;
  if (!qword_27EDAF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF0D8);
  }

  return result;
}

unint64_t sub_243D31BF0()
{
  result = qword_27EDAF0E0;
  if (!qword_27EDAF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF0E0);
  }

  return result;
}

unint64_t sub_243D31C48()
{
  result = qword_27EDAF0E8;
  if (!qword_27EDAF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF0E8);
  }

  return result;
}

unint64_t sub_243D31CA0()
{
  result = qword_27EDAF0F0;
  if (!qword_27EDAF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF0F0);
  }

  return result;
}

unint64_t sub_243D31CF8()
{
  result = qword_27EDAF0F8;
  if (!qword_27EDAF0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF0F8);
  }

  return result;
}

unint64_t sub_243D31D50()
{
  result = qword_27EDAF100;
  if (!qword_27EDAF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF100);
  }

  return result;
}

unint64_t sub_243D31DA8()
{
  result = qword_27EDAF108;
  if (!qword_27EDAF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF108);
  }

  return result;
}

unint64_t sub_243D31E00()
{
  result = qword_27EDAF110;
  if (!qword_27EDAF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF110);
  }

  return result;
}

unint64_t sub_243D31E58()
{
  result = qword_27EDAF118;
  if (!qword_27EDAF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF118);
  }

  return result;
}

unint64_t sub_243D31EB0()
{
  result = qword_27EDAF120;
  if (!qword_27EDAF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF120);
  }

  return result;
}

unint64_t sub_243D31F08()
{
  result = qword_27EDAF128;
  if (!qword_27EDAF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF128);
  }

  return result;
}

unint64_t sub_243D31F60()
{
  result = qword_27EDAF130;
  if (!qword_27EDAF130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF130);
  }

  return result;
}

unint64_t sub_243D31FB8()
{
  result = qword_27EDAF138;
  if (!qword_27EDAF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF138);
  }

  return result;
}

unint64_t sub_243D32010()
{
  result = qword_27EDAF140;
  if (!qword_27EDAF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF140);
  }

  return result;
}

unint64_t sub_243D32068()
{
  result = qword_27EDAF148;
  if (!qword_27EDAF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF148);
  }

  return result;
}

unint64_t sub_243D320C0()
{
  result = qword_27EDAF150;
  if (!qword_27EDAF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF150);
  }

  return result;
}

unint64_t sub_243D32118()
{
  result = qword_27EDAF158;
  if (!qword_27EDAF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF158);
  }

  return result;
}

unint64_t sub_243D32170()
{
  result = qword_27EDAF160;
  if (!qword_27EDAF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF160);
  }

  return result;
}

unint64_t sub_243D321C8()
{
  result = qword_27EDAF168;
  if (!qword_27EDAF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF168);
  }

  return result;
}

unint64_t sub_243D32220()
{
  result = qword_27EDAF170;
  if (!qword_27EDAF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF170);
  }

  return result;
}

unint64_t sub_243D32278()
{
  result = qword_27EDAF178;
  if (!qword_27EDAF178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF178);
  }

  return result;
}

unint64_t sub_243D322D0()
{
  result = qword_27EDAF180;
  if (!qword_27EDAF180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF180);
  }

  return result;
}

unint64_t sub_243D32328()
{
  result = qword_27EDAF188;
  if (!qword_27EDAF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF188);
  }

  return result;
}

unint64_t sub_243D32380()
{
  result = qword_27EDAF190;
  if (!qword_27EDAF190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF190);
  }

  return result;
}

unint64_t sub_243D323D8()
{
  result = qword_27EDAF198;
  if (!qword_27EDAF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF198);
  }

  return result;
}

unint64_t sub_243D32430()
{
  result = qword_27EDAF1A0;
  if (!qword_27EDAF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF1A0);
  }

  return result;
}

unint64_t sub_243D32488()
{
  result = qword_27EDAF1A8;
  if (!qword_27EDAF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF1A8);
  }

  return result;
}

unint64_t sub_243D324E0()
{
  result = qword_27EDAF1B0;
  if (!qword_27EDAF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF1B0);
  }

  return result;
}

unint64_t sub_243D32538()
{
  result = qword_27EDAF1B8;
  if (!qword_27EDAF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF1B8);
  }

  return result;
}

unint64_t sub_243D32590()
{
  result = qword_27EDAF1C0;
  if (!qword_27EDAF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF1C0);
  }

  return result;
}

unint64_t sub_243D325E8()
{
  result = qword_27EDAF1C8;
  if (!qword_27EDAF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF1C8);
  }

  return result;
}

unint64_t sub_243D32640()
{
  result = qword_27EDAF1D0;
  if (!qword_27EDAF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF1D0);
  }

  return result;
}

unint64_t sub_243D32698()
{
  result = qword_27EDAF1D8;
  if (!qword_27EDAF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF1D8);
  }

  return result;
}

unint64_t sub_243D326F0()
{
  result = qword_27EDAF1E0;
  if (!qword_27EDAF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF1E0);
  }

  return result;
}

uint64_t sub_243D32744(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1868983913 && a2 == 0xE400000000000000;
  if (v3 || (sub_243D552A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D726F66726570 && a2 == 0xE700000000000000 || (sub_243D552A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000243D5E7C0 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5565747563657865 && a2 == 0xEA00000000004C52)
  {

    return 3;
  }

  else
  {
    v6 = sub_243D552A8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_243D328B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_243D552A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (sub_243D552A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000 || (sub_243D552A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_243D552A8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_243D32A18()
{
  result = qword_27EDAF1E8;
  if (!qword_27EDAF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF1E8);
  }

  return result;
}

uint64_t sub_243D32BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D32C68(uint64_t a1)
{
  v2 = sub_243D32E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D32CA4(uint64_t a1)
{
  v2 = sub_243D32E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSRequesterStartMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF2A0, &qword_243D59688);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D32E58();
  sub_243D55338();
  type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  sub_243D33140(&qword_27EDAF2B0, type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);
  sub_243D55268();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_243D32E58()
{
  result = qword_27EDAF2A8;
  if (!qword_27EDAF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF2A8);
  }

  return result;
}

uint64_t CPSRequesterStartMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF2B8, &qword_243D59690);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  started = type metadata accessor for CPSRequesterStartMessage(0);
  MEMORY[0x28223BE20](started - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D32E58();
  sub_243D55328();
  if (!v2)
  {
    v12 = v15;
    sub_243D33140(&qword_27EDAF2C0, type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);
    v13 = v17;
    sub_243D551E8();
    (*(v16 + 8))(v8, v6);
    sub_243D33188(v13, v11, type metadata accessor for CPSRequesterUseCaseConfiguration);
    sub_243D33188(v11, v12, type metadata accessor for CPSRequesterStartMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_243D33140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243D33188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243D33260(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF2A0, &qword_243D59688);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D32E58();
  sub_243D55338();
  type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  sub_243D33140(&qword_27EDAF2B0, type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);
  sub_243D55268();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_243D333D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_243D3CCB0;

  return MEMORY[0x282194DD0](a1, a2, a3, a4, a5, a6, a7, a8);
}

id CPSRequesterEndMessage.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_243D33534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D335B8(uint64_t a1)
{
  v2 = sub_243D337C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D335F4(uint64_t a1)
{
  v2 = sub_243D337C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSRequesterEndMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF2C8, &qword_243D59698);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D337C8();
  v8 = v7;
  sub_243D55338();
  v10[3] = v7;
  sub_243D54D28();
  sub_243D33140(&qword_27EDAF2D8, MEMORY[0x277D02A18], MEMORY[0x277D02A20]);
  sub_243D55238();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_243D337C8()
{
  result = qword_27EDAF2D0;
  if (!qword_27EDAF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF2D0);
  }

  return result;
}

uint64_t CPSRequesterEndMessage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF2E0, &unk_243D596A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D337C8();
  sub_243D55328();
  if (!v2)
  {
    sub_243D54D28();
    sub_243D33140(&qword_27EDAF2E8, MEMORY[0x277D02A18], MEMORY[0x277D02A28]);
    sub_243D551B8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPSRequesterEndHandler.handler.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CPSRequesterEndHandler.init(handler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_243D33A50()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_243D33A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_243D33B7C;

  return MEMORY[0x282194DD0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_243D33B7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243D33CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D33D3C(uint64_t a1)
{
  v2 = sub_243D33F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D33D78(uint64_t a1)
{
  v2 = sub_243D33F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSResponderEventMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF2F0, &qword_243D596C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D33F00();
  sub_243D55338();
  v10 = v7;
  sub_243D33F54();
  sub_243D55268();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_243D33F00()
{
  result = qword_27EDAF2F8;
  if (!qword_27EDAF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF2F8);
  }

  return result;
}

unint64_t sub_243D33F54()
{
  result = qword_27EDAF300;
  if (!qword_27EDAF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF300);
  }

  return result;
}

uint64_t CPSResponderEventMessage.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF308, &qword_243D596D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D33F00();
  sub_243D55328();
  if (!v2)
  {
    sub_243D34114();
    sub_243D551E8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_243D34114()
{
  result = qword_27EDAF310;
  if (!qword_27EDAF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF310);
  }

  return result;
}

uint64_t CPSResponderEvent.description.getter()
{
  if (*v0)
  {
    return 0x696E654472657375;
  }

  else
  {
    return 0x6563634172657375;
  }
}

uint64_t sub_243D34214()
{
  if (*v0)
  {
    return 0x696E654472657375;
  }

  else
  {
    return 0x6563634172657375;
  }
}

uint64_t sub_243D3425C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6563634172657375 && a2 == 0xEC00000064657470;
  if (v6 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696E654472657375 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_243D34344(uint64_t a1)
{
  v2 = sub_243D3475C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D34380(uint64_t a1)
{
  v2 = sub_243D3475C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D343BC(uint64_t a1)
{
  v2 = sub_243D34804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D343F8(uint64_t a1)
{
  v2 = sub_243D34804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D34434(uint64_t a1)
{
  v2 = sub_243D347B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D34470(uint64_t a1)
{
  v2 = sub_243D347B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSResponderEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF318, &qword_243D596D8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF320, &qword_243D596E0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF328, &qword_243D596E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D3475C();
  sub_243D55338();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_243D347B0();
    v14 = v18;
    sub_243D55218();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_243D34804();
    sub_243D55218();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_243D3475C()
{
  result = qword_27EDAF330;
  if (!qword_27EDAF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF330);
  }

  return result;
}

unint64_t sub_243D347B0()
{
  result = qword_27EDAF338;
  if (!qword_27EDAF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF338);
  }

  return result;
}

unint64_t sub_243D34804()
{
  result = qword_27EDAF340;
  if (!qword_27EDAF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF340);
  }

  return result;
}

uint64_t CPSResponderEvent.hashValue.getter()
{
  v1 = *v0;
  sub_243D552E8();
  MEMORY[0x245D50230](v1);
  return sub_243D55308();
}

uint64_t CPSResponderEvent.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF348, &qword_243D596F0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF350, &qword_243D596F8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF358, &unk_243D59700);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D3475C();
  v12 = v31;
  sub_243D55328();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_243D55208();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_243D2ABDC();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_243D55108();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560);
      *v22 = &type metadata for CPSResponderEvent;
      sub_243D55198();
      sub_243D550F8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_243D347B0();
        sub_243D55188();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_243D34804();
        sub_243D55188();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t CPSRequesterUseCaseConfiguration.bannerBodyParameters.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.RequesterAlternative.description.getter()
{
  v1 = v0;
  v2 = sub_243D54BA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_243D351F4(v1, v8, type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8F0, &qword_243D59710);
      v11 = (v8 + v10[12]);
      v12 = *v11;
      v13 = v11[1];
      v14 = (v8 + v10[16]);
      v15 = v14[1];
      v25 = *v14;
      v16 = (v8 + v10[20]);
      v18 = *v16;
      v17 = v16[1];
      (*(v3 + 32))(v5, v8, v2);
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_243D550E8();
      MEMORY[0x245D4FE20](0x203A65646F437271, 0xEC0000003D6C7275);
      sub_243D33140(&qword_27EDAF360, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v19 = sub_243D55288();
      MEMORY[0x245D4FE20](v19);

      MEMORY[0x245D4FE20](0x6469766F7270202CLL, 0xEF3D65646F437265);
      v26 = v18;
      v27 = v17;
      sub_243D55298();

      MEMORY[0x245D4FE20](0x3D656C746974202CLL, 0xE800000000000000);
      v26 = v12;
      v27 = v13;
      sub_243D55298();

      MEMORY[0x245D4FE20](0x746974627573202CLL, 0xEB000000003D656CLL);
      MEMORY[0x245D4FE20](v25, v15);

      v20 = v28;
      (*(v3 + 8))(v5, v2);
      return v20;
    }

    else
    {
      return 0x65646F6373736170;
    }
  }

  else
  {
    v23 = *v8;
    v22 = v8[1];
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_243D550E8();
    MEMORY[0x245D4FE20](0xD000000000000013, 0x8000000243D5E840);
    v26 = v23;
    v27 = v22;
    sub_243D55298();

    return v28;
  }
}

uint64_t sub_243D351BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243D351F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243D3525C()
{
  v1 = 0x64726F7773736170;
  if (*v0 != 1)
  {
    v1 = 0x525565646F437271;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65646F6373736170;
  }
}

uint64_t sub_243D352BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_243D3C40C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_243D352E4(uint64_t a1)
{
  v2 = sub_243D35DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D35320(uint64_t a1)
{
  v2 = sub_243D35DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D3535C(uint64_t a1)
{
  v2 = sub_243D35EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D35398(uint64_t a1)
{
  v2 = sub_243D35EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D353EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D616E72657375 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D35474(uint64_t a1)
{
  v2 = sub_243D35E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D354B0(uint64_t a1)
{
  v2 = sub_243D35E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D354EC()
{
  v1 = 7107189;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0)
  {
    v1 = 0x72656469766F7270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_243D35564@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_243D3C52C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_243D3558C(uint64_t a1)
{
  v2 = sub_243D35E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D355C8(uint64_t a1)
{
  v2 = sub_243D35E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSRequesterUseCaseConfiguration.RequesterAlternative.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF368, &qword_243D59718);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = v43 - v3;
  v50 = sub_243D54BA8();
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v51 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF370, &qword_243D59720);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF378, &qword_243D59728);
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v43 - v9;
  v11 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
  MEMORY[0x28223BE20](v11);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF380, &qword_243D59730);
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v43 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D35DBC();
  v57 = v16;
  sub_243D55338();
  sub_243D351F4(v53, v13, type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8F0, &qword_243D59710);
      v19 = &v13[v18[12]];
      v21 = *v19;
      v20 = *(v19 + 1);
      v45 = v21;
      v46 = v20;
      v22 = *&v13[v18[16]];
      v23 = &v13[v18[20]];
      v25 = *v23;
      v24 = *(v23 + 1);
      v43[1] = v25;
      v44 = v22;
      v53 = v24;
      v26 = v51;
      v27 = v52;
      v28 = v50;
      (*(v52 + 32))(v51, v13, v50);
      v64 = 2;
      sub_243D35E10();
      v29 = v47;
      v30 = v55;
      v31 = v57;
      sub_243D55218();
      v63 = 0;
      sub_243D33140(&qword_27EDAF398, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
      v32 = v49;
      v33 = v56;
      sub_243D55268();
      if (v33)
      {

        (*(v48 + 8))(v29, v32);
        (*(v27 + 8))(v26, v28);
        return (*(v54 + 8))(v31, v30);
      }

      else
      {
        v62 = 1;
        sub_243D55228();

        v61 = 2;
        sub_243D55248();
        v40 = v51;
        v41 = v57;

        v60 = 3;
        sub_243D55228();
        v42 = v52;

        (*(v48 + 8))(v29, v32);
        (*(v42 + 8))(v40, v28);
        return (*(v54 + 8))(v41, v30);
      }
    }

    else
    {
      v58 = 0;
      sub_243D35EB8();
      v38 = v55;
      v39 = v57;
      sub_243D55218();
      (*(v44 + 8))(v10, v8);
      return (*(v54 + 8))(v39, v38);
    }
  }

  else
  {
    v59 = 1;
    sub_243D35E64();
    v35 = v55;
    v36 = v57;
    sub_243D55218();
    v37 = v46;
    sub_243D55228();

    (*(v45 + 8))(v7, v37);
    return (*(v54 + 8))(v36, v35);
  }
}

unint64_t sub_243D35DBC()
{
  result = qword_27EDAF388;
  if (!qword_27EDAF388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF388);
  }

  return result;
}

unint64_t sub_243D35E10()
{
  result = qword_27EDAF390;
  if (!qword_27EDAF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF390);
  }

  return result;
}

unint64_t sub_243D35E64()
{
  result = qword_27EDAF3A0;
  if (!qword_27EDAF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF3A0);
  }

  return result;
}

unint64_t sub_243D35EB8()
{
  result = qword_27EDAF3A8;
  if (!qword_27EDAF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF3A8);
  }

  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.RequesterAlternative.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3B0, &qword_243D59738);
  v4 = *(v3 - 8);
  v68 = v3;
  v69 = v4;
  MEMORY[0x28223BE20](v3);
  v72 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3B8, &qword_243D59740);
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  MEMORY[0x28223BE20](v6);
  v71 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3C0, &qword_243D59748);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3C8, &qword_243D59750);
  v74 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  v14 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v60 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  v23 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_243D35DBC();
  v24 = v75;
  sub_243D55328();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v61 = v20;
  v62 = v17;
  v26 = v70;
  v25 = v71;
  v63 = v22;
  v75 = v14;
  v28 = v72;
  v27 = v73;
  v29 = sub_243D55208();
  v30 = (2 * *(v29 + 16)) | 1;
  v77 = v29;
  v78 = v29 + 32;
  v79 = 0;
  v80 = v30;
  v31 = sub_243D2A1C0();
  v32 = v11;
  if (v31 == 3 || v79 != v80 >> 1)
  {
    v37 = sub_243D55108();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560);
    *v39 = v75;
    sub_243D55198();
    sub_243D550F8();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v74 + 8))(v13, v32);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  if (!v31)
  {
    v81 = 0;
    sub_243D35EB8();
    sub_243D55188();
    (*(v64 + 8))(v26, v65);
    (*(v74 + 8))(v13, v11);
    swift_unknownObjectRelease();
    v46 = v63;
    swift_storeEnumTagMultiPayload();
LABEL_11:
    v33 = v27;
    goto LABEL_12;
  }

  if (v31 != 1)
  {
    v81 = 2;
    sub_243D35E10();
    sub_243D55188();
    v71 = v13;
    sub_243D54BA8();
    v81 = 0;
    sub_243D33140(&qword_27EDAF3D0, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v41 = v62;
    v42 = v68;
    sub_243D551E8();
    v81 = 1;
    v47 = sub_243D551A8();
    v49 = v48;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8F0, &qword_243D59710);
    v50 = (v41 + *(v70 + 12));
    *v50 = v47;
    v50[1] = v49;
    v81 = 2;
    v51 = sub_243D551C8();
    v66 = v49;
    v67 = v11;
    v52 = v70;
    v53 = (v41 + *(v70 + 16));
    *v53 = v51;
    v53[1] = v54;
    v81 = 3;
    v55 = sub_243D551A8();
    v65 = v56;
    v57 = v55;
    v58 = (v41 + *(v52 + 20));
    (*(v69 + 8))(v28, v42);
    (*(v74 + 8))(v71, v67);
    swift_unknownObjectRelease();
    v59 = v65;
    *v58 = v57;
    v58[1] = v59;
    swift_storeEnumTagMultiPayload();
    v46 = v63;
    sub_243D33188(v41, v63, type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative);
    goto LABEL_11;
  }

  v81 = 1;
  sub_243D35E64();
  sub_243D55188();
  v33 = v27;
  v34 = v66;
  v35 = sub_243D551A8();
  v36 = v74;
  v44 = v43;
  (*(v67 + 8))(v25, v34);
  (*(v36 + 8))(v13, v32);
  swift_unknownObjectRelease();
  v45 = v61;
  *v61 = v35;
  *(v45 + 8) = v44;
  swift_storeEnumTagMultiPayload();
  v46 = v63;
  sub_243D33188(v45, v63, type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative);
LABEL_12:
  sub_243D33188(v46, v33, type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative);
  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t CPSRequesterUseCaseConfiguration.requesterAlternative.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 20);

  return sub_243D369F4(a1, v3);
}

uint64_t sub_243D369F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3D8, &qword_243D59758);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CPSRequesterUseCaseConfiguration.requesterIconSystemName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 24));

  return v1;
}

uint64_t CPSRequesterUseCaseConfiguration.requesterIconSystemName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.requesterLocalizedFilename.getter()
{
  v1 = *(v0 + *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 28));

  return v1;
}

uint64_t CPSRequesterUseCaseConfiguration.requesterLocalizedFilename.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.requesterTitleKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 32));

  return v1;
}

uint64_t CPSRequesterUseCaseConfiguration.requesterTitleKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.requesterTitleParameters.getter()
{
  type metadata accessor for CPSRequesterUseCaseConfiguration(0);
}

uint64_t CPSRequesterUseCaseConfiguration.requesterTitleParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.requesterBodyKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 40));

  return v1;
}

uint64_t CPSRequesterUseCaseConfiguration.requesterBodyKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.requesterBodyParameters.getter()
{
  type metadata accessor for CPSRequesterUseCaseConfiguration(0);
}

uint64_t CPSRequesterUseCaseConfiguration.requesterBodyParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.UseCase.description.getter()
{
  if (*v0)
  {
    return 0x51636972656E6567;
  }

  else
  {
    return 0xD000000000000013;
  }
}

CompanionServices::CPSRequesterUseCaseConfiguration::UseCase_optional __swiftcall CPSRequesterUseCaseConfiguration.UseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_243D55178();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_243D37020(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x51636972656E6567;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = 0x8000000243D5E5F0;
  }

  else
  {
    v4 = 0xED000065646F4352;
  }

  if (*a2)
  {
    v5 = 0x51636972656E6567;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (*a2)
  {
    v6 = 0xED000065646F4352;
  }

  else
  {
    v6 = 0x8000000243D5E5F0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_243D552A8();
  }

  return v8 & 1;
}

uint64_t sub_243D370D8()
{
  sub_243D552E8();
  sub_243D54ED8();

  return sub_243D55308();
}

uint64_t sub_243D3716C(uint64_t a1)
{
  sub_243D54ED8();
}

uint64_t sub_243D371EC(uint64_t a1)
{
  sub_243D552E8();
  sub_243D54ED8();

  return sub_243D55308();
}

uint64_t sub_243D3727C@<X0>(char *a2@<X8>)
{
  v3 = sub_243D55178();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_243D372DC(unint64_t *a1@<X8>)
{
  v2 = 0x8000000243D5E5F0;
  v3 = 0xD000000000000013;
  if (*v1)
  {
    v3 = 0x51636972656E6567;
    v2 = 0xED000065646F4352;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_243D373EC()
{
  if (*v0)
  {
    return 0x51636972656E6567;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t CPSRequesterUseCaseConfiguration.useCase.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.useCase.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.init(useCase:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  *a2 = 0;
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  v5 = v4[5];
  v6 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v8 = &a2[v4[6]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[v4[7]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[v4[8]];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&a2[v4[9]] = 0;
  v11 = &a2[v4[10]];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a2[v4[11]] = 0;
  a2[v4[12]] = v3;
  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3D8, &qword_243D59758);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v33 - v2;
  v34 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243D54D18();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_243D54D08();
  v37 = 0x3D65736143657375;
  v38 = 0xE800000000000000;
  v9 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  if (*(v0 + v9[12]))
  {
    v10 = 0x51636972656E6567;
  }

  else
  {
    v10 = 0xD000000000000013;
  }

  if (*(v0 + v9[12]))
  {
    v11 = 0xED000065646F4352;
  }

  else
  {
    v11 = 0x8000000243D5E5F0;
  }

  MEMORY[0x245D4FE20](v10, v11);

  sub_243D54EC8();

  v12 = (v0 + v9[6]);
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_243D550E8();

    v37 = 0xD000000000000018;
    v38 = 0x8000000243D5E940;
    MEMORY[0x245D4FE20](v14, v13);
    sub_243D54EC8();
  }

  v15 = (v0 + v9[7]);
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_243D550E8();

    v37 = 0xD00000000000001BLL;
    v38 = 0x8000000243D5E920;
    MEMORY[0x245D4FE20](v17, v16);
    sub_243D54EC8();
  }

  v18 = (v0 + v9[8]);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_243D550E8();

    v37 = 0xD000000000000012;
    v38 = 0x8000000243D5E900;
    MEMORY[0x245D4FE20](v20, v19);
    sub_243D54EC8();
  }

  v21 = *(v0 + v9[9]);
  if (v21)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_243D550E8();

    v37 = 0xD000000000000019;
    v38 = 0x8000000243D5E8E0;
    v22 = MEMORY[0x245D4FE60](v21, MEMORY[0x277D837D0]);
    MEMORY[0x245D4FE20](v22);

    sub_243D54EC8();
  }

  v23 = (v0 + v9[10]);
  v24 = v23[1];
  if (v24)
  {
    v25 = *v23;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_243D550E8();

    v37 = 0xD000000000000011;
    v38 = 0x8000000243D5E8C0;
    MEMORY[0x245D4FE20](v25, v24);
    sub_243D54EC8();
  }

  v26 = *(v0 + v9[11]);
  if (v26)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_243D550E8();

    v37 = 0xD000000000000018;
    v38 = 0x8000000243D5E8A0;
    v27 = MEMORY[0x245D4FE60](v26, MEMORY[0x277D837D0]);
    MEMORY[0x245D4FE20](v27);

    sub_243D54EC8();
  }

  sub_243D3CC40(v0 + v9[5], v3, &qword_27EDAF3D8, &qword_243D59758);
  if ((*(v4 + 48))(v3, 1, v34) == 1)
  {
    sub_243D37C3C(v3);
    v28 = *v0;
    if (!*v0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v29 = v33;
  sub_243D33188(v3, v33, type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_243D550E8();

  v37 = 0xD000000000000016;
  v38 = 0x8000000243D5E880;
  v30 = CPSRequesterUseCaseConfiguration.RequesterAlternative.description.getter();
  MEMORY[0x245D4FE20](v30);

  MEMORY[0x245D4FE20](125, 0xE100000000000000);
  sub_243D54EC8();

  sub_243D392C8(v29, type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative);
  v28 = *v0;
  if (*v0)
  {
LABEL_23:
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_243D550E8();

    v37 = 0xD000000000000015;
    v38 = 0x8000000243D5E860;
    v31 = MEMORY[0x245D4FE60](v28, MEMORY[0x277D837D0]);
    MEMORY[0x245D4FE20](v31);

    sub_243D54EC8();
  }

LABEL_24:
  (*(v35 + 8))(v8, v36);
  return v39;
}

uint64_t sub_243D37C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3D8, &qword_243D59758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static CPSRequesterUseCaseConfiguration.genericAppleAccount(username:requesterIconSystemName:requesterLocalizedFilename:requesterTitleKey:requesterBodyKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v37 = a7;
  v38 = a8;
  v35 = a5;
  v36 = a6;
  v34[0] = a3;
  v41 = a1;
  v42 = a2;
  v43 = a9;
  v39 = a10;
  v40 = a11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3D8, &qword_243D59758);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (v34 - v13);
  v15 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  v16 = (v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v34[1] = v34 - v23;
  MEMORY[0x28223BE20](v22);
  v34[2] = v34 - v24;
  *v19 = 0;
  v25 = v16[7];
  v26 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
  v27 = *(*(v26 - 8) + 56);
  v27(&v19[v25], 1, 1, v26);
  v28 = &v19[v16[8]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v19[v16[9]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v19[v16[10]];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v19[v16[11]] = 0;
  v31 = &v19[v16[12]];
  *v31 = 0;
  *(v31 + 1) = 0;
  *&v19[v16[13]] = 0;
  v19[v16[14]] = 0;
  swift_getKeyPath();
  v44 = v34[0];
  v45 = a4;
  sub_243D33140(&qword_27EDAF3E0, type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);

  sub_243D54CE8();

  swift_getKeyPath();
  v44 = v35;
  v45 = v36;
  sub_243D54CD8();

  swift_getKeyPath();
  v44 = v37;
  v45 = v38;

  sub_243D54CE8();

  swift_getKeyPath();
  v44 = v39;
  v45 = v40;

  sub_243D54CE8();

  swift_getKeyPath();
  v32 = v42;
  *v14 = v41;
  v14[1] = v32;
  swift_storeEnumTagMultiPayload();
  v27(v14, 0, 1, v26);

  sub_243D54CE8();

  return sub_243D37C3C(v14);
}

uint64_t static CPSRequesterUseCaseConfiguration.genericQRCode(url:providerCode:requesterIconSystemName:requesterLocalizedFilename:requesterTitleKey:requesterBodyKey:qrCodeTitleKey:qrCodeSubtitleKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(&v41 + 1) = a5;
  v42 = a6;
  *&v41 = a4;
  v51 = a3;
  v52 = a7;
  v49 = a2;
  v50 = a13;
  v47 = a11;
  v48 = a12;
  v45 = a1;
  v46 = a10;
  v44 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3D8, &qword_243D59758);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v40 - v14;
  v16 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  v17 = (v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v40[1] = v40 - v24;
  *v20 = 0;
  v25 = v17[7];
  v26 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
  v43 = *(*(v26 - 8) + 56);
  v43(&v20[v25], 1, 1, v26);
  v27 = &v20[v17[8]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v20[v17[9]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v20[v17[10]];
  *v29 = 0;
  *(v29 + 1) = 0;
  *&v20[v17[11]] = 0;
  v30 = &v20[v17[12]];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v20[v17[13]] = 0;
  v20[v17[14]] = 1;
  swift_getKeyPath();
  v53 = xmmword_243D595E0;
  sub_243D33140(&qword_27EDAF3E0, type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);
  sub_243D54CE8();

  swift_getKeyPath();
  v53 = v41;
  sub_243D54CD8();

  swift_getKeyPath();
  *&v53 = v42;
  *(&v53 + 1) = a8;

  sub_243D54CE8();

  swift_getKeyPath();
  v53 = v44;

  sub_243D54CE8();

  swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8F0, &qword_243D59710);
  v32 = &v15[v31[12]];
  v33 = &v15[v31[16]];
  v34 = &v15[v31[20]];
  v35 = sub_243D54BA8();
  (*(*(v35 - 8) + 16))(v15, v45, v35);
  v36 = v51;
  *v32 = v49;
  v32[1] = v36;
  v37 = v47;
  *v33 = v46;
  v33[1] = v37;
  v38 = v50;
  *v34 = v48;
  v34[1] = v38;
  swift_storeEnumTagMultiPayload();
  v43(v15, 0, 1, v26);

  sub_243D54CE8();

  return sub_243D37C3C(v15);
}

unint64_t sub_243D384D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0xD00000000000001ALL;
    if (a1 == 2)
    {
      v4 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x65736143657375;
    if (a1 == 7)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD000000000000018;
    if (a1 == 4)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_243D38614@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_243D3C690(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_243D38648(uint64_t a1)
{
  v2 = sub_243D38A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D38684(uint64_t a1)
{
  v2 = sub_243D38A58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSRequesterUseCaseConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3E8, &qword_243D59800);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D38A58();
  sub_243D55338();
  v13 = *v3;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3F8, &qword_243D59808);
  sub_243D39208(&qword_27EDAF400, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_243D55238();
  if (!v2)
  {
    v11 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
    LOBYTE(v13) = 1;
    type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
    sub_243D33140(&qword_27EDAF408, type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration.RequesterAlternative);
    sub_243D55238();
    v9 = v11;
    LOBYTE(v13) = 2;
    sub_243D55228();
    LOBYTE(v13) = 3;
    sub_243D55228();
    LOBYTE(v13) = 4;
    sub_243D55228();
    v13 = *(v3 + v9[9]);
    v12 = 5;
    sub_243D55238();
    LOBYTE(v13) = 6;
    sub_243D55228();
    v13 = *(v3 + v9[11]);
    v12 = 7;
    sub_243D55238();
    LOBYTE(v13) = *(v3 + v9[12]);
    v12 = 8;
    sub_243D38AAC();
    sub_243D55268();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_243D38A58()
{
  result = qword_27EDAF3F0;
  if (!qword_27EDAF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF3F0);
  }

  return result;
}

unint64_t sub_243D38AAC()
{
  result = qword_27EDAF410;
  if (!qword_27EDAF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF410);
  }

  return result;
}

uint64_t CPSRequesterUseCaseConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3D8, &qword_243D59758);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF418, &qword_243D59810);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v44 - v8;
  v10 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 20);
  v15 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
  v16 = *(*(v15 - 8) + 56);
  v52 = v13;
  v53 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_243D38A58();
  v49 = v9;
  sub_243D55328();
  if (v2)
  {
    v51 = v2;
LABEL_4:
    v21 = v52;
    v22 = v53;
    __swift_destroy_boxed_opaque_existential_1(v50);

    sub_243D37C3C(v21 + v22);
  }

  v45 = v10;
  v18 = v47;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3F8, &qword_243D59808);
  v54 = 0;
  v20 = sub_243D39208(&qword_27EDAF420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_243D551B8();
  v44[3] = v20;
  v51 = v19;
  v24 = v55;
  v25 = v52;
  *v52 = v55;
  LOBYTE(v55) = 1;
  sub_243D33140(&qword_27EDAF428, type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration.RequesterAlternative);
  sub_243D551B8();
  sub_243D369F4(v6, v25 + v53);
  LOBYTE(v55) = 2;
  v26 = sub_243D551A8();
  v44[1] = v27;
  v44[2] = v24;
  v28 = v45;
  v29 = (v25 + v45[6]);
  *v29 = v26;
  v29[1] = v27;
  LOBYTE(v55) = 3;
  v30 = sub_243D551A8();
  v31 = v18;
  v32 = (v25 + v28[7]);
  *v32 = v30;
  v32[1] = v33;
  v44[0] = v33;
  LOBYTE(v55) = 4;
  v34 = sub_243D551A8();
  v35 = (v25 + v28[8]);
  *v35 = v34;
  v35[1] = v36;
  v54 = 5;
  sub_243D551B8();
  *(v25 + v28[9]) = v55;
  LOBYTE(v55) = 6;
  v37 = sub_243D551A8();
  v38 = (v25 + v28[10]);
  *v38 = v37;
  v38[1] = v39;
  v54 = 7;
  sub_243D551B8();
  v51 = 0;
  *(v52 + v28[11]) = v55;
  v54 = 8;
  sub_243D39274();
  v41 = v48;
  v40 = v49;
  v42 = v51;
  sub_243D551E8();
  (*(v31 + 8))(v40, v41);
  v51 = v42;
  if (v42)
  {
    goto LABEL_4;
  }

  v43 = v52;
  *(v52 + v28[12]) = v55;
  sub_243D351F4(v43, v46, type metadata accessor for CPSRequesterUseCaseConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_243D392C8(v43, type metadata accessor for CPSRequesterUseCaseConfiguration);
}

uint64_t sub_243D39208(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF3F8, &qword_243D59808);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243D39274()
{
  result = qword_27EDAF430;
  if (!qword_27EDAF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF430);
  }

  return result;
}

uint64_t sub_243D392C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_243D39374()
{
  result = 0.0;
  xmmword_27EDAF1F0 = 0u;
  unk_27EDAF200 = 0u;
  LOBYTE(xmmword_27EDAF210) = -1;
  *(&xmmword_27EDAF210 + 1) = 0;
  unk_27EDAF220 = 0;
  byte_27EDAF228 = -1;
  xmmword_27EDAF230 = 0u;
  xmmword_27EDAF240 = 0u;
  xmmword_27EDAF250 = 0u;
  xmmword_27EDAF260 = 0u;
  xmmword_27EDAF270 = 0u;
  xmmword_27EDAF280 = 0u;
  byte_27EDAF290 = -1;
  return result;
}

uint64_t static CPSResponderUseCaseConfiguration.base.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EDAEC68 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_27EDAF260;
  v13[8] = xmmword_27EDAF270;
  v13[9] = xmmword_27EDAF280;
  v2 = unk_27EDAF220;
  v3 = xmmword_27EDAF230;
  v13[4] = xmmword_27EDAF230;
  v13[5] = xmmword_27EDAF240;
  v4 = xmmword_27EDAF240;
  v5 = xmmword_27EDAF250;
  v13[6] = xmmword_27EDAF250;
  v13[7] = xmmword_27EDAF260;
  v13[0] = xmmword_27EDAF1F0;
  v13[1] = unk_27EDAF200;
  v7 = xmmword_27EDAF1F0;
  v6 = unk_27EDAF200;
  v8 = xmmword_27EDAF210;
  v13[2] = xmmword_27EDAF210;
  v13[3] = unk_27EDAF220;
  v9 = xmmword_27EDAF280;
  *(a1 + 128) = xmmword_27EDAF270;
  *(a1 + 144) = v9;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 112) = v1;
  *a1 = v7;
  *(a1 + 16) = v6;
  v14 = byte_27EDAF290;
  *(a1 + 160) = byte_27EDAF290;
  *(a1 + 32) = v8;
  *(a1 + 48) = v2;
  return sub_243D39488(v13, v12);
}

uint64_t CPSResponderUseCaseConfiguration.bannerLocalizedFilename.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CPSResponderUseCaseConfiguration.bannerLocalizedFilename.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CPSResponderUseCaseConfiguration.bannerTitleKey.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_243D3955C(v2, v3, v4);
}

uint64_t sub_243D3955C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_243D39574(result, a2);
  }

  return result;
}

uint64_t CPSResponderUseCaseConfiguration.bannerTitleKey.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_243D395BC(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_243D395BC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_243D395D4(result, a2);
  }

  return result;
}

uint64_t CPSResponderUseCaseConfiguration.bannerBodyKey.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_243D3955C(v2, v3, v4);
}

uint64_t CPSResponderUseCaseConfiguration.bannerBodyKey.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_243D395BC(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t CPSResponderUseCaseConfiguration.bannerIconSystemName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t CPSResponderUseCaseConfiguration.bannerIconSystemName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t CPSResponderUseCaseConfiguration.bannerCategoryID.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t CPSResponderUseCaseConfiguration.bannerCategoryID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t CPSResponderUseCaseConfiguration.bannerDefaultActionID.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t CPSResponderUseCaseConfiguration.bannerDefaultActionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t CPSResponderUseCaseConfiguration.bannerOtherActionID.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t CPSResponderUseCaseConfiguration.bannerOtherActionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t CPSResponderUseCaseConfiguration.name.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t CPSResponderUseCaseConfiguration.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t CPSResponderUseCaseConfiguration.proxCard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 152);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 160);
  *(a1 + 16) = v4;
  return sub_243D3955C(v2, v3, v4);
}

uint64_t CPSResponderUseCaseConfiguration.proxCard.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_243D395BC(*(v1 + 144), *(v1 + 152), *(v1 + 160));
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  *(v1 + 160) = v4;
  return result;
}

uint64_t CPSResponderUseCaseConfiguration.description.getter()
{
  v1 = sub_243D54D18();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v4 = v0[1];
  v6 = v0[2];
  v7 = v0[3];
  v8 = *(v0 + 32);
  v9 = v0[5];
  v25 = v0[6];
  v26 = v9;
  v24 = *(v0 + 56);
  v10 = v0[8];
  v27 = v0[9];
  v28 = v10;
  v11 = v0[11];
  v21 = v0[10];
  v29 = v11;
  v12 = v0[13];
  v22 = v0[12];
  v13 = v0[15];
  v23 = v0[14];
  v30 = v12;
  v31 = v13;
  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[18];
  v33 = v0[19];
  v34 = v16;
  v32 = *(v0 + 160);
  v42 = 0;
  v43 = 0xE000000000000000;

  sub_243D54D08();
  v37 = 0;
  v38 = 0xE000000000000000;
  MEMORY[0x245D4FE20](0x3D656D616ELL, 0xE500000000000000);
  v40 = v15;
  v41 = v14;
  sub_243D55298();

  sub_243D54EC8();

  if (v4)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_243D550E8();

    v37 = 0xD000000000000018;
    v38 = 0x8000000243D5E9E0;
    MEMORY[0x245D4FE20](v5, v4);
    sub_243D54EC8();
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_243D550E8();
  v40 = v37;
  v41 = v38;
  MEMORY[0x245D4FE20](0x695472656E6E6162, 0xEF3D79654B656C74);
  v37 = v6;
  v38 = v7;
  v39 = v8;
  sub_243D3955C(v6, v7, v8);
  sub_243D39EE8();
  sub_243D55298();
  sub_243D395BC(v37, v38, v39);
  sub_243D54EC8();

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_243D550E8();
  v40 = v37;
  v41 = v38;
  MEMORY[0x245D4FE20](0x6F4272656E6E6162, 0xEE003D79654B7964);
  v37 = v26;
  v38 = v25;
  v39 = v24;
  sub_243D3955C(v26, v25, v24);
  sub_243D55298();
  sub_243D395BC(v37, v38, v39);
  sub_243D54EC8();

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_243D550E8();
  MEMORY[0x245D4FE20](0xD000000000000015, 0x8000000243D5E960);
  v40 = v28;
  v41 = v27;
  sub_243D55298();
  sub_243D54EC8();

  v17 = v29;
  if (v29)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_243D550E8();

    v37 = 0xD000000000000011;
    v38 = 0x8000000243D5E9C0;
    MEMORY[0x245D4FE20](v21, v17);
    sub_243D54EC8();
  }

  v18 = v30;
  if (v30)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_243D550E8();

    v37 = 0xD000000000000016;
    v38 = 0x8000000243D5E9A0;
    MEMORY[0x245D4FE20](v22, v18);
    sub_243D54EC8();
  }

  v19 = v31;
  if (v31)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_243D550E8();

    v37 = 0xD000000000000014;
    v38 = 0x8000000243D5E980;
    MEMORY[0x245D4FE20](v23, v19);
    sub_243D54EC8();
  }

  v40 = 0;
  v41 = 0xE000000000000000;
  MEMORY[0x245D4FE20](0x64726143786F7270, 0xEA00000000007B3DLL);
  v37 = v34;
  v38 = v33;
  v39 = v32;
  sub_243D3955C(v34, v33, v32);
  sub_243D39F3C();
  sub_243D55298();
  sub_243D395BC(v37, v38, v39);
  MEMORY[0x245D4FE20](125, 0xE100000000000000);
  sub_243D54EC8();

  (*(v35 + 8))(v3, v36);
  return v42;
}

unint64_t sub_243D39EE8()
{
  result = qword_27EDAF438;
  if (!qword_27EDAF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF438);
  }

  return result;
}

unint64_t sub_243D39F3C()
{
  result = qword_27EDAF440;
  if (!qword_27EDAF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF440);
  }

  return result;
}

unint64_t CPSResponderUseCaseConfiguration.ProxCard.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    sub_243D550E8();

    v4 = 0xD000000000000012;
  }

  else
  {
    sub_243D550E8();

    v4 = 0xD00000000000001BLL;
  }

  MEMORY[0x245D4FE20](v1, v2);
  return v4;
}

void *sub_243D3A054()
{
  result = sub_243D3A074();
  qword_27EDAF298 = result;
  return result;
}

void *sub_243D3A074()
{
  v0 = sub_243D3C9C4(MEMORY[0x277D84F90]);
  v1 = 0;
  for (i = 0; ; i = 1u)
  {
    v31 = v1;
    v40 = *(&unk_2856F3940 + i + 32);
    if (v40)
    {
      if (qword_27EDAEC68 != -1)
      {
        swift_once();
      }

      v61 = xmmword_27EDAF270;
      v62 = xmmword_27EDAF280;
      v57 = xmmword_27EDAF230;
      v58 = xmmword_27EDAF240;
      v59 = xmmword_27EDAF250;
      v60 = xmmword_27EDAF260;
      v53 = xmmword_27EDAF1F0;
      v54 = unk_27EDAF200;
      v55 = xmmword_27EDAF210;
      v56 = unk_27EDAF220;
      v63 = byte_27EDAF290;
      swift_getKeyPath();
      sub_243D39488(&v53, v41);
      sub_243D3CBBC();
      sub_243D54CE8();

      swift_getKeyPath();
      sub_243D54CE8();

      sub_243D395BC(0x7469542074736554, 0xEA0000000000656CLL, 0);
      swift_getKeyPath();
      sub_243D54CE8();

      sub_243D395BC(0x646F422074736554, 0xE900000000000079, 0);
      swift_getKeyPath();
      sub_243D54CE8();

      swift_getKeyPath();
    }

    else
    {
      if (qword_27EDAEC68 != -1)
      {
        swift_once();
      }

      v61 = xmmword_27EDAF270;
      v62 = xmmword_27EDAF280;
      v57 = xmmword_27EDAF230;
      v58 = xmmword_27EDAF240;
      v59 = xmmword_27EDAF250;
      v60 = xmmword_27EDAF260;
      v53 = xmmword_27EDAF1F0;
      v54 = unk_27EDAF200;
      v55 = xmmword_27EDAF210;
      v56 = unk_27EDAF220;
      v63 = byte_27EDAF290;
      swift_getKeyPath();
      sub_243D39488(&v53, v41);
      sub_243D3CBBC();
      sub_243D54CE8();

      swift_getKeyPath();
      sub_243D54CE8();

      sub_243D395BC(0x7469542074736554, 0xEA0000000000656CLL, 0);
      swift_getKeyPath();
      sub_243D54CE8();

      sub_243D395BC(0x646F422074736554, 0xE900000000000079, 0);
      swift_getKeyPath();
      sub_243D54CE8();

      swift_getKeyPath();
      sub_243D54CE8();

      swift_getKeyPath();
      sub_243D54CE8();

      swift_getKeyPath();
    }

    sub_243D54CE8();

    v38 = v41[0];
    v39 = v41[1];
    v12 = v42;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v36 = v49;
    v37 = v47;
    v33 = v48;
    v34 = v46;
    v35 = v51;
    v32 = v50;
    v16 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v41[0] = v0;
    v18 = sub_243D4AA18(v40);
    v20 = v0[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v0[3] < v23)
    {
      sub_243D4AB14(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_243D4AA18(v40);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_24;
      }

LABEL_16:
      if (v24)
      {
        goto LABEL_2;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v29 = v18;
    sub_243D4B844();
    v18 = v29;
    if (v24)
    {
LABEL_2:
      v0 = *&v41[0];
      v3 = *(*&v41[0] + 56) + 168 * v18;
      v5 = *(v3 + 16);
      v4 = *(v3 + 32);
      v53 = *v3;
      v54 = v5;
      v55 = v4;
      v6 = *(v3 + 96);
      v8 = *(v3 + 48);
      v7 = *(v3 + 64);
      v58 = *(v3 + 80);
      v59 = v6;
      v56 = v8;
      v57 = v7;
      v10 = *(v3 + 128);
      v9 = *(v3 + 144);
      v11 = *(v3 + 112);
      v63 = *(v3 + 160);
      v61 = v10;
      v62 = v9;
      v60 = v11;
      *v3 = v38;
      *(v3 + 16) = v39;
      *(v3 + 32) = v12;
      *(v3 + 40) = v13;
      *(v3 + 48) = v14;
      *(v3 + 56) = v15;
      *(v3 + 64) = v34;
      *(v3 + 80) = v37;
      *(v3 + 96) = v33;
      *(v3 + 112) = v36;
      *(v3 + 128) = v32;
      *(v3 + 144) = v35;
      *(v3 + 160) = v16;
      sub_243D3CC10(&v53);
      goto LABEL_3;
    }

LABEL_17:
    v0 = *&v41[0];
    *(*&v41[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(v0[6] + v18) = v40;
    v26 = v0[7] + 168 * v18;
    *v26 = v38;
    *(v26 + 16) = v39;
    *(v26 + 32) = v12;
    *(v26 + 40) = v13;
    *(v26 + 48) = v14;
    *(v26 + 56) = v15;
    *(v26 + 64) = v34;
    *(v26 + 80) = v37;
    *(v26 + 96) = v33;
    *(v26 + 112) = v36;
    *(v26 + 128) = v32;
    *(v26 + 144) = v35;
    *(v26 + 160) = v16;
    v27 = v0[2];
    v22 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v22)
    {
      goto LABEL_23;
    }

    v0[2] = v28;
LABEL_3:
    v1 = 1;
    if (v31)
    {
      return v0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_243D552C8();
  __break(1u);
  return result;
}

uint64_t static CPSResponderUseCaseConfiguration.useCases.getter()
{
  if (qword_27EDAEC70 != -1)
  {
    swift_once();
  }
}

unint64_t sub_243D3AA90()
{
  result = qword_27EDAF468;
  if (!qword_27EDAF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF468);
  }

  return result;
}

unint64_t sub_243D3AAE8()
{
  result = qword_27EDAF470;
  if (!qword_27EDAF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF470);
  }

  return result;
}

unint64_t sub_243D3AB88()
{
  result = qword_27EDAF478;
  if (!qword_27EDAF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF478);
  }

  return result;
}

unint64_t sub_243D3ABE0()
{
  result = qword_27EDAF480;
  if (!qword_27EDAF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF480);
  }

  return result;
}

unint64_t sub_243D3AC38()
{
  result = qword_27EDAF488;
  if (!qword_27EDAF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF488);
  }

  return result;
}

unint64_t sub_243D3AC90()
{
  result = qword_27EDAF490;
  if (!qword_27EDAF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF490);
  }

  return result;
}

unint64_t sub_243D3ACE8()
{
  result = qword_27EDAF498;
  if (!qword_27EDAF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF498);
  }

  return result;
}

unint64_t sub_243D3AD40()
{
  result = qword_27EDAF4A0;
  if (!qword_27EDAF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF4A0);
  }

  return result;
}

unint64_t sub_243D3AD98()
{
  result = qword_27EDAF4A8;
  if (!qword_27EDAF4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF4B0, &qword_243D59D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF4A8);
  }

  return result;
}

uint64_t sub_243D3AE24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_243D3AEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_243D3AF14(uint64_t a1)
{
  result = type metadata accessor for CPSRequesterUseCaseConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_243D3AF90(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_243D3AFEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_243D3B074(uint64_t *a1, int a2)
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

uint64_t sub_243D3B0BC(uint64_t result, int a2, int a3)
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

uint64_t sub_243D3B134(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3D8, &qword_243D59758);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_243D3B210(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF3D8, &qword_243D59758);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243D3B2C0(uint64_t a1)
{
  sub_243D3B37C(319);
  if (v1 <= 0x3F)
  {
    sub_243D3B3E0(319);
    if (v2 <= 0x3F)
    {
      sub_243D3B438();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243D3B37C(uint64_t a1)
{
  if (!qword_27EDAF4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF3F8, &qword_243D59808);
    v1 = sub_243D550A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDAF4D8);
    }
  }
}

void sub_243D3B3E0(uint64_t a1)
{
  if (!qword_27EDAF4E0)
  {
    type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(255);
    v1 = sub_243D550A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDAF4E0);
    }
  }
}

void sub_243D3B438()
{
  if (!qword_27EDAF4E8)
  {
    v0 = sub_243D550A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDAF4E8);
    }
  }
}

void sub_243D3B488(uint64_t a1)
{
  sub_243D3B4FC();
  if (v1 <= 0x3F)
  {
    sub_243D3B544(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_243D3B4FC()
{
  if (!qword_27EDAF500)
  {
    sub_243D3B438();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDAF500);
    }
  }
}

void sub_243D3B544(uint64_t a1)
{
  if (!qword_27EDAF508)
  {
    MEMORY[0x28223BE20](a1);
    sub_243D54BA8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF510, &qword_243D5A178);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27EDAF508);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_17CompanionServices32CPSResponderUseCaseConfigurationV8ProxCardOSg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_243D3B6D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
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

uint64_t sub_243D3B72C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CPSRequesterUseCaseConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CPSRequesterUseCaseConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243D3B9C0()
{
  result = qword_27EDAF518;
  if (!qword_27EDAF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF518);
  }

  return result;
}

unint64_t sub_243D3BA18()
{
  result = qword_27EDAF520;
  if (!qword_27EDAF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF520);
  }

  return result;
}

unint64_t sub_243D3BA70()
{
  result = qword_27EDAF528;
  if (!qword_27EDAF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF528);
  }

  return result;
}

unint64_t sub_243D3BAC8()
{
  result = qword_27EDAF530;
  if (!qword_27EDAF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF530);
  }

  return result;
}

unint64_t sub_243D3BB20()
{
  result = qword_27EDAF538;
  if (!qword_27EDAF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF538);
  }

  return result;
}

unint64_t sub_243D3BB78()
{
  result = qword_27EDAF540;
  if (!qword_27EDAF540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF540);
  }

  return result;
}

unint64_t sub_243D3BBD0()
{
  result = qword_27EDAF548;
  if (!qword_27EDAF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF548);
  }

  return result;
}

unint64_t sub_243D3BC28()
{
  result = qword_27EDAF550;
  if (!qword_27EDAF550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF550);
  }

  return result;
}

unint64_t sub_243D3BC80()
{
  result = qword_27EDAF558;
  if (!qword_27EDAF558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF558);
  }

  return result;
}

unint64_t sub_243D3BCD8()
{
  result = qword_27EDAF560;
  if (!qword_27EDAF560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF560);
  }

  return result;
}

unint64_t sub_243D3BD30()
{
  result = qword_27EDAF568;
  if (!qword_27EDAF568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF568);
  }

  return result;
}

unint64_t sub_243D3BD88()
{
  result = qword_27EDAF570;
  if (!qword_27EDAF570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF570);
  }

  return result;
}

unint64_t sub_243D3BDE0()
{
  result = qword_27EDAF578;
  if (!qword_27EDAF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF578);
  }

  return result;
}

unint64_t sub_243D3BE38()
{
  result = qword_27EDAF580;
  if (!qword_27EDAF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF580);
  }

  return result;
}

unint64_t sub_243D3BE90()
{
  result = qword_27EDAF588;
  if (!qword_27EDAF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF588);
  }

  return result;
}

unint64_t sub_243D3BEE8()
{
  result = qword_27EDAF590;
  if (!qword_27EDAF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF590);
  }

  return result;
}

unint64_t sub_243D3BF40()
{
  result = qword_27EDAF598;
  if (!qword_27EDAF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF598);
  }

  return result;
}

unint64_t sub_243D3BF98()
{
  result = qword_27EDAF5A0;
  if (!qword_27EDAF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5A0);
  }

  return result;
}

unint64_t sub_243D3BFF0()
{
  result = qword_27EDAF5A8;
  if (!qword_27EDAF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5A8);
  }

  return result;
}

unint64_t sub_243D3C048()
{
  result = qword_27EDAF5B0;
  if (!qword_27EDAF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5B0);
  }

  return result;
}

unint64_t sub_243D3C0A0()
{
  result = qword_27EDAF5B8;
  if (!qword_27EDAF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5B8);
  }

  return result;
}

unint64_t sub_243D3C0F8()
{
  result = qword_27EDAF5C0;
  if (!qword_27EDAF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5C0);
  }

  return result;
}

unint64_t sub_243D3C150()
{
  result = qword_27EDAF5C8;
  if (!qword_27EDAF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5C8);
  }

  return result;
}

unint64_t sub_243D3C1A8()
{
  result = qword_27EDAF5D0;
  if (!qword_27EDAF5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5D0);
  }

  return result;
}

unint64_t sub_243D3C200()
{
  result = qword_27EDAF5D8;
  if (!qword_27EDAF5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5D8);
  }

  return result;
}

unint64_t sub_243D3C258()
{
  result = qword_27EDAF5E0;
  if (!qword_27EDAF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5E0);
  }

  return result;
}

unint64_t sub_243D3C2B0()
{
  result = qword_27EDAF5E8;
  if (!qword_27EDAF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5E8);
  }

  return result;
}

unint64_t sub_243D3C308()
{
  result = qword_27EDAF5F0;
  if (!qword_27EDAF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5F0);
  }

  return result;
}

unint64_t sub_243D3C360()
{
  result = qword_27EDAF5F8;
  if (!qword_27EDAF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF5F8);
  }

  return result;
}

unint64_t sub_243D3C3B8()
{
  result = qword_27EDAF600;
  if (!qword_27EDAF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF600);
  }

  return result;
}

uint64_t sub_243D3C40C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F6373736170 && a2 == 0xE800000000000000;
  if (v4 || (sub_243D552A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000 || (sub_243D552A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x525565646F437271 && a2 == 0xE90000000000004CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_243D552A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_243D3C52C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_243D552A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEC00000065646F43 || (sub_243D552A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_243D552A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_243D552A8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_243D3C690(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000243D5EA70 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000243D5EA90 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000243D5EAB0 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000243D5EAD0 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000243D5EAF0 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000243D5EB10 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000243D5EB30 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000243D5EB50 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_243D552A8();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_243D3C970()
{
  result = qword_27EDAF608;
  if (!qword_27EDAF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF608);
  }

  return result;
}