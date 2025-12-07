void sub_23AA4E9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sa_default_log(uint64_t a1)
{
  if (sa_default_log_onceToken != -1)
  {
    sa_default_log_cold_1();
  }

  v2 = sa_default_log___logger;

  return v2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23AA4F2C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id SAServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DABAB0];
  v1 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_dialVoiceCallToPhoneNumber_completionHandler_ argumentIndex:0 ofReply:0];

  v2 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v2 forSelector:sel_dialVoiceCallToPhoneNumber_completionHandler_ argumentIndex:1 ofReply:1];

  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v3 forSelector:sel_requestCrashDetectionAuthorization_ argumentIndex:1 ofReply:1];

  return v0;
}

id SAClientInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DAAB98];
  v1 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_updateMostRecentCrashDetectionEvent_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_23AA514F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23AA51F60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_23AA559E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_23AA56A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_23AA56BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_23AA56FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23AA571B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_23AA573E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23AA575E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23AA577DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23AA579D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23AA57B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, void *a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_23AA57CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, void *a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_23AA57F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void sub_23AA583AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_23AA58644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_23AA58A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_23AA58C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278B67A40, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t ___ZL44_CLLogObjectForCategory_CSConnection_Defaultv_block_invoke()
{
  logObject_CSConnection_Default = os_log_create("com.apple.anomalydetectiond", "CSConnection");

  return MEMORY[0x2821F96F8]();
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::__shared_ptr_emplace<CLConnectionMessage>::__shared_ptr_emplace[abi:ne200100]<std::string,NSNumber * {__strong},std::allocator<CLConnectionMessage>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284DA6AA8;
  MEMORY[0x23EE91A30](a1 + 3, a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<CLConnectionMessage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284DA6AA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE91AC0);
}

void *std::__shared_ptr_emplace<CLConnectionMessage>::__shared_ptr_emplace[abi:ne200100]<std::string,NSDictionary<NSString *,objc_object *> * {__strong}&,std::allocator<CLConnectionMessage>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284DA6AA8;
  MEMORY[0x23EE91A30](a1 + 3, a2, *a3);
  return a1;
}

void *std::__shared_ptr_emplace<CLConnectionMessage>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<CLConnectionMessage>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284DA6AA8;
  MEMORY[0x23EE91A20](a1 + 3);
  return a1;
}

void *std::__shared_ptr_emplace<CLConnectionMessage>::__shared_ptr_emplace[abi:ne200100]<std::string,NSDictionary * {__strong}&,std::allocator<CLConnectionMessage>,0>(void *a1, uint64_t a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284DA6AA8;
  MEMORY[0x23EE91A30](a1 + 3, a2, *a3);
  return a1;
}

uint64_t __sa_default_log_block_invoke()
{
  sa_default_log___logger = os_log_create("com.apple.SafetyKit", "default");

  return MEMORY[0x2821F96F8]();
}

void authorizationPromptResponseHandler(const void *a1, char a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = +[SAAuthorizationInFlight sharedInstance];
  v5 = [v4 isInFlight];
  if (v5)
  {
    if ((a2 & 3) - 2 < 2)
    {
      v6 = sa_default_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        authorizationPromptResponseHandler_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
      }

      v14 = [v4 completionHandler];
      v15 = [v4 preflightAuthorizationStatus];
      v16 = [SAError errorWithCode:4];
      (v14)[2](v14, v15, v16);

      [v4 reset];
      goto LABEL_39;
    }

    if ((a2 & 3) != 0)
    {
      v38 = sa_default_log(v5);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v4 toBundleId];
        v50 = 136315394;
        v51 = "void authorizationPromptResponseHandler(CFUserNotificationRef, CFOptionFlags)";
        v52 = 2112;
        v53 = v39;
        _os_log_impl(&dword_23AA4D000, v38, OS_LOG_TYPE_DEFAULT, "%s - Authorization not granted, denying permissions to app, bundleId: %@", &v50, 0x16u);
      }

      v40 = [v4 completionHandler];
      v40[2](v40, 1, 0);

      [v4 reset];
      goto LABEL_33;
    }

    v25 = [v4 fromApp];
    v26 = [v25 bundleId];

    if (!v26)
    {
      goto LABEL_14;
    }

    v28 = sa_default_log(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v50 = 136315394;
      v51 = "void authorizationPromptResponseHandler(CFUserNotificationRef, CFOptionFlags)";
      v52 = 2112;
      v53 = v26;
      _os_log_impl(&dword_23AA4D000, v28, OS_LOG_TYPE_DEFAULT, "%s - Authorization granted, revoking permissions from previous app, bundleId: %@", &v50, 0x16u);
    }

    v27 = [SAAuthorization setAccess:0 forBundleId:v26];
    if ((v27 & 1) == 0)
    {
      v44 = sa_default_log(v27);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        authorizationPromptResponseHandler_cold_3();
      }
    }

    else
    {
LABEL_14:
      v29 = sa_default_log(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v4 toBundleId];
        v50 = 136315394;
        v51 = "void authorizationPromptResponseHandler(CFUserNotificationRef, CFOptionFlags)";
        v52 = 2112;
        v53 = v30;
        _os_log_impl(&dword_23AA4D000, v29, OS_LOG_TYPE_DEFAULT, "%s - Authorization granted, granting permissions to app, bundleId: %@", &v50, 0x16u);
      }

      v31 = [v4 toBundleId];
      v32 = [SAAuthorization setAccess:1 forBundleId:v31];

      v34 = sa_default_log(v33);
      v35 = v34;
      if (v32)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v4 toBundleId];
          v50 = 136315394;
          v51 = "void authorizationPromptResponseHandler(CFUserNotificationRef, CFOptionFlags)";
          v52 = 2112;
          v53 = v36;
          _os_log_impl(&dword_23AA4D000, v35, OS_LOG_TYPE_DEFAULT, "%s - Successfully granted permissions to app, bundleId: %@", &v50, 0x16u);
        }

        v37 = [v4 completionHandler];
        v37[2](v37, 2, 0);

        [v4 reset];
        goto LABEL_32;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        authorizationPromptResponseHandler_cold_4(v4);
      }

      if (!v26)
      {
        goto LABEL_32;
      }

      v41 = [v4 toBundleId];
      v42 = [SAAuthorization setAccess:1 forBundleId:v41];

      if (v42)
      {
        goto LABEL_32;
      }

      v44 = sa_default_log(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        authorizationPromptResponseHandler_cold_5();
      }
    }

