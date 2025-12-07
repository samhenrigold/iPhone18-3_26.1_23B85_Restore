void sub_26B81C9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
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
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SearchLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SearchLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279D049C8;
    v5 = 0;
    SearchLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SearchLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!SearchLibraryCore_frameworkLibrary)
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

uint64_t __SearchLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SearchLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSPGetDisabledAppSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SearchLibrary();
  result = dlsym(v2, "SPGetDisabledAppSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledAppSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_26B81DBFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_26B81E11C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void *__getSPGetDisabledBundleSetSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = SearchLibrary_0();
  result = dlsym(v2, "SPGetDisabledBundleSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledBundleSetSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SearchLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SearchLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SearchLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279D04AA0;
    v5 = 0;
    SearchLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = SearchLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!SearchLibraryCore_frameworkLibrary_0)
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

uint64_t __SearchLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  SearchLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getSPGetDisabledAppSetSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = SearchLibrary_0();
  result = dlsym(v2, "SPGetDisabledAppSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledAppSetSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_26B81FC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSPGetDisabledBundleSetSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = SearchLibrary_1();
  result = dlsym(v2, "SPGetDisabledBundleSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledBundleSetSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SearchLibrary_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SearchLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SearchLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279D04B88;
    v5 = 0;
    SearchLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = SearchLibraryCore_frameworkLibrary_1;
  v1 = v3[0];
  if (!SearchLibraryCore_frameworkLibrary_1)
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

uint64_t __SearchLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  SearchLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void *__getSPGetDisabledDomainSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SearchLibrary_1();
  result = dlsym(v2, "SPGetDisabledDomainSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledDomainSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279D04BA0;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
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

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
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

void SpotlightSettingsInitLogging(uint64_t result, uint64_t a2)
{
  if (SpotlightSettingsInitLogging_once != -1)
  {
    SpotlightSettingsInitLogging_cold_1();
  }
}

uint64_t __SpotlightSettingsInitLogging_block_invoke()
{
  spotlightSettingsLogHandles = os_log_create("com.apple.SpotlightSettings", "General");

  return MEMORY[0x2821F96F8]();
}