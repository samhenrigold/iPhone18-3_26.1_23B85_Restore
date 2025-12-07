void sub_2441681B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2441686D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_244169058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_244169A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24416A34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24416A568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getATXProactiveSuggestionClientModelClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ATXProactiveSuggestionClientModel");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getATXProactiveSuggestionClientModelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getATXProactiveSuggestionClientModelClass_block_invoke_cold_1();
    ProactiveSuggestionClientModelLibrary();
  }
}

void ProactiveSuggestionClientModelLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!ProactiveSuggestionClientModelLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __ProactiveSuggestionClientModelLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278E06DD8;
    v3 = 0;
    ProactiveSuggestionClientModelLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ProactiveSuggestionClientModelLibraryCore_frameworkLibrary)
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

uint64_t __ProactiveSuggestionClientModelLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ProactiveSuggestionClientModelLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getATXProactiveSuggestionClientModelSpecificationClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXProactiveSuggestionClientModelSpecification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getATXProactiveSuggestionClientModelSpecificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getATXProactiveSuggestionClientModelSpecificationClass_block_invoke_cold_1();
    return __getATXActionClass_block_invoke(v3);
  }

  return result;
}

Class __getATXActionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AppPredictionClientLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AppPredictionClientLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278E06E10;
    v6 = 0;
    AppPredictionClientLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppPredictionClientLibraryCore_frameworkLibrary)
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
  result = objc_getClass("ATXAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getATXActionClass_block_invoke_cold_1();
  }

  getATXActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppPredictionClientLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppPredictionClientLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getATXProactiveSuggestionExecutableSpecificationClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXProactiveSuggestionExecutableSpecification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getATXProactiveSuggestionExecutableSpecificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getATXProactiveSuggestionExecutableSpecificationClass_block_invoke_cold_1();
    return __getATXProactiveSuggestionUISpecificationClass_block_invoke(v3);
  }

  return result;
}

Class __getATXProactiveSuggestionUISpecificationClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXProactiveSuggestionUISpecification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getATXProactiveSuggestionUISpecificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getATXProactiveSuggestionUISpecificationClass_block_invoke_cold_1();
    return __getATXProactiveSuggestionLayoutConfigClass_block_invoke(v3);
  }

  return result;
}

Class __getATXProactiveSuggestionLayoutConfigClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXProactiveSuggestionLayoutConfig");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getATXProactiveSuggestionLayoutConfigClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getATXProactiveSuggestionLayoutConfigClass_block_invoke_cold_1();
    return __getATXProactiveSuggestionScoreSpecificationClass_block_invoke(v3);
  }

  return result;
}

Class __getATXProactiveSuggestionScoreSpecificationClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXProactiveSuggestionScoreSpecification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getATXProactiveSuggestionScoreSpecificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getATXProactiveSuggestionScoreSpecificationClass_block_invoke_cold_1();
    return __getATXProactiveSuggestionClass_block_invoke(v3);
  }

  return result;
}

Class __getATXProactiveSuggestionClass_block_invoke(uint64_t a1)
{
  ProactiveSuggestionClientModelLibrary();
  result = objc_getClass("ATXProactiveSuggestion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getATXProactiveSuggestionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getATXProactiveSuggestionClass_block_invoke_cold_1();
    return __getDNDModeConfigurationServiceClass_block_invoke(v3);
  }

  return result;
}

Class __getDNDModeConfigurationServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!DoNotDisturbLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __DoNotDisturbLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278E06E28;
    v6 = 0;
    DoNotDisturbLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (DoNotDisturbLibraryCore_frameworkLibrary)
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
  result = objc_getClass("DNDModeConfigurationService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDNDModeConfigurationServiceClass_block_invoke_cold_1();
  }

  getDNDModeConfigurationServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DoNotDisturbLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  DoNotDisturbLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_24416B574(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_24416BAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24416C054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24416C5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24416CA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24416D0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24416D904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24416DFE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24416E4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  objc_destroyWeak((v19 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v20 - 56));
  _Unwind_Resume(a1);
}

void sub_24416E74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24416F280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2441702B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24417077C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKContextClientClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContextKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContextKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278E07258;
    v6 = 0;
    ContextKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ContextKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CKContextClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContextClientClass_block_invoke_cold_1();
  }

  getCKContextClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContextKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContextKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getLSApplicationRecordClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MobileCoreServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278E07270;
    v6 = 0;
    MobileCoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MobileCoreServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("LSApplicationRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationRecordClass_block_invoke_cold_1();
  }

  getLSApplicationRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileCoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileCoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}