LABEL_32:
LABEL_33:
    v45 = [v4 isInFlight];
    if (v45)
    {
      v46 = sa_default_log(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        authorizationPromptResponseHandler_cold_6(v4);
      }

      v47 = [v4 completionHandler];
      v48 = [v4 preflightAuthorizationStatus];
      v49 = [SAError errorWithCode:4];
      (v47)[2](v47, v48, v49);

      [v4 reset];
    }

    if (a1)
    {
      CFRelease(a1);
    }

    goto LABEL_39;
  }

  v17 = sa_default_log(v5);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    authorizationPromptResponseHandler_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_39:
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t localMGGetBoolAnswer(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getMGGetBoolAnswerSymbolLoc_ptr;
  v8 = getMGGetBoolAnswerSymbolLoc_ptr;
  if (!getMGGetBoolAnswerSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getMGGetBoolAnswerSymbolLoc_block_invoke;
    v4[3] = &unk_278B680E8;
    v4[4] = &v5;
    __getMGGetBoolAnswerSymbolLoc_block_invoke(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    localMGGetBoolAnswer_cold_1();
  }

  return v2(a1);
}

void sub_23AA5BAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMGGetBoolAnswerSymbolLoc_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = libMobileGestaltLibraryCore_frameworkLibrary;
  v10 = libMobileGestaltLibraryCore_frameworkLibrary;
  if (!libMobileGestaltLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __libMobileGestaltLibraryCore_block_invoke;
    v4[4] = &unk_278B68128;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_278B68108;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libMobileGestaltLibraryCore_frameworkLibrary = *(v5[1] + 24);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    __getMGGetBoolAnswerSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MGGetBoolAnswer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetBoolAnswerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23AA5BC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMobileGestaltLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMobileGestaltLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void authorizationPromptResponseHandler_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void authorizationPromptResponseHandler(CFUserNotificationRef, CFOptionFlags)";
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, a1, a3, "%s - Authorization not in flight, this shouldn't be called.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void authorizationPromptResponseHandler_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "void authorizationPromptResponseHandler(CFUserNotificationRef, CFOptionFlags)";
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, a1, a3, "%s - No button was pressed and the notification timed out.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void authorizationPromptResponseHandler_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_23AA4D000, v0, OS_LOG_TYPE_ERROR, "%s - Failed to revoke permissions from previous app, bundleId: %@", v1, 0x16u);
}

void authorizationPromptResponseHandler_cold_4(void *a1)
{
  v1 = [a1 toBundleId];
  v8 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23AA4D000, v2, v3, "%s - Failed to grant permissions to app, bundleId: %@", v4, v5, v6, v7, v8);
}

void authorizationPromptResponseHandler_cold_5()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_23AA4D000, v0, OS_LOG_TYPE_FAULT, "%s - Failed to reinstate permissions to app, no app is authorized, bundleId: %@", v1, 0x16u);
}

void authorizationPromptResponseHandler_cold_6(void *a1)
{
  v1 = [a1 toBundleId];
  v8 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23AA4D000, v2, v3, "%s - Failed to successfully apply permissions to app, bundleId: %@", v4, v5, v6, v7, v8);
}

void localMGGetBoolAnswer_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_Bool localMGGetBoolAnswer(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"SAGestalt.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getMGGetBoolAnswerSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *libMobileGestaltLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SAGestalt.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
  CFBundleGetIdentifier(v4);
}

uint64_t CLConnectionClient::sendMessage()
{
  return MEMORY[0x282182D18]();
}

{
  return MEMORY[0x282182D20]();
}

uint64_t CLConnectionMessage::CLConnectionMessage()
{
  return MEMORY[0x282182D48]();
}

{
  return MEMORY[0x282182D50]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}