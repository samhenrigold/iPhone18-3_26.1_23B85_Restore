void sub_260D138B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSGMultiHeadInferenceClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreSuggestionsMLLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreSuggestionsMLLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279ABC638;
    v8 = 0;
    CoreSuggestionsMLLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreSuggestionsMLLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreSuggestionsMLLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PREResponsesServerDelegate.m" lineNumber:24 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SGMultiHeadInference");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSGMultiHeadInferenceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PREResponsesServerDelegate.m" lineNumber:25 description:{@"Unable to find class %s", "SGMultiHeadInference"}];

LABEL_10:
    __break(1u);
  }

  getSGMultiHeadInferenceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSuggestionsMLLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreSuggestionsMLLibraryCore_frameworkLibrary = result;
  return result;
}

id procNameForPid(int a1, int *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x400uLL);
  *__error() = 0;
  v4 = proc_name(a1, buffer, 0x400u);
  if (a2)
  {
    *a2 = *__error();
  }

  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v4 encoding:4];
  }

  return v5;
}

void sub_260D14A80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 160));
  _Unwind_Resume(a1);
}

id pre_sv_xpc_handle()
{
  if (pre_sv_xpc_handle__pasOnceToken0 != -1)
  {
    dispatch_once(&pre_sv_xpc_handle__pasOnceToken0, &__block_literal_global_15);
  }

  v1 = pre_sv_xpc_handle__pasExprOnceResult;

  return v1;
}

void __pre_sv_xpc_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.private.proactive.experiments", "Server XPCClient");
  v2 = pre_sv_xpc_handle__pasExprOnceResult;
  pre_sv_xpc_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pre_sv_responses_handle()
{
  if (pre_sv_responses_handle__pasOnceToken1 != -1)
  {
    dispatch_once(&pre_sv_responses_handle__pasOnceToken1, &__block_literal_global_4);
  }

  v1 = pre_sv_responses_handle__pasExprOnceResult;

  return v1;
}

void __pre_sv_responses_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.private.proactive.experiments", "Server Responses");
  v2 = pre_sv_responses_handle__pasExprOnceResult;
  pre_sv_responses_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}