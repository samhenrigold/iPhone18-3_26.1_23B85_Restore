void sub_25175D264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25175D7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25175D984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25175DB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25175DF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25175E118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHAENDefaultsClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!HAENotificationsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __HAENotificationsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2796C56F8;
    v5 = 0;
    HAENotificationsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HAENotificationsLibraryCore_frameworkLibrary)
  {
    __getHAENDefaultsClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("HAENDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHAENDefaultsClass_block_invoke_cold_1();
  }

  getHAENDefaultsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HAENotificationsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HAENotificationsLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

const char *HHHearingLogCategoryForCategory(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0xE)
  {
    HHHearingLogCategoryForCategory_cold_1();
  }

  if (a1 - 1 > 0xC)
  {
    return "default";
  }

  else
  {
    return off_2796C5780[a1 - 1];
  }
}

id HHHearingLogForCategory(unint64_t a1)
{
  if (a1 >= 0xE)
  {
    HHHearingLogForCategory_cold_2();
  }

  if (HHHearingLogForCategory_onceToken != -1)
  {
    HHHearingLogForCategory_cold_1();
  }

  v2 = HHHearingLogForCategory_logObjects[a1];

  return v2;
}

void __HHHearingLogForCategory_block_invoke(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 14; ++i)
  {
    v3 = HHHearingLogSubsystem;
    v4 = HHHearingLogCategoryForCategory(i, a2);
    v5 = os_log_create(v3, v4);
    v6 = HHHearingLogForCategory_logObjects[i];
    HHHearingLogForCategory_logObjects[i] = v5;
  }
}

id HKNRDeviceCapabilityEnvironmentalDosimetry()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F5C2DAD0-38FB-4B3B-86D3-B264F4F8CBDA"];

  return v0;
}

void __getHAENDefaultsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHAENDefaultsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHearingFeatures.m" lineNumber:30 description:{@"Unable to find class %s", "HAENDefaults"}];

  __break(1u);
}

void __getHAENDefaultsClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HAENotificationsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKHearingFeatures.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}