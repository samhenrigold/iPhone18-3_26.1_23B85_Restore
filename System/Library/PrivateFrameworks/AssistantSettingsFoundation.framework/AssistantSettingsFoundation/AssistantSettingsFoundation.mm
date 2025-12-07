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
    v6 = xmmword_278CD0388;
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
    v3[3] = &unk_278CD0368;
    v3[4] = &v4;
    __getPETEventPropertyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2413B0008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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
    v3[3] = &unk_278CD0368;
    v3[4] = &v4;
    __getPETScalarEventTrackerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2413B05FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void __getPETEventPropertyClass_block_invoke(uint64_t a1)
{
  ProactiveEventTrackerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PETEventProperty");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPETEventPropertyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPETEventPropertyClass_block_invoke_cold_1();
    ProactiveEventTrackerLibrary();
  }
}

void ProactiveEventTrackerLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!ProactiveEventTrackerLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __ProactiveEventTrackerLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278CD04F0;
    v3 = 0;
    ProactiveEventTrackerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ProactiveEventTrackerLibraryCore_frameworkLibrary)
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
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPETScalarEventTrackerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPETScalarEventTrackerClass_block_invoke_cold_1();
    return +[(ASFAppClipsSuggestionsController *)v3];
  }

  return result;
}

void *__getSPGetDisabledBundleSetSymbolLoc_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SearchLibrary();
  result = dlsym(v3, "SPGetDisabledBundleSet");
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
    v4 = xmmword_278CD0508;
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

void *__getSPGetDisabledBundleSetSymbolLoc_block_invoke_0(uint64_t a1, uint64_t a2)
{
  v3 = SearchLibrary_0();
  result = dlsym(v3, "SPGetDisabledBundleSet");
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
    v4 = xmmword_278CD0520;
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