void sub_22CA378C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22CA3893C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 176), 8);
  _Block_object_dispose((v32 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getWFOnScreenContentExtractorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!VoiceShortcutClientLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __VoiceShortcutClientLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27872B9D0;
    v6 = 0;
    VoiceShortcutClientLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VoiceShortcutClientLibraryCore_frameworkLibrary)
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
  result = objc_getClass("WFOnScreenContentExtractor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "WFOnScreenContentExtractor");
  }

  getWFOnScreenContentExtractorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceShortcutClientLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  VoiceShortcutClientLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_22CA401D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22CA4112C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCHSWidgetClass_block_invoke(uint64_t a1)
{
  ChronoUIServicesLibrary();
  result = objc_getClass("CHSWidget");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHSWidgetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "CHSWidget");
    return __getCHSWidgetMetricsClass_block_invoke(v3);
  }

  return result;
}

Class __getCHSWidgetMetricsClass_block_invoke(uint64_t a1)
{
  ChronoUIServicesLibrary();
  result = objc_getClass("CHSWidgetMetrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHSWidgetMetricsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "CHSWidgetMetrics");
    return __getCHUISAvocadoHostViewControllerClass_block_invoke(v3);
  }

  return result;
}

void __getCHUISAvocadoHostViewControllerClass_block_invoke(uint64_t a1)
{
  ChronoUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHUISAvocadoHostViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHUISAvocadoHostViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "CHUISAvocadoHostViewController");
    ChronoUIServicesLibrary();
  }
}

void ChronoUIServicesLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!ChronoUIServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __ChronoUIServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_27872BE78;
    v3 = 0;
    ChronoUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (ChronoUIServicesLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __ChronoUIServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ChronoUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_22CA421F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CA45E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _INUIUtilitiesBestFittingSizeForSizeBySystemVersionDictionary(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = 131073;
  v2 = a1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v16 + 1) + 8 * i) unsignedIntValue];
        v9 = dyld_program_sdk_at_least();
        if (v8 <= v1)
        {
          v10 = v1;
        }

        else
        {
          v10 = v8;
        }

        if (v9)
        {
          v1 = v10;
        }

        else
        {
          v1 = v1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v1];
  v12 = [v2 objectForKey:v11];
  [v12 CGSizeValue];
  v14 = v13;

  return v14;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}