id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A2347C98 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29C4B8978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C4BAEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_29C4BB164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C4BB3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSpeakTypingServicesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!SpeakTypingServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __SpeakTypingServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F30A168;
    v5 = 0;
    SpeakTypingServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpeakTypingServicesLibraryCore_frameworkLibrary)
  {
    __getSpeakTypingServicesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SpeakTypingServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSpeakTypingServicesClass_block_invoke_cold_1();
  }

  getSpeakTypingServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpeakTypingServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpeakTypingServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSpeakTypingServicesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getSpeakTypingServicesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TUIPredictionViewCellAccessibility.m" lineNumber:19 description:{@"Unable to find class %s", "SpeakTypingServices"}];

  __break(1u);
}

void __getSpeakTypingServicesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *SpeakTypingServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TUIPredictionViewCellAccessibility.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}